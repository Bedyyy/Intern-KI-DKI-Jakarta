<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\Komisioner;

class ProfilKetuaController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('Profil Ketua - '.getSetting('web_name'));
		SEOTools::setDescription('profilketua - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/profilketua');
		SEOTools::opengraph()->setTitle('profilketua - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('profilketua - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/profilketua');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('profilketua - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('profilketua - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/profilketua');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('profilketua - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('profilketua - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/profilketua');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('profilketua'));
    }
}
