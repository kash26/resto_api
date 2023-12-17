<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TablesResource extends JsonResource
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
            'type' => 'Tables',
            'attributes' => [
                'number' => $this->number,
                'created_at' => $this->created_at,
                'updated_at' => $this->updated_at,
            ],
            // 'relationships' => [
            //     'dishes' => [
            //         'data' => $this->orders->map(function ($dish) {
            //             return [
            //                 'id' => (string)$dish->id,
            //                 'name' => $dish->name,
            //             ];
            //         })
            //     ]
            // ]
        ];
    }
}
