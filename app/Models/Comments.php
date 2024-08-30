<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    use HasFactory;
    protected $fillable = [
        "articles_id",
        "reply",
        "avatar"
    ];
    public function article(){
        return $this->belongsTo(Articles::class);
        
    }
}
