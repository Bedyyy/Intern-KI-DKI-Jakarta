<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;
use Illuminate\Support\Facades\DB;

use Yajra\Datatables\Datatables;
use Vinkla\Hashids\Facades\Hashids;

use App\Regulasi;

class RegulasiController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('regulasi - '.getSetting('web_name'));
		SEOTools::setDescription('regulasi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/regulasi');
		SEOTools::opengraph()->setTitle('regulasi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('regulasi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/regulasi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('regulasi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('regulasi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/regulasi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('regulasi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('regulasi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/regulasi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));

		$regulasis = Regulasi::all();
		
        return view(getTheme('regulasi'), compact('regulasis'));
    }

	public function download($id)
	{
		$id = Hashids::decode($id)[0];
		$regulasi = Regulasi::find($id);
		$regulasi->increment('diunduh');
		return response()->download('po-content/uploads/regulasi/'.$regulasi->file);
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
	public function anyData()
	{
		$regulasis = DB::table('regulasis')
			->select('*');

		$regulasis = $regulasis->get();

		return Datatables::of($regulasis)
			->addColumn('tentang', function ($regulasi) {
				return $regulasi->tentang;
			})
			->addColumn('judul', function ($regulasi) {
				return $regulasi->judul;
			})
			->addColumn('keterangan', function ($regulasi) {
				return $regulasi->keterangan;
			})
			->addColumn('file', function ($regulasi) {
				return '<a href="'.url('regulasi/download/'. Hashids::encode($regulasi->id)).'">'."Download | ". $regulasi->diunduh." Unduhan".'</a>';
			})
			->escapeColumns([])
			->make(true);
	}
}
