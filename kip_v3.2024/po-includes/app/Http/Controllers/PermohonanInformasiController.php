<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\PermohonanInformasi;
use Illuminate\Support\Facades\Hash;

class PermohonanInformasiController extends Controller
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
		SEOTools::setTitle('permohonaninformasi - '.getSetting('web_name'));
		SEOTools::setDescription('permohonaninformasi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/permohonaninformasi');
		SEOTools::opengraph()->setTitle('permohonaninformasi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('permohonaninformasi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/permohonaninformasi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('permohonaninformasi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('permohonaninformasi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/permohonaninformasi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('permohonaninformasi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('permohonaninformasi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/permohonaninformasi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('permohonaninformasi'));
    }

	public function send(Request $request)
    {
		$this->validate($request,[
			'kategori_permohonan' => 'required',
			'nomor_identitas' => 'required',
			'nama_pemohon' => 'required',
			'file_ktp' => 'required',
			'alamat_pemohon' => 'required',
			'email_pemohon' => 'required|string|max:255|email',
			'no_telp_pemohon' => 'required',
			'pekerjaan_pemohon' => 'required',
			'tujuan_permohonan' => 'required',
			'rincian_informasi' => 'required',
			'cara_dapat_informasi' => 'required',
			'dapat_salinan_informasi' => 'required',
			'cara_dapat_salinan_informasi' => 'required',
			'g-recaptcha-response' => 'required|captcha'
		]);

		$request->request->add([
			'created_by' => 1,
			'updated_by' => 1
		]);
		$requestData = $request->all();

		if ($request->hasFile('file_ktp')) {
			$file = $request->file('file_ktp');
	
			date_default_timezone_set('Asia/Jakarta');
			$filename = time() . '_' . $file->getClientOriginalName();
	
			if ($file->move('po-content/uploads/permohonaninformasi', $filename)) {
				$requestData['file_ktp'] = $filename;
			} else {
				return redirect()->back()->withErrors(['file_ktp' => __('File upload failed')])->withInput();
			}
		} else {
			return redirect()->back()->withErrors(['file_ktp' => __('No file was uploaded')])->withInput();
		}

		PermohonanInformasi::create($requestData);
		
		return redirect('permohonaninformasi')->with('flash_message', __('permohonaninformasi.store_notif'));
    }
}
