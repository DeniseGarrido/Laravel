<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

use App\Models\Post;
use App\Models\Usuario;

use App\Http\Requests\PostRequest; //para que se validen los errores del form
use Illuminate\Support\Facades\Auth;


class PostController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth',
    ['only' => ['create', 'store', 'edit', 'update', 'destroy']]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Post::orderBy('titulo', 'asc')->simplepaginate(5); //ordenar por titulo
        return view('posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $usuarios = Usuario::get();
        return view('posts.create', compact('usuarios'));
        //http://127.0.0.1:8000/posts/crear
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PostRequest $request)
    {
        $post = new post();
        $post->titulo = $request->get('titulo');
        $post->contenido = $request->get('contenido');
        $post->usuario()->associate(Usuario::get()->first());
        $post->save();
        return redirect()->route('posts.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $post = Post::findOrFail($id);
        return view('posts.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     */


    public function edit(string $id)
    {
        $post = Post::findOrFail($id);

        if (Auth::id() !== $post->usuario_id) {
            return redirect()->route('posts.index')->with('error', 'No tienes permisos para editar este post ya que no eres su propietario.');
        }
        return view('posts.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'titulo' => 'required|min:5',
            'contenido' => 'required|min:50',
        ]);

        $post = Post::findOrFail($id);
        $post->titulo = $request->titulo;
        $post->contenido = $request->contenido;
        $post->save();

        return redirect()->route('posts.show', ['post' => $post->id]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Post::findOrFail($id);
        if (Auth::id() !== $post->usuario_id) {
            return redirect()->route('posts.index', $post)->with('error', 'No tienes permisos para borrar este post ya que no eres su propietario.');
        }
        $post -> delete();
        return redirect()->route('posts.index');
    }

    /**
     * Método creado a mano que hacemos para insertar una prueba aleatoria.
     */
    public function nuevoPrueba() // http://127.0.0.1:8002/nuevo-prueba
    {
        $titulo = "Título " . rand();
        $contenido = "Contenido " . rand();

        $post = new Post();
        $post->titulo = $titulo;
        $post->contenido = $contenido;
        $post->save();

        return redirect()->route('posts.index');
    }


    public function editarPrueba(string $id){

        $post = Post::findOrFail($id);

        $titulo = "Título " . rand();
        $contenido = "Contenido " . rand();

        $post->titulo = $titulo;
        $post->contenido = $contenido;

        $post->save();

        return redirect()->route('posts.index');
    }

}
