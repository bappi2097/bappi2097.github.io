<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PhotoCategory extends Model
{
    protected $table = "photo_categories";
    public function photoGalleries()
    {
        return $this->hasMany('App\PhotoGallery', 'photo_category_id', 'id');
    }
}
