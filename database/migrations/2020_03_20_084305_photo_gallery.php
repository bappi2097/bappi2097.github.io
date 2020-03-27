<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PhotoGallery extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('photo_gallery', function (Blueprint $table) {
            
            $table->timestamps();
			$table->bigIncrements('id');
			$table->integer('photo_category_id')->nullable();
			$table->string('pc_image', 255)->nullable();
			$table->string('tab_image', 255)->nullable();
			$table->string('mobile_image', 255)->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('photo_gallery');
    }
}
