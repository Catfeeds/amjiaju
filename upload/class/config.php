<?php
if(!defined('InEmpireBak'))
{
	exit();
}
define('EmpireBakConfig',TRUE);

//Database
$phome_db_dbtype='mysql';
$phome_db_ver='5.0';
$phome_db_server='localhost';
$phome_db_port='';
$phome_db_username='root';
$phome_db_password='123456';
$phome_db_dbname='';
$baktbpre='';
$phome_db_char='';

//USER
$set_username='admin';
$set_password='3e00940edebf12c54f65858b2217db04';
$set_loginauth='';
$set_loginrnd='JJVQhecsvVRSj79znEzfeZ6QzvtKrZ';
$set_outtime='60';
$set_loginkey='1';
$ebak_set_keytime=60;
$ebak_set_ckuseragent='';

//COOKIE
$phome_cookiedomain='';
$phome_cookiepath='/';
$phome_cookievarpre='nqzsrw_';

//LANGUAGE
$langr=ReturnUseEbakLang();
$ebaklang=$langr['lang'];
$ebaklangchar=$langr['langchar'];

//BAK
$bakpath='bdata';
$bakzippath='zip';
$filechmod='1';
$phpsafemod='';
$php_outtime='1000';
$limittype='';
$canlistdb='';
$ebak_set_moredbserver='';
$ebak_set_hidedbs='';
$ebak_set_escapetype='1';

//EBMA
$ebak_ebma_open=1;
$ebak_ebma_path='phpmyadmin';
$ebak_ebma_cklogin=0;

//SYS
$ebak_set_ckrndvar='melvdqbfnzzv';
$ebak_set_ckrndval='665b8c1ab52dccde8461db6ebc02c6b6';
$ebak_set_ckrndvaltwo='039570e252359310556758ba59123b33';
$ebak_set_ckrndvalthree='19db7c9643ac37204b23a6520509e9ff';
$ebak_set_ckrndvalfour='353728393a64d6c770fe5a610d757197';

//------------ SYSTEM ------------
HeaderIeChar();
?>