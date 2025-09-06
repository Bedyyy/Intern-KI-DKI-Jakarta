<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\VisiMisi;

class VisiMisiController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('visimisi - '.getSetting('web_name'));
		SEOTools::setDescription('visimisi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/visimisi');
		SEOTools::opengraph()->setTitle('visimisi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('visimisi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/visimisi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('visimisi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('visimisi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/visimisi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('visimisi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('visimisi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/visimisi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('visimisi'));
    }
}
