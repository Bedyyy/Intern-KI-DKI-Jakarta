<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\Komisioner;

class ProfilWakilKetuaController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('Profil Wakil Ketua - '.getSetting('web_name'));
		SEOTools::setDescription('profilwakilketua - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/profilwakilketua');
		SEOTools::opengraph()->setTitle('profilwakilketua - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('profilwakilketua - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/profilwakilketua');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('profilwakilketua - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('profilwakilketua - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/profilwakilketua');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('profilwakilketua - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('profilwakilketua - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/profilwakilketua');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('profilwakilketua'));
    }
}
