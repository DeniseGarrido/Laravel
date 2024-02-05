<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('index');
})->name('inicio');

/* Route::get('/blog/posts', function () {
    return view('posts.posts_listado');
})->name('posts_listado');

Route::get('/posts_ficha/{id?}', function ($id) {
    return view('posts.posts_ficha', ['id' => $id]);
})->where('id', '[0-9]+')->name('posts_ficha'); */


use App\Http\Controllers\PostController;

Route::resource('posts', PostController::class)->only(['index', 'show', 'create', 'edit']);
