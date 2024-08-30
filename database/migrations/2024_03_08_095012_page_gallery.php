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
        //
        Schema::table('page_gallery', function (Blueprint $table) {
            $table->foreign('gallery_id')->references('id')->on('gallery')->onDelete("cascade");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::table('page_gallery', function (Blueprint $table) {
            $table->dropForeign(['gallery_id']);
            $table->dropColumn('gallery_id');
        });
    }
};
