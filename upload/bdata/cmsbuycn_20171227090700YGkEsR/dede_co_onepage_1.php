<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_co_onepage`;");
E_C("CREATE TABLE `dede_co_onepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `issource` smallint(6) NOT NULL DEFAULT '1',
  `lang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `rule` text,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8");
E_D("replace into `dede_co_onepage` values('5',0x7777772e64656465636d732e636f6d,0xe7bb87e6a2a6e7bd91e7bb9c,'1',0x676232333132,0x3c64697620636c6173733d22636f6e74656e74223e7b40626f64797d3c64697620636c6173733d22637570616765223e);");
E_D("replace into `dede_co_onepage` values('4',0x7777772e746563687765622e636f6d2e636e,0x54656368776562,'1',0x676232333132,0x3c64697620636c6173733d22636f6e74656e745f747874223e7b40626f64797d3c2f6469763e090a);");
E_D("replace into `dede_co_onepage` values('6',0x74772e6e6577732e7961686f6f2e636f6d,0xe58fb0e6b9bee99b85e8998e,'1',0x62696735,0x3c6469762069643d22796e7773617274636f6e74656e74223e7b40626f64797d3c2f6469763e090a);");

require("../../inc/footer.php");
?>