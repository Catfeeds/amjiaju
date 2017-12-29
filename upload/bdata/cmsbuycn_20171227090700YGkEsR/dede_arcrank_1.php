<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_arcrank`;");
E_C("CREATE TABLE `dede_arcrank` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `membername` char(20) NOT NULL DEFAULT '',
  `adminrank` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(8) unsigned NOT NULL DEFAULT '500',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `purviews` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8");
E_D("replace into `dede_arcrank` values('1','0',0xe5bc80e694bee6b58fe8a788,'5','0','0','');");
E_D("replace into `dede_arcrank` values('2','-1',0xe5be85e5aea1e6a0b8e7a8bfe4bbb6,'0','0','0','');");
E_D("replace into `dede_arcrank` values('3','10',0xe6b3a8e5868ce4bc9ae59198,'5','0','100','');");
E_D("replace into `dede_arcrank` values('4','50',0xe4b8ade7baa7e4bc9ae59198,'5','300','200','');");
E_D("replace into `dede_arcrank` values('5','100',0xe9ab98e7baa7e4bc9ae59198,'5','800','500','');");
E_D("replace into `dede_arcrank` values('6','20',0xe4bd8ee7baa7e4bc9ae59198,'5','0','500','');");
E_D("replace into `dede_arcrank` values('7','150',0xe7bb99e58a9be4bc9ae59198,'5','1000','500','');");
E_D("replace into `dede_arcrank` values('8','180',0xe8b685e883bde4bc9ae59198,'5','1100','500','');");

require("../../inc/footer.php");
?>