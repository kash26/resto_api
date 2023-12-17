<?php

namespace App\Http\Controllers;

use App\Models\Dish;
use App\Http\Requests\StoreDishRequest;
use App\Http\Requests\UpdateDishRequest;
use App\Http\Resources\DishesResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class DishesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // return DishesResource::collection(Dish::all());
        return DishesResource::collection(Dish::orderBy('updated_at', 'asc')->get());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreDishRequest $request)
    {
        $request->validated($request->all());

        if ($request->hasFile('photo')) {
            $dish = Dish::create([
                'category_id' => $request->category_id,
                'origin_id' => $request->origin_id,
                'name' => $request->name,
                'price' => $request->price,
                'is_visible' => $request->is_visible,
                'preparation_time' => $request->preparation_time,
                'description' => $request->description,
            ]);

            $image = $request->file('photo');
            $extension = $image->getClientOriginalExtension();
            $filename = 'uploads/' . Str::random(40) . '.' . $extension;
            $image->move(public_path('uploads'), $filename);

            $dish->photo = $filename;
            $dish->save();
        }

        return new DishesResource($dish);
    }

    /**
     * Display the specified resource.
     */
    public function show(Dish $dish)
    {
        return new DishesResource($dish);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update1(UpdateDishRequest $request, Dish $dish)
    {
        // Log::info($request->all());
        // return response()->json(['data' => $request->all()]);
        $request->validated($request->all());

        $dish->category_id = $request->category_id;
        $dish->origin_id = $request->origin_id;
        $dish->name = $request->name;
        $dish->price = $request->price;
        $dish->is_visible = $request->is_visible;
        $dish->preparation_time = $request->preparation_time;
        $dish->description = $request->description;

        if ($request->hasFile('photo')) {
            if ($dish->photo) {
                Storage::delete($dish->photo);
            }

            $image = $request->file('photo');
            $extension = $image->getClientOriginalExtension();
            $filename = 'uploads/' . Str::random(40) . '.' . $extension;
            $image->move(public_path('uploads'), $filename);

            $dish->photo = $filename;
        }

        $dish->save();

        return new DishesResource($dish);
    }

    public function update(UpdateDishRequest $request, Dish $dish)
    {
        // Validate the request (if needed)
        $request->validated($request->all());

        $dish->category_id = $request->category_id;
        $dish->origin_id = $request->origin_id;
        $dish->name = $request->name;
        $dish->price = $request->price;
        $dish->is_visible = $request->is_visible;
        $dish->preparation_time = $request->preparation_time;
        $dish->description = $request->description;

        if ($request->hasFile('photo')) {
            $image = $request->file('photo');
            $extension = $image->getClientOriginalExtension();
            $filename = 'uploads/' . Str::random(40) . '.' . $extension;
            $image->move(public_path('uploads'), $filename);

            $dish->photo = $filename;
        }

        $dish->save();

        return new DishesResource($dish);
    }




    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dish $dish)
    {
        return $dish->delete();
    }
}