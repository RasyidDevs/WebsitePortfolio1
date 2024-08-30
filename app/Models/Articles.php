<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Comments;
use App\Models\Tags;
use App\Models\Categories;
use App\Models\User;
class Articles extends Model
{
    use HasFactory;
    protected $fillable = [
        "categories_id",
        "title",
        "images",
        "news",
        "alt",
        "focus_key",
        "description"
    ];
    public function comments()
    {
        return $this->hasMany(Comments::class);
    }
    public function tags()
    {
        return $this->belongsToMany(Tags::class);
    }
    public function categories()
    {
        return $this->belongsTo(Categories::class);
    }
    public function users(){
        return $this->belongsTo(User::class);
    }
}
