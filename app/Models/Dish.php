<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;
use App\Models\Origin;
use App\Models\Order;

class Dish extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'category_id',
        'origin_id',
        'description',
        'photo',
        'price',
        'preparation_time',
        'is_visible'
    ];

    public function orders() {
        return $this->belongsToMany(Order::class, 'order_dishes', 'dish_id', 'order_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function origin()
    {
        return $this->belongsTo(Origin::class, 'origin_id');
    }
}