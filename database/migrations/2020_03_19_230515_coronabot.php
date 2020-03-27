<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Coronabot extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coronabot', function (Blueprint $table) {
            
            $table->timestamps();
			$table->bigIncrements('id');
			$table->tinyInteger('ques1')->nullable();
			$table->tinyInteger('ques2')->nullable();
			$table->tinyInteger('ques3')->nullable();
			$table->tinyInteger('ques4')->nullable();
			$table->tinyInteger('ques5')->nullable();
			$table->tinyInteger('ques6')->nullable();
			$table->tinyInteger('ques7')->nullable();
			$table->tinyInteger('ques8')->nullable();
			$table->tinyInteger('ques9')->nullable();
			$table->tinyInteger('ques11')->nullable();
			$table->boolean('heart')->nullable();
			$table->boolean('diabetics')->nullable();
			$table->boolean('asthama')->nullable();
			$table->boolean('high_pressure')->nullable();
			$table->boolean('nothing')->nullable();
			$table->tinyInteger('result')->nullable();
			$table->string('phone_number', 32)->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('coronabot');
    }
}
