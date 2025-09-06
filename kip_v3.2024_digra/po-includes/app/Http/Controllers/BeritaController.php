<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\FAQ;

class BeritaController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('berita - '.getSetting('web_name'));
		SEOTools::setDescription('berita - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/berita');
		SEOTools::opengraph()->setTitle('berita - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('berita - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/berita');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('berita - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('berita - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/berita');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('berita - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('berita - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/berita');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('berita'));
    }
}
