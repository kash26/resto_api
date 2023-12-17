<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Dish;
use App\Models\Table;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'table_id'
    ];

    public function table()
    {
        return $this->belongsTo(Table::class);
    }

    public function dishes() {
        return $this->belongsToMany(Dish::class, 'order_dishes', 'order_id', 'dish_id');
    }
}
