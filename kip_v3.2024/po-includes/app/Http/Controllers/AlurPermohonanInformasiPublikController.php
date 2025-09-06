<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\AlurPermohonanInformasiPublik;

class AlurPermohonanInformasiPublikController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('alurpermohonaninformasipublik - '.getSetting('web_name'));
		SEOTools::setDescription('alurpermohonaninformasipublik - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/alurpermohonaninformasipublik');
		SEOTools::opengraph()->setTitle('alurpermohonaninformasipublik - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('alurpermohonaninformasipublik - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/alurpermohonaninformasipublik');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('alurpermohonaninformasipublik - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('alurpermohonaninformasipublik - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/alurpermohonaninformasipublik');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('alurpermohonaninformasipublik - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('alurpermohonaninformasipublik - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/alurpermohonaninformasipublik');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('alurpermohonaninformasipublik'));
    }
}
