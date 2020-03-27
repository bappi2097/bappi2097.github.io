<?php

namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminCategoriesController extends CBController
{


    public function cbInit()
    {
        $this->setTable("categories");
        $this->setPermalink("categories");
        $this->setPageTitle("Categories");

        $this->addDatetime("Created At", "created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
        $this->addDatetime("Updated At", "updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
        $this->addText("Type", "type")->strLimit(150)->maxLength(255);
        $this->addHidden("User", "user_id")->required(false)->showAdd(false)->showEdit(false);
        $this->addText("Title", "title")->strLimit(150)->maxLength(255);
    }
}
