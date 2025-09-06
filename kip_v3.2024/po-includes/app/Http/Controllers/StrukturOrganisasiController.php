<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\StrukturOrganisasi;

class StrukturOrganisasiController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('strukturorganisasi - '.getSetting('web_name'));
		SEOTools::setDescription('strukturorganisasi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/strukturorganisasi');
		SEOTools::opengraph()->setTitle('strukturorganisasi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('strukturorganisasi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/strukturorganisasi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('strukturorganisasi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('strukturorganisasi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/strukturorganisasi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('strukturorganisasi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('strukturorganisasi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/strukturorganisasi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('strukturorganisasi'));
    }
}
