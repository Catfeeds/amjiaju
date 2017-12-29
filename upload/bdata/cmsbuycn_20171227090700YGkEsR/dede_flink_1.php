<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_flink`;");
E_C("CREATE TABLE `dede_flink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sortrank` smallint(6) NOT NULL DEFAULT '0',
  `url` char(60) NOT NULL DEFAULT '',
  `webname` char(30) NOT NULL DEFAULT '',
  `msg` char(200) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `logo` char(60) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8");
E_D("replace into `dede_flink` values('2','1',0x687474703a2f2f7777772e64656465636d732e636f6d,0xe7bb87e6a2a6434d53e5ae98e696b9,'','','','1226375403','1','2');");
E_D("replace into `dede_flink` values('9','1',0x687474703a2f2f646f63732e64656465636d732e636f6d2f,0x44656465434d53e7bbb4e59fbae6898be5868c,'','','','1227772717','1','2');");
E_D("replace into `dede_flink` values('8','1',0x687474703a2f2f6262732e64656465636d732e636f6d,0xe7bb87e6a2a6e68a80e69cafe8aebae59d9b,'','','','1227772703','1','2');");

require("../../inc/footer.php");
?>