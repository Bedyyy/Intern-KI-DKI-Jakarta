<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\ProfilPPID;

class PagePPIDController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('pageppid - '.getSetting('web_name'));
		SEOTools::setDescription('pageppid - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/pageppid');
		SEOTools::opengraph()->setTitle('pageppid - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('pageppid - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/pageppid');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('pageppid - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('pageppid - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/pageppid');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('pageppid - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('pageppid - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/pageppid');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('pageppid'));
    }
}
