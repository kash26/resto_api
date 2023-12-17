<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Http\Resources\CategoriesResource;
use Illuminate\Support\Str;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return CategoriesResource::collection(Category::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCategoryRequest $request)
    {
        $request->validated($request->all());

        $category = Category::create([
            'name' => $request->name,
            'is_visible' => $request->is_visible,
        ]);
        // if ($request->hasFile('photo')) {

        //     $image = $request->file('photo');
        //     $extension = $image->getClientOriginalExtension();
        //     $filename = 'uploads/' . Str::random(40) . '.' . $extension;
        //     $image->move(public_path('uploads'), $filename);

        //     $category->photo = $filename;
        // }
        $category->save();

        return new CategoriesResource($category);
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return new CategoriesResource($category);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCategoryRequest $request, Category $category)
    {
        $request->validated($request->all());

        $category->name = $request->name;
        $category->is_visible = $request->is_visible;

        // if ($request->hasFile('photo')) {
        //     $image = $request->file('photo');
        //     $extension = $image->getClientOriginalExtension();
        //     $filename = 'uploads/' . Str::random(40) . '.' . $extension;
        //     $image->move(public_path('uploads'), $filename);

        //     $category->photo = $filename;
        // }

        $category->save();

        return new CategoriesResource($category);
    }

    // public function update(UpdateCategoryRequest $request, Category $category)
    // {
    //     $category->update($request->all());

    //     return new CategoriesResource($category);
    // }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        return $category->delete();
    }
}
