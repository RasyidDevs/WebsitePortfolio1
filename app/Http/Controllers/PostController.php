<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\Gallery;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Str;
use Illuminate\Support\Collection;
use App\Models\pageGallery;

class PostController extends Controller
{
    //
    private $categories;
    private $mini_post;
    public function __construct()
    {
        $this->categories = Categories::all();
        $this->mini_post = DB::table("articles")
            ->join("categories", "categories.id", "=", "articles.categories_id")
            ->join("users", "users.id", "=", "articles.users_id")
            ->orderBy("articles.created_at", "DESC")
            ->select("articles.title", "articles.images", "articles.alt", "articles.created_at", "categories.icon", "users.name")
            ->limit(4)
            ->get();
    }
    public function index()
    {
        $categories = $this->categories;
        $mini_post = $this->mini_post;
        $data = DB::table("articles")
            ->join("categories", "categories.id", "=", "articles.categories_id")
            ->join("users", "users.id", "=", "articles.users_id")
            ->orderBy("articles.created_at", "DESC")
            ->select("categories.category_name", "articles.title", "articles.images", "articles.alt", "articles.news", "articles.created_at", "categories.icon", "users.name")
            ->simplePaginate(4);
        return view("content.home", compact("categories", "data", "mini_post"));
    }
    public function pageByCategory($id)
    {
        $categories = $this->categories;
        $mini_post = $this->mini_post;
        $slug = str_replace("-", " ", $id);
        $data = DB::table("articles")
            ->join("categories", "categories.id", "=", "articles.categories_id")
            ->join("users", "users.id", "=", "articles.users_id")
            ->orderBy("articles.created_at", "DESC")
            ->select("categories.category_name", "articles.title", "articles.images", "articles.alt", "articles.news", "articles.created_at", "categories.icon", "users.name")
            ->where("categories.category_name", "=", str_replace("-", " ", $id))
            ->simplePaginate(4);
        $manyGallery = DB::table('gallery')->simplePaginate(4);
        if ($id === "gallery") {
            return view("content.gallery.index", compact("categories", "mini_post", "slug", "data", "manyGallery",));
        } else {
            return view("content/page-by-category", compact("categories", "mini_post", "data", "slug"));
        }
    }
    public function search(Request $request)
    {
        $categories = $this->categories;
        $mini_post = $this->mini_post;
        $keyword = $request->get("keyword");

        $data = DB::table('articles')
            ->join("categories", "categories.id", "=", "articles.categories_id")
            ->join("users", "users.id", "=", "articles.users_id")
            ->select("articles.*", "categories.category_name", "categories.icon", "users.name")
            ->where("articles.title", "like", "%" . $keyword . "%")
            ->orWhere("articles.news", "like", "%" . $keyword . "%")
            ->orWhere("articles.alt", "like", "%" . $keyword . "%")
            ->orWhere("categories.category_name", "like", "%" . $keyword . "%")
            ->orderBy("articles.created_at", "DESC")
            ->simplePaginate(4);

        $data->appends($request->only("keyword"));
        return view("content.search", compact('categories', "mini_post", "data", "keyword"));
    }
    public function pageByGallery($id)
    {
        $categories= $this->categories;
        $mini_post = $this->mini_post;
        $slug = str_replace("-", " ", $id);
        $manyGallery = DB::table('gallery')->get();   
        $galleryId = Gallery::find($id);
 
        $manyPageGallery = DB::table('page_gallery')
            ->join("gallery", "gallery.id", "=", "page_gallery.gallery_id")
            ->orderBy("page_gallery.created_at", "DESC")
            ->select("page_gallery.images")
            ->where("gallery.id", "=", $id)
            ->simplePaginate(4);
        return view("content.gallery.pageByGallery.index", compact("manyPageGallery", "manyGallery", "galleryId","categories","slug","mini_post",));
    }
}
