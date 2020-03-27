<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Tutorials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tutorials', function (Blueprint $table) {
            
            $table->timestamps();
			$table->bigIncrements('id');
			$table->text('title')->nullable();
			$table->text('description')->nullable();
			$table->text('video')->nullable();
			$table->string('image', 255)->nullable();
			$table->text('reference')->nullable();
			$table->integer('tutorial_category_id')->nullable();
			$table->text('blog_post')->nullable();
			$table->integer('view_type')->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tutorials');
    }
}
