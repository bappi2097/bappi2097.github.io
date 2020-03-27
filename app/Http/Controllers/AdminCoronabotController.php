<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminCoronabotController extends CBController {


    public function cbInit()
    {
        $this->setTable("coronabot");
        $this->setPermalink("coronabot");
        $this->setPageTitle("Coronabot");

        $this->addDatetime("Created At","created_at")->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("Ques1","ques1")->strLimit(150)->maxLength(255);
		$this->addText("Ques2","ques2")->strLimit(150)->maxLength(255);
		$this->addText("Ques3","ques3")->strLimit(150)->maxLength(255);
		$this->addText("Ques4","ques4")->strLimit(150)->maxLength(255);
		$this->addText("Ques5","ques5")->strLimit(150)->maxLength(255);
		$this->addText("Ques6","ques6")->strLimit(150)->maxLength(255);
		$this->addText("Ques7","ques7")->strLimit(150)->maxLength(255);
		$this->addText("Ques8","ques8")->strLimit(150)->maxLength(255);
		$this->addText("Ques9","ques9")->strLimit(150)->maxLength(255);
		$this->addText("Ques11","ques11")->strLimit(150)->maxLength(255);
		$this->addText("Heart","heart")->strLimit(150)->maxLength(255);
		$this->addText("Diabetic","diabetics")->strLimit(150)->maxLength(255);
		$this->addText("Asthama","asthama")->strLimit(150)->maxLength(255);
		$this->addText("High Pressure","high_pressure")->strLimit(150)->maxLength(255);
		$this->addText("Nothing","nothing")->strLimit(150)->maxLength(255);
		$this->addText("Result","result")->strLimit(150)->maxLength(255);
		$this->addText("Phone Number","phone_number")->strLimit(150)->maxLength(255);
		

    }
}
