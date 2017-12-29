<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_arcatt`;");
E_C("CREATE TABLE `dede_arcatt` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `att` char(10) NOT NULL DEFAULT '',
  `attname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `dede_arcatt` values('5',0x73,0xe6bb9ae58aa8);");
E_D("replace into `dede_arcatt` values('1',0x68,0xe5a4b4e69da1);");
E_D("replace into `dede_arcatt` values('3',0x66,0xe5b9bbe781af);");
E_D("replace into `dede_arcatt` values('2',0x63,0xe68ea8e88d90);");
E_D("replace into `dede_arcatt` values('7',0x70,0xe59bbee78987);");
E_D("replace into `dede_arcatt` values('8',0x6a,0xe8b7b3e8bdac);");
E_D("replace into `dede_arcatt` values('4',0x61,0xe789b9e88d90);");
E_D("replace into `dede_arcatt` values('6',0x62,0xe58aa0e7b297);");

require("../../inc/footer.php");
?>