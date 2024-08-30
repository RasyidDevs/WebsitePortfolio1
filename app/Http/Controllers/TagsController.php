<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Tags;
class TagsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $tags = DB::table('tags')->get();
        return view("admin.section.Tags.index" , compact("tags"));
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
        $rules = ["tag" => "required"];
        $request->validate($rules);
        DB::table('tags')->insert(["tag_name" => $request->input("tag")]);
       return redirect("admin/dashboard/tags"); 
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
        $tags = DB::table('tags')->get();
        $data = Tags::find($id);
        return view("admin.section.tags.edit" , compact("tags","data"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $rules = [
            "tag" => "required",
     
        ];
        $request->validate($rules);
        $rules = ["tag" => "required"];
        $request->validate($rules);
        DB::table("tags")->where("id",$id)
        ->update([
            "tag_name" => $request->input("tag"),
        ]);
        return redirect("admin/dashboard/tags");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        DB::table('tags')->where("id",$id)
        ->delete();
        return redirect("admin/dashboard/tags");        
    }
}
