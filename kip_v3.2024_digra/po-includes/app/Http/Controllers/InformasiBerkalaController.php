<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\InformasiBerkala;

class InformasiBerkalaController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('informasiberkala - '.getSetting('web_name'));
		SEOTools::setDescription('informasiberkala - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/informasiberkala');
		SEOTools::opengraph()->setTitle('informasiberkala - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('informasiberkala - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/informasiberkala');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('informasiberkala - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('informasiberkala - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/informasiberkala');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('informasiberkala - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('informasiberkala - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/informasiberkala');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('informasiberkala'));
    }
}
