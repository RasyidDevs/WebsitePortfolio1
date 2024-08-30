<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Articles;
use Illuminate\Support\Facades\Auth;

class ArticlesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $articles = DB::table('articles')->get();
        return view("admin.section.articles.index", compact("articles"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        //   Articles::create([
        //     "categories_id" => $request->input("categories"),
        //     "title" => $request->input("title"),
        //     "images" => $request->input("images"),
        //     "news" => $request->input("news"),
        //   ]);

        $rules = [
            "categories" => "required",
            "title" => "required",
            "image" => "required",
            "news" => "required",
        ];
        $request->validate($rules);
        $data = new Articles;

        $data->categories_id = $request->input("categories");
        $data->title = $request->input("title");
        $data->news = $request->input("news");

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('assets/frontend/images'), $filename);
            $data->images = $filename;
        }

        $userId = Auth::id();
        $data->users_id = $userId;
        $data->save();
        return redirect("admin/dashboard/articles");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $articles = DB::table("articles")->get();
        $data = Articles::find($id);
        return view("admin.section.articles.edit", compact("articles", "data"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        
            $data = Articles::find($id);
        
            $rules = [
                "categories" => "required",
                "title" => "required",
                "news" => "required",
            ];
            $request->validate($rules);
        
            $data->categories_id = $request->input("categories");
            $data->title = $request->input("title");
            $data->news = $request->input("news");
        
            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('assets/frontend/images'), $filename);
                $data->images = $filename;
            }
        
            $data->save();
        
            return redirect("admin/dashboard/articles");
     }
        
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        DB::table("articles")
            ->where("id", $id)
            ->delete();
        return redirect("admin/dashboard/articles");
    }
}
