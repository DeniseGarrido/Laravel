@extends('plantilla')

@section('titulo')
    Nuevo Post
@endsection

@section('contenido')
    <form action="{{ route('posts.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="titulo">Título:</label>
            <input type="text" class="form-control" name="titulo" id="titulo">
        </div>
        <div class="form-group">
            <label for="contenido">Contenido:</label>
            <textarea class="form-control" name="contenido" id="contenido"></textarea>
        </div>
        </div>
        <input type="submit" name="enviar" value="Enviar" class="btn btn-dark btn-block">
    </form>
@endsection
