<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_moneycard_type`;");
E_C("CREATE TABLE `dede_moneycard_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL DEFAULT '50',
  `pname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8");
E_D("replace into `dede_moneycard_type` values('1','100','30',0x313030e782b9e58da1);");
E_D("replace into `dede_moneycard_type` values('2','200','55',0x323030e782b9e58da1);");
E_D("replace into `dede_moneycard_type` values('3','300','75',0x333030e782b9e58da1);");

require("../../inc/footer.php");
?>