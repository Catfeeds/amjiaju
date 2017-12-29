<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_sys_module`;");
E_C("CREATE TABLE `dede_sys_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashcode` char(32) NOT NULL DEFAULT '',
  `modname` varchar(30) NOT NULL DEFAULT '',
  `indexname` varchar(20) NOT NULL DEFAULT '',
  `indexurl` varchar(30) NOT NULL DEFAULT '',
  `ismember` tinyint(4) NOT NULL DEFAULT '1',
  `menustring` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8");
E_D("replace into `dede_sys_module` values('1',0x3063636536306263303233386161303338303436383263383031353834393931,0xe799bee5baa6e696b0e997bb,'','','0','');");
E_D("replace into `dede_sys_module` values('2',0x3166333536323066623432643435326661326264633164656531363930663932,0xe69687e4bbb6e7aea1e79086e599a8,'','','0','');");
E_D("replace into `dede_sys_module` values('3',0x3732666661366661626533633233366639323338613262323831626330663933,0xe5b9bfe5918ae7aea1e79086,'','','0','');");
E_D("replace into `dede_sys_module` values('4',0x6234333764383561376137626337373863396337396235656333366162396161,0xe58f8be68385e993bee68ea5,'','','0','');");
E_D("replace into `dede_sys_module` values('5',0x6163623862383865623461366434626663333735633138353334663934333965,0xe68a95e7a5a8e6a8a1e59d97,'','','0','');");
E_D("replace into `dede_sys_module` values('6',0x3537323630363630303334356231613462623863383130626261653433346363,0xe68c91e99499e7aea1e79086,'','','0','');");

require("../../inc/footer.php");
?>