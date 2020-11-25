<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactUsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact_us', function (Blueprint $table) {
            $table->id();
            $table->string('con_name',50)->nullable();
            $table->string('con_email',40)->nullable();
            $table->string('con_phone',20)->nullable();
            $table->text('con_subject')->nullable();
            $table->text('con_message')->nullable();
            $table->string('con_slug',40)->nullable();
            $table->integer('con_status')->default(1);
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
        Schema::dropIfExists('contact_us');
    }
}
