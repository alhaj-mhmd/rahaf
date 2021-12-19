<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\LikeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CommentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

 


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('product', ProductController::class);
Route::resource('like', LikeController::class);
Route::resource('category', CategoryController::class);
Route::resource('comment', CommentController::class);
 
Route::resource('user', UserController::class, [
    'only' => ['index']
]);
Route::resource('shop', ShopController::class);
 
Route::post('searchproduct', [ShopController::class, 'searchProduct'])->name('searchproduct');
Route::get('sortnamedesc', [ShopController::class, 'sortnamedesc'])->name('sortNamedesc');
Route::get('sortnameasc', [ShopController::class, 'sortnameasc'])->name('sortNameasc');