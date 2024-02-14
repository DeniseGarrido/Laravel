<nav class="navbar navbar-expand-lg navbar-light bg-dark">
    <a class="nav-link" href="#" style="color: white">Blog </span></a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="{{ route('inicio') }}" style="color: rgb(184, 184, 184)">Inicio </span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('posts.index') }}" style="color: rgb(184, 184, 184)">Listado de posts</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('posts.create') }}" style="color: rgb(184, 184, 184)">Añadir un post</a>
            </li>
        </ul>
    </div>
</nav>
<div class="fecha-actual" style="text-align: right">
    {{ fechaActual('d/m/Y') }} <!--composer dump-autoload si falla-->
</div>
