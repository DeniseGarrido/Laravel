<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Usuario; //utiliza tanto user
use App\Models\Post; //como Post

class PostsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        Usuario::all()->each(function ($usuario) {
            Post::factory()->count(3)->create([
                'usuario_id' => $usuario->id,
            ]);
        });
    }
}
