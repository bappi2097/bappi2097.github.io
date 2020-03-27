<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Quarantine extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quarantine', function (Blueprint $table) {
            
            $table->timestamps();
			$table->bigIncrements('id');
			$table->integer('total_quarantine')->nullable();
			$table->integer('finished_quarantine')->nullable();
			$table->integer('total_isolation')->nullable();
			$table->integer('finished_isolation')->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quarantine');
    }
}
