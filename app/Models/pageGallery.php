<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Gallery;
class pageGallery extends Model
{
    use HasFactory;
    protected $table = "page_gallery";   
     public $timestamps = false;
    protected $fillable =[
        "images",
        "gallery_id",
    ];
  public function gallery(){
    return $this->belongsTo(Gallery::class);
  }
}
