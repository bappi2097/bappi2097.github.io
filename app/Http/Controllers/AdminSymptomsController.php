<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminSymptomsController extends CBController {


    public function cbInit()
    {
        $this->setTable("symptoms");
        $this->setPermalink("symptoms");
        $this->setPageTitle("Symptoms");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("Title","title")->strLimit(150)->maxLength(255);
		$this->addImage("Image","image")->encrypt(true);
		$this->addTextArea("Body","body")->strLimit(150);


    }
}
