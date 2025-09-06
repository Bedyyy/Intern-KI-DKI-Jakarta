<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\InformasiSertaMerta;

class InformasiSertaMertaController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('informasisertamerta - '.getSetting('web_name'));
		SEOTools::setDescription('informasisertamerta - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/informasisertamerta');
		SEOTools::opengraph()->setTitle('informasisertamerta - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('informasisertamerta - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/informasisertamerta');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('informasisertamerta - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('informasisertamerta - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/informasisertamerta');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('informasisertamerta - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('informasisertamerta - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/informasisertamerta');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('informasisertamerta'));
    }
}
