<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\FormInformasiPublik;

class FormPublikController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('formpublik - '.getSetting('web_name'));
		SEOTools::setDescription('formpublik - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/formpublik');
		SEOTools::opengraph()->setTitle('formpublik - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('formpublik - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/formpublik');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('formpublik - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('formpublik - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/formpublik');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('formpublik - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('formpublik - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/formpublik');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('formpublik'));
    }
}
