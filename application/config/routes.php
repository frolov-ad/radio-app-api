<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'ApiController';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['cron/getList/(:any)'] ='cron/TopList/index/$1';

$route['getList'] = 'ApiController/getList';
$route['setTrackLike'] = 'ApiController/setTrackLike';
$route['getDonationSum'] = 'ApiController/getDonationSum';
$route['setDonationSum'] = 'ApiController/setDonationSum';

$route['login'] = 'AuthController/login';
