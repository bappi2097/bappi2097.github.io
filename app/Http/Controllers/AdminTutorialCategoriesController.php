<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTutorialCategoriesController extends CBController {


    public function cbInit()
    {
        $this->setTable("tutorial_categories");
        $this->setPermalink("tutorial_categories");
        $this->setPageTitle("Tutorial Categories");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("Title","title")->strLimit(150)->maxLength(255);
		$this->addTextArea("Description","description")->required(false)->help("Not Mandatory")->strLimit(150);
		

    }
}
