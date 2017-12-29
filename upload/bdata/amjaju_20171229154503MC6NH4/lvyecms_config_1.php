<?php
define('InEmpireBakData',TRUE);
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 5.1
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `lvyecms_config`;");
E_C("CREATE TABLE `lvyecms_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='网站配置表'");
E_D("replace into `lvyecms_config` values('1',0x736974656e616d65,0xe7bd91e7ab99e5908de7a7b0,'1',0xe5b9bfe4b89ce699bae883bde5aeb6e5b185e69c89e99990e585ace58fb8e5ae98e696b9e7bd91e7ab99);");
E_D("replace into `lvyecms_config` values('2',0x7369746575726c,0xe7bd91e7ab99e7bd91e59d80,'1',0x2f);");
E_D("replace into `lvyecms_config` values('3',0x7369746566696c6575726c,0xe99984e4bbb6e59cb0e59d80,'1',0x2f642f66696c652f);");
E_D("replace into `lvyecms_config` values('4',0x73697465656d61696c,0xe7ab99e782b9e982aee7aeb1,'1',0x3136343436363135394071712e636f6d);");
E_D("replace into `lvyecms_config` values('6',0x73697465696e666f,0xe7bd91e7ab99e4bb8be7bb8d,'1',0xe5aeb6e585b7);");
E_D("replace into `lvyecms_config` values('7',0x736974656b6579776f726473,0xe7bd91e7ab99e585b3e994aee5ad97,'1',0xe5aeb6e585b7);");
E_D("replace into `lvyecms_config` values('8',0x75706c6f61646d617873697a65,0xe58581e8aeb8e4b88ae4bca0e99984e4bbb6e5a4a7e5b08f,'1',0x3230323430);");
E_D("replace into `lvyecms_config` values('9',0x75706c6f6164616c6c6f77657874,0xe58581e8aeb8e4b88ae4bca0e99984e4bbb6e7b1bbe59e8b,'1',0x6a70677c6a7065677c6769667c626d707c706e677c646f637c646f63787c786c737c786c73787c7070747c707074787c7064667c7478747c7261727c7a69707c737766);");
E_D("replace into `lvyecms_config` values('10',0x717475706c6f61646d617873697a65,0xe5898de58fb0e58581e8aeb8e4b88ae4bca0e99984e4bbb6e5a4a7e5b08f,'1',0x323030);");
E_D("replace into `lvyecms_config` values('11',0x717475706c6f6164616c6c6f77657874,0xe5898de58fb0e58581e8aeb8e4b88ae4bca0e99984e4bbb6e7b1bbe59e8b,'1',0x6a70677c6a7065677c676966);");
E_D("replace into `lvyecms_config` values('12',0x77617465726d61726b656e61626c65,0xe698afe590a6e5bc80e590afe59bbee78987e6b0b4e58db0,'1','0');");
E_D("replace into `lvyecms_config` values('13',0x77617465726d61726b6d696e7769647468,0xe6b0b4e58db02de5aebd,'1',0x333030);");
E_D("replace into `lvyecms_config` values('14',0x77617465726d61726b6d696e686569676874,0xe6b0b4e58db02de9ab98,'1',0x313030);");
E_D("replace into `lvyecms_config` values('15',0x77617465726d61726b696d67,0xe6b0b4e58db0e59bbee78987,'1',0x2f737461746963732f696d616765732f6d61726b5f6261692e706e67);");
E_D("replace into `lvyecms_config` values('16',0x77617465726d61726b706374,0xe6b0b4e58db0e9808fe6988ee5baa6,'1',0x3830);");
E_D("replace into `lvyecms_config` values('17',0x77617465726d61726b7175616c697479,0x4a50454720e6b0b4e58db0e8b4a8e9878f,'1',0x3835);");
E_D("replace into `lvyecms_config` values('18',0x77617465726d61726b706f73,0xe6b0b4e58db0e4bd8de7bdae,'1',0x37);");
E_D("replace into `lvyecms_config` values('19',0x7468656d65,0xe4b8bbe9a298e9a38ee6a0bc,'1',0x6a69616a75);");
E_D("replace into `lvyecms_config` values('20',0x667470737461747573,0x465450e4b88ae4bca0,'1','0');");
E_D("replace into `lvyecms_config` values('21',0x66747075736572,0x465450e794a8e688b7e5908d,'1','');");
E_D("replace into `lvyecms_config` values('22',0x66747070617373776f7264,0x465450e5af86e7a081,'1','');");
E_D("replace into `lvyecms_config` values('23',0x667470686f7374,0x465450e69c8de58aa1e599a8e59cb0e59d80,'1','');");
E_D("replace into `lvyecms_config` values('24',0x667470706f7274,0x465450e69c8de58aa1e599a8e7abafe58fa3,'1',0x3231);");
E_D("replace into `lvyecms_config` values('25',0x66747070617376,0x465450e698afe590a6e5bc80e590afe8a2abe58aa8e6a8a1e5bc8f,'1',0x31);");
E_D("replace into `lvyecms_config` values('26',0x66747073736c,0x465450e698afe590a6e4bdbfe794a853534ce8bf9ee68ea5,'1','0');");
E_D("replace into `lvyecms_config` values('27',0x66747074696d656f7574,0x465450e8b685e697b6e697b6e997b4,'1',0x3130);");
E_D("replace into `lvyecms_config` values('28',0x6674707570706174,0x465450e4b88ae4bca0e79baee5bd95,'1',0x2f);");
E_D("replace into `lvyecms_config` values('29',0x6d61696c5f74797065,0xe982aee4bbb6e58f91e98081e6a8a1e5bc8f,'1',0x31);");
E_D("replace into `lvyecms_config` values('30',0x6d61696c5f736572766572,0xe982aee4bbb6e69c8de58aa1e599a8,'1',0x736d74702e71712e636f6d);");
E_D("replace into `lvyecms_config` values('31',0x6d61696c5f706f7274,0xe982aee4bbb6e58f91e98081e7abafe58fa3,'1',0x3235);");
E_D("replace into `lvyecms_config` values('32',0x6d61696c5f66726f6d,0xe58f91e4bbb6e4babae59cb0e59d80,'1',0x61646d696e40616263333231302e636f6d);");
E_D("replace into `lvyecms_config` values('33',0x6d61696c5f61757468,0xe5af86e7a081e9aa8ce8af81,'1',0x31);");
E_D("replace into `lvyecms_config` values('34',0x6d61696c5f75736572,0xe982aee7aeb1e794a8e688b7e5908d,'1','');");
E_D("replace into `lvyecms_config` values('35',0x6d61696c5f70617373776f7264,0xe982aee7aeb1e5af86e7a081,'1','');");
E_D("replace into `lvyecms_config` values('36',0x6d61696c5f666e616d65,0xe58f91e4bbb6e4babae5908de7a7b0,'1',0x4c767965434d53e7aea1e79086e59198);");
E_D("replace into `lvyecms_config` values('37',0x646f6d61696e616363657373,0xe68c87e5ae9ae59f9fe5908de8aebfe997ae,'1','0');");
E_D("replace into `lvyecms_config` values('38',0x67656e6572617465,0xe698afe590a6e7949fe68890e9a696e9a1b5,'1',0x31);");
E_D("replace into `lvyecms_config` values('39',0x696e6465785f75726c72756c656964,0xe9a696e9a1b555524ce8a784e58899,'1',0x3131);");
E_D("replace into `lvyecms_config` values('40',0x696e6465787470,0xe9a696e9a1b5e6a8a1e69dbf,'1',0x696e6465782e706870);");
E_D("replace into `lvyecms_config` values('41',0x74616775726c,0x54616755524ce8a784e58899,'1',0x38);");
E_D("replace into `lvyecms_config` values('42',0x636865636b636f64655f74797065,0xe9aa8ce8af81e7a081e7b1bbe59e8b,'1','0');");
E_D("replace into `lvyecms_config` values('43',0x6174746163686d656e745f647269766572,0xe99984e4bbb6e9a9b1e58aa8,'1',0x4c6f63616c);");
E_D("replace into `lvyecms_config` values('44',0x6164646f6e73697465,0xe5bc80e694bee5b9b3e58fb0,'1',0x687474703a2f2f6164646f6e2e6c767965636d732e636f6d2f);");
E_D("replace into `lvyecms_config` values('45',0x64747a62,0xe59cb0e59bbee59d90e6a087,'2',0x3132302e3530393233352c33372e363430323034);");
E_D("replace into `lvyecms_config` values('46',0x7a627469746c65,0xe59d90e6a087e6a087e9a298,'2',0xe5b9bfe4b89ce699bae883bde5aeb6e5b185e69c89e99990e585ace58fb8);");
E_D("replace into `lvyecms_config` values('47',0x7a62646a,0xe59d90e6a087e782b9e587bbe4b98be5908ee79a84e58685e5aeb9,'2',0xe4b998e8bda6e8b7afe7babfefbc9ae4b998e59d9031e8b7afe585ace4baa4e8bda6efbc8ce4b8ade69d91e7ab99e782b9e4b88be8bda6efbc8ce5be80e8a5bf353030e7b1b3efbc8ce588b0e8bebee59bbde8b4b8e78e89e6b299e5a4a7e8a197e5b9bfe4b89ce699bae883bde5aeb6e5b185e69c89e9999031e585ace58fb8);");
E_D("replace into `lvyecms_config` values('48',0x70686f6e65,0xe7bd91e7ab99e794b5e8af9d,'2',0x303735352d3838383838383838);");
E_D("replace into `lvyecms_config` values('49',0x717164697a6869,0x5151e993bee68ea5e59cb0e59d80,'2',0x74656e63656e743a2f2f6d6573736167652f3f75696e3d33393630363039363026536974653d7777772e36386265652e636f6d264d656e753d796573);");
E_D("replace into `lvyecms_config` values('50',0x62717379,0xe78988e69d83e68980e69c89,'2',0x436f7079726967687420c2a920323030322d3230313120434d53425559434e20e5b09ae4ba91e6a8a1e69dbfe7bd9120e78988e69d83e68980e69c89);");
E_D("replace into `lvyecms_config` values('51',0x626168,0xe5a487e6a188e58fb7,'2',0xe7b2a4494350e5a4873838383838383838);");
E_D("replace into `lvyecms_config` values('52',0x6773647a,0xe585ace58fb8e59cb0e59d80,'2',0xe5b9bfe4b89ce79c81e5b9bfe5b79ee5b882e795aae7a6bae7bb8fe6b58ee5bc80e58f91e58cbae28082);");
E_D("replace into `lvyecms_config` values('53',0x7369746570636c6f676f,'','1',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134356533343234353139652e6a7067);");
E_D("replace into `lvyecms_config` values('54',0x736974657761706c6f676f,'','1',0x2f642f66696c652f636f6e74656e742f323031372f31322f356134356533613534396236662e706e67);");

require("../../inc/footer.php");
?>