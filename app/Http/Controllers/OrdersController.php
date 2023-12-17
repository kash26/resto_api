<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\UpdateOrderRequest;
use App\Http\Resources\OrdersResource;

class OrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return OrdersResource::collection(Order::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreOrderRequest $request)
    {
        $request->validated($request->all());
        // return $request->dishes;

        if ($request->validated()) {
            $order = Order::create([
                'table_id' => $request->table_id,
            ]);
            $order->dishes()->attach($request->dishes);

            $order->save();

            return new OrdersResource($order);
        }

        return response()->json(['error' => 'Order not validated.'], 422);
    }

    /**
     * Display the specified resource.
     */
    public function show(Order $order)
    {
        return new OrdersResource($order);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateOrderRequest $request, Order $order)
    {
        $request->validated($request->all());

        if ($request->validated()) {
            $order->update([
                'table_id' => $request->table_id,
            ]);
            $order->dishes()->sync($request->dishes);

            $order->save();

            return new OrdersResource($order);
        }

        return response()->json(['error' => 'Order not validated.'], 422);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        $order->dishes()->detach();

        $order->delete();
    }
}
