<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\Komisioner;

class ProfilKetuaPSIController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('Profil Ketua PSI - '.getSetting('web_name'));
		SEOTools::setDescription('profilketuapsi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/profilketuapsi');
		SEOTools::opengraph()->setTitle('profilketuapsi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('profilketuapsi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/profilketuapsi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('profilketuapsi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('profilketuapsi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/profilketuapsi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('profilketuapsi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('profilketuapsi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/profilketuapsi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('profilketuapsi'));
    }
}
