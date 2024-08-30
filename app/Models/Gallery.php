<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Categories;
class Gallery extends Model
{
    use HasFactory;
    protected $table = "gallery";
    public $timestamps = false;
    protected $fillable = [
        "categories_id",
        "title",
        "images",
    ];
    public function categories(){
        return $this->belongsTo(Categories::class);
    }
}
