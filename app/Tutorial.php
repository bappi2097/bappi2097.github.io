<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tutorial extends Model
{
    public function tutorialCategory()
    {
        return $this->belongsTo('App\TutorialCategory', 'tutorial_category_id', 'id');
    }
}
