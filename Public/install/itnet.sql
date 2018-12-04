/*
Navicat MySQL Data Transfer

Source Server         : wx
Source Server Version : 50620
Source Host           : 106.75.227.71:3306
Source Database       : offer

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2018-12-04 10:19:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for itnet_admin_nav
-- ----------------------------
DROP TABLE IF EXISTS `itnet_admin_nav`;
CREATE TABLE `itnet_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属菜单',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `name_en` varchar(50) NOT NULL DEFAULT '' COMMENT '英文名',
  `mca` varchar(50) NOT NULL DEFAULT '' COMMENT '模块、控制器、方法',
  `ico` varchar(20) NOT NULL DEFAULT '' COMMENT 'font-awesome图标',
  `url` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `order_number` int(11) unsigned DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itnet_admin_nav
-- ----------------------------
INSERT INTO `itnet_admin_nav` VALUES ('1', '0', '系统设置', '', 'Admin/ShowNav/config', 'cog', '', '1', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('2', '1', '菜单管理', '', 'Admin/Nav/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('7', '4', '权限管理', '', 'Admin/Rule/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('4', '0', '权限控制', '', 'Admin/ShowNav/rule', 'expeditedssl', '', '1', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('8', '4', '用户组管理', '', 'Admin/Rule/group', '', '', '0', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('9', '4', '管理员列表', '', 'Admin/Rule/admin_user_list', '', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('10', '0', '运营商', 'Carrier', 'Admin/yys/index', 'th', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('11', '10', '行业整体', 'Overview', 'Admin/carrier/index', '', '', '0', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('12', '10', 'NFVI电信云', 'NFVI Cloud', 'Admin/Carrier/index', '', '', '0', '5', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('13', '10', '融合资源池', 'Unified Resource Pool', 'Admin/Carrier/index', '', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('14', '10', '融合大数据', 'Converged Big Data', 'Admin/Carrier/index', '', '', '0', '4', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('15', '10', 'B2B政企托管', 'B2B Hosted Cloud', 'Admin/Carrier/index', '', '', '0', '7', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('16', '0', '安平', 'Safe_City', 'Admin/ap/index', 'retweet', '', '0', '4', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('17', '16', '警务云大数据', 'Police Cloud  Big Data', 'Admin/Carrier/index', '', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('18', '16', '视频云大数据', 'Video Cloud   Big Data', 'Admin/Carrier/index', '', '', '0', '4', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('19', '16', '交通云大数据', 'Traffic Cloud  Big Data', 'Admin/Carrier/index', '', '', '0', '5', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('21', '0', '政府', 'Government', 'Admin/zf/index', 'briefcase', '', '0', '5', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('22', '21', '政务云大数据', 'Government Cloud', 'Admin/Carrier/index', '', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('23', '21', '税务云大数据', 'Tax Cloud', 'Admin/Carrier/index', '', '', '0', '4', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('24', '21', '财政云大数据', 'Finance Cloud', 'Admin/Carrier/index', '', '', '0', '5', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('25', '21', '审计云大数据', 'Auditing Cloud', 'Admin/Carrier/index', '', '', '0', '6', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('26', '21', '海关云大数据', 'Custom Cloud', 'Admin/Carrier/index', '', '', '0', '7', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('33', '10', '运营商机会点地图', 'Carrier Breakthrough Point', 'Admin/case/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('36', '21', '政府行业机会点地图', 'Government Breakthrough Point', 'Admin/case/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('35', '16', '安平行业机会点地图', 'Safe City Breakthrough Point', 'Admin/case/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('37', '0', '金融', 'Finance', 'Admin/jr/index', 'globe', '', '0', '6', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('38', '37', '金融行业机会点地图', 'Finance Breakthrough Point', 'Admin/case/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('39', '0', '大企业', 'Large_Enterprise', 'Admin/dqy/index', 'text-height', '', '0', '7', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('40', '39', '大企业机会点地图', 'Large Enterprise Breakthrough Point', 'Admin/case/index', '', '', '0', '1', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('41', '37', '金融交易云', 'Converged Data Warehouse', 'Admin/Carrier/index', '', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('42', '37', '金融融合数仓', 'Transaction Cloud', 'Admin/Carrier/index', '', '', '0', '4', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('43', '37', '金融智慧决策', 'Intelligent Decision Making', 'Admin/Carrier/index', '', '', '0', '5', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('45', '39', '智能制造云', 'Transaction Cloud', 'Admin/Carrier/index', '', '', '0', '3', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('46', '39', '工业IoT大数据', 'Industrial IoT Big Data', 'Admin/Carrier/index', '', '', '0', '4', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('47', '39', '电力调控云', 'Electricity Regulation Cloud', 'Admin/Carrier/index', '', '', '0', '5', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('48', '39', '电力智能巡检', 'Electricity Intelligent Inspection', 'Admin/Carrier/index', '', '', '0', '6', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('52', '39', '行业整体', 'Overview', 'Admin/Carrier/index', '', '', '0', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('49', '16', '行业整体', 'Overview', 'Admin/Carrier/index', '', '', '0', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('50', '21', '行业整体', 'Overview', 'Admin/Carrier/index', '', '', '0', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('51', '37', '行业整体', 'Overview', 'Admin/Carrier/index', '', '', '0', '2', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('53', '10', 'ICT一朵云', 'ICT One Cloud', 'Admin/Carrier/index', '', '', '0', '6', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('55', '39', '城轨云', 'Metro Cloud', 'Admin/Carrier/index', '', '', '0', '7', '0', '0');
INSERT INTO `itnet_admin_nav` VALUES ('56', '0', '外链', '', 'Admin/Carrier/index', 'random', '', '1', '8', '0', '0');

-- ----------------------------
-- Table structure for itnet_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `itnet_auth_group`;
CREATE TABLE `itnet_auth_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text COMMENT '规则id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户组表';

-- ----------------------------
-- Records of itnet_auth_group
-- ----------------------------
INSERT INTO `itnet_auth_group` VALUES ('1', '超级管理员', '1', '6,96,144,20,1,2,3,4,5,64,21,7,8,9,10,11,12,13,14,15,16,123,19,124,125,126,127,128,129,130,131,139,140,141,142,143,159,149,151,152,153,154,160,150,155,156,157,158,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175');
INSERT INTO `itnet_auth_group` VALUES ('4', '运营商管理员', '1', '6,96,144,21,19,124,125,126,127,128,129,130,131,139,140,141,142,143,159,149,151,152,153,154,150,155,156,157,158,161,162,163,164,165,175');
INSERT INTO `itnet_auth_group` VALUES ('6', '安平管理员', '1', '6,96,144,126,127,128,129,130,131,139,140,141,142,143,159,149,151,152,153,154,160,150,155,156,157,158,161,162,163,164,165,171');
INSERT INTO `itnet_auth_group` VALUES ('7', '政府管理员', '1', '6,96,144,126,127,128,129,130,131,139,140,141,142,143,159,149,151,152,153,154,160,150,155,156,157,158,161,162,163,164,165,172');
INSERT INTO `itnet_auth_group` VALUES ('8', '金融管理员', '1', '6,96,144,126,127,128,129,130,131,139,140,141,142,143,159,149,151,152,153,154,160,150,155,156,157,158,161,162,163,164,165,166,167,168,169,170,173');
INSERT INTO `itnet_auth_group` VALUES ('9', '大企业管理员', '1', '6,96,144,126,127,128,129,130,131,139,140,141,142,143,159,149,151,152,153,154,160,150,155,156,157,158,161,162,163,164,165,174');

-- ----------------------------
-- Table structure for itnet_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `itnet_auth_group_access`;
CREATE TABLE `itnet_auth_group_access` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `group_id` int(11) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组明细表';

-- ----------------------------
-- Records of itnet_auth_group_access
-- ----------------------------
INSERT INTO `itnet_auth_group_access` VALUES ('88', '1');
INSERT INTO `itnet_auth_group_access` VALUES ('90', '4');
INSERT INTO `itnet_auth_group_access` VALUES ('91', '6');
INSERT INTO `itnet_auth_group_access` VALUES ('92', '7');
INSERT INTO `itnet_auth_group_access` VALUES ('93', '8');
INSERT INTO `itnet_auth_group_access` VALUES ('94', '9');

-- ----------------------------
-- Table structure for itnet_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `itnet_auth_rule`;
CREATE TABLE `itnet_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of itnet_auth_rule
-- ----------------------------
INSERT INTO `itnet_auth_rule` VALUES ('1', '20', 'Admin/ShowNav/nav', '菜单管理', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('2', '1', 'Admin/Nav/index', '菜单列表', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('3', '1', 'Admin/Nav/add', '添加菜单', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('4', '1', 'Admin/Nav/edit', '修改菜单', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('5', '1', 'Admin/Nav/delete', '删除菜单', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('21', '0', 'Admin/ShowNav/rule', '权限控制', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('7', '21', 'Admin/Rule/index', '权限管理', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('8', '7', 'Admin/Rule/add', '添加权限', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('9', '7', 'Admin/Rule/edit', '修改权限', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('10', '7', 'Admin/Rule/delete', '删除权限', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('11', '21', 'Admin/Rule/group', '用户组管理', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('12', '11', 'Admin/Rule/add_group', '添加用户组', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('13', '11', 'Admin/Rule/edit_group', '修改用户组', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('14', '11', 'Admin/Rule/delete_group', '删除用户组', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('15', '11', 'Admin/Rule/rule_group', '分配权限', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('16', '11', 'Admin/Rule/check_user', '添加成员', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('19', '21', 'Admin/Rule/admin_user_list', '管理员列表', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('20', '0', 'Admin/ShowNav/config', '系统设置', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('6', '0', 'Admin/Index/index', '后台首页', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('64', '1', 'Admin/Nav/order', '菜单排序', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('96', '6', 'Admin/Index/welcome', '欢迎界面', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('126', '0', 'Admin/Carrier/index', '资料分类', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('127', '126', 'Admin/Carrier/add', '添加分类', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('128', '126', 'Admin/Carrier/edit', '修改分类', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('129', '126', 'Admin/Carrier/delete', '删除分类', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('130', '126', 'Admin/Carrier/order', '分类排序', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('131', '126', 'Admin/Carrier/addziliao', '添加资料', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('149', '0', 'Admin/case/index', '机会点地图', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('150', '0', 'Admin/scene/index', '场景列表', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('151', '149', 'Admin/case/add', '添加机会点', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('152', '149', 'Admin/case/edit', '修改机会点', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('123', '11', 'Admin/Rule/add_user_to_group', '设置为管理员', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('124', '19', 'Admin/Rule/add_admin', '添加管理员', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('125', '19', 'Admin/Rule/edit_admin', '修改管理员', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('153', '149', 'Admin/case/delete', '删除机会点', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('154', '149', 'Admin/case/order', '机会点排序', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('139', '0', 'Admin/Ziliao/index', '资料管理', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('140', '139', 'Admin/Ziliao/add', '添加资料', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('141', '139', 'Admin/Ziliao/edit', '修改资料', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('142', '139', 'Admin/Ziliao/delete', '删除资料', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('143', '139', 'Admin/Ziliao/order', '排序资料', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('144', '6', 'Admin/Login/index', '登录页面', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('156', '150', 'Admin/Scene/edit', '修改场景', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('155', '150', 'Admin/Scene/add', '添加场景', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('157', '150', 'Admin/Scene/delete', '删除场景', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('158', '150', 'Admin/Scene/order', '场景排序', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('159', '139', 'Admin/Ziliao/show_hide', '显示/隐藏', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('160', '149', 'Admin/Case/en', '英文', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('161', '0', 'Admin/Offering/index', 'offering列表', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('162', '161', 'Admin/Offering/add', 'Offering添加', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('163', '161', 'Admin/Offering/delete', 'Offering删除', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('164', '161', 'Admin/Offering/order', 'Offering排序', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('165', '161', 'Admin/Offering/edit', 'offering修改', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('166', '0', 'Admin/video/index', '外链列表', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('167', '166', 'Admin/video/add', '添加外链', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('168', '166', 'Admin/video/delete', '删除外链', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('169', '166', 'Admin/video/edit', '修改外链', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('170', '166', 'Admin/video/order', '外链排序', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('171', '0', 'Admin/ap/index', '安平', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('172', '0', 'Admin/zf/index', '政府', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('173', '0', 'Admin/jr/index', '金融', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('174', '0', 'Admin/dqy/index', '大企业', '1', '1', '');
INSERT INTO `itnet_auth_rule` VALUES ('175', '0', 'Admin/yys/index', '运营商', '1', '1', '');

-- ----------------------------
-- Table structure for itnet_case
-- ----------------------------
DROP TABLE IF EXISTS `itnet_case`;
CREATE TABLE `itnet_case` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `navid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `cxo` varchar(100) DEFAULT '',
  `cxo_en` varchar(200) DEFAULT '' COMMENT '机会点名字()',
  `cxo_url` varchar(255) DEFAULT '',
  `cxo_url_en` varchar(255) DEFAULT NULL,
  `solution` varchar(100) DEFAULT '',
  `solution_en` varchar(255) DEFAULT NULL,
  `solution_url` varchar(255) DEFAULT NULL,
  `solution_url_en` varchar(255) DEFAULT NULL,
  `order_number` int(11) DEFAULT '0' COMMENT '排序',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createtime` datetime DEFAULT NULL COMMENT '添加时间',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nav_name` (`cxo_en`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of itnet_case
-- ----------------------------
INSERT INTO `itnet_case` VALUES ('1', '33', '', '', '', null, '融合资源池', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('2', '33', '', '', '', null, '融合大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('3', '33', '', '', '', null, '水平NFVI（NFVI电信云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('4', '33', '', '', '', null, '中小运营商ICT一朵云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('5', '33', '', '', '', null, 'B2B政企托管', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('6', '33', '', '', '', null, 'BSS业务加速', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('7', '33', '', '', '', null, '虚拟化加速', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('8', '33', '', '', '', null, '存储资源池（云化）', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('9', '33', '', '', '', null, 'KunLun小机替代方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('10', '33', '', '', '', null, '数据库一体机', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('11', '33', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('12', '33', '', '', '', null, 'FusionCube HCI', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('13', '33', '', '', '', null, 'SAP HANA解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('14', '33', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('15', '35', '', '', '', null, '警务云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('16', '35', '', '', '', null, '警务云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('17', '35', '', '', '', null, '警务云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('18', '35', '', '', '', null, '警务云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('19', '35', '', '', '', null, '视频云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('20', '35', '', '', '', null, '视频云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('21', '35', '', '', '', null, '交通云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('22', '35', '', '', '', null, '交通云大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('23', '35', '', '', '', null, '', '', '', null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('24', '35', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('25', '35', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('26', '35', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('27', '35', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('28', '35', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('29', '35', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('30', '36', '', '', '', null, '政务云大数据', null, null, null, '1', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('31', '36', '', '', '', null, '政务云大数据', null, null, null, '2', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('32', '36', '', '', '', null, '税务云大数据', null, null, null, '3', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('33', '36', '', '', '', null, '税务云大数据', null, null, null, '4', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('34', '36', '', '', '', null, '税务云大数据', null, null, null, '5', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('35', '36', '', '', '', null, '人社云大数据', null, null, null, '6', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('36', '36', '', '', '', null, '人社云大数据', null, null, null, '7', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('37', '36', '', '', '', null, '审计云大数据', null, null, null, '8', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('38', '36', '', '', '', null, '卫计委云大数据', null, null, null, '9', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('39', '36', '', '', '', null, '海关云大数据', null, null, null, '10', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('40', '36', '', '', '', null, '教育云大数据', null, null, null, '11', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('41', '36', '', '', '', null, '', null, null, null, '12', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('42', '36', '', '', '', null, '', null, null, null, '13', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('43', '36', '', '', '', null, '高端全闪存双活解决方案', null, null, null, '14', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('44', '36', '', '', '', null, '社保核心双活 电子档案', null, null, null, '15', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('45', '36', '', '', '', null, '智慧粮库分支', null, null, null, '16', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('46', '36', '', '', '', null, '审计全生命周期数据管理', null, null, null, '17', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('47', '36', '', '', '', null, '医院双活2.0+', null, null, null, '18', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('48', '36', '', '', '', null, '医疗云解决方案', null, null, null, '19', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('49', '36', '', '', '', null, '医联体一体机', null, null, null, '20', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('50', '36', '', '', '', null, '海关核心业务加速', null, null, null, '21', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('51', '36', '', '', '', null, '教育存储', null, null, null, '22', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('52', '36', '', '', '', null, '数据湖', null, null, null, '23', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('53', '36', '', '', '', null, '', null, null, null, '24', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('54', '36', '', '', '', null, '1、办事大厅桌面：链接克隆桌面重启还原免维护，外设兼容性强。', null, null, null, '25', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('55', '36', '', '', '', null, 'KunLun小机替代方案', null, null, null, '26', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('56', '36', '', '', '', null, 'KunLun小机替代方案', null, null, null, '27', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('57', '36', '', '', '', null, 'FusionCube HCI', null, null, null, '28', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('58', '36', '', '', '', null, '1、多媒体教室：链接克隆桌面云重启还原免维护；瘦终端开机自动登录，用户免账号登录。', null, null, null, '30', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('59', '36', '', '', '', null, '', null, null, null, '31', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('60', '36', '', '', '', null, '数据中心能源', null, null, null, '32', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('61', '36', '', '', '', null, '数据中心能源', null, null, null, '33', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('62', '38', '', '', '', null, '金融交易云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('63', '38', '', '', '', null, '金融融合数仓', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('64', '38', '', '', '', null, '金融智慧决策', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('65', '38', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('66', '38', '', '', '', null, '开放平台生产资源池', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('67', '38', '', '', '', null, '数据湖', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('68', '38', '', '', '', null, '电子影像内容管理解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('69', '38', '', '', '', null, '管理生产资源池', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('70', '38', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('71', '38', '', '', '', null, '银行业务级灾备切换平台解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('72', '38', '', '', '', null, 'SAP HANA解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('73', '38', '', '', '', null, '虚拟化一体机', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('74', '38', '', '', '', null, 'AI一体机', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('75', '38', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('76', '38', '', '', '', null, 'KunLun小机替代方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('77', '38', '', '', '', null, '研发安全办公桌面云：完整复制桌面，每个人独占虚机，保证用户个性化办公。数据不落地，彻底解决机密数据泄密问题。', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('78', '38', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('79', '38', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('80', '40', '', '', '', null, '智能制造云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('81', '40', '', '', '', null, '工业IOT大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('82', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('83', '40', '', '', '', null, '制造ERP核心业务系统加速解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('84', '40', '', '', '', null, '制造MES存储解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('85', '40', '', '', '', null, '制造CAE 高性能计算解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('86', '40', '', '', '', null, '制造PLM存储解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('87', '40', '', '', '', null, '制造数据湖', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('88', '40', '', '', '', null, '芯片EDA 高性能计算解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('89', '40', '', '', '', null, '企业信息化', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('90', '40', '', '', '', null, '企业信息化', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('91', '40', '', '', '', null, '自动驾驶解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('92', '40', '', '', '', null, 'HPC解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('93', '40', '', '', '', null, 'HPC解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('94', '40', '', '', '', null, 'vGPU桌面提供高性能3D图形设计；设计文档保存在OceanStor 9000/ V5 NAS，便于多用户共享协同设计。', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('95', '40', '', '', '', null, 'vGPU桌面', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('96', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('97', '40', '', '', '', null, '调控云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('98', '40', '', '', '', null, '配网云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('99', '40', '', '', '', null, '营销云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('100', '40', '', '', '', null, '运检云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('101', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('102', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('103', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('104', '40', '', '', '', null, '油气探采通用NAS解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('105', '40', '', '', '', null, '油气SAP HANA', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('106', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('107', '40', '', '', '', null, 'SAP HANA解决方案（S/4HANA，含CRM)', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('108', '40', '', '', '', null, '通用桌面云方案，安全办公，高效运维', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('109', '40', '', '', '', null, 'HPC解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('110', '40', '', '', '', null, 'SAP HANA解决方案（BWoH)', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('111', '40', '', '', '', null, '分支机构桌面云：1、资源分布部署，用户就近接入。2.总部集中运维。3.多个分支桌面统一域名，提升用户登录体验。', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('112', '40', '', '', '', null, '城轨云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('113', '40', '', '', '', null, '交通大数据', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('114', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('115', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('116', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('117', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('118', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('119', '40', '', '', '', null, '双活灾备解决方案', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('120', '40', '', '', '', null, '视频监控存储', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('121', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('122', '40', '', '', '', null, '通用办公桌面云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('123', '40', '', '', '', null, 'SAP HANA解决方案（BWoH)', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('124', '40', '', '', '', null, '通用办公桌面云', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('125', '40', '', '', '', null, '', null, null, null, '0', '1', null, '0');
INSERT INTO `itnet_case` VALUES ('129', '36', '', '', '', null, 'KunLun小机替代方案', '', '', null, '29', '0', null, '0');

-- ----------------------------
-- Table structure for itnet_category
-- ----------------------------
DROP TABLE IF EXISTS `itnet_category`;
CREATE TABLE `itnet_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `navid` int(11) unsigned DEFAULT '0' COMMENT '菜单id',
  `name` varchar(50) DEFAULT '' COMMENT '菜单名称',
  `name_en` varchar(100) DEFAULT '' COMMENT '英文名',
  `order_number` int(11) unsigned DEFAULT '0' COMMENT '排序',
  `pid` int(11) DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itnet_category
-- ----------------------------
INSERT INTO `itnet_category` VALUES ('1', '11', '高层主打', '', '1', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('2', '11', '关键信息', '', '2', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('3', '11', '一纸禅', '', '3', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('4', '11', '体验云', '', '4', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('5', '11', '销售策略', '', '5', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('6', '11', '行业案例', '', '6', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('7', '13', '交流材料', '', '1', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('8', '13', '项目投标', '', '2', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('9', '12', 'NFVI 主打胶片', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('10', '12', '开放性交流专题材料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('11', '12', 'GlobaData NFVI市场分析报告', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('12', '12', 'CloudOS选型策略引导材料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('13', '12', '项目投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('14', '15', 'B2B 托管云主打胶片', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('15', '53', '一朵云主打胶片', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('16', '14', '大数据主打胶片', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('17', '49', '上市材料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('18', '49', '高层拜访', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('19', '49', '展览展示', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('20', '49', '销售指导', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('21', '17', '通用资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('22', '17', '省市一片云', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('23', '17', '涉毒分析', '', '0', '0', '1', '0');
INSERT INTO `itnet_category` VALUES ('24', '17', '假药售贩', '', '0', '0', '1', '0');
INSERT INTO `itnet_category` VALUES ('25', '17', 'JZ 4G侦控', '', '0', '0', '1', '0');
INSERT INTO `itnet_category` VALUES ('26', '18', '通用资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('27', '18', '多级视频云', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('28', '18', '分支视频云', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('29', '18', '人像识别布控', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('30', '19', '通用资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('31', '19', 'AI辅助执法', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('32', '19', '交通大数据', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('33', '50', '行业通用', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('34', '50', '品牌营销', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('35', '22', '项目投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('36', '22', '演示体验', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('37', '22', '项目投标（海外）', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('38', '23', '项目投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('39', '23', '演示体验', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('40', '23', '项目投标（海外）', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('41', '24', '项目投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('42', '24', '演示体验', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('43', '25', '项目投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('44', '25', '演示体验', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('45', '26', '项目投标（海外）', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('46', '51', '项目拓展', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('47', '41', '产品和解决方案', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('48', '41', '营销和品牌', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('49', '41', '销售和投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('50', '42', '产品和解决方案', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('51', '42', '销售和投标', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('52', '43', '产品和解决方案', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('53', '43', '营销和品牌', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('54', '43', '销售和投标', 'Sales &amp; Bidding', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('55', '52', '营销资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('56', '55', '营销资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('57', '47', '营销资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('58', '48', '营销资料', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('59', '15', '运营商', 'carrier', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('60', '56', '侧边栏链接', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('61', '56', '底部栏链接', '', '0', '0', '0', '0');
INSERT INTO `itnet_category` VALUES ('63', '46', 'FusionAccess', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for itnet_offering
-- ----------------------------
DROP TABLE IF EXISTS `itnet_offering`;
CREATE TABLE `itnet_offering` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `caseid` int(11) unsigned DEFAULT '0' COMMENT '菜单id',
  `name` varchar(100) DEFAULT '' COMMENT '菜单名称',
  `name_en` varchar(200) DEFAULT NULL,
  `url` varchar(300) DEFAULT '' COMMENT '英文名',
  `url_en` varchar(300) DEFAULT NULL,
  `order_number` int(11) unsigned DEFAULT '0' COMMENT '排序',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itnet_offering
-- ----------------------------
INSERT INTO `itnet_offering` VALUES ('205', '1', 'FusionCloud 6.3', '', 'http://www.baidu.com', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('206', '1', 'FusionServer', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('207', '1', 'Kunlun', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('208', '1', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('209', '1', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('210', '1', 'Dorado', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('211', '1', 'OceanStor 18000 F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('212', '2', 'FusionInsight2.8', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('213', '3', 'FusionCloud NFVI 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('214', '4', 'FusionCloud NFVI 6.3+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('215', '4', ' FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('216', '5', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('217', '6', 'OceanStor Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('218', '7', 'OceanStor Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('219', '8', 'FusionStorage Block ', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('220', '9', 'KunLun小机替代方案', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('221', '9', 'Kunlun 9016', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('222', '9', '9008V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('223', '10', '数据库一体机FusionCube 3.1', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('224', '11', 'FusionAccess', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('225', '11', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('226', '11', 'Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('227', '12', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('228', '13', 'HANA一体机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('229', '14', '数据中心能源', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('230', '15', 'Public Safety Cloud Solution 1.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('231', '16', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('232', '16', 'FusionComputer 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('233', '16', 'FusionInsight  2.8', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('234', '17', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('235', '17', 'FusionComputer 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('236', '18', 'FusionInsight 2.8', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('237', '19', 'Public Safety Cloud Solution 1.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('238', '20', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('239', '20', 'OceanStor 9000 V3R6C20', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('240', '20', 'Atlas 1.0.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('241', '21', 'Public Safety Cloud Solution 1.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('242', '22', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('243', '22', 'OceanStor 9000 V3R6C20', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('244', '23', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('245', '24', 'OceanStor 18000 F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('246', '24', 'DoradoV3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('247', '25', 'OceanStor 18500 F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('248', '25', 'OceanStor V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('249', '25', '9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('250', '26', 'OceanStor 18000F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('251', '26', 'OceanStor DoradoV3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('252', '27', 'OceanStor 9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('253', '28', 'VDI：FusionAccess', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('254', '28', '服务器：2288 V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('255', '28', '2288H V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('256', '28', 'E9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('257', '28', '存储：OceanStor V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('258', '28', 'OceanStor V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('259', '29', '数据中心能源', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('260', '30', 'FusionCloud6.3+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('261', '30', 'FusionInsight2.7+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('262', '30', 'FusionStage2.2', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('263', '30', '泰山2280+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('264', '30', 'OceanStor 18000 V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('265', '31', 'FusionCloud6.5+', '', '', null, '1', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('266', '31', 'FusionInsight3.0+', '', '', null, '3', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('267', '31', 'FusionStage2.3', '', '', null, '2', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('268', '32', 'FusionCloud6.5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('269', '32', 'FusionStage2.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('270', '33', 'FusionCloud6.5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('271', '34', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('272', '35', 'FusionCloud6.5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('273', '35', 'FusionStage2.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('274', '36', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('275', '37', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('276', '38', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('277', '39', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('278', '40', 'FusionCloud', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('279', '42', 'FusionSphere', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('283', '43', 'Oceanstor 18000F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('281', '41', 'FusionSphere', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('282', '41', 'FusionAccess', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('284', '44', 'Oceanstor 18000  V5双活', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('285', '44', 'OceanStor Dorado双活+CDM', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('286', '44', 'OceanStor 9000/FusionStorage ', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('287', '45', 'FusionROBO粮安一体机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('288', '46', 'OceanStor V5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('289', '46', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('290', '47', '三甲：OceanStor 18000F双活/OceanStor Dorado双活+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('291', '47', 'CDM+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('292', '47', 'OceanStor 9000+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('293', '47', 'DJ', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('294', '47', '中小医院：OceanStor 5000双活+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('295', '47', 'CDM ', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('296', '48', 'OceanStor 18000双活解决方案', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('297', '49', 'FusionROBO基层医疗机构一体机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('298', '50', 'OceanStor Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('299', '51', 'FusionROBO一体化机柜', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('300', '52', 'ESRI ArcGis平台+ ', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('301', '52', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('302', '53', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('303', '54', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('304', '55', 'KunLun小型机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('305', '56', 'KunLun小型机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('306', '57', '超融合FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('307', '129', 'KunLun小型机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('308', '58', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('309', '59', '超融合FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('310', '60', '数据中心能源', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('311', '61', '数据中心能源', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('312', '62', 'FusionCloud 6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('313', '62', 'Kunlun', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('314', '62', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('315', '62', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('316', '62', 'Dorado', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('317', '62', 'OceanStor 18000 F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('318', '63', 'FusionInsight 2.8', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('319', '63', 'TaiShan', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('320', '64', 'FusionInsight 2.8', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('321', '64', 'Atlas', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('322', '64', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('323', '65', 'FusionCloud', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('324', '65', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('325', '66', 'OceanStor Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('326', '66', 'OceanStor 18000 F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('327', '67', 'FusionInsight+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('328', '67', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('329', '68', 'OceanStor V3 NAS', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('330', '68', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('331', '69', 'OceanStor Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('332', '69', 'OceanStor 18000 F V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('333', '70', 'OceanStor 9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('334', '70', 'OceanStor 2800 V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('335', '71', ' 联合方案：高伟达业务管理软件+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('336', '71', 'BCmanager+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('337', '71', 'OceanStor V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('338', '72', 'SAP HANA一体机', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('339', '73', 'FusionCube 3.1', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('340', '74', 'Atlas G5500', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('341', '75', '全闪存', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('342', '75', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('343', '75', 'FusionServer', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('344', '75', 'KunLun', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('345', '76', '全闪存', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('346', '76', 'KunLun', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('347', '77', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('348', '78', '中低端存储', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('349', '78', 'FusionServer', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('350', '79', '数据中心能源', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('351', '80', 'FusionCloud6.5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('352', '80', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('353', '81', 'FusionInsight', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('354', '82', 'FusionCloud', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('355', '82', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('356', '83', 'SAP HANA TDI', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('357', '83', 'OceanStor Dorado双活+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('358', '83', ' CDM', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('359', '84', 'OceanStor V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('360', '85', 'OceanStor 9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('361', '86', 'OceanStor V5 NAS', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('362', '87', 'FusionStorage', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('363', '88', 'OceanStor V5 NAS', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('364', '89', 'FusionRoBo', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('365', '90', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('366', '90', 'OceanStor Dorado', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('367', '91', 'FusionStorage OBS 7.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('368', '92', 'HPC', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('369', '92', 'OceanStor V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('370', '93', 'HPC', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('371', '93', 'OceanStor 9000/ V5 NAS', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('372', '94', 'HPC', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('373', '94', 'OceanStor 9000/ V5 NAS', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('374', '94', 'VDI', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('375', '95', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('376', '95', '全闪存', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('377', '95', 'FusionServer', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('378', '96', '数据中心能源', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('379', '97', 'FusionCloud6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('380', '98', 'FusionCloud6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('381', '99', 'FusionCloud6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('382', '100', 'FusionCloud6.3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('383', '101', 'OceanStor 18000 V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('384', '102', 'OceanStor 18000 V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('385', '103', 'OceanStor 9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('386', '104', 'OceanStor V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('387', '105', 'OceanStor V5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('388', '105', 'SAP HANA', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('389', '106', '桌面云+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('390', '106', 'Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('391', '107', 'SAP HANA', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('392', '107', '全闪存', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('393', '108', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('394', '109', 'HPC', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('395', '109', 'OceanStor 9000', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('396', '110', 'SAP HANA', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('397', '111', '桌面云+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('398', '111', 'Dorado V3', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('399', '112', 'FusionCloud6.5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('400', '112', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('401', '113', 'FusionCloud6.5+', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('402', '113', 'FusionInsight3.0', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('403', '114', 'FusionCloud', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('404', '114', '全闪存', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('405', '114', 'kunLun', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('406', '115', '视频云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('407', '115', '视频监控存储', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('408', '116', 'FusionCloud', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('409', '117', '灾备解决方案', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('410', '118', '视频监控存储OceanStor 2800 V5', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('411', '119', 'OceanStor 18000 V5双活', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('412', '121', 'FusionCube', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('413', '122', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('414', '123', 'SAP HANA服务器（KunLun ）', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('415', '124', '桌面云', '', '', null, '0', '0', '0', '0');
INSERT INTO `itnet_offering` VALUES ('416', '125', '数据中心能源', '', '', null, '0', '0', '0', '0');

-- ----------------------------
-- Table structure for itnet_scene
-- ----------------------------
DROP TABLE IF EXISTS `itnet_scene`;
CREATE TABLE `itnet_scene` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `caseid` int(11) unsigned DEFAULT '0' COMMENT '菜单id',
  `name` varchar(100) DEFAULT '' COMMENT '菜单名称',
  `name_en` varchar(200) DEFAULT NULL,
  `url` varchar(300) DEFAULT '' COMMENT '英文名',
  `url_en` varchar(300) DEFAULT NULL,
  `order_number` int(11) unsigned DEFAULT '0' COMMENT '排序',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itnet_scene
-- ----------------------------
INSERT INTO `itnet_scene` VALUES ('1', '1', '电子渠道业务云', null, 'http://www.baidu.com', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('2', '1', 'CRM上云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('4', '1', 'RDS（for Non-Oracle）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('6', '1', 'OSS云化', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('7', '2', '数仓卸载', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('8', '2', '融合大数据平台', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('9', '3', 'IMS业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('10', '3', 'EPC业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('11', '4', 'ICT融合', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('28', '5', '混合云（云网协同）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('29', '5', '政务云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('30', '5', '行业视频云（雪亮工程）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('31', '6', 'Billing、CRM核心数据库', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('32', '7', '桌面云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('33', '7', '私有云（海外）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('34', '8', 'BOM域的云化改造', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('35', '9', '运营商核心数据库', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('36', '10', '运营商BI系统', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('37', '11', 'VDI&amp;虚拟化', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('38', '12', '云平台快速建设', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('39', '13', 'SAP数据库（内存计算）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('40', '14', '运营商数据中心新建/扩容', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('41', '15', '涉毒分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('42', '15', '假药售贩', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('43', '15', '经济侦查（涉密）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('44', '15', '刑事侦查', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('45', '15', 'JZ 4G侦控（涉密）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('46', '15', 'FK情报分析（涉密）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('47', '15', '部本大数据中心（涉密）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('48', '15', '省市一片云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('49', '15', '新警综改造', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('50', '16', '警务大数据平台（海外）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('51', '17', '融合指挥IT解决方案（海外）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('52', '18', '社会媒体分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('53', '19', '视频综合应用', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('54', '19', '人像识别布控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('55', '19', '车辆识别布控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('56', '19', '时空信息管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('57', '19', '多级视频云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('58', '19', '分支视频云（海外）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('59', '20', 'Cloud IVS+IT视频云（海外）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('60', '21', '违章图片识别', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('61', '21', '图片二次识别', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('62', '21', '行人闯红灯', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('63', '21', '集成指挥平台', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('64', '21', '交通决策分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('65', '21', '路况大数据', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('66', '21', '勤务指挥调度', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('67', '22', '智能交通（ITS）IT解决方案（海外）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('68', '23', '安平数据中心灾备', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('69', '24', '交通管理综合应用平台', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('70', '25', '检察院电子检务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('71', '25', '数字法院', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('72', '26', '新警综改造', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('73', '27', '视频监控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('74', '28', '指挥中心坐席/公安办公', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('75', '29', '安平数据中心新建/扩容', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('76', '30', '一号一窗一网', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('77', '30', '国家数据中心新建整合', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('78', '30', '智慧城市私有云平台', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('79', '31', '综合治税', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('80', '31', '智慧城市IOC', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('81', '32', '电子税务局', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('82', '33', '税务核心征管', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('83', '34', '税务稽查', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('84', '34', '税务决策分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('85', '35', '互联网+人社', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('86', '35', '人社经办业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('87', '36', '精准社保', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('88', '36', '人社决策支持', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('89', '37', '审计综合作业', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('90', '38', '卫计委全民健康', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('91', '39', '海关实时风控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('92', '40', '教育云数据中心新建整合', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('93', '41', '军工行业科研院所研发业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('94', '42', '电磁信号、遥感图片、嘈杂环境音频分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('95', '43', '税务核心征管灾备及业务加速', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('96', '43', '税务社保征收系统新建', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('97', '44', '人社金保二期灾备', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('98', '45', '粮安工程', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('99', '46', '金审三期审计大数据', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('100', '47', '数字医院信息化建设', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('101', '48', '人口健康平台/全民健康平台', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('102', '49', '医联体信息化建设', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('103', '50', '海关通关分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('104', '51', '教育局/普教一体化IT系统', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('105', '52', '国土地理信息云化', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('106', '53', '安全办公', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('107', '54', '办事大厅坐席', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('108', '55', '税务核心业务系统DB小机替代', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('109', '56', '人社核心业务系统DB小机替代', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('110', '57', '医疗业务系统虚拟化和DB加速', '', '', '', '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('111', '58', '多媒体教室-云课堂', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('112', '59', '教学应用虚拟化和DB加速', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('113', '60', '教育云数据中心新建/扩容', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('114', '61', '政府数据中心新建/扩容', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('115', '62', '网上银行', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('116', '62', '手机银行', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('117', '62', '直销银行', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('118', '62', '呼叫中心', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('119', '62', '中间业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('120', '62', '信用卡', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('121', '62', '消费贷', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('122', '62', '保险营销管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('123', '62', '证券行情资讯', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('124', '63', '客户关系管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('125', '63', '绩效管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('126', '63', '统一监管报送', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('127', '63', '信用卡明细查询', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('128', '63', '客户提数', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('129', '63', '财务分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('130', '63', '客户个性化推荐', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('131', '64', '实时征信', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('132', '64', '信用卡交易反欺诈', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('133', '64', '保单实时反欺诈', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('134', '64', '证券交易监察', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('135', '64', '数据分析系统', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('136', '65', '开发测试', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('137', '66', 'A类联机生产', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('138', '67', '金融大数据', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('139', '68', '电子影像/双录对象应用', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('140', '69', 'B类报表分析类业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('141', '70', '分行视频监控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('142', '71', '银行业务级容灾', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('143', '72', 'S/4HANA HANA　', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('144', '73', '开发测试私有云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('145', '74', '金融大数据智能分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('146', '76', '核心银行系统', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('147', '75', '渠道前置系统', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('148', '77', '办公/开发测试系统VDI', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('149', '78', '电子影像', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('150', '79', '金融数据中心新建/扩容', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('151', '80', '工业互联网', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('152', '80', '产线可视化', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('153', '80', '设备健康监控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('154', '80', '产品生命周期管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('156', '81', '工业IOT数据分析', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('157', '82', '制造数据中心新建整合 ', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('158', '83', '制造ERP/CRM', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('159', '83', '决策管控BI/BW', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('160', '84', '智能化工厂MES', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('161', '85', '制造CAE仿真', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('162', '86', '制造CAD、PLM共享', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('163', '87', '汽车无人驾驶研发', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('164', '88', '半导体设计EDA及制造仿真', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('165', '89', '大企业分支机构一站式IT方案', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('166', '90', '制造办公OA', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('167', '91', '自动驾驶', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('168', '92', '芯片设计', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('169', '93', '制造CAE仿真', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('170', '94', 'CAD共享', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('171', '95', '制造办公OA', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('172', '96', '制造业设备供电保障', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('173', '97', '电网智能调控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('174', '98', '变电站无人值守', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('175', '99', '网上国网一网通办', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('176', '100', '电网智能巡检', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('177', '101', '国家电网存量经营', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('178', '102', '国家电网核心系统', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('179', '103', '油气勘探', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('180', '104', '油藏模拟场景', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('181', '105', 'ERP业务', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('182', '106', '分支办公桌面云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('183', '107', 'ERP、CRM等业务管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('184', '108', '电力办公OA', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('185', '109', '油气勘探', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('186', '110', '油气生产经营管理', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('187', '111', '分支办公桌面云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('188', '112', '智能城轨', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('189', '113', '交通委智慧交通', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('190', '114', '数据中心灾备', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('191', '115', '视频监控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('192', '116', '航空数据中心新建整合', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('193', '117', '航空数据中心灾备', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('194', '118', '要地安防监控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('195', '119', '铁路智能数据中心', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('196', '120', '视频监控', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('197', '121', '运营调度系统 ', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('198', '122', '办公OA', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('199', '123', '运营管理（清分中心）', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('200', '124', '办公、离港、登机、航显桌面云', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('201', '125', '交通行业设备供电保障', null, '', null, '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('204', '128', '运营商', 'carrier', 'http://www.baidu.com', 'to be', '0', '0', '0', '0');
INSERT INTO `itnet_scene` VALUES ('205', '129', '海关核心业务系统DB小机替代', '', '', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for itnet_session
-- ----------------------------
DROP TABLE IF EXISTS `itnet_session`;
CREATE TABLE `itnet_session` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(60) NOT NULL DEFAULT '',
  `session_data` varchar(600) NOT NULL DEFAULT '',
  `session_expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`session_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itnet_session
-- ----------------------------

-- ----------------------------
-- Table structure for itnet_users
-- ----------------------------
DROP TABLE IF EXISTS `itnet_users`;
CREATE TABLE `itnet_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；mb_password加密',
  `avatar` varchar(255) DEFAULT '' COMMENT '用户头像，相对于upload/avatar目录',
  `email` varchar(100) DEFAULT '' COMMENT '登录邮箱',
  `email_code` varchar(60) DEFAULT NULL COMMENT '激活码',
  `phone` bigint(11) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `register_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` varchar(16) DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(10) unsigned DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itnet_users
-- ----------------------------
INSERT INTO `itnet_users` VALUES ('88', 'admin', '0192023a7bbd73250516f069df18b500', '/Upload/avatar/user1.jpg', '', '', null, '1', '1449199996', '', '0');
INSERT INTO `itnet_users` VALUES ('90', 'test1', 'e10adc3949ba59abbe56e057f20f883e', '', '', null, '0', '1', '1520587927', '', '0');
INSERT INTO `itnet_users` VALUES ('91', 'test2', 'e10adc3949ba59abbe56e057f20f883e', '', '', null, '0', '1', '1541575292', '', null);
INSERT INTO `itnet_users` VALUES ('92', 'test3', 'e10adc3949ba59abbe56e057f20f883e', '', '', null, null, '1', '1541575513', '', null);
INSERT INTO `itnet_users` VALUES ('93', 'test4', 'e10adc3949ba59abbe56e057f20f883e', '', '', null, null, '1', '1541575552', '', null);
INSERT INTO `itnet_users` VALUES ('94', 'test5', 'e10adc3949ba59abbe56e057f20f883e', '', '', null, null, '1', '1541575562', '', null);

-- ----------------------------
-- Table structure for itnet_video
-- ----------------------------
DROP TABLE IF EXISTS `itnet_video`;
CREATE TABLE `itnet_video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '视频表id',
  `cateid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `name_en` varchar(200) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  `url_en` varchar(200) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1首页显示',
  `order_number` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img` varchar(100) NOT NULL DEFAULT '',
  `createtime` datetime DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of itnet_video
-- ----------------------------
INSERT INTO `itnet_video` VALUES ('260', '60', '云计算与大数据', 'Cloud Computing &amp; Big Data', 'https://fusioncloud.huawei.com/portal/support/marketing.html', 'https://fusioncloud.huawei.com/portal/support/marketing.html', '0', '0', '/Upload/video_img/2018-11-02/5bdc013d76d94.png', '2018-11-02 15:48:13', '0', '0');
INSERT INTO `itnet_video` VALUES ('261', '60', '智能计算', 'Intelligent Computing', 'http://server.huawei.com', 'http://server.huawei.com?lang=en', '0', '0', '/Upload/video_img/2018-11-02/5bdc01bd0cc03.png', '2018-11-06 16:41:02', '0', '0');
INSERT INTO `itnet_video` VALUES ('262', '60', '存储', 'Storage', 'http://storage.huawei.com', 'http://storage.huawei.com/en/', '0', '0', '/Upload/video_img/2018-11-02/5bdc020305819.png', '2018-11-06 16:40:51', '0', '0');
INSERT INTO `itnet_video` VALUES ('263', '60', '视频监控', 'Video Surveillance', 'http://3ms.huawei.com/hi/EnterpriseBG_connect/IVS_index.html', 'http://3ms.huawei.com/hi/EnterpriseBG_connect/IVS_index.html', '0', '0', '/Upload/video_img/2018-11-02/5bdc020bb9b0a.png', '2018-11-02 15:51:39', '0', '0');
INSERT INTO `itnet_video` VALUES ('264', '60', '数据中心能源', 'Data Center Energy', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2031921&amp;id=1447547', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2031921&amp;id=1447547', '0', '0', '/Upload/video_img/2018-11-02/5bdc021ac3a6b.png', '2018-11-02 15:51:54', '0', '0');
INSERT INTO `itnet_video` VALUES ('265', '61', '热点视频', 'Hot Video', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2899827&amp;id=1409603', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2899827&amp;id=1409603', '0', '0', '/Upload/video_img/2018-11-02/5bdc66a0a15c2.png', '2018-11-02 23:00:48', '0', '0');
INSERT INTO `itnet_video` VALUES ('266', '61', '在线体验', 'Experience Online', 'https://fusioncloud.huawei.com/', 'https://fusioncloud.huawei.com/', '0', '0', '/Upload/video_img/2018-11-02/5bdc6727587a9.png', '2018-11-02 23:03:03', '0', '0');
INSERT INTO `itnet_video` VALUES ('267', '61', '在线PoC', 'Online PoC', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=3455855&amp;id=1529759', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=3455855&amp;id=1529759', '0', '0', '/Upload/video_img/2018-11-02/5bdc672f2e826.png', '2018-11-02 23:03:11', '0', '0');
INSERT INTO `itnet_video` VALUES ('268', '61', '合作伙伴', 'Cooperation Partner', 'http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&amp;topic_id=1003900', 'http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&amp;topic_id=1003900', '0', '0', '/Upload/video_img/2018-11-02/5bdc6736caf88.png', '2018-11-02 23:03:18', '0', '0');

-- ----------------------------
-- Table structure for itnet_ziliao
-- ----------------------------
DROP TABLE IF EXISTS `itnet_ziliao`;
CREATE TABLE `itnet_ziliao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `name_en` varchar(300) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  `url_en` varchar(300) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT '作者',
  `order_number` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `createtime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '中英文所属',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nav_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of itnet_ziliao
-- ----------------------------
INSERT INTO `itnet_ziliao` VALUES ('1', '1', '运营商云化转型高层交流主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180716015028694&amp;doc_msl_ids=160213&amp;topic_id=1000480', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180716015028694&amp;doc_msl_ids=160213&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('2', '2', '运营商云转型关键信息', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?topic_id=1000480&amp;doc_msl_ids=160213&amp;f_id=MSS180716015028694&amp;mslType=msl_type&amp;method=showMMDetail', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?topic_id=1000480&amp;doc_msl_ids=160213&amp;f_id=MSS180716015028694&amp;mslType=msl_type&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('3', '2', '运营商云化转型市场拓展指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180823360315250&amp;doc_msl_ids=162025&amp;topic_id=1000480', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180823360315250&amp;doc_msl_ids=162025&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('4', '2', 'FusionCloud 6.3关键信息', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180702310336889', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180702310336889', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('5', '3', '运营商云化转型高层交流一纸禅', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180716015028694', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180716015028694', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('8', '4', '在线高层体验云', '', 'http://expcloud.huawei.com/expcloud/scservice/reserve/inno/', 'http://expcloud.huawei.com/expcloud/scservice/reserve/inno/', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('9', '4', '运营商数据中心高层体验', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?topic_id=1000480&amp;doc_msl_ids=161916&amp;f_id=MSS180821371316550&amp;mslType=msl_type&amp;method=showMMDetail', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?topic_id=1000480&amp;doc_msl_ids=161916&amp;f_id=MSS180821371316550&amp;mslType=msl_type&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('10', '4', '运营商数据中心价值主张及体验云发布', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180723465016550&amp;doc_msl_ids=160640&amp;topic_id=1000480', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('11', '5', '运营商上云指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180716292213406&amp;doc_msl_ids=160217&amp;topic_id=1000480', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180713433813406', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('12', '5', 'FusionCloud 6.3行业销售场景策略与能力基线', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180711143761671', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('13', '5', '华为FusionCloud 运营商行业市场策略', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180308594614827', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('14', '5', 'Huawei FusionInsight 销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180711513413313', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('15', '5', '华为FusionCloud 6.3售前技术FAQ', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180502551714167', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180717251014167', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('16', '5', '华为FusionCloud NFVI解决方案销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180718380813229', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('17', '5', '10 Reasons why Carriers should sell Cloud', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS170421264677019&amp;doc_msl_ids=123556&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('18', '5', '运营商FusionCloud融合资源池上市策略', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180630452315250&amp;doc_msl_ids=&amp;topic_id=1000480', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180630452315250&amp;doc_msl_ids=&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('19', '5', '运营商场景 IT Cloud battle card', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS18072407519132', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('20', '5', 'FusionCloud 能力基线 &amp; 市场策略', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180731433636889', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('21', '6', '华为运营商云案例集', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180411000646728&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('22', '6', 'NFVI Case Study', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?flag=expert&amp;f_id=MSS180723523725894&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('23', '6', 'FusionCloud NFVI Solution Case', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?topic_id=1000480&amp;doc_msl_ids=127966&amp;f_id=MSS170525045125400&amp;mslType=msl_type&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('24', '6', '华为FusionCloud NFVI解决方案项目案例分析与经验教训总结（AM）（内部版） ', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC16013033390069', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('25', '6', '华为FusionCloud NFVI 解决方案案例(AM 一页版）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC16080305390061', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('26', '6', '泰国True政企云项目案例', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCC170227103413767', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCC170227103413767', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('27', '6', '嘉兴电信医疗影像云案例', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS170426161960518&amp;doc_msl_ids=125138&amp;topic_id=1000480', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('28', '6', 'Jiaxing e-government Cloud Case Study', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS170425075360518&amp;doc_msl_ids=125134&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('29', '6', '河南移动安阳政企云一页版.pptx；河南移动安阳政企云详版', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCC16112603040097&amp;doc_msl_ids=107731&amp;topic_id=1000480', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('30', '7', '运营商私有云FusionCloud解决方案技术主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180713431213870&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('31', '7', 'CloudNative-电子渠道业务上云场景解决方案', '', 'http://3ms.huawei.com/hi/group/3575787/file_12806045.html?for_statistic_from=my_group_file', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('32', '7', 'Oracle数据库上云方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180820255930431', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180820215730431', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('33', '7', '华为运营商融合资源池存量版本演进路径与方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;flag=expert&amp;f_id=MSS180816274815401', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;flag=expert&amp;f_id=MSS180816262515401', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('34', '7', '华为运营商融合资源池核心业务CRM上云场景解决方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;flag=expert&amp;f_id=MSS180816241715401', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;flag=expert&amp;f_id=MSS180816251115401', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('35', '7', 'CloudNative-电子渠道业务上云场景解决方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180817455014819', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180817490514819', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('36', '7', 'BOM域业务应用上云 调研+问卷模板', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180817305814819', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180817390014819', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('37', '7', '陕西移动BOM业务上云规范建议', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180817424014819', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180817441014819', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('38', '8', '华为云FusionCloud 6.3标书引导参数', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180710335414312', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('39', '8', '华为FusionCloud 6.3解决方案概述', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180710340913267', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('40', '8', 'FusionCloud 6.3.0 配置手册（Configuration Manual）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180703033040741', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180703033040741', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('41', '8', 'FusionCloud 6.3.0 标准组网', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180622414312977', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('42', '8', 'Huawei FusionCloud6.3管理节点常见问题解答', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180723311415250', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('43', '8', 'FusionCloud 6.3解决方案性能规格清单', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180718193936889', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180718194936889', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('44', '8', '华为FusionCloud 6.3.0特性描述', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180427180318596', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180601411536889', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('45', '8', 'FusionCloud 6.3.0 SAP Cloud需求调研模板', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180704161915996', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180704154815996', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('46', '8', '华为SAP Cloud项目调研表', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180428431713855', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('47', '8', 'Huawei OpenStack 版本版本演进策略', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180601212461671', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180601214061671', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('48', '8', '华为 FusionCloud 6.3.0技术交底书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180713310118596', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('49', '9', '华为FusionCloud NFVI解决方案主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180515344525400&amp;doc_msl_ids=156685&amp;topic_id=1000480', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCC180606273025400&amp;doc_msl_ids=158129&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('50', '9', 'Huawei FusionCloud NFVI 6.3.0 垂直到水平演进解决方案', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCBD180630094414827&amp;doc_msl_ids=159324&amp;topic_id=1000622', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('51', '10', '华为Fusioncloud NFVI 开放性交流专题材料', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?topic_id=1000480&amp;doc_msl_ids=159195&amp;f_id=CCC180628550525400&amp;mslType=msl_type&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('52', '11', '【2018 GlobalData】华为在全球NFVI市场中保持领先地位', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCC180628551425400&amp;doc_msl_ids=159194&amp;topic_id=1000480', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCC180628551425400&amp;doc_msl_ids=159194&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('53', '12', 'Cloud OS短名单 双厂家引导材料', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180528074425400&amp;doc_msl_ids=157226&amp;topic_id=1000480', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('54', '13', 'FusionCloud NFVI 6.3.0 技术建议书（中英文）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180822043416649', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180822043416649', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('55', '13', 'FusionCloud NFVI 6.3.0 招标引导参数（中英文）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180822042416649', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180822042416649', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('56', '13', 'Huawei FusionCloud NFVI 6.3.0 SDN技术白皮书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCBD180621433513497&amp;doc_msl_ids=158876&amp;topic_id=1000622', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('57', '13', 'Huawei FusionCloud NFVI 6.3.0 特性描述', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180628540315496&amp;method=showMMDetail', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('58', '13', 'FusionCloud NFVI 6.3.0 配置手册', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180724225814625&amp;method=showMMDetail', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180724224914625&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('59', '13', '配置器', '', 'http://app.huawei.com/unistar/edesigner/login!index.action', 'http://app.huawei.com/unistar/edesigner/login!index.action', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('60', '13', '配置Check list', '', 'http://3ms.huawei.com/km/groups/2943217/blogs/details/5354645', 'http://3ms.huawei.com/km/groups/2943217/blogs/details/5354645', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('61', '14', '运营商B2B托管云解决方案主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS180711141515250&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('62', '15', '华为融合电信云解决方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180424334945295', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=CCBD180630015445295&amp;doc_msl_ids=159434&amp;topic_id=1000622', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('63', '15', 'FusionCloud 6.3.0 ICT&amp;B2B融合方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;flag=expert&amp;f_id=MSS180822341816373', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?flag=expert&amp;f_id=MSS180822362016373&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('64', '16', '运营商大数据平台主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=MSS180713514052769&amp;doc_msl_ids=160200&amp;topic_id=1000480', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('65', '16', '大数据平台云化方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?flag=expert&amp;f_id=MSS180822551213885&amp;method=showMMDetail', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?flag=expert&amp;f_id=MSS180822551213885&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('67', '17', '华为IT安平市场营销资料清单', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170912262413514', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170912262413514', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('68', '18', '华为IT安平案例集（PPT）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071224264352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('69', '18', '华为IT安平案例_苏州视频云', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180531141416391', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180626053716391', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('70', '18', '华为IT安平案例_北京市海淀区视频大联网（微卡口大数据平台）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170831243413514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('71', '18', '华为IT安平案例-海淀微卡口强化治安防控创新社会治理', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171220340416391', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171220335116391', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('72', '18', '华为IT安平案例_新疆公安厅警综上云迁移', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180109215913514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('73', '18', '华为IT安平案例_深圳龙岗“智慧警务”', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171220165013514', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713040314361', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('74', '18', '华为IT安平_三秦警务云-陕西省公安厅项目案例', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171227152414361', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171227141814361', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('75', '18', '华为IT安平案例_毛里求斯平安城市', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171211293627002', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180103554827002', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('76', '18', '华为IT安平案例_北京通州公安视频共享平台（雪亮工程）项目', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171212203727002', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('77', '18', '华为IT安平案例-贵州省公安厅警务云大数据', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS161206402214361', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS161206403614361', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('78', '18', '华为IT安平行业案例-阿根廷Salta视频云', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180531211816391', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180627110216391', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('79', '18', '华为IT安平行业案例_博茨瓦纳项目', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180530123614361', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180712235027002', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('80', '18', '华为IT安平行业案例_墨西哥监狱管理中心C5项目', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180510234227002', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180510232327002', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('81', '18', '华为IT安平案例_泰国机场（AOT）视频云项目', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171227091027002', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180627110216391', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('82', '18', '华为IT安平行业案例-乌干达平安城市', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180716304916391', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180716313416391', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('83', '18', '华为IT安平行业案例_阿曼MoD ITS两地三中心容灾项目', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180517184427002', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('84', '18', '华为IT安平行业案例_墨西哥Q1', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180530122414361', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180530122414361', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('85', '18', '【案例集】视频云案例集', '', 'http://3ms.huawei.com/hi/group/3027409/file_12782143.html?for_statistic_from=my_group_file', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('86', '18', '【案例集】华为在公安案例集', '', 'http://3ms.huawei.com/hi/group/3027409/file_12747535.html?for_statistic_from=my_group_file', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('87', '18', '华为IT安平案例_苏州警务大脑', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717370413514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('88', '18', '华为IT安平案例_江苏省警务云大数据', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717303813514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('89', '18', '华为IT安平案例_深圳交警', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=1850160', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=1850160', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('90', '19', '华为IT安平远程体验（成研演示环境）操作指导', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071712004352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('91', '20', '华为IT公共安全解决方案销售（海外拓展）指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713161116391', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('92', '21', '华为IT安平警务云大数据高层主打胶片', '', 'http://3ms.huawei.com/hi/group/3027409/file_12734523.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('93', '21', '华为IT安平警务云大数据技术主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713503027064', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('94', '21', '华为IT安平警务云大数据技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071727234352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('95', '21', '华为IT安平警务云大数据销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071224384352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('96', '21', '华为IT安平警务云大数据方案销售场景一纸阐 国内版', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071933014352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('97', '21', '华为IT安平警务云大数据方案销售场景一纸阐 海外版', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180719330114149', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('98', '21', '华为IT安平阿里竞争分析', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD18061239559392&amp;method=showMMDetail', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('99', '21', '华为IT安平警务云大数据Battle Card-华为PK阿里', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180801090313514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('100', '21', '华为IT安平警务云大数据Battle Card-华为PK星环', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180731431113514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('101', '22', '华为IT安平省市一片云主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071749564352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('102', '22', '华为IT安平省市一片云技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717361214172', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('103', '22', '华为IT安平省市一片云销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071751594352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('104', '23', '华为IT安平涉毒分析主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713502011990', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('105', '23', '华为IT安平涉毒分析技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180723103221952', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('106', '23', '华为IT安平涉毒分析配置指导', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180723102421952', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('107', '23', '华为IT安平涉毒分析销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713192111990', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('108', '24', '华为IT安平假药售贩主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713155711990', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('109', '24', '华为IT安平假药售贩技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180723103221952', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('110', '24', '华为IT安平假药售贩配置指导', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180723102421952', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('111', '24', '华为IT安平假药售贩销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713102911990', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('112', '25', '华为IT安平JZ 4G侦控主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717105816968', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('113', '25', '华为IT安平JZ 4G侦控技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711030314298', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('114', '25', '华为IT安平JZ 4G侦控配置指导', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711025414298', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('115', '25', '华为IT安平JZ 4G侦控销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717104616968', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('116', '26', '华为IT安平视频云大数据高层主打胶片（国内IT+IVS）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;flag=expert&amp;f_id=MSS180421434913752', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('117', '26', '华为IT安平视频云大数据高层主打胶片（国内IT）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180731484713514', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('118', '26', '华为IT安平视频云大数据高层主打胶片（海外）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713172516391', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('119', '26', '华为IT安平视频云大数据技术主打胶片（国内）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711032216427', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('120', '26', '华为IT安平视频云大数据技术主打胶片（海外）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713035016427', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('121', '26', '华为IT安平视频云大数据技术建议书（国内）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180730175116917', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('122', '26', '华为IT安平视频云大数据场景细分及拓展建议', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717031427064', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('123', '26', '华为IT安平视频云大数据方案销售场景一纸阐 国内版', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071932514352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('124', '26', '华为IT安平视频云大数据方案销售场景一纸阐 海外版', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180719330914149', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('125', '26', '华为IT安平视频云大数据竞争分析', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717371713147', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('126', '27', '华为IT安平多级视频云主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180712301127064', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('127', '27', '华为IT安平多级视频云技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180730175116917', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('128', '27', '华为IT安平多级视频云销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711082427064', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('129', '28', '华为IT安平分支视频云主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180716272314799', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('130', '28', '华为IT安平分支视频云技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180730175116917', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('131', '28', '华为IT安平分支视频云销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071711114352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('132', '28', '华为IT安平分支视频云竞争分析', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180716273114799', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('133', '28', '华为IT安平分支视频云招标引导参数', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180717590615264', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('134', '29', '华为IT安平人像识别布控主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711081127064', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('135', '29', '华为IT安平人像识别布控技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180716303413987', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('136', '29', '华为IT安平人像识别布控销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711080327064', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('137', '30', '华为IT安平交通云大数据主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711075418288', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('138', '30', '华为IT安平交通云大数据销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071224474352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('139', '30', '华为IT安平交通云大数据方案销售场景一纸阐 国内版', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS18071932564352', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('140', '31', '华为IT安平AI辅助执法主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180713500915567', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('141', '31', '华为IT安平AI辅助执法技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711055833683', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('142', '31', '华为IT安平AI辅助执法配置指导', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180712423833683', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('143', '32', '华为IT安平交通集成指挥主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711044118288', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('144', '32', '华为IT安平交通集成指挥技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711045833683', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('145', '32', '华为IT安平交通集成指挥配置指导', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180711033918288', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('146', '33', '政府行业高层主打胶片', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('147', '33', '政府行业销售场景与策略（国内）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180727481214223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('148', '33', '政府行业销售场景与策略（海外 政务云与大数据）', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170508392842750', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('149', '34', 'IDC MarketScape政务云第一评估报告', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171109374514223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('150', '34', '华为FusionCloud政务云解决方案专刊', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS170526163719422', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('151', '34', '政务大数据案例集', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180515275014223', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=IS170508461842750&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('152', '34', '广州市政务云案例视频', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170810340414223', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('153', '34', '徐州时空信息云案例视频（GIS云）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170503392914223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('154', '34', '政务云宣传视频（政务服务网）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170503485114223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('155', '34', '政务大数据彩页', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('156', '34', '政务云彩页', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('157', '34', '华为IT政务行业案例-德国杜伊斯堡市政府DVV私有云项目', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180723222313686&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('158', '34', '华为IT政务行业案例-西班牙安达卢西亚政府INNOVASUR政务云项目', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180723212913686&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('159', '34', '印尼水泥公司私有云( internal )', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170504100842750', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('160', '34', '华为IT政务行业案例-香港医管局超融合云平台项目案例（目前仅限内部宣传）', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180723195713686&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('161', '34', 'France IMS Network Cloud Solution (Internal) ', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170508393842750', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('162', '34', 'Huawei IT Gov Industry Case-Huawei help Ethiopia build North Africa\'s biggest SchoolNet Education Cloud', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180723183413686&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('163', '34', '华为IT政务行业案例-电子政务闪耀非洲之角-佛得角电子政务云数据中心项目', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=CCBD180723185513686&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('164', '35', '政务云大数据高层主打', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180308280514223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('165', '35', '政务云大数据技术主打', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=IS180727215714223&amp;method=showMMDetail', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('166', '35', '政务云大数据技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180727214514223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('167', '35', '政务云销售一纸阐（国内版）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180727480014223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('168', '35', '政务云销售指导书（国内版）', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('169', '35', '政务大数据销售一纸阐（国内版）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180727480014223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('170', '35', '政务大数据销售指导书（国内版）', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('171', '35', '政务大数据竞争分析（阿里、腾讯）', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('172', '35', '政务大数据配置指导', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('173', '36', '政务大数据场景概述', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('174', '36', '政务大数据场景化演示', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('175', '36', '政务大数据最佳实践', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('176', '37', '企业海外-政务云大数据高层主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=IS170504101942750&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('177', '37', '华为FusionCloud政务云解决方案技术主打胶片（海外版）（政务云平台场景）', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?f_id=IS180108412314223&amp;method=showMMDetail', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('178', '37', '企业海外-政务云和大数据销售指导', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170508392842750', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('179', '38', '税务云大数据高层主打', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('180', '38', '电子税务局技术主打', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180820145914501', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('181', '38', '税务云大数据技术主打', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180820193614501', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('182', '38', '税务云大数据销售一纸阐', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180727480014223', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('183', '38', '税务云大数据销售指导书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('184', '38', '税务云大数据技术建议书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('185', '38', '税务云大数据竞争分析（阿里）', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('186', '38', '税务云大数据建议书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('187', '39', '政务大数据场景化演示', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('188', '40', '企业海外-税务云和大数据高层主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180828063642750', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('189', '41', '财政云高层主打', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('190', '41', '财政云技术主打', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('191', '41', '财政云技术建议书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('192', '41', '财政云建议书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('193', '42', '财政云场景化演示', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('194', '43', '审计云大数据高层主打', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('195', '43', '审计云大数据技术主打', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180801170313987', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('196', '43', '审计云大数据技术建议书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('197', '43', '审计云大数据建议书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('198', '44', '审计大数据场景化演示', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('199', '45', '企业海外-海关云和大数据高层主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180925202042750', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('200', '46', '金融行业高层主打胶片', '', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180627144413392', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('201', '46', '企业数据中心金融行业场景指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180830411213392', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180830411213392', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('202', '47', '金融生产云解决方案技术建议书（渠道业务上云场景）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171221172111893', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('203', '47', '金融生产云解决方案技术建议书（中间业务上云场景）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171221170811893', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('204', '47', 'FAQ', '', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=3293265&amp;id=1502549', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('205', '48', '华为金融云解决方案技术主打胶片', '', 'http://3ms.huawei.com/hi/group/3293265/file_12175821.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('206', '48', '金融生产云技术主打胶片（渠道业务上云场景）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171221173811893', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('207', '48', '金融生产云技术主打胶片（中间业务上云场景）', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171221172911893', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('208', '48', '广东农信中间业务云平台建设方案', '', 'http://3ms.huawei.com/hi/group/3293265/file_12175147.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('209', '48', '广东农信联创案例介绍', '', 'http://3ms.huawei.com/hi/group/3293265/file_11642751.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('210', '48', '金融云案例_民生银行', '', 'http://3ms.huawei.com/hi/group/3293265/file_12175105.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('211', '48', '金融云案例_华夏银行', '', 'http://3ms.huawei.com/hi/group/3293265/file_12166115.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('212', '48', '金融云案例_国开行', '', 'http://3ms.huawei.com/hi/group/3293265/file_12166113.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('213', '48', '银行业务应用上云改造最佳实践（精简版）', '', 'http://3ms.huawei.com/hi/group/3293265/file_12148113.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('214', '48', '日本SBI', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171013590913392', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171013592113392', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('215', '48', '香港NOVA', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180704540913392', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180704540113392', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('216', '49', '行业云-金融云销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS170829480513392', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('217', '50', '金融融合数仓数据架构介绍', '', 'http://3ms.huawei.com/hi/group/3293265/file_12360577.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('218', '50', '金融数据仓库技术主打胶片', '', 'https://onebox.huawei.com/login/authfor?s=https://onebox.huawei.com/v/11bc91ac9a2dcfa6c3f0550c49e4d5b9/list', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('219', '50', 'LibrA数据仓库方案一指禅', '', 'https://onebox.huawei.com/login/authfor?s=https://onebox.huawei.com/v/11bc91ac9a2dcfa6c3f0550c49e4d5b9/list', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('220', '50', '工行数据仓库案例介绍', '', 'https://onebox.huawei.com/login/authfor?s=https://onebox.huawei.com/v/11bc91ac9a2dcfa6c3f0550c49e4d5b9/list', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('221', '50', '融合数仓应用场景：农信行社集市云方案', '', 'http://3ms.huawei.com/hi/group/3293265/file_12360585.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('222', '50', '融合数仓应用场景：TD数仓替换方案及工行案例介绍', '', 'http://3ms.huawei.com/hi/group/3293265/file_12360583.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('223', '51', '金融融合数仓市场拓展材料包', '', 'http://3ms.huawei.com/hi/group/3293265/file_12360575.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('224', '52', '金融大数据FusionInsight LibrA 2.7 技术建议书模板', '', 'http://3ms.huawei.com/hi/group/3293265/file_12123263.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('225', '52', '金融大数据FusionInsight HD 2.7 特性描述', '', 'http://3ms.huawei.com/hi/group/3293265/file_12120557.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('226', '52', '金融大数据FusionInsight HD 2.7 系统规格', '', 'http://3ms.huawei.com/hi/group/3293265/file_12117777.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('227', '52', 'FAQ', '', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=3293265&amp;id=1502549', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('228', '53', '金融大数据FusionInsight LibrA 2.7 高层主打胶片（CXO）', '', 'http://3ms.huawei.com/hi/group/3293265/file_12123259.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('229', '53', '金融大数据FusionInsight LibrA 2.7 技术主打胶片', '', 'http://3ms.huawei.com/hi/group/3293265/file_12123265.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('230', '53', '金融大数据华为FusionInsight 2.7 高层主打胶片', '', 'http://3ms.huawei.com/hi/group/3293265/file_12117773.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('231', '53', '金融大数据FusionInsight HD V100R002C70SPC100 技术主打胶片', '', 'http://3ms.huawei.com/hi/group/3293265/file_12117775.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('232', '53', '华为RTD实时反欺诈解决方案', '', 'http://3ms.huawei.com/hi/group/3293265/file_12175703.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('233', '53', '金融大数据_人保数仓迁移案例', '', 'http://3ms.huawei.com/hi/group/3293265/file_12879507.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('234', '53', '华为FusionInsight招商银行案例', '', 'http://3ms.huawei.com/hi/group/3293265/file_11654523.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('235', '53', '华为FusionInsight太平洋保险案例', '', 'http://3ms.huawei.com/hi/group/3293265/file_11654519.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('236', '53', '华为FusionInsight LibrA案例（工商银行LibrA新数仓）', '', 'http://3ms.huawei.com/hi/group/3293265/file_11642389.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('237', '54', '华为金融融合数仓+实时反欺诈+精准营销解决方案', '', 'http://3ms.huawei.com/hi/group/3293265/file_11642189.html', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('238', '55', '华为IT大企业高层主打胶片', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('239', '55', '华为IT大企业XXX项目案例集', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('240', '55', '华为IT大企业远程体验（演示环境）操作指导', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('241', '55', '华为IT大企业解决方案销售（拓展）指导书', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('242', '56', '华为IT大企业城轨云高层主打胶片', '', 'to be', 'to be', '', '0', '2018-11-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('243', '56', '华为IT大企业城轨云技术主打胶片', '', 'to be', 'to be', '', '0', '2018-11-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('244', '56', '华为IT大企业城轨云技术建议书', '', 'to be', 'to be', '', '0', '2018-12-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('245', '56', '华为IT大企业城轨云销售指导书', '', 'to be', 'to be', '', '0', '2018-12-15', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('246', '56', '华为IT大企业城轨云项目案例', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('247', '56', '华为IT大企业轨道云交通竞争分析', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('248', '57', '华为IT大企业调控云主打胶片', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CCBD180222052940566', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('249', '57', '华为IT大企业调控云技术建议书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS171229131522455', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('250', '57', '华为IT大企业调控云销售指导书', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=IS180102051522455', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('251', '57', '华为IT大企业调控云项目案例', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=Case180212414419915', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('252', '57', '华为IT大企业调控云竞争分析', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('253', '58', '华为IT大企业智能巡检主打胶片', '', 'to be', 'to be', '', '0', '2018-11-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('254', '58', '华为IT大企业智能巡检技术建议书', '', 'to be', 'to be', '', '0', '2018-12-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('255', '58', '华为IT大企业智能巡检销售指导书', '', 'to be', 'to be', '', '0', '2018-11-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('256', '58', '华为IT大企业智能巡检项目案例', '', '', '', '', '0', '2018-10-29', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('257', '58', '华为IT大企业智能巡检竞争分析', '', 'to be', 'to be', '', '0', '2018-12-30', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('258', '59', '运营商', 'Portfolio', 'http://www.baidu.com', 'http://www.baidu.com', 'Author author', '0', '2018-10-31', '1', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('259', '59', 'FusionAccess', '', '', '', '', '0', '2018-10-31', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('260', '60', '云计算与大数据', 'Cloud Computing &amp; Big Data', 'https://fusioncloud.huawei.com/portal/support/marketing.html', 'https://fusioncloud.huawei.com/portal/support/marketing.html', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('261', '60', '智能计算', 'Intelligent Computing', 'http://server.huawei.com', 'http://server.huawei.com', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('262', '60', '存储', 'Storage', 'http://storage.huawei.com', 'http://storage.huawei.com', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('263', '60', '视频监控', 'Video Surveillance', 'http://3ms.huawei.com/hi/EnterpriseBG_connect/IVS_index.html', 'http://3ms.huawei.com/hi/EnterpriseBG_connect/IVS_index.html', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('264', '60', '数据中心能源', 'Data Center Energy', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2031921&amp;id=1447547', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2031921&amp;id=1447547', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('265', '61', '热点视频', 'Hot Video', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2899827&amp;id=1409603', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=2899827&amp;id=1409603', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('266', '61', '在线体验', ' Experience Online', 'https://fusioncloud.huawei.com/', 'https://fusioncloud.huawei.com/', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('267', '61', '在线PoC', 'Online PoC ', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=3455855&amp;id=1529759', 'http://3ms.huawei.com/hi/index.php?app=group&amp;mod=Core&amp;act=showSectionData&amp;gid=3455855&amp;id=1529759', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('268', '61', '合作伙伴', 'Cooperation Partner', 'http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&amp;topic_id=1003900', 'http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&amp;topic_id=1003900', '', '0', '2018-11-02', '0', '0', '0');
INSERT INTO `itnet_ziliao` VALUES ('269', '63', '运营商', 'carrier', 'http://www.baidu.com', 'http://www.baidu.com', 'author', '0', '2018-11-06', '1', '0', '0');
