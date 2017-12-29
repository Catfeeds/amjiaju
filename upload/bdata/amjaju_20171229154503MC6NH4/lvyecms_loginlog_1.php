<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_loginlog`;");
E_C("CREATE TABLE `lvyecms_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表'");
E_D("replace into `lvyecms_loginlog` values('1',0x61646d696e,'1514360275',0x31302e362e312e313935,'1',0xe5af86e7a081e4bf9de5af86,0xe794a8e688b7e5908de799bbe5bd95);");
E_D("replace into `lvyecms_loginlog` values('2',0x61646d696e,'1514376780',0x3132372e302e302e31,'1',0xe5af86e7a081e4bf9de5af86,0xe794a8e688b7e5908de799bbe5bd95);");
E_D("replace into `lvyecms_loginlog` values('3',0x61646d696e,'1514461074',0x3132372e302e302e31,'1',0xe5af86e7a081e4bf9de5af86,0xe794a8e688b7e5908de799bbe5bd95);");
E_D("replace into `lvyecms_loginlog` values('4',0x61646d696e,'1514511126',0x31302e362e312e313935,'1',0xe5af86e7a081e4bf9de5af86,0xe794a8e688b7e5908de799bbe5bd95);");

require("../../inc/footer.php");
?>