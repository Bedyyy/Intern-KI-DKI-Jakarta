<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\Komisioner;

class ProfilKetuaESAController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('Profil Ketua ESA - '.getSetting('web_name'));
		SEOTools::setDescription('profilketuaesa - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/profilketuaesa');
		SEOTools::opengraph()->setTitle('profilketuaesa - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('profilketuaesa - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/profilketuaesa');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('profilketuaesa - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('profilketuaesa - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/profilketuaesa');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('profilketuaesa - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('profilketuaesa - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/profilketuaesa');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('profilketuaesa'));
    }
}
