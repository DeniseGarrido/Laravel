<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'titulo' => 'required|min:5',
            'contenido' => 'required|min:50',
        ];
    }

    public function messages(){
    return [
        'titulo.required' => 'El título es obligatorio',
        'titulo.min' => 'El título del post debe tener al menos :min caracteres',
        'contenido.required' => 'El contenido del post es obligatorio',
        'contenido.min' => 'El contenido del post debe tener al menos :min caracteres',
    ];
}
}
