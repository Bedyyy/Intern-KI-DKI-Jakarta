<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::match(['get', 'post'], '/', 'HomeController@index');
Route::get('home', 'HomeController@index')->name('home');
Route::get('epsi', 'EPSIController@index');
Route::get('permohonaninformasi', 'PermohonanInformasiController@index');
Route::post('permohonaninformasi/send', 'PermohonanInformasiController@send');
Route::get('keberataninformasi', 'KeberatanInformasiController@index');
Route::post('keberataninformasi/send', 'KeberatanInformasiController@send');
Route::get('visimisi', 'VisiMisiController@index');
Route::get('komisioner', 'KomisionerController@index');
Route::get('profilketua', 'ProfilKetuaController@index');
Route::get('profilwakilketua', 'ProfilWakilKetuaController@index');
Route::get('profilketuapsi', 'ProfilKetuaPSIController@index');
Route::get('profilketuaesa', 'ProfilKetuaESAController@index');
Route::get('strukturorganisasi', 'StrukturOrganisasiController@index');
Route::get('profilppid', 'ProfilPPIDController@index');
Route::get('pageppid', 'PagePPIDController@index');
Route::get('visimisippid', 'VisiMisiPPIDController@index');
Route::get('strukturorganisasippid', 'StrukturOrganisasiPPIDController@index');
Route::get('prosedurpelayananinformasi', 'ProsedurPelayananInformasiController@index');
Route::get('alurpermohonaninformasipublik', 'AlurPermohonanInformasiPublikController@index');
Route::get('alurpenyelesaiansengketa', 'AlurPenyelesaianSengketaController@index');
Route::get('formpublik', 'FormPublikController@index');

Route::get('statuspermohonaninformasi', 'StatusPermohonanInformasiController@index');
Route::get('hasilpermohonan', 'StatusPermohonanInformasiController@getIndex');
Route::get('hasilpermohonan/data', 'StatusPermohonanInformasiController@anyData');
Route::get('statuspengajuankeberatan', 'StatusPengajuanKeberatanController@index');
Route::get('hasilkeberatan', 'StatusPengajuanKeberatanController@getIndex');
Route::get('hasilkeberatan/data', 'StatusPengajuanKeberatanController@anyData');

Route::get('maklumatinformasipublik', 'MaklumatInformasiPublikController@index');
Route::get('informasiberkala', 'InformasiBerkalaController@index');
Route::get('informasisertamerta', 'InformasiSertaMertaController@index');
Route::get('informasitersediasetiapsaat', 'InformasiTersediaSetiapSaatController@index');
Route::get('berita', 'BeritaController@index');

Route::get('regulasi', 'RegulasiController@index');
Route::get('regulasi/download/{id}', 'RegulasiController@download');
Route::get('regulasi/data', 'RegulasiController@anyData');

Route::get('faq', 'FAQController@index');
Route::get('pages/{seotitle}', 'PagesController@index');
Route::get('category/{seotitle}', 'CategoryController@index');
Route::get('tag/{seotitle}', 'TagController@index');
Route::get('search', 'PostController@search');
Route::get('detailpost/{seotitle}', 'PostController@index');
Route::get('post/{seotitle}', 'PostController@index');
Route::get('post/{seotitle}-{id}', 'PostController@index');
Route::get('article/{year}/{month}/{day}/{seotitle}', 'PostController@article');
Route::post('comment/send/{seotitle}', 'PostController@send');
Route::get('album/{seotitle}', 'GalleryController@index');
Route::get('404', 'HomeController@error404')->name('404');
Route::get('contact', 'ContactController@index');
Route::post('contact/send', 'ContactController@send');
Route::post('subscribe', 'HomeController@subscribe');

if(getSetting('member_registration') == 'Y') {
	Auth::routes(['verify' => true]);
} else {
	Auth::routes(['register' => false]);
}

if(getSetting('maintenance_mode') == 'Y') {
	Auth::routes(['verify' => true]);
} else {
	Auth::routes(['register' => false]);
}

