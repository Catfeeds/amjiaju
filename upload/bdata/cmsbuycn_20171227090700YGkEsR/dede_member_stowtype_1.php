<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_member_stowtype`;");
E_C("CREATE TABLE `dede_member_stowtype` (
  `stowname` varchar(30) NOT NULL,
  `indexname` varchar(30) NOT NULL,
  `indexurl` varchar(50) NOT NULL,
  PRIMARY KEY (`stowname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `dede_member_stowtype` values(0x737973,0xe7b3bbe7bb9fe694b6e8978f,0x61726368697665735f646f2e706870);");
E_D("replace into `dede_member_stowtype` values(0x626f6f6b,0xe5b08fe8afb4e694b6e8978f,0x2f626f6f6b2f626f6f6b2e7068703f626964);");

require("../../inc/footer.php");
?>