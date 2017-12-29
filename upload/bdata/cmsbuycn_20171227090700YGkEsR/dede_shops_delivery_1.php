<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_shops_delivery`;");
E_C("CREATE TABLE `dede_shops_delivery` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dname` char(80) NOT NULL,
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `des` char(255) DEFAULT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `orders` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8");
E_D("replace into `dede_shops_delivery` values('1',0xe98081e8b4a7e4b88ae997a8,'10.21',0xe98081e8b4a7e4b88ae997a82ce9a286e58f96e59586e59381e697b6e4bb98e8b4b92e,'0');");
E_D("replace into `dede_shops_delivery` values('2',0xe789b9e5bfabe4b893e98092efbc88454d53efbc89,'25.00',0xe789b9e5bfabe4b893e98092efbc88454d53efbc892ce8a681e58fa6e694b6e6898be7bbade8b4b92e,'0');");
E_D("replace into `dede_shops_delivery` values('3',0xe699aee9809ae982aee98092,'5.00',0xe699aee9809ae982aee98092,'0');");
E_D("replace into `dede_shops_delivery` values('4',0xe982aee5b180e5bfabe982ae,'12.00',0xe982aee5b180e5bfabe982ae,'0');");

require("../../inc/footer.php");
?>