<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_scores`;");
E_C("CREATE TABLE `dede_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titles` char(15) NOT NULL,
  `icon` smallint(6) unsigned DEFAULT '0',
  `integral` int(10) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8");
E_D("replace into `dede_scores` values('2',0xe58897e585b5,'1','0','1');");
E_D("replace into `dede_scores` values('3',0xe78fade995bf,'2','1000','1');");
E_D("replace into `dede_scores` values('4',0xe5b091e5b089,'3','2000','1');");
E_D("replace into `dede_scores` values('5',0xe4b8ade5b089,'4','3000','1');");
E_D("replace into `dede_scores` values('6',0xe4b88ae5b089,'5','4000','1');");
E_D("replace into `dede_scores` values('7',0xe5b091e6a0a1,'6','5000','1');");
E_D("replace into `dede_scores` values('8',0xe4b8ade6a0a1,'7','6000','1');");
E_D("replace into `dede_scores` values('9',0xe4b88ae6a0a1,'8','9000','1');");
E_D("replace into `dede_scores` values('10',0xe5b091e5b086,'9','14000','1');");
E_D("replace into `dede_scores` values('11',0xe4b8ade5b086,'10','19000','1');");
E_D("replace into `dede_scores` values('12',0xe4b88ae5b086,'11','24000','1');");
E_D("replace into `dede_scores` values('15',0xe5a4a7e5b086,'12','29000','1');");

require("../../inc/footer.php");
?>