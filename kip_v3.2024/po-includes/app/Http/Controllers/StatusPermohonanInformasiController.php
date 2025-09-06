<?php

namespace App\Http\Controllers;

use App\PermohonanInformasi;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Artesaos\SEOTools\Facades\SEOTools;

use Yajra\Datatables\Datatables;
use Vinkla\Hashids\Facades\Hashids;

class StatusPermohonanInformasiController extends Controller
{
	public function index()
	{
		$twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('statuspermohonaninformasi - ' . getSetting('web_name'));
		SEOTools::setDescription('statuspermohonaninformasi - ' . getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/statuspermohonaninformasi');
		SEOTools::opengraph()->setTitle('statuspermohonaninformasi - ' . getSetting('web_name'));
		SEOTools::opengraph()->setDescription('statuspermohonaninformasi - ' . getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/statuspermohonaninformasi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/' . getSetting('logo')));
		SEOTools::twitter()->setSite('@' . $twitterid[count($twitterid) - 1]);
		SEOTools::twitter()->setTitle('statuspermohonaninformasi - ' . getSetting('web_name'));
		SEOTools::twitter()->setDescription('statuspermohonaninformasi - ' . getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/statuspermohonaninformasi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/' . getSetting('logo')));
		SEOTools::jsonLd()->setTitle('statuspermohonaninformasi - ' . getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('statuspermohonaninformasi - ' . getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/statuspermohonaninformasi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/' . getSetting('logo')));

		return view(getTheme('statuspermohonaninformasi'));
	}

	/**
	 * Displays datatables front end view
	 *
	 * @return \Illuminate\View\View
	 */
	public function getIndex()
	{
		return view(getTheme('hasilpermohonan'));
	}

	/**
     * Process datatables ajax request for regulasis.
     *
     * @return \Illuminate\Http\JsonResponse
     */
	public function anyData(Request $request)
	{
		$permohonan = DB::table('permohonaninformasis')
			->select('*');

		if ($request->has('nomor_identitas') && $request->has('nama_pemohon')) {
			$permohonan = $permohonan->where('nomor_identitas', $request->nomor_identitas)
				->where('nama_pemohon', $request->nama_pemohon);
		}

		$permohonan = $permohonan->get();

		return Datatables::of($permohonan)
			->addColumn('nomor_permohonan', function ($permohonaninformasi) {
				return $permohonaninformasi->nomor_permohonan;
			})
			->addColumn('nama_pemohon', function ($permohonaninformasi) {
				return $permohonaninformasi->nama_pemohon;
			})
			->addColumn('rincian_informasi', function ($permohonaninformasi) {
				return $permohonaninformasi->rincian_informasi;
			})
			->addColumn('status_permohonan', function ($permohonaninformasi) {
				return $permohonaninformasi->status_permohonan;
			})
			->escapeColumns([])
			->make(true);
	}
}
