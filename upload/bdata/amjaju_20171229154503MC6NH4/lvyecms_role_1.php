<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_role`;");
E_C("CREATE TABLE `lvyecms_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表'");
E_D("replace into `lvyecms_role` values('1',0xe8b685e7baa7e7aea1e79086e59198,'0','1',0xe68ba5e69c89e7bd91e7ab99e69c80e9ab98e7aea1e79086e59198e69d83e99990efbc81,'1329633709','1329633709','0');");
E_D("replace into `lvyecms_role` values('2',0xe7ab99e782b9e7aea1e79086e59198,'1','1',0xe7ab99e782b9e7aea1e79086e59198,'1329633722','1399780945','0');");
E_D("replace into `lvyecms_role` values('3',0xe58f91e5b883e4babae59198,'2','1',0xe58f91e5b883e4babae59198,'1329633733','1399798954','0');");

require("../../inc/footer.php");
?>