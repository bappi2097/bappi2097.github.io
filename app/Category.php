<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function categoryImages()
    {
        return $this->hasMany('App\CategoryImage', 'category_id', 'id');
    }
}
