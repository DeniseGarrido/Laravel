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
})->name('inicio');

/* Route::get('/blog/posts', function () {
    return view('posts.posts_listado');
})->name('posts_listado');

Route::get('/posts_ficha/{id?}', function ($id) {
    return view('posts.posts_ficha', ['id' => $id]);
})->where('id', '[0-9]+')->name('posts_ficha'); */


use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;

Route::resource('posts', PostController::class)->only(['index', 'show', 'create', 'edit', 'destroy', 'store', 'update']);
Route::get('/nuevo-prueba', [PostController::class, 'nuevoPrueba']);
Route::get('/edit/{id}', [PostController::class, 'edit']);

use App\Models\Usuario;
use App\Models\Post;


Route::get('relacionPrueba', function() {
    $usuario = Usuario::findOrFail(1);
    $post = new Post();
    $post->titulo = "Titulo del post " . rand();
    $post->contenido = "Contenido del post";
    $post->autor()->associate($usuario);
    $post->save();
    return redirect()->route('post.index');
});

Route::get('login', [LoginController::class, 'loginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('logout', [LoginController::class, 'logout'])->name('logout');
