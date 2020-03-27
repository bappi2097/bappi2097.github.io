<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminQuarantineController extends CBController {


    public function cbInit()
    {
        $this->setTable("quarantine");
        $this->setPermalink("quarantine");
        $this->setPageTitle("Quarantine");

        $this->addDatetime("Created At","created_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showIndex(false)->showAdd(false)->showEdit(false);
		$this->addNumber("Total Quarantine","total_quarantine");
		$this->addText("Finished Quarantine","finished_quarantine")->strLimit(150)->maxLength(255);
		$this->addNumber("Total Isolation","total_isolation")->required(false)->help("Not mandatory");
		$this->addText("Finished Isolation","finished_isolation")->required(false)->help("Not Mandatory")->strLimit(150)->maxLength(255);
		

    }
}
