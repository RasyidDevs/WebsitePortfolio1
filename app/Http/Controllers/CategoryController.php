<?php

namespace App\Http\Controllers;

use  Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Categories;

class categoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $categories = DB::table('categories')->get();
        return view("admin.section.categories.index", compact("categories"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.'
     */
    public function store(Request $request)
    {
        $rules = [
            "category" => "required",
            "icon" => "required",
        ];
        $request->validate($rules);
        Categories::create([
            "category_name" => $request->input("category"),
            "icon" => $request->input("icon"),
        ]);
        return redirect("admin/dashboard/categories");
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
        $categories = DB::table('categories')->get();
        $data = Categories::find($id);
        return view("admin.section.categories.edit", compact("data", "categories"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $rules = [
            "category" => "required",
            "icon" => "required",
        ];
        $request->validate($rules);
        DB::table("categories")
            ->where("id", $id)
            ->update([
                "category_name" => $request->input("category"),
                "icon" => $request->input("icon"),
            ]);
        return redirect("admin/dashboard/categories");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        DB::table("categories")
            ->where("id", $id)
            ->delete();
        return redirect("admin/dashboard/categories");
    }
}
