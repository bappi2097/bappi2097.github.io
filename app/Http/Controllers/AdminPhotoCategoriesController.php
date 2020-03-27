<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminPhotoCategoriesController extends CBController {


    public function cbInit()
    {
        $this->setTable("photo_categories");
        $this->setPermalink("photo_categories");
        $this->setPageTitle("Photo Categories");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("Type","type")->strLimit(150)->maxLength(255);
		$this->addText("Title","title")->strLimit(150)->maxLength(255);
		

    }
}
