<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminCategoryImagesController extends CBController {


    public function cbInit()
    {
        $this->setTable("category_images");
        $this->setPermalink("category_images");
        $this->setPageTitle("Category Images");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addSelectTable("Category","category_id",["table"=>"categories","value_option"=>"id","display_option"=>"title","sql_condition"=>""]);
		$this->addImage("Pc Image","pc_image")->encrypt(true);
		$this->addImage("Tab Image","tab_image")->required(false)->encrypt(true);
		$this->addImage("Mobile Image","mobile_image")->required(false)->encrypt(true);
		

    }
}
