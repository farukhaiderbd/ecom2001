<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_categories', function (Blueprint $table) {
            $table->bigIncrements('pcate_id');
            $table->integer('mcate_id');
            $table->string('pcate_name',50);
            $table->string('pcate_icon',70)->nullable();
            $table->string('pcate_slug',70)->nullable();
            $table->integer('pcate_position')->nullable();
            $table->integer('pcate_creator');
            $table->integer('pcate_status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_categories');
    }
}
