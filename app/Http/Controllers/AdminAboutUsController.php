<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminAboutUsController extends CBController {


    public function cbInit()
    {
        $this->setTable("about_us");
        $this->setPermalink("about_us");
        $this->setPageTitle("About Us");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("First Name","first_name")->strLimit(150)->maxLength(255);
		$this->addText("Last Name","last_name")->strLimit(150)->maxLength(255);
		$this->addEmail("Email","email");
		$this->addImage("Image","image")->help("300ˣ300")->encrypt(true);
		$this->addText("Social Link","social_link")->strLimit(150)->maxLength(255);
		

    }
}
