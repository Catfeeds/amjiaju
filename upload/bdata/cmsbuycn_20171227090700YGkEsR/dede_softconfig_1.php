<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

E_D("DROP TABLE IF EXISTS `dede_softconfig`;");
E_C("CREATE TABLE `dede_softconfig` (
  `downtype` smallint(6) NOT NULL DEFAULT '0',
  `ismoresite` smallint(6) NOT NULL DEFAULT '0',
  `gotojump` smallint(6) NOT NULL DEFAULT '0',
  `islocal` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sites` text,
  `downmsg` text,
  `moresitedo` smallint(5) unsigned NOT NULL DEFAULT '1',
  `dfrank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dfywboy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `argrange` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`downtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `dede_softconfig` values('0','1','1','1',0x687474703a2f2f7777772e6161612e636f6d207c20e9959ce5838fe59cb0e59d80e4b880090a687474703a2f2f7777772e6262622e636f6d207c20e9959ce5838fe59cb0e59d80e4ba8c090a687474703a2f2f7777772e6363632e636f6d207c20e9959ce5838fe59cb0e59d80e4b889090a,0x3c703e3fe68ea8e88d90e4bdbfe794a8e7acace4b889e696b9e4b893e4b89ae4b88be8bdbde5b7a5e585b7e4b88be8bdbde69cace7ab99e8bdafe4bbb6efbc8ce4bdbfe794a82057696e5241522076332e313020e4bba5e4b88ae78988e69cace8a7a3e58e8be69cace7ab99e8bdafe4bbb6e380823c6272202f3e090a3fe5a682e69e9ce8bf99e4b8aae8bdafe4bbb6e680bbe698afe4b88de883bde4b88be8bdbde79a84e8afb7e782b9e587bbe68aa5e5918ae99499e8afaf2ce8b0a2e8b0a2e59088e4bd9c21213c6272202f3e090a3fe4b88be8bdbde69cace7ab99e8b584e6ba90efbc8ce5a682e69e9ce69c8de58aa1e599a8e69a82e4b88de883bde4b88be8bdbde8afb7e8bf87e4b880e6aeb5e697b6e997b4e9878de8af95efbc813c6272202f3e090a3fe5a682e69e9ce98187e588b0e4bb80e4b988e997aee9a298efbc8ce8afb7e588b0e69cace7ab99e8aebae59d9be58ebbe592a8e5afbbefbc8ce68891e4bbace5b086e59ca8e982a3e9878ce68f90e4be9be69bb4e5a49a20e38081e69bb4e5a5bde79a84e8b584e6ba90efbc813c6272202f3e090a3fe69cace7ab99e68f90e4be9be79a84e4b880e4ba9be59586e4b89ae8bdafe4bbb6e698afe4be9be5ada6e4b9a0e7a094e7a9b6e4b98be794a8efbc8ce5a682e794a8e4ba8ee59586e4b89ae794a8e98094efbc8ce8afb7e8b4ade4b9b0e6ada3e78988e380823c2f703e,'0','0','0','0');");

require("../../inc/footer.php");
?>