Route::group(['middleware' => ['auth']], function () {
	Route::get('dashboard', 'Backend\BackendController@index');
	Route::get('dashboard/analytics', 'Backend\BackendController@analytics');
	Route::get('forbidden', 'Backend\BackendController@forbidden');
	
	Route::get('dashboard/users/index', 'Backend\UsersController@index');
	Route::get('dashboard/users/table', 'Backend\UsersController@getIndex');
	Route::get('dashboard/users/data', 'Backend\UsersController@anyData');
	Route::get('dashboard/users/get-user','Backend\UsersController@getUser');
	Route::get('dashboard/users/get-user-not-me','Backend\UsersController@getUserNotMe');
	Route::post('dashboard/users/deleteall', 'Backend\UsersController@deleteAll');
	Route::resource('dashboard/users', 'Backend\UsersController');
	
	Route::get('dashboard/roles/index','Backend\RolesController@index');
	Route::get('dashboard/roles/table','Backend\RolesController@getIndex');
	Route::get('dashboard/roles/data','Backend\RolesController@anyData');
	Route::post('dashboard/roles/deleteall', 'Backend\RolesController@deleteAll');
	Route::resource('dashboard/roles', 'Backend\RolesController');
	
	Route::get('dashboard/permissions/index','Backend\PermissionsController@index');
	Route::get('dashboard/permissions/table','Backend\PermissionsController@getIndex');
	Route::get('dashboard/permissions/data','Backend\PermissionsController@anyData');
	Route::post('dashboard/permissions/deleteall', 'Backend\PermissionsController@deleteAll');
	Route::resource('dashboard/permissions', 'Backend\PermissionsController');
	
	Route::get('dashboard/settings/index','Backend\SettingsController@getIndex');
	Route::get('dashboard/settings/table','Backend\SettingsController@getIndex');
	Route::get('dashboard/settings/data','Backend\SettingsController@anyData');
	Route::get('dashboard/settings/sitemap','Backend\SettingsController@sitemap');
	Route::get('dashboard/settings/backup','Backend\SettingsController@backup');
	Route::post('dashboard/settings/deleteall', 'Backend\SettingsController@deleteAll');
	Route::resource('dashboard/settings', 'Backend\SettingsController');
	
	Route::get('dashboard/subscribes/index','Backend\SubscribeController@getIndex');
	Route::get('dashboard/subscribes/table','Backend\SubscribeController@getIndex');
	Route::get('dashboard/subscribes/data','Backend\SubscribeController@anyData');
	Route::post('dashboard/subscribes/deleteall', 'Backend\SubscribeController@deleteAll');
	Route::resource('dashboard/subscribes', 'Backend\SubscribeController');
	
	Route::get('dashboard/posts/index','Backend\PostController@index');
	Route::get('dashboard/posts/table','Backend\PostController@getIndex');
	Route::get('dashboard/posts/data','Backend\PostController@anyData');
	Route::get('dashboard/posts/subscribes/{id}','Backend\PostController@subscribes');
	Route::post('dashboard/posts/deleteall', 'Backend\PostController@deleteAll');
	Route::post('dashboard/posts/create-gallery', 'Backend\\PostController@createGallery');
	Route::post('dashboard/posts/delete-gallery', 'Backend\\PostController@deleteGallery');
	Route::resource('dashboard/posts', 'Backend\PostController');
	
	Route::get('dashboard/categories/index','Backend\CategoryController@index');
	Route::get('dashboard/categories/table','Backend\CategoryController@getIndex');
	Route::get('dashboard/categories/data','Backend\CategoryController@anyData');
	Route::post('dashboard/categories/deleteall', 'Backend\CategoryController@deleteAll');
	Route::resource('dashboard/categories', 'Backend\CategoryController');
	
	Route::get('dashboard/tags/index','Backend\TagsController@index');
	Route::get('dashboard/tags/table','Backend\TagsController@getIndex');
	Route::get('dashboard/tags/data','Backend\TagsController@anyData');
	Route::get('dashboard/tags/get-tag','Backend\TagsController@getTag');
	Route::post('dashboard/tags/deleteall', 'Backend\TagsController@deleteAll');
	Route::resource('dashboard/tags', 'Backend\TagsController');
	
	Route::get('dashboard/comments/index','Backend\CommentController@index');
	Route::get('dashboard/comments/table','Backend\CommentController@getIndex');
	Route::get('dashboard/comments/data','Backend\CommentController@anyData');
	Route::get('dashboard/comments/reply/{id}','Backend\CommentController@reply');
	Route::post('dashboard/comments/post-reply', 'Backend\CommentController@postReply');
	Route::post('dashboard/comments/deleteall', 'Backend\CommentController@deleteAll');
	Route::resource('dashboard/comments', 'Backend\CommentController');
	
	Route::get('dashboard/pages/index','Backend\PagesController@index');
	Route::get('dashboard/pages/table','Backend\PagesController@getIndex');
	Route::get('dashboard/pages/data','Backend\PagesController@anyData');
	Route::post('dashboard/pages/deleteall', 'Backend\PagesController@deleteAll');
	Route::resource('dashboard/pages', 'Backend\PagesController');
	
	Route::get('dashboard/themes/index','Backend\ThemeController@index');
	Route::get('dashboard/themes/table','Backend\ThemeController@getIndex');
	Route::get('dashboard/themes/data','Backend\ThemeController@anyData');
	Route::get('dashboard/themes/active/{id}','Backend\ThemeController@active');
	Route::get('dashboard/themes/install','Backend\ThemeController@install');
	Route::post('dashboard/themes/process-install','Backend\ThemeController@processInstall');
	Route::post('dashboard/themes/deleteall', 'Backend\ThemeController@deleteAll');
	Route::resource('dashboard/themes', 'Backend\ThemeController');
	
	Route::get('dashboard/menu-manager/index','Backend\MenuController@index');
	Route::get('dashboard/menu-manager/table','Backend\\MenuController@getIndex');
	Route::get('dashboard/menu-manager/data','Backend\MenuController@anyData');
	Route::get('dashboard/menu-manager/menusort','Backend\\MenuController@menusort');
	Route::post('dashboard/menu-manager/menusort', 'Backend\\MenuController@menusort');
	Route::post('dashboard/menu-manager/deleteall', 'Backend\MenuController@deleteAll');
	Route::resource('dashboard/menu-manager', 'Backend\MenuController');
	
	Route::get('dashboard/components/index','Backend\ComponentController@index');
	Route::get('dashboard/components/table','Backend\ComponentController@getIndex');
	Route::get('dashboard/components/data','Backend\ComponentController@anyData');
	Route::get('dashboard/components/install','Backend\ComponentController@install');
	Route::post('dashboard/components/process-install','Backend\ComponentController@processInstall');
	Route::post('dashboard/components/deleteall', 'Backend\ComponentController@deleteAll');
	Route::resource('dashboard/components', 'Backend\ComponentController');
	
	Route::get('dashboard/gallerys/index','Backend\GalleryController@index');
	Route::get('dashboard/gallerys/table','Backend\GalleryController@getIndex');
	Route::get('dashboard/gallerys/data','Backend\GalleryController@anyData');
	Route::post('dashboard/gallerys/deleteall', 'Backend\GalleryController@deleteAll');
	Route::resource('dashboard/gallerys', 'Backend\GalleryController');
	
	Route::get('dashboard/albums/index','Backend\AlbumController@index');
	Route::get('dashboard/albums/table','Backend\AlbumController@getIndex');
	Route::get('dashboard/albums/data','Backend\AlbumController@anyData');
	Route::get('dashboard/albums/get-album','Backend\AlbumController@getAlbum');
	Route::post('dashboard/albums/deleteall', 'Backend\AlbumController@deleteAll');
	Route::resource('dashboard/albums', 'Backend\AlbumController');
	
	Route::get('dashboard/contacts/index','Backend\ContactController@index');
	Route::get('dashboard/contacts/table','Backend\ContactController@getIndex');
	Route::get('dashboard/contacts/data','Backend\ContactController@anyData');
	Route::get('dashboard/contacts/reply/{id}','Backend\ContactController@reply');
	Route::post('dashboard/contacts/post-reply', 'Backend\ContactController@postReply');
	Route::post('dashboard/contacts/deleteall', 'Backend\ContactController@deleteAll');
	Route::resource('dashboard/contacts', 'Backend\ContactController');
	
	//-----replace-----//

	Route::get('dashboard/bidangpsi/registrasisengketainformasi/index','Backend\RegistrasiSengketaInformasiController@index');

	Route::get('dashboard/regulasi/index','Backend\RegulasiController@index');
	Route::get('dashboard/regulasi/table','Backend\RegulasiController@getIndex');
	Route::get('dashboard/regulasi/data','Backend\RegulasiController@anyData');
	Route::post('dashboard/regulasi/deleteall', 'Backend\RegulasiController@deleteAll');
	Route::resource('dashboard/regulasi', 'Backend\RegulasiController');
	
	Route::get('dashboard/ppid/permohonaninformasi/index','Backend\PermohonanInformasiController@index');
	Route::get('dashboard/ppid/permohonaninformasi/table','Backend\PermohonanInformasiController@getIndex');
	Route::get('dashboard/ppid/permohonaninformasi/data','Backend\PermohonanInformasiController@anyData');
	Route::post('dashboard/ppid/permohonaninformasi/deleteall', 'Backend\PermohonanInformasiController@deleteAll');
	Route::resource('dashboard/ppid/permohonaninformasi', 'Backend\PermohonanInformasiController');

	Route::get('dashboard/ppid/keberataninformasi/index','Backend\KeberatanInformasiController@index');
	Route::get('dashboard/ppid/keberataninformasi/table','Backend\KeberatanInformasiController@getIndex');
	Route::get('dashboard/ppid/keberataninformasi/data','Backend\KeberatanInformasiController@anyData');
	Route::post('dashboard/ppid/keberataninformasi/deleteall', 'Backend\KeberatanInformasiController@deleteAll');
	Route::resource('dashboard/ppid/keberataninformasi', 'Backend\KeberatanInformasiController');
});
