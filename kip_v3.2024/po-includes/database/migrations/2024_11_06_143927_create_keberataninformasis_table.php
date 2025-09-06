<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKeberataninformasisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keberataninformasis', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nomor_permohonan');
            $table->string('nama_pemohon');
            $table->string('no_telp_pemohon');
            $table->string('pekerjaan_pemohon');
            $table->string('alamat_pemohon');
            $table->string('tujuan_keberatan');
            $table->string('alasan_keberatan');
            $table->enum('status_keberatan', ['Diterima', 'Ditolak', 'Diproses'])->default('Diproses');
            $table->integer('created_by')->default('1');
			$table->integer('updated_by')->default('1');
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
        Schema::dropIfExists('keberataninformasis');
    }
}
