<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_attachment_index`;");
E_C("CREATE TABLE `lvyecms_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表'");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3633,0x31);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3633,0x32);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36372d31,0x33);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36372d32,0x34);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36372d33,0x35);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36372d34,0x36);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36382d35,0x37);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36382d36,0x38);");
E_D("replace into `lvyecms_attachment_index` values(0x632d36382d37,0x39);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d38,0x3130);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d31,0x3131);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d31,0x3132);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d31,0x3133);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d32,0x3134);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d32,0x3135);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d33,0x3136);");
E_D("replace into `lvyecms_attachment_index` values(0x632d342d33,0x3137);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d35,0x3138);");
E_D("replace into `lvyecms_attachment_index` values(0x632d37372d39,0x3139);");
E_D("replace into `lvyecms_attachment_index` values(0x632d37372d3130,0x3230);");
E_D("replace into `lvyecms_attachment_index` values(0x632d37372d3131,0x3231);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d31,0x3232);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3632,0x3233);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3633,0x3234);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3634,0x3235);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d32,0x3236);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3635,0x3237);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3636,0x3238);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d33,0x3239);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3637,0x3330);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3638,0x3331);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3639,0x3332);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3730,0x3333);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3731,0x3334);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3732,0x3335);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3733,0x3336);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3734,0x3337);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d35,0x3338);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d34,0x3339);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d34,0x3430);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d36,0x3431);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3735,0x3432);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d3736,0x3433);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d37,0x3434);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d37,0x3435);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d37,0x3436);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d37,0x3437);");
E_D("replace into `lvyecms_attachment_index` values(0x63617469642d37,0x3438);");

require("../../inc/footer.php");
?>