<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->foreignId('seller_id');
            $table->enum('status', ['Received', 'Pending', 'Ordered']);
            $table->enum('payment_status', ['Paid', 'Partial', 'Due']);
            $table->decimal('amount');
            $table->enum('payment_method', ['Cash', 'card', 'Cheque', 'Bank Transfer', 'Other']);
            $table->decimal('grand_total');
            $table->date('purchase_date');
            $table->integer('invoice_no')->nullable();
            $table->timestamps();
            $table->foreign('seller_id')->references('id')->on('sellers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('purchases');
    }
}