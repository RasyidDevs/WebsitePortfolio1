<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Str;
use App\Models\Comments;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $comments = DB::table('comments')->get();
        return view("admin.section.comments.index", compact("comments"));
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
        $rules = [
            "articles" => "required",
            "reply" => "required",
            "image" => "required",
        ];
        $request->validate($rules);
        $data = new Comments;

        $data->articles_id = $request->input("articles");
        $data->reply = $request->input("reply");

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('assets/frontend/images'), $filename);
            $data->avatar = $filename;
        }

        $data->save();

        return redirect("admin/dashboard/comments");
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
        $data = Comments::find($id);
        $comments = DB::table('comments')->get();
        return view("admin.section.comments.edit", compact("data", "comments"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $rules = [
            "articles" => "required",
            "reply" => "required",
            "image" => "required",
        ];
        $request->validate($rules);
        $data = Comments::find($id);

        $data->articles_id = $request->input("articles");
        $data->reply = $request->input("reply");

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('assets/frontend/images'), $filename);
            $data->avatar = $filename;
        }

        $data->save();

        return redirect("admin/dashboard/comments");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        DB::table('comments')->where("id", $id)
            ->delete();
        return redirect("admin/dashboard/comments");
    }
}
