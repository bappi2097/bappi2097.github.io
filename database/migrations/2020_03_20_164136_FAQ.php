<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FAQ extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('FAQ', function (Blueprint $table) {
            
            $table->timestamps();
			$table->bigIncrements('id');
			$table->text('question')->nullable();
			$table->text('answer')->nullable();
			$table->string('type', 255)->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('FAQ');
    }
}
