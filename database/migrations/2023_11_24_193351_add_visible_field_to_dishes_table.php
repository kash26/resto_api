<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('dishes', function (Blueprint $table) {
            $table->boolean('is_visible')->default(false)->after('photo');
        });
        DB::table('dishes')->update(['is_visible' => false]);
        // Check if the "visible" column does not exist before adding it
        // if (!Schema::hasColumn('dishes', 'is_visible')) {
        //     Schema::table('dishes', function (Blueprint $table) {
        //         $table->boolean('visible')->default(false)->after('photo');
        //     });
        // }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('dishes', function (Blueprint $table) {
            $table->dropColumn('is_visible');
        });
        // Check if the "visible" column exists before dropping it
        // if (Schema::hasColumn('dishes', 'is_visible')) {
        //     Schema::table('dishes', function (Blueprint $table) {
        //         $table->dropColumn('is_visible');
        //     });
        // }
    }
};