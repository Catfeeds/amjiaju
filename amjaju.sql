-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-12-29 16:25:44
-- 服务器版本： 5.6.38-log
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amjaju`
--

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_access`
--

CREATE TABLE IF NOT EXISTS `lvyecms_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_admin_panel`
--

CREATE TABLE IF NOT EXISTS `lvyecms_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '菜单地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_attachment`
--

CREATE TABLE IF NOT EXISTS `lvyecms_attachment` (
  `aid` int(10) unsigned NOT NULL COMMENT '附件ID',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名称',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `filename` char(50) NOT NULL DEFAULT '' COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL DEFAULT '' COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL DEFAULT '' COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL DEFAULT '' COMMENT '附件路径MD5值'
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='附件表';

--
-- 转存表中的数据 `lvyecms_attachment`
--

INSERT INTO `lvyecms_attachment` (`aid`, `module`, `catid`, `filename`, `filepath`, `filesize`, `fileext`, `isimage`, `isthumb`, `userid`, `isadmin`, `uploadtime`, `uploadip`, `status`, `authcode`) VALUES
(1, 'contents', 63, '1-16052012064M00.jpg', 'contents/2017/12/5a4395dc969eb.jpg', 306889, 'jpg', 1, 0, 1, 1, 1514378716, '127.0.0.1', 1, 'a0dd679185d068d433bd8c464bc6092a'),
(2, 'contents', 63, '1-16052012064M00.jpg', 'contents/2017/12/5a4396141c693.jpg', 306889, 'jpg', 1, 0, 1, 1, 1514378772, '127.0.0.1', 1, '23f7efa4c250c7c501ac27043874ee09'),
(3, 'content', 67, '1-1605121444020-L.jpg', 'content/2017/12/5a43a3012bdaa.jpg', 330650, 'jpg', 1, 0, 1, 1, 1514382081, '127.0.0.1', 1, '09dfba3e62298cab39a729d1febeaff3'),
(4, 'content', 67, '1-1605121453470-L.jpg', 'content/2017/12/5a43a318c0e03.jpg', 123167, 'jpg', 1, 0, 1, 1, 1514382104, '127.0.0.1', 1, '1328851d5808fd53a6b43da07823dd9b'),
(5, 'content', 67, '1-1605121625300-L.jpg', 'content/2017/12/5a43a32563380.jpg', 333753, 'jpg', 1, 0, 1, 1, 1514382117, '127.0.0.1', 1, '93cce03cc6d6fa6292659dc765231e96'),
(6, 'content', 67, '1-1605121444250-L.jpg', 'content/2017/12/5a43a3370903c.jpg', 275814, 'jpg', 1, 0, 1, 1, 1514382135, '127.0.0.1', 1, 'd52018693b0a12e995c4be4e7eec0890'),
(7, 'content', 68, '1-1605121454040-L.jpg', 'content/2017/12/5a43a35042ea8.jpg', 94254, 'jpg', 1, 0, 1, 1, 1514382160, '127.0.0.1', 1, '8ffc223f48ffde9ff8f8191698d43a30'),
(8, 'content', 68, '1-160512151T70-L.jpg', 'content/2017/12/5a43a35c943a4.jpg', 411099, 'jpg', 1, 0, 1, 1, 1514382172, '127.0.0.1', 1, '3ceed04504d1a85b15f9c97c28e3110f'),
(9, 'content', 68, '1-1605121453470-L.jpg', 'content/2017/12/5a43a36bb5492.jpg', 123167, 'jpg', 1, 0, 1, 1, 1514382187, '127.0.0.1', 1, '4dc0e9151b2b7280c7d9613e90bb5687'),
(10, 'content', 4, '1-160520122A30-L.jpg', 'content/2017/12/5a43a5b90a175.jpg', 203931, 'jpg', 1, 0, 1, 1, 1514382777, '127.0.0.1', 1, '9f02d58e3205d70be507d93fbb0c4461'),
(11, 'content', 4, 'liuyantx.jpg', 'content/2017/12/5a44d918b7514.jpg', 13286, 'jpg', 1, 0, 1, 1, 1514461464, '127.0.0.1', 1, '1741fa65a67736cc750d70015cdba99d'),
(12, 'content', 4, '1-160520122Q40-L.jpg', 'content/2017/12/5a44d93e84733.jpg', 34832, 'jpg', 1, 0, 1, 1, 1514461502, '127.0.0.1', 1, '542e247c6b53c3410831ea70a9b844a0'),
(13, 'content', 4, '1-160520122Q40-L.jpg', 'content/2017/12/5a44d94ecc28f.jpg', 34832, 'jpg', 1, 0, 1, 1, 1514461518, '127.0.0.1', 1, '1d8899870f6e657e55fe5c6c1c58179a'),
(14, 'content', 4, '12142LZ5-4.png', 'content/2017/12/5a44d967e4099.png', 278540, 'png', 1, 0, 1, 1, 1514461543, '127.0.0.1', 1, 'd2d4b8978a958e04242130d04a4acfc1'),
(15, 'content', 4, '1-160520122A30-L.jpg', 'content/2017/12/5a44d972751d5.jpg', 203931, 'jpg', 1, 0, 1, 1, 1514461554, '127.0.0.1', 1, '107dda485a2a8a5b85473974624a303f'),
(16, 'content', 4, '1-1605201222430-L.jpg', 'content/2017/12/5a44d98119014.jpg', 105413, 'jpg', 1, 0, 1, 1, 1514461569, '127.0.0.1', 1, '4e36bc231f88eb2bde710a64b3411f8c'),
(17, 'content', 4, '1-1605201222530-L.jpg', 'content/2017/12/5a44d985d4840.jpg', 143943, 'jpg', 1, 0, 1, 1, 1514461573, '127.0.0.1', 1, 'e74f510cfdc2c57b01f30a30c0fde625'),
(18, 'contents', 5, '1-16051215561GH.jpg', 'contents/2017/12/5a44dc0642a6f.jpg', 350072, 'jpg', 1, 0, 1, 1, 1514462214, '127.0.0.1', 1, '820e353fe58d5ab2a78cb36e1c646005'),
(19, 'content', 77, 'banner1.jpg', 'content/2017/12/5a44e25a55f5a.jpg', 1010162, 'jpg', 1, 0, 1, 1, 1514463834, '127.0.0.1', 1, 'a376c3edfa28620028e0630ef4159bd1'),
(20, 'content', 77, 'banner2.jpg', 'content/2017/12/5a44e26da5c6f.jpg', 725447, 'jpg', 1, 0, 1, 1, 1514463853, '127.0.0.1', 1, '759e5e4e8c224465b3bd1c0289e41f67'),
(21, 'content', 77, 'banner3.jpg', 'content/2017/12/5a44e27b9f380.jpg', 453168, 'jpg', 1, 0, 1, 1, 1514463867, '127.0.0.1', 1, 'e8e7ac404493a967e3ea833646c5d6a9'),
(22, 'content', 0, '20150907052630307.jpg', 'content/2017/12/5a45da9662f96.jpg', 81814, 'jpg', 1, 0, 1, 1, 1514527382, '10.6.1.195', 1, '9ef06666036c0e7ea16a5e9fe0353e78'),
(23, 'content', 0, '20150907052630307.jpg', 'content/2017/12/5a45daa30551d.jpg', 81814, 'jpg', 1, 0, 1, 1, 1514527395, '10.6.1.195', 1, 'a41f38f21a5280b8b8724dfdd4db23e8'),
(24, 'content', 0, '20150907052630307.jpg', 'content/2017/12/5a45dab1dd207.jpg', 81814, 'jpg', 1, 0, 1, 1, 1514527409, '10.6.1.195', 1, 'f2ffc0b2539beef4e103a40879f6a3e2'),
(25, 'content', 0, '20150907052630307.jpg', 'content/2017/12/5a45dabed3f88.jpg', 81814, 'jpg', 1, 0, 1, 1, 1514527422, '10.6.1.195', 1, 'c1b257a167ff51bdbf84609d784a4127'),
(26, 'content', 0, '20150907052654896.jpg', 'content/2017/12/5a45dad35b0cf.jpg', 82908, 'jpg', 1, 0, 1, 1, 1514527443, '10.6.1.195', 1, '0c2a2aee82d62101ae7b82114310577a'),
(27, 'content', 0, '20150907052654896.jpg', 'content/2017/12/5a45dae29e78b.jpg', 82908, 'jpg', 1, 0, 1, 1, 1514527458, '10.6.1.195', 1, '51c72537f30c620edc51cc0973b338a9'),
(28, 'content', 0, '20150907052654896.jpg', 'content/2017/12/5a45daeb7a6de.jpg', 82908, 'jpg', 1, 0, 1, 1, 1514527467, '10.6.1.195', 1, '58c0f31924d439d3229a6e3abbe38873'),
(29, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45dafb31669.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527483, '10.6.1.195', 1, '59c04ce657a4280d7a9715e0c694cab1'),
(30, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db06325af.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527494, '10.6.1.195', 1, '872fe140e57b50d569a0825d7c8a1d33'),
(31, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db126dfc2.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527506, '10.6.1.195', 1, 'a4df48d7f45499e63cf2d6a1ec3232b3'),
(32, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db246171e.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527524, '10.6.1.195', 1, 'eedb3ae5957339c6128ba7574373308c'),
(33, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db30eb85a.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527536, '10.6.1.195', 1, 'cfb86b6b8af9e52f060ac55861314deb'),
(34, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db3cbb35a.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527548, '10.6.1.195', 1, 'd4f29199c9ba9408b3f254e53fe795ec'),
(35, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db48963ef.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527560, '10.6.1.195', 1, '1203ef5519df77bae488e9ceb1369341'),
(36, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db52b6f21.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527570, '10.6.1.195', 1, '33ae5f007e889b063284179ecc0d855f'),
(37, 'content', 0, '20150907052735251.jpg', 'content/2017/12/5a45db5ed936f.jpg', 81254, 'jpg', 1, 0, 1, 1, 1514527582, '10.6.1.195', 1, '93dce45d25a0b8e0f06b77da5552d14f'),
(38, 'content', 0, '20150911021338878.jpg', 'content/2017/12/5a45db86486a4.jpg', 264116, 'jpg', 1, 0, 1, 1, 1514527622, '10.6.1.195', 1, '411d433addf17b6d96b2f479a4959206'),
(39, 'content', 0, '20150911021338878.jpg', 'content/2017/12/5a45db94cb838.jpg', 264116, 'jpg', 1, 0, 1, 1, 1514527636, '10.6.1.195', 1, '17cd7f6170a4da6248d94558ef2d3faf'),
(40, 'content', 0, '20150921041625317.jpg', 'content/2017/12/5a45db9abf040.jpg', 270553, 'jpg', 1, 0, 1, 1, 1514527642, '10.6.1.195', 1, 'fa88c6a2b00a4db0f16fcb4a1c3133b4'),
(41, 'content', 0, '20150907052848370.jpg', 'content/2017/12/5a45dbb14c845.jpg', 81654, 'jpg', 1, 0, 1, 1, 1514527665, '10.6.1.195', 1, '3ed05e01f855e2a47c681fe762494501'),
(42, 'content', 0, '20150907052848370.jpg', 'content/2017/12/5a45dbbc68b14.jpg', 81654, 'jpg', 1, 0, 1, 1, 1514527676, '10.6.1.195', 1, 'dc0bc544ec8365a36b9c8303dafc6760'),
(43, 'content', 0, '20150907052848370.jpg', 'content/2017/12/5a45dbc8ded59.jpg', 81654, 'jpg', 1, 0, 1, 1, 1514527688, '10.6.1.195', 1, 'c9b73afd3849464eaf10cdff1afb1900'),
(44, 'content', 0, '20150907045717425.jpg', 'content/2017/12/5a45dbd3d2a8c.jpg', 81961, 'jpg', 1, 0, 1, 1, 1514527699, '10.6.1.195', 1, 'd77133a1e2ef789c13647d6a983abdc0'),
(45, 'content', 0, 'logo.jpg', 'content/2017/12/5a45e1b39b3ba.jpg', 29675, 'jpg', 1, 0, 1, 1, 1514529203, '10.6.1.195', 1, '693816332f70da40c85c9a62d9faee5b'),
(46, 'content', 0, 'logo.jpg', 'content/2017/12/5a45e31a85c55.jpg', 29675, 'jpg', 1, 0, 1, 1, 1514529562, '10.6.1.195', 1, 'f986c79ca2b57a50dec999ab3e3b9f3d'),
(47, 'content', 0, 'logo.jpg', 'content/2017/12/5a45e3424519e.jpg', 29675, 'jpg', 1, 0, 1, 1, 1514529602, '10.6.1.195', 1, '61694342ddcf5f2760e4dc29519aa80c'),
(48, 'content', 0, 'logo.png', 'content/2017/12/5a45e3a549b6f.png', 19966, 'png', 1, 0, 1, 1, 1514529701, '10.6.1.195', 1, '15eb9f5a607e834eeed7e582ba1ca6cd');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_attachment_index`
--

CREATE TABLE IF NOT EXISTS `lvyecms_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

--
-- 转存表中的数据 `lvyecms_attachment_index`
--

INSERT INTO `lvyecms_attachment_index` (`keyid`, `aid`) VALUES
('catid-63', '1'),
('catid-63', '2'),
('c-67-1', '3'),
('c-67-2', '4'),
('c-67-3', '5'),
('c-67-4', '6'),
('c-68-5', '7'),
('c-68-6', '8'),
('c-68-7', '9'),
('c-4-8', '10'),
('c-4-1', '11'),
('c-4-1', '12'),
('c-4-1', '13'),
('c-4-2', '14'),
('c-4-2', '15'),
('c-4-3', '16'),
('c-4-3', '17'),
('catid-5', '18'),
('c-77-9', '19'),
('c-77-10', '20'),
('c-77-11', '21'),
('catid-1', '22'),
('catid-62', '23'),
('catid-63', '24'),
('catid-64', '25'),
('catid-2', '26'),
('catid-65', '27'),
('catid-66', '28'),
('catid-3', '29'),
('catid-67', '30'),
('catid-68', '31'),
('catid-69', '32'),
('catid-70', '33'),
('catid-71', '34'),
('catid-72', '35'),
('catid-73', '36'),
('catid-74', '37'),
('catid-5', '38'),
('catid-4', '39'),
('catid-4', '40'),
('catid-6', '41'),
('catid-75', '42'),
('catid-76', '43'),
('catid-7', '44'),
('catid-7', '45'),
('catid-7', '46'),
('catid-7', '47'),
('catid-7', '48');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_behavior`
--

CREATE TABLE IF NOT EXISTS `lvyecms_behavior` (
  `id` int(11) unsigned NOT NULL COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

--
-- 转存表中的数据 `lvyecms_behavior`
--

INSERT INTO `lvyecms_behavior` (`id`, `name`, `title`, `remark`, `type`, `status`, `system`, `module`, `datetime`) VALUES
(1, 'app_init', '应用初始化标签位', '应用初始化标签位', 1, 1, 1, '', 1381021393),
(2, 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', 1, 1, 1, '', 1381021411),
(3, 'app_begin', '应用开始标签位', '应用开始标签位', 1, 1, 1, '', 1381021424),
(4, 'action_name', '操作方法名标签位', '操作方法名标签位', 1, 1, 1, '', 1381021437),
(5, 'action_begin', '控制器开始标签位', '控制器开始标签位', 1, 1, 1, '', 1381021450),
(6, 'view_begin', '视图输出开始标签位', '视图输出开始标签位', 1, 1, 1, '', 1381021463),
(7, 'view_parse', '视图解析标签位', '视图解析标签位', 1, 1, 1, '', 1381021476),
(8, 'template_filter', '模板内容解析标签位', '模板内容解析标签位', 1, 1, 1, '', 1381021488),
(9, 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', 1, 1, 1, '', 1381021621),
(10, 'view_end', '视图输出结束标签位', '视图输出结束标签位', 1, 1, 1, '', 1381021631),
(11, 'action_end', '控制器结束标签位', '控制器结束标签位', 1, 1, 1, '', 1381021642),
(12, 'app_end', '应用结束标签位', '应用结束标签位', 1, 1, 1, '', 1381021654),
(13, 'appframe_rbac_init', '后台权限控制', '后台权限控制', 1, 1, 1, '', 1381023560),
(14, 'content_add_end', '内容添加结束行为标签', '模块Search中的行为！', 1, 1, 0, 'Search', 1514511148),
(15, 'content_edit_end', '内容编辑结束行为标签', '模块Search中的行为！', 1, 1, 0, 'Search', 1514511148),
(16, 'content_check_end', '内容审核结束行为标签', '模块Search中的行为！', 1, 1, 0, 'Search', 1514511148),
(17, 'content_delete_end', '内容删除结束行为标签', '模块Search中的行为！', 1, 1, 0, 'Search', 1514511148);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_behavior_log`
--

CREATE TABLE IF NOT EXISTS `lvyecms_behavior_log` (
  `id` int(10) NOT NULL COMMENT '主键',
  `ruleid` int(10) NOT NULL DEFAULT '0' COMMENT '行为ID',
  `guid` char(50) NOT NULL DEFAULT '' COMMENT '标识',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '执行行为的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_behavior_rule`
--

CREATE TABLE IF NOT EXISTS `lvyecms_behavior_rule` (
  `ruleid` int(11) NOT NULL COMMENT '主键',
  `behaviorid` int(11) NOT NULL DEFAULT '0' COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '规则所属模块',
  `addons` char(20) NOT NULL DEFAULT '' COMMENT '规则所属插件',
  `rule` text COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='行为规则表';

--
-- 转存表中的数据 `lvyecms_behavior_rule`
--

INSERT INTO `lvyecms_behavior_rule` (`ruleid`, `behaviorid`, `system`, `module`, `addons`, `rule`, `listorder`, `datetime`) VALUES
(1, 1, 1, '', '', 'phpfile:BuildLiteBehavior', 0, 1381021954),
(2, 3, 1, '', '', 'phpfile:ReadHtmlCacheBehavior', 0, 1381021954),
(3, 12, 1, '', '', 'phpfile:ShowPageTraceBehavior', 0, 1381021954),
(4, 7, 1, '', '', 'phpfile:ParseTemplateBehavior', 0, 1381021954),
(5, 8, 1, '', '', 'phpfile:ContentReplaceBehavior', 0, 1381021954),
(6, 9, 1, '', '', 'phpfile:WriteHtmlCacheBehavior', 0, 1381021954),
(7, 1, 1, '', '', 'phpfile:AppInitBehavior|module:Common', 0, 1381021954),
(8, 3, 1, '', '', 'phpfile:AppBeginBehavior|module:Common', 0, 1381021954),
(9, 6, 1, '', '', 'phpfile:ViewBeginBehavior|module:Common', 0, 1381021954),
(10, 14, 0, 'Search', '', 'phpfile:SearchApi|module:Search', 0, 1514511148),
(11, 15, 0, 'Search', '', 'phpfile:SearchApi|module:Search', 0, 1514511148),
(12, 16, 0, 'Search', '', 'phpfile:SearchApi|module:Search', 0, 1514511148),
(13, 17, 0, 'Search', '', 'phpfile:SearchApi|module:Search', 0, 1514511148),
(14, 3, 0, 'Wap', '', 'phpfile:WapBehavior|module:Wap', 0, 1514511153);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_cache`
--

CREATE TABLE IF NOT EXISTS `lvyecms_cache` (
  `id` int(10) NOT NULL COMMENT '自增长ID',
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存key值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `param` char(255) NOT NULL DEFAULT '' COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';

--
-- 转存表中的数据 `lvyecms_cache`
--

INSERT INTO `lvyecms_cache` (`id`, `key`, `name`, `module`, `model`, `action`, `param`, `system`) VALUES
(1, 'Config', '网站配置', '', 'Config', 'config_cache', '', 1),
(2, 'Module', '可用模块列表', '', 'Module', 'module_cache', '', 1),
(3, 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', 1),
(4, 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', 0),
(5, 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', 0),
(6, 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', 0),
(7, 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', 0),
(8, 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', 0),
(9, 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', 0),
(10, 'Search_config', '全站搜索配置', 'Search', 'Search', 'search_cache', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_category`
--

CREATE TABLE IF NOT EXISTS `lvyecms_category` (
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目ID',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `catname_en` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `description` mediumtext COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL DEFAULT '' COMMENT '父目录',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目拼音'
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='栏目表';

--
-- 转存表中的数据 `lvyecms_category`
--

INSERT INTO `lvyecms_category` (`catid`, `module`, `type`, `modelid`, `domain`, `parentid`, `arrparentid`, `child`, `arrchildid`, `catname`, `catname_en`, `image`, `description`, `parentdir`, `catdir`, `url`, `hits`, `setting`, `listorder`, `ismenu`, `sethtml`, `letter`) VALUES
(1, 'content', 1, 0, '', 0, '0', 1, '1,62,63,64', '关于我们', 'PROFILE', '/d/file/content/2017/12/5a45da9662f96.jpg', '', '', 'gywm', '/gywm/', 0, 'a:12:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:13:"page_gywm.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;s:20:"wapcategory_template";N;s:16:"waplist_template";N;s:16:"wapshow_template";N;s:16:"wappage_template";s:13:"page_gywm.php";}', 1, 1, 1, 'guanyuwomen'),
(2, 'content', 0, 1, '', 0, '0', 1, '2,65,66', '新闻中心', 'NEWS', '/d/file/content/2017/12/5a45dad35b0cf.jpg', '', '', 'news', '/news/', 0, 'a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 2, 1, 1, 'xinwenzhongxin'),
(3, 'content', 0, 2, '', 0, '0', 1, '3,67,68,69,70,71,72,73,74', '产品中心', 'PRODUCT', '/d/file/content/2017/12/5a45dafb31669.jpg', '', '', 'cpzx', '/cpzx/', 0, 'a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:17:"category_cpzx.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 3, 1, 1, 'chanpinzhongxin'),
(4, 'content', 0, 3, '', 0, '0', 0, '4', '晒家分享', 'SHARE', '/d/file/content/2017/12/5a45db9abf040.jpg', '', '', 'sjfx', '/sjfx/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:17:"list_software.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 4, 1, 1, 'shaijiafenxiang'),
(6, 'content', 1, 0, '', 0, '0', 1, '6,75,76', '招贤纳士', 'HR', '/d/file/content/2017/12/5a45dbb14c845.jpg', '', '', 'zxns', '/zxns/', 0, 'a:12:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:13:"page_zxns.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;s:20:"wapcategory_template";N;s:16:"waplist_template";N;s:16:"wapshow_template";N;s:16:"wappage_template";s:13:"page_zxns.php";}', 6, 1, 1, 'zhaoxiannashi'),
(5, 'content', 1, 0, '', 0, '0', 0, '5', '招商加盟', 'SERVICE', '/d/file/content/2017/12/5a45db86486a4.jpg', '', '', 'zsjm', '/zsjm/', 0, 'a:8:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:8:"page.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 5, 1, 1, 'zhaoshangjiameng'),
(7, 'content', 1, 0, '', 0, '0', 0, '7', '联系我们', 'CONTACT', '/d/file/content/2017/12/5a45dbd3d2a8c.jpg', '', '', 'lxwm', '/lxwm/', 0, 'a:12:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:13:"page_lxwm.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;s:20:"wapcategory_template";N;s:16:"waplist_template";N;s:16:"wapshow_template";N;s:16:"wappage_template";s:8:"page.php";}', 7, 1, 1, 'lianxiwomen'),
(62, 'content', 1, 0, '', 1, '0,1', 0, '62', '公司简介', '', '/d/file/content/2017/12/5a45daa30551d.jpg', '', 'gywm/', 'gsjj', '/gywm/gsjj/', 0, 'a:8:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:16:"page_gywm_er.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 0, 1, 1, 'gongsijianjie'),
(63, 'content', 1, 0, '', 1, '0,1', 0, '63', '企业文化', '', '/d/file/content/2017/12/5a45dab1dd207.jpg', '', 'gywm/', 'qywh', '/gywm/qywh/', 0, 'a:8:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:16:"page_gywm_er.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 0, 1, 1, 'qiyewenhua'),
(64, 'content', 1, 0, '', 1, '0,1', 0, '64', '发展战略', '', '/d/file/content/2017/12/5a45dabed3f88.jpg', '', 'gywm/', 'fzzl', '/gywm/fzzl/', 0, 'a:8:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:16:"page_gywm_er.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 0, 1, 1, 'fazhanzhanlue'),
(65, 'content', 0, 1, '', 2, '0,2', 0, '65', '公司新闻', '', '/d/file/content/2017/12/5a45dae29e78b.jpg', '', 'news/', 'gsxw', '/news/gsxw/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'gongsixinwen'),
(66, 'content', 0, 1, '', 2, '0,2', 0, '66', '行业新闻', '', '/d/file/content/2017/12/5a45daeb7a6de.jpg', '', 'news/', 'hyxw', '/news/hyxw/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'xingyexinwen'),
(67, 'content', 0, 2, '', 3, '0,3', 0, '67', '定制橱柜', '', '/d/file/content/2017/12/5a45db06325af.jpg', '', 'cpzx/', 'dzcg', '/cpzx/dzcg/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhichugui'),
(68, 'content', 0, 2, '', 3, '0,3', 0, '68', '定制衣橱', '', '/d/file/content/2017/12/5a45db126dfc2.jpg', '', 'cpzx/', 'dzyc', '/cpzx/dzyc/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhiyichu'),
(69, 'content', 0, 2, '', 3, '0,3', 0, '69', '定制鞋柜', '', '/d/file/content/2017/12/5a45db246171e.jpg', '', 'cpzx/', 'dzxg', '/cpzx/dzxg/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhixiegui'),
(70, 'content', 0, 2, '', 3, '0,3', 0, '70', '定制卫浴柜', '', '/d/file/content/2017/12/5a45db30eb85a.jpg', '', 'cpzx/', 'dzwyg', '/cpzx/dzwyg/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhiweiyugui'),
(71, 'content', 0, 2, '', 3, '0,3', 0, '71', '定制背景墙', '', '/d/file/content/2017/12/5a45db3cbb35a.jpg', '', 'cpzx/', 'dzbjq', '/cpzx/dzbjq/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhibeijingqiang'),
(72, 'content', 0, 2, '', 3, '0,3', 0, '72', '定制室内门', '', '/d/file/content/2017/12/5a45db48963ef.jpg', '', 'cpzx/', 'dzsnm', '/cpzx/dzsnm/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhishineimen'),
(75, 'content', 1, 0, '', 6, '0,6', 0, '75', '人才招聘', '', '/d/file/content/2017/12/5a45dbbc68b14.jpg', '', 'zxns/', 'rczp', '/zxns/rczp/', 0, 'a:8:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:18:"page_zxns_rczp.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 0, 1, 1, 'rencaizhaopin'),
(73, 'content', 0, 2, '', 3, '0,3', 0, '73', '定制门窗套', '', '/d/file/content/2017/12/5a45db52b6f21.jpg', '', 'cpzx/', 'dzmct', '/cpzx/dzmct/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhimenchuangtao'),
(74, 'content', 0, 2, '', 3, '0,3', 0, '74', '定制踢脚线', '', '/d/file/content/2017/12/5a45db5ed936f.jpg', '', 'cpzx/', 'dztjx', '/cpzx/dztjx/', 0, 'a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:14:"list_photo.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"1";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";s:1:"3";}', 0, 1, 1, 'dingzhitijiaoxian'),
(76, 'content', 1, 0, '', 6, '0,6', 0, '76', '人才理念', '', '/d/file/content/2017/12/5a45dbc8ded59.jpg', '', 'zxns/', 'rcln', '/zxns/rcln/', 0, 'a:8:{s:6:"seturl";s:0:"";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"page_template";s:18:"page_zxns_rcln.php";s:6:"ishtml";s:1:"1";s:15:"category_ruleid";s:1:"2";s:11:"show_ruleid";N;}', 0, 1, 1, 'rencailinian'),
(77, 'content', 0, 2, '', 0, '0', 0, '77', 'banner', '', '', '', '', 'banner', '/index.php?a=lists&catid=77', 0, 'a:15:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:0:"";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}', 77, 0, 0, 'banner');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_category_field`
--

CREATE TABLE IF NOT EXISTS `lvyecms_category_field` (
  `fid` smallint(6) NOT NULL COMMENT '自增长id',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_category_priv`
--

CREATE TABLE IF NOT EXISTS `lvyecms_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '动作'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_config`
--

CREATE TABLE IF NOT EXISTS `lvyecms_config` (
  `id` smallint(8) unsigned NOT NULL,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

--
-- 转存表中的数据 `lvyecms_config`
--

INSERT INTO `lvyecms_config` (`id`, `varname`, `info`, `groupid`, `value`) VALUES
(1, 'sitename', '网站名称', 1, '广东智能家居有限公司官方网站'),
(2, 'siteurl', '网站网址', 1, '/'),
(3, 'sitefileurl', '附件地址', 1, '/d/file/'),
(4, 'siteemail', '站点邮箱', 1, '164466159@qq.com'),
(6, 'siteinfo', '网站介绍', 1, '家具'),
(7, 'sitekeywords', '网站关键字', 1, '家具'),
(8, 'uploadmaxsize', '允许上传附件大小', 1, '20240'),
(9, 'uploadallowext', '允许上传附件类型', 1, 'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf'),
(10, 'qtuploadmaxsize', '前台允许上传附件大小', 1, '200'),
(11, 'qtuploadallowext', '前台允许上传附件类型', 1, 'jpg|jpeg|gif'),
(12, 'watermarkenable', '是否开启图片水印', 1, '0'),
(13, 'watermarkminwidth', '水印-宽', 1, '300'),
(14, 'watermarkminheight', '水印-高', 1, '100'),
(15, 'watermarkimg', '水印图片', 1, '/statics/images/mark_bai.png'),
(16, 'watermarkpct', '水印透明度', 1, '80'),
(17, 'watermarkquality', 'JPEG 水印质量', 1, '85'),
(18, 'watermarkpos', '水印位置', 1, '7'),
(19, 'theme', '主题风格', 1, 'jiaju'),
(20, 'ftpstatus', 'FTP上传', 1, '0'),
(21, 'ftpuser', 'FTP用户名', 1, ''),
(22, 'ftppassword', 'FTP密码', 1, ''),
(23, 'ftphost', 'FTP服务器地址', 1, ''),
(24, 'ftpport', 'FTP服务器端口', 1, '21'),
(25, 'ftppasv', 'FTP是否开启被动模式', 1, '1'),
(26, 'ftpssl', 'FTP是否使用SSL连接', 1, '0'),
(27, 'ftptimeout', 'FTP超时时间', 1, '10'),
(28, 'ftpuppat', 'FTP上传目录', 1, '/'),
(29, 'mail_type', '邮件发送模式', 1, '1'),
(30, 'mail_server', '邮件服务器', 1, 'smtp.qq.com'),
(31, 'mail_port', '邮件发送端口', 1, '25'),
(32, 'mail_from', '发件人地址', 1, 'admin@abc3210.com'),
(33, 'mail_auth', '密码验证', 1, '1'),
(34, 'mail_user', '邮箱用户名', 1, ''),
(35, 'mail_password', '邮箱密码', 1, ''),
(36, 'mail_fname', '发件人名称', 1, 'LvyeCMS管理员'),
(37, 'domainaccess', '指定域名访问', 1, '0'),
(38, 'generate', '是否生成首页', 1, '1'),
(39, 'index_urlruleid', '首页URL规则', 1, '11'),
(40, 'indextp', '首页模板', 1, 'index.php'),
(41, 'tagurl', 'TagURL规则', 1, '8'),
(42, 'checkcode_type', '验证码类型', 1, '0'),
(43, 'attachment_driver', '附件驱动', 1, 'Local'),
(44, 'addonsite', '开放平台', 1, 'http://addon.lvyecms.com/'),
(45, 'dtzb', '地图坐标', 2, '120.509235,37.640204'),
(46, 'zbtitle', '坐标标题', 2, '广东智能家居有限公司'),
(47, 'zbdj', '坐标点击之后的内容', 2, '乘车路线：乘坐1路公交车，中村站点下车，往西500米，到达国贸玉沙大街广东智能家居有限1公司'),
(48, 'phone', '网站电话', 2, '0755-88888888'),
(49, 'qqdizhi', 'QQ链接地址', 2, 'tencent://message/?uin=396060960&Site=www.68bee.com&Menu=yes'),
(50, 'bqsy', '版权所有', 2, 'Copyright © 2002-2011 CMSBUYCN 尚云模板网 版权所有'),
(51, 'bah', '备案号', 2, '粤ICP备88888888'),
(52, 'gsdz', '公司地址', 2, '广东省广州市番禺经济开发区 '),
(53, 'sitepclogo', '', 1, '/d/file/content/2017/12/5a45e3424519e.jpg'),
(54, 'sitewaplogo', '', 1, '/d/file/content/2017/12/5a45e3a549b6f.png');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_config_field`
--

CREATE TABLE IF NOT EXISTS `lvyecms_config_field` (
  `fid` smallint(6) NOT NULL COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

--
-- 转存表中的数据 `lvyecms_config_field`
--

INSERT INTO `lvyecms_config_field` (`fid`, `fieldname`, `type`, `setting`, `createtime`) VALUES
(1, 'dtzb', 'input', 'a:3:{s:5:"title";s:12:"地图坐标";s:4:"tips";s:42:"如120.509235,37.640204 去百度取坐标";s:5:"style";s:0:"";}', 1514463010),
(2, 'zbtitle', 'input', 'a:3:{s:5:"title";s:12:"坐标标题";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463036),
(3, 'zbdj', 'textarea', 'a:3:{s:5:"title";s:27:"坐标点击之后的内容";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463084),
(4, 'phone', 'input', 'a:3:{s:5:"title";s:12:"网站电话";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463304),
(5, 'qqdizhi', 'input', 'a:3:{s:5:"title";s:14:"QQ链接地址";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463317),
(6, 'bqsy', 'input', 'a:3:{s:5:"title";s:12:"版权所有";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463362),
(7, 'bah', 'input', 'a:3:{s:5:"title";s:9:"备案号";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463375),
(8, 'gsdz', 'input', 'a:3:{s:5:"title";s:12:"公司地址";s:4:"tips";s:0:"";s:5:"style";s:0:"";}', 1514463385);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_customlist`
--

CREATE TABLE IF NOT EXISTS `lvyecms_customlist` (
  `id` int(11) NOT NULL COMMENT '自定义列表ID',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '访问地址',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '列表标题',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '网页关键字',
  `description` text COMMENT '页面简介',
  `totalsql` text COMMENT '数据统计SQL',
  `listsql` text COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL DEFAULT '0' COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `template` mediumtext COMMENT '模板',
  `listpath` varchar(60) NOT NULL DEFAULT '' COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_customtemp`
--

CREATE TABLE IF NOT EXISTS `lvyecms_customtemp` (
  `tempid` smallint(6) NOT NULL COMMENT '模板ID',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `tempname` varchar(30) NOT NULL DEFAULT '' COMMENT '模板完整文件名',
  `temppath` varchar(200) NOT NULL DEFAULT '' COMMENT '模板生成路径',
  `temptext` mediumtext COMMENT '模板内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义模板表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_locking`
--

CREATE TABLE IF NOT EXISTS `lvyecms_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `locktime` int(10) NOT NULL DEFAULT '0' COMMENT '锁定时间'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_loginlog`
--

CREATE TABLE IF NOT EXISTS `lvyecms_loginlog` (
  `id` int(11) NOT NULL COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

--
-- 转存表中的数据 `lvyecms_loginlog`
--

INSERT INTO `lvyecms_loginlog` (`id`, `username`, `logintime`, `loginip`, `status`, `password`, `info`) VALUES
(1, 'admin', 1514360275, '10.6.1.195', 1, '密码保密', '用户名登录'),
(2, 'admin', 1514376780, '127.0.0.1', 1, '密码保密', '用户名登录'),
(3, 'admin', 1514461074, '127.0.0.1', 1, '密码保密', '用户名登录'),
(4, 'admin', 1514511126, '10.6.1.195', 1, '密码保密', '用户名登录');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_menu`
--

CREATE TABLE IF NOT EXISTS `lvyecms_menu` (
  `id` smallint(6) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制键',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID'
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

--
-- 转存表中的数据 `lvyecms_menu`
--

INSERT INTO `lvyecms_menu` (`id`, `name`, `parentid`, `app`, `controller`, `action`, `parameter`, `type`, `status`, `remark`, `listorder`) VALUES
(1, '缓存更新', 0, 'Admin', 'Index', 'cache', '', 1, 0, '', 0),
(2, '我的面板', 0, 'Admin', 'Config', 'index', '', 0, 1, '', 0),
(3, '设置', 0, 'Admin', 'Config', 'index', '', 0, 1, '', 0),
(4, '个人信息', 2, 'Admin', 'Adminmanage', 'myinfo', '', 0, 1, '', 0),
(5, '修改个人信息', 4, 'Admin', 'Adminmanage', 'myinfo', '', 1, 1, '', 0),
(6, '修改密码', 4, 'Admin', 'Adminmanage', 'chanpass', '', 1, 1, '', 0),
(7, '系统设置', 3, 'Admin', 'Config', 'index', '', 0, 1, '', 0),
(8, '站点配置', 7, 'Admin', 'Config', 'index', '', 1, 1, '', 0),
(9, '邮箱配置', 8, 'Admin', 'Config', 'mail', '', 1, 1, '', 0),
(10, '附件配置', 8, 'Admin', 'Config', 'attach', '', 1, 1, '', 0),
(11, '高级配置', 8, 'Admin', 'Config', 'addition', '', 1, 1, '', 0),
(12, '扩展配置', 8, 'Admin', 'Config', 'extend', '', 1, 1, '', 0),
(13, '行为管理', 7, 'Admin', 'Behavior', 'index', '', 1, 1, '', 0),
(14, '行为日志', 13, 'Admin', 'Behavior', 'logs', '', 1, 1, '', 0),
(15, '编辑行为', 13, 'Admin', 'Behavior', 'edit', '', 1, 0, '', 0),
(16, '删除行为', 13, 'Admin', 'Behavior', 'delete', '', 1, 0, '', 0),
(17, '后台菜单管理', 7, 'Admin', 'Menu', 'index', '', 1, 1, '', 0),
(18, '添加菜单', 17, 'Admin', 'Menu', 'add', '', 1, 1, '', 0),
(19, '修改', 17, 'Admin', 'Menu', 'edit', '', 1, 0, '', 0),
(20, '删除', 17, 'Admin', 'Menu', 'delete', '', 1, 0, '', 0),
(21, '管理员设置', 3, 'Admin', 'Management', 'index', '', 0, 1, '', 0),
(22, '管理员管理', 21, 'Admin', 'Management', 'manager', '', 1, 1, '', 0),
(23, '添加管理员', 22, 'Admin', 'Management', 'adminadd', '', 1, 1, '', 0),
(24, '编辑管理信息', 22, 'Admin', 'Management', 'edit', '', 1, 0, '', 0),
(25, '删除管理员', 22, 'Admin', 'Management', 'delete', '', 1, 0, '', 0),
(26, '角色管理', 21, 'Admin', 'Rbac', 'rolemanage', '', 1, 1, '', 0),
(27, '添加角色', 26, 'Admin', 'Rbac', 'roleadd', '', 1, 1, '', 0),
(28, '删除角色', 26, 'Admin', 'Rbac', 'roledelete', '', 1, 0, '', 0),
(29, '角色编辑', 26, 'Admin', 'Rbac', 'roleedit', '', 1, 0, '', 0),
(30, '角色授权', 26, 'Admin', 'Rbac', 'authorize', '', 1, 0, '', 0),
(31, '日志管理', 3, 'Admin', 'Logs', 'index', '', 0, 1, '', 0),
(32, '后台登陆日志', 31, 'Admin', 'Logs', 'loginlog', '', 1, 1, '', 0),
(33, '后台操作日志', 31, 'Admin', 'Logs', 'index', '', 1, 1, '', 0),
(34, '删除一个月前的登陆日志', 32, 'Admin', 'Logs', 'deleteloginlog', '', 1, 1, '', 0),
(35, '删除一个月前的操作日志', 33, 'Admin', 'Logs', 'deletelog', '', 1, 1, '', 0),
(36, '添加行为', 13, 'Admin', 'Behavior', 'add', '', 1, 1, '', 0),
(37, '模块', 0, 'Admin', 'Module', 'index', '', 0, 1, '', 0),
(38, '在线云平台', 37, 'Admin', 'Cloud', 'index', '', 0, 1, '', 0),
(39, '模块商店', 38, 'Admin', 'Moduleshop', 'index', '', 1, 1, '', 0),
(40, '插件商店', 38, 'Admin', 'Addonshop', 'index', '', 1, 1, '', 0),
(113, '模板商店', 38, 'Admin', 'Templateshop', 'index', '', 1, 1, '', 0),
(41, '在线升级', 38, 'Admin', 'Upgrade', 'index', '', 1, 0, '', 0),
(42, '本地模块管理', 37, 'Admin', 'Module', 'local', '', 0, 1, '', 0),
(43, '模块管理', 42, 'Admin', 'Module', 'index', '', 1, 1, '', 0),
(44, '内容', 0, 'Content', 'Index', 'index', '', 0, 1, '', 0),
(45, '内容管理', 44, 'Content', 'Content', 'index', '', 0, 1, '', 0),
(46, '内容相关设置', 44, 'Content', 'Category', 'index', '', 0, 1, '', 0),
(47, '栏目列表', 46, 'Content', 'Category', 'index', '', 1, 1, '', 0),
(48, '添加栏目', 47, 'Content', 'Category', 'add', '', 1, 1, '', 0),
(49, '添加单页', 47, 'Content', 'Category', 'singlepage', '', 1, 1, '', 0),
(50, '添加外部链接栏目', 47, 'Content', 'Category', 'wadd', '', 1, 1, '', 0),
(51, '编辑栏目', 47, 'Content', 'Category', 'edit', '', 1, 0, '', 0),
(52, '删除栏目', 47, 'Content', 'Category', 'delete', '', 1, 0, '', 0),
(53, '栏目属性转换', 47, 'Content', 'Category', 'categoryshux', '', 1, 0, '', 0),
(54, '模型管理', 46, 'Content', 'Models', 'index', '', 1, 1, '', 0),
(55, '创建新模型', 54, 'Content', 'Models', 'add', '', 1, 1, '', 0),
(56, '删除模型', 54, 'Content', 'Models', 'delete', '', 1, 0, '', 0),
(57, '编辑模型', 54, 'Content', 'Models', 'edit', '', 1, 0, '', 0),
(58, '模型禁用', 54, 'Content', 'Models', 'disabled', '', 1, 0, '', 0),
(59, '模型导入', 54, 'Content', 'Models', 'import', '', 1, 1, '', 0),
(60, '字段管理', 54, 'Content', 'Field', 'index', '', 1, 0, '', 0),
(61, '字段修改', 60, 'Content', 'Field', 'edit', '', 1, 0, '', 0),
(62, '字段删除', 60, 'Content', 'Field', 'delete', '', 1, 0, '', 0),
(63, '字段状态', 60, 'Content', 'Field', 'disabled', '', 1, 0, '', 0),
(64, '模型预览', 60, 'Content', 'Field', 'priview', '', 1, 0, '', 0),
(65, '管理内容', 45, 'Content', 'Content', 'index', '', 1, 1, '', 0),
(66, '附件管理', 45, 'Attachment', 'Atadmin', 'index', '', 1, 1, '', 0),
(67, '删除', 66, 'Attachment', 'Atadmin', 'delete', '', 1, 0, '', 0),
(68, '发布管理', 44, 'Content', 'Createhtml', 'index', '', 0, 1, '', 0),
(69, '批量更新栏目页', 68, 'Content', 'Createhtml', 'category', '', 1, 1, '', 0),
(70, '生成首页', 68, 'Content', 'Createhtml', 'index', '', 1, 1, '', 0),
(71, '批量更新URL', 68, 'Content', 'Createhtml', 'update_urls', '', 1, 1, '', 0),
(72, '批量更新内容页', 68, 'Content', 'Createhtml', 'update_show', '', 1, 1, '', 0),
(73, '刷新自定义页面', 68, 'Template', 'Custompage', 'createhtml', '', 1, 1, '', 0),
(74, 'URL规则管理', 46, 'Content', 'Urlrule', 'index', '', 1, 1, '', 0),
(75, '添加规则', 74, 'Content', 'Urlrule', 'add', '', 1, 1, '', 0),
(76, '编辑', 74, 'Content', 'Urlrule', 'edit', '', 1, 0, '', 0),
(77, '删除', 74, 'Content', 'Urlrule', 'delete', '', 1, 0, '', 0),
(78, '推荐位管理', 46, 'Content', 'Position', 'index', '', 1, 1, '', 0),
(79, '信息管理', 78, 'Content', 'Position', 'item', '', 1, 0, '', 0),
(80, '添加推荐位', 78, 'Content', 'Position', 'add', '', 1, 1, '', 0),
(81, '修改推荐位', 78, 'Content', 'Position', 'edit', '', 1, 0, '', 0),
(82, '删除推荐位', 78, 'Content', 'Position', 'delete', '', 1, 0, '', 0),
(83, '信息编辑', 79, 'Content', 'Position', 'item_manage', '', 1, 0, '', 0),
(84, '信息排序', 79, 'Content', 'Position', 'item_listorder', '', 1, 0, '', 0),
(85, '数据重建', 78, 'Content', 'Position', 'rebuilding', '', 1, 0, '', 0),
(86, 'Tags管理', 45, 'Content', 'Tags', 'index', '', 1, 1, '', 0),
(87, '修改', 86, 'Content', 'Tags', 'edit', '', 1, 0, '', 0),
(88, '删除', 86, 'Content', 'Tags', 'delete', '', 1, 0, '', 0),
(89, 'Tags数据重建', 86, 'Content', 'Tags', 'create', '', 1, 1, '', 0),
(90, '界面', 0, 'Template', 'Style', 'index', '', 0, 1, '', 0),
(91, '模板管理', 90, 'Template', 'Style', 'index', '', 0, 1, '', 0),
(92, '模板风格', 91, 'Template', 'Style', 'index', '', 1, 1, '', 0),
(93, '添加模板页', 92, 'Template', 'Style', 'add', '', 1, 1, '', 0),
(94, '删除模板', 92, 'Template', 'Style', 'delete', '', 1, 0, '', 0),
(95, '修改模板', 92, 'Template', 'Style', 'edit', '', 1, 0, '', 0),
(96, '主题管理', 91, 'Template', 'Theme', 'index', '', 1, 1, '', 0),
(97, '主题更换', 96, 'Template', 'Theme', 'chose', '', 1, 0, '', 0),
(98, '自定义页面', 90, 'Template', 'Custompage', 'index', '', 0, 1, '', 0),
(99, '自定义页面', 98, 'Template', 'Custompage', 'index', '', 1, 1, '', 0),
(100, '添加自定义页面', 99, 'Template', 'Custompage', 'add', '', 1, 1, '', 0),
(101, '删除自定义页面', 99, 'Template', 'Custompage', 'delete', '', 1, 0, '', 0),
(102, '编辑自定义页面', 99, 'Template', 'Custompage', 'edit', '', 1, 0, '', 0),
(103, '自定义列表', 98, 'Template', 'Customlist', 'index', '', 1, 1, '', 0),
(104, '添加列表', 103, 'Template', 'Customlist', 'add', '', 1, 1, '', 0),
(105, '删除列表', 103, 'Template', 'Customlist', 'delete', '', 1, 0, '', 0),
(106, '编辑列表', 103, 'Template', 'Customlist', 'edit', '', 1, 0, '', 0),
(107, '生成列表', 103, 'Template', 'Customlist', 'generate', '', 1, 0, '', 0),
(108, '安装模块', 39, 'Admin', 'Moduleshop', 'install', '', 1, 0, '', 0),
(109, '升级模块', 39, 'Admin', 'Moduleshop', 'upgrade', '', 1, 0, '', 0),
(110, '安装插件', 40, 'Admin', 'Addonshop', 'install', '', 1, 0, '', 0),
(111, '升级插件', 40, 'Admin', 'Addonshop', 'upgrade', '', 1, 0, '', 0),
(112, '栏目授权', 26, 'Admin', 'Rbac', 'setting_cat_priv', '', 1, 0, '', 0),
(114, '留言版', 0, 'Content', 'Message', 'lists', '', 1, 1, '0', 0),
(115, '留言内容', 114, 'Content', 'Message', 'lists', '', 1, 1, '0', 0),
(116, '导出表格', 114, 'Content', 'Message', 'toExcel', '', 1, 1, '0', 0),
(117, '手机版管理', 42, 'Wap', 'Wap', 'index', '', 1, 1, '手机模块管理', 0),
(118, '修改', 117, 'Wap', 'Wap', 'edit', '', 1, 0, '', 0),
(119, '搜索配置', 42, 'Search', 'Search', 'index', '', 0, 1, '搜索配置', 0),
(120, '重建索引', 119, 'Search', 'Search', 'create', '', 1, 1, '', 0),
(121, '热门搜索', 119, 'Search', 'Search', 'searchot', '', 1, 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_message`
--

CREATE TABLE IF NOT EXISTS `lvyecms_message` (
  `id` int(10) unsigned NOT NULL COMMENT 'id',
  `name` char(20) NOT NULL COMMENT '姓名',
  `lesson` varchar(50) NOT NULL COMMENT '想学习的课程',
  `job` char(30) NOT NULL COMMENT '目前工作',
  `telephone` char(11) NOT NULL COMMENT '电话',
  `email` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL COMMENT '城市',
  `qq` char(15) NOT NULL COMMENT 'qq',
  `info` text NOT NULL COMMENT '留言',
  `readstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inputtime` int(10) NOT NULL COMMENT '留言时间',
  `ip` varchar(15) NOT NULL COMMENT 'IP地址'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lvyecms_message`
--

INSERT INTO `lvyecms_message` (`id`, `name`, `lesson`, `job`, `telephone`, `email`, `city`, `qq`, `info`, `readstatus`, `inputtime`, `ip`) VALUES
(12, '123', '', '', '15098800372', '', '', '', 'fdafdsafda', 0, 1514466611, '127.0.0.1'),
(13, 'vfdsdf', '', '', '15098800372', '', '', '', 'dcfvsafdsa', 0, 1514466719, '127.0.0.1'),
(14, '123', '', '', '15098800372', '164466159@qq.com', '', '', 'hdfgfgdsfds', 1, 1514466818, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_model`
--

CREATE TABLE IF NOT EXISTS `lvyecms_model` (
  `modelid` smallint(5) unsigned NOT NULL,
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '描述',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '表名',
  `setting` text COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL DEFAULT '' COMMENT '风格',
  `category_template` char(30) NOT NULL DEFAULT '' COMMENT '栏目模板',
  `list_template` char(30) NOT NULL DEFAULT '' COMMENT '列表模板',
  `show_template` char(30) NOT NULL DEFAULT '' COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL DEFAULT '' COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模块标识'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='内容模型列表';

--
-- 转存表中的数据 `lvyecms_model`
--

INSERT INTO `lvyecms_model` (`modelid`, `name`, `description`, `tablename`, `setting`, `addtime`, `items`, `enablesearch`, `disabled`, `default_style`, `category_template`, `list_template`, `show_template`, `js_template`, `sort`, `type`) VALUES
(1, '新闻模型', '新闻模型', 'news', '', 1514361568, 0, 0, 0, '', '', '', '', '', 0, 0),
(2, '图片模型', '图片模型', 'photo', '', 1514361580, 0, 0, 0, '', '', '', '', '', 0, 0),
(3, '晒家模型', '晒家模型', 'shaijia', '', 1514461232, 0, 0, 0, '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_model_field`
--

CREATE TABLE IF NOT EXISTS `lvyecms_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '别名',
  `tips` text COMMENT '字段提示',
  `css` varchar(30) NOT NULL DEFAULT '' COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` mediumtext,
  `formattribute` varchar(255) NOT NULL DEFAULT '',
  `unsetgroupids` varchar(255) NOT NULL DEFAULT '',
  `unsetroleids` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='模型字段列表';

--
-- 转存表中的数据 `lvyecms_model_field`
--

INSERT INTO `lvyecms_model_field` (`fieldid`, `modelid`, `field`, `name`, `tips`, `css`, `minlength`, `maxlength`, `pattern`, `errortips`, `formtype`, `setting`, `formattribute`, `unsetgroupids`, `unsetroleids`, `iscore`, `issystem`, `isunique`, `isbase`, `issearch`, `isadd`, `isfulltext`, `isposition`, `listorder`, `disabled`, `isomnipotent`) VALUES
(1, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 15, 0, 0),
(2, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(3, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 17, 0, 0),
(4, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'a:2:{s:4:"size";s:0:"";s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0),
(5, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'a:9:{s:7:"options";s:33:"允许评论|1\r\n不允许评论|0";s:7:"boxtype";s:5:"radio";s:9:"fieldtype";s:7:"tinyint";s:9:"minnumber";s:1:"1";s:5:"width";s:2:"88";s:4:"size";s:0:"";s:12:"defaultvalue";s:1:"1";s:10:"outputtype";s:1:"1";s:10:"filtertype";s:1:"0";}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0),
(6, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 9, 0, 0),
(7, 1, 'inputtime', '真实发布时间', '', '', 0, 0, '', '', 'datetime', 'a:3:{s:9:"fieldtype";s:3:"int";s:6:"format";s:11:"Y-m-d H:i:s";s:11:"defaulttype";s:1:"0";}', '', '', '', 1, 1, 0, 0, 0, 0, 0, 1, 11, 0, 0),
(8, 1, 'posid', '推荐位', '', '', 0, 0, '', '', 'posid', 'a:4:{s:5:"width";s:3:"125";s:12:"defaultvalue";s:0:"";s:12:"backstagefun";s:0:"";s:8:"frontfun";s:0:"";}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 1, 11, 0, 0),
(9, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 1, 12, 0, 0),
(10, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(11, 1, 'relation', '相关文章', '', '', 0, 255, '', '', 'omnipotent', 'a:4:{s:8:"formtext";s:464:"<input type="hidden" name="info[relation]" id="relation" value="{FIELD_VALUE}" style="50" >\n<ul class="list-dot" id="relation_text">\n</ul>\n<input type="button" value="添加相关" onClick="omnipotent(''selectid'',GV.DIMAUB+''index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}'',''添加相关文章'',1)" class="btn">\n<span class="edit_content">\n  <input type="button" value="显示已有" onClick="show_relation({MODELID},{ID})" class="btn">\n</span>";s:9:"fieldtype";s:7:"varchar";s:12:"backstagefun";s:0:"";s:8:"frontfun";s:0:"";}', '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0),
(12, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'a:9:{s:4:"size";s:2:"50";s:12:"defaultvalue";s:0:"";s:9:"show_type";s:1:"1";s:14:"upload_maxsize";s:4:"1024";s:15:"upload_allowext";s:20:"jpg|jpeg|gif|png|bmp";s:9:"watermark";s:1:"0";s:13:"isselectimage";s:1:"1";s:12:"images_width";s:0:"";s:13:"images_height";s:0:"";}', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 7, 0, 0),
(13, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(14, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'a:2:{s:9:"minnumber";s:0:"";s:12:"defaultvalue";s:0:"";}', '', '', '', 1, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(15, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 3, 0, 0),
(16, 1, 'keywords', '关键词', '多关键词之间用空格隔开', '', 0, 40, '', '', 'keyword', 'a:2:{s:4:"size";s:3:"100";s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 4, 0, 0),
(17, 1, 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', 0, 0, '', '', 'tags', 'a:4:{s:12:"backstagefun";s:0:"";s:17:"backstagefun_type";s:1:"1";s:8:"frontfun";s:0:"";s:13:"frontfun_type";s:1:"1";}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 4, 0, 0),
(18, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'a:4:{s:5:"width";s:2:"98";s:6:"height";s:2:"46";s:12:"defaultvalue";s:0:"";s:10:"enablehtml";s:1:"0";}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 5, 0, 0),
(19, 1, 'updatetime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'a:3:{s:9:"fieldtype";s:3:"int";s:6:"format";s:11:"Y-m-d H:i:s";s:11:"defaulttype";s:1:"0";}', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0),
(20, 1, 'content', '内容', '<style type="text/css">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'a:6:{s:7:"toolbar";s:4:"full";s:12:"defaultvalue";s:0:"";s:13:"enablekeylink";s:1:"1";s:10:"replacenum";s:1:"2";s:9:"link_mode";s:1:"0";s:15:"enablesaveimage";s:1:"1";}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 6, 0, 0),
(21, 2, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 15, 0, 0),
(22, 2, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(23, 2, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 17, 0, 0),
(24, 2, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'a:2:{s:4:"size";s:0:"";s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0),
(25, 2, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'a:9:{s:7:"options";s:33:"允许评论|1\r\n不允许评论|0";s:7:"boxtype";s:5:"radio";s:9:"fieldtype";s:7:"tinyint";s:9:"minnumber";s:1:"1";s:5:"width";s:2:"88";s:4:"size";s:0:"";s:12:"defaultvalue";s:1:"1";s:10:"outputtype";s:1:"1";s:10:"filtertype";s:1:"0";}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0),
(26, 2, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 9, 0, 0),
(27, 2, 'inputtime', '真实发布时间', '', '', 0, 0, '', '', 'datetime', 'a:3:{s:9:"fieldtype";s:3:"int";s:6:"format";s:11:"Y-m-d H:i:s";s:11:"defaulttype";s:1:"0";}', '', '', '', 1, 1, 0, 0, 0, 0, 0, 1, 11, 0, 0),
(28, 2, 'posid', '推荐位', '', '', 0, 0, '', '', 'posid', 'a:4:{s:5:"width";s:3:"125";s:12:"defaultvalue";s:0:"";s:12:"backstagefun";s:0:"";s:8:"frontfun";s:0:"";}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 1, 11, 0, 0),
(29, 2, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 1, 12, 0, 0),
(30, 2, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(31, 2, 'relation', '相关文章', '', '', 0, 255, '', '', 'omnipotent', 'a:4:{s:8:"formtext";s:464:"<input type="hidden" name="info[relation]" id="relation" value="{FIELD_VALUE}" style="50" >\n<ul class="list-dot" id="relation_text">\n</ul>\n<input type="button" value="添加相关" onClick="omnipotent(''selectid'',GV.DIMAUB+''index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}'',''添加相关文章'',1)" class="btn">\n<span class="edit_content">\n  <input type="button" value="显示已有" onClick="show_relation({MODELID},{ID})" class="btn">\n</span>";s:9:"fieldtype";s:7:"varchar";s:12:"backstagefun";s:0:"";s:8:"frontfun";s:0:"";}', '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0),
(32, 2, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'a:9:{s:4:"size";s:2:"50";s:12:"defaultvalue";s:0:"";s:9:"show_type";s:1:"1";s:14:"upload_maxsize";s:4:"1024";s:15:"upload_allowext";s:20:"jpg|jpeg|gif|png|bmp";s:9:"watermark";s:1:"0";s:13:"isselectimage";s:1:"1";s:12:"images_width";s:0:"";s:13:"images_height";s:0:"";}', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 7, 0, 0),
(33, 2, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(34, 2, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'a:2:{s:9:"minnumber";s:0:"";s:12:"defaultvalue";s:0:"";}', '', '', '', 1, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(35, 2, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 3, 0, 0),
(36, 2, 'keywords', '关键词', '多关键词之间用空格隔开', '', 0, 40, '', '', 'keyword', 'a:2:{s:4:"size";s:3:"100";s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 4, 0, 0),
(37, 2, 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', 0, 0, '', '', 'tags', 'a:4:{s:12:"backstagefun";s:0:"";s:17:"backstagefun_type";s:1:"1";s:8:"frontfun";s:0:"";s:13:"frontfun_type";s:1:"1";}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 4, 0, 0),
(38, 2, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'a:4:{s:5:"width";s:2:"98";s:6:"height";s:2:"46";s:12:"defaultvalue";s:0:"";s:10:"enablehtml";s:1:"0";}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 5, 0, 0),
(39, 2, 'updatetime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'a:3:{s:9:"fieldtype";s:3:"int";s:6:"format";s:11:"Y-m-d H:i:s";s:11:"defaulttype";s:1:"0";}', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0),
(40, 2, 'content', '内容', '<style type="text/css">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'a:6:{s:7:"toolbar";s:4:"full";s:12:"defaultvalue";s:0:"";s:13:"enablekeylink";s:1:"1";s:10:"replacenum";s:1:"2";s:9:"link_mode";s:1:"0";s:15:"enablesaveimage";s:1:"1";}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 6, 0, 0),
(41, 3, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 15, 0, 0),
(42, 3, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(43, 3, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 17, 0, 0),
(44, 3, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'a:2:{s:4:"size";s:0:"";s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0),
(45, 3, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'a:9:{s:7:"options";s:33:"允许评论|1\r\n不允许评论|0";s:7:"boxtype";s:5:"radio";s:9:"fieldtype";s:7:"tinyint";s:9:"minnumber";s:1:"1";s:5:"width";s:2:"88";s:4:"size";s:0:"";s:12:"defaultvalue";s:1:"1";s:10:"outputtype";s:1:"1";s:10:"filtertype";s:1:"0";}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0),
(46, 3, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 9, 0, 0),
(47, 3, 'inputtime', '真实发布时间', '', '', 0, 0, '', '', 'datetime', 'a:3:{s:9:"fieldtype";s:3:"int";s:6:"format";s:11:"Y-m-d H:i:s";s:11:"defaulttype";s:1:"0";}', '', '', '', 1, 1, 0, 0, 0, 0, 0, 1, 11, 0, 0),
(48, 3, 'posid', '推荐位', '', '', 0, 0, '', '', 'posid', 'a:4:{s:5:"width";s:3:"125";s:12:"defaultvalue";s:0:"";s:12:"backstagefun";s:0:"";s:8:"frontfun";s:0:"";}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 1, 11, 0, 0),
(49, 3, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 1, 12, 0, 0),
(50, 3, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(51, 3, 'relation', '相关文章', '', '', 0, 255, '', '', 'omnipotent', 'a:4:{s:8:"formtext";s:464:"<input type="hidden" name="info[relation]" id="relation" value="{FIELD_VALUE}" style="50" >\n<ul class="list-dot" id="relation_text">\n</ul>\n<input type="button" value="添加相关" onClick="omnipotent(''selectid'',GV.DIMAUB+''index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}'',''添加相关文章'',1)" class="btn">\n<span class="edit_content">\n  <input type="button" value="显示已有" onClick="show_relation({MODELID},{ID})" class="btn">\n</span>";s:9:"fieldtype";s:7:"varchar";s:12:"backstagefun";s:0:"";s:8:"frontfun";s:0:"";}', '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0),
(52, 3, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'a:9:{s:4:"size";s:2:"50";s:12:"defaultvalue";s:0:"";s:9:"show_type";s:1:"1";s:14:"upload_maxsize";s:4:"1024";s:15:"upload_allowext";s:20:"jpg|jpeg|gif|png|bmp";s:9:"watermark";s:1:"0";s:13:"isselectimage";s:1:"1";s:12:"images_width";s:0:"";s:13:"images_height";s:0:"";}', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 7, 0, 0),
(53, 3, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(54, 3, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'a:2:{s:9:"minnumber";s:0:"";s:12:"defaultvalue";s:0:"";}', '', '', '', 1, 1, 0, 1, 1, 1, 0, 0, 2, 1, 0),
(55, 3, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 3, 0, 0),
(56, 3, 'keywords', '关键词', '多关键词之间用空格隔开', '', 0, 40, '', '', 'keyword', 'a:2:{s:4:"size";s:3:"100";s:12:"defaultvalue";s:0:"";}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 4, 1, 0),
(57, 3, 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', 0, 0, '', '', 'tags', 'a:4:{s:12:"backstagefun";s:0:"";s:17:"backstagefun_type";s:1:"1";s:8:"frontfun";s:0:"";s:13:"frontfun_type";s:1:"1";}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 4, 1, 0),
(58, 3, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'a:4:{s:5:"width";s:2:"98";s:6:"height";s:2:"46";s:12:"defaultvalue";s:0:"";s:10:"enablehtml";s:1:"0";}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 5, 0, 0),
(59, 3, 'updatetime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'a:3:{s:9:"fieldtype";s:3:"int";s:6:"format";s:11:"Y-m-d H:i:s";s:11:"defaulttype";s:1:"0";}', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0),
(60, 3, 'content', '内容', '<style type="text/css">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'a:6:{s:7:"toolbar";s:4:"full";s:12:"defaultvalue";s:0:"";s:13:"enablekeylink";s:1:"1";s:10:"replacenum";s:1:"2";s:9:"link_mode";s:1:"0";s:15:"enablesaveimage";s:1:"1";}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 6, 0, 0),
(61, 3, 'yhtouxiang', '用户头像', '', '', 0, 0, '', '', 'image', 'a:12:{s:5:"width";s:0:"";s:12:"defaultvalue";s:0:"";s:9:"show_type";s:1:"1";s:15:"upload_allowext";s:20:"gif|jpg|jpeg|png|bmp";s:9:"watermark";s:1:"0";s:13:"isselectimage";s:1:"1";s:12:"images_width";s:0:"";s:13:"images_height";s:0:"";s:12:"backstagefun";s:0:"";s:17:"backstagefun_type";s:1:"1";s:8:"frontfun";s:0:"";s:13:"frontfun_type";s:1:"1";}', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 4, 0, 0),
(62, 3, 'yhnicheng', '用户昵称', '', '', 0, 0, '', '', 'text', 'a:7:{s:4:"size";s:3:"100";s:12:"defaultvalue";s:0:"";s:10:"ispassword";s:1:"0";s:12:"backstagefun";s:0:"";s:17:"backstagefun_type";s:1:"1";s:8:"frontfun";s:0:"";s:13:"frontfun_type";s:1:"1";}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 0, 4, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_module`
--

CREATE TABLE IF NOT EXISTS `lvyecms_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext COMMENT '设置信息',
  `installtime` int(10) NOT NULL DEFAULT '0' COMMENT '安装时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

--
-- 转存表中的数据 `lvyecms_module`
--

INSERT INTO `lvyecms_module` (`module`, `modulename`, `sign`, `iscore`, `disabled`, `version`, `setting`, `installtime`, `updatetime`, `listorder`) VALUES
('Search', '搜索', '2e01dfe1d6be7e454aea66c442639b7e', 0, 1, '1.0.2', 'a:9:{s:7:"modelid";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}s:13:"relationenble";s:1:"1";s:7:"segment";s:1:"1";s:9:"dzsegment";s:1:"1";s:8:"pagesize";s:2:"10";s:9:"cachetime";s:1:"0";s:12:"sphinxenable";s:1:"0";s:10:"sphinxhost";s:0:"";s:10:"sphinxport";s:0:"";}', 1514511148, 1514511148, 0),
('Wap', 'WAP手机版', '4B7B06DA1101821D6AAE4B51BC96E6AF', 0, 1, '1.0.2', '', 1514511153, 1514511153, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_news`
--

CREATE TABLE IF NOT EXISTS `lvyecms_news` (
  `id` mediumint(8) unsigned NOT NULL,
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
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lvyecms_news`
--

INSERT INTO `lvyecms_news` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `tags`, `description`, `posid`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`, `views`, `yesterdayviews`, `dayviews`, `weekviews`, `monthviews`, `viewsupdatetime`) VALUES
(1, 65, 0, '这款智能镜子能模拟各种光线下的化妆效果', '', 'http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg', '', '', '化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...', 0, '/2017/gsxw_12/1.shtml', 0, 99, 1, 0, 'admin', 1514379159, 1514379159, 0, 0, 0, 0, 0, 0),
(2, 65, 0, '范德萨范德萨范德萨范德萨范德萨范德萨', '', 'http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg', '', '', '化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...', 0, '/2017/gsxw_12/2.shtml', 0, 99, 1, 0, 'admin', 1514379166, 1514379166, 0, 0, 0, 0, 0, 0),
(3, 65, 0, '范德萨范德萨范德萨范德萨范德萨范德萨范德萨分', '', 'http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg', '', '', '化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...', 0, '/2017/gsxw_12/3.shtml', 0, 99, 1, 0, 'admin', 1514379174, 1514379174, 0, 0, 0, 0, 0, 0),
(4, 65, 0, '百分爽vdfsaftrhhffgsa法国队sag好热法国队撒', '', 'http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg', '', '', '化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...', 0, '/2017/gsxw_12/4.shtml', 0, 99, 1, 0, 'admin', 1514379182, 1514379182, 0, 0, 0, 0, 0, 0),
(5, 65, 0, '规范的地方sag范德萨士大夫大赛', '', 'http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg', '', '', '化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...', 0, '/2017/gsxw_12/5.shtml', 0, 99, 1, 0, 'admin', 1514379198, 1514379198, 0, 0, 0, 0, 0, 0),
(6, 66, 0, '业内大咖齐聚广州，共寻智慧大门金钥匙', '', 'http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg', '', '', '昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...', 0, '/2017/hyxw_12/6.shtml', 0, 99, 1, 0, 'admin', 1514379221, 1514379221, 0, 0, 0, 0, 0, 0),
(7, 66, 0, '广佛都市网发饿倒萨范德萨', '', 'http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg', '', '', '昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...', 0, '/2017/hyxw_12/7.shtml', 0, 99, 1, 0, 'admin', 1514379229, 1514379229, 0, 0, 0, 0, 0, 0),
(8, 66, 0, '不过幅度将会通过热发生大幅度撒', '', 'http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg', '', '', '昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...', 0, '/2017/hyxw_12/8.shtml', 0, 99, 1, 0, 'admin', 1514379234, 1514379234, 0, 0, 0, 0, 0, 0),
(9, 66, 0, '他如何规范的得分为购房人无法大厦', '', 'http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg', '', '', '昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...', 0, '/2017/hyxw_12/9.shtml', 0, 99, 1, 0, 'admin', 1514379239, 1514379239, 3, 0, 2, 3, 3, 1514531864);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_news_data`
--

CREATE TABLE IF NOT EXISTS `lvyecms_news_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lvyecms_news_data`
--

INSERT INTO `lvyecms_news_data` (`id`, `content`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `allow_comment`, `relation`) VALUES
(1, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　Sensor Mirror Pro Wide-View的价格并不便宜，达到了$400美元。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(2, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　Sensor Mirror Pro Wide-View的价格并不便宜，达到了$400美元。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(3, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　Sensor Mirror Pro Wide-View的价格并不便宜，达到了$400美元。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(4, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　Sensor Mirror Pro Wide-View的价格并不便宜，达到了$400美元。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(5, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜Sensor Mirror Pro Wide-View。这款镜子可以模拟各种各样的色温。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1214114U1-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　用户通过Wi-Fi连接配套的iOS或Android 应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　Sensor Mirror Pro Wide-View的价格并不便宜，达到了$400美元。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(6, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121544J-1.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　机器人Nao在欢迎嘉宾</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121535G-2.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　千家智客总经理 喻娟致辞</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(7, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121544J-1.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　机器人Nao在欢迎嘉宾</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121535G-2.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　千家智客总经理 喻娟致辞</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(8, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121544J-1.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　机器人Nao在欢迎嘉宾</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121535G-2.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　千家智客总经理 喻娟致辞</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。</p><p><br/></p>', 2, 10000, '', 0, 1, ''),
(9, '<p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1212154G8-0.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121544J-1.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　机器人Nao在欢迎嘉宾</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/12121535G-2.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　千家智客总经理 喻娟致辞</p><p style="margin-top: 0px; margin-bottom: 13px; padding: 0px; border: none; text-indent: 2em; font-size: 14px; font-family: 宋体; color: rgb(102, 102, 102); line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。</p><p><br/></p>', 2, 10000, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_operationlog`
--

CREATE TABLE IF NOT EXISTS `lvyecms_operationlog` (
  `id` int(11) NOT NULL COMMENT '日志ID',
  `uid` smallint(6) NOT NULL DEFAULT '0' COMMENT '操作帐号ID',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text COMMENT '其他说明',
  `get` varchar(255) NOT NULL DEFAULT '' COMMENT 'get数据'
) ENGINE=MyISAM AUTO_INCREMENT=959 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

--
-- 转存表中的数据 `lvyecms_operationlog`
--

INSERT INTO `lvyecms_operationlog` (`id`, `uid`, `time`, `ip`, `status`, `info`, `get`) VALUES
(1, 1, 1514360814, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Template&m=Theme&menuid=96'),
(2, 1, 1514361377, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(3, 1, 1514361568, '10.6.1.195', 1, '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Models&a=add&menuid=54'),
(4, 1, 1514361580, '10.6.1.195', 1, '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Models&a=add&menuid=54'),
(5, 1, 1514361714, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&menuid=47'),
(6, 1, 1514361808, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&menuid=47'),
(7, 1, 1514362077, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&menuid=47'),
(8, 1, 1514362248, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&menuid=47'),
(9, 1, 1514362294, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&menuid=47'),
(10, 1, 1514362482, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&menuid=47'),
(11, 1, 1514362542, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">6</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(12, 1, 1514362542, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(13, 1, 1514363151, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=1'),
(14, 1, 1514363157, '10.6.1.195', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(15, 1, 1514363157, '10.6.1.195', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(16, 1, 1514363157, '10.6.1.195', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(17, 1, 1514363159, '10.6.1.195', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(18, 1, 1514363159, '10.6.1.195', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(19, 1, 1514363159, '10.6.1.195', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(20, 1, 1514363160, '10.6.1.195', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(21, 1, 1514363160, '10.6.1.195', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(22, 1, 1514363160, '10.6.1.195', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(23, 1, 1514363160, '10.6.1.195', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(24, 1, 1514363161, '10.6.1.195', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(25, 1, 1514363161, '10.6.1.195', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(26, 1, 1514363161, '10.6.1.195', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(27, 1, 1514363164, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(28, 1, 1514363166, '10.6.1.195', 1, '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(29, 1, 1514363178, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=1'),
(30, 1, 1514363203, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=2'),
(31, 1, 1514363219, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=3'),
(32, 1, 1514363237, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=4'),
(33, 1, 1514363255, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=5'),
(34, 1, 1514363315, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&menuid=47'),
(35, 1, 1514363413, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=6'),
(36, 1, 1514363415, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">7</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(37, 1, 1514363416, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(38, 1, 1514363476, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=6'),
(39, 1, 1514363478, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">7</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(40, 1, 1514363478, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(41, 1, 1514363532, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&parentid=1'),
(42, 1, 1514363554, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&parentid=1'),
(43, 1, 1514363569, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">9</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&menuid=47'),
(44, 1, 1514363569, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(45, 1, 1514365062, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=7'),
(46, 1, 1514365064, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">9</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(47, 1, 1514365064, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(48, 1, 1514365104, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&parentid=1'),
(49, 1, 1514365107, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">10</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(50, 1, 1514365107, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(51, 1, 1514365163, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=2'),
(52, 1, 1514365180, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=2'),
(53, 1, 1514365183, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">12</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(54, 1, 1514365183, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(55, 1, 1514365519, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(56, 1, 1514365843, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(57, 1, 1514365865, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(58, 1, 1514365897, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(59, 1, 1514365922, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(60, 1, 1514365997, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(61, 1, 1514366065, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(62, 1, 1514366089, '10.6.1.195', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&parentid=3'),
(63, 1, 1514366093, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">20</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(64, 1, 1514366093, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(65, 1, 1514366118, '10.6.1.195', 1, '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(66, 1, 1514377139, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(67, 1, 1514377466, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(68, 1, 1514377476, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(69, 1, 1514377476, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(70, 1, 1514377477, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(71, 1, 1514377477, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(72, 1, 1514377477, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(73, 1, 1514377478, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(74, 1, 1514377478, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(75, 1, 1514377478, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(76, 1, 1514377479, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(77, 1, 1514377479, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(78, 1, 1514377479, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(79, 1, 1514377480, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(80, 1, 1514377480, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(81, 1, 1514377480, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(82, 1, 1514377481, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(83, 1, 1514377481, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(84, 1, 1514377481, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(85, 1, 1514377481, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(86, 1, 1514377482, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(87, 1, 1514377482, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(88, 1, 1514377482, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(89, 1, 1514377483, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(90, 1, 1514377495, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=1'),
(91, 1, 1514377510, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">20</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(92, 1, 1514377511, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(93, 1, 1514377514, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(94, 1, 1514377514, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(95, 1, 1514377514, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(96, 1, 1514377698, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=62'),
(97, 1, 1514377911, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(98, 1, 1514377912, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(99, 1, 1514377912, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(100, 1, 1514377927, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(101, 1, 1514377930, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(102, 1, 1514377930, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(103, 1, 1514377930, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(104, 1, 1514377931, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(105, 1, 1514377931, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(106, 1, 1514377931, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(107, 1, 1514377932, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(108, 1, 1514377932, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(109, 1, 1514377932, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(110, 1, 1514377933, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(111, 1, 1514377933, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(112, 1, 1514377933, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(113, 1, 1514377934, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(114, 1, 1514377934, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(115, 1, 1514377934, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(116, 1, 1514377935, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(117, 1, 1514377935, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(118, 1, 1514377935, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(119, 1, 1514377936, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(120, 1, 1514377936, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(121, 1, 1514377936, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(122, 1, 1514377937, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(123, 1, 1514377955, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(124, 1, 1514377957, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(125, 1, 1514377957, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(126, 1, 1514377958, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(127, 1, 1514377958, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(128, 1, 1514377958, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(129, 1, 1514377959, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(130, 1, 1514377959, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(131, 1, 1514377959, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(132, 1, 1514377960, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(133, 1, 1514377960, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(134, 1, 1514377960, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(135, 1, 1514377961, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(136, 1, 1514377961, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(137, 1, 1514377961, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(138, 1, 1514377961, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(139, 1, 1514377962, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(140, 1, 1514377962, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(141, 1, 1514377962, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(142, 1, 1514377963, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(143, 1, 1514377963, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(144, 1, 1514377963, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(145, 1, 1514377964, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(146, 1, 1514377976, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=62'),
(147, 1, 1514377981, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=63'),
(148, 1, 1514377988, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=64'),
(149, 1, 1514377994, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=65'),
(150, 1, 1514377999, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=66'),
(151, 1, 1514378005, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">20</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(152, 1, 1514378005, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(153, 1, 1514378008, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(154, 1, 1514378008, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(155, 1, 1514378009, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(156, 1, 1514378009, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(157, 1, 1514378009, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(158, 1, 1514378010, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(159, 1, 1514378010, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(160, 1, 1514378010, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(161, 1, 1514378011, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(162, 1, 1514378011, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(163, 1, 1514378011, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(164, 1, 1514378012, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(165, 1, 1514378012, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(166, 1, 1514378012, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(167, 1, 1514378013, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(168, 1, 1514378013, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(169, 1, 1514378013, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(170, 1, 1514378014, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(171, 1, 1514378014, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(172, 1, 1514378015, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(173, 1, 1514378015, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(174, 1, 1514378015, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(175, 1, 1514378035, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(176, 1, 1514378036, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(177, 1, 1514378036, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(178, 1, 1514378036, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(179, 1, 1514378037, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(180, 1, 1514378037, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(181, 1, 1514378037, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(182, 1, 1514378038, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(183, 1, 1514378038, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(184, 1, 1514378038, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(185, 1, 1514378039, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(186, 1, 1514378039, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(187, 1, 1514378039, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(188, 1, 1514378040, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(189, 1, 1514378040, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(190, 1, 1514378040, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(191, 1, 1514378041, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(192, 1, 1514378041, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(193, 1, 1514378041, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(194, 1, 1514378042, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(195, 1, 1514378042, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(196, 1, 1514378042, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(197, 1, 1514378139, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(198, 1, 1514378139, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(199, 1, 1514378139, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(200, 1, 1514378272, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(201, 1, 1514378272, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(202, 1, 1514378272, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(203, 1, 1514378311, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=62'),
(204, 1, 1514378316, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=63'),
(205, 1, 1514378321, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=64'),
(206, 1, 1514378324, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">20</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(207, 1, 1514378324, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(208, 1, 1514378333, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(209, 1, 1514378333, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(210, 1, 1514378333, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(211, 1, 1514378334, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(212, 1, 1514378334, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(213, 1, 1514378334, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(214, 1, 1514378376, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(215, 1, 1514378376, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(216, 1, 1514378376, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(217, 1, 1514378377, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(218, 1, 1514378377, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(219, 1, 1514378404, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(220, 1, 1514378404, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(221, 1, 1514378405, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(222, 1, 1514378405, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(223, 1, 1514378405, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(224, 1, 1514378420, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(225, 1, 1514378420, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(226, 1, 1514378420, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(227, 1, 1514378421, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(228, 1, 1514378421, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(229, 1, 1514378477, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(230, 1, 1514378477, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(231, 1, 1514378478, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(232, 1, 1514378478, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(233, 1, 1514378478, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(234, 1, 1514378502, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(235, 1, 1514378503, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(236, 1, 1514378503, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(237, 1, 1514378503, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(238, 1, 1514378503, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(239, 1, 1514378520, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(240, 1, 1514378521, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(241, 1, 1514378521, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(242, 1, 1514378521, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(243, 1, 1514378522, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(244, 1, 1514378547, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(245, 1, 1514378547, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(246, 1, 1514378547, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(247, 1, 1514378548, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(248, 1, 1514378548, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(249, 1, 1514378591, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(250, 1, 1514378591, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(251, 1, 1514378592, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer=');
INSERT INTO `lvyecms_operationlog` (`id`, `uid`, `time`, `ip`, `status`, `info`, `get`) VALUES
(252, 1, 1514378592, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(253, 1, 1514378592, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(254, 1, 1514378608, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(255, 1, 1514378608, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(256, 1, 1514378609, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(257, 1, 1514378609, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(258, 1, 1514378609, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(259, 1, 1514378740, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=63'),
(260, 1, 1514378750, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：attach<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=attach&menuid=8'),
(261, 1, 1514378753, '127.0.0.1', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(262, 1, 1514378754, '127.0.0.1', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(263, 1, 1514378754, '127.0.0.1', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(264, 1, 1514378756, '127.0.0.1', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(265, 1, 1514378756, '127.0.0.1', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(266, 1, 1514378756, '127.0.0.1', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(267, 1, 1514378757, '127.0.0.1', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(268, 1, 1514378757, '127.0.0.1', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(269, 1, 1514378757, '127.0.0.1', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(270, 1, 1514378758, '127.0.0.1', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(271, 1, 1514378758, '127.0.0.1', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(272, 1, 1514378758, '127.0.0.1', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(273, 1, 1514378759, '127.0.0.1', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(274, 1, 1514378773, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=63'),
(275, 1, 1514378778, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(276, 1, 1514378778, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(277, 1, 1514378778, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(278, 1, 1514378811, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=64'),
(279, 1, 1514379095, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(280, 1, 1514379096, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(281, 1, 1514379096, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(282, 1, 1514379097, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(283, 1, 1514379098, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(284, 1, 1514379098, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(285, 1, 1514379098, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(286, 1, 1514379099, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(287, 1, 1514379099, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(288, 1, 1514379099, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(289, 1, 1514379099, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(290, 1, 1514379100, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(291, 1, 1514379100, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(292, 1, 1514379100, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(293, 1, 1514379101, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(294, 1, 1514379101, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(295, 1, 1514379101, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(296, 1, 1514379102, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(297, 1, 1514379102, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(298, 1, 1514379102, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(299, 1, 1514379103, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(300, 1, 1514379103, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(301, 1, 1514379103, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(302, 1, 1514379104, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(303, 1, 1514379104, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(304, 1, 1514379159, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=65'),
(305, 1, 1514379166, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=65'),
(306, 1, 1514379174, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=65'),
(307, 1, 1514379182, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=65'),
(308, 1, 1514379191, '127.0.0.1', 1, '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=edit&catid=65&id=3'),
(309, 1, 1514379198, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=65'),
(310, 1, 1514379222, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=66'),
(311, 1, 1514379229, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=66'),
(312, 1, 1514379234, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=66'),
(313, 1, 1514379239, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=66'),
(314, 1, 1514379495, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(315, 1, 1514379495, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(316, 1, 1514379496, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(317, 1, 1514379496, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(318, 1, 1514379496, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(319, 1, 1514379552, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(320, 1, 1514379552, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(321, 1, 1514379552, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(322, 1, 1514379571, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(323, 1, 1514379571, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(324, 1, 1514379572, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(325, 1, 1514379601, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(326, 1, 1514379601, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(327, 1, 1514379602, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(328, 1, 1514379614, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(329, 1, 1514379614, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(330, 1, 1514379615, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(331, 1, 1514379636, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(332, 1, 1514379637, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(333, 1, 1514379637, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(334, 1, 1514379679, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(335, 1, 1514379681, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(336, 1, 1514379681, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(337, 1, 1514379731, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(338, 1, 1514379732, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(339, 1, 1514379732, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(340, 1, 1514379754, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(341, 1, 1514379754, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(342, 1, 1514379754, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(343, 1, 1514379785, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(344, 1, 1514379785, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(345, 1, 1514379785, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(346, 1, 1514379798, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(347, 1, 1514379798, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(348, 1, 1514379799, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(349, 1, 1514380236, '127.0.0.1', 1, '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&menuid=72'),
(350, 1, 1514380236, '127.0.0.1', 1, '提示语：开始更新 ..公司新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show'),
(351, 1, 1514380237, '127.0.0.1', 1, '提示语：开始更新 ..行业新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1'),
(352, 1, 1514380237, '127.0.0.1', 1, '提示语：开始更新 ..定制橱柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=1'),
(353, 1, 1514380237, '127.0.0.1', 1, '提示语：开始更新 ..定制衣橱 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=2'),
(354, 1, 1514380237, '127.0.0.1', 1, '提示语：开始更新 ..定制鞋柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=3'),
(355, 1, 1514380238, '127.0.0.1', 1, '提示语：开始更新 ..定制卫浴柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=4'),
(356, 1, 1514380238, '127.0.0.1', 1, '提示语：开始更新 ..定制背景墙 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=5'),
(357, 1, 1514380238, '127.0.0.1', 1, '提示语：开始更新 ..定制室内门 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=6'),
(358, 1, 1514380239, '127.0.0.1', 1, '提示语：开始更新 ..定制门窗套 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=7'),
(359, 1, 1514380239, '127.0.0.1', 1, '提示语：开始更新 ..定制踢脚线 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=8'),
(360, 1, 1514380239, '127.0.0.1', 1, '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=9'),
(361, 1, 1514380326, '127.0.0.1', 1, '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=update_show'),
(362, 1, 1514380326, '127.0.0.1', 1, '提示语：开始更新 ..公司新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show'),
(363, 1, 1514380327, '127.0.0.1', 1, '提示语：开始更新 ..行业新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1'),
(364, 1, 1514380327, '127.0.0.1', 1, '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=1'),
(365, 1, 1514380469, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(366, 1, 1514380469, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(367, 1, 1514380470, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(368, 1, 1514380470, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(369, 1, 1514380470, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(370, 1, 1514380499, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(371, 1, 1514380499, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(372, 1, 1514380499, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(373, 1, 1514380500, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(374, 1, 1514380500, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(375, 1, 1514380868, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(376, 1, 1514380868, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(377, 1, 1514380868, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(378, 1, 1514380874, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(379, 1, 1514380886, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=3'),
(380, 1, 1514380888, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">20</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(381, 1, 1514380888, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(382, 1, 1514380902, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(383, 1, 1514380902, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(384, 1, 1514380902, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(385, 1, 1514381069, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(386, 1, 1514381069, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(387, 1, 1514381070, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(388, 1, 1514381106, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=67'),
(389, 1, 1514381111, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=68'),
(390, 1, 1514381121, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=69'),
(391, 1, 1514381128, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=70'),
(392, 1, 1514381136, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=71'),
(393, 1, 1514381159, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=72'),
(394, 1, 1514381166, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=73'),
(395, 1, 1514381174, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=74'),
(396, 1, 1514381210, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">20</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(397, 1, 1514381210, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(398, 1, 1514382087, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=67'),
(399, 1, 1514382106, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=67'),
(400, 1, 1514382119, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=67'),
(401, 1, 1514382136, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=67'),
(402, 1, 1514382161, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=68'),
(403, 1, 1514382174, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=68'),
(404, 1, 1514382188, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=68'),
(405, 1, 1514382198, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(406, 1, 1514382198, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(407, 1, 1514382199, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(408, 1, 1514382199, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(409, 1, 1514382199, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(410, 1, 1514382200, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(411, 1, 1514382200, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(412, 1, 1514382200, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(413, 1, 1514382201, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(414, 1, 1514382201, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(415, 1, 1514382201, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(416, 1, 1514382334, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(417, 1, 1514382334, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(418, 1, 1514382335, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(419, 1, 1514382335, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(420, 1, 1514382335, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(421, 1, 1514382336, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(422, 1, 1514382336, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(423, 1, 1514382336, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(424, 1, 1514382337, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(425, 1, 1514382337, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(426, 1, 1514382337, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(427, 1, 1514382374, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(428, 1, 1514382375, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(429, 1, 1514382375, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(430, 1, 1514382375, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(431, 1, 1514382376, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(432, 1, 1514382376, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(433, 1, 1514382376, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(434, 1, 1514382377, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(435, 1, 1514382377, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(436, 1, 1514382377, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(437, 1, 1514382378, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(438, 1, 1514382394, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(439, 1, 1514382394, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(440, 1, 1514382394, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(441, 1, 1514382395, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(442, 1, 1514382395, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(443, 1, 1514382395, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(444, 1, 1514382395, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(445, 1, 1514382396, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(446, 1, 1514382396, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(447, 1, 1514382396, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(448, 1, 1514382397, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(449, 1, 1514382415, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(450, 1, 1514382415, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(451, 1, 1514382416, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(452, 1, 1514382438, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(453, 1, 1514382438, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(454, 1, 1514382439, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(455, 1, 1514382778, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=4'),
(456, 1, 1514461128, '127.0.0.1', 1, '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&menuid=47'),
(457, 1, 1514461161, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&parentid=6'),
(458, 1, 1514461186, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=singlepage&parentid=6'),
(459, 1, 1514461189, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">22</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(460, 1, 1514461189, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(461, 1, 1514461232, '127.0.0.1', 1, '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Models&a=add&menuid=54'),
(462, 1, 1514461262, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Field&modelid=3'),
(463, 1, 1514461266, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Field&modelid=3'),
(464, 1, 1514461268, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Field&modelid=3'),
(465, 1, 1514461324, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Field&a=add&modelid=3'),
(466, 1, 1514461337, '127.0.0.1', 1, '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Field&modelid=3'),
(467, 1, 1514461372, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Field&a=add&modelid=3'),
(468, 1, 1514461378, '127.0.0.1', 1, '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Field&modelid=3'),
(469, 1, 1514461401, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=4'),
(470, 1, 1514461403, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">22</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(471, 1, 1514461404, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(472, 1, 1514461520, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=4'),
(473, 1, 1514461557, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=4'),
(474, 1, 1514461576, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=4'),
(475, 1, 1514461625, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=4'),
(476, 1, 1514461628, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">22</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(477, 1, 1514461628, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(478, 1, 1514461764, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(479, 1, 1514461765, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(480, 1, 1514461765, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(481, 1, 1514462001, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(482, 1, 1514462001, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(483, 1, 1514462001, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(484, 1, 1514462030, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(485, 1, 1514462030, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(486, 1, 1514462031, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(487, 1, 1514462041, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(488, 1, 1514462041, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(489, 1, 1514462041, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(490, 1, 1514462216, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=5'),
(491, 1, 1514462222, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(492, 1, 1514462222, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(493, 1, 1514462222, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(494, 1, 1514462703, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=75'),
(495, 1, 1514462711, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=76'),
(496, 1, 1514462715, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">22</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(497, 1, 1514462715, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(498, 1, 1514462720, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(499, 1, 1514462721, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(500, 1, 1514462721, '127.0.0.1', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(501, 1, 1514462721, '127.0.0.1', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(502, 1, 1514462722, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(503, 1, 1514462741, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=6'),
(504, 1, 1514462745, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">22</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(505, 1, 1514462746, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(506, 1, 1514462751, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(507, 1, 1514462751, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(508, 1, 1514462751, '127.0.0.1', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(509, 1, 1514462752, '127.0.0.1', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(510, 1, 1514462752, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(511, 1, 1514462821, '127.0.0.1', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=76'),
(512, 1, 1514462826, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(513, 1, 1514462826, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(514, 1, 1514462826, '127.0.0.1', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer=');
INSERT INTO `lvyecms_operationlog` (`id`, `uid`, `time`, `ip`, `status`, `info`, `get`) VALUES
(515, 1, 1514462827, '127.0.0.1', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(516, 1, 1514462827, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(517, 1, 1514462942, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(518, 1, 1514462943, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(519, 1, 1514462943, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(520, 1, 1514462952, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=7'),
(521, 1, 1514462954, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">22</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(522, 1, 1514462954, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(523, 1, 1514462957, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(524, 1, 1514462957, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(525, 1, 1514462957, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(526, 1, 1514463010, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend&menuid=8'),
(527, 1, 1514463036, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(528, 1, 1514463084, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(529, 1, 1514463101, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(530, 1, 1514463105, '127.0.0.1', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(531, 1, 1514463106, '127.0.0.1', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(532, 1, 1514463106, '127.0.0.1', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(533, 1, 1514463109, '127.0.0.1', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(534, 1, 1514463109, '127.0.0.1', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(535, 1, 1514463110, '127.0.0.1', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(536, 1, 1514463110, '127.0.0.1', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(537, 1, 1514463110, '127.0.0.1', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(538, 1, 1514463110, '127.0.0.1', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(539, 1, 1514463111, '127.0.0.1', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(540, 1, 1514463111, '127.0.0.1', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(541, 1, 1514463111, '127.0.0.1', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(542, 1, 1514463112, '127.0.0.1', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(543, 1, 1514463148, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(544, 1, 1514463148, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(545, 1, 1514463148, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(546, 1, 1514463162, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(547, 1, 1514463169, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(548, 1, 1514463172, '127.0.0.1', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(549, 1, 1514463173, '127.0.0.1', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(550, 1, 1514463173, '127.0.0.1', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(551, 1, 1514463174, '127.0.0.1', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(552, 1, 1514463174, '127.0.0.1', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(553, 1, 1514463175, '127.0.0.1', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(554, 1, 1514463176, '127.0.0.1', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(555, 1, 1514463176, '127.0.0.1', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(556, 1, 1514463176, '127.0.0.1', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(557, 1, 1514463177, '127.0.0.1', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(558, 1, 1514463177, '127.0.0.1', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(559, 1, 1514463177, '127.0.0.1', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(560, 1, 1514463178, '127.0.0.1', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(561, 1, 1514463179, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(562, 1, 1514463180, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(563, 1, 1514463180, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(564, 1, 1514463284, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&menuid=8'),
(565, 1, 1514463304, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend&menuid=8'),
(566, 1, 1514463317, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(567, 1, 1514463362, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend&menuid=8'),
(568, 1, 1514463375, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(569, 1, 1514463385, '127.0.0.1', 1, '提示语：扩展配置项添加成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(570, 1, 1514463432, '127.0.0.1', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&a=extend'),
(571, 1, 1514463690, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(572, 1, 1514463693, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(573, 1, 1514463693, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(574, 1, 1514463693, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(575, 1, 1514463694, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(576, 1, 1514463694, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(577, 1, 1514463694, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(578, 1, 1514463695, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(579, 1, 1514463695, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(580, 1, 1514463695, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(581, 1, 1514463696, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(582, 1, 1514463696, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(583, 1, 1514463696, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(584, 1, 1514463696, '127.0.0.1', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(585, 1, 1514463697, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(586, 1, 1514463697, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(587, 1, 1514463697, '127.0.0.1', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(588, 1, 1514463698, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(589, 1, 1514463698, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(590, 1, 1514463698, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(591, 1, 1514463699, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(592, 1, 1514463699, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(593, 1, 1514463699, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(594, 1, 1514463700, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(595, 1, 1514463700, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(596, 1, 1514463721, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(597, 1, 1514463722, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(598, 1, 1514463722, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(599, 1, 1514463722, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(600, 1, 1514463723, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(601, 1, 1514463724, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(602, 1, 1514463724, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(603, 1, 1514463724, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(604, 1, 1514463725, '127.0.0.1', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(605, 1, 1514463726, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(606, 1, 1514463726, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(607, 1, 1514463726, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(608, 1, 1514463727, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(609, 1, 1514463727, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(610, 1, 1514463727, '127.0.0.1', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(611, 1, 1514463728, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(612, 1, 1514463728, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(613, 1, 1514463728, '127.0.0.1', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(614, 1, 1514463728, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(615, 1, 1514463729, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(616, 1, 1514463729, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(617, 1, 1514463729, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(618, 1, 1514463730, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(619, 1, 1514463730, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(620, 1, 1514463731, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(621, 1, 1514463731, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(622, 1, 1514463733, '127.0.0.1', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(623, 1, 1514463733, '127.0.0.1', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(624, 1, 1514463733, '127.0.0.1', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(625, 1, 1514463733, '127.0.0.1', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(626, 1, 1514463734, '127.0.0.1', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(627, 1, 1514463734, '127.0.0.1', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(628, 1, 1514463734, '127.0.0.1', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(629, 1, 1514463735, '127.0.0.1', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(630, 1, 1514463736, '127.0.0.1', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(631, 1, 1514463736, '127.0.0.1', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(632, 1, 1514463737, '127.0.0.1', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(633, 1, 1514463737, '127.0.0.1', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(634, 1, 1514463737, '127.0.0.1', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(635, 1, 1514463738, '127.0.0.1', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(636, 1, 1514463738, '127.0.0.1', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(637, 1, 1514463738, '127.0.0.1', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(638, 1, 1514463738, '127.0.0.1', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(639, 1, 1514463739, '127.0.0.1', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(640, 1, 1514463739, '127.0.0.1', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(641, 1, 1514463739, '127.0.0.1', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(642, 1, 1514463740, '127.0.0.1', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(643, 1, 1514463740, '127.0.0.1', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(644, 1, 1514463740, '127.0.0.1', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(645, 1, 1514463741, '127.0.0.1', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(646, 1, 1514463781, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=add&menuid=47'),
(647, 1, 1514463786, '127.0.0.1', 1, '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category'),
(648, 1, 1514463790, '127.0.0.1', 1, '提示语：栏目总数:<font color="#FF0000">23</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category'),
(649, 1, 1514463790, '127.0.0.1', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(650, 1, 1514463839, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=77'),
(651, 1, 1514463854, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=77'),
(652, 1, 1514463868, '127.0.0.1', 1, '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=77'),
(653, 1, 1514463928, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(654, 1, 1514464614, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(655, 1, 1514464660, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(656, 1, 1514464672, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(657, 1, 1514464932, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(658, 1, 1514465243, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(659, 1, 1514466413, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(660, 1, 1514466525, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(661, 1, 1514466709, '127.0.0.1', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(662, 1, 1514511148, '10.6.1.195', 1, '提示语：模块安装成功！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Module&a=install&module=Search'),
(663, 1, 1514511153, '10.6.1.195', 1, '提示语：模块安装成功！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Module&a=install&module=Wap'),
(664, 1, 1514511170, '10.6.1.195', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(665, 1, 1514511170, '10.6.1.195', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(666, 1, 1514511170, '10.6.1.195', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(667, 1, 1514511172, '10.6.1.195', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(668, 1, 1514511172, '10.6.1.195', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(669, 1, 1514511172, '10.6.1.195', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(670, 1, 1514511172, '10.6.1.195', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(671, 1, 1514511173, '10.6.1.195', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(672, 1, 1514511173, '10.6.1.195', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(673, 1, 1514511173, '10.6.1.195', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(674, 1, 1514511173, '10.6.1.195', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(675, 1, 1514511174, '10.6.1.195', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(676, 1, 1514511174, '10.6.1.195', 1, '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(677, 1, 1514511174, '10.6.1.195', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=10'),
(678, 1, 1514511176, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(679, 1, 1514511178, '10.6.1.195', 1, '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(680, 1, 1514511828, '10.6.1.195', 0, '提示语：该页面不存在！<br/>模块：Search,控制器：Search,方法：creat<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(681, 1, 1514511899, '10.6.1.195', 0, '提示语：该页面不存在！<br/>模块：Search,控制器：Search,方法：creat<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=searchot&menuid=119'),
(682, 1, 1514511958, '10.6.1.195', 0, '提示语：该页面不存在！<br/>模块：Search,控制器：Search,方法：creat<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(683, 1, 1514511961, '10.6.1.195', 0, '提示语：该页面不存在！<br/>模块：Search,控制器：Search,方法：creat<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=searchot&menuid=119'),
(684, 1, 1514511973, '10.6.1.195', 1, '提示语：配置修改成功！<br/>模块：Search,控制器：Search,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(685, 1, 1514511976, '10.6.1.195', 0, '提示语：该页面不存在！<br/>模块：Search,控制器：Search,方法：creat<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(686, 1, 1514512065, '10.6.1.195', 0, '提示语：该页面不存在！<br/>模块：Search,控制器：Search,方法：creat<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(687, 1, 1514512292, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(688, 1, 1514512296, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(689, 1, 1514512297, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(690, 1, 1514512297, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(691, 1, 1514512297, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(692, 1, 1514512298, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(693, 1, 1514515764, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(694, 1, 1514515768, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(695, 1, 1514515771, '10.6.1.195', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(696, 1, 1514515771, '10.6.1.195', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(697, 1, 1514515771, '10.6.1.195', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(698, 1, 1514515771, '10.6.1.195', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(699, 1, 1514515772, '10.6.1.195', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(700, 1, 1514515772, '10.6.1.195', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(701, 1, 1514515772, '10.6.1.195', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(702, 1, 1514515772, '10.6.1.195', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(703, 1, 1514515773, '10.6.1.195', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(704, 1, 1514515773, '10.6.1.195', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(705, 1, 1514515773, '10.6.1.195', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(706, 1, 1514515774, '10.6.1.195', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(707, 1, 1514515774, '10.6.1.195', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(708, 1, 1514515774, '10.6.1.195', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(709, 1, 1514515774, '10.6.1.195', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(710, 1, 1514515775, '10.6.1.195', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(711, 1, 1514515775, '10.6.1.195', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(712, 1, 1514515775, '10.6.1.195', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(713, 1, 1514515775, '10.6.1.195', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(714, 1, 1514515776, '10.6.1.195', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(715, 1, 1514515776, '10.6.1.195', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(716, 1, 1514515776, '10.6.1.195', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(717, 1, 1514515776, '10.6.1.195', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(718, 1, 1514515777, '10.6.1.195', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(719, 1, 1514515779, '10.6.1.195', 1, '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&menuid=72'),
(720, 1, 1514515779, '10.6.1.195', 1, '提示语：开始更新 ..公司新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show'),
(721, 1, 1514515780, '10.6.1.195', 1, '提示语：开始更新 ..行业新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1'),
(722, 1, 1514515780, '10.6.1.195', 1, '提示语：开始更新 ..定制橱柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=1'),
(723, 1, 1514515780, '10.6.1.195', 1, '提示语：开始更新 ..定制衣橱 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=2'),
(724, 1, 1514515780, '10.6.1.195', 1, '提示语：开始更新 ..定制鞋柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=3'),
(725, 1, 1514515781, '10.6.1.195', 1, '提示语：开始更新 ..定制卫浴柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=4'),
(726, 1, 1514515781, '10.6.1.195', 1, '提示语：开始更新 ..定制背景墙 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=5'),
(727, 1, 1514515782, '10.6.1.195', 1, '提示语：开始更新 ..定制室内门 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=6'),
(728, 1, 1514515783, '10.6.1.195', 1, '提示语：开始更新 ..定制门窗套 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=7'),
(729, 1, 1514515784, '10.6.1.195', 1, '提示语：开始更新 ..定制踢脚线 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=8'),
(730, 1, 1514515785, '10.6.1.195', 1, '提示语：开始更新 ..晒家分享 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=9'),
(731, 1, 1514515786, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=10'),
(732, 1, 1514515875, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(733, 1, 1514515877, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(734, 1, 1514515878, '10.6.1.195', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(735, 1, 1514515878, '10.6.1.195', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(736, 1, 1514515879, '10.6.1.195', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(737, 1, 1514515879, '10.6.1.195', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(738, 1, 1514515879, '10.6.1.195', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(739, 1, 1514515879, '10.6.1.195', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(740, 1, 1514515880, '10.6.1.195', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(741, 1, 1514515880, '10.6.1.195', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(742, 1, 1514515880, '10.6.1.195', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(743, 1, 1514515880, '10.6.1.195', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(744, 1, 1514515881, '10.6.1.195', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(745, 1, 1514515881, '10.6.1.195', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(746, 1, 1514515881, '10.6.1.195', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(747, 1, 1514515881, '10.6.1.195', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(748, 1, 1514515882, '10.6.1.195', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(749, 1, 1514515882, '10.6.1.195', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(750, 1, 1514515882, '10.6.1.195', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(751, 1, 1514515883, '10.6.1.195', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(752, 1, 1514515883, '10.6.1.195', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(753, 1, 1514515883, '10.6.1.195', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(754, 1, 1514515883, '10.6.1.195', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(755, 1, 1514515884, '10.6.1.195', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(756, 1, 1514515884, '10.6.1.195', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(757, 1, 1514515884, '10.6.1.195', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(758, 1, 1514515885, '10.6.1.195', 1, '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=update_show'),
(759, 1, 1514515886, '10.6.1.195', 1, '提示语：开始更新 ..公司新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show'),
(760, 1, 1514515886, '10.6.1.195', 1, '提示语：开始更新 ..行业新闻 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1'),
(761, 1, 1514515886, '10.6.1.195', 1, '提示语：开始更新 ..定制橱柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=1'),
(762, 1, 1514515887, '10.6.1.195', 1, '提示语：开始更新 ..定制衣橱 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=2'),
(763, 1, 1514515887, '10.6.1.195', 1, '提示语：开始更新 ..定制鞋柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=3'),
(764, 1, 1514515887, '10.6.1.195', 1, '提示语：开始更新 ..定制卫浴柜 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=4'),
(765, 1, 1514515887, '10.6.1.195', 1, '提示语：开始更新 ..定制背景墙 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=5'),
(766, 1, 1514515888, '10.6.1.195', 1, '提示语：开始更新 ..定制室内门 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=6'),
(767, 1, 1514515888, '10.6.1.195', 1, '提示语：开始更新 ..定制门窗套 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=7'),
(768, 1, 1514515888, '10.6.1.195', 1, '提示语：开始更新 ..定制踢脚线 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=8');
INSERT INTO `lvyecms_operationlog` (`id`, `uid`, `time`, `ip`, `status`, `info`, `get`) VALUES
(769, 1, 1514515888, '10.6.1.195', 1, '提示语：开始更新 ..晒家分享 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=9'),
(770, 1, 1514515889, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=10'),
(771, 1, 1514516491, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(772, 1, 1514516494, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(773, 1, 1514516495, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(774, 1, 1514516495, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(775, 1, 1514516495, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(776, 1, 1514516496, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(777, 1, 1514516521, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(778, 1, 1514516542, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(779, 1, 1514516712, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(780, 1, 1514516716, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(781, 1, 1514516716, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(782, 1, 1514516717, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(783, 1, 1514516717, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(784, 1, 1514516717, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(785, 1, 1514516803, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(786, 1, 1514516806, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(787, 1, 1514516807, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(788, 1, 1514516807, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(789, 1, 1514516808, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(790, 1, 1514516808, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(791, 1, 1514517543, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(792, 1, 1514524347, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(793, 1, 1514524350, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(794, 1, 1514524351, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(795, 1, 1514524351, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(796, 1, 1514524352, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(797, 1, 1514524352, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(798, 1, 1514524475, '10.6.1.195', 1, '提示语：配置修改成功！<br/>模块：Search,控制器：Search,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(799, 1, 1514524488, '10.6.1.195', 1, '提示语：配置修改成功！<br/>模块：Search,控制器：Search,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(800, 1, 1514524490, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(801, 1, 1514524493, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(802, 1, 1514524494, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(803, 1, 1514524495, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(804, 1, 1514524496, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(805, 1, 1514524497, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(806, 1, 1514524542, '10.6.1.195', 1, '提示语：配置修改成功！<br/>模块：Search,控制器：Search,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(807, 1, 1514524546, '10.6.1.195', 1, '提示语：开始进行索引重建...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：POST', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&menuid=119'),
(808, 1, 1514524549, '10.6.1.195', 1, '提示语：模型【新闻模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create'),
(809, 1, 1514524549, '10.6.1.195', 1, '提示语：【图片模型】有 <font color="red">11</font> 条信息 - 已完成 <font color="red">10</font> 条（<font color="red">91%</font>）<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0'),
(810, 1, 1514524549, '10.6.1.195', 1, '提示语：模型【图片模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=1&pagesize=10&modelid=0&pages=1&autoid=1'),
(811, 1, 1514524549, '10.6.1.195', 1, '提示语：模型【晒家模型】更新完成 ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=1&total=11'),
(812, 1, 1514524550, '10.6.1.195', 1, '提示语：更新完成！ ...<br/>模块：Search,控制器：Search,方法：create<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Search&m=Search&a=create&start=2&pagesize=10&modelid=0&pages=2&autoid=2'),
(813, 1, 1514526414, '10.6.1.195', 1, '提示语：配置修改成功！<br/>模块：Search,控制器：Search,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Search&m=Search&menuid=119'),
(814, 1, 1514526418, '10.6.1.195', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(815, 1, 1514526418, '10.6.1.195', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(816, 1, 1514526419, '10.6.1.195', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(817, 1, 1514526422, '10.6.1.195', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(818, 1, 1514526422, '10.6.1.195', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(819, 1, 1514526422, '10.6.1.195', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(820, 1, 1514526422, '10.6.1.195', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(821, 1, 1514526423, '10.6.1.195', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(822, 1, 1514526423, '10.6.1.195', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(823, 1, 1514526423, '10.6.1.195', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(824, 1, 1514526424, '10.6.1.195', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(825, 1, 1514526424, '10.6.1.195', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(826, 1, 1514526424, '10.6.1.195', 1, '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(827, 1, 1514526424, '10.6.1.195', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=10'),
(828, 1, 1514526521, '10.6.1.195', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(829, 1, 1514526521, '10.6.1.195', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(830, 1, 1514526521, '10.6.1.195', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(831, 1, 1514526522, '10.6.1.195', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(832, 1, 1514526522, '10.6.1.195', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(833, 1, 1514526522, '10.6.1.195', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(834, 1, 1514526523, '10.6.1.195', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(835, 1, 1514526523, '10.6.1.195', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(836, 1, 1514526523, '10.6.1.195', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(837, 1, 1514526523, '10.6.1.195', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(838, 1, 1514526524, '10.6.1.195', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(839, 1, 1514526524, '10.6.1.195', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(840, 1, 1514526524, '10.6.1.195', 1, '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(841, 1, 1514526524, '10.6.1.195', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=10'),
(842, 1, 1514526525, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(843, 1, 1514526527, '10.6.1.195', 1, '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(844, 1, 1514526530, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(845, 1, 1514526532, '10.6.1.195', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(846, 1, 1514526532, '10.6.1.195', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(847, 1, 1514526533, '10.6.1.195', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(848, 1, 1514526533, '10.6.1.195', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(849, 1, 1514526533, '10.6.1.195', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(850, 1, 1514526533, '10.6.1.195', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(851, 1, 1514526534, '10.6.1.195', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(852, 1, 1514526534, '10.6.1.195', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(853, 1, 1514526535, '10.6.1.195', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(854, 1, 1514526536, '10.6.1.195', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(855, 1, 1514526537, '10.6.1.195', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(856, 1, 1514526538, '10.6.1.195', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(857, 1, 1514526539, '10.6.1.195', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(858, 1, 1514526540, '10.6.1.195', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(859, 1, 1514526541, '10.6.1.195', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(860, 1, 1514526542, '10.6.1.195', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(861, 1, 1514526543, '10.6.1.195', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(862, 1, 1514526544, '10.6.1.195', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(863, 1, 1514526545, '10.6.1.195', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(864, 1, 1514526546, '10.6.1.195', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(865, 1, 1514526547, '10.6.1.195', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(866, 1, 1514526548, '10.6.1.195', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(867, 1, 1514526549, '10.6.1.195', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(868, 1, 1514526550, '10.6.1.195', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(869, 1, 1514527052, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(870, 1, 1514527176, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(871, 1, 1514527205, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(872, 1, 1514527245, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(873, 1, 1514527385, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=1'),
(874, 1, 1514527399, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=62'),
(875, 1, 1514527412, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=63'),
(876, 1, 1514527428, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=64'),
(877, 1, 1514527445, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=2'),
(878, 1, 1514527460, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=65'),
(879, 1, 1514527469, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=66'),
(880, 1, 1514527485, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=3'),
(881, 1, 1514527496, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=67'),
(882, 1, 1514527509, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=68'),
(883, 1, 1514527526, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=69'),
(884, 1, 1514527538, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=70'),
(885, 1, 1514527551, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=71'),
(886, 1, 1514527562, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=72'),
(887, 1, 1514527572, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=73'),
(888, 1, 1514527585, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=74'),
(889, 1, 1514527624, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=5'),
(890, 1, 1514527644, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=4'),
(891, 1, 1514527667, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=6'),
(892, 1, 1514527678, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=75'),
(893, 1, 1514527690, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=76'),
(894, 1, 1514527701, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Category&a=edit&catid=7'),
(895, 1, 1514527703, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">23</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&'),
(896, 1, 1514527704, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Category&a=public_cache'),
(897, 1, 1514527764, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(898, 1, 1514527767, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&menuid=70'),
(899, 1, 1514527768, '10.6.1.195', 1, '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml&a=category&menuid=69'),
(900, 1, 1514527769, '10.6.1.195', 1, '提示语：公司简介更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category'),
(901, 1, 1514527769, '10.6.1.195', 1, '提示语：企业文化更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer='),
(902, 1, 1514527769, '10.6.1.195', 1, '提示语：发展战略更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=1&modelid=0&referer='),
(903, 1, 1514527770, '10.6.1.195', 1, '提示语：公司新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=2&modelid=0&referer='),
(904, 1, 1514527770, '10.6.1.195', 1, '提示语：行业新闻更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=3&modelid=0&referer='),
(905, 1, 1514527770, '10.6.1.195', 1, '提示语：定制橱柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=4&modelid=0&referer='),
(906, 1, 1514527770, '10.6.1.195', 1, '提示语：定制衣橱更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=5&modelid=0&referer='),
(907, 1, 1514527771, '10.6.1.195', 1, '提示语：定制鞋柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=6&modelid=0&referer='),
(908, 1, 1514527771, '10.6.1.195', 1, '提示语：定制卫浴柜更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=7&modelid=0&referer='),
(909, 1, 1514527771, '10.6.1.195', 1, '提示语：定制背景墙更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=8&modelid=0&referer='),
(910, 1, 1514527771, '10.6.1.195', 1, '提示语：定制室内门更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=9&modelid=0&referer='),
(911, 1, 1514527772, '10.6.1.195', 1, '提示语：人才招聘更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=10&modelid=0&referer='),
(912, 1, 1514527772, '10.6.1.195', 1, '提示语：定制门窗套更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=11&modelid=0&referer='),
(913, 1, 1514527772, '10.6.1.195', 1, '提示语：定制踢脚线更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=12&modelid=0&referer='),
(914, 1, 1514527772, '10.6.1.195', 1, '提示语：人才理念更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=13&modelid=0&referer='),
(915, 1, 1514527773, '10.6.1.195', 1, '提示语：关于我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=14&modelid=0&referer='),
(916, 1, 1514527773, '10.6.1.195', 1, '提示语：新闻中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=15&modelid=0&referer='),
(917, 1, 1514527773, '10.6.1.195', 1, '提示语：产品中心更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=16&modelid=0&referer='),
(918, 1, 1514527773, '10.6.1.195', 1, '提示语：晒家分享更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=17&modelid=0&referer='),
(919, 1, 1514527774, '10.6.1.195', 1, '提示语：招商加盟更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=18&modelid=0&referer='),
(920, 1, 1514527774, '10.6.1.195', 1, '提示语：招贤纳士更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=19&modelid=0&referer='),
(921, 1, 1514527774, '10.6.1.195', 1, '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=20&modelid=0&referer='),
(922, 1, 1514527774, '10.6.1.195', 1, '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dedecms.l/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&autoid=21&modelid=0&referer='),
(923, 1, 1514529206, '10.6.1.195', 0, '提示语：更新到info项时，更新失败！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&menuid=8'),
(924, 1, 1514529210, '10.6.1.195', 0, '提示语：更新到info项时，更新失败！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&menuid=8'),
(925, 1, 1514529565, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&menuid=8'),
(926, 1, 1514529579, '10.6.1.195', 1, '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(927, 1, 1514529579, '10.6.1.195', 1, '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site'),
(928, 1, 1514529579, '10.6.1.195', 1, '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData'),
(929, 1, 1514529581, '10.6.1.195', 1, '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),
(930, 1, 1514529581, '10.6.1.195', 1, '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=1'),
(931, 1, 1514529581, '10.6.1.195', 1, '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=2'),
(932, 1, 1514529582, '10.6.1.195', 1, '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=3'),
(933, 1, 1514529582, '10.6.1.195', 1, '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=4'),
(934, 1, 1514529582, '10.6.1.195', 1, '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=5'),
(935, 1, 1514529582, '10.6.1.195', 1, '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=6'),
(936, 1, 1514529583, '10.6.1.195', 1, '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=7'),
(937, 1, 1514529583, '10.6.1.195', 1, '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=8'),
(938, 1, 1514529583, '10.6.1.195', 1, '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=9'),
(939, 1, 1514529583, '10.6.1.195', 1, '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache&type=site&stop=10'),
(940, 1, 1514529585, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(941, 1, 1514529586, '10.6.1.195', 1, '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(942, 1, 1514529604, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&menuid=8'),
(943, 1, 1514529703, '10.6.1.195', 1, '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dedecms.l/admin.php?m=Config&menuid=8'),
(944, 1, 1514529845, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(945, 1, 1514529847, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(946, 1, 1514529866, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(947, 1, 1514529868, '10.6.1.195', 1, '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dedecms.l/admin.php?a=cache'),
(948, 1, 1514529870, '10.6.1.195', 1, '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dedecms.l/index.php?m=Createhtml'),
(949, 1, 1514532104, '10.6.1.195', 1, '提示语：3G版栏目配置更新成功！记得点击右上角的清除缓存！<br/>模块：Wap,控制器：Wap,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=edit&catid=1'),
(950, 1, 1514532121, '10.6.1.195', 1, '提示语：3G版栏目配置更新成功！记得点击右上角的清除缓存！<br/>模块：Wap,控制器：Wap,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=edit&catid=6'),
(951, 1, 1514532127, '10.6.1.195', 1, '提示语：3G版栏目配置更新成功！记得点击右上角的清除缓存！<br/>模块：Wap,控制器：Wap,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=edit&catid=7'),
(952, 1, 1514532129, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">23</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Wap,控制器：Wap,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Wap&m=Wap&'),
(953, 1, 1514532130, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Wap,控制器：Wap,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=public_cache'),
(954, 1, 1514532535, '10.6.1.195', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=7'),
(955, 1, 1514532559, '10.6.1.195', 1, '提示语：3G版栏目配置更新成功！记得点击右上角的清除缓存！<br/>模块：Wap,控制器：Wap,方法：edit<br/>请求方式：Ajax', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=edit&catid=7'),
(956, 1, 1514532560, '10.6.1.195', 1, '提示语：栏目总数:<font color="#FF0000">23</font>,每次处理:<font color="#FF0000">100</font>,进度:<font color="#FF0000">1/1</font>,栏目缓存更新中...<br/>模块：Wap,控制器：Wap,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=edit&catid=7'),
(957, 1, 1514532561, '10.6.1.195', 1, '提示语：缓存更新成功！<br/>模块：Wap,控制器：Wap,方法：public_cache<br/>请求方式：GET', 'http://dedecms.l/index.php?g=Wap&m=Wap&a=public_cache'),
(958, 1, 1514532591, '10.6.1.195', 1, '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dedecms.l/index.php?m=Content&a=add&catid=7');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_page`
--

CREATE TABLE IF NOT EXISTS `lvyecms_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL DEFAULT '' COMMENT '标题',
  `style` varchar(24) NOT NULL DEFAULT '' COMMENT '样式',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '关键字',
  `content` text COMMENT '内容',
  `template` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

--
-- 转存表中的数据 `lvyecms_page`
--

INSERT INTO `lvyecms_page` (`catid`, `title`, `style`, `keywords`, `content`, `template`, `updatetime`) VALUES
(62, '公司简介', '', '', '<p><span style="background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; line-height: 21.6px;">合肥荣事达电子电器集团有限公司的荣事达智能家居是荣事达集团根据市场发展，汲取国际领先的智能家居理念，紧跟时代潮流，追求科技、智能、时尚、品质的设计风格，重金打造的智能家居品牌。</span><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; background-color: rgb(255, 255, 255);"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); font-family: &quot;microsoft yahei&quot;, Tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体; line-height: 21.6px;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); font-family: &quot;microsoft yahei&quot;, Tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体; line-height: 21.6px;"><span style="font-family: &quot;Microsoft YaHei&quot;; color: rgb(51, 51, 51); font-size: 14px;">经过不断的钻研和发展，荣事达智能家居系统可以实现包括环境监测与智能控制、实时双向智能报警、智能报警联动、智能开关控制、智能插座控制、智能电器控制、智能窗帘控制、智能定时控制、智能红外远程控制、智能场景控制、远程视频监控以及可编程定时控制等多种功能和手段。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); font-family: &quot;microsoft yahei&quot;, Tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体; line-height: 21.6px;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); font-family: &quot;microsoft yahei&quot;, Tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体; line-height: 21.6px;"><span style="font-family: &quot;Microsoft YaHei&quot;; color: rgb(51, 51, 51); font-size: 14px;">合肥荣事达电子电器集团有限公司的荣事达智能家居系统以住宅为平台，利用综合布线技术、网络通信技术、安全防范技术、自动控制技术、音视频技术将家居生活有关的设施集成，构建高效的住宅设施与家庭日程事务的管理系统，提升家居安全性、便利性、舒适性、艺术性，并实现环保节能的居住环境。并致力于提供各行业的智能解决方案而努力，荣事达智能酒店解决方案、智能办公解决方案、智能农业解决方案、智能厂房解决方案等等也在不断的完善。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); font-family: &quot;microsoft yahei&quot;, Tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体; line-height: 21.6px;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); font-family: &quot;microsoft yahei&quot;, Tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体; line-height: 21.6px;"><span style="font-family: &quot;Microsoft YaHei&quot;; color: rgb(51, 51, 51); font-size: 14px;">荣事达智能家居系统亦在为普及和推广智能家居事业做出最大的努力，将智能家居生活带进千家万户，创造智能舒适的家居生活。</span></p><p><br/></p>', '', 1514377698),
(63, '企业文化', '', '', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="text-indent: 2em;">荣事达品牌无形资产、荣誉</span><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;<span style="text-indent: 2em;">荣事达集团作为中国知名家电企业集团，产品线涉及家电、智能家居系统、智能晾衣设备、新型能源、汽车配件、电动自行车、太阳能热水器、新型建材等多个产业。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;<span style="text-indent: 2em;">2005年国家统计局公布的1000家最大的中国工业企业名单中，荣事达列电器行业榜第34位。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;<span style="text-indent: 2em;">2006年经中国品牌研究院权威评估“荣事达”品牌价值超过26亿元，位居中国最具价值排行榜第54位，名列中国家电行业前茅。同年商务部发布《耐用消费市场发展报告》，“荣事达”等多个自主品牌已跻身亚洲20强。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;<span style="text-indent: 2em;">2008年荣获电子电器行业20强企业。</span></p><p><br/></p><p><img src="/d/file/contents/2017/12/5a4396141c693.jpg" title="1-16052012064M00.jpg" alt="1-16052012064M00.jpg"/></p>', '', 1514378740),
(64, '发展战略', '', '', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1-160520120JV24.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">合肥荣事达电子电器集团有限公司是中国优秀品牌家电企业，荣事达智能家居系统是荣事达集团重金打造的国内强势、国际著名品牌；是一家集专业设计、开发、生产、销售服务为一体的高科技生产企业。是一家智能家居的设计、开发、制造和销售的企业。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1-160520120K4632.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">公司坐落在安徽省合肥市双凤经济开发区，荣事达第六工业园，投资近亿元，占地120000平方米。公司自成立以来，继承和发扬了荣事达“和商”、“零缺陷”和“红地毯”服务的经营理念。本着对服务顾客、追求共赢的思想，努力打造一支高效率的合作团队，以专业的技术、健康的产品、温馨的服务面对市场，服务于广大顾客朋友。2006年经中国品牌研究院权威评估“荣事达”品牌价值超过26亿元，位居中国最具价值商标排行榜第54位，名列中国白色家电行业前茅。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1-160520120P0105.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">荣事达智能家居系统汲取国际领先设计理念，紧跟世界最新时尚潮流，追求健康、时尚、品质的设计风格，为推动中国智能家居行业的发展，树立行业标准形象而不懈努力。荣事达智能家居系统在选材、工艺、技术和品质方面得天独厚，在产品创新上精益求精，严格按照质量管理体系要求来完善品质，始终以优质的产品和服务来赢得市场和顾客。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><img alt="" src="http://dedecms.l/uploads/allimg/160520/1-160520120PJ20.jpg" style="border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">公司依托荣事达集团强大的品牌影响力，凝聚了一批勇于开拓进取的高素质营销团队和管理团队。产品在团队推广下已经进入到千家万户，得到国内以及世界各地用户的广泛青睐。荣事达人会以更加饱满的热情，坚持顾客至上的宗旨，引领健康、时尚的潮流，向广大顾客朋友提供更加优质的服务。</p><p><br/></p>', '', 1514378811),
(5, '招商加盟', '', '', '<p><img src="/d/file/contents/2017/12/5a44dc0642a6f.jpg" title="1-16051215561GH.jpg" alt="1-16051215561GH.jpg"/></p>', '', 1514462216),
(76, '人才理念', '', '', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">本网站为合肥荣事达电子电器集团有限公司（以下简称“合肥荣事达智能家居官方网站”）拥有、管理和维护。使用本站前请您仔细阅读以下条款，使用本网站 则表明您已明知并接受这些条款，如果不接受这些条款请不要使用本网站。</p><p><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">服务是产品的延伸，更是制造企业与消费用户关系的高端环节。没有优质的高端环节，制造再好的产品也会前功尽弃。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">1、网站使用</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">合肥荣事达电子电器集团有限公司智能家居网站（以下简称“本站”）上的内容，仅 供您个人而非商业使用。对于内容中所含的版权和其他所有权声明，您应予以尊重并在其副本中予以保留。如果网站内容无权利声明，并不代表网站对其不享有权 利，也不意外着网站不主张权利，您应根据诚信原则尊重该等内容的合法权益并进行合法使用。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">2、信息发布</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">本站的信息按原样提供，不附加任何形式的保证，包括适销性、适合于特定目的或不 侵犯知识产权的保证。此外，合肥荣事达电子电器集团有限公司智能家居也不保证本站信息的绝对准确性和绝对完整性。合肥荣事达电子电器集团有限公司智能家居 网站中的内容或在这些内容中介绍的产品、价格和配置等会随时变更，恕不另行通知。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">3、用户提交材料</p><p><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);">除个人识别信息，其他任何您发送或邮寄给本站的材料、信息或联系方式（以下统称信息）均将 被视为非保密和非专有。合肥荣事达电子电器集团有限公司智能家居将对这些信息不承担任何义务。同时您的提交行为如果没有特别声明时，可视为同意（或授 权）：合肥荣事达电子电器集团有限公司智能家居及其授权人将可因商业或非商业的目的自由复制、透露、分发、合并和以其他方式利用这些信息和所有数据、图 像、声音、文本及其他内容。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">4、用户交流内容</p><p><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);">合肥荣事达电子电器集团有限公司智能家居不负监控或审查用户在本站上发送或邮寄的信息或相 互之间单独交流的任何领域信息的责任，包括但不限于交谈室、公告牌或其他用户论坛以及任何交流内容。合肥荣事达电子电器集团有限公司智能家居对有关任何这 类交流的内容不承担任何责任，无论它们是否会引起诽谤、隐私、淫秽或其他方面的问题。合肥荣事达电子电器集团有限公司智能家居保留在发现时删除含被视为侮 辱、诽谤、淫秽或其他不良内容的信息消息的权利。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">5、软件使用</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">如果您从本站下载软件，在使用软件时要遵守该软件携带的软件许可协议中所有的许可条款。在您阅读并接受软件许可协议的各项条款之前，不得下载或安装这一软件。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">6、第三方网站</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">本站到第三方网站的链接仅作为一种方便服务提供给您。如果使用这些链接，您将离开本站。合肥荣事达电子电器集团有限公司智能家居对这些网站及其内容不进行控制，也不负任何责任。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">7、责任限度</p><p><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);">合肥荣事达电子电器集团有限公司智能家居及其供应商或本站中提到的第三方对任何损害概不负 责（包括但不限于由损失的利润、损失的数据或业务中断而造成的损害），无论这些损害是否由于使用、不能使用本站的结果、连到本站的任何Web网站或者任何 这类网站中包含的信息所引起（包括但不限于由损失的利润、损失的数据或业务中断而造成的损害），也不管它们是否有保证、合同、侵权行为或任何其它法律根据 以及事前已得到这类损害可能发生的消息。</span><br style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);"><br/>8、国际用户</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">该网站由合肥荣事达电子电器集团有限公司智能家居进行控制、操作和管理。合肥荣 事达电子电器集团有限公司智能家居不保证该网站上的资料适用于或可用于中国之外的其他地点，以及您能够从资料内容被视为非法的区域取阅这些资料。您不得违 背中国出口法规使用网站或出口资料。如果您从中国之外的地点访问该网站，则您有责任遵守所有当地法律。这些使用条款和条件受中国法律管辖。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);">9、更改</span><br style="color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">合肥荣事达电子电器集团有限公司智能家居可能随时修改这些条款，您应经常访问本页以了解当前的条款，这些条款的某些条文也可能被本站中某些页面上明确指定的法律通告或条款所取代。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">合肥荣事达电子电器集团有限公司智能家居可随时终止、更改、暂停或中止该网站的任何方面， 包括该网站任何特性的可用性。合肥荣事达电子电器集团有限公司智能家居还可未做事先通知且不承担责任对某些特征和服务加以限制或限制您访问网站的某些部分 或全部。合肥荣事达电子电器集团有限公司智能家居可终止上述授权、权利和许可，您应在此类终止时立即销毁所有资料。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">10、因本公告或使用本网站所发生的争议使用中华人民共和国法律。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">11、因本公告或使用本网站发生争议，应当协商解决，协商不成的，有合肥市高新区人民法院诉讼解决。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: none; text-indent: 2em; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);">12、本公告的解释权及对本网站使用的解释权归结于合肥荣事达电子电器集团有限公司智能家居。</p><p><br/></p>', '', 1514462821),
(7, '联系我们', '', '', '<ul style="padding: 0px; border: none; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei&quot;, 宋体, Tahoma, Helvetica, Arial, SimSun; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);" class=" list-paddingleft-2"><li><p>广东智能家居有限公司</p></li><li><p>&nbsp;admin@cmsbuy.cn</p></li><li><p>&nbsp;0755-88888888</p></li><li><p>&nbsp;传真 : 0898-66889886</p></li><li><p>&nbsp;陈总 : 18565676808</p></li><li><p>乘坐1路公交车，中村站点下车，往西500米，到达国贸玉沙大街广东智能家居有限公司</p></li></ul><p><br/></p>', '', 1514532535);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_photo`
--

CREATE TABLE IF NOT EXISTS `lvyecms_photo` (
  `id` mediumint(8) unsigned NOT NULL,
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
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lvyecms_photo`
--

INSERT INTO `lvyecms_photo` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `tags`, `description`, `posid`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`, `views`, `yesterdayviews`, `dayviews`, `weekviews`, `monthviews`, `viewsupdatetime`) VALUES
(1, 67, 0, '定制橱柜', '', '/d/file/content/2017/12/5a43a3012bdaa.jpg', '', '', '', 0, '/2017/dzcg_12/1.shtml', 0, 99, 1, 0, 'admin', 1514382087, 1514382087, 0, 0, 0, 0, 0, 0),
(2, 67, 0, '定制橱柜', '', '/d/file/content/2017/12/5a43a318c0e03.jpg', '', '', '', 0, '/2017/dzcg_12/2.shtml', 0, 99, 1, 0, 'admin', 1514382106, 1514382106, 0, 0, 0, 0, 0, 0),
(3, 67, 0, '定制橱柜', '', '/d/file/content/2017/12/5a43a32563380.jpg', '', '', '', 0, '/2017/dzcg_12/3.shtml', 0, 99, 1, 0, 'admin', 1514382118, 1514382118, 0, 0, 0, 0, 0, 0),
(4, 67, 0, '定制橱柜', '', '/d/file/content/2017/12/5a43a3370903c.jpg', '', '', '', 0, '/2017/dzcg_12/4.shtml', 0, 99, 1, 0, 'admin', 1514382136, 1514382136, 0, 0, 0, 0, 0, 0),
(5, 68, 0, '定制衣橱', '', '/d/file/content/2017/12/5a43a35042ea8.jpg', '', '', '', 0, '/2017/dzyc_12/5.shtml', 0, 99, 1, 0, 'admin', 1514382161, 1514382161, 0, 0, 0, 0, 0, 0),
(6, 68, 0, '定制衣橱', '', '/d/file/content/2017/12/5a43a35c943a4.jpg', '', '', '', 0, '/2017/dzyc_12/6.shtml', 0, 99, 1, 0, 'admin', 1514382174, 1514382174, 0, 0, 0, 0, 0, 0),
(7, 68, 0, '定制衣橱', '', '/d/file/content/2017/12/5a43a36bb5492.jpg', '', '', '', 0, '/2017/dzyc_12/7.shtml', 0, 99, 1, 0, 'admin', 1514382188, 1514382188, 1, 0, 1, 1, 1, 1514531196),
(8, 4, 0, ' 6平厨房完工图！ ', '', '/d/file/content/2017/12/5a43a5b90a175.jpg', '', '', ' 新厨房终于完工了，刚开始装修时没有思路，去店里看了设计师给了建议，选了一款比较简约但是又不是光光平面的门板，设计师比较上心！... ', 0, '', 0, 99, 1, 0, 'admin', 1514382778, 1514382778, 0, 0, 0, 0, 0, 0),
(9, 77, 0, '1', '', '/d/file/content/2017/12/5a44e25a55f5a.jpg', '', '', '', 0, '/index.php?a=shows&catid=77&id=9', 0, 99, 1, 0, 'admin', 1514463839, 1514463839, 0, 0, 0, 0, 0, 0),
(10, 77, 0, '2', '', '/d/file/content/2017/12/5a44e26da5c6f.jpg', '', '', '', 0, '/index.php?a=shows&catid=77&id=10', 0, 99, 1, 0, 'admin', 1514463854, 1514463854, 0, 0, 0, 0, 0, 0),
(11, 77, 0, '3', '', '/d/file/content/2017/12/5a44e27b9f380.jpg', '', '', '', 0, '/index.php?a=shows&catid=77&id=11', 0, 99, 1, 0, 'admin', 1514463868, 1514463868, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_photo_data`
--

CREATE TABLE IF NOT EXISTS `lvyecms_photo_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lvyecms_photo_data`
--

INSERT INTO `lvyecms_photo_data` (`id`, `content`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `allow_comment`, `relation`) VALUES
(1, '<p><img src="/d/file/content/2017/12/5a43a3012bdaa.jpg" title="1-1605121444020-L.jpg" alt="1-1605121444020-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(2, '<p><img src="/d/file/content/2017/12/5a43a318c0e03.jpg" title="1-1605121453470-L.jpg" alt="1-1605121453470-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(3, '<p><img src="/d/file/content/2017/12/5a43a32563380.jpg" title="1-1605121625300-L.jpg" alt="1-1605121625300-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(4, '<p><img src="/d/file/content/2017/12/5a43a3370903c.jpg" title="1-1605121444250-L.jpg" alt="1-1605121444250-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(5, '<p><img src="/d/file/content/2017/12/5a43a35042ea8.jpg" title="1-1605121454040-L.jpg" alt="1-1605121454040-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(6, '<p><img src="/d/file/content/2017/12/5a43a35c943a4.jpg" title="1-160512151T70-L.jpg" alt="1-160512151T70-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(7, '<p><img src="/d/file/content/2017/12/5a43a36bb5492.jpg" title="1-1605121453470-L.jpg" alt="1-1605121453470-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(8, '<p><span style="color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);"> 新厨房终于完工了，刚开始装修时没有思路，去店里看了设计师给了建议，选了一款比较简约但是又不是光光平面的门板，设计师比较上心！... </span><span style="color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);"> 新厨房终于完工了，刚开始装修时没有思路，去店里看了设计师给了建议，选了一款比较简约但是又不是光光平面的门板，设计师比较上心！... </span><img src="/d/file/content/2017/12/5a43a5b90a175.jpg" title="1-160520122A30-L.jpg" alt="1-160520122A30-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(9, '<p><img src="/d/file/content/2017/12/5a44e25a55f5a.jpg" title="banner1.jpg" alt="banner1.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(10, '<p><img src="/d/file/content/2017/12/5a44e26da5c6f.jpg" title="banner2.jpg" alt="banner2.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(11, '<p><img src="/d/file/content/2017/12/5a44e27b9f380.jpg" title="banner3.jpg" alt="banner3.jpg"/></p>', 2, 10000, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_position`
--

CREATE TABLE IF NOT EXISTS `lvyecms_position` (
  `posid` smallint(5) unsigned NOT NULL COMMENT '推荐位id',
  `modelid` char(30) NOT NULL DEFAULT '' COMMENT '模型id',
  `catid` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_position_data`
--

CREATE TABLE IF NOT EXISTS `lvyecms_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模型',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) NOT NULL DEFAULT '',
  `synedit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步编辑'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_role`
--

CREATE TABLE IF NOT EXISTS `lvyecms_role` (
  `id` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

--
-- 转存表中的数据 `lvyecms_role`
--

INSERT INTO `lvyecms_role` (`id`, `name`, `parentid`, `status`, `remark`, `create_time`, `update_time`, `listorder`) VALUES
(1, '超级管理员', 0, 1, '拥有网站最高管理员权限！', 1329633709, 1329633709, 0),
(2, '站点管理员', 1, 1, '站点管理员', 1329633722, 1399780945, 0),
(3, '发布人员', 2, 1, '发布人员', 1329633733, 1399798954, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_search`
--

CREATE TABLE IF NOT EXISTS `lvyecms_search` (
  `searchid` int(10) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息id',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `modelid` smallint(5) NOT NULL COMMENT '模型id',
  `adddate` int(10) unsigned NOT NULL COMMENT '添加时间',
  `data` text NOT NULL COMMENT '数据'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='全站搜索数据表';

--
-- 转存表中的数据 `lvyecms_search`
--

INSERT INTO `lvyecms_search` (`searchid`, `id`, `catid`, `modelid`, `adddate`, `data`) VALUES
(1, 1, 65, 1, 1514379159, '这款智能镜子能模拟各种光线下的化妆效果化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。　　SensorMirrorProWide-View的价格并不便宜，达到了$400美元。这款智能镜子能模拟各种光线下的化妆效果'),
(2, 2, 65, 1, 1514379166, '范德萨范德萨范德萨范德萨范德萨范德萨化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。　　SensorMirrorProWide-View的价格并不便宜，达到了$400美元。范德萨范德萨范德萨范德萨范德萨范德萨'),
(3, 3, 65, 1, 1514379174, '范德萨范德萨范德萨范德萨范德萨范德萨范德萨分化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。　　SensorMirrorProWide-View的价格并不便宜，达到了$400美元。范德萨范德萨范德萨范德萨范德萨范德萨范德萨分'),
(4, 4, 65, 1, 1514379182, '百分爽vdfsaftrhhffgsa法国队sag好热法国队撒化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。　　SensorMirrorProWide-View的价格并不便宜，达到了$400美元。百分爽vdfsaftrhhffgsa法国队sag好热法国队撒'),
(5, 5, 65, 1, 1514379198, '规范的地方sag范德萨士大夫大赛化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模...化妆可以说是一项甜蜜的负担。尽管化妆品能帮助爱美女性遮掩脸部的瑕疵,打造一个健康无瑕的妆容。但化妆效果仍会受到光线的制约，室内外会呈现完全不同的效果。为了让使用者看到更真实的化妆效果,加州Simplehuman为爱化妆人士推出了一款无线感应化妆镜SensorMirrorProWide-View。这款镜子可以模拟各种各样的色温。　　用户通过Wi-Fi连接配套的iOS或Android应用，可以选择各种各样的照明颜色预设，比如这款镜子可以模拟地铁站的照明。镜子的默认设置是仿自然阳光。此外，用户还可以在健身房等地拍一张自拍，然后让镜子重现该场景的照明类型。　　SensorMirrorProWide-View的价格并不便宜，达到了$400美元。规范的地方sag范德萨士大夫大赛'),
(6, 6, 66, 1, 1514379221, '业内大咖齐聚广州，共寻智慧大门金钥匙昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。　　千家智客总经理喻娟致辞　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。业内大咖齐聚广州，共寻智慧大门金钥匙'),
(7, 7, 66, 1, 1514379229, '广佛都市网发饿倒萨范德萨昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。　　千家智客总经理喻娟致辞　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。广佛都市网发饿倒萨范德萨'),
(8, 8, 66, 1, 1514379234, '不过幅度将会通过热发生大幅度撒昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。　　千家智客总经理喻娟致辞　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。不过幅度将会通过热发生大幅度撒'),
(9, 9, 66, 1, 1514379239, '他如何规范的得分为购房人无法大厦昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新...昨日，广州心友汇私人精英艺术会所上演了一幕幕老友久别重逢，新友相见恨晚的温馨画面……　　“大家好，我是机器人nao，欢迎大家来参加千家智客总裁沙龙。听说大家今天要来找金钥匙，所以我也来了”，机器人Nao调皮的开场白，成为现场的一大亮点，就连平常严肃的业界大咖也不禁被逗笑。在这样愉快的氛围中，“智创未来--2016年千家智客巡回论坛•总裁沙龙”也拉开了序幕。　　机器人Nao在欢迎嘉宾　　“如今的智能化行业技术革新越来越快，相应的政策也在不断变化。面对竞争愈加激烈的市场和反之越来越困惑的从业人员，今天，我们邀请各位行业大咖齐聚这里进行交流，讨论趋势、排解困惑，一起为智能化行业的发展出一份力。”千家智客总经理喻娟在沙龙会议上发表致辞。　　千家智客总经理喻娟致辞　　除此之外，上海现代建筑设计集团技术中心副总工赵济安、佳都新太科技股份有限公司高级工程师张新房、广州市河东电子有限公司总裁刘正林、广州视声实业有限公司董事长朱湘军等资深业界大咖也亲临现场，就产品设计、品牌运营、资本市场运作等多个方面深入探讨，分析市场趋势演绎及创新创业发展动向。他如何规范的得分为购房人无法大厦'),
(10, 1, 67, 2, 1514382087, '定制橱柜定制橱柜'),
(11, 2, 67, 2, 1514382106, '定制橱柜定制橱柜'),
(12, 3, 67, 2, 1514382118, '定制橱柜定制橱柜'),
(13, 4, 67, 2, 1514382136, '定制橱柜定制橱柜'),
(14, 5, 68, 2, 1514382161, '定制衣橱定制衣橱'),
(15, 6, 68, 2, 1514382174, '定制衣橱定制衣橱'),
(16, 7, 68, 2, 1514382188, '定制衣橱定制衣橱'),
(17, 8, 4, 2, 1514382778, '6平厨房完工图！新厨房终于完工了，刚开始装修时没有思路，去店里看了设计师给了建议，选了一款比较简约但是又不是光光平面的门板，设计师比较上心！...新厨房终于完工了，刚开始装修时没有思路，去店里看了设计师给了建议，选了一款比较简约但是又不是光光平面的门板，设计师比较上心！...新厨房终于完工了，刚开始装修时没有思路，去店里看了设计师给了建议，选了一款比较简约但是又不是光光平面的门板，设计师比较上心！...6平厨房完工图！'),
(18, 9, 77, 2, 1514463839, '11'),
(19, 10, 77, 2, 1514463854, '22'),
(20, 11, 77, 2, 1514463868, '33'),
(21, 1, 4, 3, 1514461519, '新房厨房，媳妇很喜欢，炫耀一下~~Mr.魏刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...新房厨房，媳妇很喜欢，炫耀一下~~'),
(22, 2, 4, 3, 1514461557, '新房！！！！刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...新房！！！！'),
(23, 3, 4, 3, 1514461576, '法国大使馆发动上攻刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...法国大使馆发动上攻');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_search_keyword`
--

CREATE TABLE IF NOT EXISTS `lvyecms_search_keyword` (
  `keyword` char(20) NOT NULL COMMENT '关键字',
  `pinyin` char(20) NOT NULL COMMENT '关键字拼音',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `data` char(20) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索关键字表';

--
-- 转存表中的数据 `lvyecms_search_keyword`
--

INSERT INTO `lvyecms_search_keyword` (`keyword`, `pinyin`, `searchnums`, `data`) VALUES
('橱柜', 'chugui', 33, '0'),
('衣橱', 'yichu', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_shaijia`
--

CREATE TABLE IF NOT EXISTS `lvyecms_shaijia` (
  `id` mediumint(8) unsigned NOT NULL,
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
  `yhnicheng` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lvyecms_shaijia`
--

INSERT INTO `lvyecms_shaijia` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `tags`, `description`, `posid`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`, `views`, `yesterdayviews`, `dayviews`, `weekviews`, `monthviews`, `viewsupdatetime`, `yhtouxiang`, `yhnicheng`) VALUES
(1, 4, 0, ' 新房厨房，媳妇很喜欢，炫耀一下~~ ', '', '/d/file/content/2017/12/5a44d93e84733.jpg', '', '', ' 刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！... ', 0, '/2017/sjfx_12/1.shtml', 0, 99, 1, 0, 'admin', 1514461519, 1514461519, 0, 0, 0, 0, 0, 0, '/d/file/content/2017/12/5a44d918b7514.jpg', 'Mr.魏'),
(2, 4, 0, '新房！！！！', '', '/d/file/content/2017/12/5a44d972751d5.jpg', '', '', ' 刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！... ', 0, '/2017/sjfx_12/2.shtml', 0, 99, 1, 0, 'admin', 1514461557, 1514461557, 0, 0, 0, 0, 0, 0, '/d/file/content/2017/12/5a44d967e4099.png', ''),
(3, 4, 0, '法国大使馆发动上攻', '', '/d/file/content/2017/12/5a44d985d4840.jpg', '', '', ' 刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...  刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！...  刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！... ', 0, '/2017/sjfx_12/3.shtml', 0, 99, 1, 0, 'admin', 1514461576, 1514461576, 0, 0, 0, 0, 0, 0, '/d/file/content/2017/12/5a44d98119014.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_shaijia_data`
--

CREATE TABLE IF NOT EXISTS `lvyecms_shaijia_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lvyecms_shaijia_data`
--

INSERT INTO `lvyecms_shaijia_data` (`id`, `content`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `allow_comment`, `relation`) VALUES
(1, '<p><img src="/d/file/content/2017/12/5a44d94ecc28f.jpg" title="1-160520122Q40-L.jpg" alt="1-160520122Q40-L.jpg"/></p>', 2, 10000, '', 0, 1, ''),
(2, '<p><span style="color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);"> 刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！... </span></p>', 2, 10000, '', 0, 1, ''),
(3, '<p><span style="color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);"> 刚结婚，房子不是很大，不过媳妇儿比较喜欢做饭，所以很认真的装修了厨房。选了现代简约风格！... </span></p>', 2, 10000, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_tags`
--

CREATE TABLE IF NOT EXISTS `lvyecms_tags` (
  `tagid` smallint(5) unsigned NOT NULL COMMENT 'tagID',
  `tag` char(20) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo简介',
  `style` char(5) NOT NULL DEFAULT '' COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_tags_content`
--

CREATE TABLE IF NOT EXISTS `lvyecms_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '信息地址',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_terms`
--

CREATE TABLE IF NOT EXISTS `lvyecms_terms` (
  `id` bigint(20) unsigned NOT NULL COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_urlrule`
--

CREATE TABLE IF NOT EXISTS `lvyecms_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL COMMENT '规则id',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `file` varchar(20) NOT NULL DEFAULT '' COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'url规则',
  `example` varchar(255) NOT NULL DEFAULT '' COMMENT '示例'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='内容模型URL规则';

--
-- 转存表中的数据 `lvyecms_urlrule`
--

INSERT INTO `lvyecms_urlrule` (`urlruleid`, `module`, `file`, `ishtml`, `urlrule`, `example`) VALUES
(1, 'content', 'category', 0, 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1'),
(2, 'content', 'category', 1, '{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml', '静态：news/china/1000.shtml'),
(3, 'content', 'show', 1, '{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml', '静态：2010/catdir_07/1_2.shtml'),
(4, 'content', 'show', 0, 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1'),
(5, 'content', 'category', 1, 'news/{$catid}.shtml|news/{$catid}-{$page}.shtml', '静态：news/1.shtml'),
(6, 'content', 'category', 0, 'list-{$catid}.html|list-{$catid}-{$page}.html', '伪静态：list-1-1.html'),
(7, 'content', 'tags', 0, 'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}', '动态：index.php?a=tags&amp;tagid=1'),
(8, 'content', 'tags', 0, 'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}', '动态：index.php?a=tags&amp;tag=标签'),
(9, 'content', 'tags', 0, 'tag-{$tag}.html|tag-{$tag}-{$page}.html', '伪静态：tag-标签.html'),
(10, 'content', 'tags', 0, 'tag-{$tagid}.html|tag-{$tagid}-{$page}.html', '伪静态：tag-1.html'),
(11, 'content', 'index', 1, 'index.html|index_{$page}.html', '静态：index_2.html'),
(12, 'content', 'index', 0, 'index.html|index_{$page}.html', '伪静态：index_2.html'),
(13, 'content', 'index', 0, 'index.php|index.php?page={$page}', '动态：index.php?page=2'),
(14, 'content', 'category', 1, 'download.shtml|download_{$page}.shtml', '静态：download.shtml'),
(15, 'content', 'show', 1, '{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml', '静态：/父栏目/1.shtml'),
(16, 'content', 'show', 1, '{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml', '示例：/栏目/1.html');

-- --------------------------------------------------------

--
-- 表的结构 `lvyecms_user`
--

CREATE TABLE IF NOT EXISTS `lvyecms_user` (
  `id` smallint(5) unsigned NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称/姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `bind_account` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL DEFAULT '' COMMENT '证验码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text COMMENT '信息'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

--
-- 转存表中的数据 `lvyecms_user`
--

INSERT INTO `lvyecms_user` (`id`, `username`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`, `role_id`, `info`) VALUES
(1, 'admin', '未知', '46ade99a3e6196465c7ec7676fc23196', '', 1514511126, '10.6.1.195', 'fC370W', 'admin@abc3210.com', '备注信息', 1514360265, 1514360265, 1, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lvyecms_access`
--
ALTER TABLE `lvyecms_access`
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `lvyecms_admin_panel`
--
ALTER TABLE `lvyecms_admin_panel`
  ADD UNIQUE KEY `userid` (`mid`,`userid`);

--
-- Indexes for table `lvyecms_attachment`
--
ALTER TABLE `lvyecms_attachment`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `authcode` (`authcode`);

--
-- Indexes for table `lvyecms_attachment_index`
--
ALTER TABLE `lvyecms_attachment_index`
  ADD KEY `keyid` (`keyid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `lvyecms_behavior`
--
ALTER TABLE `lvyecms_behavior`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_behavior_log`
--
ALTER TABLE `lvyecms_behavior_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_behavior_rule`
--
ALTER TABLE `lvyecms_behavior_rule`
  ADD PRIMARY KEY (`ruleid`);

--
-- Indexes for table `lvyecms_cache`
--
ALTER TABLE `lvyecms_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ckey` (`key`);

--
-- Indexes for table `lvyecms_category`
--
ALTER TABLE `lvyecms_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  ADD KEY `siteid` (`type`);

--
-- Indexes for table `lvyecms_category_field`
--
ALTER TABLE `lvyecms_category_field`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `lvyecms_category_priv`
--
ALTER TABLE `lvyecms_category_priv`
  ADD KEY `catid` (`catid`,`roleid`,`is_admin`,`action`);

--
-- Indexes for table `lvyecms_config`
--
ALTER TABLE `lvyecms_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `varname` (`varname`);

--
-- Indexes for table `lvyecms_config_field`
--
ALTER TABLE `lvyecms_config_field`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `lvyecms_customlist`
--
ALTER TABLE `lvyecms_customlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_customtemp`
--
ALTER TABLE `lvyecms_customtemp`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `tempname` (`tempname`);

--
-- Indexes for table `lvyecms_locking`
--
ALTER TABLE `lvyecms_locking`
  ADD KEY `userid` (`userid`),
  ADD KEY `onlinetime` (`locktime`);

--
-- Indexes for table `lvyecms_loginlog`
--
ALTER TABLE `lvyecms_loginlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_menu`
--
ALTER TABLE `lvyecms_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `lvyecms_message`
--
ALTER TABLE `lvyecms_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_model`
--
ALTER TABLE `lvyecms_model`
  ADD PRIMARY KEY (`modelid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `lvyecms_model_field`
--
ALTER TABLE `lvyecms_model_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `modelid` (`modelid`,`disabled`),
  ADD KEY `field` (`field`,`modelid`);

--
-- Indexes for table `lvyecms_module`
--
ALTER TABLE `lvyecms_module`
  ADD PRIMARY KEY (`module`),
  ADD KEY `sign` (`sign`);

--
-- Indexes for table `lvyecms_news`
--
ALTER TABLE `lvyecms_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  ADD KEY `thumb` (`thumb`);

--
-- Indexes for table `lvyecms_news_data`
--
ALTER TABLE `lvyecms_news_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_operationlog`
--
ALTER TABLE `lvyecms_operationlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `username` (`uid`);

--
-- Indexes for table `lvyecms_page`
--
ALTER TABLE `lvyecms_page`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `lvyecms_photo`
--
ALTER TABLE `lvyecms_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  ADD KEY `thumb` (`thumb`);

--
-- Indexes for table `lvyecms_photo_data`
--
ALTER TABLE `lvyecms_photo_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_position`
--
ALTER TABLE `lvyecms_position`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `lvyecms_position_data`
--
ALTER TABLE `lvyecms_position_data`
  ADD KEY `posid` (`posid`),
  ADD KEY `listorder` (`listorder`);

--
-- Indexes for table `lvyecms_role`
--
ALTER TABLE `lvyecms_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentId` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lvyecms_search`
--
ALTER TABLE `lvyecms_search`
  ADD PRIMARY KEY (`searchid`),
  ADD KEY `id` (`id`,`catid`,`adddate`) USING BTREE,
  ADD KEY `modelid` (`modelid`,`catid`),
  ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `lvyecms_search_keyword`
--
ALTER TABLE `lvyecms_search_keyword`
  ADD UNIQUE KEY `keyword` (`keyword`),
  ADD UNIQUE KEY `pinyin` (`pinyin`),
  ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `lvyecms_shaijia`
--
ALTER TABLE `lvyecms_shaijia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`listorder`,`id`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  ADD KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  ADD KEY `thumb` (`thumb`);

--
-- Indexes for table `lvyecms_shaijia_data`
--
ALTER TABLE `lvyecms_shaijia_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvyecms_tags`
--
ALTER TABLE `lvyecms_tags`
  ADD PRIMARY KEY (`tagid`),
  ADD UNIQUE KEY `tag` (`tag`),
  ADD KEY `usetimes` (`usetimes`,`listorder`),
  ADD KEY `hits` (`hits`,`listorder`);

--
-- Indexes for table `lvyecms_tags_content`
--
ALTER TABLE `lvyecms_tags_content`
  ADD KEY `modelid` (`modelid`,`contentid`),
  ADD KEY `tag` (`tag`(10));

--
-- Indexes for table `lvyecms_terms`
--
ALTER TABLE `lvyecms_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `lvyecms_urlrule`
--
ALTER TABLE `lvyecms_urlrule`
  ADD PRIMARY KEY (`urlruleid`);

--
-- Indexes for table `lvyecms_user`
--
ALTER TABLE `lvyecms_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lvyecms_attachment`
--
ALTER TABLE `lvyecms_attachment`
  MODIFY `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `lvyecms_behavior`
--
ALTER TABLE `lvyecms_behavior`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `lvyecms_behavior_log`
--
ALTER TABLE `lvyecms_behavior_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键';
--
-- AUTO_INCREMENT for table `lvyecms_behavior_rule`
--
ALTER TABLE `lvyecms_behavior_rule`
  MODIFY `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `lvyecms_cache`
--
ALTER TABLE `lvyecms_cache`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `lvyecms_category`
--
ALTER TABLE `lvyecms_category`
  MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `lvyecms_category_field`
--
ALTER TABLE `lvyecms_category_field`
  MODIFY `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id';
--
-- AUTO_INCREMENT for table `lvyecms_config`
--
ALTER TABLE `lvyecms_config`
  MODIFY `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `lvyecms_config_field`
--
ALTER TABLE `lvyecms_config_field`
  MODIFY `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lvyecms_customlist`
--
ALTER TABLE `lvyecms_customlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID';
--
-- AUTO_INCREMENT for table `lvyecms_customtemp`
--
ALTER TABLE `lvyecms_customtemp`
  MODIFY `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID';
--
-- AUTO_INCREMENT for table `lvyecms_loginlog`
--
ALTER TABLE `lvyecms_loginlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lvyecms_menu`
--
ALTER TABLE `lvyecms_menu`
  MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `lvyecms_message`
--
ALTER TABLE `lvyecms_message`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `lvyecms_model`
--
ALTER TABLE `lvyecms_model`
  MODIFY `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lvyecms_model_field`
--
ALTER TABLE `lvyecms_model_field`
  MODIFY `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `lvyecms_news`
--
ALTER TABLE `lvyecms_news`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lvyecms_operationlog`
--
ALTER TABLE `lvyecms_operationlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',AUTO_INCREMENT=959;
--
-- AUTO_INCREMENT for table `lvyecms_photo`
--
ALTER TABLE `lvyecms_photo`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lvyecms_position`
--
ALTER TABLE `lvyecms_position`
  MODIFY `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id';
--
-- AUTO_INCREMENT for table `lvyecms_role`
--
ALTER TABLE `lvyecms_role`
  MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lvyecms_search`
--
ALTER TABLE `lvyecms_search`
  MODIFY `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `lvyecms_shaijia`
--
ALTER TABLE `lvyecms_shaijia`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lvyecms_tags`
--
ALTER TABLE `lvyecms_tags`
  MODIFY `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID';
--
-- AUTO_INCREMENT for table `lvyecms_terms`
--
ALTER TABLE `lvyecms_terms`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID';
--
-- AUTO_INCREMENT for table `lvyecms_urlrule`
--
ALTER TABLE `lvyecms_urlrule`
  MODIFY `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `lvyecms_user`
--
ALTER TABLE `lvyecms_user`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
