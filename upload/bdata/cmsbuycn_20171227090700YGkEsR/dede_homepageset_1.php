<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_homepageset`;");
E_C("CREATE TABLE `dede_homepageset` (
  `templet` char(50) NOT NULL DEFAULT '',
  `position` char(30) NOT NULL DEFAULT '',
  `showmod` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `dede_homepageset` values(0x64656661756c742f696e6465782e68746d,0x2e2e2f696e6465782e68746d6c,'0');");

require("../../inc/footer.php");
?>