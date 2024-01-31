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
    return view('inicio');
});

Route::get('/blog/posts', function () {
    return view('posts_listado');
});

Route::get('/posts_ficha/{id}', function ($id) {
    return view('posts_ficha', ['id' => $id]);
})->where('id', '[0-9]+');
