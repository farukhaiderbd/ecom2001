<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMainCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('main_categories', function (Blueprint $table) {
            $table->bigIncrements('mcate_id');
            $table->string('mcate_name',50)->unique();
            $table->string('mcate_icon',70)->nullable();
            $table->string('mcate_slug',70)->nullable();
            $table->integer('mcate_top_menu')->default(0);
            $table->integer('mcate_side_menu')->default(0);
            $table->integer('mcate_position')->nullable();
            $table->integer('mcate_creator');
            $table->integer('mcate_status')->default(1);
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
        Schema::dropIfExists('main_categories');
    }
}
