<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('dishes', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('origin_id');
            $table->string('name');
            $table->decimal('price', 8, 2)->nullable();
            $table->integer('preparation_time')->nullable();
            $table->text('description')->nullable();
            $table->string('photo')->nullable();
            $table->timestamps();
        
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreign('origin_id')->references('id')->on('origins')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dishes');
    }
};
