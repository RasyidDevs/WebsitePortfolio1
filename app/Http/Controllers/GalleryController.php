<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Gallery;
use App\Models\Categories;
use DB;
class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $manyGallery = Gallery::all();
        return view("admin.section.mainGallery.index", compact("manyGallery"));
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
            "title" => "required",
            "images" => "required",
        ];
        $request->validate($rules);
        $data = new Gallery;
        $data->title = $request->input("title");
        $data->categories_id = 30;
        if ($request->hasFile("images")) {
            $file = $request->file("images");
            $filename = date("YmdHi") . $file->getClientOriginalName();
            $file->move(public_path("assets/frontend/images-gallery"), $filename);
            $data->images = $filename;
        }
        $data->save();
        return redirect("admin/dashboard/mainGallery");
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
        $manyGallery = Gallery::all();
        $dataGallery = Gallery::find($id);
        return view("admin.section.mainGallery.edit",compact("manyGallery","dataGallery"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $rules = [
            "title" => "required",
            "images" => "required",
        ];
        $request->validate($rules);
        $data = Gallery::find($id);
        $data->title = $request->input("title");
        $data->categories_id = 30;
        if ($request->hasFile("images")) {
            $file = $request->file("images");
            $filename = date("YmdHi") . $file->getClientOriginalName();
            $file->move(public_path("assets/frontend/images-gallery"), $filename);
            $data->images = $filename;
        }
        $data->save();
        return redirect("admin/dashboard/mainGallery");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        DB::table('Gallery')->where("id",$id)
        ->delete();
        return redirect("admin/dashboard/mainGallery");
    }
}
