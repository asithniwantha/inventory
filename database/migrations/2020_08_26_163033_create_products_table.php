<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->foreignId('product_name_id');
            $table->enum('category', ['Desktop', 'Laptop'])->nullable();
            $table->foreignId('brand_id');
            $table->string('model');
            $table->string('sku')->nullable();
            $table->timestamps();
            $table->foreign('product_name_id')->references('id')->on('product_names');
            $table->foreign('brand_id')->references('id')->on('brands');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}