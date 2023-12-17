<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Dish;

class Origin extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function dishes()
    {
        return $this->hasMany(Dish::class, 'origin_id');
    }
}
