<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;
use Illuminate\Support\Facades\DB;

use Yajra\Datatables\Datatables;
use Vinkla\Hashids\Facades\Hashids;

use App\KeberatanInformasi;

class StatusPengajuanKeberatanController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('statuspengajuankeberatan - '.getSetting('web_name'));
		SEOTools::setDescription('statuspengajuankeberatan - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/statuspengajuankeberatan');
		SEOTools::opengraph()->setTitle('statuspengajuankeberatan - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('statuspengajuankeberatan - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/statuspengajuankeberatan');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('statuspengajuankeberatan - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('statuspengajuankeberatan - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/statuspengajuankeberatan');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('statuspengajuankeberatan - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('statuspengajuankeberatan - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/statuspengajuankeberatan');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('statuspengajuankeberatan'));
    }

	/**
	 * Displays datatables front end view
	 *
	 * @return \Illuminate\View\View
	 */
	public function getIndex()
	{
		return view(getTheme('hasilkeberatan'));
	}

	/**
     * Process datatables ajax request for regulasis.
     *
     * @return \Illuminate\Http\JsonResponse
     */
	public function anyData(Request $request)
	{
		$keberatan = DB::table('keberataninformasis')
			->select('*');

		if ($request->has('nomor_permohonan') && $request->has('nama_pemohon')) {
			$keberatan = $keberatan->where('nomor_permohonan', $request->nomor_permohonan)
				->where('nama_pemohon', $request->nama_pemohon);
		}

		$keberatan = $keberatan->get();

		return Datatables::of($keberatan)
			->addColumn('nomor_permohonan', function ($keberataninformasi) {
				return $keberataninformasi->nomor_permohonan;
			})
			->addColumn('nama_pemohon', function ($keberataninformasi) {
				return $keberataninformasi->nama_pemohon;
			})
			->addColumn('tujuan_keberatan', function ($keberataninformasi) {
				return $keberataninformasi->tujuan_keberatan;
			})
			->addColumn('status_keberatan', function ($keberataninformasi) {
				return $keberataninformasi->status_keberatan;
			})
			->escapeColumns([])
			->make(true);
	}
}
