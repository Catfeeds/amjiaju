<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_photo`;");
E_C("CREATE TABLE `lvyecms_photo` (
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
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci");
E_D("replace into `lvyecms_photo` values('1','67','0',0xe5ae9ae588b6e6a9b1e69f9c,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133303132626461612e6a7067,'','','','0',0x2f323031372f647a63675f31322f312e7368746d6c,'0','99','1','0',0x61646d696e,'1514382087','1514382087','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('2','67','0',0xe5ae9ae588b6e6a9b1e69f9c,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133313863306530332e6a7067,'','','','0',0x2f323031372f647a63675f31322f322e7368746d6c,'0','99','1','0',0x61646d696e,'1514382106','1514382106','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('3','67','0',0xe5ae9ae588b6e6a9b1e69f9c,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133323536333338302e6a7067,'','','','0',0x2f323031372f647a63675f31322f332e7368746d6c,'0','99','1','0',0x61646d696e,'1514382118','1514382118','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('4','67','0',0xe5ae9ae588b6e6a9b1e69f9c,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133333730393033632e6a7067,'','','','0',0x2f323031372f647a63675f31322f342e7368746d6c,'0','99','1','0',0x61646d696e,'1514382136','1514382136','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('5','68','0',0xe5ae9ae588b6e8a1a3e6a9b1,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133353034326561382e6a7067,'','','','0',0x2f323031372f647a79635f31322f352e7368746d6c,'0','99','1','0',0x61646d696e,'1514382161','1514382161','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('6','68','0',0xe5ae9ae588b6e8a1a3e6a9b1,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133356339343361342e6a7067,'','','','0',0x2f323031372f647a79635f31322f362e7368746d6c,'0','99','1','0',0x61646d696e,'1514382174','1514382174','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('7','68','0',0xe5ae9ae588b6e8a1a3e6a9b1,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336133366262353439322e6a7067,'','','','0',0x2f323031372f647a79635f31322f372e7368746d6c,'0','99','1','0',0x61646d696e,'1514382188','1514382188','1','0','1','1','1','1514531196');");
E_D("replace into `lvyecms_photo` values('8','4','0',0x2036e5b9b3e58ea8e688bfe5ae8ce5b7a5e59bbeefbc8120,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134336135623930613137352e6a7067,'','',0x20e696b0e58ea8e688bfe7bb88e4ba8ee5ae8ce5b7a5e4ba86efbc8ce5889ae5bc80e5a78be8a385e4bfaee697b6e6b2a1e69c89e6809de8b7afefbc8ce58ebbe5ba97e9878ce79c8be4ba86e8aebee8aea1e5b888e7bb99e4ba86e5bbbae8aeaeefbc8ce98089e4ba86e4b880e6acbee6af94e8be83e7ae80e7baa6e4bd86e698afe58f88e4b88de698afe58589e58589e5b9b3e99da2e79a84e997a8e69dbfefbc8ce8aebee8aea1e5b888e6af94e8be83e4b88ae5bf83efbc812e2e2e20,'0','','0','99','1','0',0x61646d696e,'1514382778','1514382778','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('9','77','0',0x31,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346532356135356635612e6a7067,'','','','0',0x2f696e6465782e7068703f613d73686f77732663617469643d37372669643d39,'0','99','1','0',0x61646d696e,'1514463839','1514463839','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('10','77','0',0x32,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346532366461356336662e6a7067,'','','','0',0x2f696e6465782e7068703f613d73686f77732663617469643d37372669643d3130,'0','99','1','0',0x61646d696e,'1514463854','1514463854','0','0','0','0','0','0');");
E_D("replace into `lvyecms_photo` values('11','77','0',0x33,'',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134346532376239663338302e6a7067,'','','','0',0x2f696e6465782e7068703f613d73686f77732663617469643d37372669643d3131,'0','99','1','0',0x61646d696e,'1514463868','1514463868','0','0','0','0','0','0');");

require("../../inc/footer.php");
?>