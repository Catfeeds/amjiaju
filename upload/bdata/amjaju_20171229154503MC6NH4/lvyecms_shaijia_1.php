<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_shaijia`;");
E_C("CREATE TABLE `lvyecms_shaijia` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `yhtouxiang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `yhnicheng` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci");
E_D("replace into `lvyecms_shaijia` values('1','4','0',0x20e696b0e688bfe58ea8e688bfefbc8ce5aab3e5a687e5be88e5969ce6aca2efbc8ce782abe88080e4b880e4b88b7e7e20,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346439336538343733332e6a7067,'','',0x20e5889ae7bb93e5a99aefbc8ce688bfe5ad90e4b88de698afe5be88e5a4a7efbc8ce4b88de8bf87e5aab3e5a687e584bfe6af94e8be83e5969ce6aca2e5819ae9a5adefbc8ce68980e4bba5e5be88e8aea4e79c9fe79a84e8a385e4bfaee4ba86e58ea8e688bfe38082e98089e4ba86e78eb0e4bba3e7ae80e7baa6e9a38ee6a0bcefbc812e2e2e20,'0',0x2f323031372f736a66785f31322f312e7368746d6c,'0','99','1','0',0x61646d696e,'1514461519','1514461519','0','0','0','0','0','0',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346439313862373531342e6a7067,0x4d722ee9ad8f);");
E_D("replace into `lvyecms_shaijia` values('2','4','0',0xe696b0e688bfefbc81efbc81efbc81efbc81,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346439373237353164352e6a7067,'','',0x20e5889ae7bb93e5a99aefbc8ce688bfe5ad90e4b88de698afe5be88e5a4a7efbc8ce4b88de8bf87e5aab3e5a687e584bfe6af94e8be83e5969ce6aca2e5819ae9a5adefbc8ce68980e4bba5e5be88e8aea4e79c9fe79a84e8a385e4bfaee4ba86e58ea8e688bfe38082e98089e4ba86e78eb0e4bba3e7ae80e7baa6e9a38ee6a0bcefbc812e2e2e20,'0',0x2f323031372f736a66785f31322f322e7368746d6c,'0','99','1','0',0x61646d696e,'1514461557','1514461557','0','0','0','0','0','0',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346439363765343039392e706e67,'');");
E_D("replace into `lvyecms_shaijia` values('3','4','0',0xe6b395e59bbde5a4a7e4bdbfe9a686e58f91e58aa8e4b88ae694bb,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346439383564343834302e6a7067,'','',0x20e5889ae7bb93e5a99aefbc8ce688bfe5ad90e4b88de698afe5be88e5a4a7efbc8ce4b88de8bf87e5aab3e5a687e584bfe6af94e8be83e5969ce6aca2e5819ae9a5adefbc8ce68980e4bba5e5be88e8aea4e79c9fe79a84e8a385e4bfaee4ba86e58ea8e688bfe38082e98089e4ba86e78eb0e4bba3e7ae80e7baa6e9a38ee6a0bcefbc812e2e2e2020e5889ae7bb93e5a99aefbc8ce688bfe5ad90e4b88de698afe5be88e5a4a7efbc8ce4b88de8bf87e5aab3e5a687e584bfe6af94e8be83e5969ce6aca2e5819ae9a5adefbc8ce68980e4bba5e5be88e8aea4e79c9fe79a84e8a385e4bfaee4ba86e58ea8e688bfe38082e98089e4ba86e78eb0e4bba3e7ae80e7baa6e9a38ee6a0bcefbc812e2e2e2020e5889ae7bb93e5a99aefbc8ce688bfe5ad90e4b88de698afe5be88e5a4a7efbc8ce4b88de8bf87e5aab3e5a687e584bfe6af94e8be83e5969ce6aca2e5819ae9a5adefbc8ce68980e4bba5e5be88e8aea4e79c9fe79a84e8a385e4bfaee4ba86e58ea8e688bfe38082e98089e4ba86e78eb0e4bba3e7ae80e7baa6e9a38ee6a0bcefbc812e2e2e20,'0',0x2f323031372f736a66785f31322f332e7368746d6c,'0','99','1','0',0x61646d696e,'1514461576','1514461576','0','0','0','0','0','0',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346439383131393031342e6a7067,'');");

require("../../inc/footer.php");
?>