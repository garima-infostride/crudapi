<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\API\Authcontroller;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('register',[Authcontroller::class,'register']);
Route::post('login',[Authcontroller::class,'login']);

Route::middleware(['auth:sanctum'])->group(function(){
    Route::get('products',[ProductController::class,'index']);
    Route::get('product/{id}/showById',[ProductController::class,'showById']);
    Route::post('product/add',[ProductController::class,'store']);
    
    // Route::put('product/{id}/update',[ProductController::class,'update']);
    Route::post('product/{id}/update',[ProductController::class,'update']);
    Route::delete('product/{id}/delete',[ProductController::class,'delete']);

    Route::post('logout',[Authcontroller::class,'logout']);
});

