<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\Komisioner;

class KomisionerController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('Komisioner - '.getSetting('web_name'));
		SEOTools::setDescription('komisioner - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/komisioner');
		SEOTools::opengraph()->setTitle('komisioner - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('komisioner - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/komisioner');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('komisioner - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('komisioner - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/komisioner');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('komisioner - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('komisioner - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/komisioner');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('komisioner'));
    }
}
