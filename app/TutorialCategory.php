<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TutorialCategory extends Model
{
    public function tutorials()
    {
        return $this->hasMany('App\Tutorial', 'tutorial_category_id', 'id');
    }
}
