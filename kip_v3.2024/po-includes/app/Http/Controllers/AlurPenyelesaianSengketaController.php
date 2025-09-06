<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\AlurPenyelesaianSengketa;

class AlurPenyelesaianSengketaController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('alurpenyelesaiansengketa - '.getSetting('web_name'));
		SEOTools::setDescription('alurpenyelesaiansengketa - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/alurpenyelesaiansengketa');
		SEOTools::opengraph()->setTitle('alurpenyelesaiansengketa - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('alurpenyelesaiansengketa - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/alurpenyelesaiansengketa');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('alurpenyelesaiansengketa - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('alurpenyelesaiansengketa - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/alurpenyelesaiansengketa');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('alurpenyelesaiansengketa - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('alurpenyelesaiansengketa - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/alurpenyelesaiansengketa');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('alurpenyelesaiansengketa'));
    }
}
