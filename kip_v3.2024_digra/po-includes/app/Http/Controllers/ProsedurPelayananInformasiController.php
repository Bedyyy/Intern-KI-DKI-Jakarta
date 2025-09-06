<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\ProsedurPelayananInformasi;

class ProsedurPelayananInformasiController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('prosedurpelayananinformasi - '.getSetting('web_name'));
		SEOTools::setDescription('prosedurpelayananinformasi - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/prosedurpelayananinformasi');
		SEOTools::opengraph()->setTitle('prosedurpelayananinformasi - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('prosedurpelayananinformasi - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/prosedurpelayananinformasi');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('prosedurpelayananinformasi - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('prosedurpelayananinformasi - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/prosedurpelayananinformasi');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('prosedurpelayananinformasi - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('prosedurpelayananinformasi - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/prosedurpelayananinformasi');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('prosedurpelayananinformasi'));
    }
}
