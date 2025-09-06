<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class PermohonanInformasi extends Model
{
	use LogsActivity;
	
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    // public $timestamps = false;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'permohonaninformasis';

    /**
     * The database primary key value.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
		'nomor_permohonan', 'kategori_permohonan', 'nomor_identitas', 'nama_pemohon', 'file_ktp', 'alamat_pemohon', 'email_pemohon', 'no_telp_pemohon', 'pekerjaan_pemohon', 'tujuan_permohonan', 'rincian_informasi', 'cara_dapat_informasi', 'dapat_salinan_informasi', 'cara_dapat_salinan_informasi', 'status_permohonan', 'created_by', 'updated_by'
	];
	
	public function createdBy()
	{
		return $this->belongsTo('App\User', 'created_by');
	}
	
	public function updatedBy()
	{
		return $this->belongsTo('App\User', 'updated_by');
	}
	
	protected static $logAttributes = ['*'];
}
