<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_behavior`;");
E_C("CREATE TABLE `lvyecms_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统行为表'");
E_D("replace into `lvyecms_behavior` values('1',0x6170705f696e6974,0xe5ba94e794a8e5889de5a78be58c96e6a087e7adbee4bd8d,0xe5ba94e794a8e5889de5a78be58c96e6a087e7adbee4bd8d,'1','1','1','','1381021393');");
E_D("replace into `lvyecms_behavior` values('2',0x706174685f696e666f,0x504154485f494e464fe6a380e6b58be6a087e7adbee4bd8d,0x504154485f494e464fe6a380e6b58be6a087e7adbee4bd8d,'1','1','1','','1381021411');");
E_D("replace into `lvyecms_behavior` values('3',0x6170705f626567696e,0xe5ba94e794a8e5bc80e5a78be6a087e7adbee4bd8d,0xe5ba94e794a8e5bc80e5a78be6a087e7adbee4bd8d,'1','1','1','','1381021424');");
E_D("replace into `lvyecms_behavior` values('4',0x616374696f6e5f6e616d65,0xe6938de4bd9ce696b9e6b395e5908de6a087e7adbee4bd8d,0xe6938de4bd9ce696b9e6b395e5908de6a087e7adbee4bd8d,'1','1','1','','1381021437');");
E_D("replace into `lvyecms_behavior` values('5',0x616374696f6e5f626567696e,0xe68ea7e588b6e599a8e5bc80e5a78be6a087e7adbee4bd8d,0xe68ea7e588b6e599a8e5bc80e5a78be6a087e7adbee4bd8d,'1','1','1','','1381021450');");
E_D("replace into `lvyecms_behavior` values('6',0x766965775f626567696e,0xe8a786e59bbee8be93e587bae5bc80e5a78be6a087e7adbee4bd8d,0xe8a786e59bbee8be93e587bae5bc80e5a78be6a087e7adbee4bd8d,'1','1','1','','1381021463');");
E_D("replace into `lvyecms_behavior` values('7',0x766965775f7061727365,0xe8a786e59bbee8a7a3e69e90e6a087e7adbee4bd8d,0xe8a786e59bbee8a7a3e69e90e6a087e7adbee4bd8d,'1','1','1','','1381021476');");
E_D("replace into `lvyecms_behavior` values('8',0x74656d706c6174655f66696c746572,0xe6a8a1e69dbfe58685e5aeb9e8a7a3e69e90e6a087e7adbee4bd8d,0xe6a8a1e69dbfe58685e5aeb9e8a7a3e69e90e6a087e7adbee4bd8d,'1','1','1','','1381021488');");
E_D("replace into `lvyecms_behavior` values('9',0x766965775f66696c746572,0xe8a786e59bbee8be93e587bae8bf87e6bba4e6a087e7adbee4bd8d,0xe8a786e59bbee8be93e587bae8bf87e6bba4e6a087e7adbee4bd8d,'1','1','1','','1381021621');");
E_D("replace into `lvyecms_behavior` values('10',0x766965775f656e64,0xe8a786e59bbee8be93e587bae7bb93e69d9fe6a087e7adbee4bd8d,0xe8a786e59bbee8be93e587bae7bb93e69d9fe6a087e7adbee4bd8d,'1','1','1','','1381021631');");
E_D("replace into `lvyecms_behavior` values('11',0x616374696f6e5f656e64,0xe68ea7e588b6e599a8e7bb93e69d9fe6a087e7adbee4bd8d,0xe68ea7e588b6e599a8e7bb93e69d9fe6a087e7adbee4bd8d,'1','1','1','','1381021642');");
E_D("replace into `lvyecms_behavior` values('12',0x6170705f656e64,0xe5ba94e794a8e7bb93e69d9fe6a087e7adbee4bd8d,0xe5ba94e794a8e7bb93e69d9fe6a087e7adbee4bd8d,'1','1','1','','1381021654');");
E_D("replace into `lvyecms_behavior` values('13',0x6170706672616d655f726261635f696e6974,0xe5908ee58fb0e69d83e99990e68ea7e588b6,0xe5908ee58fb0e69d83e99990e68ea7e588b6,'1','1','1','','1381023560');");
E_D("replace into `lvyecms_behavior` values('14',0x636f6e74656e745f6164645f656e64,0xe58685e5aeb9e6b7bbe58aa0e7bb93e69d9fe8a18ce4b8bae6a087e7adbe,0xe6a8a1e59d97536561726368e4b8ade79a84e8a18ce4b8baefbc81,'1','1','0',0x536561726368,'1514511148');");
E_D("replace into `lvyecms_behavior` values('15',0x636f6e74656e745f656469745f656e64,0xe58685e5aeb9e7bc96e8be91e7bb93e69d9fe8a18ce4b8bae6a087e7adbe,0xe6a8a1e59d97536561726368e4b8ade79a84e8a18ce4b8baefbc81,'1','1','0',0x536561726368,'1514511148');");
E_D("replace into `lvyecms_behavior` values('16',0x636f6e74656e745f636865636b5f656e64,0xe58685e5aeb9e5aea1e6a0b8e7bb93e69d9fe8a18ce4b8bae6a087e7adbe,0xe6a8a1e59d97536561726368e4b8ade79a84e8a18ce4b8baefbc81,'1','1','0',0x536561726368,'1514511148');");
E_D("replace into `lvyecms_behavior` values('17',0x636f6e74656e745f64656c6574655f656e64,0xe58685e5aeb9e588a0e999a4e7bb93e69d9fe8a18ce4b8bae6a087e7adbe,0xe6a8a1e59d97536561726368e4b8ade79a84e8a18ce4b8baefbc81,'1','1','0',0x536561726368,'1514511148');");

require("../../inc/footer.php");
?>