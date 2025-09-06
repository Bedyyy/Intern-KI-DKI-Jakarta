<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\KeberatanInformasi;
use Illuminate\Support\Facades\Hash;

class KeberatanInformasiController extends Controller
{

	/**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
		config([
			'captcha.secret' => getSetting('recaptcha_secret'),
			'captcha.sitekey' => getSetting('recaptcha_key'),
		]);
		
        // $this->middleware('auth');
    }

    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('keberataninformasi - '.getSetting('web_name'));
		SEOTools::setDescription('keberataninformasi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/keberataninformasi');
		SEOTools::opengraph()->setTitle('keberataninformasi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('keberataninformasi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/keberataninformasi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('keberataninformasi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('keberataninformasi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/keberataninformasi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('keberataninformasi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('keberataninformasi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/keberataninformasi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('keberataninformasi'));
    }

	public function send(Request $request)
    {
		$this->validate($request,[
			'nomor_permohonan' => 'required',
			'nama_pemohon' => 'required',
			'no_telp_pemohon' => 'required',
			'pekerjaan_pemohon' => 'required',
			'alamat_pemohon' => 'required',
			'tujuan_keberatan' => 'required',
			'alasan_keberatan' => 'required',
			'g-recaptcha-response' => 'required|captcha'
		]);

		$request->request->add([
			'created_by' => 1,
			'updated_by' => 1
		]);
		$requestData = $request->all();

		KeberatanInformasi::create($requestData);
		
		return redirect('keberataninformasi')->with('flash_message', __('keberataninformasi.store_notif'));
    }
}
