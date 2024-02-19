<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable as AuthenticableTrait;
use Illuminate\Contracts\Auth\Authenticatable;

class Usuario extends Model implements Authenticatable
{
    use HasFactory;
    use AuthenticableTrait;


    protected $table = 'usuarios';
    public function posts()
    {
        return $this->hasMany('App\Models\Post');
    }
}
