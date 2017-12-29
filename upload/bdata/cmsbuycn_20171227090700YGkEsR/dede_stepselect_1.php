<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_stepselect`;");
E_C("CREATE TABLE `dede_stepselect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` char(30) DEFAULT NULL,
  `egroup` char(20) DEFAULT NULL,
  `issign` tinyint(1) unsigned DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8");
E_D("replace into `dede_stepselect` values('1',0xe8a180e59e8b,0x626c6f6f64,'1','1');");
E_D("replace into `dede_stepselect` values('2',0xe4bd93e59e8b,0x626f647974797065,'1','1');");
E_D("replace into `dede_stepselect` values('3',0xe585ace58fb8e8a784e6a8a1,0x636f73697a65,'1','1');");
E_D("replace into `dede_stepselect` values('4',0xe4baa4e58f8b,0x646174696e6774797065,'1','1');");
E_D("replace into `dede_stepselect` values('5',0xe698afe590a6e9a5aee98592,0x6472696e6b,'1','1');");
E_D("replace into `dede_stepselect` values('6',0xe69599e882b2e7a88be5baa6,0x656475636174696f6e,'1','1');");
E_D("replace into `dede_stepselect` values('7',0xe4bd8fe688bf,0x686f757365,'1','1');");
E_D("replace into `dede_stepselect` values('8',0xe694b6e585a5,0x696e636f6d65,'1','1');");
E_D("replace into `dede_stepselect` values('9',0xe5a99ae5a7bb,0x6d61726974616c,'1','1');");
E_D("replace into `dede_stepselect` values('10',0xe698afe590a6e68abde7839f,0x736d6f6b65,'1','1');");
E_D("replace into `dede_stepselect` values('11',0xe6989fe5baa7,0x73746172,'1','1');");
E_D("replace into `dede_stepselect` values('12',0xe7b3bbe7bb9fe7bc93e5ad98e6a087e8af86,0x73797374656d,'1','1');");
E_D("replace into `dede_stepselect` values('13',0xe8a18ce4b89a,0x766f636174696f6e,'0','0');");
E_D("replace into `dede_stepselect` values('14',0xe59cb0e58cba,0x6e6174697665706c616365,'0','0');");
E_D("replace into `dede_stepselect` values('15',0xe4bfa1e681afe7b1bbe59e8b,0x696e666f74797065,'0','0');");

require("../../inc/footer.php");
?>