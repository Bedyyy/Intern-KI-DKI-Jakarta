<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePermohonaninformasisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('permohonaninformasis', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nomor_permohonan')->default(('Masukkan Nomor Permohonan'));
            $table->string('kategori_permohonan');
            $table->string('nomor_identitas');
            $table->string('nama_pemohon');
            $table->string('file_ktp')->nullable();
            $table->string('alamat_pemohon');
            $table->string('email_pemohon');
            $table->string('no_telp_pemohon');
            $table->string('pekerjaan_pemohon');
            $table->string('tujuan_permohonan');
            $table->string('rincian_informasi');
            $table->string('cara_dapat_informasi');
            $table->string('dapat_salinan_informasi');
            $table->string('cara_dapat_salinan_informasi');
            $table->enum('status_permohonan', ['Diterima', 'Ditolak', 'Diproses'])->default('Diproses');
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
        Schema::dropIfExists('permohonaninformasis');
    }
}
