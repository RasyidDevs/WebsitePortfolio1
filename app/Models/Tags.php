<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Articles;
class Tags extends Model
{
    use HasFactory;
    protected $fillable = [
        "tag_name"
    ];
    public function article(){
        return $this->belongsToMany(Articles::class);
    }
}
