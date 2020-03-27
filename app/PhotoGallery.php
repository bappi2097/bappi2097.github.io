<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PhotoGallery extends Model
{
    protected $table = "photo_gallery";
    public function photoCategories()
    {
        return $this->belongsTo('App\PhotoCategory', 'photo_category_id', 'id');
    }
}
