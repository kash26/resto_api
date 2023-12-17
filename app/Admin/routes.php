<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');

    $router->resource('users', UserController::class);
    $router->resource('tables', TableController::class);
    $router->resource('origins', OriginController::class);
    $router->resource('orders', OrderController::class);
    $router->resource('ingredients', IngredientController::class);
    $router->resource('dishes', DishController::class);
    $router->resource('category', CategoryController::class);

});
