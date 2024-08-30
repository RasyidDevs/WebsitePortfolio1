<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\Articles;
use App\Models\Categories;
use App\Models\Comments;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class DetailController extends Controller
{
    //
    public function detailArticle($id)
    {
        $categories = Categories::all();
        $articles = Articles::whereTitle(str_replace("-", " ", $id))->firstOrFail();
        $tags = $articles->tags()->get();
        $user = $articles->users->name;
        $comments = DB::table('comments')
            ->join("articles", "comments.articles_id", "=", "articles.id")
            ->where("articles.title", "=", str_replace("-", " ", $id))
            ->orderBy("comments.created_at", "desc")
            ->get();
        $dataComments = DB::table('comments')->get();
        return view("content.detail-page", compact("categories", "articles", "tags", "user", "comments", "dataComments"));
    }
    public function saveComment(Request $request)
    {
        $this->validate($request, [
            "comment" => "required|string|max:100"
        ]);
        $articles = Articles::whereTitle($request->input("title"))->firstOrFail();
        if ($articles) {
            $data = [
                "articles_id" => $articles->id,
                "reply" => $request->input("comment"),
                "avatar" => "no-image.jpg",

            ];
            if (Comments::create($data)) {
                return redirect()->back()->with("comments", "Sukses menambahkan komentar");
            }
            return redirect()->back()->with("comments", "Gagal menambahkan komentar");
        };
    }
}
