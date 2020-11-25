<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBasicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('basics', function (Blueprint $table) {
            $table->bigIncrements('basic_id');
            $table->string('basic_title',150)->nullable();
            $table->text('basic_subtitle')->nullable();
            $table->string('basic_logo',50)->nullable();
            $table->string('basic_favicon',50)->nullable();
            $table->string('basic_flogo',50)->nullable();
            $table->integer('basic_status')->default(1);
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
        Schema::dropIfExists('basics');
    }
}
