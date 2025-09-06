<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\MaklumatInformasiPublik;

class MaklumatInformasiPublikController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('maklumatinformasipublik - '.getSetting('web_name'));
		SEOTools::setDescription('maklumatinformasipublik - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/maklumatinformasipublik');
		SEOTools::opengraph()->setTitle('maklumatinformasipublik - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('maklumatinformasipublik - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/maklumatinformasipublik');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('maklumatinformasipublik - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('maklumatinformasipublik - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/maklumatinformasipublik');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('maklumatinformasipublik - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('maklumatinformasipublik - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/maklumatinformasipublik');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('maklumatinformasipublik'));
    }
}
