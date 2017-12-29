<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_behavior_rule`;");
E_C("CREATE TABLE `lvyecms_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL DEFAULT '0' COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '规则所属模块',
  `addons` char(20) NOT NULL DEFAULT '' COMMENT '规则所属插件',
  `rule` text COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='行为规则表'");
E_D("replace into `lvyecms_behavior_rule` values('1','1','1','','',0x70687066696c653a4275696c644c6974654265686176696f72,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('2','3','1','','',0x70687066696c653a5265616448746d6c43616368654265686176696f72,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('3','12','1','','',0x70687066696c653a53686f775061676554726163654265686176696f72,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('4','7','1','','',0x70687066696c653a506172736554656d706c6174654265686176696f72,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('5','8','1','','',0x70687066696c653a436f6e74656e745265706c6163654265686176696f72,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('6','9','1','','',0x70687066696c653a577269746548746d6c43616368654265686176696f72,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('7','1','1','','',0x70687066696c653a417070496e69744265686176696f727c6d6f64756c653a436f6d6d6f6e,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('8','3','1','','',0x70687066696c653a417070426567696e4265686176696f727c6d6f64756c653a436f6d6d6f6e,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('9','6','1','','',0x70687066696c653a56696577426567696e4265686176696f727c6d6f64756c653a436f6d6d6f6e,'0','1381021954');");
E_D("replace into `lvyecms_behavior_rule` values('10','14','0',0x536561726368,'',0x70687066696c653a5365617263684170697c6d6f64756c653a536561726368,'0','1514511148');");
E_D("replace into `lvyecms_behavior_rule` values('11','15','0',0x536561726368,'',0x70687066696c653a5365617263684170697c6d6f64756c653a536561726368,'0','1514511148');");
E_D("replace into `lvyecms_behavior_rule` values('12','16','0',0x536561726368,'',0x70687066696c653a5365617263684170697c6d6f64756c653a536561726368,'0','1514511148');");
E_D("replace into `lvyecms_behavior_rule` values('13','17','0',0x536561726368,'',0x70687066696c653a5365617263684170697c6d6f64756c653a536561726368,'0','1514511148');");
E_D("replace into `lvyecms_behavior_rule` values('14','3','0',0x576170,'',0x70687066696c653a5761704265686176696f727c6d6f64756c653a576170,'0','1514511153');");

require("../../inc/footer.php");
?>