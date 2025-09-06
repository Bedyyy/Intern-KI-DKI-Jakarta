<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\ProfilPPID;

class ProfilPPIDController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('profilppid - '.getSetting('web_name'));
		SEOTools::setDescription('profilppid - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/profilppid');
		SEOTools::opengraph()->setTitle('profilppid - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('profilppid - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/profilppid');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('profilppid - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('profilppid - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/profilppid');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('profilppid - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('profilppid - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/profilppid');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('profilppid'));
    }
}
