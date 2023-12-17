<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class OrdersResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => (string)$this->id,
            'type' => 'Orders',
            'attributes' => [
                'table_id' => $this->table_id,
            ],
            'relationships' => [
                'table' => $this->table->number,
                'dishes' => [
                    'data' => $this->dishes->map(function ($dish) {
                        return [
                            'id' => (string)$dish->id,
                            'name' => $dish->name,
                            'price' => $dish->price,
                        ];
                    })
                ]
            ]
        ];
    }
}
