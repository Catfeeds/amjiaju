<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_cache`;");
E_C("CREATE TABLE `lvyecms_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存key值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `param` char(255) NOT NULL DEFAULT '' COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队'");
E_D("replace into `lvyecms_cache` values('1',0x436f6e666967,0xe7bd91e7ab99e9858de7bdae,'',0x436f6e666967,0x636f6e6669675f6361636865,'','1');");
E_D("replace into `lvyecms_cache` values('2',0x4d6f64756c65,0xe58fafe794a8e6a8a1e59d97e58897e8a1a8,'',0x4d6f64756c65,0x6d6f64756c655f6361636865,'','1');");
E_D("replace into `lvyecms_cache` values('3',0x4265686176696f72,0xe8a18ce4b8bae58897e8a1a8,'',0x4265686176696f72,0x6265686176696f725f6361636865,'','1');");
E_D("replace into `lvyecms_cache` values('4',0x4d656e75,0xe5908ee58fb0e88f9ce58d95,0x41646d696e,0x4d656e75,0x6d656e755f6361636865,'','0');");
E_D("replace into `lvyecms_cache` values('5',0x43617465676f7279,0xe6a08fe79baee7b4a2e5bc95,0x436f6e74656e74,0x43617465676f7279,0x63617465676f72795f6361636865,'','0');");
E_D("replace into `lvyecms_cache` values('6',0x4d6f64656c,0xe6a8a1e59e8be58897e8a1a8,0x436f6e74656e74,0x4d6f64656c,0x6d6f64656c5f6361636865,'','0');");
E_D("replace into `lvyecms_cache` values('7',0x55726c72756c6573,0x55524ce8a784e58899,0x436f6e74656e74,0x55726c72756c65,0x75726c72756c655f6361636865,'','0');");
E_D("replace into `lvyecms_cache` values('8',0x4d6f64656c4669656c64,0xe6a8a1e59e8be5ad97e6aeb5,0x436f6e74656e74,0x4d6f64656c4669656c64,0x6d6f64656c5f6669656c645f6361636865,'','0');");
E_D("replace into `lvyecms_cache` values('9',0x506f736974696f6e,0xe68ea8e88d90e4bd8d,0x436f6e74656e74,0x506f736974696f6e,0x706f736974696f6e5f6361636865,'','0');");
E_D("replace into `lvyecms_cache` values('10',0x5365617263685f636f6e666967,0xe585a8e7ab99e6909ce7b4a2e9858de7bdae,0x536561726368,0x536561726368,0x7365617263685f6361636865,'','0');");

require("../../inc/footer.php");
?>