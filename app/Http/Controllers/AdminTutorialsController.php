<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTutorialsController extends CBController {


    public function cbInit()
    {
        $this->setTable("tutorials");
        $this->setPermalink("tutorials");
        $this->setPageTitle("Tutorials");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addText("Title","title")->strLimit(150)->maxLength(255);
		$this->addTextArea("Description","description")->strLimit(150);
		$this->addText("Video","video")->required(false)->strLimit(150)->maxLength(255);
		$this->addImage("Image","image")->required(false)->help("Size:300X200")->encrypt(true);
		$this->addText("Reference","reference")->strLimit(150)->maxLength(255);
		$this->addSelectTable("Tutorial Category","tutorial_category_id",["table"=>"tutorial_categories","value_option"=>"id","display_option"=>"title","sql_condition"=>""]);
		$this->addWysiwyg("Blog Post","blog_post")->strLimit(150);
		$this->addSelectOption("View Type","view_type")->options([1=>'Video',2=>'Image']);
		

    }
}
