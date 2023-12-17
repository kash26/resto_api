<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Dish;

class Category extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'photo', 'is_visible'];

    public function dishes()
    {
        return $this->hasMany(Dish::class, 'category_id');
    }
}
