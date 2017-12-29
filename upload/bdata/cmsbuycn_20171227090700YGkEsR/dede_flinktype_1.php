<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_flinktype`;");
E_C("CREATE TABLE `dede_flinktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8");
E_D("replace into `dede_flinktype` values('1',0xe7bbbce59088e7bd91e7ab99);");
E_D("replace into `dede_flinktype` values('2',0xe5a8b1e4b990e7b1bb);");
E_D("replace into `dede_flinktype` values('3',0xe69599e882b2e7b1bb);");
E_D("replace into `dede_flinktype` values('4',0xe8aea1e7ae97e69cbae7b1bb);");
E_D("replace into `dede_flinktype` values('5',0xe794b5e5ad90e59586e58aa1);");
E_D("replace into `dede_flinktype` values('6',0xe7bd91e4b88ae4bfa1e681af);");
E_D("replace into `dede_flinktype` values('7',0xe8aebae59d9be7b1bb);");
E_D("replace into `dede_flinktype` values('8',0xe585b6e5ae83e7b1bbe59e8b);");

require("../../inc/footer.php");
?>