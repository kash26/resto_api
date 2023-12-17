<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\OriginsController;
use App\Http\Controllers\IngredientsController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\TablesController;
use App\Http\Controllers\DishesController;
use App\Http\Controllers\OrdersController;

use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::middleware('auth:sanctum')->group(function () {
});
Route::resource('/origins', OriginsController::class);
Route::resource('/ingredients', IngredientsController::class);
Route::resource('/categories', CategoriesController::class);
Route::resource('/tables', TablesController::class);
Route::resource('/dishes', DishesController::class);
Route::resource('/orders', OrdersController::class);

Route::post('/auth/register', [AuthController::class, 'createUser']);
Route::post('/auth/login', [AuthController::class, 'loginUser']);


