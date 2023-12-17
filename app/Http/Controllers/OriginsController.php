<?php

namespace App\Http\Controllers;

use App\Models\Origin;
use App\Http\Requests\StoreOriginRequest;
use App\Http\Requests\UpdateOriginRequest;
use App\Http\Resources\OriginsResource;

class OriginsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return OriginsResource::collection(Origin::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreOriginRequest $request)
    {
        $request->validated($request->all());

        $origin = Origin::create([
            'name' => $request->name,
        ]);

        return new OriginsResource($origin);
    }

    /**
     * Display the specified resource.
     */
    public function show(Origin $origin)
    {
        return new OriginsResource($origin);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateOriginRequest $request, Origin $origin)
    {
        $origin->update($request->all());

        return new OriginsResource($origin);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Origin $origin)
    {
        return $origin->delete();
    }
}
