<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminHeaderpostsController extends CBController {


    public function cbInit()
    {
        $this->setTable("headerposts");
        $this->setPermalink("headerposts");
        $this->setPageTitle("Headerposts");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("Title","title")->strLimit(150)->maxLength(255);
		$this->addText("Body","body")->strLimit(150)->maxLength(255);
		$this->addImage("Image","image")->encrypt(true);
		

    }
}
