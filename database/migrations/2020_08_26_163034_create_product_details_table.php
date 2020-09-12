<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_details', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->foreignId('product_id');
            $table->string('sub_model')->nullable();
            $table->string('product_description')->nullable();
            $table->integer('alert_quantity')->nullable();
            $table->binary('image')->nullable();
            $table->date('warranty')->nullable();
            $table->decimal('selling_price');
            $table->timestamps();
            $table->foreign('product_id')->references('id')->on('products');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_details');
    }
}