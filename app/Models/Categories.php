<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Articles;

use function Symfony\Component\VarDumper\Cloner\dump;

class Categories extends Model
{
    use HasFactory;
    protected $table = "categories";
    public $timestamps = false; // Menonaktifkan timestamp
    protected $primaryKey = "id";
    protected $fillable = [
        "category_name",
        "icon"
    ]; 


    public function article()
    {
        return $this->hasMany(Article::class);
    }
}
