<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_vote`;");
E_C("CREATE TABLE `dede_vote` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `votename` varchar(50) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ismore` tinyint(6) NOT NULL DEFAULT '0',
  `isallow` tinyint(6) NOT NULL DEFAULT '0',
  `view` tinyint(6) NOT NULL DEFAULT '0',
  `spec` int(20) unsigned NOT NULL DEFAULT '0',
  `isenable` tinyint(6) NOT NULL DEFAULT '0',
  `votenote` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8");
E_D("replace into `dede_vote` values('1',0xe4bda0e698afe4bb8ee593aae584bfe5be97e79fa5e69cace7ab99e79a84efbc9f,'1266336000','1584547200','0','0','1','1','0','0',0x3c763a6e6f74652069643d22312220636f756e743d2231223ee69c8be58f8be4bb8be7bb8d3c2f763a6e6f74653e726e3c763a6e6f74652069643d22322220636f756e743d2230223ee997a8e688b7e7bd91e7ab99e79a84e6909ce7b4a2e5bc95e6938e3c2f763a6e6f74653e726e3c763a6e6f74652069643d22332220636f756e743d2232223e476f6f676c65e68896e799bee5baa6e6909ce7b4a23c2f763a6e6f74653e726e3c763a6e6f74652069643d22342220636f756e743d2232223ee588abe79a84e7bd91e7ab99e4b88ae79a84e993bee68ea53c2f763a6e6f74653e726e3c763a6e6f74652069643d22352220636f756e743d2231223ee585b6e5ae83e98094e5be843c2f763a6e6f74653e726e);");

require("../../inc/footer.php");
?>