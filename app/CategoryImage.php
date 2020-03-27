<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryImage extends Model
{
    protected $table = "category_images";
    public function category()
    {
        return $this->belongsTo('App\Category', 'category_id', 'id');
    }
}
