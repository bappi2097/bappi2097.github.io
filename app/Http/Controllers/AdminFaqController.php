<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminFaqController extends CBController {


    public function cbInit()
    {
        $this->setTable("faq");
        $this->setPermalink("faq");
        $this->setPageTitle("Faq");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addTextArea("Question","question")->strLimit(150);
		$this->addTextArea("Answer","answer")->strLimit(150);
		$this->addText("Type","type")->required(false)->strLimit(150)->maxLength(255);
		

    }
}
