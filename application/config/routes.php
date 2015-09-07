<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

/*
| -------------------------------------------------------------------------
| MODULE ADMIN PANEL ROUTING - [START]
| ------------------------------------------------------------------------- 
*/

$admin = (ADMIN) ? str_replace('/', '', ADMIN) : '';

$route[$admin]						= "admin/authenticate";
$route[$admin.'/authenticate']		= "admin/authenticate/index";
$route[$admin.'/authenticate/(:any)']	= "admin/authenticate/$1";

/***** Administrator module menu mandatory [start] *****/
$route[$admin.'/dashboard/(:any)']	= 'admin/dashboard/$1';
$route[$admin.'/user/(:any)']		= 'admin/user/$1';
$route[$admin.'/usergroup/(:any)']	= 'admin/usergroup/$1';
$route[$admin.'/language/(:any)']	= 'admin/language/$1';
$route[$admin.'/modulelist/(:any)']	= 'admin/modulelist/$1';
$route[$admin.'/setting/(:any)']	= 'admin/setting/$1'; 
$route[$admin.'/serverlog/(:any)']	= 'admin/serverlog/$1';
/***** Administrator module menu mandatory [end] *****/

/***** Administrator module menu mandatory [start] *****/
$route[$admin.'/dashboard/(:any)']	= 'admin/dashboard/$1';
$route[$admin.'/user/(:any)']		= 'admin/user/$1';
$route[$admin.'/usergroup/(:any)']	= 'admin/usergroup/$1';
$route[$admin.'/language/(:any)']	= 'admin/language/$1';
$route[$admin.'/modulelist/(:any)']	= 'admin/modulelist/$1';
$route[$admin.'/setting/(:any)']	= 'admin/setting/$1'; 
$route[$admin.'/serverlog/(:any)']	= 'admin/serverlog/$1';
/***** Administrator module menu mandatory [end] *****/

// Region routes
$route[$admin.'/province/(:any)']	= 'region/province/$1';
$route[$admin.'/suburban/(:any)']	= 'region/suburban/$1';
$route[$admin.'/urbandistrict/(:any)']	= 'region/urbandistrict/$1';
$route[$admin.'/district/(:any)']	= 'region/district/$1';

$route[$admin.'/page/(:any)']		= 'page/$1';
$route[$admin.'/pagemenu/(:any)']	= 'page/pagemenu/$1';

$route[$admin.'/questionnaire/(:any)']		= 'questionnaire/$1';
$route[$admin.'/question/(:any)']			= 'questionnaire/question/$1';
$route[$admin.'/questionuseranswer/(:any)']	= 'questionnaire/questionuseranswer/$1';

// Participant and Attachment Routes
$route[$admin.'/participant/(:any)']			= 'participant/$1';
$route[$admin.'/participant_answer/(:any)']		= 'participant/participant_answer/$1';


//$route[$admin.'/(:any)'] = '$1';

/*
| -------------------------------------------------------------------------
| MODULE ADMIN PANEL ROUTING - [END]
| ------------------------------------------------------------------------- 
*/

$route['default_controller'] = 'home';
//$route['(:any)']			 = 'home/menu/$1';
//$route['(:any)/page/(:any)'] = 'home/page/$1/$2';
$route['download/(:num)']	 = 'download';
$route['404_override']		 = '';

/* End of file routes.php */
/* Location: ./application/config/routes.php */