<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_message`;");
E_C("CREATE TABLE `lvyecms_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` char(20) NOT NULL COMMENT '姓名',
  `lesson` varchar(50) NOT NULL COMMENT '想学习的课程',
  `job` char(30) NOT NULL COMMENT '目前工作',
  `telephone` char(11) NOT NULL COMMENT '电话',
  `email` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL COMMENT '城市',
  `qq` char(15) NOT NULL COMMENT 'qq',
  `info` text NOT NULL COMMENT '留言',
  `readstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inputtime` int(10) NOT NULL COMMENT '留言时间',
  `ip` varchar(15) NOT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8");
E_D("replace into `lvyecms_message` values('12',0x313233,'','',0x3135303938383030333732,'','','',0x66646166647361666461,'0','1514466611',0x3132372e302e302e31);");
E_D("replace into `lvyecms_message` values('13',0x766664736466,'','',0x3135303938383030333732,'','','',0x64636676736166647361,'0','1514466719',0x3132372e302e302e31);");
E_D("replace into `lvyecms_message` values('14',0x313233,'','',0x3135303938383030333732,0x3136343436363135394071712e636f6d,'','',0x6864666766676473666473,'1','1514466818',0x3132372e302e302e31);");

require("../../inc/footer.php");
?>