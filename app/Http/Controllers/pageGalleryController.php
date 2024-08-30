<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\pageGallery;
use DB;
use App\Models\Gallery;
use Carbon\Carbon;
class pageGalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $manyPageGallery = pageGallery::All();
        $manyGallery = Gallery::All();
        return view("admin.section.gallery.index",compact("manyPageGallery","manyGallery"));
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
        // Validasi permintaan
        $rules = [
        
            'file' => 'required|array',
            'file.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ];
        $request->validate($rules);
    
        // Simpan gallery_id untuk digunakan di setiap data baru
        $galleryId = $request->input('gallery');
    
        // Loop melalui setiap file yang diupload
        if ($request->hasFile('file')) {
            foreach ($request->file('file') as $file) {
                $data = new pageGallery;
                $data->gallery_id = $galleryId; // Menggunakan index file untuk mengambil gallery_id yang sesuai
                $data->created_at = \Carbon\Carbon::now();
    
                // Buat nama unik untuk gambar
                $imageName = time() . rand(1, 100) . '.' . $file->getClientOriginalName();
                $directory = 'assets/frontend/images-gallery';
                $file->move(public_path($directory), $imageName);
    
                // Simpan path gambar ke database
                $data->images =  $imageName;
                $data->save();
            }
        }
    
        return response()->json(['success' => 'Files uploaded successfully']);
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
        $manyPageGallery = pageGallery::All();
        $manyGallery = Gallery::All();
        $dataGallery = pageGallery::find($id);
        return view("admin.section.gallery.edit",compact("manyPageGallery","manyGallery","dataGallery"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $data = pageGallery::find($id);
        $data->gallery_id = $request->input("gallery");
        $data->created_at = \Carbon\Carbon::now();
        $rules = [
            "gallery" => "required",
            "images" => "required",
        ];
        $request->validate($rules);
        if($request->hasFile("images")){
            $file = $request->file("images");
            $filename = date("YmdHi") . $file->getClientOriginalName();
            $file->move(public_path("assets/frontend/images-gallery"),$filename);
            $data->images = $filename;
        }
     $data->save();
     return redirect("admin/dashboard/gallery");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        DB::table('page_gallery')->where("id",$id)
        ->delete();
        return redirect("admin/dashboard/gallery");
    }

}
