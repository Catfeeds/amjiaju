<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_search_keyword`;");
E_C("CREATE TABLE `lvyecms_search_keyword` (
  `keyword` char(20) NOT NULL COMMENT '关键字',
  `pinyin` char(20) NOT NULL COMMENT '关键字拼音',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `data` char(20) DEFAULT '0',
  UNIQUE KEY `keyword` (`keyword`),
  UNIQUE KEY `pinyin` (`pinyin`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索关键字表'");
E_D("replace into `lvyecms_search_keyword` values(0xe6a9b1e69f9c,0x636875677569,'33','0');");
E_D("replace into `lvyecms_search_keyword` values(0xe8a1a3e6a9b1,0x7969636875,'1','');");

require("../../inc/footer.php");
?>