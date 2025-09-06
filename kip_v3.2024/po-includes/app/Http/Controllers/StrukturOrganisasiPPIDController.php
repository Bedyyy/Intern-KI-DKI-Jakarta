<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\StrukturOrganisasiPPID;

class StrukturOrganisasiPPIDController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('strukturorganisasippid - '.getSetting('web_name'));
		SEOTools::setDescription('strukturorganisasippid - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/strukturorganisasippid');
		SEOTools::opengraph()->setTitle('strukturorganisasippid - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('strukturorganisasippid - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/strukturorganisasippid');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('strukturorganisasippid - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('strukturorganisasippid - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/strukturorganisasippid');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('strukturorganisasippid - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('strukturorganisasippid - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/strukturorganisasippid');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('strukturorganisasippid'));
    }
}
