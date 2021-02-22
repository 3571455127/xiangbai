/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : baixiang

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-02-22 17:13:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yg_404
-- ----------------------------
DROP TABLE IF EXISTS `yg_404`;
CREATE TABLE `yg_404` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `refer` varchar(255) NOT NULL,
  `robot` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='404日志';

-- ----------------------------
-- Records of yg_404
-- ----------------------------

-- ----------------------------
-- Table structure for yg_ad
-- ----------------------------
DROP TABLE IF EXISTS `yg_ad`;
CREATE TABLE `yg_ad` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `code` text NOT NULL,
  `text_name` varchar(100) NOT NULL DEFAULT '',
  `text_url` varchar(255) NOT NULL DEFAULT '',
  `text_title` varchar(100) NOT NULL DEFAULT '',
  `text_style` varchar(50) NOT NULL DEFAULT '',
  `image_src` varchar(255) NOT NULL DEFAULT '',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `image_alt` varchar(100) NOT NULL DEFAULT '',
  `flash_src` varchar(255) NOT NULL DEFAULT '',
  `flash_url` varchar(255) NOT NULL DEFAULT '',
  `flash_loop` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key_moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `key_catid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `key_word` varchar(100) NOT NULL DEFAULT '',
  `key_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of yg_ad
-- ----------------------------
INSERT INTO `yg_ad` VALUES ('11', '活动', '26', '3', '0', '0', '', '', '', '0', 'admin', '1613721428', 'admin', '1613721815', '1613664000', '1708358399', '0', '', '', '', '', '', '', '/mobile/static/xb/images/index-nav01.png', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `yg_ad` VALUES ('12', '美酒', '26', '3', '0', '0', '', '', '', '0', 'admin', '1613721473', 'admin', '1613721473', '1613664000', '1708358399', '0', '', '', '', '', '', '', '/mobile/static/xb/images/index-nav02.png', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `yg_ad` VALUES ('13', '美器', '26', '3', '0', '0', '', '', '', '0', 'admin', '1613721520', 'admin', '1613721520', '1613664000', '1708358399', '0', '', '', '', '', '', '', '/mobile/static/xb/images/index-nav03.png', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `yg_ad` VALUES ('8', 'test', '1', '5', '0', '0', '', '', '', '0', 'admin', '1589066736', 'admin', '1613719039', '1589040000', '1683734399', '0', '', '', '', '', '', '', '/mobile/static/xb/images/banner01.png', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `yg_ad` VALUES ('9', 'test2', '1', '5', '0', '0', '', '', '', '0', 'admin', '1589066757', 'admin', '1613718948', '1589040000', '1683734399', '0', '', '', '', '', '', '', '/mobile/static/xb/images/banner02.png', '', '', '', '', '1', '0', '0', '', '0', '0', '3');

-- ----------------------------
-- Table structure for yg_address
-- ----------------------------
DROP TABLE IF EXISTS `yg_address`;
CREATE TABLE `yg_address` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `truename` varchar(30) NOT NULL DEFAULT '',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(10) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of yg_address
-- ----------------------------
INSERT INTO `yg_address` VALUES ('1', 'test', '1', 'tssfsfsesfes', '111111', '', '18620589091', 'test', '1608713030', 'test', '1608713030', '0', '');

-- ----------------------------
-- Table structure for yg_admin
-- ----------------------------
DROP TABLE IF EXISTS `yg_admin`;
CREATE TABLE `yg_admin` (
  `adminid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `file` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `catid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of yg_admin
-- ----------------------------
INSERT INTO `yg_admin` VALUES ('1', '1', '0', '生成首页', '?action=html', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('2', '1', '0', '更新缓存', '?action=cache', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('3', '1', '0', '网站设置', '?file=setting', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('4', '1', '0', '模块管理', '?file=module', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('5', '1', '0', '数据维护', '?file=database', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('6', '1', '0', '模板管理', '?file=template', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('7', '1', '0', '会员管理', '?moduleid=2', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('8', '1', '0', '单页管理', '?moduleid=3&file=webpage', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('9', '1', '0', '排名推广', '?moduleid=3&file=spread', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('10', '1', '0', '广告管理', '?moduleid=3&file=ad', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('11', '2', '0', '', '', '', '2', 'index', '', '');
INSERT INTO `yg_admin` VALUES ('12', '2', '0', '会员管理', '?moduleid=2', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('13', '2', '0', '', '', '', '23', 'index', '', '');
INSERT INTO `yg_admin` VALUES ('14', '2', '0', '选宠管理', '?moduleid=23', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('15', '2', '0', '', '', '', '21', 'index', '', '');
INSERT INTO `yg_admin` VALUES ('16', '2', '0', '宠趣味管理', '?moduleid=21', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('17', '2', '0', '', '', '', '24', 'index', '', '');
INSERT INTO `yg_admin` VALUES ('18', '2', '0', '宠舍推荐管理', '?moduleid=24', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('19', '2', '0', '', '', '', '16', 'index', '', '');
INSERT INTO `yg_admin` VALUES ('20', '2', '0', '商城管理', '?moduleid=16', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('21', '2', '0', '', '', '', '25', 'index', '', '');
INSERT INTO `yg_admin` VALUES ('50', '2', '0', '', '', '', '1', 'category', '', '');
INSERT INTO `yg_admin` VALUES ('23', '2', '0', '', '', '', '3', 'ad', '', '');
INSERT INTO `yg_admin` VALUES ('24', '2', '0', '广告管理', '?moduleid=3&file=ad', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('25', '2', '0', '', '', '', '3', 'comment', '', '');
INSERT INTO `yg_admin` VALUES ('26', '2', '0', '评论管理', '?moduleid=3&file=comment', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('27', '2', '0', '', '', '', '3', 'guestbook', '', '');
INSERT INTO `yg_admin` VALUES ('28', '2', '0', '留言管理', '?moduleid=3&file=guestbook', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('29', '2', '0', '', '', '', '1', 'index', 'html', '');
INSERT INTO `yg_admin` VALUES ('30', '2', '0', '生成首页', '?action=html', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('31', '2', '0', '', '', '', '1', 'banip', '', '');
INSERT INTO `yg_admin` VALUES ('32', '2', '0', '禁止IP', '?file=banip', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('33', '2', '0', '审核会员', '?moduleid=2&action=check', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('34', '2', '0', '', '', '', '4', 'vip', '', '');
INSERT INTO `yg_admin` VALUES ('35', '2', '0', 'VIP管理', '?moduleid=4&file=vip', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('36', '2', '0', '', '', '', '2', 'validate', '', '');
INSERT INTO `yg_admin` VALUES ('37', '2', '0', '资料审核', '?moduleid=2&file=validate', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('38', '2', '0', '', '', '', '2', 'weixin', '', '');
INSERT INTO `yg_admin` VALUES ('39', '2', '0', '微信管理', '?moduleid=2&file=weixin', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('40', '2', '0', '', '', '', '2', 'group', '', '');
INSERT INTO `yg_admin` VALUES ('41', '2', '0', '会员组管理', '?moduleid=2&file=group', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('42', '2', '0', '', '', '', '2', 'charge', '', '');
INSERT INTO `yg_admin` VALUES ('43', '2', '0', '支付记录', '?moduleid=2&file=charge', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('44', '2', '0', '', '', '', '2', 'cash', '', '');
INSERT INTO `yg_admin` VALUES ('45', '2', '0', '提现记录', '?moduleid=2&file=cash', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('46', '2', '0', '', '', '', '2', 'promo', '', '');
INSERT INTO `yg_admin` VALUES ('47', '2', '0', '优惠促销', '?moduleid=2&file=promo', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('48', '2', '0', '', '', '', '16', 'order', '', '');
INSERT INTO `yg_admin` VALUES ('49', '2', '0', '订单管理', '?moduleid=16&file=order', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('51', '2', '0', '关于我们', '?mid=25&file=category', '', '0', '', '', '');
INSERT INTO `yg_admin` VALUES ('52', '1', '0', '留言管理', '?moduleid=3&file=guestbook', '', '0', '', '', '');

-- ----------------------------
-- Table structure for yg_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `yg_admin_log`;
CREATE TABLE `yg_admin_log` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qstring` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `logtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM AUTO_INCREMENT=607 DEFAULT CHARSET=utf8 COMMENT='管理日志';

-- ----------------------------
-- Records of yg_admin_log
-- ----------------------------
INSERT INTO `yg_admin_log` VALUES ('483', 'file=setting', 'admin', '127.0.0.1', '1613721891');
INSERT INTO `yg_admin_log` VALUES ('482', 'moduleid=3&file=setting&widget=1', 'admin', '127.0.0.1', '1613721860');
INSERT INTO `yg_admin_log` VALUES ('481', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613721831');
INSERT INTO `yg_admin_log` VALUES ('480', 'moduleid=3&file=ad&action=edit&aid=11&pid=26', 'admin', '127.0.0.1', '1613721634');
INSERT INTO `yg_admin_log` VALUES ('479', 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'admin', '127.0.0.1', '1613721397');
INSERT INTO `yg_admin_log` VALUES ('478', 'rand=38&moduleid=1&file=setting&tab=2', 'admin', '127.0.0.1', '1613720847');
INSERT INTO `yg_admin_log` VALUES ('477', 'moduleid=1&file=setting&action=html&tab=2', 'admin', '127.0.0.1', '1613720845');
INSERT INTO `yg_admin_log` VALUES ('476', 'file=setting', 'admin', '127.0.0.1', '1613720796');
INSERT INTO `yg_admin_log` VALUES ('475', 'moduleid=3&file=setting', 'admin', '127.0.0.1', '1613720727');
INSERT INTO `yg_admin_log` VALUES ('474', 'moduleid=3&file=setting&action=ad&widget=1', 'admin', '127.0.0.1', '1613720636');
INSERT INTO `yg_admin_log` VALUES ('473', 'moduleid=3&file=ad&action=edit&aid=8&pid=1', 'admin', '127.0.0.1', '1613720493');
INSERT INTO `yg_admin_log` VALUES ('472', 'moduleid=3&file=setting', 'admin', '127.0.0.1', '1613720435');
INSERT INTO `yg_admin_log` VALUES ('471', 'rand=85&moduleid=1&file=setting&tab=1', 'admin', '127.0.0.1', '1613719945');
INSERT INTO `yg_admin_log` VALUES ('470', 'moduleid=1&file=setting&action=html&tab=1', 'admin', '127.0.0.1', '1613719944');
INSERT INTO `yg_admin_log` VALUES ('469', 'rand=84&moduleid=1&file=setting&tab=2', 'admin', '127.0.0.1', '1613719925');
INSERT INTO `yg_admin_log` VALUES ('468', 'moduleid=1&file=setting&action=html&tab=2', 'admin', '127.0.0.1', '1613719924');
INSERT INTO `yg_admin_log` VALUES ('467', 'file=setting', 'admin', '127.0.0.1', '1613719872');
INSERT INTO `yg_admin_log` VALUES ('466', 'rand=98&moduleid=1&file=setting&tab=0', 'admin', '127.0.0.1', '1613719462');
INSERT INTO `yg_admin_log` VALUES ('465', 'moduleid=1&file=setting&action=html&tab=0', 'admin', '127.0.0.1', '1613719461');
INSERT INTO `yg_admin_log` VALUES ('464', 'rand=61&moduleid=1&file=setting&tab=0', 'admin', '127.0.0.1', '1613719369');
INSERT INTO `yg_admin_log` VALUES ('463', 'moduleid=1&file=setting&action=html&tab=0', 'admin', '127.0.0.1', '1613719368');
INSERT INTO `yg_admin_log` VALUES ('462', 'file=setting', 'admin', '127.0.0.1', '1613719150');
INSERT INTO `yg_admin_log` VALUES ('461', 'moduleid=3&file=ad&action=edit&aid=8&pid=1', 'admin', '127.0.0.1', '1613718952');
INSERT INTO `yg_admin_log` VALUES ('460', 'moduleid=3&file=ad&action=edit&aid=9&pid=1', 'admin', '127.0.0.1', '1613718929');
INSERT INTO `yg_admin_log` VALUES ('459', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613717719');
INSERT INTO `yg_admin_log` VALUES ('458', 'rand=22&moduleid=16&action=add', 'admin', '127.0.0.1', '1613717706');
INSERT INTO `yg_admin_log` VALUES ('457', 'moduleid=16&action=add', 'admin', '127.0.0.1', '1613717611');
INSERT INTO `yg_admin_log` VALUES ('456', 'moduleid=16&file=index&action=edit&itemid=1', 'admin', '127.0.0.1', '1613717418');
INSERT INTO `yg_admin_log` VALUES ('455', 'rand=77&moduleid=16&file=setting&tab=0', 'admin', '127.0.0.1', '1613717410');
INSERT INTO `yg_admin_log` VALUES ('454', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613716135');
INSERT INTO `yg_admin_log` VALUES ('453', 'moduleid=16&file=index&action=edit&itemid=2', 'admin', '127.0.0.1', '1613715982');
INSERT INTO `yg_admin_log` VALUES ('452', 'moduleid=16&file=order&action=delete', 'admin', '127.0.0.1', '1613715955');
INSERT INTO `yg_admin_log` VALUES ('451', 'file=category&action=edit&mid=16&catid=19', 'admin', '127.0.0.1', '1613715882');
INSERT INTO `yg_admin_log` VALUES ('450', 'file=category&action=edit&mid=16&catid=18', 'admin', '127.0.0.1', '1613715842');
INSERT INTO `yg_admin_log` VALUES ('449', 'file=category&action=edit&mid=16&catid=17', 'admin', '127.0.0.1', '1613715787');
INSERT INTO `yg_admin_log` VALUES ('448', 'file=category&action=edit&mid=16&catid=29', 'admin', '127.0.0.1', '1613715743');
INSERT INTO `yg_admin_log` VALUES ('447', 'file=category&action=add&mid=16&parentid=11', 'admin', '127.0.0.1', '1613715700');
INSERT INTO `yg_admin_log` VALUES ('446', 'file=category&action=edit&mid=16&catid=16', 'admin', '127.0.0.1', '1613715654');
INSERT INTO `yg_admin_log` VALUES ('445', 'file=category&action=edit&mid=16&catid=15', 'admin', '127.0.0.1', '1613715613');
INSERT INTO `yg_admin_log` VALUES ('444', 'file=category&action=edit&mid=16&catid=14', 'admin', '127.0.0.1', '1613715516');
INSERT INTO `yg_admin_log` VALUES ('443', 'file=category&action=add&mid=16&parentid=0', 'admin', '127.0.0.1', '1613714659');
INSERT INTO `yg_admin_log` VALUES ('442', 'file=category&action=edit&mid=16&catid=13', 'admin', '127.0.0.1', '1613714570');
INSERT INTO `yg_admin_log` VALUES ('441', 'file=category&action=edit&mid=16&catid=12', 'admin', '127.0.0.1', '1613714519');
INSERT INTO `yg_admin_log` VALUES ('440', 'file=category&action=edit&mid=16&catid=11', 'admin', '127.0.0.1', '1613714501');
INSERT INTO `yg_admin_log` VALUES ('439', 'file=category&action=edit&mid=16&catid=12', 'admin', '127.0.0.1', '1613714442');
INSERT INTO `yg_admin_log` VALUES ('438', 'file=category&action=edit&mid=16&catid=11', 'admin', '127.0.0.1', '1613714316');
INSERT INTO `yg_admin_log` VALUES ('437', 'file=module&action=add', 'admin', '127.0.0.1', '1613714203');
INSERT INTO `yg_admin_log` VALUES ('436', 'file=category&action=edit&mid=16&catid=11', 'admin', '127.0.0.1', '1613714104');
INSERT INTO `yg_admin_log` VALUES ('435', 'file=module&action=delete&modid=25', 'admin', '127.0.0.1', '1613714071');
INSERT INTO `yg_admin_log` VALUES ('434', 'file=module&action=delete&modid=24', 'admin', '127.0.0.1', '1613714063');
INSERT INTO `yg_admin_log` VALUES ('433', 'file=module&action=delete&modid=21', 'admin', '127.0.0.1', '1613714058');
INSERT INTO `yg_admin_log` VALUES ('432', 'file=module&action=delete&modid=23', 'admin', '127.0.0.1', '1613714052');
INSERT INTO `yg_admin_log` VALUES ('431', 'moduleid=23&file=setting', 'admin', '127.0.0.1', '1613714027');
INSERT INTO `yg_admin_log` VALUES ('430', 'file=module&action=edit&modid=21', 'admin', '127.0.0.1', '1613704289');
INSERT INTO `yg_admin_log` VALUES ('429', 'rand=61&moduleid=1&file=setting&tab=4', 'admin', '127.0.0.1', '1613703657');
INSERT INTO `yg_admin_log` VALUES ('428', 'moduleid=1&file=setting&action=html&tab=4', 'admin', '127.0.0.1', '1613703656');
INSERT INTO `yg_admin_log` VALUES ('427', 'rand=19&moduleid=1&file=setting&tab=1', 'admin', '127.0.0.1', '1613703439');
INSERT INTO `yg_admin_log` VALUES ('426', 'moduleid=1&file=setting&action=html&tab=1', 'admin', '127.0.0.1', '1613703438');
INSERT INTO `yg_admin_log` VALUES ('425', 'file=setting', 'admin', '127.0.0.1', '1613703003');
INSERT INTO `yg_admin_log` VALUES ('424', 'moduleid=2&file=setting', 'admin', '127.0.0.1', '1613698753');
INSERT INTO `yg_admin_log` VALUES ('423', 'rand=51&moduleid=2&file=setting&tab=0', 'admin', '127.0.0.1', '1613698707');
INSERT INTO `yg_admin_log` VALUES ('422', 'moduleid=2&file=setting', 'admin', '127.0.0.1', '1613698660');
INSERT INTO `yg_admin_log` VALUES ('484', 'moduleid=1&file=setting&action=html&tab=0', 'admin', '127.0.0.1', '1613723119');
INSERT INTO `yg_admin_log` VALUES ('485', 'rand=82&moduleid=1&file=setting&tab=0', 'admin', '127.0.0.1', '1613723120');
INSERT INTO `yg_admin_log` VALUES ('486', 'moduleid=1&file=setting&action=html&tab=2', 'admin', '127.0.0.1', '1613723191');
INSERT INTO `yg_admin_log` VALUES ('487', 'rand=19&moduleid=1&file=setting&tab=2', 'admin', '127.0.0.1', '1613723192');
INSERT INTO `yg_admin_log` VALUES ('488', 'file=setting', 'admin', '127.0.0.1', '1613724044');
INSERT INTO `yg_admin_log` VALUES ('489', 'moduleid=1&file=setting&action=html&tab=0', 'admin', '127.0.0.1', '1613724051');
INSERT INTO `yg_admin_log` VALUES ('490', 'rand=23&moduleid=1&file=setting&tab=0', 'admin', '127.0.0.1', '1613724052');
INSERT INTO `yg_admin_log` VALUES ('491', 'moduleid=1&file=setting&action=html&tab=1', 'admin', '127.0.0.1', '1613724060');
INSERT INTO `yg_admin_log` VALUES ('492', 'rand=54&moduleid=1&file=setting&tab=1', 'admin', '127.0.0.1', '1613724061');
INSERT INTO `yg_admin_log` VALUES ('493', 'moduleid=1&file=setting&action=html&tab=2', 'admin', '127.0.0.1', '1613724099');
INSERT INTO `yg_admin_log` VALUES ('494', 'rand=67&moduleid=1&file=setting&tab=2', 'admin', '127.0.0.1', '1613724100');
INSERT INTO `yg_admin_log` VALUES ('495', 'moduleid=16&file=index&action=edit&itemid=3', 'admin', '127.0.0.1', '1613731434');
INSERT INTO `yg_admin_log` VALUES ('496', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613731993');
INSERT INTO `yg_admin_log` VALUES ('497', 'file=module&action=edit&modid=16', 'admin', '127.0.0.1', '1613732017');
INSERT INTO `yg_admin_log` VALUES ('498', 'file=setting', 'admin', '127.0.0.1', '1613732124');
INSERT INTO `yg_admin_log` VALUES ('499', 'moduleid=1&file=setting&action=html&tab=0', 'admin', '127.0.0.1', '1613732134');
INSERT INTO `yg_admin_log` VALUES ('500', 'rand=38&moduleid=1&file=setting&tab=0', 'admin', '127.0.0.1', '1613732135');
INSERT INTO `yg_admin_log` VALUES ('501', 'moduleid=1&file=setting&action=html&tab=1', 'admin', '127.0.0.1', '1613732148');
INSERT INTO `yg_admin_log` VALUES ('502', 'rand=30&moduleid=1&file=setting&tab=1', 'admin', '127.0.0.1', '1613732149');
INSERT INTO `yg_admin_log` VALUES ('503', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613734153');
INSERT INTO `yg_admin_log` VALUES ('504', 'moduleid=16&file=index&action=edit&itemid=1', 'admin', '127.0.0.1', '1613736975');
INSERT INTO `yg_admin_log` VALUES ('505', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613737127');
INSERT INTO `yg_admin_log` VALUES ('506', 'rand=84&moduleid=16&file=setting&tab=0', 'admin', '127.0.0.1', '1613737215');
INSERT INTO `yg_admin_log` VALUES ('507', 'moduleid=16&file=index&action=edit&itemid=1', 'admin', '127.0.0.1', '1613737223');
INSERT INTO `yg_admin_log` VALUES ('508', 'moduleid=16&file=index&action=edit&itemid=2', 'admin', '127.0.0.1', '1613741319');
INSERT INTO `yg_admin_log` VALUES ('509', 'moduleid=16&file=index&action=edit&itemid=1', 'admin', '127.0.0.1', '1613741332');
INSERT INTO `yg_admin_log` VALUES ('510', 'moduleid=16&file=index&action=edit&itemid=3', 'admin', '127.0.0.1', '1613741340');
INSERT INTO `yg_admin_log` VALUES ('511', 'moduleid=16&file=index&action=edit&itemid=2', 'admin', '127.0.0.1', '1613741358');
INSERT INTO `yg_admin_log` VALUES ('512', 'moduleid=16&file=index&action=edit&itemid=1', 'admin', '127.0.0.1', '1613741365');
INSERT INTO `yg_admin_log` VALUES ('513', 'file=module&action=add', 'admin', '127.0.0.1', '1613741545');
INSERT INTO `yg_admin_log` VALUES ('514', 'file=module&action=edit&modid=27', 'admin', '127.0.0.1', '1613741591');
INSERT INTO `yg_admin_log` VALUES ('515', 'file=module&action=add', 'admin', '127.0.0.1', '1613741598');
INSERT INTO `yg_admin_log` VALUES ('516', 'file=category&mid=27&action=add&parentid=0', 'admin', '127.0.0.1', '1613741701');
INSERT INTO `yg_admin_log` VALUES ('517', 'file=category&action=edit&mid=27&catid=30', 'admin', '127.0.0.1', '1613741748');
INSERT INTO `yg_admin_log` VALUES ('518', 'file=category&action=add&mid=27&parentid=0', 'admin', '127.0.0.1', '1613783761');
INSERT INTO `yg_admin_log` VALUES ('519', 'file=category&action=edit&mid=27&catid=30', 'admin', '127.0.0.1', '1613783832');
INSERT INTO `yg_admin_log` VALUES ('520', 'moduleid=16&file=index&action=edit&itemid=1', 'admin', '127.0.0.1', '1613783968');
INSERT INTO `yg_admin_log` VALUES ('521', 'moduleid=16&file=index&action=edit&itemid=2', 'admin', '127.0.0.1', '1613784055');
INSERT INTO `yg_admin_log` VALUES ('522', 'moduleid=16&file=index&action=edit&itemid=3', 'admin', '127.0.0.1', '1613802503');
INSERT INTO `yg_admin_log` VALUES ('523', 'moduleid=2&file=setting', 'admin', '127.0.0.1', '1613810557');
INSERT INTO `yg_admin_log` VALUES ('524', 'moduleid=26&file=setting', 'admin', '127.0.0.1', '1613810620');
INSERT INTO `yg_admin_log` VALUES ('525', 'rand=70&moduleid=26&file=setting&tab=2', 'admin', '127.0.0.1', '1613810642');
INSERT INTO `yg_admin_log` VALUES ('526', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613810646');
INSERT INTO `yg_admin_log` VALUES ('527', 'rand=16&moduleid=16&file=setting&tab=2', 'admin', '127.0.0.1', '1613810685');
INSERT INTO `yg_admin_log` VALUES ('528', 'moduleid=27&file=setting', 'admin', '127.0.0.1', '1613810691');
INSERT INTO `yg_admin_log` VALUES ('529', 'rand=70&moduleid=27&file=setting&tab=2', 'admin', '127.0.0.1', '1613810724');
INSERT INTO `yg_admin_log` VALUES ('530', 'moduleid=26&file=setting', 'admin', '127.0.0.1', '1613810754');
INSERT INTO `yg_admin_log` VALUES ('531', 'rand=32&moduleid=26&file=setting&tab=2', 'admin', '127.0.0.1', '1613810775');
INSERT INTO `yg_admin_log` VALUES ('532', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613810783');
INSERT INTO `yg_admin_log` VALUES ('533', 'rand=62&moduleid=16&file=setting&tab=2', 'admin', '127.0.0.1', '1613810793');
INSERT INTO `yg_admin_log` VALUES ('534', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613812535');
INSERT INTO `yg_admin_log` VALUES ('535', 'moduleid=4&file=vip&action=add', 'admin', '127.0.0.1', '1613813234');
INSERT INTO `yg_admin_log` VALUES ('536', 'moduleid=2&file=group&action=add', 'admin', '127.0.0.1', '1613813446');
INSERT INTO `yg_admin_log` VALUES ('537', 'moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613813463');
INSERT INTO `yg_admin_log` VALUES ('538', 'moduleid=2&file=group&action=edit&groupid=5', 'admin', '127.0.0.1', '1613813858');
INSERT INTO `yg_admin_log` VALUES ('539', 'rand=69&moduleid=2&file=group&action=edit&groupid=5', 'admin', '127.0.0.1', '1613813881');
INSERT INTO `yg_admin_log` VALUES ('540', 'moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613813911');
INSERT INTO `yg_admin_log` VALUES ('541', 'moduleid=2&file=group&action=edit&groupid=5', 'admin', '127.0.0.1', '1613813939');
INSERT INTO `yg_admin_log` VALUES ('542', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613814030');
INSERT INTO `yg_admin_log` VALUES ('543', 'moduleid=4&file=vip&action=add&username=test', 'admin', '127.0.0.1', '1613814044');
INSERT INTO `yg_admin_log` VALUES ('544', 'moduleid=4&file=vip&action=edit&userid=3', 'admin', '127.0.0.1', '1613814084');
INSERT INTO `yg_admin_log` VALUES ('545', 'moduleid=2&file=setting', 'admin', '127.0.0.1', '1613814097');
INSERT INTO `yg_admin_log` VALUES ('546', 'moduleid=2&file=group&action=add', 'admin', '127.0.0.1', '1613814114');
INSERT INTO `yg_admin_log` VALUES ('547', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814158');
INSERT INTO `yg_admin_log` VALUES ('548', 'rand=76&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814191');
INSERT INTO `yg_admin_log` VALUES ('549', 'moduleid=2&file=group&action=add', 'admin', '127.0.0.1', '1613814196');
INSERT INTO `yg_admin_log` VALUES ('550', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613814238');
INSERT INTO `yg_admin_log` VALUES ('551', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814253');
INSERT INTO `yg_admin_log` VALUES ('552', 'rand=18&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814333');
INSERT INTO `yg_admin_log` VALUES ('553', 'moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613814340');
INSERT INTO `yg_admin_log` VALUES ('554', 'rand=79&moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613814369');
INSERT INTO `yg_admin_log` VALUES ('555', 'moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613814390');
INSERT INTO `yg_admin_log` VALUES ('556', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814424');
INSERT INTO `yg_admin_log` VALUES ('557', 'rand=39&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814463');
INSERT INTO `yg_admin_log` VALUES ('558', 'rand=78&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814491');
INSERT INTO `yg_admin_log` VALUES ('559', 'moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613814525');
INSERT INTO `yg_admin_log` VALUES ('560', 'rand=68&moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613814540');
INSERT INTO `yg_admin_log` VALUES ('561', 'moduleid=2&file=setting', 'admin', '127.0.0.1', '1613814548');
INSERT INTO `yg_admin_log` VALUES ('562', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814559');
INSERT INTO `yg_admin_log` VALUES ('563', 'rand=67&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814822');
INSERT INTO `yg_admin_log` VALUES ('564', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613814841');
INSERT INTO `yg_admin_log` VALUES ('565', 'moduleid=2&file=setting', 'admin', '127.0.0.1', '1613814851');
INSERT INTO `yg_admin_log` VALUES ('566', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613814855');
INSERT INTO `yg_admin_log` VALUES ('567', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613814884');
INSERT INTO `yg_admin_log` VALUES ('568', 'moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613814983');
INSERT INTO `yg_admin_log` VALUES ('569', 'rand=17&moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613815015');
INSERT INTO `yg_admin_log` VALUES ('570', 'rand=86&moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613815031');
INSERT INTO `yg_admin_log` VALUES ('571', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613815039');
INSERT INTO `yg_admin_log` VALUES ('572', 'moduleid=4&file=vip&action=add&username=test', 'admin', '127.0.0.1', '1613815111');
INSERT INTO `yg_admin_log` VALUES ('573', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613815179');
INSERT INTO `yg_admin_log` VALUES ('574', 'rand=84&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613815190');
INSERT INTO `yg_admin_log` VALUES ('575', 'rand=30&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613815200');
INSERT INTO `yg_admin_log` VALUES ('576', 'rand=47&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613815225');
INSERT INTO `yg_admin_log` VALUES ('577', 'moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613815231');
INSERT INTO `yg_admin_log` VALUES ('578', 'rand=72&moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613815239');
INSERT INTO `yg_admin_log` VALUES ('579', 'moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613815253');
INSERT INTO `yg_admin_log` VALUES ('580', 'rand=22&moduleid=2&file=group&action=edit&groupid=7', 'admin', '127.0.0.1', '1613815264');
INSERT INTO `yg_admin_log` VALUES ('581', 'moduleid=4&file=vip&action=delete', 'admin', '127.0.0.1', '1613815288');
INSERT INTO `yg_admin_log` VALUES ('582', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613815295');
INSERT INTO `yg_admin_log` VALUES ('583', 'moduleid=4&file=vip&action=add&username=test', 'admin', '127.0.0.1', '1613815309');
INSERT INTO `yg_admin_log` VALUES ('584', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613815315');
INSERT INTO `yg_admin_log` VALUES ('585', 'moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613815320');
INSERT INTO `yg_admin_log` VALUES ('586', 'rand=33&moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613815344');
INSERT INTO `yg_admin_log` VALUES ('587', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613815350');
INSERT INTO `yg_admin_log` VALUES ('588', 'moduleid=4&file=vip&action=add&username=test', 'admin', '127.0.0.1', '1613815363');
INSERT INTO `yg_admin_log` VALUES ('589', 'moduleid=4&file=vip&action=add', 'admin', '127.0.0.1', '1613815422');
INSERT INTO `yg_admin_log` VALUES ('590', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613816023');
INSERT INTO `yg_admin_log` VALUES ('591', 'rand=40&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613816032');
INSERT INTO `yg_admin_log` VALUES ('592', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613816181');
INSERT INTO `yg_admin_log` VALUES ('593', 'rand=80&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613816188');
INSERT INTO `yg_admin_log` VALUES ('594', 'rand=53&moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613816356');
INSERT INTO `yg_admin_log` VALUES ('595', 'moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613816361');
INSERT INTO `yg_admin_log` VALUES ('596', 'rand=63&moduleid=2&file=group&action=edit&groupid=10', 'admin', '127.0.0.1', '1613816368');
INSERT INTO `yg_admin_log` VALUES ('597', 'moduleid=2&action=edit&userid=3', 'admin', '127.0.0.1', '1613816375');
INSERT INTO `yg_admin_log` VALUES ('598', 'moduleid=2&file=group&action=edit&groupid=9', 'admin', '127.0.0.1', '1613959995');
INSERT INTO `yg_admin_log` VALUES ('599', 'moduleid=16&file=setting', 'admin', '127.0.0.1', '1613960044');
INSERT INTO `yg_admin_log` VALUES ('600', 'rand=31&moduleid=16&file=setting&tab=2', 'admin', '127.0.0.1', '1613960070');
INSERT INTO `yg_admin_log` VALUES ('601', 'moduleid=26&file=setting', 'admin', '127.0.0.1', '1613960072');
INSERT INTO `yg_admin_log` VALUES ('602', 'rand=36&moduleid=26&file=setting&tab=2', 'admin', '127.0.0.1', '1613960084');
INSERT INTO `yg_admin_log` VALUES ('603', 'file=setting', 'admin', '127.0.0.1', '1613977640');
INSERT INTO `yg_admin_log` VALUES ('604', 'moduleid=3&file=setting', 'admin', '127.0.0.1', '1613978252');
INSERT INTO `yg_admin_log` VALUES ('605', 'rand=78&moduleid=3&file=setting&tab=0', 'admin', '127.0.0.1', '1613978283');
INSERT INTO `yg_admin_log` VALUES ('606', 'moduleid=3&file=setting', 'admin', '127.0.0.1', '1613978315');

-- ----------------------------
-- Table structure for yg_admin_online
-- ----------------------------
DROP TABLE IF EXISTS `yg_admin_online`;
CREATE TABLE `yg_admin_online` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `qstring` varchar(255) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线管理员';

-- ----------------------------
-- Records of yg_admin_online
-- ----------------------------
INSERT INTO `yg_admin_online` VALUES ('lhuiti25a26aqq6q34714ip483', 'admin', '127.0.0.1', '1', 'file=tag&action=dict&table=yg_member&note=%E4%BC%9A%E5%91%98&widget=1', '1613983709');

-- ----------------------------
-- Table structure for yg_ad_place
-- ----------------------------
DROP TABLE IF EXISTS `yg_ad_place`;
CREATE TABLE `yg_ad_place` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` float unsigned NOT NULL DEFAULT '0',
  `ads` smallint(4) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='广告位';

-- ----------------------------
-- Records of yg_ad_place
-- ----------------------------
INSERT INTO `yg_ad_place` VALUES ('1', '0', '5', '1', '首页广告轮播', '', '', '', '', '710', '370', '0', '2', '0', '1588559470', 'admin', '1613718873', '');
INSERT INTO `yg_ad_place` VALUES ('26', '0', '3', '1', '首页快捷导航', '', '', '', '', '100', '100', '0', '3', '0', '1613721387', 'admin', '1613721387', '');

-- ----------------------------
-- Table structure for yg_alert
-- ----------------------------
DROP TABLE IF EXISTS `yg_alert`;
CREATE TABLE `yg_alert` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `word` varchar(100) NOT NULL DEFAULT '',
  `rate` smallint(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '0',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='贸易提醒';

-- ----------------------------
-- Records of yg_alert
-- ----------------------------

-- ----------------------------
-- Table structure for yg_announce
-- ----------------------------
DROP TABLE IF EXISTS `yg_announce`;
CREATE TABLE `yg_announce` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of yg_announce
-- ----------------------------

-- ----------------------------
-- Table structure for yg_area
-- ----------------------------
DROP TABLE IF EXISTS `yg_area`;
CREATE TABLE `yg_area` (
  `areaid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `areaname` varchar(50) NOT NULL DEFAULT '',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `child` tinyint(1) NOT NULL DEFAULT '0',
  `arrchildid` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COMMENT='地区';

-- ----------------------------
-- Records of yg_area
-- ----------------------------
INSERT INTO `yg_area` VALUES ('1', '北京', '0', '0', '0', '1', '1');
INSERT INTO `yg_area` VALUES ('2', '上海', '0', '0', '0', '2', '2');
INSERT INTO `yg_area` VALUES ('3', '天津', '0', '0', '0', '3', '3');
INSERT INTO `yg_area` VALUES ('4', '重庆', '0', '0', '0', '4', '4');
INSERT INTO `yg_area` VALUES ('5', '河北', '0', '0', '1', '5,35,36,37,38,39,40,41,42,43,44,45', '5');
INSERT INTO `yg_area` VALUES ('6', '山西', '0', '0', '1', '6,46,47,48,49,50,51,52,53,54,55,56', '6');
INSERT INTO `yg_area` VALUES ('7', '内蒙古', '0', '0', '1', '7,57,58,59,60,61,62,63,64,65,66,67,68', '7');
INSERT INTO `yg_area` VALUES ('8', '辽宁', '0', '0', '1', '8,69,70,71,72,73,74,75,76,77,78,79,80,81,82', '8');
INSERT INTO `yg_area` VALUES ('9', '吉林', '0', '0', '1', '9,83,84,85,86,87,88,89,90,91', '9');
INSERT INTO `yg_area` VALUES ('10', '黑龙江', '0', '0', '1', '10,92,93,94,95,96,97,98,99,100,101,102,103,104', '10');
INSERT INTO `yg_area` VALUES ('11', '江苏', '0', '0', '1', '11,105,106,107,108,109,110,111,112,113,114,115,116,117', '11');
INSERT INTO `yg_area` VALUES ('12', '浙江', '0', '0', '1', '12,118,119,120,121,122,123,124,125,126,127,128', '12');
INSERT INTO `yg_area` VALUES ('13', '安徽', '0', '0', '1', '13,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145', '13');
INSERT INTO `yg_area` VALUES ('14', '福建', '0', '0', '1', '14,146,147,148,149,150,151,152,153,154', '14');
INSERT INTO `yg_area` VALUES ('15', '江西', '0', '0', '1', '15,155,156,157,158,159,160,161,162,163,164,165', '15');
INSERT INTO `yg_area` VALUES ('16', '山东', '0', '0', '1', '16,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182', '16');
INSERT INTO `yg_area` VALUES ('17', '河南', '0', '0', '1', '17,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199', '17');
INSERT INTO `yg_area` VALUES ('18', '湖北', '0', '0', '1', '18,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216', '18');
INSERT INTO `yg_area` VALUES ('19', '湖南', '0', '0', '1', '19,217,218,219,220,221,222,223,224,225,226,227,228,229,230', '19');
INSERT INTO `yg_area` VALUES ('20', '广东', '0', '0', '1', '20,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251', '20');
INSERT INTO `yg_area` VALUES ('21', '广西', '0', '0', '1', '21,252,253,254,255,256,257,258,259,260,261,262,263,264,265', '21');
INSERT INTO `yg_area` VALUES ('22', '海南', '0', '0', '1', '22,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283', '22');
INSERT INTO `yg_area` VALUES ('23', '四川', '0', '0', '1', '23,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304', '23');
INSERT INTO `yg_area` VALUES ('24', '贵州', '0', '0', '1', '24,305,306,307,308,309,310,311,312,313', '24');
INSERT INTO `yg_area` VALUES ('25', '云南', '0', '0', '1', '25,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329', '25');
INSERT INTO `yg_area` VALUES ('26', '西藏', '0', '0', '1', '26,330,331,332,333,334,335,336', '26');
INSERT INTO `yg_area` VALUES ('27', '陕西', '0', '0', '1', '27,337,338,339,340,341,342,343,344,345,346', '27');
INSERT INTO `yg_area` VALUES ('28', '甘肃', '0', '0', '1', '28,347,348,349,350,351,352,353,354,355,356,357,358,359,360', '28');
INSERT INTO `yg_area` VALUES ('29', '青海', '0', '0', '1', '29,361,362,363,364,365,366,367,368', '29');
INSERT INTO `yg_area` VALUES ('30', '宁夏', '0', '0', '1', '30,369,370,371,372,373', '30');
INSERT INTO `yg_area` VALUES ('31', '新疆', '0', '0', '1', '31,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391', '31');
INSERT INTO `yg_area` VALUES ('32', '台湾', '0', '0', '0', '32', '32');
INSERT INTO `yg_area` VALUES ('33', '香港', '0', '0', '0', '33', '33');
INSERT INTO `yg_area` VALUES ('34', '澳门', '0', '0', '0', '34', '34');
INSERT INTO `yg_area` VALUES ('35', '石家庄市', '5', '0,5', '0', '35', '35');
INSERT INTO `yg_area` VALUES ('36', '唐山市', '5', '0,5', '0', '36', '36');
INSERT INTO `yg_area` VALUES ('37', '秦皇岛市', '5', '0,5', '0', '37', '37');
INSERT INTO `yg_area` VALUES ('38', '邯郸市', '5', '0,5', '0', '38', '38');
INSERT INTO `yg_area` VALUES ('39', '邢台市', '5', '0,5', '0', '39', '39');
INSERT INTO `yg_area` VALUES ('40', '保定市', '5', '0,5', '0', '40', '40');
INSERT INTO `yg_area` VALUES ('41', '张家口市', '5', '0,5', '0', '41', '41');
INSERT INTO `yg_area` VALUES ('42', '承德市', '5', '0,5', '0', '42', '42');
INSERT INTO `yg_area` VALUES ('43', '沧州市', '5', '0,5', '0', '43', '43');
INSERT INTO `yg_area` VALUES ('44', '廊坊市', '5', '0,5', '0', '44', '44');
INSERT INTO `yg_area` VALUES ('45', '衡水市', '5', '0,5', '0', '45', '45');
INSERT INTO `yg_area` VALUES ('46', '太原市', '6', '0,6', '0', '46', '46');
INSERT INTO `yg_area` VALUES ('47', '大同市', '6', '0,6', '0', '47', '47');
INSERT INTO `yg_area` VALUES ('48', '阳泉市', '6', '0,6', '0', '48', '48');
INSERT INTO `yg_area` VALUES ('49', '长治市', '6', '0,6', '0', '49', '49');
INSERT INTO `yg_area` VALUES ('50', '晋城市', '6', '0,6', '0', '50', '50');
INSERT INTO `yg_area` VALUES ('51', '朔州市', '6', '0,6', '0', '51', '51');
INSERT INTO `yg_area` VALUES ('52', '晋中市', '6', '0,6', '0', '52', '52');
INSERT INTO `yg_area` VALUES ('53', '运城市', '6', '0,6', '0', '53', '53');
INSERT INTO `yg_area` VALUES ('54', '忻州市', '6', '0,6', '0', '54', '54');
INSERT INTO `yg_area` VALUES ('55', '临汾市', '6', '0,6', '0', '55', '55');
INSERT INTO `yg_area` VALUES ('56', '吕梁市', '6', '0,6', '0', '56', '56');
INSERT INTO `yg_area` VALUES ('57', '呼和浩特市', '7', '0,7', '0', '57', '57');
INSERT INTO `yg_area` VALUES ('58', '包头市', '7', '0,7', '0', '58', '58');
INSERT INTO `yg_area` VALUES ('59', '乌海市', '7', '0,7', '0', '59', '59');
INSERT INTO `yg_area` VALUES ('60', '赤峰市', '7', '0,7', '0', '60', '60');
INSERT INTO `yg_area` VALUES ('61', '通辽市', '7', '0,7', '0', '61', '61');
INSERT INTO `yg_area` VALUES ('62', '鄂尔多斯市', '7', '0,7', '0', '62', '62');
INSERT INTO `yg_area` VALUES ('63', '呼伦贝尔市', '7', '0,7', '0', '63', '63');
INSERT INTO `yg_area` VALUES ('64', '巴彦淖尔市', '7', '0,7', '0', '64', '64');
INSERT INTO `yg_area` VALUES ('65', '乌兰察布市', '7', '0,7', '0', '65', '65');
INSERT INTO `yg_area` VALUES ('66', '兴安盟', '7', '0,7', '0', '66', '66');
INSERT INTO `yg_area` VALUES ('67', '锡林郭勒盟', '7', '0,7', '0', '67', '67');
INSERT INTO `yg_area` VALUES ('68', '阿拉善盟', '7', '0,7', '0', '68', '68');
INSERT INTO `yg_area` VALUES ('69', '沈阳市', '8', '0,8', '0', '69', '69');
INSERT INTO `yg_area` VALUES ('70', '大连市', '8', '0,8', '0', '70', '70');
INSERT INTO `yg_area` VALUES ('71', '鞍山市', '8', '0,8', '0', '71', '71');
INSERT INTO `yg_area` VALUES ('72', '抚顺市', '8', '0,8', '0', '72', '72');
INSERT INTO `yg_area` VALUES ('73', '本溪市', '8', '0,8', '0', '73', '73');
INSERT INTO `yg_area` VALUES ('74', '丹东市', '8', '0,8', '0', '74', '74');
INSERT INTO `yg_area` VALUES ('75', '锦州市', '8', '0,8', '0', '75', '75');
INSERT INTO `yg_area` VALUES ('76', '营口市', '8', '0,8', '0', '76', '76');
INSERT INTO `yg_area` VALUES ('77', '阜新市', '8', '0,8', '0', '77', '77');
INSERT INTO `yg_area` VALUES ('78', '辽阳市', '8', '0,8', '0', '78', '78');
INSERT INTO `yg_area` VALUES ('79', '盘锦市', '8', '0,8', '0', '79', '79');
INSERT INTO `yg_area` VALUES ('80', '铁岭市', '8', '0,8', '0', '80', '80');
INSERT INTO `yg_area` VALUES ('81', '朝阳市', '8', '0,8', '0', '81', '81');
INSERT INTO `yg_area` VALUES ('82', '葫芦岛市', '8', '0,8', '0', '82', '82');
INSERT INTO `yg_area` VALUES ('83', '长春市', '9', '0,9', '0', '83', '83');
INSERT INTO `yg_area` VALUES ('84', '吉林市', '9', '0,9', '0', '84', '84');
INSERT INTO `yg_area` VALUES ('85', '四平市', '9', '0,9', '0', '85', '85');
INSERT INTO `yg_area` VALUES ('86', '辽源市', '9', '0,9', '0', '86', '86');
INSERT INTO `yg_area` VALUES ('87', '通化市', '9', '0,9', '0', '87', '87');
INSERT INTO `yg_area` VALUES ('88', '白山市', '9', '0,9', '0', '88', '88');
INSERT INTO `yg_area` VALUES ('89', '松原市', '9', '0,9', '0', '89', '89');
INSERT INTO `yg_area` VALUES ('90', '白城市', '9', '0,9', '0', '90', '90');
INSERT INTO `yg_area` VALUES ('91', '延边朝鲜族自治州', '9', '0,9', '0', '91', '91');
INSERT INTO `yg_area` VALUES ('92', '哈尔滨市', '10', '0,10', '0', '92', '92');
INSERT INTO `yg_area` VALUES ('93', '齐齐哈尔市', '10', '0,10', '0', '93', '93');
INSERT INTO `yg_area` VALUES ('94', '鸡西市', '10', '0,10', '0', '94', '94');
INSERT INTO `yg_area` VALUES ('95', '鹤岗市', '10', '0,10', '0', '95', '95');
INSERT INTO `yg_area` VALUES ('96', '双鸭山市', '10', '0,10', '0', '96', '96');
INSERT INTO `yg_area` VALUES ('97', '大庆市', '10', '0,10', '0', '97', '97');
INSERT INTO `yg_area` VALUES ('98', '伊春市', '10', '0,10', '0', '98', '98');
INSERT INTO `yg_area` VALUES ('99', '佳木斯市', '10', '0,10', '0', '99', '99');
INSERT INTO `yg_area` VALUES ('100', '七台河市', '10', '0,10', '0', '100', '100');
INSERT INTO `yg_area` VALUES ('101', '牡丹江市', '10', '0,10', '0', '101', '101');
INSERT INTO `yg_area` VALUES ('102', '黑河市', '10', '0,10', '0', '102', '102');
INSERT INTO `yg_area` VALUES ('103', '绥化市', '10', '0,10', '0', '103', '103');
INSERT INTO `yg_area` VALUES ('104', '大兴安岭地区', '10', '0,10', '0', '104', '104');
INSERT INTO `yg_area` VALUES ('105', '南京市', '11', '0,11', '0', '105', '105');
INSERT INTO `yg_area` VALUES ('106', '无锡市', '11', '0,11', '0', '106', '106');
INSERT INTO `yg_area` VALUES ('107', '徐州市', '11', '0,11', '0', '107', '107');
INSERT INTO `yg_area` VALUES ('108', '常州市', '11', '0,11', '0', '108', '108');
INSERT INTO `yg_area` VALUES ('109', '苏州市', '11', '0,11', '0', '109', '109');
INSERT INTO `yg_area` VALUES ('110', '南通市', '11', '0,11', '0', '110', '110');
INSERT INTO `yg_area` VALUES ('111', '连云港市', '11', '0,11', '0', '111', '111');
INSERT INTO `yg_area` VALUES ('112', '淮安市', '11', '0,11', '0', '112', '112');
INSERT INTO `yg_area` VALUES ('113', '盐城市', '11', '0,11', '0', '113', '113');
INSERT INTO `yg_area` VALUES ('114', '扬州市', '11', '0,11', '0', '114', '114');
INSERT INTO `yg_area` VALUES ('115', '镇江市', '11', '0,11', '0', '115', '115');
INSERT INTO `yg_area` VALUES ('116', '泰州市', '11', '0,11', '0', '116', '116');
INSERT INTO `yg_area` VALUES ('117', '宿迁市', '11', '0,11', '0', '117', '117');
INSERT INTO `yg_area` VALUES ('118', '杭州市', '12', '0,12', '0', '118', '118');
INSERT INTO `yg_area` VALUES ('119', '宁波市', '12', '0,12', '0', '119', '119');
INSERT INTO `yg_area` VALUES ('120', '温州市', '12', '0,12', '0', '120', '120');
INSERT INTO `yg_area` VALUES ('121', '嘉兴市', '12', '0,12', '0', '121', '121');
INSERT INTO `yg_area` VALUES ('122', '湖州市', '12', '0,12', '0', '122', '122');
INSERT INTO `yg_area` VALUES ('123', '绍兴市', '12', '0,12', '0', '123', '123');
INSERT INTO `yg_area` VALUES ('124', '金华市', '12', '0,12', '0', '124', '124');
INSERT INTO `yg_area` VALUES ('125', '衢州市', '12', '0,12', '0', '125', '125');
INSERT INTO `yg_area` VALUES ('126', '舟山市', '12', '0,12', '0', '126', '126');
INSERT INTO `yg_area` VALUES ('127', '台州市', '12', '0,12', '0', '127', '127');
INSERT INTO `yg_area` VALUES ('128', '丽水市', '12', '0,12', '0', '128', '128');
INSERT INTO `yg_area` VALUES ('129', '合肥市', '13', '0,13', '0', '129', '129');
INSERT INTO `yg_area` VALUES ('130', '芜湖市', '13', '0,13', '0', '130', '130');
INSERT INTO `yg_area` VALUES ('131', '蚌埠市', '13', '0,13', '0', '131', '131');
INSERT INTO `yg_area` VALUES ('132', '淮南市', '13', '0,13', '0', '132', '132');
INSERT INTO `yg_area` VALUES ('133', '马鞍山市', '13', '0,13', '0', '133', '133');
INSERT INTO `yg_area` VALUES ('134', '淮北市', '13', '0,13', '0', '134', '134');
INSERT INTO `yg_area` VALUES ('135', '铜陵市', '13', '0,13', '0', '135', '135');
INSERT INTO `yg_area` VALUES ('136', '安庆市', '13', '0,13', '0', '136', '136');
INSERT INTO `yg_area` VALUES ('137', '黄山市', '13', '0,13', '0', '137', '137');
INSERT INTO `yg_area` VALUES ('138', '滁州市', '13', '0,13', '0', '138', '138');
INSERT INTO `yg_area` VALUES ('139', '阜阳市', '13', '0,13', '0', '139', '139');
INSERT INTO `yg_area` VALUES ('140', '宿州市', '13', '0,13', '0', '140', '140');
INSERT INTO `yg_area` VALUES ('141', '巢湖市', '13', '0,13', '0', '141', '141');
INSERT INTO `yg_area` VALUES ('142', '六安市', '13', '0,13', '0', '142', '142');
INSERT INTO `yg_area` VALUES ('143', '亳州市', '13', '0,13', '0', '143', '143');
INSERT INTO `yg_area` VALUES ('144', '池州市', '13', '0,13', '0', '144', '144');
INSERT INTO `yg_area` VALUES ('145', '宣城市', '13', '0,13', '0', '145', '145');
INSERT INTO `yg_area` VALUES ('146', '福州市', '14', '0,14', '0', '146', '146');
INSERT INTO `yg_area` VALUES ('147', '厦门市', '14', '0,14', '0', '147', '147');
INSERT INTO `yg_area` VALUES ('148', '莆田市', '14', '0,14', '0', '148', '148');
INSERT INTO `yg_area` VALUES ('149', '三明市', '14', '0,14', '0', '149', '149');
INSERT INTO `yg_area` VALUES ('150', '泉州市', '14', '0,14', '0', '150', '150');
INSERT INTO `yg_area` VALUES ('151', '漳州市', '14', '0,14', '0', '151', '151');
INSERT INTO `yg_area` VALUES ('152', '南平市', '14', '0,14', '0', '152', '152');
INSERT INTO `yg_area` VALUES ('153', '龙岩市', '14', '0,14', '0', '153', '153');
INSERT INTO `yg_area` VALUES ('154', '宁德市', '14', '0,14', '0', '154', '154');
INSERT INTO `yg_area` VALUES ('155', '南昌市', '15', '0,15', '0', '155', '155');
INSERT INTO `yg_area` VALUES ('156', '景德镇市', '15', '0,15', '0', '156', '156');
INSERT INTO `yg_area` VALUES ('157', '萍乡市', '15', '0,15', '0', '157', '157');
INSERT INTO `yg_area` VALUES ('158', '九江市', '15', '0,15', '0', '158', '158');
INSERT INTO `yg_area` VALUES ('159', '新余市', '15', '0,15', '0', '159', '159');
INSERT INTO `yg_area` VALUES ('160', '鹰潭市', '15', '0,15', '0', '160', '160');
INSERT INTO `yg_area` VALUES ('161', '赣州市', '15', '0,15', '0', '161', '161');
INSERT INTO `yg_area` VALUES ('162', '吉安市', '15', '0,15', '0', '162', '162');
INSERT INTO `yg_area` VALUES ('163', '宜春市', '15', '0,15', '0', '163', '163');
INSERT INTO `yg_area` VALUES ('164', '抚州市', '15', '0,15', '0', '164', '164');
INSERT INTO `yg_area` VALUES ('165', '上饶市', '15', '0,15', '0', '165', '165');
INSERT INTO `yg_area` VALUES ('166', '济南市', '16', '0,16', '0', '166', '166');
INSERT INTO `yg_area` VALUES ('167', '青岛市', '16', '0,16', '0', '167', '167');
INSERT INTO `yg_area` VALUES ('168', '淄博市', '16', '0,16', '0', '168', '168');
INSERT INTO `yg_area` VALUES ('169', '枣庄市', '16', '0,16', '0', '169', '169');
INSERT INTO `yg_area` VALUES ('170', '东营市', '16', '0,16', '0', '170', '170');
INSERT INTO `yg_area` VALUES ('171', '烟台市', '16', '0,16', '0', '171', '171');
INSERT INTO `yg_area` VALUES ('172', '潍坊市', '16', '0,16', '0', '172', '172');
INSERT INTO `yg_area` VALUES ('173', '济宁市', '16', '0,16', '0', '173', '173');
INSERT INTO `yg_area` VALUES ('174', '泰安市', '16', '0,16', '0', '174', '174');
INSERT INTO `yg_area` VALUES ('175', '威海市', '16', '0,16', '0', '175', '175');
INSERT INTO `yg_area` VALUES ('176', '日照市', '16', '0,16', '0', '176', '176');
INSERT INTO `yg_area` VALUES ('177', '莱芜市', '16', '0,16', '0', '177', '177');
INSERT INTO `yg_area` VALUES ('178', '临沂市', '16', '0,16', '0', '178', '178');
INSERT INTO `yg_area` VALUES ('179', '德州市', '16', '0,16', '0', '179', '179');
INSERT INTO `yg_area` VALUES ('180', '聊城市', '16', '0,16', '0', '180', '180');
INSERT INTO `yg_area` VALUES ('181', '滨州市', '16', '0,16', '0', '181', '181');
INSERT INTO `yg_area` VALUES ('182', '荷泽市', '16', '0,16', '0', '182', '182');
INSERT INTO `yg_area` VALUES ('183', '郑州市', '17', '0,17', '0', '183', '183');
INSERT INTO `yg_area` VALUES ('184', '开封市', '17', '0,17', '0', '184', '184');
INSERT INTO `yg_area` VALUES ('185', '洛阳市', '17', '0,17', '0', '185', '185');
INSERT INTO `yg_area` VALUES ('186', '平顶山市', '17', '0,17', '0', '186', '186');
INSERT INTO `yg_area` VALUES ('187', '安阳市', '17', '0,17', '0', '187', '187');
INSERT INTO `yg_area` VALUES ('188', '鹤壁市', '17', '0,17', '0', '188', '188');
INSERT INTO `yg_area` VALUES ('189', '新乡市', '17', '0,17', '0', '189', '189');
INSERT INTO `yg_area` VALUES ('190', '焦作市', '17', '0,17', '0', '190', '190');
INSERT INTO `yg_area` VALUES ('191', '濮阳市', '17', '0,17', '0', '191', '191');
INSERT INTO `yg_area` VALUES ('192', '许昌市', '17', '0,17', '0', '192', '192');
INSERT INTO `yg_area` VALUES ('193', '漯河市', '17', '0,17', '0', '193', '193');
INSERT INTO `yg_area` VALUES ('194', '三门峡市', '17', '0,17', '0', '194', '194');
INSERT INTO `yg_area` VALUES ('195', '南阳市', '17', '0,17', '0', '195', '195');
INSERT INTO `yg_area` VALUES ('196', '商丘市', '17', '0,17', '0', '196', '196');
INSERT INTO `yg_area` VALUES ('197', '信阳市', '17', '0,17', '0', '197', '197');
INSERT INTO `yg_area` VALUES ('198', '周口市', '17', '0,17', '0', '198', '198');
INSERT INTO `yg_area` VALUES ('199', '驻马店市', '17', '0,17', '0', '199', '199');
INSERT INTO `yg_area` VALUES ('200', '武汉市', '18', '0,18', '0', '200', '200');
INSERT INTO `yg_area` VALUES ('201', '黄石市', '18', '0,18', '0', '201', '201');
INSERT INTO `yg_area` VALUES ('202', '十堰市', '18', '0,18', '0', '202', '202');
INSERT INTO `yg_area` VALUES ('203', '宜昌市', '18', '0,18', '0', '203', '203');
INSERT INTO `yg_area` VALUES ('204', '襄樊市', '18', '0,18', '0', '204', '204');
INSERT INTO `yg_area` VALUES ('205', '鄂州市', '18', '0,18', '0', '205', '205');
INSERT INTO `yg_area` VALUES ('206', '荆门市', '18', '0,18', '0', '206', '206');
INSERT INTO `yg_area` VALUES ('207', '孝感市', '18', '0,18', '0', '207', '207');
INSERT INTO `yg_area` VALUES ('208', '荆州市', '18', '0,18', '0', '208', '208');
INSERT INTO `yg_area` VALUES ('209', '黄冈市', '18', '0,18', '0', '209', '209');
INSERT INTO `yg_area` VALUES ('210', '咸宁市', '18', '0,18', '0', '210', '210');
INSERT INTO `yg_area` VALUES ('211', '随州市', '18', '0,18', '0', '211', '211');
INSERT INTO `yg_area` VALUES ('212', '恩施土家族苗族自治州', '18', '0,18', '0', '212', '212');
INSERT INTO `yg_area` VALUES ('213', '仙桃市', '18', '0,18', '0', '213', '213');
INSERT INTO `yg_area` VALUES ('214', '潜江市', '18', '0,18', '0', '214', '214');
INSERT INTO `yg_area` VALUES ('215', '天门市', '18', '0,18', '0', '215', '215');
INSERT INTO `yg_area` VALUES ('216', '神农架林区', '18', '0,18', '0', '216', '216');
INSERT INTO `yg_area` VALUES ('217', '长沙市', '19', '0,19', '0', '217', '217');
INSERT INTO `yg_area` VALUES ('218', '株洲市', '19', '0,19', '0', '218', '218');
INSERT INTO `yg_area` VALUES ('219', '湘潭市', '19', '0,19', '0', '219', '219');
INSERT INTO `yg_area` VALUES ('220', '衡阳市', '19', '0,19', '0', '220', '220');
INSERT INTO `yg_area` VALUES ('221', '邵阳市', '19', '0,19', '0', '221', '221');
INSERT INTO `yg_area` VALUES ('222', '岳阳市', '19', '0,19', '0', '222', '222');
INSERT INTO `yg_area` VALUES ('223', '常德市', '19', '0,19', '0', '223', '223');
INSERT INTO `yg_area` VALUES ('224', '张家界市', '19', '0,19', '0', '224', '224');
INSERT INTO `yg_area` VALUES ('225', '益阳市', '19', '0,19', '0', '225', '225');
INSERT INTO `yg_area` VALUES ('226', '郴州市', '19', '0,19', '0', '226', '226');
INSERT INTO `yg_area` VALUES ('227', '永州市', '19', '0,19', '0', '227', '227');
INSERT INTO `yg_area` VALUES ('228', '怀化市', '19', '0,19', '0', '228', '228');
INSERT INTO `yg_area` VALUES ('229', '娄底市', '19', '0,19', '0', '229', '229');
INSERT INTO `yg_area` VALUES ('230', '湘西土家族苗族自治州', '19', '0,19', '0', '230', '230');
INSERT INTO `yg_area` VALUES ('231', '广州市', '20', '0,20', '0', '231', '231');
INSERT INTO `yg_area` VALUES ('232', '韶关市', '20', '0,20', '0', '232', '232');
INSERT INTO `yg_area` VALUES ('233', '深圳市', '20', '0,20', '0', '233', '233');
INSERT INTO `yg_area` VALUES ('234', '珠海市', '20', '0,20', '0', '234', '234');
INSERT INTO `yg_area` VALUES ('235', '汕头市', '20', '0,20', '0', '235', '235');
INSERT INTO `yg_area` VALUES ('236', '佛山市', '20', '0,20', '0', '236', '236');
INSERT INTO `yg_area` VALUES ('237', '江门市', '20', '0,20', '0', '237', '237');
INSERT INTO `yg_area` VALUES ('238', '湛江市', '20', '0,20', '0', '238', '238');
INSERT INTO `yg_area` VALUES ('239', '茂名市', '20', '0,20', '0', '239', '239');
INSERT INTO `yg_area` VALUES ('240', '肇庆市', '20', '0,20', '0', '240', '240');
INSERT INTO `yg_area` VALUES ('241', '惠州市', '20', '0,20', '0', '241', '241');
INSERT INTO `yg_area` VALUES ('242', '梅州市', '20', '0,20', '0', '242', '242');
INSERT INTO `yg_area` VALUES ('243', '汕尾市', '20', '0,20', '0', '243', '243');
INSERT INTO `yg_area` VALUES ('244', '河源市', '20', '0,20', '0', '244', '244');
INSERT INTO `yg_area` VALUES ('245', '阳江市', '20', '0,20', '0', '245', '245');
INSERT INTO `yg_area` VALUES ('246', '清远市', '20', '0,20', '0', '246', '246');
INSERT INTO `yg_area` VALUES ('247', '东莞市', '20', '0,20', '0', '247', '247');
INSERT INTO `yg_area` VALUES ('248', '中山市', '20', '0,20', '0', '248', '248');
INSERT INTO `yg_area` VALUES ('249', '潮州市', '20', '0,20', '0', '249', '249');
INSERT INTO `yg_area` VALUES ('250', '揭阳市', '20', '0,20', '0', '250', '250');
INSERT INTO `yg_area` VALUES ('251', '云浮市', '20', '0,20', '0', '251', '251');
INSERT INTO `yg_area` VALUES ('252', '南宁市', '21', '0,21', '0', '252', '252');
INSERT INTO `yg_area` VALUES ('253', '柳州市', '21', '0,21', '0', '253', '253');
INSERT INTO `yg_area` VALUES ('254', '桂林市', '21', '0,21', '0', '254', '254');
INSERT INTO `yg_area` VALUES ('255', '梧州市', '21', '0,21', '0', '255', '255');
INSERT INTO `yg_area` VALUES ('256', '北海市', '21', '0,21', '0', '256', '256');
INSERT INTO `yg_area` VALUES ('257', '防城港市', '21', '0,21', '0', '257', '257');
INSERT INTO `yg_area` VALUES ('258', '钦州市', '21', '0,21', '0', '258', '258');
INSERT INTO `yg_area` VALUES ('259', '贵港市', '21', '0,21', '0', '259', '259');
INSERT INTO `yg_area` VALUES ('260', '玉林市', '21', '0,21', '0', '260', '260');
INSERT INTO `yg_area` VALUES ('261', '百色市', '21', '0,21', '0', '261', '261');
INSERT INTO `yg_area` VALUES ('262', '贺州市', '21', '0,21', '0', '262', '262');
INSERT INTO `yg_area` VALUES ('263', '河池市', '21', '0,21', '0', '263', '263');
INSERT INTO `yg_area` VALUES ('264', '来宾市', '21', '0,21', '0', '264', '264');
INSERT INTO `yg_area` VALUES ('265', '崇左市', '21', '0,21', '0', '265', '265');
INSERT INTO `yg_area` VALUES ('266', '海口市', '22', '0,22', '0', '266', '266');
INSERT INTO `yg_area` VALUES ('267', '三亚市', '22', '0,22', '0', '267', '267');
INSERT INTO `yg_area` VALUES ('268', '五指山市', '22', '0,22', '0', '268', '268');
INSERT INTO `yg_area` VALUES ('269', '琼海市', '22', '0,22', '0', '269', '269');
INSERT INTO `yg_area` VALUES ('270', '儋州市', '22', '0,22', '0', '270', '270');
INSERT INTO `yg_area` VALUES ('271', '文昌市', '22', '0,22', '0', '271', '271');
INSERT INTO `yg_area` VALUES ('272', '万宁市', '22', '0,22', '0', '272', '272');
INSERT INTO `yg_area` VALUES ('273', '东方市', '22', '0,22', '0', '273', '273');
INSERT INTO `yg_area` VALUES ('274', '定安县', '22', '0,22', '0', '274', '274');
INSERT INTO `yg_area` VALUES ('275', '屯昌县', '22', '0,22', '0', '275', '275');
INSERT INTO `yg_area` VALUES ('276', '澄迈县', '22', '0,22', '0', '276', '276');
INSERT INTO `yg_area` VALUES ('277', '临高县', '22', '0,22', '0', '277', '277');
INSERT INTO `yg_area` VALUES ('278', '白沙黎族自治县', '22', '0,22', '0', '278', '278');
INSERT INTO `yg_area` VALUES ('279', '昌江黎族自治县', '22', '0,22', '0', '279', '279');
INSERT INTO `yg_area` VALUES ('280', '乐东黎族自治县', '22', '0,22', '0', '280', '280');
INSERT INTO `yg_area` VALUES ('281', '陵水黎族自治县', '22', '0,22', '0', '281', '281');
INSERT INTO `yg_area` VALUES ('282', '保亭黎族苗族自治县', '22', '0,22', '0', '282', '282');
INSERT INTO `yg_area` VALUES ('283', '琼中黎族苗族自治县', '22', '0,22', '0', '283', '283');
INSERT INTO `yg_area` VALUES ('284', '成都市', '23', '0,23', '0', '284', '284');
INSERT INTO `yg_area` VALUES ('285', '自贡市', '23', '0,23', '0', '285', '285');
INSERT INTO `yg_area` VALUES ('286', '攀枝花市', '23', '0,23', '0', '286', '286');
INSERT INTO `yg_area` VALUES ('287', '泸州市', '23', '0,23', '0', '287', '287');
INSERT INTO `yg_area` VALUES ('288', '德阳市', '23', '0,23', '0', '288', '288');
INSERT INTO `yg_area` VALUES ('289', '绵阳市', '23', '0,23', '0', '289', '289');
INSERT INTO `yg_area` VALUES ('290', '广元市', '23', '0,23', '0', '290', '290');
INSERT INTO `yg_area` VALUES ('291', '遂宁市', '23', '0,23', '0', '291', '291');
INSERT INTO `yg_area` VALUES ('292', '内江市', '23', '0,23', '0', '292', '292');
INSERT INTO `yg_area` VALUES ('293', '乐山市', '23', '0,23', '0', '293', '293');
INSERT INTO `yg_area` VALUES ('294', '南充市', '23', '0,23', '0', '294', '294');
INSERT INTO `yg_area` VALUES ('295', '眉山市', '23', '0,23', '0', '295', '295');
INSERT INTO `yg_area` VALUES ('296', '宜宾市', '23', '0,23', '0', '296', '296');
INSERT INTO `yg_area` VALUES ('297', '广安市', '23', '0,23', '0', '297', '297');
INSERT INTO `yg_area` VALUES ('298', '达州市', '23', '0,23', '0', '298', '298');
INSERT INTO `yg_area` VALUES ('299', '雅安市', '23', '0,23', '0', '299', '299');
INSERT INTO `yg_area` VALUES ('300', '巴中市', '23', '0,23', '0', '300', '300');
INSERT INTO `yg_area` VALUES ('301', '资阳市', '23', '0,23', '0', '301', '301');
INSERT INTO `yg_area` VALUES ('302', '阿坝藏族羌族自治州', '23', '0,23', '0', '302', '302');
INSERT INTO `yg_area` VALUES ('303', '甘孜藏族自治州', '23', '0,23', '0', '303', '303');
INSERT INTO `yg_area` VALUES ('304', '凉山彝族自治州', '23', '0,23', '0', '304', '304');
INSERT INTO `yg_area` VALUES ('305', '贵阳市', '24', '0,24', '0', '305', '305');
INSERT INTO `yg_area` VALUES ('306', '六盘水市', '24', '0,24', '0', '306', '306');
INSERT INTO `yg_area` VALUES ('307', '遵义市', '24', '0,24', '0', '307', '307');
INSERT INTO `yg_area` VALUES ('308', '安顺市', '24', '0,24', '0', '308', '308');
INSERT INTO `yg_area` VALUES ('309', '铜仁地区', '24', '0,24', '0', '309', '309');
INSERT INTO `yg_area` VALUES ('310', '黔西南布依族苗族自治州', '24', '0,24', '0', '310', '310');
INSERT INTO `yg_area` VALUES ('311', '毕节地区', '24', '0,24', '0', '311', '311');
INSERT INTO `yg_area` VALUES ('312', '黔东南苗族侗族自治州', '24', '0,24', '0', '312', '312');
INSERT INTO `yg_area` VALUES ('313', '黔南布依族苗族自治州', '24', '0,24', '0', '313', '313');
INSERT INTO `yg_area` VALUES ('314', '昆明市', '25', '0,25', '0', '314', '314');
INSERT INTO `yg_area` VALUES ('315', '曲靖市', '25', '0,25', '0', '315', '315');
INSERT INTO `yg_area` VALUES ('316', '玉溪市', '25', '0,25', '0', '316', '316');
INSERT INTO `yg_area` VALUES ('317', '保山市', '25', '0,25', '0', '317', '317');
INSERT INTO `yg_area` VALUES ('318', '昭通市', '25', '0,25', '0', '318', '318');
INSERT INTO `yg_area` VALUES ('319', '丽江市', '25', '0,25', '0', '319', '319');
INSERT INTO `yg_area` VALUES ('320', '思茅市', '25', '0,25', '0', '320', '320');
INSERT INTO `yg_area` VALUES ('321', '临沧市', '25', '0,25', '0', '321', '321');
INSERT INTO `yg_area` VALUES ('322', '楚雄彝族自治州', '25', '0,25', '0', '322', '322');
INSERT INTO `yg_area` VALUES ('323', '红河哈尼族彝族自治州', '25', '0,25', '0', '323', '323');
INSERT INTO `yg_area` VALUES ('324', '文山壮族苗族自治州', '25', '0,25', '0', '324', '324');
INSERT INTO `yg_area` VALUES ('325', '西双版纳傣族自治州', '25', '0,25', '0', '325', '325');
INSERT INTO `yg_area` VALUES ('326', '大理白族自治州', '25', '0,25', '0', '326', '326');
INSERT INTO `yg_area` VALUES ('327', '德宏傣族景颇族自治州', '25', '0,25', '0', '327', '327');
INSERT INTO `yg_area` VALUES ('328', '怒江傈僳族自治州', '25', '0,25', '0', '328', '328');
INSERT INTO `yg_area` VALUES ('329', '迪庆藏族自治州', '25', '0,25', '0', '329', '329');
INSERT INTO `yg_area` VALUES ('330', '拉萨市', '26', '0,26', '0', '330', '330');
INSERT INTO `yg_area` VALUES ('331', '昌都地区', '26', '0,26', '0', '331', '331');
INSERT INTO `yg_area` VALUES ('332', '山南地区', '26', '0,26', '0', '332', '332');
INSERT INTO `yg_area` VALUES ('333', '日喀则地区', '26', '0,26', '0', '333', '333');
INSERT INTO `yg_area` VALUES ('334', '那曲地区', '26', '0,26', '0', '334', '334');
INSERT INTO `yg_area` VALUES ('335', '阿里地区', '26', '0,26', '0', '335', '335');
INSERT INTO `yg_area` VALUES ('336', '林芝地区', '26', '0,26', '0', '336', '336');
INSERT INTO `yg_area` VALUES ('337', '西安市', '27', '0,27', '0', '337', '337');
INSERT INTO `yg_area` VALUES ('338', '铜川市', '27', '0,27', '0', '338', '338');
INSERT INTO `yg_area` VALUES ('339', '宝鸡市', '27', '0,27', '0', '339', '339');
INSERT INTO `yg_area` VALUES ('340', '咸阳市', '27', '0,27', '0', '340', '340');
INSERT INTO `yg_area` VALUES ('341', '渭南市', '27', '0,27', '0', '341', '341');
INSERT INTO `yg_area` VALUES ('342', '延安市', '27', '0,27', '0', '342', '342');
INSERT INTO `yg_area` VALUES ('343', '汉中市', '27', '0,27', '0', '343', '343');
INSERT INTO `yg_area` VALUES ('344', '榆林市', '27', '0,27', '0', '344', '344');
INSERT INTO `yg_area` VALUES ('345', '安康市', '27', '0,27', '0', '345', '345');
INSERT INTO `yg_area` VALUES ('346', '商洛市', '27', '0,27', '0', '346', '346');
INSERT INTO `yg_area` VALUES ('347', '兰州市', '28', '0,28', '0', '347', '347');
INSERT INTO `yg_area` VALUES ('348', '嘉峪关市', '28', '0,28', '0', '348', '348');
INSERT INTO `yg_area` VALUES ('349', '金昌市', '28', '0,28', '0', '349', '349');
INSERT INTO `yg_area` VALUES ('350', '白银市', '28', '0,28', '0', '350', '350');
INSERT INTO `yg_area` VALUES ('351', '天水市', '28', '0,28', '0', '351', '351');
INSERT INTO `yg_area` VALUES ('352', '武威市', '28', '0,28', '0', '352', '352');
INSERT INTO `yg_area` VALUES ('353', '张掖市', '28', '0,28', '0', '353', '353');
INSERT INTO `yg_area` VALUES ('354', '平凉市', '28', '0,28', '0', '354', '354');
INSERT INTO `yg_area` VALUES ('355', '酒泉市', '28', '0,28', '0', '355', '355');
INSERT INTO `yg_area` VALUES ('356', '庆阳市', '28', '0,28', '0', '356', '356');
INSERT INTO `yg_area` VALUES ('357', '定西市', '28', '0,28', '0', '357', '357');
INSERT INTO `yg_area` VALUES ('358', '陇南市', '28', '0,28', '0', '358', '358');
INSERT INTO `yg_area` VALUES ('359', '临夏回族自治州', '28', '0,28', '0', '359', '359');
INSERT INTO `yg_area` VALUES ('360', '甘南藏族自治州', '28', '0,28', '0', '360', '360');
INSERT INTO `yg_area` VALUES ('361', '西宁市', '29', '0,29', '0', '361', '361');
INSERT INTO `yg_area` VALUES ('362', '海东地区', '29', '0,29', '0', '362', '362');
INSERT INTO `yg_area` VALUES ('363', '海北藏族自治州', '29', '0,29', '0', '363', '363');
INSERT INTO `yg_area` VALUES ('364', '黄南藏族自治州', '29', '0,29', '0', '364', '364');
INSERT INTO `yg_area` VALUES ('365', '海南藏族自治州', '29', '0,29', '0', '365', '365');
INSERT INTO `yg_area` VALUES ('366', '果洛藏族自治州', '29', '0,29', '0', '366', '366');
INSERT INTO `yg_area` VALUES ('367', '玉树藏族自治州', '29', '0,29', '0', '367', '367');
INSERT INTO `yg_area` VALUES ('368', '海西蒙古族藏族自治州', '29', '0,29', '0', '368', '368');
INSERT INTO `yg_area` VALUES ('369', '银川市', '30', '0,30', '0', '369', '369');
INSERT INTO `yg_area` VALUES ('370', '石嘴山市', '30', '0,30', '0', '370', '370');
INSERT INTO `yg_area` VALUES ('371', '吴忠市', '30', '0,30', '0', '371', '371');
INSERT INTO `yg_area` VALUES ('372', '固原市', '30', '0,30', '0', '372', '372');
INSERT INTO `yg_area` VALUES ('373', '中卫市', '30', '0,30', '0', '373', '373');
INSERT INTO `yg_area` VALUES ('374', '乌鲁木齐市', '31', '0,31', '0', '374', '374');
INSERT INTO `yg_area` VALUES ('375', '克拉玛依市', '31', '0,31', '0', '375', '375');
INSERT INTO `yg_area` VALUES ('376', '吐鲁番地区', '31', '0,31', '0', '376', '376');
INSERT INTO `yg_area` VALUES ('377', '哈密地区', '31', '0,31', '0', '377', '377');
INSERT INTO `yg_area` VALUES ('378', '昌吉回族自治州', '31', '0,31', '0', '378', '378');
INSERT INTO `yg_area` VALUES ('379', '博尔塔拉蒙古自治州', '31', '0,31', '0', '379', '379');
INSERT INTO `yg_area` VALUES ('380', '巴音郭楞蒙古自治州', '31', '0,31', '0', '380', '380');
INSERT INTO `yg_area` VALUES ('381', '阿克苏地区', '31', '0,31', '0', '381', '381');
INSERT INTO `yg_area` VALUES ('382', '克孜勒苏柯尔克孜自治州', '31', '0,31', '0', '382', '382');
INSERT INTO `yg_area` VALUES ('383', '喀什地区', '31', '0,31', '0', '383', '383');
INSERT INTO `yg_area` VALUES ('384', '和田地区', '31', '0,31', '0', '384', '384');
INSERT INTO `yg_area` VALUES ('385', '伊犁哈萨克自治州', '31', '0,31', '0', '385', '385');
INSERT INTO `yg_area` VALUES ('386', '塔城地区', '31', '0,31', '0', '386', '386');
INSERT INTO `yg_area` VALUES ('387', '阿勒泰地区', '31', '0,31', '0', '387', '387');
INSERT INTO `yg_area` VALUES ('388', '石河子市', '31', '0,31', '0', '388', '388');
INSERT INTO `yg_area` VALUES ('389', '阿拉尔市', '31', '0,31', '0', '389', '389');
INSERT INTO `yg_area` VALUES ('390', '图木舒克市', '31', '0,31', '0', '390', '390');
INSERT INTO `yg_area` VALUES ('391', '五家渠市', '31', '0,31', '0', '391', '391');

-- ----------------------------
-- Table structure for yg_article_27
-- ----------------------------
DROP TABLE IF EXISTS `yg_article_27`;
CREATE TABLE `yg_article_27` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `subtitle` mediumtext NOT NULL,
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `voteid` varchar(100) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关于我们';

-- ----------------------------
-- Records of yg_article_27
-- ----------------------------

-- ----------------------------
-- Table structure for yg_article_data_27
-- ----------------------------
DROP TABLE IF EXISTS `yg_article_data_27`;
CREATE TABLE `yg_article_data_27` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关于我们内容';

-- ----------------------------
-- Records of yg_article_data_27
-- ----------------------------

-- ----------------------------
-- Table structure for yg_ask
-- ----------------------------
DROP TABLE IF EXISTS `yg_ask`;
CREATE TABLE `yg_ask` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext NOT NULL,
  `star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服中心';

-- ----------------------------
-- Records of yg_ask
-- ----------------------------

-- ----------------------------
-- Table structure for yg_banip
-- ----------------------------
DROP TABLE IF EXISTS `yg_banip`;
CREATE TABLE `yg_banip` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IP禁止';

-- ----------------------------
-- Records of yg_banip
-- ----------------------------

-- ----------------------------
-- Table structure for yg_banword
-- ----------------------------
DROP TABLE IF EXISTS `yg_banword`;
CREATE TABLE `yg_banword` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `replacefrom` varchar(255) NOT NULL DEFAULT '',
  `replaceto` varchar(255) NOT NULL DEFAULT '',
  `deny` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='词语过滤';

-- ----------------------------
-- Records of yg_banword
-- ----------------------------

-- ----------------------------
-- Table structure for yg_cache
-- ----------------------------
DROP TABLE IF EXISTS `yg_cache`;
CREATE TABLE `yg_cache` (
  `cacheid` varchar(32) NOT NULL DEFAULT '',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `cacheid` (`cacheid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件缓存';

-- ----------------------------
-- Records of yg_cache
-- ----------------------------

-- ----------------------------
-- Table structure for yg_cart
-- ----------------------------
DROP TABLE IF EXISTS `yg_cart`;
CREATE TABLE `yg_cart` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of yg_cart
-- ----------------------------
INSERT INTO `yg_cart` VALUES ('3', 'a:0:{}', '1613981230');

-- ----------------------------
-- Table structure for yg_category
-- ----------------------------
DROP TABLE IF EXISTS `yg_category`;
CREATE TABLE `yg_category` (
  `catid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `catname` varchar(50) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `catdir` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `letter` varchar(4) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `item` bigint(20) unsigned NOT NULL DEFAULT '0',
  `property` smallint(6) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `child` tinyint(1) NOT NULL DEFAULT '0',
  `arrchildid` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  `show_template` varchar(30) NOT NULL DEFAULT '',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `group_list` varchar(255) NOT NULL DEFAULT '',
  `group_show` varchar(255) NOT NULL DEFAULT '',
  `group_add` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(250) NOT NULL COMMENT '代表图片',
  `summary` text NOT NULL COMMENT '简介',
  `cont` mediumtext NOT NULL COMMENT '内容',
  `issingle` tinyint(4) NOT NULL COMMENT '是否为单页类',
  `catename` varchar(250) NOT NULL COMMENT '英文名',
  `tzurl` varchar(250) NOT NULL COMMENT '跳转地址',
  `isshow` tinyint(4) NOT NULL DEFAULT '1' COMMENT '前台是否显示',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='栏目分类';

-- ----------------------------
-- Records of yg_category
-- ----------------------------
INSERT INTO `yg_category` VALUES ('3', '4', '公司默认分类', '', '1', 'list.php?catid=3', '', '1', '0', '0', '0', '0', '0', '', '1', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('30', '27', '服务说明', '', 'fuwushuoming', 'list.php?catid=30', 'f', '1', '0', '0', '0', '0', '0', '30', '30', '', '', '', '', '', '', '', '', '', '', '<div>\r\n	<h4>\r\n		收货后结算\r\n	</h4>\r\n	<p>\r\n		该店铺交易由有赞提供资金存管服务，当符合以下条件时，资金自动结算给商家：买家确认收货或到达约定的自动确认收货日期。交易资金未经有赞存管的情形（储值型、电子卡券等）不在本服务范围内。\r\n	</p>\r\n</div>\r\n<div>\r\n	<h4>\r\n		快递发货\r\n	</h4>\r\n	<p>\r\n		支持快递发货，本商品免运费。\r\n	</p>\r\n</div>', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('29', '16', '雅文邑', '', 'fyawenyi', 'list.php?catid=29', 'y', '1', '0', '0', '11', '0,11', '0', '29', '29', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc04.png', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('11', '16', '法国 布根地', '', 'BurgundyFrance', 'list.php?catid=11', 'c', '1', '2', '0', '0', '0', '1', '11,14,15,16,29', '11', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product01.png', '法国 布根地', '', '0', 'Burgundy,France', '', '1');
INSERT INTO `yg_category` VALUES ('12', '16', '法国 波尔多', '', 'BordeauxFrance', 'list.php?catid=12', 'c', '1', '1', '0', '0', '0', '1', '12,17,18,19', '12', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product02.png', '法国 波尔多', '', '0', 'Bordeaux,France', '', '1');
INSERT INTO `yg_category` VALUES ('13', '16', '法国 香槟', '', 'champagneFrench', 'list.php?catid=13', '', '1', '0', '0', '0', '0', '0', '13', '13', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product03.png', '法国 香槟产地', '<div>\r\n	<br />\r\n</div>', '0', 'champagne,French', '', '1');
INSERT INTO `yg_category` VALUES ('14', '16', '白葡萄酒', '', 'fbaiputao', 'list.php?catid=14', 'g', '1', '1', '0', '11', '0,11', '0', '14', '14', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc01.png', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('15', '16', '红葡萄酒', '', 'fgongputao', 'list.php?catid=15', '', '1', '1', '0', '11', '0,11', '0', '15', '15', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc02.png', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('16', '16', '气泡酒', '', 'fqipaojiu', 'list.php?catid=16', '', '1', '0', '0', '11', '0,11', '0', '16', '16', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc03.png', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('17', '16', '白葡萄酒', '', 'fbbaiputao', 'list.php?catid=17', 'm', '1', '0', '0', '12', '0,12', '0', '17', '17', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc01.png', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('18', '16', '红葡萄酒', '', 'fbgongputao', 'list.php?catid=18', '', '1', '0', '0', '12', '0,12', '0', '18', '18', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc01.png', '', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('19', '16', '气泡酒', '', 'fbqipaojiu', 'list.php?catid=19', '', '1', '0', '0', '12', '0,12', '0', '19', '19', '', '', '', '', '', '', '', '', '/mobile/static/xb//images/proc01.png', '气泡酒', '', '0', '', '', '1');
INSERT INTO `yg_category` VALUES ('25', '16', '法国 雅文邑', '', 'faguoyawenyi', 'list.php?catid=25', 'f', '1', '0', '0', '0', '0', '0', '25', '25', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product04.png', '', '', '0', 'Avon,France', '', '1');
INSERT INTO `yg_category` VALUES ('26', '16', '西班牙', '', 'xibanya', 'list.php?catid=26', 'x', '1', '0', '0', '0', '0', '0', '26', '26', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product05.png', '西班牙', '', '0', 'Spain', '', '1');
INSERT INTO `yg_category` VALUES ('27', '16', '德国', '', 'deguo', 'list.php?catid=27', 'd', '1', '0', '0', '0', '0', '0', '27', '27', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product06.png', '德国', '', '0', 'Germany', '', '1');
INSERT INTO `yg_category` VALUES ('28', '16', '意大利', '', 'yidali', 'list.php?catid=28', 'y', '1', '0', '0', '0', '0', '0', '28', '28', '', '', '', '', '', '', '', '', '/mobile/static/xb/images/index-product07.png', '意大利', '', '0', 'Italy', '', '1');
INSERT INTO `yg_category` VALUES ('31', '27', '关注公众号', '', 'guanzhuwomen', 'list.php?catid=31', 'g', '1', '0', '0', '0', '0', '0', '31', '31', '', '', '', '', '', '', '', '', '', '', '<h2>\r\n	关注公众号\r\n</h2>\r\n<h3>\r\n	香百庭酒业\r\n</h3>\r\n<img class=\"shop-wechat\" src=\"http://xiangbai.com/{DT_MOB}static/xb/images/shop-wechat.gif\" alt=\"\" /> \r\n<p>\r\n	长按识别二维码关注公众号\r\n</p>\r\n<div class=\"txt\">\r\n	<h5>\r\n		你还可以\r\n	</h5>\r\n	<p>\r\n		复制公众号后打开微信，点击“添加朋友”；点击“公众号”搜索公众号 “香百庭酒业” 并点击“关注”\r\n	</p>\r\n</div>', '0', '', '', '1');

-- ----------------------------
-- Table structure for yg_category_option
-- ----------------------------
DROP TABLE IF EXISTS `yg_category_option`;
CREATE TABLE `yg_category_option` (
  `oid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `extend` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类属性';

-- ----------------------------
-- Records of yg_category_option
-- ----------------------------

-- ----------------------------
-- Table structure for yg_category_value
-- ----------------------------
DROP TABLE IF EXISTS `yg_category_value`;
CREATE TABLE `yg_category_value` (
  `oid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  KEY `moduleid` (`moduleid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类属性值';

-- ----------------------------
-- Records of yg_category_value
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat`;
CREATE TABLE `yg_chat` (
  `chatid` varchar(32) NOT NULL,
  `fromuser` varchar(30) NOT NULL,
  `fgettime` int(10) unsigned NOT NULL DEFAULT '0',
  `freadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fnew` int(10) unsigned NOT NULL DEFAULT '0',
  `touser` varchar(30) NOT NULL,
  `tgettime` int(10) unsigned NOT NULL DEFAULT '0',
  `treadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `tnew` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmsg` varchar(255) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `forward` varchar(255) NOT NULL,
  UNIQUE KEY `chatid` (`chatid`),
  KEY `fromuser` (`fromuser`),
  KEY `touser` (`touser`),
  KEY `lasttime` (`lasttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线聊天';

-- ----------------------------
-- Records of yg_chat
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_0
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_0`;
CREATE TABLE `yg_chat_data_0` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_0';

-- ----------------------------
-- Records of yg_chat_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_1
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_1`;
CREATE TABLE `yg_chat_data_1` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_1';

-- ----------------------------
-- Records of yg_chat_data_1
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_2
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_2`;
CREATE TABLE `yg_chat_data_2` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_2';

-- ----------------------------
-- Records of yg_chat_data_2
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_3
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_3`;
CREATE TABLE `yg_chat_data_3` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_3';

-- ----------------------------
-- Records of yg_chat_data_3
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_4
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_4`;
CREATE TABLE `yg_chat_data_4` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_4';

-- ----------------------------
-- Records of yg_chat_data_4
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_5
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_5`;
CREATE TABLE `yg_chat_data_5` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_5';

-- ----------------------------
-- Records of yg_chat_data_5
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_6
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_6`;
CREATE TABLE `yg_chat_data_6` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_6';

-- ----------------------------
-- Records of yg_chat_data_6
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_7
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_7`;
CREATE TABLE `yg_chat_data_7` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_7';

-- ----------------------------
-- Records of yg_chat_data_7
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_8
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_8`;
CREATE TABLE `yg_chat_data_8` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_8';

-- ----------------------------
-- Records of yg_chat_data_8
-- ----------------------------

-- ----------------------------
-- Table structure for yg_chat_data_9
-- ----------------------------
DROP TABLE IF EXISTS `yg_chat_data_9`;
CREATE TABLE `yg_chat_data_9` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_9';

-- ----------------------------
-- Records of yg_chat_data_9
-- ----------------------------

-- ----------------------------
-- Table structure for yg_city
-- ----------------------------
DROP TABLE IF EXISTS `yg_city`;
CREATE TABLE `yg_city` (
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `iparea` mediumtext NOT NULL,
  `domain` varchar(255) NOT NULL DEFAULT '',
  `letter` varchar(4) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `template` varchar(50) NOT NULL DEFAULT '',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `areaid` (`areaid`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市分站';

-- ----------------------------
-- Records of yg_city
-- ----------------------------

-- ----------------------------
-- Table structure for yg_club_18
-- ----------------------------
DROP TABLE IF EXISTS `yg_club_18`;
CREATE TABLE `yg_club_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `video` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ontop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `replyuser` varchar(30) NOT NULL,
  `replyer` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈帖子';

-- ----------------------------
-- Records of yg_club_18
-- ----------------------------

-- ----------------------------
-- Table structure for yg_club_data_18
-- ----------------------------
DROP TABLE IF EXISTS `yg_club_data_18`;
CREATE TABLE `yg_club_data_18` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈帖子内容';

-- ----------------------------
-- Records of yg_club_data_18
-- ----------------------------

-- ----------------------------
-- Table structure for yg_club_fans_18
-- ----------------------------
DROP TABLE IF EXISTS `yg_club_fans_18`;
CREATE TABLE `yg_club_fans_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `reason` mediumtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `gid` (`gid`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈粉丝';

-- ----------------------------
-- Records of yg_club_fans_18
-- ----------------------------

-- ----------------------------
-- Table structure for yg_club_group_18
-- ----------------------------
DROP TABLE IF EXISTS `yg_club_group_18`;
CREATE TABLE `yg_club_group_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `post` int(10) unsigned NOT NULL DEFAULT '0',
  `fans` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `template` varchar(30) NOT NULL,
  `show_template` varchar(30) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `join_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `list_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reason` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈圈子';

-- ----------------------------
-- Records of yg_club_group_18
-- ----------------------------

-- ----------------------------
-- Table structure for yg_club_manage_18
-- ----------------------------
DROP TABLE IF EXISTS `yg_club_manage_18`;
CREATE TABLE `yg_club_manage_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `reason` mediumtext NOT NULL,
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈管理';

-- ----------------------------
-- Records of yg_club_manage_18
-- ----------------------------

-- ----------------------------
-- Table structure for yg_club_reply_18
-- ----------------------------
DROP TABLE IF EXISTS `yg_club_reply_18`;
CREATE TABLE `yg_club_reply_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `tid` (`tid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈回复';

-- ----------------------------
-- Records of yg_club_reply_18
-- ----------------------------

-- ----------------------------
-- Table structure for yg_comment
-- ----------------------------
DROP TABLE IF EXISTS `yg_comment`;
CREATE TABLE `yg_comment` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_mid` smallint(6) NOT NULL DEFAULT '0',
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_username` varchar(30) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quotation` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext NOT NULL,
  `editor` varchar(30) NOT NULL DEFAULT '',
  `replyer` varchar(30) NOT NULL DEFAULT '',
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `against` int(10) unsigned NOT NULL DEFAULT '0',
  `quote` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `item_mid` (`item_mid`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Records of yg_comment
-- ----------------------------

-- ----------------------------
-- Table structure for yg_comment_ban
-- ----------------------------
DROP TABLE IF EXISTS `yg_comment_ban`;
CREATE TABLE `yg_comment_ban` (
  `bid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论禁止';

-- ----------------------------
-- Records of yg_comment_ban
-- ----------------------------

-- ----------------------------
-- Table structure for yg_comment_stat
-- ----------------------------
DROP TABLE IF EXISTS `yg_comment_stat`;
CREATE TABLE `yg_comment_stat` (
  `sid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment` int(10) unsigned NOT NULL DEFAULT '0',
  `star1` int(10) unsigned NOT NULL DEFAULT '0',
  `star2` int(10) unsigned NOT NULL DEFAULT '0',
  `star3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论统计';

-- ----------------------------
-- Records of yg_comment_stat
-- ----------------------------

-- ----------------------------
-- Table structure for yg_company
-- ----------------------------
DROP TABLE IF EXISTS `yg_company`;
CREATE TABLE `yg_company` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validator` varchar(100) NOT NULL DEFAULT '',
  `validtime` int(10) unsigned NOT NULL DEFAULT '0',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `vipt` smallint(2) unsigned NOT NULL DEFAULT '0',
  `vipr` smallint(2) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT '',
  `catid` varchar(100) NOT NULL DEFAULT '',
  `catids` varchar(100) NOT NULL DEFAULT '',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `mode` varchar(100) NOT NULL DEFAULT '',
  `capital` float unsigned NOT NULL DEFAULT '0',
  `regunit` varchar(15) NOT NULL DEFAULT '',
  `size` varchar(100) NOT NULL DEFAULT '',
  `regyear` varchar(4) NOT NULL DEFAULT '',
  `regcity` varchar(30) NOT NULL DEFAULT '',
  `sell` varchar(255) NOT NULL DEFAULT '',
  `buy` varchar(255) NOT NULL DEFAULT '',
  `business` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `gzh` varchar(50) NOT NULL DEFAULT '',
  `gzhqr` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `styletime` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `skin` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `icp` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  KEY `domain` (`domain`),
  KEY `vip` (`vip`),
  KEY `areaid` (`areaid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司';

-- ----------------------------
-- Records of yg_company
-- ----------------------------
INSERT INTO `yg_company` VALUES ('1', 'admin', '1', '网站管理系统', '0', '0', '', '0', '0', '0', '0', '企业单位', '', '', '1', '', '0', '人民币', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '网站管理系统北京', '', '', '', '', 'http://xiangbai.com/com/admin/');
INSERT INTO `yg_company` VALUES ('2', 'uadi', '1', '网站管理员', '0', '0', '', '0', '0', '0', '0', '', '', '', '1', '', '0', '人民币', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '网站管理员北京', '', '', '', '', 'http://xiangbai.com/com/uadi/');
INSERT INTO `yg_company` VALUES ('3', 'test', '10', 'aaaa', '0', '0', '', '1613750400', '0', '0', '0', '其他', ',3,', ',3,', '1', '', '0', '人民币', '', '2001', '', '', '', 'test', '0132131', '', '', '', '', 'test', '', '', '1613750400', '1645372799', '0', '', '', '0', '0', 'aaaa北京test', '', '', '', '', 'http://xiangbai.com/com/test/');

-- ----------------------------
-- Table structure for yg_company_data
-- ----------------------------
DROP TABLE IF EXISTS `yg_company_data`;
CREATE TABLE `yg_company_data` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司内容';

-- ----------------------------
-- Records of yg_company_data
-- ----------------------------
INSERT INTO `yg_company_data` VALUES ('1', '');
INSERT INTO `yg_company_data` VALUES ('2', '&nbsp;');
INSERT INTO `yg_company_data` VALUES ('3', 'adasdadasd');

-- ----------------------------
-- Table structure for yg_company_setting
-- ----------------------------
DROP TABLE IF EXISTS `yg_company_setting`;
CREATE TABLE `yg_company_setting` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_key` varchar(100) NOT NULL DEFAULT '',
  `item_value` text NOT NULL,
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司设置';

-- ----------------------------
-- Records of yg_company_setting
-- ----------------------------

-- ----------------------------
-- Table structure for yg_cron
-- ----------------------------
DROP TABLE IF EXISTS `yg_cron`;
CREATE TABLE `yg_cron` (
  `itemid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `nexttime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `nexttime` (`nexttime`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='计划任务';

-- ----------------------------
-- Records of yg_cron
-- ----------------------------
INSERT INTO `yg_cron` VALUES ('1', '更新在线状态', '1', 'online', '10', '1613978214', '1613978814', '0', '');
INSERT INTO `yg_cron` VALUES ('2', '内容分表创建', '1', 'split', '0,0', '1613978214', '1614009600', '0', '');
INSERT INTO `yg_cron` VALUES ('3', '清理过期文件缓存', '0', 'cache', '30', '1613978214', '1613980014', '0', '');
INSERT INTO `yg_cron` VALUES ('20', '清理过期禁止IP', '0', 'banip', '0,10', '1613978214', '1614010200', '0', '');
INSERT INTO `yg_cron` VALUES ('21', '清理系统临时文件', '0', 'temp', '0,20', '1613978214', '1614010800', '0', '');
INSERT INTO `yg_cron` VALUES ('40', '清理3天前未付款充值记录', '0', 'charge', '1,0', '1613978214', '1614013200', '0', '');
INSERT INTO `yg_cron` VALUES ('41', '清理30天前404日志', '0', '404', '1,10', '1613978214', '1614013800', '0', '');
INSERT INTO `yg_cron` VALUES ('42', '清理30天前登录日志', '0', 'loginlog', '1,20', '1613978214', '1614014400', '0', '');
INSERT INTO `yg_cron` VALUES ('43', '清理30天前管理日志', '0', 'adminlog', '1,30', '1613978214', '1614015000', '0', '');
INSERT INTO `yg_cron` VALUES ('44', '清理30天前站内交谈', '0', 'chat', '1,40', '1613978214', '1614015600', '0', '');
INSERT INTO `yg_cron` VALUES ('60', '清理90天前已读信件', '0', 'message', '2,0', '0', '0', '1', '');
INSERT INTO `yg_cron` VALUES ('61', '清理90天前资金流水', '0', 'money', '2,10', '0', '0', '1', '');
INSERT INTO `yg_cron` VALUES ('62', '清理90天前积分流水', '0', 'credit', '2,20', '0', '0', '1', '');
INSERT INTO `yg_cron` VALUES ('63', '清理90天前短信流水', '0', 'sms', '2,30', '0', '0', '1', '');
INSERT INTO `yg_cron` VALUES ('64', '清理90天前短信记录', '0', 'smssend', '2,40', '0', '0', '1', '');
INSERT INTO `yg_cron` VALUES ('65', '清理90天前邮件记录', '0', 'maillog', '2,50', '0', '0', '1', '');

-- ----------------------------
-- Table structure for yg_favorite
-- ----------------------------
DROP TABLE IF EXISTS `yg_favorite`;
CREATE TABLE `yg_favorite` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商机收藏';

-- ----------------------------
-- Records of yg_favorite
-- ----------------------------
INSERT INTO `yg_favorite` VALUES ('1', '16', '1', '0', '3', '0', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '', 'http://xiangbai.com/file/upload/202102/19/145244181.png.thumb.png', 'http://xiangbai.com/mall/show.php?itemid=1', '', '1613980474');

-- ----------------------------
-- Table structure for yg_fetch
-- ----------------------------
DROP TABLE IF EXISTS `yg_fetch`;
CREATE TABLE `yg_fetch` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `encode` varchar(30) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页采编';

-- ----------------------------
-- Records of yg_fetch
-- ----------------------------

-- ----------------------------
-- Table structure for yg_fields
-- ----------------------------
DROP TABLE IF EXISTS `yg_fields`;
CREATE TABLE `yg_fields` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tb` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `length` smallint(4) unsigned NOT NULL DEFAULT '0',
  `html` varchar(30) NOT NULL DEFAULT '',
  `default_value` text NOT NULL,
  `option_value` text NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `input_limit` varchar(255) NOT NULL DEFAULT '',
  `addition` varchar(255) NOT NULL DEFAULT '',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `tablename` (`tb`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='自定义字段';

-- ----------------------------
-- Records of yg_fields
-- ----------------------------
INSERT INTO `yg_fields` VALUES ('1', 'mall_16', 'yprice', '原价', '', 'varchar', '255', 'text', '', '', '120', '90', '', 'size=\"30\"', '1', '1', '0');
INSERT INTO `yg_fields` VALUES ('4', 'mall_16', 'summary', '简介', '', 'varchar', '255', 'textarea', '', '', '120', '90', '', 'rows=\"5\" cols=\"80\"', '1', '1', '0');
INSERT INTO `yg_fields` VALUES ('5', 'mall_16', 'zhongliang', '重量(kg)', '', 'float', '0', 'text', '', '', '120', '90', '', 'size=\"30\"', '1', '1', '0');
INSERT INTO `yg_fields` VALUES ('6', 'mall_16', 'paixu', '排序', '', 'int', '10', 'text', '0', '', '120', '90', '', 'size=\"30\"', '1', '1', '0');
INSERT INTO `yg_fields` VALUES ('7', 'guestbook', 'ftype', '表单类型', '', 'varchar', '255', 'text', '', '', '120', '90', '', 'size=\"30\"', '1', '1', '0');
INSERT INTO `yg_fields` VALUES ('8', 'guestbook', 'xingming', '姓名', '请输入称呼', 'varchar', '50', 'text', '', '', '120', '90', '1', 'size=\"30\" class=\"chongwugou chongwumao qitachongwu jianyi\"', '1', '1', '4');
INSERT INTO `yg_fields` VALUES ('9', 'guestbook', 'dianhua', '电话', '请输入电话！', 'varchar', '255', 'text', '', '', '120', '90', '[0-9]{1,}', 'size=\"30\" class=\"chongwugou chongwumao qitachongwu jianyi\"', '1', '1', '3');
INSERT INTO `yg_fields` VALUES ('10', 'guestbook', 'neirong', '内容', '请输入内容！', 'varchar', '255', 'textarea', '', '', '120', '90', '1', 'rows=\"5\" cols=\"80\" class=\"chongwugou chongwumao qitachongwu jianyi\"', '1', '1', '1');
INSERT INTO `yg_fields` VALUES ('11', 'guestbook', 'weixin', '微信', '请填写微信号', 'varchar', '255', 'text', '', '', '120', '90', '', 'size=\"30\" class=\"chongwugou chongwumao qitachongwu jianyi\"', '1', '1', '2');
INSERT INTO `yg_fields` VALUES ('12', 'guestbook', 'isdeal', '是否处理', '', 'varchar', '255', 'text', '0', '', '120', '90', '', 'size=\"30\"', '0', '0', '0');
INSERT INTO `yg_fields` VALUES ('13', 'mall_16', 'cprice', '成本价', '', 'varchar', '255', 'text', '', '', '120', '90', '', 'size=\"30\"', '1', '1', '0');

-- ----------------------------
-- Table structure for yg_finance_award
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_award`;
CREATE TABLE `yg_finance_award` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `fee` float unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='打赏记录';

-- ----------------------------
-- Records of yg_finance_award
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_card
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_card`;
CREATE TABLE `yg_finance_card` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值卡';

-- ----------------------------
-- Records of yg_finance_card
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_cash
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_cash`;
CREATE TABLE `yg_finance_cash` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(50) NOT NULL DEFAULT '',
  `banktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `branch` varchar(100) NOT NULL,
  `account` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='申请提现';

-- ----------------------------
-- Records of yg_finance_cash
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_charge
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_charge`;
CREATE TABLE `yg_finance_charge` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(20) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `receivetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线充值';

-- ----------------------------
-- Records of yg_finance_charge
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_coupon
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_coupon`;
CREATE TABLE `yg_finance_coupon` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `seller` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `oid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券';

-- ----------------------------
-- Records of yg_finance_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_credit
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_credit`;
CREATE TABLE `yg_finance_credit` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `amount` int(10) NOT NULL DEFAULT '0',
  `balance` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Records of yg_finance_credit
-- ----------------------------
INSERT INTO `yg_finance_credit` VALUES ('1', 'admin', '1', '1', '1588733676', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('2', 'admin', '2', '3', '1588749734', '宠趣味发布', 'ID:1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('3', 'admin', '2', '5', '1588749762', '宠趣味发布', 'ID:2', 'system');
INSERT INTO `yg_finance_credit` VALUES ('4', 'admin', '2', '7', '1588750173', '宠舍推荐发布', 'ID:1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('5', 'admin', '2', '9', '1588750338', '商城发布', 'ID:1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('6', 'admin', '2', '11', '1589102523', '宠舍推荐发布', 'ID:2', 'system');
INSERT INTO `yg_finance_credit` VALUES ('7', 'admin', '2', '13', '1589102552', '宠舍推荐发布', 'ID:3', 'system');
INSERT INTO `yg_finance_credit` VALUES ('8', 'admin', '2', '15', '1589128852', '商城发布', 'ID:2', 'system');
INSERT INTO `yg_finance_credit` VALUES ('9', 'admin', '1', '16', '1589354709', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('10', 'test', '1', '1', '1589354925', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('11', 'test', '1', '2', '1589524772', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('12', 'admin', '1', '17', '1589783247', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('13', 'admin', '2', '19', '1589871051', '宠趣味发布', 'ID:3', 'system');
INSERT INTO `yg_finance_credit` VALUES ('14', 'admin', '1', '20', '1590055760', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('15', 'admin', '1', '21', '1590110749', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('16', 'admin', '1', '22', '1590993208', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('17', 'test', '1', '3', '1591061516', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('18', 'admin', '1', '23', '1603176628', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('19', 'admin', '1', '24', '1605514838', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('20', 'test', '1', '4', '1605514922', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('21', 'admin', '1', '25', '1606876635', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('22', 'admin', '1', '26', '1607593929', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('23', 'test', '1', '5', '1607670151', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('24', 'test', '1', '6', '1608018879', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('25', 'admin', '1', '27', '1608284170', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('26', 'test', '1', '7', '1608286120', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('27', 'test', '1', '8', '1608712764', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('28', 'test', '1', '9', '1608868026', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('29', 'admin', '1', '28', '1609122822', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('30', 'test', '1', '10', '1609126854', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('31', 'test', '1', '11', '1609126918', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('32', 'test', '1', '12', '1609127205', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('33', 'test', '1', '13', '1609127960', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('34', 'admin', '1', '29', '1613698652', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('35', 'admin', '2', '31', '1613717705', '商城发布', 'ID:3', 'system');
INSERT INTO `yg_finance_credit` VALUES ('36', 'test', '1', '14', '1613734189', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('37', 'test', '1', '15', '1613801110', '登录奖励', '127.0.0.1', 'system');
INSERT INTO `yg_finance_credit` VALUES ('38', 'test', '1', '16', '1613959807', '登录奖励', '127.0.0.1', 'system');

-- ----------------------------
-- Table structure for yg_finance_deposit
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_deposit`;
CREATE TABLE `yg_finance_deposit` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='保证金';

-- ----------------------------
-- Records of yg_finance_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_pay
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_pay`;
CREATE TABLE `yg_finance_pay` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `fee` float unsigned NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录';

-- ----------------------------
-- Records of yg_finance_pay
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_promo
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_promo`;
CREATE TABLE `yg_finance_promo` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠促销';

-- ----------------------------
-- Records of yg_finance_promo
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_record
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_record`;
CREATE TABLE `yg_finance_record` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财务流水';

-- ----------------------------
-- Records of yg_finance_record
-- ----------------------------

-- ----------------------------
-- Table structure for yg_finance_sms
-- ----------------------------
DROP TABLE IF EXISTS `yg_finance_sms`;
CREATE TABLE `yg_finance_sms` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `amount` int(10) NOT NULL DEFAULT '0',
  `balance` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信增减';

-- ----------------------------
-- Records of yg_finance_sms
-- ----------------------------

-- ----------------------------
-- Table structure for yg_form
-- ----------------------------
DROP TABLE IF EXISTS `yg_form`;
CREATE TABLE `yg_form` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `question` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` int(10) unsigned NOT NULL DEFAULT '0',
  `maxanswer` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单';

-- ----------------------------
-- Records of yg_form
-- ----------------------------

-- ----------------------------
-- Table structure for yg_form_answer
-- ----------------------------
DROP TABLE IF EXISTS `yg_form_answer`;
CREATE TABLE `yg_form_answer` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `other` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单回复';

-- ----------------------------
-- Records of yg_form_answer
-- ----------------------------

-- ----------------------------
-- Table structure for yg_form_question
-- ----------------------------
DROP TABLE IF EXISTS `yg_form_question`;
CREATE TABLE `yg_form_question` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `required` varchar(30) NOT NULL,
  `extend` mediumtext NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单选项';

-- ----------------------------
-- Records of yg_form_question
-- ----------------------------

-- ----------------------------
-- Table structure for yg_form_record
-- ----------------------------
DROP TABLE IF EXISTS `yg_form_record`;
CREATE TABLE `yg_form_record` (
  `rid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `item` varchar(100) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单回复记录';

-- ----------------------------
-- Records of yg_form_record
-- ----------------------------

-- ----------------------------
-- Table structure for yg_friend
-- ----------------------------
DROP TABLE IF EXISTS `yg_friend`;
CREATE TABLE `yg_friend` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `career` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的商友';

-- ----------------------------
-- Records of yg_friend
-- ----------------------------

-- ----------------------------
-- Table structure for yg_gift
-- ----------------------------
DROP TABLE IF EXISTS `yg_gift`;
CREATE TABLE `yg_gift` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `maxorder` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分换礼';

-- ----------------------------
-- Records of yg_gift
-- ----------------------------

-- ----------------------------
-- Table structure for yg_gift_order
-- ----------------------------
DROP TABLE IF EXISTS `yg_gift_order`;
CREATE TABLE `yg_gift_order` (
  `oid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`oid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分换礼订单';

-- ----------------------------
-- Records of yg_gift_order
-- ----------------------------

-- ----------------------------
-- Table structure for yg_group_17
-- ----------------------------
DROP TABLE IF EXISTS `yg_group_17`;
CREATE TABLE `yg_group_17` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `marketprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `savemoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` float unsigned NOT NULL DEFAULT '0',
  `minamount` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `logistic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `process` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购';

-- ----------------------------
-- Records of yg_group_17
-- ----------------------------

-- ----------------------------
-- Table structure for yg_group_data_17
-- ----------------------------
DROP TABLE IF EXISTS `yg_group_data_17`;
CREATE TABLE `yg_group_data_17` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购内容';

-- ----------------------------
-- Records of yg_group_data_17
-- ----------------------------

-- ----------------------------
-- Table structure for yg_group_order_17
-- ----------------------------
DROP TABLE IF EXISTS `yg_group_order_17`;
CREATE TABLE `yg_group_order_17` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `logistic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `password` varchar(6) NOT NULL DEFAULT '',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_address` varchar(255) NOT NULL DEFAULT '',
  `buyer_postcode` varchar(10) NOT NULL DEFAULT '',
  `buyer_mobile` varchar(30) NOT NULL DEFAULT '',
  `send_type` varchar(50) NOT NULL DEFAULT '',
  `send_no` varchar(50) NOT NULL DEFAULT '',
  `send_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_time` varchar(20) NOT NULL DEFAULT '',
  `send_days` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` smallint(6) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `buyer_reason` mediumtext NOT NULL,
  `refund_reason` mediumtext NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购订单';

-- ----------------------------
-- Records of yg_group_order_17
-- ----------------------------

-- ----------------------------
-- Table structure for yg_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `yg_guestbook`;
CREATE TABLE `yg_guestbook` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `reply` text NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ftype` varchar(255) NOT NULL,
  `xingming` varchar(50) NOT NULL,
  `dianhua` varchar(255) NOT NULL,
  `neirong` varchar(255) NOT NULL,
  `weixin` varchar(255) NOT NULL,
  `isdeal` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='留言本';

-- ----------------------------
-- Records of yg_guestbook
-- ----------------------------
INSERT INTO `yg_guestbook` VALUES ('13', '0', '[宠物狗需求]trest-esf', 'sfsf', '好的哦哦备注', '0', '', '', '', '', '', '', '', 'test', '127.0.0.1', '1589765959', 'admin', '1589765985', '2', 'chongwugou', 'trest', 'esf', 'sfsf', 'sfsf', '');
INSERT INTO `yg_guestbook` VALUES ('11', '0', 'test-testdh', 'testbn', '', '0', '', '', '', '', '', '', '', 'test', '127.0.0.1', '1589764756', '', '0', '2', 'chongwugou', 'test', 'testdh', 'testbn', 'testwx', '');
INSERT INTO `yg_guestbook` VALUES ('12', '0', 'test-12345678911', 'testsdf', '', '0', '', '', '', '', '', '', '', 'test', '127.0.0.1', '1589765896', '', '0', '2', 'chongwugou', 'test', '12345678911', 'testsdf', 'testxs', '');

-- ----------------------------
-- Table structure for yg_honor
-- ----------------------------
DROP TABLE IF EXISTS `yg_honor`;
CREATE TABLE `yg_honor` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `authority` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='荣誉资质';

-- ----------------------------
-- Records of yg_honor
-- ----------------------------

-- ----------------------------
-- Table structure for yg_keylink
-- ----------------------------
DROP TABLE IF EXISTS `yg_keylink`;
CREATE TABLE `yg_keylink` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `item` varchar(20) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关联链接';

-- ----------------------------
-- Records of yg_keylink
-- ----------------------------

-- ----------------------------
-- Table structure for yg_keyword
-- ----------------------------
DROP TABLE IF EXISTS `yg_keyword`;
CREATE TABLE `yg_keyword` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `word` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `letter` varchar(255) NOT NULL DEFAULT '',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `total_search` int(10) unsigned NOT NULL DEFAULT '0',
  `month_search` int(10) unsigned NOT NULL DEFAULT '0',
  `week_search` int(10) unsigned NOT NULL DEFAULT '0',
  `today_search` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`itemid`),
  KEY `moduleid` (`moduleid`),
  KEY `word` (`word`),
  KEY `letter` (`letter`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关键词';

-- ----------------------------
-- Records of yg_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for yg_know_10
-- ----------------------------
DROP TABLE IF EXISTS `yg_know_10`;
CREATE TABLE `yg_know_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `process` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addition` mediumtext NOT NULL,
  `comment` mediumtext NOT NULL,
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `raise` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `against` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `answer` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `ask` varchar(30) NOT NULL,
  `expert` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道';

-- ----------------------------
-- Records of yg_know_10
-- ----------------------------

-- ----------------------------
-- Table structure for yg_know_answer_10
-- ----------------------------
DROP TABLE IF EXISTS `yg_know_answer_10`;
CREATE TABLE `yg_know_answer_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `vote` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `expert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道回答';

-- ----------------------------
-- Records of yg_know_answer_10
-- ----------------------------

-- ----------------------------
-- Table structure for yg_know_data_10
-- ----------------------------
DROP TABLE IF EXISTS `yg_know_data_10`;
CREATE TABLE `yg_know_data_10` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道内容';

-- ----------------------------
-- Records of yg_know_data_10
-- ----------------------------

-- ----------------------------
-- Table structure for yg_know_expert_10
-- ----------------------------
DROP TABLE IF EXISTS `yg_know_expert_10`;
CREATE TABLE `yg_know_expert_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `major` varchar(255) NOT NULL,
  `ask` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` int(10) unsigned NOT NULL DEFAULT '0',
  `best` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道专家';

-- ----------------------------
-- Records of yg_know_expert_10
-- ----------------------------

-- ----------------------------
-- Table structure for yg_know_vote_10
-- ----------------------------
DROP TABLE IF EXISTS `yg_know_vote_10`;
CREATE TABLE `yg_know_vote_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `aid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道投票';

-- ----------------------------
-- Records of yg_know_vote_10
-- ----------------------------

-- ----------------------------
-- Table structure for yg_link
-- ----------------------------
DROP TABLE IF EXISTS `yg_link`;
CREATE TABLE `yg_link` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of yg_link
-- ----------------------------
INSERT INTO `yg_link` VALUES ('1', '0', '0', '', '', 'http://static.hjli.cn/logo.gif', '网站管理系统', '', '1588559470', 'admin', '1588559470', '0', '1', '3', 'http://www.hjli.cn/');

-- ----------------------------
-- Table structure for yg_login
-- ----------------------------
DROP TABLE IF EXISTS `yg_login`;
CREATE TABLE `yg_login` (
  `logid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `passsalt` varchar(8) NOT NULL,
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(50) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登录日志';

-- ----------------------------
-- Records of yg_login
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mail
-- ----------------------------
DROP TABLE IF EXISTS `yg_mail`;
CREATE TABLE `yg_mail` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件订阅';

-- ----------------------------
-- Records of yg_mail
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mail_list
-- ----------------------------
DROP TABLE IF EXISTS `yg_mail_list`;
CREATE TABLE `yg_mail_list` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `typeids` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订阅列表';

-- ----------------------------
-- Records of yg_mail_list
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mail_log
-- ----------------------------
DROP TABLE IF EXISTS `yg_mail_log`;
CREATE TABLE `yg_mail_log` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='邮件记录';

-- ----------------------------
-- Records of yg_mail_log
-- ----------------------------
INSERT INTO `yg_mail_log` VALUES ('1', '123@qq.com', '欢迎加入U宠家', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202005/07/111034701.png\" style=\"margin:10px 0;border:none;\" alt=\"U宠家 LOGO\" title=\"U宠家\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为U宠家会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>test<br/>\r\n<strong>密码：</strong>123456a<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">U宠家</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '1589102408', '', '0', '3', '');

-- ----------------------------
-- Table structure for yg_mall_16
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_16`;
CREATE TABLE `yg_mall_16` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `mycatid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `step` mediumtext NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` varchar(20) NOT NULL,
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `thumbs` text NOT NULL,
  `relate_name` varchar(100) NOT NULL,
  `relate_id` varchar(255) NOT NULL,
  `relate_title` varchar(100) NOT NULL,
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(255) NOT NULL,
  `v2` varchar(255) NOT NULL,
  `v3` varchar(255) NOT NULL,
  `express_1` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_1` varchar(100) NOT NULL,
  `fee_start_1` decimal(10,2) unsigned NOT NULL,
  `fee_step_1` decimal(10,2) unsigned NOT NULL,
  `express_2` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_2` varchar(100) NOT NULL,
  `fee_start_2` decimal(10,2) unsigned NOT NULL,
  `fee_step_2` decimal(10,2) unsigned NOT NULL,
  `express_3` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_3` varchar(100) NOT NULL,
  `fee_start_3` decimal(10,2) unsigned NOT NULL,
  `fee_step_3` decimal(10,2) unsigned NOT NULL,
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `yprice` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `zhongliang` float NOT NULL,
  `paixu` int(10) NOT NULL,
  `cprice` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商城';

-- ----------------------------
-- Records of yg_mall_16
-- ----------------------------
INSERT INTO `yg_mall_16` VALUES ('1', '14', '0', '1', '1', '0', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '', '0', '', '伯纳天纯', '2000.00', 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:7:\"2000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', '100', '件', '', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒,伯纳天纯,法国 布根地,白葡萄酒', '', '145', '0', '0', '0', 'http://xiangbai.com/file/upload/202102/19/145244181.png.thumb.png', 'http://xiangbai.com/file/upload/202102/19/202033331.png.thumb.png', 'http://xiangbai.com/file/upload/202102/19/202047561.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '0', '包邮', '0.00', '0.00', '0', '', '0.00', '0.00', '0', '', '0.00', '0.00', '0', 'admin', '1', '网站管理系统', '0', '0', '姓名', '', '', '', '', '', '', '', '', 'admin', '1613784021', '2021-02-20', '1588750181', '2020-05-06', '127.0.0.1', '', '3', 'show.php?itemid=1', '', '', '500', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '15', '0', '300');
INSERT INTO `yg_mall_16` VALUES ('2', '17', '0', '1', '1', '0', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '', '0', '', '', '1889.00', 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:7:\"1889.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', '1000', '件', '', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒托勒酒庄波斯特贵腐雷司令甜白葡萄酒,法国 波尔多,白葡萄酒', '', '20', '0', '0', '0', 'http://xiangbai.com/file/upload/202102/19/142831241.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '', '', '0', '包邮', '0.00', '0.00', '0', '', '0.00', '0.00', '0', '', '0.00', '0.00', '0', 'admin', '1', '网站管理系统', '0', '0', '姓名', '', '', '', '', '', '', '', '', 'admin', '1613741327', '2021-02-19', '1589128787', '2020-05-11', '127.0.0.1', '', '3', 'show.php?itemid=2', '', '', '298', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '5', '0', '150');
INSERT INTO `yg_mall_16` VALUES ('3', '15', '0', '1', '0', '0', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '', '0', '', '', '2000.00', 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:7:\"2000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', '100', '件', '', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒,法国 布根地,红葡萄酒', '', '12', '0', '0', '0', 'http://xiangbai.com/file/upload/202102/19/145443691.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '', '', '0', '包邮', '0.00', '0.00', '0', '', '0.00', '0.00', '0', '', '0.00', '0.00', '0', 'admin', '1', '网站管理系统', '0', '0', '姓名', '', '', '', '', '', '', '', '', 'admin', '1613802510', '2021-02-20', '1613717611', '2021-02-19', '127.0.0.1', '', '3', 'show.php?itemid=3', '', '', '500', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', '0.5', '0', '300');

-- ----------------------------
-- Table structure for yg_mall_26
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_26`;
CREATE TABLE `yg_mall_26` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `mycatid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `step` mediumtext NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` varchar(20) NOT NULL,
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `thumbs` text NOT NULL,
  `relate_name` varchar(100) NOT NULL,
  `relate_id` varchar(255) NOT NULL,
  `relate_title` varchar(100) NOT NULL,
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(255) NOT NULL,
  `v2` varchar(255) NOT NULL,
  `v3` varchar(255) NOT NULL,
  `express_1` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_1` varchar(100) NOT NULL,
  `fee_start_1` decimal(10,2) unsigned NOT NULL,
  `fee_step_1` decimal(10,2) unsigned NOT NULL,
  `express_2` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_2` varchar(100) NOT NULL,
  `fee_start_2` decimal(10,2) unsigned NOT NULL,
  `fee_step_2` decimal(10,2) unsigned NOT NULL,
  `express_3` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_3` varchar(100) NOT NULL,
  `fee_start_3` decimal(10,2) unsigned NOT NULL,
  `fee_step_3` decimal(10,2) unsigned NOT NULL,
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='美器';

-- ----------------------------
-- Records of yg_mall_26
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mall_comment_16
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_comment_16`;
CREATE TABLE `yg_mall_comment_16` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `buyer_comment` text NOT NULL,
  `buyer_ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_reply` text NOT NULL,
  `buyer_rtime` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seller_comment` text NOT NULL,
  `seller_ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_reply` text NOT NULL,
  `seller_rtime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `itemid` (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单评论';

-- ----------------------------
-- Records of yg_mall_comment_16
-- ----------------------------
INSERT INTO `yg_mall_comment_16` VALUES ('1', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('2', '2', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('3', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('4', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('5', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('6', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('7', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('8', '2', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('9', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('10', '2', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('11', '2', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('12', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('13', '2', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('14', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('15', '2', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('16', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('17', '3', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('18', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('19', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('20', '3', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');
INSERT INTO `yg_mall_comment_16` VALUES ('21', '1', 'test', 'admin', '0', '', '0', '', '0', '0', '', '0', '', '0');

-- ----------------------------
-- Table structure for yg_mall_comment_26
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_comment_26`;
CREATE TABLE `yg_mall_comment_26` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `buyer_comment` text NOT NULL,
  `buyer_ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_reply` text NOT NULL,
  `buyer_rtime` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seller_comment` text NOT NULL,
  `seller_ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_reply` text NOT NULL,
  `seller_rtime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `itemid` (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单评论';

-- ----------------------------
-- Records of yg_mall_comment_26
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mall_data_16
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_data_16`;
CREATE TABLE `yg_mall_data_16` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城内容';

-- ----------------------------
-- Records of yg_mall_data_16
-- ----------------------------
INSERT INTO `yg_mall_data_16` VALUES ('1', '<img src=\"http://xiangbai.com/mobile/static/xb/images/product-show04.png\" alt=\"\" /> \r\n<h2>\r\n	产品信息\r\n</h2>\r\n<div class=\"ps-info clearfix\">\r\n	<div class=\"col-xs-3\">\r\n		<div class=\"box\">\r\n			<i class=\"ico<em></em>nfont icon-iconlocation\"></i> \r\n			<div class=\"txt\">\r\n				<p>\r\n					产区\r\n				</p>\r\n<i class=\"ico<em></em>nfont icon-dian\"></i> \r\n				<p>\r\n					勃艮第\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-xs-3\">\r\n		<div class=\"box\">\r\n			<i class=\"ico<em></em>nfont icon-putao\"></i> \r\n			<div class=\"txt\">\r\n				<p>\r\n					品种\r\n				</p>\r\n<i class=\"ico<em></em>nfont icon-dian\"></i> \r\n				<p>\r\n					霞多丽\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-xs-3\">\r\n		<div class=\"box\">\r\n			<i class=\"ico<em></em>nfont icon-KeyLikes\"></i> \r\n			<div class=\"txt\">\r\n				<p>\r\n					评分\r\n				</p>\r\n<i class=\"ico<em></em>nfont icon-dian\"></i> \r\n				<p>\r\n					WK91分\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-xs-3\">\r\n		<div class=\"box\">\r\n			<i class=\"ico<em></em>nfont icon-guigexuanze\"></i> \r\n			<div class=\"txt\">\r\n				<p>\r\n					规格\r\n				</p>\r\n<i class=\"ico<em></em>nfont icon-dian\"></i> \r\n				<p>\r\n					750ml\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<h2>\r\n	产品特色\r\n</h2>\r\n<p>\r\n	这款2018年的Chablis Terroir de\r\n                    Chablis)产自Montmains附近的两块朝北的地块——更确切地说，距离Forest仅50米。它是这款酒的亮点之一，从酒杯中飘出柠檬油、牡蛎壳、烟熏和青苹果的味道。口感适中至醇厚，光滑而层次感强，回味细腻，富含矿物。\r\n</p>\r\n<img src=\"http://xiangbai.com/mobile/static/xb/images/product-show05.png\" alt=\"\" /> \r\n<h2>\r\n	酒店故事\r\n</h2>\r\n<p>\r\n	这位广受酒评家盛赞的夏布利酿酒师其实是位不折不扣的加拿大魁北克人。18岁那年，他偶遇Marc Chapoutier，从此结下了与葡萄酒的缘分。他周游各国葡萄酒产区，并在全世界多家酒庄工作。\r\n</p>\r\n<img src=\"http://xiangbai.com/mobile/static/xb/images/product-show06.png\" alt=\"\" /> \r\n<p>\r\n	2000年的采收季，他来到勃艮第Puligny-Montrachet，开始在Olivier Leflaive酒庄进行实习。Olivier\r\n                    Leflaive很快发现了这个小伙子的天赋和才能，正巧他正准备在夏布利建立酒商公司，便将酿酒师的重任交给了Patrick。在Leflaive工作了3年后，Patrick辗转Domaine\r\n                    Verget、Domaine Jean-Marc Brocard，并终于在2008年创立了自己的酒商公司，开始独立酿酒。\r\n</p>\r\n<img src=\"http://xiangbai.com/mobile/static/xb/images/product-show07.png\" alt=\"\" /> <img src=\"http://xiangbai.com/mobile/static/xb/images/product-show08.png\" alt=\"\" />');
INSERT INTO `yg_mall_data_16` VALUES ('2', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒托勒酒庄波斯特贵腐雷司令甜白葡萄酒');
INSERT INTO `yg_mall_data_16` VALUES ('3', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒');

-- ----------------------------
-- Table structure for yg_mall_data_26
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_data_26`;
CREATE TABLE `yg_mall_data_26` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='美器内容';

-- ----------------------------
-- Records of yg_mall_data_26
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mall_express_16
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_express_16`;
CREATE TABLE `yg_mall_express_16` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `express` varchar(30) NOT NULL,
  `fee_start` decimal(10,2) unsigned NOT NULL,
  `fee_step` decimal(10,2) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='运费模板';

-- ----------------------------
-- Records of yg_mall_express_16
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mall_express_26
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_express_26`;
CREATE TABLE `yg_mall_express_26` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `express` varchar(30) NOT NULL,
  `fee_start` decimal(10,2) unsigned NOT NULL,
  `fee_step` decimal(10,2) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='运费模板';

-- ----------------------------
-- Records of yg_mall_express_26
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mall_stat_16
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_stat_16`;
CREATE TABLE `yg_mall_stat_16` (
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `scomment` int(10) unsigned NOT NULL DEFAULT '0',
  `s1` int(10) unsigned NOT NULL DEFAULT '0',
  `s2` int(10) unsigned NOT NULL DEFAULT '0',
  `s3` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `bcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `b1` int(10) unsigned NOT NULL DEFAULT '0',
  `b2` int(10) unsigned NOT NULL DEFAULT '0',
  `b3` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mallid` (`mallid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评分统计';

-- ----------------------------
-- Records of yg_mall_stat_16
-- ----------------------------
INSERT INTO `yg_mall_stat_16` VALUES ('1', 'admin', '0', '0', '0', '0', 'test', '0', '0', '0', '0');
INSERT INTO `yg_mall_stat_16` VALUES ('2', 'admin', '0', '0', '0', '0', 'test', '0', '0', '0', '0');
INSERT INTO `yg_mall_stat_16` VALUES ('3', 'admin', '0', '0', '0', '0', 'test', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for yg_mall_stat_26
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_stat_26`;
CREATE TABLE `yg_mall_stat_26` (
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `scomment` int(10) unsigned NOT NULL DEFAULT '0',
  `s1` int(10) unsigned NOT NULL DEFAULT '0',
  `s2` int(10) unsigned NOT NULL DEFAULT '0',
  `s3` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `bcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `b1` int(10) unsigned NOT NULL DEFAULT '0',
  `b2` int(10) unsigned NOT NULL DEFAULT '0',
  `b3` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mallid` (`mallid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评分统计';

-- ----------------------------
-- Records of yg_mall_stat_26
-- ----------------------------

-- ----------------------------
-- Table structure for yg_mall_view_16
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_view_16`;
CREATE TABLE `yg_mall_view_16` (
  `uid` varchar(50) NOT NULL,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `uid` (`uid`),
  KEY `username` (`username`),
  KEY `lasttime` (`lasttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='浏览历史';

-- ----------------------------
-- Records of yg_mall_view_16
-- ----------------------------
INSERT INTO `yg_mall_view_16` VALUES ('test|1', '1', 'test', 'admin', '1613981225');
INSERT INTO `yg_mall_view_16` VALUES ('test|2', '2', 'test', 'admin', '1609231495');
INSERT INTO `yg_mall_view_16` VALUES ('test|3', '3', 'test', 'admin', '1613961282');

-- ----------------------------
-- Table structure for yg_mall_view_26
-- ----------------------------
DROP TABLE IF EXISTS `yg_mall_view_26`;
CREATE TABLE `yg_mall_view_26` (
  `uid` varchar(50) NOT NULL,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `uid` (`uid`),
  KEY `username` (`username`),
  KEY `lasttime` (`lasttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='浏览历史';

-- ----------------------------
-- Records of yg_mall_view_26
-- ----------------------------

-- ----------------------------
-- Table structure for yg_member
-- ----------------------------
DROP TABLE IF EXISTS `yg_member`;
CREATE TABLE `yg_member` (
  `userid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `passsalt` varchar(8) NOT NULL,
  `payword` varchar(32) NOT NULL DEFAULT '',
  `paysalt` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `message` smallint(6) unsigned NOT NULL DEFAULT '0',
  `chat` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sound` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `avatar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `wxqr` varchar(255) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `department` varchar(30) NOT NULL DEFAULT '',
  `career` varchar(30) NOT NULL DEFAULT '',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `role` varchar(255) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '4',
  `regid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `sms` int(10) NOT NULL DEFAULT '0',
  `credit` int(10) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deposit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(50) NOT NULL DEFAULT '',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(50) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `logintimes` int(10) unsigned NOT NULL DEFAULT '1',
  `send` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `vemail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vmobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vtruename` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vbank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vcompany` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vtrade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `trade` varchar(50) NOT NULL DEFAULT '',
  `support` varchar(50) NOT NULL DEFAULT '',
  `inviter` varchar(30) NOT NULL DEFAULT '',
  `note` text NOT NULL,
  `sjuserid` bigint(20) NOT NULL DEFAULT '0' COMMENT '上级id',
  `sjcode` varchar(50) NOT NULL COMMENT '上级邀请码',
  `vsjcode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定上级邀请码;1是，0否',
  `yqcode` varchar(50) NOT NULL COMMENT '个人邀请码',
  `yjprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `passport` (`passport`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Records of yg_member
-- ----------------------------
INSERT INTO `yg_member` VALUES ('1', 'admin', 'admin', '网站管理系统', '25eae754bc11f6a455596f1b788e86a9', 'HQjwDcuF', '756b7eb73d3899b6e9a1a536d3f550d1', 'Tt1Z7ft8', 'mail@yourdomain.com', '15', '0', '0', '0', '1', '1', '姓名', '', '', '', '', '', '', '', '', '1', '', '0', '1', '6', '1', '0', '31', '0.00', '0.00', '1445261241', '127.0.0.1', '1588559470', '127.0.0.1', '1613698652', '15', '1', '1', '1', '1', '0', '0', '0', '', '', '', '', '0', '', '0', '160869000516', '0.00');
INSERT INTO `yg_member` VALUES ('2', 'uadi', '网站管理员', '网站管理员', 'dc2d35a1b9bce7396c700df872329612', 'Xulhkch3', 'b6f92846250e11ead5611dd7df41efa6', 'Bpv3Gkh0', '3571455127@qq.com', '1', '0', '1', '1', '0', '1', 'yang', '', '', '', '', '', '', '', '', '2', '网站管理员', '0', '1', '5', '1', '0', '0', '0.00', '0.00', '1588747148', '127.0.0.1', '1588747092', '127.0.0.1', '1588747458', '2', '1', '0', '0', '0', '0', '0', '0', '', '', 'uadi', '', '0', '', '0', '', '0.00');
INSERT INTO `yg_member` VALUES ('3', 'test', 'test', 'aaaa', '848b40f1d802fc0f7ae30c170ef021c7', 'OfhFSgtn', '25b28df30818e2773850b53edc5e8c85', 'v0WSfcb9', '123@qq.com', '1', '0', '1', '1', '0', '1', 'aaaa', '', '', '', '', '', '', '', '', '0', '', '0', '10', '5', '1', '0', '16', '0.00', '0.00', '1613816406', '127.0.0.1', '1589102408', '127.0.0.1', '1613959807', '22', '1', '0', '0', '0', '0', '0', '0', '', '', 'test', '', '0', '', '0', '16138128172', '0.00');

-- ----------------------------
-- Table structure for yg_member_check
-- ----------------------------
DROP TABLE IF EXISTS `yg_member_check`;
CREATE TABLE `yg_member_check` (
  `userid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员资料审核';

-- ----------------------------
-- Records of yg_member_check
-- ----------------------------

-- ----------------------------
-- Table structure for yg_member_group
-- ----------------------------
DROP TABLE IF EXISTS `yg_member_group`;
CREATE TABLE `yg_member_group` (
  `groupid` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `salesprice` smallint(4) unsigned NOT NULL DEFAULT '0' COMMENT '会员折扣',
  `level` smallint(2) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='会员组';

-- ----------------------------
-- Records of yg_member_group
-- ----------------------------
INSERT INTO `yg_member_group` VALUES ('1', '管理员', '0', '1', '0', '0');
INSERT INTO `yg_member_group` VALUES ('2', '禁止访问', '0', '2', '0', '0');
INSERT INTO `yg_member_group` VALUES ('3', '游客', '0', '3', '0', '0');
INSERT INTO `yg_member_group` VALUES ('4', '待审核会员', '0', '4', '0', '0');
INSERT INTO `yg_member_group` VALUES ('5', '个人会员', '0', '5', '100', '0');
INSERT INTO `yg_member_group` VALUES ('6', '企业会员', '0', '6', '0', '0');
INSERT INTO `yg_member_group` VALUES ('7', 'vip企业会员', '1', '7', '10', '0');
INSERT INTO `yg_member_group` VALUES ('8', '网站管理员', '0', '8', '0', '0');
INSERT INTO `yg_member_group` VALUES ('9', '1级业务员', '0', '9', '10', '1');
INSERT INTO `yg_member_group` VALUES ('10', '2级业务员', '0', '10', '20', '2');

-- ----------------------------
-- Table structure for yg_member_misc
-- ----------------------------
DROP TABLE IF EXISTS `yg_member_misc`;
CREATE TABLE `yg_member_misc` (
  `userid` bigint(20) unsigned NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(30) NOT NULL DEFAULT '',
  `banktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `branch` varchar(100) NOT NULL,
  `account` varchar(30) NOT NULL DEFAULT '',
  `reply` text NOT NULL,
  `black` text NOT NULL,
  `send` tinyint(1) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员杂项';

-- ----------------------------
-- Records of yg_member_misc
-- ----------------------------
INSERT INTO `yg_member_misc` VALUES ('1', 'admin', '', '0', '', '', '', '', '1');
INSERT INTO `yg_member_misc` VALUES ('2', 'uadi', '', '0', '', '', '', '', '1');
INSERT INTO `yg_member_misc` VALUES ('3', 'test', '', '0', '', '', '', '', '1');

-- ----------------------------
-- Table structure for yg_message
-- ----------------------------
DROP TABLE IF EXISTS `yg_message`;
CREATE TABLE `yg_message` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `fromuser` varchar(30) NOT NULL DEFAULT '',
  `touser` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `isread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `feedback` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `groupids` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `touser` (`touser`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='站内信件';

-- ----------------------------
-- Records of yg_message
-- ----------------------------
INSERT INTO `yg_message` VALUES ('1', '欢迎加入网站管理系统', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"网站管理系统 LOGO\" title=\"网站管理系统\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为网站管理系统会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>uadi<br/>\r\n<strong>密码：</strong>uadi#321<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">网站管理系统</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '', 'uadi', '1588747092', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('2', '欢迎加入U宠家', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202005/07/111034701.png\" style=\"margin:10px 0;border:none;\" alt=\"U宠家 LOGO\" title=\"U宠家\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为U宠家会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>test<br/>\r\n<strong>密码：</strong>123456a<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">U宠家</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '', 'test', '1589102408', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('3', '站内交易提醒，您有一笔交易需要确认(T1)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-23</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>伯纳天纯</strong></a><br/>订单编号：<span class=\"f_red\">T1</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">400元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=1\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1608712807', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('4', '站内交易提醒，您有一笔交易需要确认(T2)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-23</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=2\" target=\"_blank\" class=\"t\"><strong>里兜三文鱼成年幼猫</strong></a><br/>订单编号：<span class=\"f_red\">T2</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">268元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=2\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1608713912', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('5', '站内交易提醒，您有一笔交易需要确认(T3)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-23</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>伯纳天纯</strong></a><br/>订单编号：<span class=\"f_red\">T3</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">400元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=3\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1608713951', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('6', '站内交易提醒，您有一笔交易需要确认(T4)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-23</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>伯纳天纯</strong></a><br/>订单编号：<span class=\"f_red\">T4</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">400元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=4\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1608714222', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('7', '站内交易提醒，您有一笔交易需要确认(T5)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-28</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>伯纳天纯</strong></a><br/>订单编号：<span class=\"f_red\">T5</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">400元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=5\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609147770', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('8', '站内交易提醒，您有一笔交易需要确认(T6)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-28</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>伯纳天纯</strong></a><br/>订单编号：<span class=\"f_red\">T6</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">200元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=6\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609148259', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('9', '站内交易提醒，您有一笔交易需要确认(T7)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-28</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>伯纳天纯</strong></a><br/>订单编号：<span class=\"f_red\">T7</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">200元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=7\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609151313', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('10', '站内交易提醒，您有一笔交易需要确认(T8)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-29</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=2\" target=\"_blank\" class=\"t\"><strong>里兜三文鱼成年幼猫</strong></a><br/>订单编号：<span class=\"f_red\">T8</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">134元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=8\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609208645', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('11', '站内交易提醒，您有一笔交易需要确认(T10)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-29</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=2\" target=\"_blank\" class=\"t\"><strong>里兜三文鱼成年幼猫</strong></a><br/>订单编号：<span class=\"f_red\">T10</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">268元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=10\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609210923', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('12', '站内交易提醒，您有一笔交易需要确认(T11)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-29</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=2\" target=\"_blank\" class=\"t\"><strong>里兜三文鱼成年幼猫</strong></a><br/>订单编号：<span class=\"f_red\">T11</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">268元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=11\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609225422', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('13', '站内交易提醒，您有一笔交易需要确认(T13)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-29</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=2\" target=\"_blank\" class=\"t\"><strong>里兜三文鱼成年幼猫</strong></a><br/>订单编号：<span class=\"f_red\">T13</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">134元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=13\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609231459', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('14', '站内交易提醒，您有一笔交易需要确认(T15)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202012/23/154212401.png\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2020-12-29</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=2\" target=\"_blank\" class=\"t\"><strong>里兜三文鱼成年幼猫</strong></a><br/>订单编号：<span class=\"f_red\">T15</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">134元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=15\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1609231522', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('15', '站内交易提醒，您有一笔交易需要确认(T17)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202102/19/152413811.jpg\" style=\"margin:10px 0;border:none;\" alt=\"百香庭酒业 LOGO\" title=\"百香庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2021-02-20</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=3\" target=\"_blank\" class=\"t\"><strong>托勒酒庄波斯特贵腐雷司令甜白葡萄酒</strong></a><br/>订单编号：<span class=\"f_red\">T17</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">1000元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=17\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">百香庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1613808879', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('16', '站内交易提醒，您有一笔交易需要确认(T19)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202102/19/152413811.jpg\" style=\"margin:10px 0;border:none;\" alt=\"香百庭酒业 LOGO\" title=\"香百庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2021-02-22</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>托勒酒庄波斯特贵腐雷司令甜白葡萄酒</strong></a><br/>订单编号：<span class=\"f_red\">T19</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">400元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=19\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">香百庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1613981141', '127.0.0.1', '0', '0', '0', '3', '');
INSERT INTO `yg_message` VALUES ('17', '站内交易提醒，您有一笔交易需要确认(T21)', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://xiangbai.com/\" target=\"_blank\"><img src=\"http://xiangbai.com/file/upload/202102/19/152413811.jpg\" style=\"margin:10px 0;border:none;\" alt=\"香百庭酒业 LOGO\" title=\"香百庭酒业\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\nHi, admin：<br/>\r\n<a href=\"http://xiangbai.com/com/test/\" class=\"t\">test</a> 于 <span class=\"f_gray\">2021-02-22</span> 向您订购了：<br/><a href=\"http://xiangbai.com/mall/show.php?itemid=1\" target=\"_blank\" class=\"t\"><strong>托勒酒庄波斯特贵腐雷司令甜白葡萄酒</strong></a><br/>订单编号：<span class=\"f_red\">T21</span> &nbsp;订单金额为：<span class=\"f_blue f_b\">400元</span><br/><a href=\"http://xiangbai.com/member/trade.php?itemid=21\" class=\"t\" target=\"_blank\">&raquo; 请点这里立即处理或查看详情</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此信件系<a href=\"http://xiangbai.com/\" target=\"_blank\" style=\"color:#005590;\">香百庭酒业</a>系统信使自动发送，请勿直接回复\r\n</td>\r\n</tr>\r\n</table>', '', 'admin', '1613981230', '127.0.0.1', '0', '0', '0', '3', '');

-- ----------------------------
-- Table structure for yg_module
-- ----------------------------
DROP TABLE IF EXISTS `yg_module`;
CREATE TABLE `yg_module` (
  `moduleid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `moduledir` varchar(20) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `installtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='模型';

-- ----------------------------
-- Records of yg_module
-- ----------------------------
INSERT INTO `yg_module` VALUES ('1', 'destoon', '核心', '', '', '', 'http://xiangbai.com/', '', '1', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('2', 'member', '会员', 'member', '', '', 'http://xiangbai.com/member/', '', '2', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('3', 'extend', '扩展', 'extend', '', '', 'http://xiangbai.com/extend/', '', '0', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('4', 'company', '公司', 'company', '', '', 'http://xiangbai.com/company/', '', '10', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('10', 'know', '知道', 'know', '', '', 'http://xiangbai.com/know/', '', '15', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('12', 'photo', '图库', 'photo', '', '', 'http://xiangbai.com/photo/', '', '17', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('14', 'video', '视频', 'video', '', '', 'http://xiangbai.com/video/', '', '18', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('16', 'mall', '香百庭美酒', 'mall', '', '', 'http://xiangbai.com/mall/', '', '8', '0', '1', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('17', 'group', '团购', 'group', '', '', 'http://xiangbai.com/group/', '', '11', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('18', 'club', '商圈', 'club', '', '', 'http://xiangbai.com/club/', '', '20', '0', '0', '0', '0', '0', '1588559470');
INSERT INTO `yg_module` VALUES ('27', 'article', '关于我们', 'aboutus', '', '', 'http://xiangbai.com/aboutus/', '', '27', '0', '0', '0', '0', '0', '1613741577');
INSERT INTO `yg_module` VALUES ('26', 'mall', '美器', 'meiqi', '', '', 'http://xiangbai.com/meiqi/', '', '9', '0', '1', '0', '0', '0', '1613714271');

-- ----------------------------
-- Table structure for yg_news
-- ----------------------------
DROP TABLE IF EXISTS `yg_news`;
CREATE TABLE `yg_news` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司新闻';

-- ----------------------------
-- Records of yg_news
-- ----------------------------

-- ----------------------------
-- Table structure for yg_news_data
-- ----------------------------
DROP TABLE IF EXISTS `yg_news_data`;
CREATE TABLE `yg_news_data` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司新闻内容';

-- ----------------------------
-- Records of yg_news_data
-- ----------------------------

-- ----------------------------
-- Table structure for yg_oauth
-- ----------------------------
DROP TABLE IF EXISTS `yg_oauth`;
CREATE TABLE `yg_oauth` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logintimes` int(10) unsigned NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `site` (`site`,`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='一键登录';

-- ----------------------------
-- Records of yg_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for yg_online
-- ----------------------------
DROP TABLE IF EXISTS `yg_online`;
CREATE TABLE `yg_online` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线会员';

-- ----------------------------
-- Records of yg_online
-- ----------------------------
INSERT INTO `yg_online` VALUES ('3', 'test', '127.0.0.1', '1', '1', '1613984973');

-- ----------------------------
-- Table structure for yg_order
-- ----------------------------
DROP TABLE IF EXISTS `yg_order`;
CREATE TABLE `yg_order` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '16',
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_address` varchar(255) NOT NULL DEFAULT '',
  `buyer_postcode` varchar(10) NOT NULL DEFAULT '',
  `buyer_mobile` varchar(30) NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seller_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_type` varchar(50) NOT NULL DEFAULT '',
  `send_no` varchar(50) NOT NULL DEFAULT '',
  `send_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_time` varchar(20) NOT NULL DEFAULT '',
  `send_days` int(10) unsigned NOT NULL DEFAULT '0',
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(50) NOT NULL DEFAULT '',
  `add_time` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `buyer_reason` mediumtext NOT NULL,
  `refund_reason` mediumtext NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sjuserid` int(10) NOT NULL DEFAULT '0' COMMENT '上级会员id',
  PRIMARY KEY (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of yg_order
-- ----------------------------
INSERT INTO `yg_order` VALUES ('21', '16', '1', '0', '0', 'test', 'admin', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', 'http://xiangbai.com/file/upload/202102/19/145244181.png.thumb.png', '2000.00', '1', '400.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1613981230', '1613981230', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('9', '16', '1', '8', '0', 'test', 'admin', '伯纳天纯', 'http://xiangbai.com/file/upload/202005/15/104011211.png.thumb.png', '400.00', '2', '400.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1609208645', '1609208645', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('20', '16', '3', '19', '0', 'test', 'admin', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', 'http://xiangbai.com/file/upload/202102/19/145443691.png.thumb.png', '2000.00', '1', '400.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1613981141', '1613981141', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('19', '16', '1', '0', '0', 'test', 'admin', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', 'http://xiangbai.com/file/upload/202102/19/145244181.png.thumb.png', '2000.00', '1', '800.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1613981141', '1613981141', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('12', '16', '1', '11', '0', 'test', 'admin', '伯纳天纯', 'http://xiangbai.com/file/upload/202005/15/104011211.png.thumb.png', '400.00', '1', '200.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1609225422', '1609225422', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('18', '16', '1', '17', '0', 'test', 'admin', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', 'http://xiangbai.com/file/upload/202102/19/145244181.png.thumb.png', '2000.00', '1', '1000.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1613808879', '1613808879', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('14', '16', '1', '13', '0', 'test', 'admin', '伯纳天纯', 'http://xiangbai.com/file/upload/202005/15/104011211.png.thumb.png', '400.00', '2', '400.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1609231459', '1609231459', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('17', '16', '3', '0', '0', 'test', 'admin', '托勒酒庄波斯特贵腐雷司令甜白葡萄酒', 'http://xiangbai.com/file/upload/202102/19/145443691.png.thumb.png', '2000.00', '1', '2000.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1613808879', '1613808879', '', '', '', '|', '1', '0');
INSERT INTO `yg_order` VALUES ('16', '16', '1', '15', '0', 'test', 'admin', '伯纳天纯', 'http://xiangbai.com/file/upload/202005/15/104011211.png.thumb.png', '400.00', '2', '400.00', '0.00', '0.00', '', 'test', '北京tssfsfsesfes', '111111', '18620589091', '0', '0', '', '', '0', '', '0', '0', '', '0', '1609231522', '1609231522', '', '', '', '|', '1', '0');

-- ----------------------------
-- Table structure for yg_page
-- ----------------------------
DROP TABLE IF EXISTS `yg_page`;
CREATE TABLE `yg_page` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司单页';

-- ----------------------------
-- Records of yg_page
-- ----------------------------

-- ----------------------------
-- Table structure for yg_page_data
-- ----------------------------
DROP TABLE IF EXISTS `yg_page_data`;
CREATE TABLE `yg_page_data` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司单页内容';

-- ----------------------------
-- Records of yg_page_data
-- ----------------------------

-- ----------------------------
-- Table structure for yg_photo_12
-- ----------------------------
DROP TABLE IF EXISTS `yg_photo_12`;
CREATE TABLE `yg_photo_12` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `password` varchar(30) NOT NULL DEFAULT '',
  `question` varchar(30) NOT NULL DEFAULT '',
  `answer` varchar(30) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库';

-- ----------------------------
-- Records of yg_photo_12
-- ----------------------------

-- ----------------------------
-- Table structure for yg_photo_data_12
-- ----------------------------
DROP TABLE IF EXISTS `yg_photo_data_12`;
CREATE TABLE `yg_photo_data_12` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库内容';

-- ----------------------------
-- Records of yg_photo_data_12
-- ----------------------------

-- ----------------------------
-- Table structure for yg_photo_item_12
-- ----------------------------
DROP TABLE IF EXISTS `yg_photo_item_12`;
CREATE TABLE `yg_photo_item_12` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item` bigint(20) unsigned NOT NULL DEFAULT '0',
  `introduce` text NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `listorder` (`listorder`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库图片';

-- ----------------------------
-- Records of yg_photo_item_12
-- ----------------------------

-- ----------------------------
-- Table structure for yg_poll
-- ----------------------------
DROP TABLE IF EXISTS `yg_poll`;
CREATE TABLE `yg_poll` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_max` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_page` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_cols` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_order` smallint(6) unsigned NOT NULL DEFAULT '0',
  `polls` int(10) unsigned NOT NULL DEFAULT '0',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `template_poll` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选';

-- ----------------------------
-- Records of yg_poll
-- ----------------------------

-- ----------------------------
-- Table structure for yg_poll_item
-- ----------------------------
DROP TABLE IF EXISTS `yg_poll_item`;
CREATE TABLE `yg_poll_item` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pollid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `polls` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `pollid` (`pollid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选选项';

-- ----------------------------
-- Records of yg_poll_item
-- ----------------------------

-- ----------------------------
-- Table structure for yg_poll_record
-- ----------------------------
DROP TABLE IF EXISTS `yg_poll_record`;
CREATE TABLE `yg_poll_record` (
  `rid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pollid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `polltime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选记录';

-- ----------------------------
-- Records of yg_poll_record
-- ----------------------------

-- ----------------------------
-- Table structure for yg_question
-- ----------------------------
DROP TABLE IF EXISTS `yg_question`;
CREATE TABLE `yg_question` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='验证问题';

-- ----------------------------
-- Records of yg_question
-- ----------------------------
INSERT INTO `yg_question` VALUES ('1', '5+6=?', '11');
INSERT INTO `yg_question` VALUES ('2', '7+8=?', '15');
INSERT INTO `yg_question` VALUES ('3', '11*11=?', '121');
INSERT INTO `yg_question` VALUES ('4', '12-5=?', '7');
INSERT INTO `yg_question` VALUES ('5', '21-9=?', '12');

-- ----------------------------
-- Table structure for yg_session
-- ----------------------------
DROP TABLE IF EXISTS `yg_session`;
CREATE TABLE `yg_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sessionid` (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION';

-- ----------------------------
-- Records of yg_session
-- ----------------------------

-- ----------------------------
-- Table structure for yg_setting
-- ----------------------------
DROP TABLE IF EXISTS `yg_setting`;
CREATE TABLE `yg_setting` (
  `item` varchar(30) NOT NULL DEFAULT '',
  `item_key` varchar(100) NOT NULL DEFAULT '',
  `item_value` text NOT NULL,
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站设置';

-- ----------------------------
-- Records of yg_setting
-- ----------------------------
INSERT INTO `yg_setting` VALUES ('16', 'limit_8', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'edit_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'refresh_limit', '3600');
INSERT INTO `yg_setting` VALUES ('group-9', 'day_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-9', 'hour_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-9', 'add_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'delete', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'vemail', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('1', 'check_week', '');
INSERT INTO `yg_setting` VALUES ('1', 'admin_week', '');
INSERT INTO `yg_setting` VALUES ('1', 'trade_pw', '');
INSERT INTO `yg_setting` VALUES ('1', 'setsales_day', '0');
INSERT INTO `yg_setting` VALUES ('1', 'setsales_three', '1');
INSERT INTO `yg_setting` VALUES ('1', 'setsales_two', '5');
INSERT INTO `yg_setting` VALUES ('1', 'setsales_one', '10');
INSERT INTO `yg_setting` VALUES ('1', 'issetsales', '1');
INSERT INTO `yg_setting` VALUES ('1', 'cloud_express', '0');
INSERT INTO `yg_setting` VALUES ('1', 'sms_sign', '');
INSERT INTO `yg_setting` VALUES ('1', 'sms_ok', '成功');
INSERT INTO `yg_setting` VALUES ('1', 'sms_len', '70');
INSERT INTO `yg_setting` VALUES ('1', 'sms_max', '5');
INSERT INTO `yg_setting` VALUES ('1', 'sms_fee', '0.1');
INSERT INTO `yg_setting` VALUES ('1', 'sms', '0');
INSERT INTO `yg_setting` VALUES ('1', 'page_text', '18');
INSERT INTO `yg_setting` VALUES ('1', 'page_logo', '18');
INSERT INTO `yg_setting` VALUES ('1', 'page_club', '8');
INSERT INTO `yg_setting` VALUES ('1', 'page_down', '3');
INSERT INTO `yg_setting` VALUES ('1', 'page_know', '6');
INSERT INTO `yg_setting` VALUES ('1', 'page_job', '5');
INSERT INTO `yg_setting` VALUES ('1', 'page_exhibit', '6');
INSERT INTO `yg_setting` VALUES ('1', 'page_brand', '16');
INSERT INTO `yg_setting` VALUES ('1', 'page_photo', '3');
INSERT INTO `yg_setting` VALUES ('1', 'page_video', '3');
INSERT INTO `yg_setting` VALUES ('1', 'page_special', '1');
INSERT INTO `yg_setting` VALUES ('1', 'page_news', '6');
INSERT INTO `yg_setting` VALUES ('1', 'page_newsh', '1');
INSERT INTO `yg_setting` VALUES ('1', 'page_newst', '1');
INSERT INTO `yg_setting` VALUES ('1', 'page_group', '10');
INSERT INTO `yg_setting` VALUES ('1', 'page_info', '10');
INSERT INTO `yg_setting` VALUES ('1', 'page_sell', '10');
INSERT INTO `yg_setting` VALUES ('1', 'page_mall', '10');
INSERT INTO `yg_setting` VALUES ('1', 'message_weixin', '1');
INSERT INTO `yg_setting` VALUES ('1', 'message_type', '1,2,3');
INSERT INTO `yg_setting` VALUES ('1', 'message_time', '60');
INSERT INTO `yg_setting` VALUES ('1', 'message_group', '6,7');
INSERT INTO `yg_setting` VALUES ('1', 'message_email', '0');
INSERT INTO `yg_setting` VALUES ('1', 'mail_name', 'dnypja');
INSERT INTO `yg_setting` VALUES ('1', 'mail_log', '1');
INSERT INTO `yg_setting` VALUES ('1', 'mail_sender', 'dnypja@163.com');
INSERT INTO `yg_setting` VALUES ('1', 'mail_sign', '');
INSERT INTO `yg_setting` VALUES ('1', 'smtp_pass', 'mhrjjoavnjwkocke');
INSERT INTO `yg_setting` VALUES ('1', 'smtp_auth', '1');
INSERT INTO `yg_setting` VALUES ('1', 'smtp_user', 'dnypja@163.com');
INSERT INTO `yg_setting` VALUES ('1', 'smtp_host', 'smtp.163.com');
INSERT INTO `yg_setting` VALUES ('2', 'pay_banks', '站内|支付宝|微信支付|财付通|现金|招商银行|工商银行|农业银行|建设银行|交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `yg_setting` VALUES ('2', 'trade_day', '10');
INSERT INTO `yg_setting` VALUES ('2', 'deposit', '1000');
INSERT INTO `yg_setting` VALUES ('2', 'cash_fee_max', '50');
INSERT INTO `yg_setting` VALUES ('2', 'cash_fee_min', '1');
INSERT INTO `yg_setting` VALUES ('2', 'cash_fee', '1');
INSERT INTO `yg_setting` VALUES ('2', 'cash_max', '10000');
INSERT INTO `yg_setting` VALUES ('2', 'cash_min', '50');
INSERT INTO `yg_setting` VALUES ('2', 'cash_times', '3');
INSERT INTO `yg_setting` VALUES ('2', 'cash_banks', '支付宝|微信|财付通|招商银行|工商银行|农业银行|建设银行|交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `yg_setting` VALUES ('2', 'cash_enable', '1');
INSERT INTO `yg_setting` VALUES ('2', 'pay_url', '');
INSERT INTO `yg_setting` VALUES ('2', 'awards', '1|2|5|10|20|50|100');
INSERT INTO `yg_setting` VALUES ('2', 'mincharge', '0');
INSERT INTO `yg_setting` VALUES ('2', 'pay_card', '1');
INSERT INTO `yg_setting` VALUES ('2', 'pay_online', '1');
INSERT INTO `yg_setting` VALUES ('2', 'link_check', '2');
INSERT INTO `yg_setting` VALUES ('2', 'credit_clear', '0');
INSERT INTO `yg_setting` VALUES ('2', 'credit_save', '0');
INSERT INTO `yg_setting` VALUES ('2', 'credit_check', '2');
INSERT INTO `yg_setting` VALUES ('2', 'page_clear', '0');
INSERT INTO `yg_setting` VALUES ('2', 'page_save', '0');
INSERT INTO `yg_setting` VALUES ('2', 'news_thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('2', 'news_save', '0');
INSERT INTO `yg_setting` VALUES ('2', 'news_clear', '0');
INSERT INTO `yg_setting` VALUES ('2', 'page_check', '2');
INSERT INTO `yg_setting` VALUES ('2', 'news_thumb_width', '240');
INSERT INTO `yg_setting` VALUES ('2', 'introduce_length', '0');
INSERT INTO `yg_setting` VALUES ('2', 'introduce_save', '0');
INSERT INTO `yg_setting` VALUES ('2', 'introduce_clear', '0');
INSERT INTO `yg_setting` VALUES ('2', 'news_check', '2');
INSERT INTO `yg_setting` VALUES ('2', 'thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('2', 'thumb_width', '180');
INSERT INTO `yg_setting` VALUES ('2', 'cate_max', '6');
INSERT INTO `yg_setting` VALUES ('2', 'mode_max', '2');
INSERT INTO `yg_setting` VALUES ('2', 'com_mode', '制造商|贸易商|服务商|其他机构');
INSERT INTO `yg_setting` VALUES ('2', 'money_unit', '人民币|港元|台币|美元|欧元|英镑');
INSERT INTO `yg_setting` VALUES ('2', 'com_size', '1-49人|50-99人|100-499人|500-999人|1000-3000人|3000-5000人|5000-10000人|10000人以上');
INSERT INTO `yg_setting` VALUES ('2', 'com_type', '企业单位|事业单位或社会团体|个体经营|其他');
INSERT INTO `yg_setting` VALUES ('2', 'editor', 'Basic');
INSERT INTO `yg_setting` VALUES ('2', 'vfax', '');
INSERT INTO `yg_setting` VALUES ('2', 'vcompany', '1');
INSERT INTO `yg_setting` VALUES ('2', 'vbank', '1');
INSERT INTO `yg_setting` VALUES ('2', 'vtruename', '1');
INSERT INTO `yg_setting` VALUES ('2', 'vmobile', '1');
INSERT INTO `yg_setting` VALUES ('2', 'vemail', '1');
INSERT INTO `yg_setting` VALUES ('2', 'vmember', '0');
INSERT INTO `yg_setting` VALUES ('2', 'chat_img', '1');
INSERT INTO `yg_setting` VALUES ('2', 'chat_url', '1');
INSERT INTO `yg_setting` VALUES ('2', 'chat_file', '1');
INSERT INTO `yg_setting` VALUES ('2', 'chat_mintime', '3');
INSERT INTO `yg_setting` VALUES ('2', 'chat_timeout', '600');
INSERT INTO `yg_setting` VALUES ('2', 'chat_poll', '1');
INSERT INTO `yg_setting` VALUES ('2', 'alertid', '5|6|22');
INSERT INTO `yg_setting` VALUES ('2', 'alert_check', '2');
INSERT INTO `yg_setting` VALUES ('2', 'chat_maxlen', '300');
INSERT INTO `yg_setting` VALUES ('2', 'auth_days', '3');
INSERT INTO `yg_setting` VALUES ('2', 'captcha_home', '2');
INSERT INTO `yg_setting` VALUES ('2', 'captcha_edit', '2');
INSERT INTO `yg_setting` VALUES ('2', 'captcha_sendmessage', '2');
INSERT INTO `yg_setting` VALUES ('2', 'maxtouser', '5');
INSERT INTO `yg_setting` VALUES ('2', 'login_scan', '1');
INSERT INTO `yg_setting` VALUES ('2', 'login_sms', '0');
INSERT INTO `yg_setting` VALUES ('2', 'login_time', '864000');
INSERT INTO `yg_setting` VALUES ('2', 'captcha_login', '0');
INSERT INTO `yg_setting` VALUES ('2', 'lock_hour', '1');
INSERT INTO `yg_setting` VALUES ('2', 'login_times', '5');
INSERT INTO `yg_setting` VALUES ('2', 'edit_check', 'thumb,areaid,type,business,regyear,capital,address,telephone,gzh,gzhqr,content');
INSERT INTO `yg_setting` VALUES ('2', 'usernote', '');
INSERT INTO `yg_setting` VALUES ('2', 'iptimeout', '24');
INSERT INTO `yg_setting` VALUES ('2', 'banagent', '');
INSERT INTO `yg_setting` VALUES ('2', 'defend_proxy', '0');
INSERT INTO `yg_setting` VALUES ('2', 'credit_register', '0');
INSERT INTO `yg_setting` VALUES ('2', 'sms_register', '0');
INSERT INTO `yg_setting` VALUES ('2', 'money_register', '0');
INSERT INTO `yg_setting` VALUES ('2', 'question_register', '0');
INSERT INTO `yg_setting` VALUES ('2', 'captcha_register', '0');
INSERT INTO `yg_setting` VALUES ('2', 'welcome_sms', '0');
INSERT INTO `yg_setting` VALUES ('2', 'welcome_email', '0');
INSERT INTO `yg_setting` VALUES ('2', 'welcome_message', '1');
INSERT INTO `yg_setting` VALUES ('2', 'checkuser', '0');
INSERT INTO `yg_setting` VALUES ('2', 'banemail', '');
INSERT INTO `yg_setting` VALUES ('2', 'banmodec', '0');
INSERT INTO `yg_setting` VALUES ('2', 'bancompany', '');
INSERT INTO `yg_setting` VALUES ('2', 'mixpassword', '1,2');
INSERT INTO `yg_setting` VALUES ('2', 'maxpassword', '20');
INSERT INTO `yg_setting` VALUES ('2', 'minpassword', '6');
INSERT INTO `yg_setting` VALUES ('2', 'banmodeu', '0');
INSERT INTO `yg_setting` VALUES ('2', 'banusername', 'admin|system|master|web|sell|buy|company|quote|job|article|info|page|bbs');
INSERT INTO `yg_setting` VALUES ('2', 'maxusername', '20');
INSERT INTO `yg_setting` VALUES ('2', 'minusername', '4');
INSERT INTO `yg_setting` VALUES ('2', 'enable_register', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'moduleids', '14');
INSERT INTO `yg_setting` VALUES ('group-9', 'link_limit', '0');
INSERT INTO `yg_setting` VALUES ('3', 'baidunews_email', '1924766193@qq.com');
INSERT INTO `yg_setting` VALUES ('3', 'baidunews', '1');
INSERT INTO `yg_setting` VALUES ('3', 'sitemaps_items', '10000');
INSERT INTO `yg_setting` VALUES ('3', 'sitemaps_update', '60');
INSERT INTO `yg_setting` VALUES ('3', 'sitemaps_module', '16,4,17,10,12,14');
INSERT INTO `yg_setting` VALUES ('3', 'sitemaps_priority', '0.8');
INSERT INTO `yg_setting` VALUES ('3', 'sitemaps_changefreq', 'monthly');
INSERT INTO `yg_setting` VALUES ('3', 'sitemaps', '1');
INSERT INTO `yg_setting` VALUES ('3', 'feed_pagesize', '50');
INSERT INTO `yg_setting` VALUES ('3', 'feed_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'feed_enable', '2');
INSERT INTO `yg_setting` VALUES ('3', 'archiver_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'archiver_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'form_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'form_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'poll_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'poll_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'vote_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'gift_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'vote_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'gift_time', '86400');
INSERT INTO `yg_setting` VALUES ('3', 'gift_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'guestbook_captcha', '1');
INSERT INTO `yg_setting` VALUES ('3', 'guestbook_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'guestbook_type', '意见');
INSERT INTO `yg_setting` VALUES ('3', 'guestbook_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'comment_am', '网友');
INSERT INTO `yg_setting` VALUES ('3', 'credit_add_comment', '2');
INSERT INTO `yg_setting` VALUES ('3', 'credit_del_comment', '5');
INSERT INTO `yg_setting` VALUES ('3', 'comment_limit', '30');
INSERT INTO `yg_setting` VALUES ('3', 'comment_pagesize', '10');
INSERT INTO `yg_setting` VALUES ('3', 'comment_time', '30');
INSERT INTO `yg_setting` VALUES ('3', 'comment_max', '500');
INSERT INTO `yg_setting` VALUES ('3', 'comment_vote', '1');
INSERT INTO `yg_setting` VALUES ('3', 'comment_min', '5');
INSERT INTO `yg_setting` VALUES ('3', 'comment_admin_del', '1');
INSERT INTO `yg_setting` VALUES ('3', 'comment_user_del', '4');
INSERT INTO `yg_setting` VALUES ('3', 'comment_captcha_add', '1');
INSERT INTO `yg_setting` VALUES ('3', 'comment_check', '2');
INSERT INTO `yg_setting` VALUES ('3', 'comment_vote_group', '5,6,7');
INSERT INTO `yg_setting` VALUES ('3', 'comment_group', '5,6,7');
INSERT INTO `yg_setting` VALUES ('3', 'comment_show', '1');
INSERT INTO `yg_setting` VALUES ('3', 'comment_api_key', '');
INSERT INTO `yg_setting` VALUES ('3', 'comment_api_id', '');
INSERT INTO `yg_setting` VALUES ('3', 'comment_api', '');
INSERT INTO `yg_setting` VALUES ('3', 'comment_module', '16,4,17,12,14');
INSERT INTO `yg_setting` VALUES ('3', 'comment_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'link_request', '');
INSERT INTO `yg_setting` VALUES ('3', 'link_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'link_reg', '1');
INSERT INTO `yg_setting` VALUES ('3', 'link_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'announce_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'announce_enable', '1');
INSERT INTO `yg_setting` VALUES ('4', 'group_message', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'group_buy', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'group_price', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `yg_setting` VALUES ('4', 'group_inquiry', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'seo_keywords_show', '{内容标题}{分类名称}{分类SEO关键词}{模块名称}{网站SEO关键词}');
INSERT INTO `yg_setting` VALUES ('4', 'seo_title_show', '{内容标题}{分类名称}{分类SEO标题}{模块名称}{网站名称}{网站SEO标题}{分隔符}');
INSERT INTO `yg_setting` VALUES ('4', 'seo_description_list', '{网站SEO描述}{网站名称}{模块名称}{分类SEO描述}{分类名称}');
INSERT INTO `yg_setting` VALUES ('4', 'seo_keywords_list', '{分类名称}{分类SEO关键词}{模块名称}{网站名称}{网站SEO关键词}');
INSERT INTO `yg_setting` VALUES ('4', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('4', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `yg_setting` VALUES ('4', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `yg_setting` VALUES ('4', 'php_list_urlid', '5');
INSERT INTO `yg_setting` VALUES ('4', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('4', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('4', 'htm_list_prefix', 'company_list_');
INSERT INTO `yg_setting` VALUES ('4', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('4', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('4', 'page_comment', '0');
INSERT INTO `yg_setting` VALUES ('4', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('4', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('4', 'page_inew', '10');
INSERT INTO `yg_setting` VALUES ('4', 'group_contact', '5,6,7');
INSERT INTO `yg_setting` VALUES ('4', 'page_inews', '10');
INSERT INTO `yg_setting` VALUES ('4', 'page_ivip', '10');
INSERT INTO `yg_setting` VALUES ('4', 'page_irec', '10');
INSERT INTO `yg_setting` VALUES ('4', 'page_subcat', '6');
INSERT INTO `yg_setting` VALUES ('4', 'level', '推荐公司');
INSERT INTO `yg_setting` VALUES ('4', 'kf', 'qq,53kf,tq,qiao');
INSERT INTO `yg_setting` VALUES ('4', 'stats', 'baidu,qq,cnzz,51la');
INSERT INTO `yg_setting` VALUES ('4', 'map', 'baidu');
INSERT INTO `yg_setting` VALUES ('4', 'vip_honor', '1');
INSERT INTO `yg_setting` VALUES ('4', 'vip_maxyear', '5');
INSERT INTO `yg_setting` VALUES ('4', 'vip_year', '1');
INSERT INTO `yg_setting` VALUES ('4', 'vip_cominfo', '1');
INSERT INTO `yg_setting` VALUES ('4', 'vip_maxgroupvip', '3');
INSERT INTO `yg_setting` VALUES ('4', 'delvip', '1');
INSERT INTO `yg_setting` VALUES ('4', 'openall', '0');
INSERT INTO `yg_setting` VALUES ('4', 'split', '0');
INSERT INTO `yg_setting` VALUES ('4', 'comment', '1');
INSERT INTO `yg_setting` VALUES ('4', 'homeurl', '0');
INSERT INTO `yg_setting` VALUES ('4', 'fields', 'userid,username,company,linkurl,thumb,catid,areaid,vip,groupid,validated,business,mode');
INSERT INTO `yg_setting` VALUES ('4', 'order', 'vip desc,userid desc');
INSERT INTO `yg_setting` VALUES ('4', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('4', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('4', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('4', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('4', 'title_show', '{$seo_showtitle}{$seo_catname}{$seo_cattitle}{$seo_modulename}{$seo_sitename}{$seo_sitetitle}{$seo_delimiter}');
INSERT INTO `yg_setting` VALUES ('4', 'title_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `yg_setting` VALUES ('4', 'keywords_list', '{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitename}{$seo_sitekeywords}');
INSERT INTO `yg_setting` VALUES ('4', 'keywords_show', '{$seo_showtitle}{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitekeywords}');
INSERT INTO `yg_setting` VALUES ('4', 'keywords_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `yg_setting` VALUES ('4', 'description_list', '{$seo_sitedescription}{$seo_sitename}{$seo_modulename}{$seo_catdescription}{$seo_catname}');
INSERT INTO `yg_setting` VALUES ('4', 'description_show', '{$seo_showtitle}{$seo_showintroduce}{$seo_catname}{$seo_catdescription}{$seo_modulename}{$seo_sitename}{$seo_sitedescription}');
INSERT INTO `yg_setting` VALUES ('4', 'description_search', '');
INSERT INTO `yg_setting` VALUES ('4', 'module', 'company');
INSERT INTO `yg_setting` VALUES ('4', 'mobile', 'http://demo.hjli.cn/v7.0/mobile/company/');
INSERT INTO `yg_setting` VALUES ('group-9', 'honor_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'page_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-9', 'news_limit', '0');
INSERT INTO `yg_setting` VALUES ('27', 'show_np', '1');
INSERT INTO `yg_setting` VALUES ('27', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('27', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('27', 'htm_list_prefix', '');
INSERT INTO `yg_setting` VALUES ('27', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('27', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('27', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('27', 'htm_item_prefix', '');
INSERT INTO `yg_setting` VALUES ('27', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('27', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('27', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('27', 'seo_keywords_index', '');
INSERT INTO `yg_setting` VALUES ('27', 'seo_description_index', '');
INSERT INTO `yg_setting` VALUES ('27', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('27', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('27', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('27', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('group-9', 'kf', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'stats', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'map', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'style', '1');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_7', '0');
INSERT INTO `yg_setting` VALUES ('27', 'limit_8', '');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_8', '');
INSERT INTO `yg_setting` VALUES ('group-9', 'main_d', '0,1,2,7');
INSERT INTO `yg_setting` VALUES ('group-9', 'main_c', '0,1,2,4,5,6,7');
INSERT INTO `yg_setting` VALUES ('group-9', 'home_main', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'side_d', '0,1,2,4,6');
INSERT INTO `yg_setting` VALUES ('group-9', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `yg_setting` VALUES ('group-9', 'home_side', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'menu_d', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-9', 'home_menu', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-9', 'home', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'styleid', '2');
INSERT INTO `yg_setting` VALUES ('group-9', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'type_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-9', 'price_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-9', 'inquiry_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-9', 'message_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-9', 'promo_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-9', 'express_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-9', 'address_limit', '10');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('16', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('16', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('16', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('16', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_10', '');
INSERT INTO `yg_setting` VALUES ('26', 'limit_10', '');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_9', '');
INSERT INTO `yg_setting` VALUES ('26', 'limit_9', '');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_8', '');
INSERT INTO `yg_setting` VALUES ('26', 'limit_8', '');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('26', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('26', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('26', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('26', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('26', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('26', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('26', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('26', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('26', 'credit_refresh', '1');
INSERT INTO `yg_setting` VALUES ('26', 'credit_elite', '100');
INSERT INTO `yg_setting` VALUES ('26', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('26', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('26', 'credit_add', '2');
INSERT INTO `yg_setting` VALUES ('26', 'fee_award', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'promo_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-8', 'express_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-8', 'address_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-8', 'alert_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-8', 'favorite_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-8', 'friend_limit', '200');
INSERT INTO `yg_setting` VALUES ('group-8', 'inbox_limit', '500');
INSERT INTO `yg_setting` VALUES ('group-8', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'spread', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'group_order', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'trade_order', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'sendmail', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'sms', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'mail', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'ask', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'cash', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'question', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'captcha', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'check', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'uploadpt', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'uploadcredit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'uploadday', '100');
INSERT INTO `yg_setting` VALUES ('group-8', 'uploadlimit', '10');
INSERT INTO `yg_setting` VALUES ('group-8', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-8', 'uploadsize', '');
INSERT INTO `yg_setting` VALUES ('group-8', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('group-8', 'grade', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'biz', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'discount', '100');
INSERT INTO `yg_setting` VALUES ('group-8', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'type', '1');
INSERT INTO `yg_setting` VALUES ('26', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('26', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('26', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('26', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('26', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('26', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('26', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('26', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('26', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('26', 'question_inquiry', '2');
INSERT INTO `yg_setting` VALUES ('26', 'captcha_inquiry', '2');
INSERT INTO `yg_setting` VALUES ('26', 'group_elite', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'group_compare', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'group_refresh', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'group_color', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('26', 'group_contact', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'group_show', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'group_list', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('26', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('26', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `yg_setting` VALUES ('26', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('26', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('26', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('26', 'group_index', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('10', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_6', '30');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_7', '100');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_5', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('10', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('10', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('10', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('10', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'answer_limit_1', '0');
INSERT INTO `yg_setting` VALUES ('10', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('10', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('10', 'credit_deal', '20');
INSERT INTO `yg_setting` VALUES ('10', 'credit_maxvote', '30');
INSERT INTO `yg_setting` VALUES ('10', 'credit_del_answer', '5');
INSERT INTO `yg_setting` VALUES ('10', 'credit_maxanswer', '50');
INSERT INTO `yg_setting` VALUES ('10', 'credit_vote', '1');
INSERT INTO `yg_setting` VALUES ('10', 'credit_answer', '2');
INSERT INTO `yg_setting` VALUES ('10', 'credit_best', '20');
INSERT INTO `yg_setting` VALUES ('10', 'credit_hidden', '10');
INSERT INTO `yg_setting` VALUES ('10', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('10', 'credit_del', '20');
INSERT INTO `yg_setting` VALUES ('10', 'credit_add', '0');
INSERT INTO `yg_setting` VALUES ('10', 'pre_view', '200');
INSERT INTO `yg_setting` VALUES ('10', 'fee_award', '0');
INSERT INTO `yg_setting` VALUES ('10', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('10', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('10', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('10', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('10', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('10', 'fee_mode', '1');
INSERT INTO `yg_setting` VALUES ('10', 'captcha_answer', '2');
INSERT INTO `yg_setting` VALUES ('10', 'question_answer', '0');
INSERT INTO `yg_setting` VALUES ('10', 'check_answer', '2');
INSERT INTO `yg_setting` VALUES ('10', 'group_vote', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('10', 'group_answer', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('10', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('10', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('10', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('10', 'group_color', '7');
INSERT INTO `yg_setting` VALUES ('10', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('10', 'group_show', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('10', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('10', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('10', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_description_show', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('10', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_description_index', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('10', 'seo_keywords_index', '');
INSERT INTO `yg_setting` VALUES ('10', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('10', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('10', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('10', 'htm_item_prefix', '');
INSERT INTO `yg_setting` VALUES ('10', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('10', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('10', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('10', 'htm_list_prefix', '');
INSERT INTO `yg_setting` VALUES ('10', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('10', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('10', 'page_comment', '0');
INSERT INTO `yg_setting` VALUES ('10', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('10', 'max_width', '750');
INSERT INTO `yg_setting` VALUES ('10', 'answer_pagesize', '10');
INSERT INTO `yg_setting` VALUES ('10', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('10', 'page_iexpert', '8');
INSERT INTO `yg_setting` VALUES ('10', 'page_iresolve', '8');
INSERT INTO `yg_setting` VALUES ('10', 'page_ivote', '8');
INSERT INTO `yg_setting` VALUES ('10', 'page_isolve', '8');
INSERT INTO `yg_setting` VALUES ('10', 'page_irec', '8');
INSERT INTO `yg_setting` VALUES ('10', 'messagedays', '14');
INSERT INTO `yg_setting` VALUES ('10', 'highcredit', '20');
INSERT INTO `yg_setting` VALUES ('10', 'raisecredit', '20');
INSERT INTO `yg_setting` VALUES ('10', 'raisedays', '3');
INSERT INTO `yg_setting` VALUES ('10', 'maxraise', '2');
INSERT INTO `yg_setting` VALUES ('10', 'minvote', '3');
INSERT INTO `yg_setting` VALUES ('10', 'votedays', '5');
INSERT INTO `yg_setting` VALUES ('10', 'overdays', '15');
INSERT INTO `yg_setting` VALUES ('10', 'answer_message', '1');
INSERT INTO `yg_setting` VALUES ('10', 'answer_repeat', '1');
INSERT INTO `yg_setting` VALUES ('10', 'credits', '0|5|10|15|20|30|50|80|100');
INSERT INTO `yg_setting` VALUES ('10', 'level', '精彩推荐');
INSERT INTO `yg_setting` VALUES ('10', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('10', 'split', '0');
INSERT INTO `yg_setting` VALUES ('10', 'keylink', '1');
INSERT INTO `yg_setting` VALUES ('10', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('10', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('10', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('10', 'clear_alink', '1');
INSERT INTO `yg_setting` VALUES ('10', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,passport,answer,process,credit');
INSERT INTO `yg_setting` VALUES ('10', 'order', 'addtime desc');
INSERT INTO `yg_setting` VALUES ('10', 'editor', 'Simple');
INSERT INTO `yg_setting` VALUES ('10', 'introduce_length', '0');
INSERT INTO `yg_setting` VALUES ('10', 'thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('10', 'thumb_width', '240');
INSERT INTO `yg_setting` VALUES ('10', 'template_my_answer', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_faq', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_expert', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_answer', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('10', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('10', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('10', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('10', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('10', 'title_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'keywords_index', '');
INSERT INTO `yg_setting` VALUES ('10', 'keywords_list', '');
INSERT INTO `yg_setting` VALUES ('10', 'keywords_show', '');
INSERT INTO `yg_setting` VALUES ('10', 'keywords_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'description_index', '');
INSERT INTO `yg_setting` VALUES ('10', 'description_list', '');
INSERT INTO `yg_setting` VALUES ('10', 'description_show', '');
INSERT INTO `yg_setting` VALUES ('10', 'description_search', '');
INSERT INTO `yg_setting` VALUES ('10', 'module', 'know');
INSERT INTO `yg_setting` VALUES ('10', 'mobile', 'http://demo.hjli.cn/v7.0/mobile/know/');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('12', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('12', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('12', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('12', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('12', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('12', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('12', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('12', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('12', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('12', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('12', 'credit_add', '2');
INSERT INTO `yg_setting` VALUES ('12', 'pre_view', '200');
INSERT INTO `yg_setting` VALUES ('12', 'fee_award', '100');
INSERT INTO `yg_setting` VALUES ('12', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('12', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('12', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('12', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('12', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('12', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('12', 'question_add', '1');
INSERT INTO `yg_setting` VALUES ('12', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('12', 'check_add', '1');
INSERT INTO `yg_setting` VALUES ('12', 'group_color', '7');
INSERT INTO `yg_setting` VALUES ('12', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('12', 'group_show', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('12', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('12', 'seo_description_show', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('12', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('12', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_keywords_index', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_description_index', '');
INSERT INTO `yg_setting` VALUES ('12', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('12', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('12', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('12', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('12', 'htm_item_prefix', '');
INSERT INTO `yg_setting` VALUES ('12', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('12', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('12', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('12', 'htm_list_prefix', '');
INSERT INTO `yg_setting` VALUES ('12', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('12', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('12', 'page_comment', '0');
INSERT INTO `yg_setting` VALUES ('12', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('12', 'max_width', '1000');
INSERT INTO `yg_setting` VALUES ('12', 'pagesize', '18');
INSERT INTO `yg_setting` VALUES ('12', 'page_islide', '3');
INSERT INTO `yg_setting` VALUES ('12', 'page_irec', '6');
INSERT INTO `yg_setting` VALUES ('12', 'page_icat', '6');
INSERT INTO `yg_setting` VALUES ('12', 'swfu_max', '20');
INSERT INTO `yg_setting` VALUES ('12', 'level', '推荐图库|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `yg_setting` VALUES ('12', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('12', 'split', '0');
INSERT INTO `yg_setting` VALUES ('12', 'keylink', '0');
INSERT INTO `yg_setting` VALUES ('12', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('12', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('12', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('12', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,items,open');
INSERT INTO `yg_setting` VALUES ('12', 'order', 'addtime desc');
INSERT INTO `yg_setting` VALUES ('12', 'editor', 'Simple');
INSERT INTO `yg_setting` VALUES ('12', 'introduce_length', '120');
INSERT INTO `yg_setting` VALUES ('12', 'maxitem', '30');
INSERT INTO `yg_setting` VALUES ('12', 'thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('12', 'thumb_width', '240');
INSERT INTO `yg_setting` VALUES ('12', 'template_view', '');
INSERT INTO `yg_setting` VALUES ('12', 'template_private', '');
INSERT INTO `yg_setting` VALUES ('12', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('12', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('12', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('12', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('12', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('12', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('12', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('12', 'title_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'keywords_index', '');
INSERT INTO `yg_setting` VALUES ('12', 'keywords_list', '');
INSERT INTO `yg_setting` VALUES ('12', 'keywords_show', '');
INSERT INTO `yg_setting` VALUES ('12', 'keywords_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'description_index', '');
INSERT INTO `yg_setting` VALUES ('12', 'description_list', '');
INSERT INTO `yg_setting` VALUES ('12', 'description_show', '');
INSERT INTO `yg_setting` VALUES ('12', 'description_search', '');
INSERT INTO `yg_setting` VALUES ('12', 'module', 'photo');
INSERT INTO `yg_setting` VALUES ('12', 'mobile', 'http://demo.hjli.cn/v7.0/mobile/photo/');
INSERT INTO `yg_setting` VALUES ('14', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('14', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('14', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('14', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('14', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('14', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('14', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('14', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('14', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('14', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('14', 'credit_add', '2');
INSERT INTO `yg_setting` VALUES ('14', 'fee_award', '100');
INSERT INTO `yg_setting` VALUES ('14', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('14', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('14', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('14', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('14', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('14', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('14', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('14', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('14', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('14', 'question_message', '2');
INSERT INTO `yg_setting` VALUES ('14', 'captcha_message', '2');
INSERT INTO `yg_setting` VALUES ('14', 'group_upload', '6,7');
INSERT INTO `yg_setting` VALUES ('14', 'group_color', '7');
INSERT INTO `yg_setting` VALUES ('14', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('14', 'group_show', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('14', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('14', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('14', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_description_show', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('14', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('14', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('14', 'seo_description_index', '');
INSERT INTO `yg_setting` VALUES ('14', 'seo_keywords_index', '');
INSERT INTO `yg_setting` VALUES ('14', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('14', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('14', 'htm_item_prefix', '');
INSERT INTO `yg_setting` VALUES ('14', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('14', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('14', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('14', 'htm_list_prefix', '');
INSERT INTO `yg_setting` VALUES ('14', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('14', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('14', 'page_comment', '0');
INSERT INTO `yg_setting` VALUES ('14', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('14', 'max_width', '1000');
INSERT INTO `yg_setting` VALUES ('14', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('14', 'page_icat', '6');
INSERT INTO `yg_setting` VALUES ('14', 'page_irec', '6');
INSERT INTO `yg_setting` VALUES ('14', 'swfu', '0');
INSERT INTO `yg_setting` VALUES ('14', 'upload', 'mp4|flv');
INSERT INTO `yg_setting` VALUES ('14', 'flvend', '');
INSERT INTO `yg_setting` VALUES ('14', 'flvstart', '');
INSERT INTO `yg_setting` VALUES ('14', 'flvlink', '');
INSERT INTO `yg_setting` VALUES ('14', 'flvmargin', '10 auto auto 10');
INSERT INTO `yg_setting` VALUES ('14', 'flvlogo', 'video.png');
INSERT INTO `yg_setting` VALUES ('14', 'autostart', '1');
INSERT INTO `yg_setting` VALUES ('14', 'level', '推荐视频');
INSERT INTO `yg_setting` VALUES ('14', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('14', 'split', '0');
INSERT INTO `yg_setting` VALUES ('14', 'keylink', '0');
INSERT INTO `yg_setting` VALUES ('14', 'video_width', '600');
INSERT INTO `yg_setting` VALUES ('14', 'video_height', '500');
INSERT INTO `yg_setting` VALUES ('14', 'introduce_length', '120');
INSERT INTO `yg_setting` VALUES ('14', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('14', 'order', 'addtime desc');
INSERT INTO `yg_setting` VALUES ('14', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,hits');
INSERT INTO `yg_setting` VALUES ('14', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('14', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('14', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('14', 'thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('14', 'thumb_width', '240');
INSERT INTO `yg_setting` VALUES ('14', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('14', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('14', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('14', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('14', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('14', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('14', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('14', 'title_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'keywords_index', '');
INSERT INTO `yg_setting` VALUES ('14', 'keywords_list', '');
INSERT INTO `yg_setting` VALUES ('14', 'keywords_show', '');
INSERT INTO `yg_setting` VALUES ('14', 'keywords_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'description_index', '');
INSERT INTO `yg_setting` VALUES ('14', 'description_list', '');
INSERT INTO `yg_setting` VALUES ('14', 'description_show', '');
INSERT INTO `yg_setting` VALUES ('14', 'description_search', '');
INSERT INTO `yg_setting` VALUES ('14', 'module', 'video');
INSERT INTO `yg_setting` VALUES ('14', 'mobile', 'http://demo.hjli.cn/v7.0/mobile/video/');
INSERT INTO `yg_setting` VALUES ('27', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('27', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('27', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('27', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('27', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('27', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('27', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('27', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('27', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('27', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('27', 'credit_add', '2');
INSERT INTO `yg_setting` VALUES ('27', 'pre_view', '200');
INSERT INTO `yg_setting` VALUES ('27', 'fee_award', '100');
INSERT INTO `yg_setting` VALUES ('27', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('27', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('27', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('27', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('27', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('27', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('27', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('27', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('27', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('27', 'group_color', '7');
INSERT INTO `yg_setting` VALUES ('27', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('27', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('27', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('27', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('27', 'group_show', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('27', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('27', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('27', 'seo_description_show', '');
INSERT INTO `yg_setting` VALUES ('16', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('16', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('16', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('16', 'credit_refresh', '1');
INSERT INTO `yg_setting` VALUES ('16', 'credit_elite', '100');
INSERT INTO `yg_setting` VALUES ('16', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('16', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('16', 'credit_add', '2');
INSERT INTO `yg_setting` VALUES ('16', 'fee_award', '0');
INSERT INTO `yg_setting` VALUES ('16', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('16', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('16', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('16', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('16', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('16', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('16', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('16', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('16', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('16', 'question_inquiry', '2');
INSERT INTO `yg_setting` VALUES ('16', 'captcha_inquiry', '2');
INSERT INTO `yg_setting` VALUES ('16', 'group_elite', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_compare', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_refresh', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_color', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_search', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_contact', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_show', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_list', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'group_index', '3,5,6,7,8,9,10');
INSERT INTO `yg_setting` VALUES ('16', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('16', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `yg_setting` VALUES ('16', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('16', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('16', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('16', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('16', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('16', 'seo_title_list', '{分类名称}{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}{分类SEO标题}{模块名称}{网站名称}{页码}');
INSERT INTO `yg_setting` VALUES ('16', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('16', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `yg_setting` VALUES ('16', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `yg_setting` VALUES ('16', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('16', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('16', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('16', 'htm_item_prefix', 'mall_info_');
INSERT INTO `yg_setting` VALUES ('16', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('16', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('17', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('17', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('17', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('17', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('17', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('17', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('17', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('17', 'credit_refresh', '1');
INSERT INTO `yg_setting` VALUES ('17', 'credit_color', '100');
INSERT INTO `yg_setting` VALUES ('17', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('17', 'credit_add', '2');
INSERT INTO `yg_setting` VALUES ('17', 'fee_award', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('17', 'fee_mode', '1');
INSERT INTO `yg_setting` VALUES ('17', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('17', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('17', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('17', 'question_inquiry', '2');
INSERT INTO `yg_setting` VALUES ('17', 'captcha_inquiry', '2');
INSERT INTO `yg_setting` VALUES ('17', 'group_refresh', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('17', 'group_color', '7');
INSERT INTO `yg_setting` VALUES ('17', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('17', 'group_contact', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('17', 'group_show', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('17', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('17', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('17', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_description_show', '');
INSERT INTO `yg_setting` VALUES ('17', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('17', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('17', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('17', 'seo_keywords_index', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_description_index', '');
INSERT INTO `yg_setting` VALUES ('17', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('17', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('17', 'split', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('17', 'level', '推荐团购');
INSERT INTO `yg_setting` VALUES ('17', 'swfu', '1');
INSERT INTO `yg_setting` VALUES ('17', 'page_subcat', '9');
INSERT INTO `yg_setting` VALUES ('17', 'page_irec', '4');
INSERT INTO `yg_setting` VALUES ('17', 'page_icat', '4');
INSERT INTO `yg_setting` VALUES ('17', 'pagesize', '9');
INSERT INTO `yg_setting` VALUES ('17', 'max_width', '1000');
INSERT INTO `yg_setting` VALUES ('17', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('17', 'page_comment', '0');
INSERT INTO `yg_setting` VALUES ('17', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('17', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('17', 'htm_list_prefix', 'group_list_');
INSERT INTO `yg_setting` VALUES ('17', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('17', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('17', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('17', 'htm_item_prefix', 'group_info_');
INSERT INTO `yg_setting` VALUES ('17', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('17', 'keylink', '0');
INSERT INTO `yg_setting` VALUES ('17', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('17', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('17', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('17', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,marketprice,savemoney,discount,sales,orders,minamount,amount');
INSERT INTO `yg_setting` VALUES ('17', 'order', 'addtime desc');
INSERT INTO `yg_setting` VALUES ('17', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('17', 'introduce_length', '120');
INSERT INTO `yg_setting` VALUES ('17', 'thumb_height', '300');
INSERT INTO `yg_setting` VALUES ('17', 'thumb_width', '400');
INSERT INTO `yg_setting` VALUES ('17', 'template_buy', '');
INSERT INTO `yg_setting` VALUES ('17', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('17', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('17', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('17', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('17', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('17', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('17', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('17', 'title_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'keywords_index', '');
INSERT INTO `yg_setting` VALUES ('17', 'keywords_list', '');
INSERT INTO `yg_setting` VALUES ('17', 'keywords_show', '');
INSERT INTO `yg_setting` VALUES ('17', 'keywords_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'description_index', '');
INSERT INTO `yg_setting` VALUES ('17', 'description_list', '');
INSERT INTO `yg_setting` VALUES ('17', 'description_show', '');
INSERT INTO `yg_setting` VALUES ('17', 'description_search', '');
INSERT INTO `yg_setting` VALUES ('17', 'module', 'group');
INSERT INTO `yg_setting` VALUES ('17', 'mobile', 'http://demo.hjli.cn/v7.0/mobile/group/');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_7', '100');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_7', '0');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_7', '10');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_7', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'limit_7', '100');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_6', '30');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_6', '3');
INSERT INTO `yg_setting` VALUES ('18', 'limit_6', '30');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_6', '0');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_5', '10');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_5', '1');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_5', '0');
INSERT INTO `yg_setting` VALUES ('18', 'limit_5', '3');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_4', '0');
INSERT INTO `yg_setting` VALUES ('18', 'limit_4', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_3', '0');
INSERT INTO `yg_setting` VALUES ('18', 'limit_3', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_2', '0');
INSERT INTO `yg_setting` VALUES ('18', 'limit_2', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'reply_limit_1', '0');
INSERT INTO `yg_setting` VALUES ('18', 'join_limit_1', '0');
INSERT INTO `yg_setting` VALUES ('18', 'group_limit_1', '0');
INSERT INTO `yg_setting` VALUES ('18', 'free_limit_1', '-1');
INSERT INTO `yg_setting` VALUES ('18', 'limit_1', '0');
INSERT INTO `yg_setting` VALUES ('18', 'credit_del_reply', '2');
INSERT INTO `yg_setting` VALUES ('18', 'credit_reply', '1');
INSERT INTO `yg_setting` VALUES ('18', 'credit_del', '5');
INSERT INTO `yg_setting` VALUES ('18', 'credit_level', '10');
INSERT INTO `yg_setting` VALUES ('18', 'credit_add', '3');
INSERT INTO `yg_setting` VALUES ('18', 'pre_view', '200');
INSERT INTO `yg_setting` VALUES ('18', 'fee_award', '100');
INSERT INTO `yg_setting` VALUES ('18', 'fee_back', '0');
INSERT INTO `yg_setting` VALUES ('18', 'fee_period', '0');
INSERT INTO `yg_setting` VALUES ('18', 'fee_view', '0');
INSERT INTO `yg_setting` VALUES ('18', 'fee_add', '0');
INSERT INTO `yg_setting` VALUES ('18', 'fee_currency', 'money');
INSERT INTO `yg_setting` VALUES ('18', 'fee_mode', '1');
INSERT INTO `yg_setting` VALUES ('18', 'question_reply', '2');
INSERT INTO `yg_setting` VALUES ('18', 'captcha_reply', '2');
INSERT INTO `yg_setting` VALUES ('18', 'check_reply', '2');
INSERT INTO `yg_setting` VALUES ('18', 'question_add', '2');
INSERT INTO `yg_setting` VALUES ('18', 'captcha_add', '2');
INSERT INTO `yg_setting` VALUES ('18', 'check_add', '2');
INSERT INTO `yg_setting` VALUES ('18', 'question_group', '2');
INSERT INTO `yg_setting` VALUES ('18', 'captcha_group', '2');
INSERT INTO `yg_setting` VALUES ('18', 'check_group', '2');
INSERT INTO `yg_setting` VALUES ('18', 'group_reply', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('18', 'group_search', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('18', 'group_show', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('18', 'group_list', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('18', 'group_index', '3,5,6,7');
INSERT INTO `yg_setting` VALUES ('18', 'seo_description_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_keywords_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_title_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_description_show', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_title_show', '{内容标题}{分隔符}{页码}{$GRP[\'title\']}{$MOD[\'seo_name\']}{分隔符}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('18', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('18', 'seo_keywords_index', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_description_index', '');
INSERT INTO `yg_setting` VALUES ('18', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('18', 'seo_name', '圈');
INSERT INTO `yg_setting` VALUES ('18', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('18', 'htm_item_urlid', '4');
INSERT INTO `yg_setting` VALUES ('18', 'htm_item_prefix', '');
INSERT INTO `yg_setting` VALUES ('18', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('18', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('18', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('18', 'htm_list_prefix', '');
INSERT INTO `yg_setting` VALUES ('18', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('18', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('18', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('18', 'max_width', '750');
INSERT INTO `yg_setting` VALUES ('18', 'reply_pagesize', '10');
INSERT INTO `yg_setting` VALUES ('18', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('18', 'maxontop', '5');
INSERT INTO `yg_setting` VALUES ('18', 'page_islide', '3');
INSERT INTO `yg_setting` VALUES ('18', 'page_icat', '6');
INSERT INTO `yg_setting` VALUES ('18', 'floor', '沙发|藤椅|板凳|马扎|地板');
INSERT INTO `yg_setting` VALUES ('18', 'manage_reason', '1');
INSERT INTO `yg_setting` VALUES ('18', 'manage_message', '1');
INSERT INTO `yg_setting` VALUES ('18', 'manage_reasons', '广告/SPAM|恶意灌水|违规内容|文不对题|重复发帖|我很赞同|精品文章|原创内容|感谢分享');
INSERT INTO `yg_setting` VALUES ('18', 'swfu', '1');
INSERT INTO `yg_setting` VALUES ('18', 'level', '精华1|精华2');
INSERT INTO `yg_setting` VALUES ('18', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('18', 'split', '0');
INSERT INTO `yg_setting` VALUES ('18', 'keylink', '1');
INSERT INTO `yg_setting` VALUES ('18', 'clear_alink', '1');
INSERT INTO `yg_setting` VALUES ('18', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('18', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('18', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('18', 'fields', 'itemid,title,ontop,video,level,thumb,linkurl,style,catid,introduce,hits,addtime,edittime,username,passport,reply,replyer,replytime ');
INSERT INTO `yg_setting` VALUES ('18', 'order', 'addtime desc');
INSERT INTO `yg_setting` VALUES ('18', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('18', 'introduce_length', '0');
INSERT INTO `yg_setting` VALUES ('18', 'thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('18', 'template_my_fans', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_my_manage', '');
INSERT INTO `yg_setting` VALUES ('18', 'thumb_width', '240');
INSERT INTO `yg_setting` VALUES ('18', 'template_my_join', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_my_reply', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_my_group', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_fans', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_group', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('18', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('18', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('18', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('18', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_page}{$GRP[\'title\']}{$MOD[\'seo_name\']}{$seo_delimiter}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `yg_setting` VALUES ('18', 'title_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'keywords_index', '');
INSERT INTO `yg_setting` VALUES ('18', 'keywords_list', '');
INSERT INTO `yg_setting` VALUES ('18', 'keywords_show', '');
INSERT INTO `yg_setting` VALUES ('18', 'keywords_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'description_index', '');
INSERT INTO `yg_setting` VALUES ('18', 'description_list', '');
INSERT INTO `yg_setting` VALUES ('18', 'description_show', '');
INSERT INTO `yg_setting` VALUES ('18', 'description_search', '');
INSERT INTO `yg_setting` VALUES ('18', 'module', 'club');
INSERT INTO `yg_setting` VALUES ('18', 'mobile', 'http://demo.hjli.cn/v7.0/mobile/club/');
INSERT INTO `yg_setting` VALUES ('27', 'seo_keywords_show', '');
INSERT INTO `yg_setting` VALUES ('27', 'page_srec', '10');
INSERT INTO `yg_setting` VALUES ('27', 'page_shits', '10');
INSERT INTO `yg_setting` VALUES ('27', 'max_width', '800');
INSERT INTO `yg_setting` VALUES ('27', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('27', 'page_comment', '0');
INSERT INTO `yg_setting` VALUES ('27', 'page_srecimg', '4');
INSERT INTO `yg_setting` VALUES ('27', 'page_srelate', '10');
INSERT INTO `yg_setting` VALUES ('27', 'page_lhits', '10');
INSERT INTO `yg_setting` VALUES ('27', 'page_lrec', '10');
INSERT INTO `yg_setting` VALUES ('27', 'page_lrecimg', '4');
INSERT INTO `yg_setting` VALUES ('27', 'show_lcat', '1');
INSERT INTO `yg_setting` VALUES ('27', 'page_child', '6');
INSERT INTO `yg_setting` VALUES ('27', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('27', 'page_ihits', '10');
INSERT INTO `yg_setting` VALUES ('27', 'page_irecimg', '6');
INSERT INTO `yg_setting` VALUES ('27', 'show_icat', '1');
INSERT INTO `yg_setting` VALUES ('27', 'page_icat', '6');
INSERT INTO `yg_setting` VALUES ('27', 'page_islide', '3');
INSERT INTO `yg_setting` VALUES ('27', 'swfu', '2');
INSERT INTO `yg_setting` VALUES ('27', 'level', '推荐文章|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `yg_setting` VALUES ('27', 'fulltext', '1');
INSERT INTO `yg_setting` VALUES ('27', 'split', '0');
INSERT INTO `yg_setting` VALUES ('27', 'keylink', '1');
INSERT INTO `yg_setting` VALUES ('27', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('27', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'edit_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'refresh_limit', '3600');
INSERT INTO `yg_setting` VALUES ('group-8', 'day_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-8', 'hour_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-8', 'add_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'delete', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'vemail', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'moduleids', '23,21,24,16,25');
INSERT INTO `yg_setting` VALUES ('group-8', 'link_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'news_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'page_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-8', 'honor_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-8', 'kf', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'stats', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'map', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'style', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'main_d', '0,1,2,7');
INSERT INTO `yg_setting` VALUES ('group-8', 'main_c', '0,1,2,4,5,6,7');
INSERT INTO `yg_setting` VALUES ('group-8', 'home_main', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `yg_setting` VALUES ('group-8', 'side_d', '0,1,2,4,6');
INSERT INTO `yg_setting` VALUES ('group-8', 'home_side', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-8', 'menu_d', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-8', 'home_menu', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'home', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'styleid', '2');
INSERT INTO `yg_setting` VALUES ('group-8', 'homepage', '1');
INSERT INTO `yg_setting` VALUES ('group-8', 'type_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-8', 'price_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-8', 'inquiry_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-8', 'message_limit', '100');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'email', '');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'order', '1');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'name', '支付宝');
INSERT INTO `yg_setting` VALUES ('pay-alipay', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'order', '2');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'name', '支付宝');
INSERT INTO `yg_setting` VALUES ('pay-aliwap', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'percent', '2');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'appid', '');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'order', '3');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'name', '微信支付');
INSERT INTO `yg_setting` VALUES ('pay-weixin', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'order', '4');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'name', '财付通');
INSERT INTO `yg_setting` VALUES ('pay-tenpay', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'cert', '');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'order', '5');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'name', '中国银联');
INSERT INTO `yg_setting` VALUES ('pay-upay', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'order', '6');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'name', '网银在线');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-yeepay', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-yeepay', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-yeepay', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-yeepay', 'order', '7');
INSERT INTO `yg_setting` VALUES ('pay-yeepay', 'name', '易宝支付');
INSERT INTO `yg_setting` VALUES ('pay-yeepay', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'cert', '');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'order', '8');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'name', '快钱支付');
INSERT INTO `yg_setting` VALUES ('pay-kq99bill', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-chinapay', 'percent', '1');
INSERT INTO `yg_setting` VALUES ('pay-chinapay', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-chinapay', 'order', '9');
INSERT INTO `yg_setting` VALUES ('pay-chinapay', 'name', '银联在线');
INSERT INTO `yg_setting` VALUES ('pay-chinapay', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'currency', 'USD');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'keycode', '');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'notify', '');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'partnerid', '');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'order', '10');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'name', '贝宝');
INSERT INTO `yg_setting` VALUES ('pay-paypal', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('oauth-netease', 'id', '');
INSERT INTO `yg_setting` VALUES ('oauth-qq', 'key', '');
INSERT INTO `yg_setting` VALUES ('oauth-qq', 'id', '');
INSERT INTO `yg_setting` VALUES ('oauth-qq', 'order', '1');
INSERT INTO `yg_setting` VALUES ('oauth-qq', 'name', 'QQ登录');
INSERT INTO `yg_setting` VALUES ('oauth-qq', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('oauth-sina', 'sync', '0');
INSERT INTO `yg_setting` VALUES ('oauth-sina', 'key', '');
INSERT INTO `yg_setting` VALUES ('oauth-sina', 'id', '');
INSERT INTO `yg_setting` VALUES ('oauth-sina', 'order', '2');
INSERT INTO `yg_setting` VALUES ('oauth-sina', 'name', '新浪微博');
INSERT INTO `yg_setting` VALUES ('oauth-sina', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('oauth-baidu', 'key', '');
INSERT INTO `yg_setting` VALUES ('oauth-baidu', 'id', '');
INSERT INTO `yg_setting` VALUES ('oauth-baidu', 'order', '3');
INSERT INTO `yg_setting` VALUES ('oauth-baidu', 'name', '百度');
INSERT INTO `yg_setting` VALUES ('oauth-baidu', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('oauth-netease', 'order', '4');
INSERT INTO `yg_setting` VALUES ('oauth-netease', 'name', '网易通行证');
INSERT INTO `yg_setting` VALUES ('oauth-netease', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('oauth-wechat', 'key', '');
INSERT INTO `yg_setting` VALUES ('oauth-wechat', 'id', '');
INSERT INTO `yg_setting` VALUES ('oauth-wechat', 'order', '5');
INSERT INTO `yg_setting` VALUES ('oauth-wechat', 'name', '微信');
INSERT INTO `yg_setting` VALUES ('oauth-wechat', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('oauth-taobao', 'id', '');
INSERT INTO `yg_setting` VALUES ('oauth-taobao', 'order', '6');
INSERT INTO `yg_setting` VALUES ('oauth-taobao', 'name', '淘宝');
INSERT INTO `yg_setting` VALUES ('oauth-taobao', 'enable', '0');
INSERT INTO `yg_setting` VALUES ('weixin', 'bind', '点击可绑定会员帐号、查看会员信息、收发站内信件、管理我的订单等服务内容');
INSERT INTO `yg_setting` VALUES ('weixin', 'auto', '');
INSERT INTO `yg_setting` VALUES ('weixin', 'weixin', 'gzfytd');
INSERT INTO `yg_setting` VALUES ('weixin', 'welcome', '感谢您的关注，请点击菜单查看相应的服务');
INSERT INTO `yg_setting` VALUES ('weixin-menu', 'menu', 'a:3:{i:0;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"最新\";s:3:\"key\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"资讯\";s:3:\"key\";s:7:\"V_mid21\";}i:2;a:2:{s:4:\"name\";s:6:\"供应\";s:3:\"key\";s:6:\"V_mid5\";}i:3;a:2:{s:4:\"name\";s:6:\"求购\";s:3:\"key\";s:6:\"V_mid6\";}i:4;a:2:{s:4:\"name\";s:6:\"商城\";s:3:\"key\";s:7:\"V_mid16\";}i:5;a:2:{s:4:\"name\";s:6:\"招商\";s:3:\"key\";s:7:\"V_mid22\";}}i:1;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"会员\";s:3:\"key\";s:8:\"V_member\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}i:2;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"更多\";s:3:\"key\";s:21:\"http://dt.com/mobile/\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}}');
INSERT INTO `yg_setting` VALUES ('group-1', 'listorder', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'type', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'edit_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'refresh_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'day_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'hour_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'add_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'delete', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'resume', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'vemail', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'moduleids', '16,5,6,17,7,8,21,22,13,9,10,12,14,15,18');
INSERT INTO `yg_setting` VALUES ('group-1', 'link_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'honor_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'page_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'news_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'kf', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'stats', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'map', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'style', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'main_d', '1,5');
INSERT INTO `yg_setting` VALUES ('group-1', 'main_c', '1,5');
INSERT INTO `yg_setting` VALUES ('group-1', 'home_main', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'side_d', '0,3,6');
INSERT INTO `yg_setting` VALUES ('group-1', 'side_c', '0,3,6');
INSERT INTO `yg_setting` VALUES ('group-1', 'home_side', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'menu_d', '0,6,7,11');
INSERT INTO `yg_setting` VALUES ('group-1', 'menu_c', '0,6,7,11');
INSERT INTO `yg_setting` VALUES ('group-1', 'home_menu', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'home', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'styleid', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'type_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'price_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'inquiry_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'message_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'promo_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'express_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'address_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'alert_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'favorite_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'friend_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'inbox_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'spread', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'sms', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'sendmail', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'trade_order', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'group_order', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'mail', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'ask', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'cash', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'question', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'captcha', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'check', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'uploadpt', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'uploadcredit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'uploadday', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'uploadlimit', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'uploadsize', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-1', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('group-1', 'grade', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'biz', '1');
INSERT INTO `yg_setting` VALUES ('group-1', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'discount', '100');
INSERT INTO `yg_setting` VALUES ('group-1', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-1', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'listorder', '2');
INSERT INTO `yg_setting` VALUES ('group-2', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'type', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'edit_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'refresh_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'day_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'hour_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'add_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'copy', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'delete', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'vemail', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'moduleids', '6');
INSERT INTO `yg_setting` VALUES ('group-2', 'link_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'honor_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'page_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'news_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'kf', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'stats', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'map', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'style', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'main_d', '5');
INSERT INTO `yg_setting` VALUES ('group-2', 'main_c', '5');
INSERT INTO `yg_setting` VALUES ('group-2', 'home_main', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'side_d', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'side_c', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'home_side', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'menu_d', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'menu_c', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'home_menu', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'home', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'styleid', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'type_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'price_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'inquiry_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'message_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'promo_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'express_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'address_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'alert_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'favorite_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'friend_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'inbox_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-2', 'chat', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'ad', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'group_order', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'spread', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'trade_order', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'sendmail', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'sms', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'mail', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'ask', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'cash', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'question', '1');
INSERT INTO `yg_setting` VALUES ('group-2', 'captcha', '1');
INSERT INTO `yg_setting` VALUES ('group-2', 'check', '1');
INSERT INTO `yg_setting` VALUES ('group-2', 'uploadpt', '1');
INSERT INTO `yg_setting` VALUES ('group-2', 'uploadcredit', '10');
INSERT INTO `yg_setting` VALUES ('group-2', 'uploadday', '10');
INSERT INTO `yg_setting` VALUES ('group-2', 'uploadlimit', '2');
INSERT INTO `yg_setting` VALUES ('group-2', 'uploadsize', '200');
INSERT INTO `yg_setting` VALUES ('group-2', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-2', 'upload', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'editor', 'Basic');
INSERT INTO `yg_setting` VALUES ('group-2', 'grade', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'discount', '100');
INSERT INTO `yg_setting` VALUES ('group-2', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-2', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'listorder', '3');
INSERT INTO `yg_setting` VALUES ('group-3', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'type', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'refresh_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'day_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-3', 'edit_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'hour_limit', '1');
INSERT INTO `yg_setting` VALUES ('group-3', 'add_limit', '30');
INSERT INTO `yg_setting` VALUES ('group-3', 'copy', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'delete', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'vemail', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'moduleids', '5,6,8,22,9');
INSERT INTO `yg_setting` VALUES ('group-3', 'link_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'honor_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'page_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'news_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'kf', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'stats', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'map', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'style', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'main_d', '5');
INSERT INTO `yg_setting` VALUES ('group-3', 'main_c', '5');
INSERT INTO `yg_setting` VALUES ('group-3', 'home_main', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'side_d', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'side_c', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'home_side', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'menu_d', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'menu_c', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'home_menu', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'home', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'styleid', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'type_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'price_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-3', 'inquiry_limit', '30');
INSERT INTO `yg_setting` VALUES ('group-3', 'message_limit', '30');
INSERT INTO `yg_setting` VALUES ('group-3', 'promo_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'express_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'address_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'alert_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'favorite_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'friend_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'inbox_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-3', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-3', 'ad', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'spread', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'group_order', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'trade_order', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'sendmail', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'sms', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'mail', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'ask', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'cash', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'question', '1');
INSERT INTO `yg_setting` VALUES ('group-3', 'captcha', '1');
INSERT INTO `yg_setting` VALUES ('group-3', 'check', '1');
INSERT INTO `yg_setting` VALUES ('group-3', 'uploadpt', '1');
INSERT INTO `yg_setting` VALUES ('group-3', 'uploadcredit', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'uploadday', '10');
INSERT INTO `yg_setting` VALUES ('group-3', 'uploadlimit', '5');
INSERT INTO `yg_setting` VALUES ('group-3', 'uploadsize', '500');
INSERT INTO `yg_setting` VALUES ('group-3', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-3', 'upload', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'editor', 'Basic');
INSERT INTO `yg_setting` VALUES ('group-3', 'grade', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'discount', '100');
INSERT INTO `yg_setting` VALUES ('group-3', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-3', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'listorder', '4');
INSERT INTO `yg_setting` VALUES ('group-4', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'type', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'edit_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'refresh_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'day_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'hour_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'add_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'copy', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'delete', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'vemail', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'moduleids', '6');
INSERT INTO `yg_setting` VALUES ('group-4', 'link_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'honor_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'page_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'news_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'kf', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'stats', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'map', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'style', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'main_c', '5');
INSERT INTO `yg_setting` VALUES ('group-4', 'main_d', '5');
INSERT INTO `yg_setting` VALUES ('group-4', 'home_main', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'side_d', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'menu_c', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'menu_d', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'side_c', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'home_side', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'home_menu', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'home', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'styleid', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'type_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'price_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'inquiry_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'message_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'promo_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'express_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'address_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'alert_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'favorite_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'friend_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'inbox_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-4', 'trade_order', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'group_order', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'spread', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'ad', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-4', 'sendmail', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'sms', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'mail', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'ask', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'cash', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'question', '1');
INSERT INTO `yg_setting` VALUES ('group-4', 'captcha', '1');
INSERT INTO `yg_setting` VALUES ('group-4', 'check', '1');
INSERT INTO `yg_setting` VALUES ('group-4', 'uploadpt', '1');
INSERT INTO `yg_setting` VALUES ('group-4', 'uploadcredit', '5');
INSERT INTO `yg_setting` VALUES ('group-4', 'uploadday', '10');
INSERT INTO `yg_setting` VALUES ('group-4', 'uploadlimit', '5');
INSERT INTO `yg_setting` VALUES ('group-4', 'uploadsize', '500');
INSERT INTO `yg_setting` VALUES ('group-4', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-4', 'upload', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'editor', 'Basic');
INSERT INTO `yg_setting` VALUES ('group-4', 'grade', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'discount', '100');
INSERT INTO `yg_setting` VALUES ('group-4', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-4', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'edit_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-5', 'refresh_limit', '43200');
INSERT INTO `yg_setting` VALUES ('group-5', 'day_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-5', 'hour_limit', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'add_limit', '60');
INSERT INTO `yg_setting` VALUES ('group-5', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'delete', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'vemail', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'resume', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'moduleids', '10,12,18');
INSERT INTO `yg_setting` VALUES ('group-5', 'link_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'honor_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'page_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'news_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'kf', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'stats', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'map', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'style', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'main_d', '5');
INSERT INTO `yg_setting` VALUES ('group-5', 'main_c', '5');
INSERT INTO `yg_setting` VALUES ('group-5', 'home_main', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'side_d', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'side_c', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'home_side', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'menu_d', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'menu_c', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'home_menu', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'home', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'styleid', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'type_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-5', 'price_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'inquiry_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-5', 'message_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-5', 'promo_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'express_limit', '-1');
INSERT INTO `yg_setting` VALUES ('group-5', 'address_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-6', 'listorder', '6');
INSERT INTO `yg_setting` VALUES ('group-6', 'reg', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'type', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'day_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-6', 'refresh_limit', '21600');
INSERT INTO `yg_setting` VALUES ('group-6', 'edit_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'hour_limit', '2');
INSERT INTO `yg_setting` VALUES ('group-6', 'add_limit', '60');
INSERT INTO `yg_setting` VALUES ('group-6', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'delete', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'vemail', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'moduleids', '16,5,6,17,7,8,22,13,9,10,12');
INSERT INTO `yg_setting` VALUES ('group-6', 'link_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-6', 'honor_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-6', 'page_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-6', 'news_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-6', 'kf', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'map', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'stats', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'style', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'main_d', '0,1,2');
INSERT INTO `yg_setting` VALUES ('group-6', 'main_c', '0,1,2,3,4,5,6');
INSERT INTO `yg_setting` VALUES ('group-6', 'home_main', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `yg_setting` VALUES ('group-6', 'side_d', '0,2,4,6');
INSERT INTO `yg_setting` VALUES ('group-6', 'home_menu', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11');
INSERT INTO `yg_setting` VALUES ('group-6', 'menu_d', '0,1,2,3,4,6,7');
INSERT INTO `yg_setting` VALUES ('group-6', 'home_side', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'home', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'styleid', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'type_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-6', 'homepage', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'price_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-6', 'inquiry_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-6', 'message_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-6', 'promo_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-6', 'express_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-6', 'address_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-6', 'alert_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-6', 'favorite_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-6', 'friend_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-6', 'inbox_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-6', 'group_order', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'spread', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'trade_order', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'sendmail', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'sms', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'mail', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'ask', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'cash', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'question', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'captcha', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'check', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'uploadday', '50');
INSERT INTO `yg_setting` VALUES ('group-6', 'uploadcredit', '2');
INSERT INTO `yg_setting` VALUES ('group-6', 'uploadpt', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'uploadlimit', '5');
INSERT INTO `yg_setting` VALUES ('group-6', 'uploadsize', '');
INSERT INTO `yg_setting` VALUES ('group-6', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-6', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('group-6', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'grade', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'biz', '1');
INSERT INTO `yg_setting` VALUES ('group-6', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'discount', '100');
INSERT INTO `yg_setting` VALUES ('group-6', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-6', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'edit_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'refresh_limit', '3600');
INSERT INTO `yg_setting` VALUES ('group-10', 'day_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-10', 'hour_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-7', 'edit_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'refresh_limit', '3600');
INSERT INTO `yg_setting` VALUES ('group-7', 'day_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-7', 'hour_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-7', 'add_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'delete', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'vemail', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'moduleids', '16,17,10,12,14,18');
INSERT INTO `yg_setting` VALUES ('group-7', 'link_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'honor_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'page_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-7', 'news_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'kf', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'stats', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'map', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'style', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'main_d', '0,1,2,7');
INSERT INTO `yg_setting` VALUES ('group-7', 'main_c', '0,1,2,4,5,6,7');
INSERT INTO `yg_setting` VALUES ('group-7', 'home_main', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'home_side', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `yg_setting` VALUES ('group-7', 'side_d', '0,1,2,4,6');
INSERT INTO `yg_setting` VALUES ('group-7', 'menu_d', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-7', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-7', 'home_menu', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'home', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'styleid', '2');
INSERT INTO `yg_setting` VALUES ('group-7', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'type_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-7', 'price_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-7', 'inquiry_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-7', 'address_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-7', 'express_limit', '10');
INSERT INTO `yg_setting` VALUES ('destoon', 'backtime', '1588559470');
INSERT INTO `yg_setting` VALUES ('1', 'smtp_port', '25');
INSERT INTO `yg_setting` VALUES ('1', 'mail_delimiter', '1');
INSERT INTO `yg_setting` VALUES ('1', 'mail_type', 'smtp');
INSERT INTO `yg_setting` VALUES ('1', 'water_fontcolor', '#000000');
INSERT INTO `yg_setting` VALUES ('1', 'water_fontsize', '20');
INSERT INTO `yg_setting` VALUES ('1', 'water_font', 'simhei.ttf');
INSERT INTO `yg_setting` VALUES ('1', 'water_text', 'www.yige-tech.com');
INSERT INTO `yg_setting` VALUES ('1', 'water_jpeg_quality', '90');
INSERT INTO `yg_setting` VALUES ('1', 'water_transition', '60');
INSERT INTO `yg_setting` VALUES ('1', 'water_mark', 'logo.jpg');
INSERT INTO `yg_setting` VALUES ('1', 'max_image', '800');
INSERT INTO `yg_setting` VALUES ('1', 'thumb_title', '0');
INSERT INTO `yg_setting` VALUES ('1', 'thumb_album', '0');
INSERT INTO `yg_setting` VALUES ('1', 'middle_h', '300');
INSERT INTO `yg_setting` VALUES ('1', 'middle_w', '400');
INSERT INTO `yg_setting` VALUES ('1', 'water_middle', '0');
INSERT INTO `yg_setting` VALUES ('1', 'water_com', '1');
INSERT INTO `yg_setting` VALUES ('1', 'gif_ani', '1');
INSERT INTO `yg_setting` VALUES ('1', 'bmp_jpg', '1');
INSERT INTO `yg_setting` VALUES ('1', 'water_pos', '9');
INSERT INTO `yg_setting` VALUES ('1', 'water_min_wh', '180');
INSERT INTO `yg_setting` VALUES ('1', 'water_margin', '10');
INSERT INTO `yg_setting` VALUES ('1', 'water_type', '2');
INSERT INTO `yg_setting` VALUES ('1', 'file_my', 'my.php');
INSERT INTO `yg_setting` VALUES ('1', 'file_login', 'login.php');
INSERT INTO `yg_setting` VALUES ('1', 'file_register', 'register.php');
INSERT INTO `yg_setting` VALUES ('1', 'defend_proxy', '0');
INSERT INTO `yg_setting` VALUES ('1', 'defend_reload', '0');
INSERT INTO `yg_setting` VALUES ('1', 'defend_cc', '0');
INSERT INTO `yg_setting` VALUES ('26', 'seo_keywords_list', '');
INSERT INTO `yg_setting` VALUES ('26', 'seo_description_list', '');
INSERT INTO `yg_setting` VALUES ('26', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `yg_setting` VALUES ('26', 'seo_title_list', '{分类名称}{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}{分类SEO标题}{模块名称}{网站名称}{页码}');
INSERT INTO `yg_setting` VALUES ('26', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `yg_setting` VALUES ('26', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `yg_setting` VALUES ('26', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `yg_setting` VALUES ('26', 'htm_item_urlid', '1');
INSERT INTO `yg_setting` VALUES ('26', 'php_item_urlid', '0');
INSERT INTO `yg_setting` VALUES ('26', 'htm_item_prefix', 'mall_info_');
INSERT INTO `yg_setting` VALUES ('1', 'safe_domain', '');
INSERT INTO `yg_setting` VALUES ('1', 'check_referer', '1');
INSERT INTO `yg_setting` VALUES ('1', 'uploaddir', 'Ym/d');
INSERT INTO `yg_setting` VALUES ('1', 'uploadsize', '20480');
INSERT INTO `yg_setting` VALUES ('1', 'uploadtype', 'jpg|jpeg|png|gif|bmp|mp4|flv|rar|zip|pdf|doc|docx|xls|xlsx|ppt|ppts');
INSERT INTO `yg_setting` VALUES ('1', 'uploadlog', '1');
INSERT INTO `yg_setting` VALUES ('1', 'anticopy', '0');
INSERT INTO `yg_setting` VALUES ('1', 'ip_login', '0');
INSERT INTO `yg_setting` VALUES ('1', 'login_log', '0');
INSERT INTO `yg_setting` VALUES ('1', 'admin_log', '1');
INSERT INTO `yg_setting` VALUES ('1', 'admin_online', '1');
INSERT INTO `yg_setting` VALUES ('1', 'md5_pass', '1');
INSERT INTO `yg_setting` VALUES ('1', 'captcha_admin', '0');
INSERT INTO `yg_setting` VALUES ('1', 'captcha_cn', '0');
INSERT INTO `yg_setting` VALUES ('1', 'captcha_chars', '');
INSERT INTO `yg_setting` VALUES ('1', 'check_hour', '');
INSERT INTO `yg_setting` VALUES ('1', 'admin_hour', '');
INSERT INTO `yg_setting` VALUES ('16', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('16', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('16', 'htm_list_prefix', 'mall_list_');
INSERT INTO `yg_setting` VALUES ('16', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('16', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('16', 'max_width', '1000');
INSERT INTO `yg_setting` VALUES ('16', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('16', 'page_inew', '12');
INSERT INTO `yg_setting` VALUES ('16', 'page_irec', '5');
INSERT INTO `yg_setting` VALUES ('16', 'page_subcat', '5');
INSERT INTO `yg_setting` VALUES ('16', 'checkorder', '0');
INSERT INTO `yg_setting` VALUES ('16', 'swfu', '1');
INSERT INTO `yg_setting` VALUES ('16', 'level', '推荐商品');
INSERT INTO `yg_setting` VALUES ('16', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('16', 'split', '0');
INSERT INTO `yg_setting` VALUES ('26', 'show_html', '0');
INSERT INTO `yg_setting` VALUES ('26', 'php_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('26', 'htm_list_urlid', '0');
INSERT INTO `yg_setting` VALUES ('26', 'htm_list_prefix', 'mall_list_');
INSERT INTO `yg_setting` VALUES ('26', 'list_html', '0');
INSERT INTO `yg_setting` VALUES ('26', 'index_html', '0');
INSERT INTO `yg_setting` VALUES ('26', 'hits', '1');
INSERT INTO `yg_setting` VALUES ('26', 'max_width', '1000');
INSERT INTO `yg_setting` VALUES ('26', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('26', 'page_inew', '12');
INSERT INTO `yg_setting` VALUES ('26', 'page_irec', '5');
INSERT INTO `yg_setting` VALUES ('26', 'page_subcat', '5');
INSERT INTO `yg_setting` VALUES ('26', 'checkorder', '0');
INSERT INTO `yg_setting` VALUES ('26', 'swfu', '1');
INSERT INTO `yg_setting` VALUES ('26', 'level', '推荐商品');
INSERT INTO `yg_setting` VALUES ('26', 'fulltext', '0');
INSERT INTO `yg_setting` VALUES ('26', 'split', '0');
INSERT INTO `yg_setting` VALUES ('26', 'keylink', '0');
INSERT INTO `yg_setting` VALUES ('26', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('26', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('26', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('26', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `yg_setting` VALUES ('26', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,brand,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,amount,orders,comments');
INSERT INTO `yg_setting` VALUES ('26', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('26', 'introduce_length', '0');
INSERT INTO `yg_setting` VALUES ('26', 'thumb_height', '200');
INSERT INTO `yg_setting` VALUES ('26', 'thumb_width', '200');
INSERT INTO `yg_setting` VALUES ('26', 'template_view', '');
INSERT INTO `yg_setting` VALUES ('26', 'template_compare', '');
INSERT INTO `yg_setting` VALUES ('26', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('26', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('26', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('26', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('26', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('weixin', 'aeskey', 'X6PXhHDo35CFquJUXCFVmdNlRQ83UFW3FqZMGv5lwrS');
INSERT INTO `yg_setting` VALUES ('weixin', 'apptoken', 'xa4t4hcspcitem1vsr5tk13a11c4r2zh');
INSERT INTO `yg_setting` VALUES ('weixin', 'appsecret', 'c1ace745487fb191046efd811e6547a7');
INSERT INTO `yg_setting` VALUES ('weixin', 'appid', 'wx4f168a1f4d668ef4');
INSERT INTO `yg_setting` VALUES ('weixin', 'credit', '10');
INSERT INTO `yg_setting` VALUES ('1', 'admin_ip', '');
INSERT INTO `yg_setting` VALUES ('1', 'admin_area', '');
INSERT INTO `yg_setting` VALUES ('1', 'remote_url', '');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_path', '');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_save', '0');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_pasv', '1');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_ssl', '0');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_pass', '');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_user', '');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_port', '21');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_host', '');
INSERT INTO `yg_setting` VALUES ('1', 'ftp_remote', '0');
INSERT INTO `yg_setting` VALUES ('1', 'max_len', '50000');
INSERT INTO `yg_setting` VALUES ('1', 'schcate_limit', '10');
INSERT INTO `yg_setting` VALUES ('1', 'pagesize', '20');
INSERT INTO `yg_setting` VALUES ('1', 'pushtime', '10');
INSERT INTO `yg_setting` VALUES ('1', 'online', '1200');
INSERT INTO `yg_setting` VALUES ('1', 'search_limit', '1');
INSERT INTO `yg_setting` VALUES ('1', 'max_kw', '32');
INSERT INTO `yg_setting` VALUES ('1', 'min_kw', '3');
INSERT INTO `yg_setting` VALUES ('1', 'search_check_kw', '0');
INSERT INTO `yg_setting` VALUES ('1', 'search_kw', '1');
INSERT INTO `yg_setting` VALUES ('1', 'save_draft', '0');
INSERT INTO `yg_setting` VALUES ('1', 'search_tips', '1');
INSERT INTO `yg_setting` VALUES ('1', 'anti_spam', '1');
INSERT INTO `yg_setting` VALUES ('1', 'log_credit', '1');
INSERT INTO `yg_setting` VALUES ('1', 'pages_mode', '0');
INSERT INTO `yg_setting` VALUES ('1', 'lazy', '0');
INSERT INTO `yg_setting` VALUES ('1', 'gzip_enable', '0');
INSERT INTO `yg_setting` VALUES ('1', 'cache_hits', '0');
INSERT INTO `yg_setting` VALUES ('1', 'cache_search', '0');
INSERT INTO `yg_setting` VALUES ('1', 'task_item', '86400');
INSERT INTO `yg_setting` VALUES ('1', 'task_list', '1800');
INSERT INTO `yg_setting` VALUES ('1', 'task_index', '600');
INSERT INTO `yg_setting` VALUES ('1', 'log_404', '0');
INSERT INTO `yg_setting` VALUES ('1', 'pcharset', 'utf-8');
INSERT INTO `yg_setting` VALUES ('1', 'search_rewrite', '0');
INSERT INTO `yg_setting` VALUES ('1', 'com_https', '0');
INSERT INTO `yg_setting` VALUES ('1', 'com_www', '0');
INSERT INTO `yg_setting` VALUES ('1', 'rewrite', '1');
INSERT INTO `yg_setting` VALUES ('1', 'index_html', '1');
INSERT INTO `yg_setting` VALUES ('1', 'file_ext', 'html');
INSERT INTO `yg_setting` VALUES ('1', 'index', 'index');
INSERT INTO `yg_setting` VALUES ('1', 'seo_description', '香百庭酒业');
INSERT INTO `yg_setting` VALUES ('1', 'seo_keywords', '香百庭酒业');
INSERT INTO `yg_setting` VALUES ('3', 'ad_currency', 'money');
INSERT INTO `yg_setting` VALUES ('3', 'ad_view', '1');
INSERT INTO `yg_setting` VALUES ('3', 'ad_buy', '1');
INSERT INTO `yg_setting` VALUES ('3', 'ad_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'ad_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'spread_currency', 'money');
INSERT INTO `yg_setting` VALUES ('3', 'spread_list', '1');
INSERT INTO `yg_setting` VALUES ('3', 'spread_check', '1');
INSERT INTO `yg_setting` VALUES ('3', 'spread_max', '10');
INSERT INTO `yg_setting` VALUES ('3', 'spread_month', '6');
INSERT INTO `yg_setting` VALUES ('3', 'spread_step', '100');
INSERT INTO `yg_setting` VALUES ('3', 'spread_price', '200');
INSERT INTO `yg_setting` VALUES ('3', 'spread_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_adr', '77@aprcc7byyvzxyi4i');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_ios', '77@d9xuz1ukp1goudwh');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_ajax', '1');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_goto', '1');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_pid', '14');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_sitename', '香百庭酒业');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_domain', '');
INSERT INTO `yg_setting` VALUES ('3', 'mobile_enable', '1');
INSERT INTO `yg_setting` VALUES ('3', 'show_url', '1');
INSERT INTO `yg_setting` VALUES ('3', 'list_url', '1');
INSERT INTO `yg_setting` VALUES ('3', 'weixin', '1');
INSERT INTO `yg_setting` VALUES ('3', 'oauth', '0');
INSERT INTO `yg_setting` VALUES ('1', 'seo_title', '香百庭酒业');
INSERT INTO `yg_setting` VALUES ('1', 'seo_delimiter', '_');
INSERT INTO `yg_setting` VALUES ('1', 'im_skype', '0');
INSERT INTO `yg_setting` VALUES ('1', 'im_ali', '1');
INSERT INTO `yg_setting` VALUES ('1', 'im_wx', '1');
INSERT INTO `yg_setting` VALUES ('1', 'im_qq', '1');
INSERT INTO `yg_setting` VALUES ('1', 'im_web', '1');
INSERT INTO `yg_setting` VALUES ('1', 'admin_left', '218');
INSERT INTO `yg_setting` VALUES ('1', 'credit_unit', '点');
INSERT INTO `yg_setting` VALUES ('1', 'quick_pay', '200');
INSERT INTO `yg_setting` VALUES ('16', 'keylink', '0');
INSERT INTO `yg_setting` VALUES ('16', 'clear_link', '0');
INSERT INTO `yg_setting` VALUES ('16', 'save_remotepic', '0');
INSERT INTO `yg_setting` VALUES ('16', 'cat_property', '1');
INSERT INTO `yg_setting` VALUES ('16', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,brand,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,amount,orders,comments');
INSERT INTO `yg_setting` VALUES ('16', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `yg_setting` VALUES ('16', 'editor', 'Default');
INSERT INTO `yg_setting` VALUES ('16', 'introduce_length', '0');
INSERT INTO `yg_setting` VALUES ('16', 'thumb_height', '0');
INSERT INTO `yg_setting` VALUES ('16', 'thumb_width', '0');
INSERT INTO `yg_setting` VALUES ('16', 'template_view', '');
INSERT INTO `yg_setting` VALUES ('16', 'template_compare', '');
INSERT INTO `yg_setting` VALUES ('16', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('16', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('16', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('16', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('16', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('1', 'max_cart', '50');
INSERT INTO `yg_setting` VALUES ('1', 'credit_name', '积分');
INSERT INTO `yg_setting` VALUES ('1', 'money_sign', '￥');
INSERT INTO `yg_setting` VALUES ('1', 'money_unit', '元');
INSERT INTO `yg_setting` VALUES ('1', 'money_name', '资金');
INSERT INTO `yg_setting` VALUES ('1', 'city', '1');
INSERT INTO `yg_setting` VALUES ('1', 'city_ip', '1');
INSERT INTO `yg_setting` VALUES ('1', 'close_reason', '网站维护中，请稍候访问...');
INSERT INTO `yg_setting` VALUES ('1', 'close', '0');
INSERT INTO `yg_setting` VALUES ('1', 'icpno', '');
INSERT INTO `yg_setting` VALUES ('1', 'copyright', '(c)2020 SYSTEM All Rights Reserved');
INSERT INTO `yg_setting` VALUES ('group-7', 'message_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-7', 'promo_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-7', 'alert_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-7', 'favorite_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-7', 'friend_limit', '200');
INSERT INTO `yg_setting` VALUES ('group-7', 'inbox_limit', '500');
INSERT INTO `yg_setting` VALUES ('group-7', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'spread', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'group_order', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'trade_order', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'sendmail', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'sms', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'mail', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'ask', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'cash', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'question', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'captcha', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'check', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'uploadpt', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'uploadcredit', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'uploadday', '100');
INSERT INTO `yg_setting` VALUES ('group-7', 'uploadlimit', '10');
INSERT INTO `yg_setting` VALUES ('group-7', 'uploadsize', '');
INSERT INTO `yg_setting` VALUES ('group-7', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-7', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('group-7', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'grade', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-7', 'fee', '2000');
INSERT INTO `yg_setting` VALUES ('group-7', 'fee_mode', '1');
INSERT INTO `yg_setting` VALUES ('group-7', 'type', '1');
INSERT INTO `yg_setting` VALUES ('1', 'telephone', '');
INSERT INTO `yg_setting` VALUES ('group-5', 'alert_limit', '3');
INSERT INTO `yg_setting` VALUES ('group-5', 'favorite_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-5', 'friend_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-5', 'inbox_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-5', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'spread', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'group_order', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'trade_order', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'sendmail', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'sms', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'mail', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'ask', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'cash', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'question', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'captcha', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'check', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'uploadpt', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'uploadcredit', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'uploadday', '20');
INSERT INTO `yg_setting` VALUES ('group-5', 'uploadlimit', '5');
INSERT INTO `yg_setting` VALUES ('group-5', 'uploadsize', '');
INSERT INTO `yg_setting` VALUES ('group-5', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-5', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'editor', 'Simple');
INSERT INTO `yg_setting` VALUES ('group-5', 'reg', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'grade', '1');
INSERT INTO `yg_setting` VALUES ('group-5', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'discount', '80');
INSERT INTO `yg_setting` VALUES ('group-5', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-5', 'type', '0');
INSERT INTO `yg_setting` VALUES ('pay-chinabank', 'percent', '0');
INSERT INTO `yg_setting` VALUES ('oauth-netease', 'key', '');
INSERT INTO `yg_setting` VALUES ('oauth-taobao', 'key', '');
INSERT INTO `yg_setting` VALUES ('2', 'send_types', '平邮|EMS|顺丰快递|申通快递|圆通快递|中通快递|国通快递|宅急送|韵达快递|天天快递|如风达|百世汇通|全峰快递|快捷快递|其它');
INSERT INTO `yg_setting` VALUES ('2', 'credit_less', '1');
INSERT INTO `yg_setting` VALUES ('2', 'credit_edit', '10');
INSERT INTO `yg_setting` VALUES ('2', 'credit_login', '1');
INSERT INTO `yg_setting` VALUES ('2', 'credit_user', '20');
INSERT INTO `yg_setting` VALUES ('2', 'credit_ip', '2');
INSERT INTO `yg_setting` VALUES ('2', 'credit_maxip', '50');
INSERT INTO `yg_setting` VALUES ('2', 'credit_charge', '1');
INSERT INTO `yg_setting` VALUES ('2', 'credit_add_credit', '2');
INSERT INTO `yg_setting` VALUES ('2', 'credit_del_credit', '5');
INSERT INTO `yg_setting` VALUES ('2', 'credit_add_news', '2');
INSERT INTO `yg_setting` VALUES ('2', 'credit_del_news', '5');
INSERT INTO `yg_setting` VALUES ('2', 'credit_add_page', '2');
INSERT INTO `yg_setting` VALUES ('2', 'credit_del_page', '5');
INSERT INTO `yg_setting` VALUES ('2', 'credit_buy', '30|100|500|1000');
INSERT INTO `yg_setting` VALUES ('2', 'credit_price', '5|10|45|85');
INSERT INTO `yg_setting` VALUES ('2', 'credit_exchange', '0');
INSERT INTO `yg_setting` VALUES ('2', 'ex_type', 'PW');
INSERT INTO `yg_setting` VALUES ('2', 'ex_host', 'localhost');
INSERT INTO `yg_setting` VALUES ('2', 'ex_user', 'root');
INSERT INTO `yg_setting` VALUES ('2', 'ex_pass', '');
INSERT INTO `yg_setting` VALUES ('2', 'ex_data', '');
INSERT INTO `yg_setting` VALUES ('2', 'ex_prex', '');
INSERT INTO `yg_setting` VALUES ('2', 'ex_fdnm', '');
INSERT INTO `yg_setting` VALUES ('2', 'ex_rate', '');
INSERT INTO `yg_setting` VALUES ('2', 'ex_name', '');
INSERT INTO `yg_setting` VALUES ('2', 'passport', '0');
INSERT INTO `yg_setting` VALUES ('2', 'passport_charset', 'gbk');
INSERT INTO `yg_setting` VALUES ('2', 'passport_url', '');
INSERT INTO `yg_setting` VALUES ('2', 'passport_key', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_api', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_ip', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_mysql', '1');
INSERT INTO `yg_setting` VALUES ('2', 'uc_dbhost', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_dbuser', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_dbpwd', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_dbname', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_dbpre', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_charset', 'utf8');
INSERT INTO `yg_setting` VALUES ('2', 'uc_appid', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_key', '');
INSERT INTO `yg_setting` VALUES ('2', 'uc_bbs', '1');
INSERT INTO `yg_setting` VALUES ('2', 'uc_bbspre', '');
INSERT INTO `yg_setting` VALUES ('2', 'oauth', '0');
INSERT INTO `yg_setting` VALUES ('1', 'sitename', '香百庭酒业');
INSERT INTO `yg_setting` VALUES ('1', 'logo', 'http://xiangbai.com/file/upload/202102/19/152413811.jpg');
INSERT INTO `yg_setting` VALUES ('group-9', 'alert_limit', '10');
INSERT INTO `yg_setting` VALUES ('27', 'cat_property', '0');
INSERT INTO `yg_setting` VALUES ('27', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,islink,hits');
INSERT INTO `yg_setting` VALUES ('27', 'order', 'addtime desc');
INSERT INTO `yg_setting` VALUES ('27', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('27', 'introduce_length', '120');
INSERT INTO `yg_setting` VALUES ('27', 'thumb_height', '180');
INSERT INTO `yg_setting` VALUES ('27', 'thumb_width', '240');
INSERT INTO `yg_setting` VALUES ('27', 'template_my', '');
INSERT INTO `yg_setting` VALUES ('27', 'template_search', '');
INSERT INTO `yg_setting` VALUES ('27', 'template_show', '');
INSERT INTO `yg_setting` VALUES ('27', 'template_list', '');
INSERT INTO `yg_setting` VALUES ('27', 'template_index', '');
INSERT INTO `yg_setting` VALUES ('group-9', 'favorite_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-9', 'friend_limit', '200');
INSERT INTO `yg_setting` VALUES ('group-9', 'inbox_limit', '500');
INSERT INTO `yg_setting` VALUES ('group-9', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'spread', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'group_order', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'trade_order', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'sendmail', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'sms', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'mail', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'ask', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'cash', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'question', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'captcha', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'check', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'uploadpt', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'uploadcredit', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'uploadday', '100');
INSERT INTO `yg_setting` VALUES ('group-9', 'uploadlimit', '10');
INSERT INTO `yg_setting` VALUES ('group-9', 'uploadsize', '');
INSERT INTO `yg_setting` VALUES ('group-9', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-9', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('group-9', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'grade', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'add_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'copy', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'delete', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'vweixin', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'vdeposit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'vcompany', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'vtruename', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'vmobile', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'vemail', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'resume', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'link_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'honor_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'page_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-10', 'news_limit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'kf', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'stats', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'map', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'style', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'main_d', '0,1,2,7');
INSERT INTO `yg_setting` VALUES ('group-10', 'main_c', '0,1,2,4,5,6,7');
INSERT INTO `yg_setting` VALUES ('group-10', 'home_main', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'side_d', '0,1,2,4,6');
INSERT INTO `yg_setting` VALUES ('group-10', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `yg_setting` VALUES ('group-10', 'home_side', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'menu_d', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-10', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `yg_setting` VALUES ('group-10', 'home_menu', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'home', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'styleid', '2');
INSERT INTO `yg_setting` VALUES ('group-10', 'homepage', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'type_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-10', 'price_limit', '20');
INSERT INTO `yg_setting` VALUES ('group-10', 'inquiry_limit', '50');
INSERT INTO `yg_setting` VALUES ('group-10', 'message_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-10', 'promo_limit', '5');
INSERT INTO `yg_setting` VALUES ('group-10', 'express_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-10', 'address_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-10', 'alert_limit', '10');
INSERT INTO `yg_setting` VALUES ('group-10', 'favorite_limit', '100');
INSERT INTO `yg_setting` VALUES ('group-10', 'friend_limit', '200');
INSERT INTO `yg_setting` VALUES ('group-10', 'inbox_limit', '500');
INSERT INTO `yg_setting` VALUES ('group-10', 'chat', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'ad', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'spread', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'group_order', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'sendmail', '1');
INSERT INTO `yg_setting` VALUES ('group-9', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-9', 'type', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'trade_order', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'sms', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'mail', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'ask', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'cash', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'question', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'captcha', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'check', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'uploadpt', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'uploadcredit', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'uploadlimit', '10');
INSERT INTO `yg_setting` VALUES ('group-10', 'uploadday', '100');
INSERT INTO `yg_setting` VALUES ('group-10', 'uploadsize', '');
INSERT INTO `yg_setting` VALUES ('group-10', 'uploadtype', '');
INSERT INTO `yg_setting` VALUES ('group-10', 'editor', 'Destoon');
INSERT INTO `yg_setting` VALUES ('group-10', 'upload', '1');
INSERT INTO `yg_setting` VALUES ('group-10', 'reg', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'grade', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'biz', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'commission', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'fee', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'fee_mode', '0');
INSERT INTO `yg_setting` VALUES ('group-10', 'type', '0');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_8', '-1');
INSERT INTO `yg_setting` VALUES ('16', 'limit_9', '');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_9', '');
INSERT INTO `yg_setting` VALUES ('16', 'limit_10', '');
INSERT INTO `yg_setting` VALUES ('16', 'free_limit_10', '');
INSERT INTO `yg_setting` VALUES ('3', 'baidunews_update', '60');
INSERT INTO `yg_setting` VALUES ('3', 'baidunews_items', '90');

-- ----------------------------
-- Table structure for yg_sms
-- ----------------------------
DROP TABLE IF EXISTS `yg_sms`;
CREATE TABLE `yg_sms` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `word` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信记录';

-- ----------------------------
-- Records of yg_sms
-- ----------------------------

-- ----------------------------
-- Table structure for yg_sphinx
-- ----------------------------
DROP TABLE IF EXISTS `yg_sphinx`;
CREATE TABLE `yg_sphinx` (
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `maxid` bigint(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Sphinx';

-- ----------------------------
-- Records of yg_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for yg_spread
-- ----------------------------
DROP TABLE IF EXISTS `yg_spread`;
CREATE TABLE `yg_spread` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `word` varchar(50) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `currency` varchar(30) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排名推广';

-- ----------------------------
-- Records of yg_spread
-- ----------------------------

-- ----------------------------
-- Table structure for yg_spread_price
-- ----------------------------
DROP TABLE IF EXISTS `yg_spread_price`;
CREATE TABLE `yg_spread_price` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `word` varchar(50) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排名起价';

-- ----------------------------
-- Records of yg_spread_price
-- ----------------------------

-- ----------------------------
-- Table structure for yg_style
-- ----------------------------
DROP TABLE IF EXISTS `yg_style`;
CREATE TABLE `yg_style` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `groupid` varchar(30) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `money` float NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公司主页模板';

-- ----------------------------
-- Records of yg_style
-- ----------------------------
INSERT INTO `yg_style` VALUES ('1', '0', '默认模板', 'default', 'homepage', 'hjli.cn', ',6,7,', '0', 'money', '0', '0', '0', '1588559470', 'admin', '1588559470', '0');
INSERT INTO `yg_style` VALUES ('2', '0', '深蓝模板', 'blue', 'homepage', 'hjli.cn', ',6,7,', '0', 'money', '0', '0', '0', '1588559470', 'admin', '1588559470', '0');
INSERT INTO `yg_style` VALUES ('3', '0', '绿色模板', 'green', 'homepage', 'hjli.cn', ',6,7,', '0', 'money', '0', '0', '0', '1588559470', 'admin', '1588559470', '0');
INSERT INTO `yg_style` VALUES ('4', '0', '紫色模板', 'purple', 'homepage', 'hjli.cn', ',6,7,', '0', 'money', '0', '0', '0', '1588559470', 'admin', '1588559470', '0');
INSERT INTO `yg_style` VALUES ('5', '0', '橙色模板', 'orange', 'homepage', 'hjli.cn', ',6,7,', '0', 'money', '0', '0', '0', '1588559470', 'admin', '1588559470', '0');

-- ----------------------------
-- Table structure for yg_team
-- ----------------------------
DROP TABLE IF EXISTS `yg_team`;
CREATE TABLE `yg_team` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parentId` int(10) unsigned DEFAULT '0' COMMENT '上级ID',
  `parentname` varchar(100) DEFAULT NULL COMMENT '上级姓名',
  `userid` int(10) unsigned DEFAULT '0' COMMENT '会员ID',
  `model` varchar(100) DEFAULT NULL COMMENT '昵称',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `thumb` varchar(100) DEFAULT NULL COMMENT '头像',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `sort` int(11) DEFAULT '50' COMMENT '排序，正序排序，即从小到大排',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，1为启用，0为停用，默认为1',
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='个人团队';

-- ----------------------------
-- Records of yg_team
-- ----------------------------

-- ----------------------------
-- Table structure for yg_type
-- ----------------------------
DROP TABLE IF EXISTS `yg_type`;
CREATE TABLE `yg_type` (
  `typeid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) NOT NULL DEFAULT '0',
  `typename` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `item` varchar(20) NOT NULL DEFAULT '',
  `cache` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `listorder` (`listorder`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of yg_type
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `yg_upgrade`;
CREATE TABLE `yg_upgrade` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员升级';

-- ----------------------------
-- Records of yg_upgrade
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_0
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_0`;
CREATE TABLE `yg_upload_0` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录0';

-- ----------------------------
-- Records of yg_upload_0
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_1
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_1`;
CREATE TABLE `yg_upload_1` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='上传记录1';

-- ----------------------------
-- Records of yg_upload_1
-- ----------------------------
INSERT INTO `yg_upload_1` VALUES ('1', '59261b054ea3893168e40ac4f1fc42eb', '', '24', '1', 'http://xiangbai.com/file/upload/202005/06/152928951.png', '117816', 'png', 'thumb', '200', '300', '1588750168', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('46', '7180cd59f60de79112af9bf8a4578af4', '', '23', '0', 'http://xiangbai.com/file/upload/202005/15/145645841.png', '3657', 'png', 'thumb', '167', '167', '1589525805', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('32', 'ec7aba8a6170b27f1e676ff47d21ad19', '', '16', '2', 'http://xiangbai.com/file/upload/202005/11/004048311.png.thumb.png', '223816', 'png', 'album', '475', '473', '1589128848', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('9', '87f1f43a5ad755172790fdc4d2c4edcb', '', '24', '3', 'http://xiangbai.com/file/upload/202005/10/172226721.png', '53364', 'png', 'thumb', '240', '180', '1589102546', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('8', '83b2c1349c19b712caa9d1282f0d223b', '', '24', '2', 'http://xiangbai.com/file/upload/202005/10/172157501.png', '3190', 'png', 'thumb', '240', '180', '1589102517', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('17', '76fd4b86c79ca697adc295d7eeb3bf0a', '', '21', '1', 'http://xiangbai.com/file/upload/202005/11/001955651.png', '20965', 'png', 'thumb', '240', '180', '1589127595', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('16', '9d0a767c18ad638ad1cb13d1847a2bc9', '', '21', '2', 'http://xiangbai.com/file/upload/202005/11/001941921.png', '20965', 'png', 'thumb', '240', '180', '1589127581', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('39', '7e267abc2fbdafd7f659f5da9f27e595', '', '23', '0', 'http://xiangbai.com/file/upload/202005/13/152619501.png', '3657', 'png', 'thumb', '167', '167', '1589354779', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('40', 'd99b05b2860e70b38ad55c9ea82fa0bc', '', '23', '0', 'http://xiangbai.com/file/upload/202005/13/152639501.png', '3657', 'png', 'thumb', '167', '167', '1589354799', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('41', '77adde318991e0aa5adca557de1b796a', '', '23', '0', 'http://xiangbai.com/file/upload/202005/13/152653281.png', '3657', 'png', 'thumb', '167', '167', '1589354813', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('42', '9d818c1503f723b9a974b25733a0fd47', '', '16', '0', 'http://xiangbai.com/file/upload/202005/13/152720271.png', '1607', 'png', 'thumb', '309', '287', '1589354840', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('43', '5fa9036467ef1e5acc2112643a4a57d0', '', '16', '0', 'http://xiangbai.com/file/upload/202005/13/152736681.png', '1221', 'png', 'thumb', '297', '99', '1589354856', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('44', '5ca84a41f4a2f9229da67d13eb8319fa', '', '16', '0', 'http://xiangbai.com/file/upload/202005/13/152749701.png', '1221', 'png', 'thumb', '297', '99', '1589354869', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('45', '381310495dffee357144d0ec728d7875', '', '16', '1', 'http://xiangbai.com/file/upload/202005/15/104011211.png.thumb.png', '223816', 'png', 'album', '475', '473', '1589510411', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('47', 'f434354fd74fa4ce078ceb5b28e36fc0', '', '23', '0', 'http://xiangbai.com/file/upload/202005/15/145701241.png', '3657', 'png', 'thumb', '167', '167', '1589525821', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('48', 'c9e4e3b69b3ba677454e8d0b5c36d417', '', '23', '0', 'http://xiangbai.com/file/upload/202005/15/145824471.png', '3657', 'png', 'thumb', '167', '167', '1589525904', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('56', 'a336e558b56be915885b2e9666fae6ba', 'setting', '1', '1', 'http://xiangbai.com/file/upload/202102/19/152413811.jpg', '24623', 'jpg', 'thumb', '800', '357', '1613719453', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('50', '0743a6ac3909b336877ef90919c5be90', '', '16', '0', 'http://xiangbai.com/file/upload/202012/28/103410361.jpg.thumb.jpg', '162158', 'jpg', 'album', '800', '600', '1609122850', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('51', '0a61fc785aad1cc1866c75e799b9416c', '', '16', '2', 'http://xiangbai.com/file/upload/202102/19/142831241.png.thumb.png', '59710', 'png', 'album', '345', '268', '1613716111', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('52', '5b1cf2bf8ed3f70b55bc4c9441e28f6a', '', '16', '1', 'http://xiangbai.com/file/upload/202102/19/145244181.png.thumb.png', '55982', 'png', 'album', '345', '268', '1613717564', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('53', 'd519c29a5636eebd3937eef6a40251cb', '', '16', '3', 'http://xiangbai.com/file/upload/202102/19/145443691.png.thumb.png', '53639', 'png', 'album', '344', '268', '1613717683', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('59', 'b01fab68768942aae027d7b4b4d80dec', '', '16', '1', 'http://xiangbai.com/file/upload/202102/19/202033331.png.thumb.png', '125728', 'png', 'album', '171', '623', '1613737233', 'admin', '127.0.0.1');
INSERT INTO `yg_upload_1` VALUES ('60', '2320f4e7b0e96e182e5f861ffbfd8fe7', '', '16', '1', 'http://xiangbai.com/file/upload/202102/19/202047561.png.thumb.png', '97147', 'png', 'album', '121', '531', '1613737247', 'admin', '127.0.0.1');

-- ----------------------------
-- Table structure for yg_upload_2
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_2`;
CREATE TABLE `yg_upload_2` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录2';

-- ----------------------------
-- Records of yg_upload_2
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_3
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_3`;
CREATE TABLE `yg_upload_3` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录3';

-- ----------------------------
-- Records of yg_upload_3
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_4
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_4`;
CREATE TABLE `yg_upload_4` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录4';

-- ----------------------------
-- Records of yg_upload_4
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_5
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_5`;
CREATE TABLE `yg_upload_5` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录5';

-- ----------------------------
-- Records of yg_upload_5
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_6
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_6`;
CREATE TABLE `yg_upload_6` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录6';

-- ----------------------------
-- Records of yg_upload_6
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_7
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_7`;
CREATE TABLE `yg_upload_7` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录7';

-- ----------------------------
-- Records of yg_upload_7
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_8
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_8`;
CREATE TABLE `yg_upload_8` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录8';

-- ----------------------------
-- Records of yg_upload_8
-- ----------------------------

-- ----------------------------
-- Table structure for yg_upload_9
-- ----------------------------
DROP TABLE IF EXISTS `yg_upload_9`;
CREATE TABLE `yg_upload_9` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录9';

-- ----------------------------
-- Records of yg_upload_9
-- ----------------------------

-- ----------------------------
-- Table structure for yg_validate
-- ----------------------------
DROP TABLE IF EXISTS `yg_validate`;
CREATE TABLE `yg_validate` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资料认证';

-- ----------------------------
-- Records of yg_validate
-- ----------------------------

-- ----------------------------
-- Table structure for yg_video_14
-- ----------------------------
DROP TABLE IF EXISTS `yg_video_14`;
CREATE TABLE `yg_video_14` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `album` varchar(100) NOT NULL,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `album` (`album`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- Records of yg_video_14
-- ----------------------------

-- ----------------------------
-- Table structure for yg_video_data_14
-- ----------------------------
DROP TABLE IF EXISTS `yg_video_data_14`;
CREATE TABLE `yg_video_data_14` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频内容';

-- ----------------------------
-- Records of yg_video_data_14
-- ----------------------------

-- ----------------------------
-- Table structure for yg_vote
-- ----------------------------
DROP TABLE IF EXISTS `yg_vote`;
CREATE TABLE `yg_vote` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `choose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_min` smallint(2) unsigned NOT NULL DEFAULT '0',
  `vote_max` smallint(2) unsigned NOT NULL DEFAULT '0',
  `votes` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkto` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `template_vote` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `s1` varchar(255) NOT NULL DEFAULT '',
  `s2` varchar(255) NOT NULL DEFAULT '',
  `s3` varchar(255) NOT NULL DEFAULT '',
  `s4` varchar(255) NOT NULL DEFAULT '',
  `s5` varchar(255) NOT NULL DEFAULT '',
  `s6` varchar(255) NOT NULL DEFAULT '',
  `s7` varchar(255) NOT NULL DEFAULT '',
  `s8` varchar(255) NOT NULL DEFAULT '',
  `s9` varchar(255) NOT NULL DEFAULT '',
  `s10` varchar(255) NOT NULL DEFAULT '',
  `v1` int(10) unsigned NOT NULL DEFAULT '0',
  `v2` int(10) unsigned NOT NULL DEFAULT '0',
  `v3` int(10) unsigned NOT NULL DEFAULT '0',
  `v4` int(10) unsigned NOT NULL DEFAULT '0',
  `v5` int(10) unsigned NOT NULL DEFAULT '0',
  `v6` int(10) unsigned NOT NULL DEFAULT '0',
  `v7` int(10) unsigned NOT NULL DEFAULT '0',
  `v8` int(10) unsigned NOT NULL DEFAULT '0',
  `v9` int(10) unsigned NOT NULL DEFAULT '0',
  `v10` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投票';

-- ----------------------------
-- Records of yg_vote
-- ----------------------------

-- ----------------------------
-- Table structure for yg_vote_record
-- ----------------------------
DROP TABLE IF EXISTS `yg_vote_record`;
CREATE TABLE `yg_vote_record` (
  `rid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `votes` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投票记录';

-- ----------------------------
-- Records of yg_vote_record
-- ----------------------------

-- ----------------------------
-- Table structure for yg_webpage
-- ----------------------------
DROP TABLE IF EXISTS `yg_webpage`;
CREATE TABLE `yg_webpage` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(30) NOT NULL DEFAULT '',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单网页';

-- ----------------------------
-- Records of yg_webpage
-- ----------------------------
INSERT INTO `yg_webpage` VALUES ('1', '1', '0', '0', '关于我们', '', '关于我们', '', '', '', 'destoon', '1319006891', '5', '0', '0', 'about/index.html', '', '');
INSERT INTO `yg_webpage` VALUES ('2', '1', '0', '0', '联系方式', '', '联系方式', '', '', '', 'destoon', '1310696453', '4', '0', '0', 'about/contact.html', '', '');
INSERT INTO `yg_webpage` VALUES ('3', '1', '0', '0', '使用协议', '', '使用协议', '', '', '', 'destoon', '1310696460', '3', '0', '0', 'about/agreement.html', '', '');
INSERT INTO `yg_webpage` VALUES ('4', '1', '0', '0', '版权隐私', '', '版权隐私', '', '', '', 'destoon', '1310696468', '2', '0', '0', 'about/copyright.html', '', '');

-- ----------------------------
-- Table structure for yg_weixin_auto
-- ----------------------------
DROP TABLE IF EXISTS `yg_weixin_auto`;
CREATE TABLE `yg_weixin_auto` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信回复';

-- ----------------------------
-- Records of yg_weixin_auto
-- ----------------------------

-- ----------------------------
-- Table structure for yg_weixin_bind
-- ----------------------------
DROP TABLE IF EXISTS `yg_weixin_bind`;
CREATE TABLE `yg_weixin_bind` (
  `username` varchar(30) NOT NULL DEFAULT '',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信扫码绑定';

-- ----------------------------
-- Records of yg_weixin_bind
-- ----------------------------

-- ----------------------------
-- Table structure for yg_weixin_chat
-- ----------------------------
DROP TABLE IF EXISTS `yg_weixin_chat`;
CREATE TABLE `yg_weixin_chat` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `editor` varchar(30) NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL,
  `event` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `misc` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `openid` (`openid`),
  KEY `addtime` (`addtime`),
  KEY `event` (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信消息';

-- ----------------------------
-- Records of yg_weixin_chat
-- ----------------------------

-- ----------------------------
-- Table structure for yg_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `yg_weixin_user`;
CREATE TABLE `yg_weixin_user` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `visittime` int(10) unsigned NOT NULL DEFAULT '0',
  `credittime` int(10) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `push` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `openid` (`openid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户';

-- ----------------------------
-- Records of yg_weixin_user
-- ----------------------------

-- ----------------------------
-- Table structure for yg_yjprice_log
-- ----------------------------
DROP TABLE IF EXISTS `yg_yjprice_log`;
CREATE TABLE `yg_yjprice_log` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userid` int(10) unsigned DEFAULT '0' COMMENT '佣金变动会员ID',
  `model` varchar(100) DEFAULT NULL COMMENT '佣金变动会员昵称',
  `name` varchar(100) DEFAULT NULL COMMENT '佣金变动会员姓名',
  `phone` varchar(100) DEFAULT NULL COMMENT '佣金变动会员电话',
  `xuserid` int(10) unsigned DEFAULT '0' COMMENT '产生变动会员ID',
  `xmodel` varchar(100) DEFAULT NULL COMMENT '产生变动会员昵称',
  `xname` varchar(100) DEFAULT NULL COMMENT '产生变动会员姓名',
  `xphone` varchar(100) DEFAULT NULL COMMENT '产生变动会员电话',
  `orderid` int(10) unsigned DEFAULT '0' COMMENT '订单ID',
  `money` int(11) DEFAULT '0' COMMENT '金额',
  `sort` int(11) DEFAULT '50' COMMENT '排序，正序排序，即从小到大排',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，1为启用，0为停用，默认为1',
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='佣金增减记录';

-- ----------------------------
-- Records of yg_yjprice_log
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
