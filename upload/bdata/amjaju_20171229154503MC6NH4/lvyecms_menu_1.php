<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_menu`;");
E_C("CREATE TABLE `lvyecms_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制键',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='后台菜单表'");
E_D("replace into `lvyecms_menu` values('1',0xe7bc93e5ad98e69bb4e696b0,'0',0x41646d696e,0x496e646578,0x6361636865,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('2',0xe68891e79a84e99da2e69dbf,'0',0x41646d696e,0x436f6e666967,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('3',0xe8aebee7bdae,'0',0x41646d696e,0x436f6e666967,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('4',0xe4b8aae4babae4bfa1e681af,'2',0x41646d696e,0x41646d696e6d616e616765,0x6d79696e666f,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('5',0xe4bfaee694b9e4b8aae4babae4bfa1e681af,'4',0x41646d696e,0x41646d696e6d616e616765,0x6d79696e666f,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('6',0xe4bfaee694b9e5af86e7a081,'4',0x41646d696e,0x41646d696e6d616e616765,0x6368616e70617373,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('7',0xe7b3bbe7bb9fe8aebee7bdae,'3',0x41646d696e,0x436f6e666967,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('8',0xe7ab99e782b9e9858de7bdae,'7',0x41646d696e,0x436f6e666967,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('9',0xe982aee7aeb1e9858de7bdae,'8',0x41646d696e,0x436f6e666967,0x6d61696c,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('10',0xe99984e4bbb6e9858de7bdae,'8',0x41646d696e,0x436f6e666967,0x617474616368,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('11',0xe9ab98e7baa7e9858de7bdae,'8',0x41646d696e,0x436f6e666967,0x6164646974696f6e,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('12',0xe689a9e5b195e9858de7bdae,'8',0x41646d696e,0x436f6e666967,0x657874656e64,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('13',0xe8a18ce4b8bae7aea1e79086,'7',0x41646d696e,0x4265686176696f72,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('14',0xe8a18ce4b8bae697a5e5bf97,'13',0x41646d696e,0x4265686176696f72,0x6c6f6773,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('15',0xe7bc96e8be91e8a18ce4b8ba,'13',0x41646d696e,0x4265686176696f72,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('16',0xe588a0e999a4e8a18ce4b8ba,'13',0x41646d696e,0x4265686176696f72,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('17',0xe5908ee58fb0e88f9ce58d95e7aea1e79086,'7',0x41646d696e,0x4d656e75,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('18',0xe6b7bbe58aa0e88f9ce58d95,'17',0x41646d696e,0x4d656e75,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('19',0xe4bfaee694b9,'17',0x41646d696e,0x4d656e75,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('20',0xe588a0e999a4,'17',0x41646d696e,0x4d656e75,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('21',0xe7aea1e79086e59198e8aebee7bdae,'3',0x41646d696e,0x4d616e6167656d656e74,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('22',0xe7aea1e79086e59198e7aea1e79086,'21',0x41646d696e,0x4d616e6167656d656e74,0x6d616e61676572,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('23',0xe6b7bbe58aa0e7aea1e79086e59198,'22',0x41646d696e,0x4d616e6167656d656e74,0x61646d696e616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('24',0xe7bc96e8be91e7aea1e79086e4bfa1e681af,'22',0x41646d696e,0x4d616e6167656d656e74,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('25',0xe588a0e999a4e7aea1e79086e59198,'22',0x41646d696e,0x4d616e6167656d656e74,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('26',0xe8a792e889b2e7aea1e79086,'21',0x41646d696e,0x52626163,0x726f6c656d616e616765,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('27',0xe6b7bbe58aa0e8a792e889b2,'26',0x41646d696e,0x52626163,0x726f6c65616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('28',0xe588a0e999a4e8a792e889b2,'26',0x41646d696e,0x52626163,0x726f6c6564656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('29',0xe8a792e889b2e7bc96e8be91,'26',0x41646d696e,0x52626163,0x726f6c6565646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('30',0xe8a792e889b2e68e88e69d83,'26',0x41646d696e,0x52626163,0x617574686f72697a65,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('31',0xe697a5e5bf97e7aea1e79086,'3',0x41646d696e,0x4c6f6773,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('32',0xe5908ee58fb0e799bbe99986e697a5e5bf97,'31',0x41646d696e,0x4c6f6773,0x6c6f67696e6c6f67,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('33',0xe5908ee58fb0e6938de4bd9ce697a5e5bf97,'31',0x41646d696e,0x4c6f6773,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('34',0xe588a0e999a4e4b880e4b8aae69c88e5898de79a84e799bbe99986e697a5e5bf97,'32',0x41646d696e,0x4c6f6773,0x64656c6574656c6f67696e6c6f67,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('35',0xe588a0e999a4e4b880e4b8aae69c88e5898de79a84e6938de4bd9ce697a5e5bf97,'33',0x41646d696e,0x4c6f6773,0x64656c6574656c6f67,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('36',0xe6b7bbe58aa0e8a18ce4b8ba,'13',0x41646d696e,0x4265686176696f72,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('37',0xe6a8a1e59d97,'0',0x41646d696e,0x4d6f64756c65,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('38',0xe59ca8e7babfe4ba91e5b9b3e58fb0,'37',0x41646d696e,0x436c6f7564,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('39',0xe6a8a1e59d97e59586e5ba97,'38',0x41646d696e,0x4d6f64756c6573686f70,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('40',0xe68f92e4bbb6e59586e5ba97,'38',0x41646d696e,0x4164646f6e73686f70,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('113',0xe6a8a1e69dbfe59586e5ba97,'38',0x41646d696e,0x54656d706c61746573686f70,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('41',0xe59ca8e7babfe58d87e7baa7,'38',0x41646d696e,0x55706772616465,0x696e646578,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('42',0xe69cace59cb0e6a8a1e59d97e7aea1e79086,'37',0x41646d696e,0x4d6f64756c65,0x6c6f63616c,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('43',0xe6a8a1e59d97e7aea1e79086,'42',0x41646d696e,0x4d6f64756c65,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('44',0xe58685e5aeb9,'0',0x436f6e74656e74,0x496e646578,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('45',0xe58685e5aeb9e7aea1e79086,'44',0x436f6e74656e74,0x436f6e74656e74,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('46',0xe58685e5aeb9e79bb8e585b3e8aebee7bdae,'44',0x436f6e74656e74,0x43617465676f7279,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('47',0xe6a08fe79baee58897e8a1a8,'46',0x436f6e74656e74,0x43617465676f7279,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('48',0xe6b7bbe58aa0e6a08fe79bae,'47',0x436f6e74656e74,0x43617465676f7279,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('49',0xe6b7bbe58aa0e58d95e9a1b5,'47',0x436f6e74656e74,0x43617465676f7279,0x73696e676c6570616765,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('50',0xe6b7bbe58aa0e5a496e983a8e993bee68ea5e6a08fe79bae,'47',0x436f6e74656e74,0x43617465676f7279,0x77616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('51',0xe7bc96e8be91e6a08fe79bae,'47',0x436f6e74656e74,0x43617465676f7279,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('52',0xe588a0e999a4e6a08fe79bae,'47',0x436f6e74656e74,0x43617465676f7279,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('53',0xe6a08fe79baee5b19ee680a7e8bdace68da2,'47',0x436f6e74656e74,0x43617465676f7279,0x63617465676f727973687578,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('54',0xe6a8a1e59e8be7aea1e79086,'46',0x436f6e74656e74,0x4d6f64656c73,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('55',0xe5889be5bbbae696b0e6a8a1e59e8b,'54',0x436f6e74656e74,0x4d6f64656c73,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('56',0xe588a0e999a4e6a8a1e59e8b,'54',0x436f6e74656e74,0x4d6f64656c73,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('57',0xe7bc96e8be91e6a8a1e59e8b,'54',0x436f6e74656e74,0x4d6f64656c73,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('58',0xe6a8a1e59e8be7a681e794a8,'54',0x436f6e74656e74,0x4d6f64656c73,0x64697361626c6564,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('59',0xe6a8a1e59e8be5afbce585a5,'54',0x436f6e74656e74,0x4d6f64656c73,0x696d706f7274,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('60',0xe5ad97e6aeb5e7aea1e79086,'54',0x436f6e74656e74,0x4669656c64,0x696e646578,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('61',0xe5ad97e6aeb5e4bfaee694b9,'60',0x436f6e74656e74,0x4669656c64,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('62',0xe5ad97e6aeb5e588a0e999a4,'60',0x436f6e74656e74,0x4669656c64,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('63',0xe5ad97e6aeb5e78ab6e68081,'60',0x436f6e74656e74,0x4669656c64,0x64697361626c6564,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('64',0xe6a8a1e59e8be9a284e8a788,'60',0x436f6e74656e74,0x4669656c64,0x70726976696577,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('65',0xe7aea1e79086e58685e5aeb9,'45',0x436f6e74656e74,0x436f6e74656e74,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('66',0xe99984e4bbb6e7aea1e79086,'45',0x4174746163686d656e74,0x417461646d696e,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('67',0xe588a0e999a4,'66',0x4174746163686d656e74,0x417461646d696e,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('68',0xe58f91e5b883e7aea1e79086,'44',0x436f6e74656e74,0x43726561746568746d6c,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('69',0xe689b9e9878fe69bb4e696b0e6a08fe79baee9a1b5,'68',0x436f6e74656e74,0x43726561746568746d6c,0x63617465676f7279,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('70',0xe7949fe68890e9a696e9a1b5,'68',0x436f6e74656e74,0x43726561746568746d6c,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('71',0xe689b9e9878fe69bb4e696b055524c,'68',0x436f6e74656e74,0x43726561746568746d6c,0x7570646174655f75726c73,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('72',0xe689b9e9878fe69bb4e696b0e58685e5aeb9e9a1b5,'68',0x436f6e74656e74,0x43726561746568746d6c,0x7570646174655f73686f77,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('73',0xe588b7e696b0e887aae5ae9ae4b989e9a1b5e99da2,'68',0x54656d706c617465,0x437573746f6d70616765,0x63726561746568746d6c,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('74',0x55524ce8a784e58899e7aea1e79086,'46',0x436f6e74656e74,0x55726c72756c65,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('75',0xe6b7bbe58aa0e8a784e58899,'74',0x436f6e74656e74,0x55726c72756c65,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('76',0xe7bc96e8be91,'74',0x436f6e74656e74,0x55726c72756c65,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('77',0xe588a0e999a4,'74',0x436f6e74656e74,0x55726c72756c65,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('78',0xe68ea8e88d90e4bd8de7aea1e79086,'46',0x436f6e74656e74,0x506f736974696f6e,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('79',0xe4bfa1e681afe7aea1e79086,'78',0x436f6e74656e74,0x506f736974696f6e,0x6974656d,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('80',0xe6b7bbe58aa0e68ea8e88d90e4bd8d,'78',0x436f6e74656e74,0x506f736974696f6e,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('81',0xe4bfaee694b9e68ea8e88d90e4bd8d,'78',0x436f6e74656e74,0x506f736974696f6e,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('82',0xe588a0e999a4e68ea8e88d90e4bd8d,'78',0x436f6e74656e74,0x506f736974696f6e,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('83',0xe4bfa1e681afe7bc96e8be91,'79',0x436f6e74656e74,0x506f736974696f6e,0x6974656d5f6d616e616765,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('84',0xe4bfa1e681afe68e92e5ba8f,'79',0x436f6e74656e74,0x506f736974696f6e,0x6974656d5f6c6973746f72646572,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('85',0xe695b0e68daee9878de5bbba,'78',0x436f6e74656e74,0x506f736974696f6e,0x72656275696c64696e67,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('86',0x54616773e7aea1e79086,'45',0x436f6e74656e74,0x54616773,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('87',0xe4bfaee694b9,'86',0x436f6e74656e74,0x54616773,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('88',0xe588a0e999a4,'86',0x436f6e74656e74,0x54616773,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('89',0x54616773e695b0e68daee9878de5bbba,'86',0x436f6e74656e74,0x54616773,0x637265617465,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('90',0xe7958ce99da2,'0',0x54656d706c617465,0x5374796c65,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('91',0xe6a8a1e69dbfe7aea1e79086,'90',0x54656d706c617465,0x5374796c65,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('92',0xe6a8a1e69dbfe9a38ee6a0bc,'91',0x54656d706c617465,0x5374796c65,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('93',0xe6b7bbe58aa0e6a8a1e69dbfe9a1b5,'92',0x54656d706c617465,0x5374796c65,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('94',0xe588a0e999a4e6a8a1e69dbf,'92',0x54656d706c617465,0x5374796c65,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('95',0xe4bfaee694b9e6a8a1e69dbf,'92',0x54656d706c617465,0x5374796c65,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('96',0xe4b8bbe9a298e7aea1e79086,'91',0x54656d706c617465,0x5468656d65,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('97',0xe4b8bbe9a298e69bb4e68da2,'96',0x54656d706c617465,0x5468656d65,0x63686f7365,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('98',0xe887aae5ae9ae4b989e9a1b5e99da2,'90',0x54656d706c617465,0x437573746f6d70616765,0x696e646578,'','0','1','','0');");
E_D("replace into `lvyecms_menu` values('99',0xe887aae5ae9ae4b989e9a1b5e99da2,'98',0x54656d706c617465,0x437573746f6d70616765,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('100',0xe6b7bbe58aa0e887aae5ae9ae4b989e9a1b5e99da2,'99',0x54656d706c617465,0x437573746f6d70616765,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('101',0xe588a0e999a4e887aae5ae9ae4b989e9a1b5e99da2,'99',0x54656d706c617465,0x437573746f6d70616765,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('102',0xe7bc96e8be91e887aae5ae9ae4b989e9a1b5e99da2,'99',0x54656d706c617465,0x437573746f6d70616765,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('103',0xe887aae5ae9ae4b989e58897e8a1a8,'98',0x54656d706c617465,0x437573746f6d6c697374,0x696e646578,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('104',0xe6b7bbe58aa0e58897e8a1a8,'103',0x54656d706c617465,0x437573746f6d6c697374,0x616464,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('105',0xe588a0e999a4e58897e8a1a8,'103',0x54656d706c617465,0x437573746f6d6c697374,0x64656c657465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('106',0xe7bc96e8be91e58897e8a1a8,'103',0x54656d706c617465,0x437573746f6d6c697374,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('107',0xe7949fe68890e58897e8a1a8,'103',0x54656d706c617465,0x437573746f6d6c697374,0x67656e6572617465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('108',0xe5ae89e8a385e6a8a1e59d97,'39',0x41646d696e,0x4d6f64756c6573686f70,0x696e7374616c6c,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('109',0xe58d87e7baa7e6a8a1e59d97,'39',0x41646d696e,0x4d6f64756c6573686f70,0x75706772616465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('110',0xe5ae89e8a385e68f92e4bbb6,'40',0x41646d696e,0x4164646f6e73686f70,0x696e7374616c6c,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('111',0xe58d87e7baa7e68f92e4bbb6,'40',0x41646d696e,0x4164646f6e73686f70,0x75706772616465,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('112',0xe6a08fe79baee68e88e69d83,'26',0x41646d696e,0x52626163,0x73657474696e675f6361745f70726976,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('114',0xe79599e8a880e78988,'0',0x436f6e74656e74,0x4d657373616765,0x6c69737473,'','1','1','0','0');");
E_D("replace into `lvyecms_menu` values('115',0xe79599e8a880e58685e5aeb9,'114',0x436f6e74656e74,0x4d657373616765,0x6c69737473,'','1','1','0','0');");
E_D("replace into `lvyecms_menu` values('116',0xe5afbce587bae8a1a8e6a0bc,'114',0x436f6e74656e74,0x4d657373616765,0x746f457863656c,'','1','1','0','0');");
E_D("replace into `lvyecms_menu` values('117',0xe6898be69cbae78988e7aea1e79086,'42',0x576170,0x576170,0x696e646578,'','1','1',0xe6898be69cbae6a8a1e59d97e7aea1e79086,'0');");
E_D("replace into `lvyecms_menu` values('118',0xe4bfaee694b9,'117',0x576170,0x576170,0x65646974,'','1','0','','0');");
E_D("replace into `lvyecms_menu` values('119',0xe6909ce7b4a2e9858de7bdae,'42',0x536561726368,0x536561726368,0x696e646578,'','0','1',0xe6909ce7b4a2e9858de7bdae,'0');");
E_D("replace into `lvyecms_menu` values('120',0xe9878de5bbbae7b4a2e5bc95,'119',0x536561726368,0x536561726368,0x637265617465,'','1','1','','0');");
E_D("replace into `lvyecms_menu` values('121',0xe783ade997a8e6909ce7b4a2,'119',0x536561726368,0x536561726368,0x7365617263686f74,'','1','1','','0');");

require("../../inc/footer.php");
?>