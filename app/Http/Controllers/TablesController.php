<?php

namespace App\Http\Controllers;

use App\Models\Table;
use App\Http\Requests\StoreTableRequest;
use App\Http\Requests\UpdateTableRequest;
use App\Http\Resources\TablesResource;

class TablesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return TablesResource::collection(Table::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTableRequest $request)
    {
        $request->validated($request->all());

        $table = Table::create([
            'number' => $request->number,
        ]);

        return new TablesResource($table);
    }

    /**
     * Display the specified resource.
     */
    public function show(Table $table)
    {
        return new TablesResource($table);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateTableRequest $request, Table $table)
    {
        $table->update($request->all());

        return new TablesResource($table);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Table $table)
    {
        return $table->delete();
    }
}
