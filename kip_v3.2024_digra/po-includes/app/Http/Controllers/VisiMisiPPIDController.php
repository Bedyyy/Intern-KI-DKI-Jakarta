<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOTools;

use App\VisiMisiPPID;

class VisiMisiPPIDController extends Controller
{
    public function index()
    {
        $twitterid = explode('/', getSetting('twitter'));
		SEOTools::setTitle('visimisippid - '.getSetting('web_name'));
		SEOTools::setDescription('visimisippid - '.getSetting('web_description'));
		SEOTools::metatags()->setKeywords(explode(',', getSetting('web_keyword')));
		SEOTools::setCanonical(getSetting('web_url') . '/visimisippid');
		SEOTools::opengraph()->setTitle('visimisippid - '.getSetting('web_name'));
		SEOTools::opengraph()->setDescription('visimisippid - '.getSetting('web_description'));
		SEOTools::opengraph()->setUrl(getSetting('web_url') . '/visimisippid');
		SEOTools::opengraph()->setSiteName(getSetting('web_author'));
		SEOTools::opengraph()->addImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::twitter()->setSite('@'.$twitterid[count($twitterid)-1]);
		SEOTools::twitter()->setTitle('visimisippid - '.getSetting('web_name'));
		SEOTools::twitter()->setDescription('visimisippid - '.getSetting('web_description'));
		SEOTools::twitter()->setUrl(getSetting('web_url') . '/visimisippid');
		SEOTools::twitter()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		SEOTools::jsonLd()->setTitle('visimisippid - '.getSetting('web_name'));
		SEOTools::jsonLd()->setDescription('visimisippid - '.getSetting('web_description'));
		SEOTools::jsonLd()->setType('WebPage');
		SEOTools::jsonLd()->setUrl(getSetting('web_url') . '/visimisippid');
		SEOTools::jsonLd()->setImage(asset('po-content/uploads/'.getSetting('logo')));
		
        return view(getTheme('visimisippid'));
    }
}
