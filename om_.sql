/*
Navicat MySQL Data Transfer

Source Server         : phpsto
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : om_

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-03-08 21:16:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_1_block
-- ----------------------------
DROP TABLE IF EXISTS `om_1_block`;
CREATE TABLE `om_1_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '文本块名称',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文本块表';

-- ----------------------------
-- Records of om_1_block
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case`;
CREATE TABLE `om_1_case` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_case
-- ----------------------------
INSERT INTO `om_1_case` VALUES ('1', '2', '京都信苑饭店', '8', '京都信苑饭店', '京都信苑饭店', '0', '1', 'zansheng', '9', 'http://hq.in/case/index.php?c=show&id=1', '0', '127.0.0.1', '1425817972', '1425817972', '0');
INSERT INTO `om_1_case` VALUES ('2', '2', '美泉宫酒店', '32', '美泉宫,酒店', '', '0', '1', 'zansheng', '9', 'http://hq.in/case/index.php?c=show&id=2', '0', '127.0.0.1', '1425818154', '1425818154', '0');

-- ----------------------------
-- Table structure for om_1_case_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_0`;
CREATE TABLE `om_1_case_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_1`;
CREATE TABLE `om_1_case_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_2`;
CREATE TABLE `om_1_case_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_3`;
CREATE TABLE `om_1_case_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_4`;
CREATE TABLE `om_1_case_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_5`;
CREATE TABLE `om_1_case_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_6`;
CREATE TABLE `om_1_case_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_7`;
CREATE TABLE `om_1_case_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_8`;
CREATE TABLE `om_1_case_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_buy_9`;
CREATE TABLE `om_1_case_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_case_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_category`;
CREATE TABLE `om_1_case_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_case_category
-- ----------------------------
INSERT INTO `om_1_case_category` VALUES ('1', '0', '0', '服务项目', 'f', 'fuwuxiangmu', '', '1', '1,2,3,4,5', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_case_category` VALUES ('2', '1', '0,1', '婚礼案例', 'h', 'hunlianli', 'fuwuxiangmu/', '0', '2', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_case_category` VALUES ('3', '1', '0,1', '精彩视频', 'j', 'jingcaishipin', 'fuwuxiangmu/', '0', '3', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_case_category` VALUES ('4', '1', '0,1', '商务庆典', 's', 'shangwuqingdian', 'fuwuxiangmu/', '0', '4', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_case_category` VALUES ('5', '1', '0,1', '服务大厅', 'f', 'fuwudating', 'fuwuxiangmu/', '0', '5', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_case_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_category_data`;
CREATE TABLE `om_1_case_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_case_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_category_data_0`;
CREATE TABLE `om_1_case_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_case_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_data_0`;
CREATE TABLE `om_1_case_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_case_data_0
-- ----------------------------
INSERT INTO `om_1_case_data_0` VALUES ('1', '1', '2', '<p><img class=\"alignleft size-full wp-image-1050\"  id=\"OmWeb_img_8\" src=\"http://hq.in/member/uploadfile/201503/5e731d5761.jpg\" alt=\"2 (4)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1051\"  id=\"OmWeb_img_10\" src=\"http://hq.in/member/uploadfile/201503/7d8b2c2158.jpg\" alt=\"2 (13)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1052\"  id=\"OmWeb_img_11\" src=\"http://hq.in/member/uploadfile/201503/4ddb0f3284.jpg\" alt=\"3 (2)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1053\"  id=\"OmWeb_img_12\" src=\"http://hq.in/member/uploadfile/201503/e0be87e320.jpg\" alt=\"3 (5)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1054\"  id=\"OmWeb_img_14\" src=\"http://hq.in/member/uploadfile/201503/5057392609.jpg\" alt=\"3 (6)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1055\"  id=\"OmWeb_img_16\" src=\"http://hq.in/member/uploadfile/201503/5c36f3d729.jpg\" alt=\"3 (7)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1056\"  id=\"OmWeb_img_17\" src=\"http://hq.in/member/uploadfile/201503/5c36f3d226.jpg\" alt=\"3 (14)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1057\"  id=\"OmWeb_img_18\" src=\"http://hq.in/member/uploadfile/201503/23b1810791.jpg\" alt=\"3 (20)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1058\"  id=\"OmWeb_img_19\" src=\"http://hq.in/member/uploadfile/201503/903affb975.jpg\" alt=\"3 (22)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1059\"  id=\"OmWeb_img_22\" src=\"http://hq.in/member/uploadfile/201503/62848af222.jpg\" alt=\"3 (44)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1060\"  id=\"OmWeb_img_24\" src=\"http://hq.in/member/uploadfile/201503/0203e5c616.jpg\" alt=\"3 (54)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignleft size-medium wp-image-1061\"  id=\"OmWeb_img_25\" src=\"http://hq.in/member/uploadfile/201503/b2543b4621.jpg\" alt=\"3 (56)\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/></p>');
INSERT INTO `om_1_case_data_0` VALUES ('2', '1', '2', '<p><img class=\"alignleft size-full wp-image-542\"  id=\"OmWeb_img_32\" src=\"http://hq.in/member/uploadfile/201503/9a8462f707.jpg\" alt=\"_MG_0211\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-543\"  id=\"OmWeb_img_34\" src=\"http://hq.in/member/uploadfile/201503/0fb9604747.jpg\" alt=\"_MG_0214\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-544\"  id=\"OmWeb_img_36\" src=\"http://hq.in/member/uploadfile/201503/6ef0661977.jpg\" alt=\"_MG_0215\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-545\"  id=\"OmWeb_img_37\" src=\"http://hq.in/member/uploadfile/201503/294966a793.jpg\" alt=\"_MG_0221\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-546\"  id=\"OmWeb_img_39\" src=\"http://hq.in/member/uploadfile/201503/c3a451e901.jpg\" alt=\"_MG_0222\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-547\"  id=\"OmWeb_img_41\" src=\"http://hq.in/member/uploadfile/201503/0864a38363.jpg\" alt=\"_MG_0232\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-548\"  id=\"OmWeb_img_42\" src=\"http://hq.in/member/uploadfile/201503/13e0344379.jpg\" alt=\"_MG_0243\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-549\"  id=\"OmWeb_img_43\" src=\"http://hq.in/member/uploadfile/201503/5d03f04943.jpg\" alt=\"_MG_0261\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-550\"  id=\"OmWeb_img_44\" src=\"http://hq.in/member/uploadfile/201503/502a4dc404.jpg\" alt=\"_MG_0511\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><img class=\"alignnone size-medium wp-image-551\"  id=\"OmWeb_img_45\" src=\"http://hq.in/member/uploadfile/201503/0000464280.jpg\" alt=\"_MG_0575\" style=\"margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 930px; overflow: hidden; display: block; font-family: Verdana, Geneva, sans-serif; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/></p>');

-- ----------------------------
-- Table structure for om_1_case_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_extend_index`;
CREATE TABLE `om_1_case_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_case_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_extend_verify`;
CREATE TABLE `om_1_case_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_case_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_0`;
CREATE TABLE `om_1_case_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_1`;
CREATE TABLE `om_1_case_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_2`;
CREATE TABLE `om_1_case_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_3`;
CREATE TABLE `om_1_case_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_4`;
CREATE TABLE `om_1_case_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_5`;
CREATE TABLE `om_1_case_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_6`;
CREATE TABLE `om_1_case_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_7`;
CREATE TABLE `om_1_case_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_8`;
CREATE TABLE `om_1_case_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_favorite_9`;
CREATE TABLE `om_1_case_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_case_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_flag`;
CREATE TABLE `om_1_case_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_case_flag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_form`;
CREATE TABLE `om_1_case_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_case_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_html`;
CREATE TABLE `om_1_case_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_case_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_index`;
CREATE TABLE `om_1_case_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_case_index
-- ----------------------------
INSERT INTO `om_1_case_index` VALUES ('1', '1', '2', '9', '1425817972');
INSERT INTO `om_1_case_index` VALUES ('2', '1', '2', '9', '1425818154');

-- ----------------------------
-- Table structure for om_1_case_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_search`;
CREATE TABLE `om_1_case_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_case_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_case_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_tag`;
CREATE TABLE `om_1_case_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_case_tag
-- ----------------------------
INSERT INTO `om_1_case_tag` VALUES ('1', '京都信苑饭店', 'jingdouxinyuanfandian', '0');
INSERT INTO `om_1_case_tag` VALUES ('2', '美泉宫', 'meiquangong', '0');
INSERT INTO `om_1_case_tag` VALUES ('3', '酒店', 'jiudian', '0');

-- ----------------------------
-- Table structure for om_1_case_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_case_verify`;
CREATE TABLE `om_1_case_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_case_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_form`;
CREATE TABLE `om_1_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单模型表';

-- ----------------------------
-- Records of om_1_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_navigator
-- ----------------------------
DROP TABLE IF EXISTS `om_1_navigator`;
CREATE TABLE `om_1_navigator` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级id',
  `pids` text COMMENT '所有上级id数据项',
  `type` tinyint(1) unsigned NOT NULL COMMENT '导航类型',
  `name` varchar(255) NOT NULL COMMENT '导航名称',
  `title` varchar(255) NOT NULL COMMENT 'seo标题',
  `description` varchar(255) NOT NULL COMMENT '描述内容',
  `url` varchar(255) NOT NULL COMMENT '导航地址',
  `thumb` varchar(255) NOT NULL COMMENT '图片标示',
  `show` tinyint(1) unsigned NOT NULL COMMENT '显示',
  `mark` varchar(255) DEFAULT NULL COMMENT '类型标示',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否继承下级',
  `child` tinyint(1) unsigned NOT NULL COMMENT '是否有下级',
  `childids` text COMMENT '所有下级数据项',
  `target` tinyint(1) unsigned NOT NULL COMMENT '是否站外链接',
  `displayorder` tinyint(3) NOT NULL COMMENT '显示顺序',
  PRIMARY KEY (`id`),
  KEY `list` (`id`,`type`,`show`,`displayorder`),
  KEY `mark` (`mark`),
  KEY `extend` (`extend`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站导航表';

-- ----------------------------
-- Records of om_1_navigator
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news`;
CREATE TABLE `om_1_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_news
-- ----------------------------
INSERT INTO `om_1_news` VALUES ('1', '1', '[婚礼筹备建议]7个婚礼摄影师必须记录的瞬间', '1', '摄影师,婚礼,记录', '在正确时间和正确的地点拍出很棒的照片,这些镜头你一定不能错过—— 1、“彼此的第一眼”如果你们在仪式之前有接亲/摆拍的时间，当天彼此之间看见第一眼的表情非常重要，可以让你的摄影师更加近距离的抓拍，记录下你...', '0', '1', 'zansheng', '9', 'http://hq.in/news/index.php?c=show&id=1', '0', '127.0.0.1', '1425805491', '1425805571', '0');
INSERT INTO `om_1_news` VALUES ('2', '1', '婚纱照三招定胜负', '', '婚纱照', '1.婚纱礼服：通常整个婚礼中，新娘需要的一件白纱、两套晚礼服自然不能缺少，礼服有新、旧之分，价格也因此有所差异，新的白纱较贵，若预算不足，不能挑全新的也可挑八成新的。新郎方面，通常较不会有问题，除了西装...', '0', '1', 'zansheng', '9', 'http://hq.in/news/index.php?c=show&id=2', '0', '127.0.0.1', '1425805608', '1425805608', '0');
INSERT INTO `om_1_news` VALUES ('3', '2', '结婚时预订婚宴酒店注意事项', '', '婚宴酒店', '结婚时预订婚宴酒店是一个很重要的环节，直接关系着着婚礼的好坏，预定酒店的时候有很多你想不到的问题，现在美邦婚庆公司为你总结出来，希望准新人有个完美的婚礼，预订婚宴酒店必须注意的事项：1、基本信息（1）确...', '0', '1', 'zansheng', '9', 'http://hq.in/news/index.php?c=show&id=3', '0', '127.0.0.1', '1425805673', '1425805673', '0');
INSERT INTO `om_1_news` VALUES ('4', '2', '结婚婚礼上，因为有了美丽新娘和帅气新郎才会更有看头', '', '新娘,婚礼', '在婚礼上，新娘的备受关注度远远高于新郎的人气。我们队新娘新郎都应该一视同仁，共同关注他们在婚礼上的最佳风采。而新郎一件合身的礼服会给新娘增添更多的亮点。新郎们到底该如何挑选礼服呢?在此艾语小编就向大家...', '0', '1', 'zansheng', '9', 'http://hq.in/news/index.php?c=show&id=4', '0', '127.0.0.1', '1425805708', '1425805708', '0');
INSERT INTO `om_1_news` VALUES ('5', '6', '2015年开年巨惠', '', '', '全套婚礼仅需8880元LED高清大屏全套婚礼套餐仅需13980元3款灯光加强包任您选择进店还有多款超值套餐等待着您', '0', '1', 'zansheng', '9', 'http://hq.in/news/index.php?c=show&id=5', '0', '127.0.0.1', '1425805777', '1425805777', '0');
INSERT INTO `om_1_news` VALUES ('6', '6', '十周年店庆活动', '', '', '炫彩灯光主题套餐12880元 （绝无附加费用）【专业婚礼顾问指导】婚礼筹备计划案 婚纱礼服定制及租赁方案建议 婚纱摄影拍摄指导新人婚前物品准备明细表 婚礼场地实地考察沟通 婚礼前期的策划沟通婚礼现场布置方案 酒...', '0', '1', 'zansheng', '9', 'http://hq.in/news/index.php?c=show&id=6', '0', '127.0.0.1', '1425805795', '1425805795', '0');

-- ----------------------------
-- Table structure for om_1_news_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_0`;
CREATE TABLE `om_1_news_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_1`;
CREATE TABLE `om_1_news_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_2`;
CREATE TABLE `om_1_news_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_3`;
CREATE TABLE `om_1_news_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_4`;
CREATE TABLE `om_1_news_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_5`;
CREATE TABLE `om_1_news_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_6`;
CREATE TABLE `om_1_news_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_7`;
CREATE TABLE `om_1_news_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_8`;
CREATE TABLE `om_1_news_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_9`;
CREATE TABLE `om_1_news_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category`;
CREATE TABLE `om_1_news_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_news_category
-- ----------------------------
INSERT INTO `om_1_news_category` VALUES ('1', '5', '0,5', '新闻资讯', 'x', 'xinwenzixun', 'news/', '0', '1', '', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_news_category` VALUES ('2', '5', '0,5', '婚礼学院', 'h', 'hunlixueyuan', 'news/', '0', '2', '', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_news_category` VALUES ('3', '5', '0,5', '缘始日志', 'y', 'yuanshirizhi', 'news/', '0', '3', '', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_news_category` VALUES ('4', '0', '0', 'ACTIVITY', 'a', 'activity', '', '1', '4,6,7', '', '1', '', 'a:6:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;}', '0');
INSERT INTO `om_1_news_category` VALUES ('5', '0', '0', 'News', 'n', 'news', '', '1', '5,1,2,3', '', '1', '', 'a:6:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;}', '0');
INSERT INTO `om_1_news_category` VALUES ('6', '4', '0,4', '服务报价', 'f', 'fuwubaojia', 'activity/', '0', '6', '', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_news_category` VALUES ('7', '4', '0,4', '优惠活动', 'y', 'youhuihuodong', 'activity/', '0', '7', '', '1', '', 'a:6:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";N;}', '0');

-- ----------------------------
-- Table structure for om_1_news_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category_data`;
CREATE TABLE `om_1_news_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_news_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category_data_0`;
CREATE TABLE `om_1_news_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_news_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_data_0`;
CREATE TABLE `om_1_news_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_news_data_0
-- ----------------------------
INSERT INTO `om_1_news_data_0` VALUES ('1', '1', '1', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">在正确时间和正确的地点拍出很棒的照片,这些镜头你一定不能错过——</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">1、“彼此的第一眼”</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">如果你们在仪式之前有接亲/摆拍的时间，当天彼此之间看见第一眼的表情非常重要，可以让你的摄影师更加近距离的抓拍，记录下你们所有心情表现。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">2、来宾到达之前的场地布置</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">这是你唯一看到你未受影响的场地布置设计成果的机会，如果你设计了很漂亮的鸡尾酒台和甜品自助，也要在婚礼开始之前把他们拍下来</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">3、大合影</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">这是对这一天的绝妙记录。请你的督导帮助协调大家摆同一个POSE，或者请你的摄影师抓拍大家的合影</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">4、婚纱特写（没有你哦~~）</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">可以以某种艺术手法表达出对这一天的期待，静物能够给摄影师更多的发挥空间。你（甚至你的孙子和孙女）会喜欢这幅纯净的画面。自然光线会强调出婚纱的美丽细节。最好把婚纱挂在漂亮的窗户前，如果没有窗户，古董衣橱或门上也可以拍出漂亮的照片</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">5、宴会入场</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">越来越多的婚礼仪式和宴会分开，第二次入场时没有了紧张和拘束，更多的是看见朋友家人的兴奋和欢乐</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">6、背影</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">保证你看起来很自然，而且，大多数婚纱还有美丽的背后设计</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">7、从远处拍两个人的全景</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">特别是有第一支舞的时候，还有加入一部分客人的表现会更加完美</p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('2', '1', '1', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">1.婚纱礼服：</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">通常整个婚礼中，新娘需要的一件白纱、两套晚礼服自然不能缺少，礼服有新、旧之分，价格也因此有所差异，新的白纱较贵，若预算不足，不能挑全新的也可挑八成新的。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">新郎方面，通常较不会有问题，除了西装礼服的提供，要注意其他配件，如领带、花结、袋中等。另外，整套的服务是否也包括伴娘或伴郎的礼服？拍照当天可以换几套礼服及婚纱？这些都是你可向婚纱店询问的资料。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">2.造型设计：</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">在婚纱摄影讲求多样化的今天，拍照不再只是正规正矩的纪录而已，现在，婚纱摄影由室内拍到室外。室内你要考虑的是其布景、道具的配合，室外摄影则涉及摄影场地，通常许多新人都喜欢到比较远的地方拍摄，实际上，只要场地适合，未必要跑到大老远，既花时间又耗体力，何况新娘打扮得娇滴滴的，又要爬山涉水的，再美的新娘都难免受影响。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">3.摄影方面：</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">新人整体的造型影响了整体的视觉效果，尤其是新娘，在最美丽的时刻还须靠外在的修饰。通常婚纱摄影店的整套服务会包括化妆和发型设计，有的也会另外与发型屋配合让新人先弄好头发、再由婚纱店的造型师在拍照时再作变化。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">新人的造型已是婚纱摄影店不可或缺的服务项目，无论是化妆、头饰、或是服装上的变化，像时下流行的让新人穿异国服饰拍照，拍摄时更以多样化的背景制造噱头，这些都是婚纱摄影业竞争下必然的趋势。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">时下在摄影方面，许多婚纱店的花样层出不穷，你可参考每间婚纱店拍摄的样本，再作考虑，主要在于摄影师的技术、表现的手法，另外要考虑实际拍摄的张数、照片冲洗的张数如何计算、相簿的设计有无包括美工设计、照片放大加框价格多少等等。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">以上的服务项目多寡当然是视你所付于的价格高低而定，在这方面，你可问及相关的问题，如在拍照时，由发型屋提供的发型高计价格是否包括在整套费用中？在拍婚纱照时，大概会有几个造型提供？如出外景，是否有造型师随行还是自己打理等。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">在选择婚纱摄影店时，你或许不会进去一家之后就马上决定，通常会参考两、三家以上的婚纱摄影店或征询已婚的亲友意见后才作决定。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">其实就以我国婚纱摄影业的发展而言，在不断剧增的竞争之下，如今无论在摄影或服务方面的经营都有走向专业化与全面化的趋向，作为消费者除了要了解自己的需求之外，也可多加参考业者的意见，告知对方你的要求，互相作沟通以让对方针对你的需求提供最好的服务，达到最好的配合。</p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('3', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">结婚时预订婚宴酒店是一个很重要的环节，直接关系着着婚礼的好坏，预定酒店的时候有很多你想不到的问题，现在美邦婚庆公司为你总结出来，希望准新人有个完美的婚礼，预订婚宴酒店必须注意的事项：</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">1、基本信息<br/>（1）确定婚宴时间，了解有几家婚宴会在同一天举行。<br/>（2）和酒店商量如何确定桌数。一般来说，第一次预定时，尽量少定一些桌，以后可以再增加，如果定多了再减少就比较麻烦。签合同时标明婚房房号，写明订的什么厅，几桌，桌数的位置摆放。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（3）满多少金额有什么优惠？<br/>2、菜单问题<br/>（1）如果婚宴桌上的菜量不够，是否可以立即补菜，速度有多快？<br/>只要您有要求，正常情况下，酒店临时补上5桌左右的宴席应该不成问题，但不能保证新补的菜和原菜单完全一样，有些没有的菜同等价位是可以调换其它菜品的。还有注意询问补菜的速度，速度太慢了的话会让来宾久等，容易造成空盘现象，这是婚宴请客的大忌！<br/>可容纳的最大及最少桌数、多少桌以内不会过于拥挤、每桌人数是否扣除小朋友的扶手椅，<br/>可以临时加开的桌数及价格、加桌菜是由其它桌分出来或另外准备食材、当日未达保证桌数是否会被换厅、未达保证桌数是否可以退费或换成餐券使用、最晚多久前确认桌数、何时付清尾款。<br/>（2）能否在10人座的宴席再加上座？每个酒店是不一样的，有的酒店不提供加座；有的饭桌有限但最多一两把座位。因为大部分酒店宴会菜量标准是供10人使用，人太多了来宾会吃不饱的。但也有亲戚朋友愿意在一桌的，他们会更热闹、开心，那就另当别论了。。。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（3）菜单中，冷热菜、煲汤、主食的数量<br/>有的酒店只能用固定套餐，名字起的花里胡哨，你必须先看下菜单及价格，问明这个菜名对应哪个菜式？ 婚宴菜肴的数目：一般来说，婚宴菜肴数目通常都是双数，以八个菜象征发财，以十个菜象征十全十美，以十二个菜象征月月幸福。<br/>菜色共有几道、每道菜色的详细说明、可否免费更换菜色、若菜色与喜宴当日不符的处理方式。 是否可以自带原材料加工？<br/>（4）备桌是否要收服务费？</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（5）未成年小孩是否按一人算？<br/>（6）宴席的各项收费及服务范围应白纸黑字详细列明，切勿口头承诺。对菜单上的菜式，不要接受一些模棱两可的字眼，如“清蒸海上鲜”或“龙凤展翅”等等。<br/>3、酒水问题<br/>（1）饮料酒水能否自带？自带的种类有限定吗？不能自带的话，店内的酒水有畅饮吗？畅饮几小时还是…？用店内的酒水有何优惠？有加收服务费吗？有开瓶费吗？问清楚有没有包间费，茶位费，服务费。。。以免最后付账出现纠纷。<br/>（2）酒店不提供免费茶水。这点大家有必要注意，万一当天有客人要茶喝，星级酒店的茶水可不便宜。能带就自带茶叶吧，他们到是没说不许自带茶叶。<br/>是否免费提供水酒饮料、若自备水酒是否加收开瓶费、若免费提供是否限制时间及瓶数、提供酒类的价格及种类、是否以开瓶数量计费、提供免费冰块。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（3）毛巾，纸巾，茶水另外收钱吗？送婚礼蛋糕吗？多少大？什么类型的？送香槟酒和香槟塔吗？送红酒吗？ 送果盘吗？（一般套餐都会包括，若是自点就要问清楚）餐具是否是一次性？ 是否提供喜糖盒或喜糖篮、海报大图输出。<br/>4、婚礼布置问题<br/>（1）酒店是否提供婚礼现场的布置（简单的或是全面的），内容是什么？合同上要写清楚，因为每家酒店是不一样的，一般酒店如果能免费提供哪些附加服务都会主动给您说清楚的，（高品位的酒店）有些附加服务是收费的，这个一定要问清楚！要了解清楚哪些布置项目是免费赠送的，哪些布置是禁止使用的，布置的时候要注意哪些规定，避免发生金钱和权责方面的不愉快。<br/>（2）提供哪些会场布置如鲜花/气球拱门、舞台区鲜花/气球布置、主桌收礼桌鲜花盆花、每桌桌花桌卡布置及菜单、相片架鲜花/气球布置、红毯、厅内是否提供桌巾椅套、桌巾椅套的颜色选择。<br/>（3）宴客场地有无特殊限制如洒花瓣、吹泡泡机、拉炮或彩花炮、点蜡烛或仙女棒、干冰或烟火施放。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（4）询问酒店的房顶、四壁是否允许悬挂、钉、贴装饰物，是否允许冷烟火。<br/>有些酒店对设施设备维护非常重视，不要说钉了，哪怕喜字也有专门的粘贴位置，如果粘到壁纸上，高档红木家具上等等都会有赔偿的，还有，可乐雪碧，蛋糕，鸡蛋等物品喷洒到地毯上，天花板上，赔偿金额是很厉害的。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（5）桌布颜色；可否加椅套蝴蝶结 ；桌布、椅被套的色调<br/>（6）预先编排座位，分配台号是现下流行做法，婚宴主人预先为宾客安排位置，避免到时由于忙乱得罪亲友。使宾客各入其位，皆大欢喜！婚宴座位的安排：婚宴座席关系到中国人的传统习俗问题，一定要重视，以免怠慢了客人。在预订婚宴的时候一定要清楚地知道宾客的人数，避免人数过多的拥挤和人太少的冷清，可以在每张桌子上放置标示宾客姓名的卡片，以方便宾客找到自己的座位，也可由专人在入口处引导入座。<br/>（7）场地使用有无时间限制、开席前可以提前多久布置会场或彩排。确定前一天可以进场布置的时间以及结婚当天允许进场的时间。(预防酒店有会议，第二天早上用你的婚礼大厅作早餐大厅，当天上午才让进场)彩排时间有规定，只能给3个小时(彩排那天那个厅是闲着的)，如果布置时间不够，可否适当延长。但也不能晚过她下班，看来当天我们要抓紧时间了。<br/>（8）有的酒店不让带花生瓜子这种带壳的东西，看酒店可否让带，可否准备；每桌的价格及人数、服务费、是否赠送水果甜点、小菜、瓜子喜糖、试菜是免费或另有折扣。<br/>（9）是否提供背景板(纱幔)、 是否免费提供签到台以及鲜花布置（桌卡以及签到簿）、可否免费提供红地毯、进场道路（几米）； 会场中央位置没有阻碍视线的柱子；灯光是否可以进行单独控制 ； 是否提供舞台；是否提供桌花装饰；是否提供大巴接送服务</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（10）婚庆公司进场费收取吗？<br/>5、酒店音响设备灯光问题<br/>（1）酒店是否提供音响设备、酒店方面能否提供专人负责音响、专人负责灯光？是否提供婚礼音乐、麦克风（无线及有线话筒）、扩音设备、投影仪，幕布 确定提供哪些音响设备，提供几只话筒？<br/>确定提供哪些灯光设备，如需另外增添项目如何收费。<br/>酒店音响一般都达不到一场完美婚礼的标准，建议实用婚庆公司提供的专业音响，酒店的音响师只可以配合婚庆公司的DJ师，这样婚礼才会圆满。。。<br/>6、服务问题<br/>（1）咨询酒店一个服务员同时服务几桌婚宴，是否为专人专岗？门口有没有人负责引导来宾入座。有没有负责或者协调婚宴现场的人员？</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">正常宴会情况下是2名服务员负责6张台，这是大多数酒店的服务配置。<br/>是否提供主持人、司仪及婚礼规划秘书、餐厅事宜联络人、服务人员人数、平均几桌提供一位服务人员、席间更换餐具的次数、服务人员红包费用、服务人员是否会引导宾客入场或提供告示牌、是否可以请服务人员协助仪式的进行。<br/>（2）确认宾客休息区域<br/>有的宾客来自外地，有的宾客来到时会场还没装饰妥当，还有的老年宾客需要舒适的位置，如果没有足够大的宾客休息区域，一定会怠慢这些客人。请会场安排好宾客可以自由使用的休息区间，或请专人带路到其他休息区域都是可行方案。<br/>（3）事先确认迎宾区的大小<br/>一些场地在设计时并没有考虑到婚礼的要求，所以可供迎宾的区域比较小或者根本没有，所以新人一定要事先和会场方确认哪一块区域可以用作迎宾之用，可以做哪些装饰布置，场地方有何协助，不要出现太过拥挤，布置寒碜的窘况<br/>（4）确认是否有寄存服务<br/>宾客的外套挂在椅背后？不但不雅观，还会损坏别致的椅背布置。外地来的宾客行李放在脚下也很不礼貌。所以会场提供专业的寄存服务就显得非常重要了，有时候婚礼的高档细致就在这些小细节上得以体现。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（5）提前检查婚宴场地的卫生状况<br/>相对而言，会场宴会厅的卫生大多能保证，但过道、洗手间、楼梯的卫生一定也需要保障。在选择会场时，新人不妨将眼光转向这些容易忽视的环节，于细节处考察会场的卫生，特别是社会餐厅，在这些方面还是需要改进的。<br/>7、婚庆停车位问题<br/>事先确认免费婚庆停车位<br/>会场有多少车位可供宾客当日停放车辆，也是需要和会场商议的内容，如果会场本身车位有限，您一定要早做准备，请会场或您本人在附近帮宾客预定一些其他车位，如果能提前定好，直接在请柬里有说明，就最仔细不过了。 是否提供礼车接送及接送范围、停车位数量、提供多少免费停车券及泊车费用、是否提供交通图示如名片、附近交通停车状况、是否公交车可达。<br/>8、化妆间问题 确认化妆间的详情<br/>化妆间可不仅仅是婚房这么简单，有很多特殊要求：空间要大，因为新人有多套行头要摆放；光线要好，很难有化妆师在暗光下能画出美丽妆容；离宴会厅要近，否则新人“长途跋涉”费时费力。有的会场会在宴会厅旁边专门为新人开辟一间小厅作为化妆间，真是体贴的做法。<br/>参观新娘休息室或赠送的新人房。有无电梯、有无新娘休息室及是否附钥匙、是否提供免费的新人房、与会场的动线距离及大小、休息室有无洗手间、亲友订房优惠。<br/>有无化妆间？最好问一下化妆间在哪里？不要太远就好。化妆间使用时间。送婚房？婚房升级费用？<br/>9、合同其他注意事项<br/>（1）签合同时要写明进场时间和离席时间，比如离席时间设定为晚上8点，服务员就不可以在这个时间之前收盘子，扫地等等。万一你定的大厅被占用，如何处理？合同注明清楚。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">（2）违约赔偿问题要写明白</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">尽可能细化您和酒店签署合同的各个细节，包括能否燃放冷烟花、停车场车位的预留、对布置和安全方面的指导和限制等等。在正式确定之后，一旦有新的情况或计划产生，您都应该和酒店方做及时的沟通，如果需要还可以作为附件追加进原来签定的合同之内，千万不要怕麻烦<br/>（3）订金的处理问题，订金是预付款，若是有不可抗拒的原因客人取消婚宴，订金是可以退的。而定金是指双方买卖商品时作为已成交的保证，是不可退的。酒店会玩文字游戏，消费者要注意了！<br/>（4）违约应付多少违约金？酒店对提供食品保证卫生负责责任，如有投诉，退款，受害，应如何赔偿？</p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('4', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">在婚礼上，新娘的备受关注度远远高于新郎的人气。我们队新娘新郎都应该一视同仁，共同关注他们在婚礼上的最佳风采。而新郎一件合身的礼服会给新娘增添更多的亮点。新郎们到底该如何挑选礼服呢?<br/>在此艾语小编就向大家介绍几招，保证可以挑出合身又好看的礼服。<br/>在试礼服时，应该注意以下细节：<br/>1、礼服外套<br/>穿上正装外套后，颈部和肩部大小必须舒适，并且衣服很容易扣紧。在扣好纽扣后，试着站起和坐下。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">2、礼服衬衫<br/>衬衫袖口应该比外套袖口长，露出1~1.5厘米。穿上后，颈部、肩部和腰部感觉很舒适。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">3、背心<br/>背心纽扣应该和外套前襟对齐，而且扣上时不会勒紧胸部。底边应该稍许覆盖裤子的腰带。通常可以利用背部的滑动系带调整背心的腰部尺寸。可以考虑选一件完全型的遮背背心。这样典礼中途脱掉外套时，客人们不会看到背部的衬衫和一条系带。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">4、裤子<br/>扣上裤子纽扣后你应该感觉舒适，坐下来也不觉得别扭。裤脚的缝边应该刚好遮住鞋子的顶部三分之一。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">5、领结<br/>无论是买是租，一定要先试试你选中的领结。它应该贴服地绕在你的衣领上。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">6、鞋子<br/>记住，试鞋子的最佳时间是在一天快结束的时候，因为这个时候你的脚会有些肿(婚礼快结束时也差不多是这样)。鞋子大一点比太紧要好得多。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">舒适最重要<br/>试礼服的时候，应该能够轻松扭动、转身、抬胳膊。因为必须穿着这些装备挺过紧张又有趣的4至8小时。<br/>调整尺寸<br/>至少在婚礼两天前试试自己的正装，这是个非常实用的建议。很多婚礼上伴郎们的礼服不搭配，或是外套不合身，都是因为忽略了这个简单的步骤。<br/>如果礼服不合身，这时还有时间回到衣店或是裁缝那里搞定这个麻烦。</p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('5', '1', '6', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">全套婚礼仅需8880元</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">LED高清大屏全套婚礼套餐仅需13980元</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">3款灯光加强包任您选择</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">进店还有多款超值套餐等待着您</p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('6', '1', '6', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">炫彩灯光主题套餐12880元 （绝无附加费用）</strong><br/>【专业婚礼顾问指导】<br/>婚礼筹备计划案 婚纱礼服定制及租赁方案建议 婚纱摄影拍摄指导<br/>新人婚前物品准备明细表 婚礼场地实地考察沟通 婚礼前期的策划沟通<br/>婚礼现场布置方案 酒店服务配合明细表 宴会服务细节交流<br/>宴会桌位摆放指导 婚礼各方人员安排明细表 婚礼致辞参考<br/>婚礼当天新人流程时间安排 婚礼仪式流程明细单 婚礼前彩排及礼仪指导<br/>【婚礼人员团队服务】<br/>（1） 专业婚礼策划师1位：全程婚礼筹备指导，为新人策划专属的婚礼<br/>（2） 资深婚礼主持人1位：婚前沟通并提出专业性建议，婚礼前彩排指导，婚礼当天完美展现<br/>（3） 高清婚礼摄像师双机位2位：高清拍摄，全程跟拍记录化妆、接亲、典礼、敬酒，时尚后期编辑及精美DVD光盘两套<br/>（4） 资深婚礼摄影师1位：5D2以上机型及镜头组，全程跟拍化妆、接亲、典礼、敬酒、合影等，承诺300以上照片，部分精选精修，精美数据光盘一套<br/>（5） 资深化妆师1位：婚前免费试妆，全程跟妆，提供全部化妆用品及造型方面专业建议，赠送伴娘妆和妈妈妆<br/>（6） 婚礼现场督导1位：保证婚礼现场完美执行，解决现场突发状况，婚礼当天全程协调。<br/>（7） 专业婚礼DJ师1位：婚礼仪式音乐设计及编排，婚礼当日完美配合主持人<br/>（8） 专业灯光师3位：婚礼现场灯光设计及调控，整场灯光特效控制<br/>（9） 专业道具师1位：合理操控婚礼现场道具设备运行，完美展现物美特效<br/>【现场主体布置】<br/>（10） 豪华欧式纱幔背景1套：4米*8米以内，优质丝光纱幔，背景架，飘纱造型<br/>（11） WEDDING牌或主题LOGO牌<br/>（12） 造型背景装饰设计<br/>（13） 烛台仪式位，香槟塔仪式位，签到台欧式纱艺造型布置（根据现场主题色系搭配设计）<br/>（14） 精美个性迎宾水牌1个（提供高档木架使用及画面设计精美制作）<br/>【鲜花花艺】<br/>（15） 欧式罗马鲜花柱2座或欧式鲜花花门1座或欧式鲜花仪式亭1座（优质花材，花形饱满）<br/>（16） 欧式风情鲜花路引10个（优质花材，花形饱满）<br/>（17） 欧式主桌高瓶桌花装饰2个（优质花材，花形饱满）<br/>（18） 烛台仪式位装饰1个（根据现场主题色系搭配设计）<br/>（19） 香槟台仪式位装饰1个（根据现场主题色系搭配设计）<br/>（20） 签到台花艺装饰1组（优质花材，花形饱满）<br/>（21） 西式个性迎宾牌花艺装饰1组（优质花材，花形饱满）<br/>（22） 细节鲜花装饰5束：（点火器饰花，交杯酒饰花，麦克风饰花）<br/>（23） 经典唯美新娘手捧花1束<br/>（24） 新郎新娘胸花各1束<br/>（25） 贵宾胸花9束（伴郎、伴娘、双方父母、证婚人、主婚人、主持人）<br/>（26） 新娘精美手腕花1束，头花1组<br/>（27） 婚礼入场鲜花花瓣足量<br/>【仪式道具及效果设备】<br/>（28） 七色炫彩LED染色灯16台（渲染烘托整场色彩）<br/>（29） 专用舞台面光灯4台<br/>（30） 专用移动灯光架2套<br/>（31） 舞台炫彩电脑摇头灯4台（渲染宴会厅整体气氛，制造动感效果）<br/>（32） 1200W大功率专业舞台追光灯2台（烘托整场气氛）<br/>（33） 大型舞台专用干冰机1台，干冰10公斤（营造浪漫气氛）<br/>（34） 双风口大功率七彩泡泡机2台（优质七彩泡泡液）<br/>（35） 新颖精美烛台1套或七彩许愿沙1套<br/>（36） 精美香槟塔1座（不包含香槟酒）<br/>【免费提供】<br/>（37） 新娘饰品及皇冠免费借用<br/>（38） 精美戒枕婚礼当天免费使用<br/>（39） 精美誓言书婚礼当天免费使用<br/>（40） 免费提供15平米纯新红/白地毯<br/>（41） 免费提供椅背缎带150个<br/>（42） 精致小花篮4个<br/>（43） 婚礼实用大礼包一套（签到本1本，签到金笔2支，桌卡，喜字8个）</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; overflow: hidden; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">镜面T台暗场浪漫主题套餐14880元（绝无任何附加费用）</strong><br/>【专业婚礼顾问指导】<br/>婚礼筹备计划案 婚纱礼服定制及租赁方案建议 婚纱摄影拍摄指导<br/>新人婚前物品准备明细表 婚礼场地实地考察沟通 婚礼前期的策划沟通<br/>婚礼现场布置方案 酒店服务配合明细表 宴会服务细节交流<br/>宴会桌位摆放指导 婚礼各方人员安排明细表 婚礼致辞参考<br/>婚礼当天新人流程时间安排 婚礼仪式流程明细单 婚礼前彩排及礼仪指导<br/>【婚礼人员团队服务】<br/>（1） 专业婚礼策划师1位：全程婚礼筹备指导，为新人策划专属的婚礼<br/>（2） 资深婚礼主持人1位：婚前沟通并提出专业性建议，婚礼前彩排指导，婚礼当天完美展现<br/>（3） 高清婚礼摄像师双机位2位：高清拍摄，全程跟拍记录化妆、接亲、典礼、敬酒，时尚后期编辑及精美DVD光盘两套<br/>（4） 资深婚礼摄影师1位：5D2以上机型及镜头组，全程跟拍化妆、接亲、典礼、敬酒、合影等，承诺300以上照片，部分精选精修，精美数据光盘一套<br/>（5） 资深化妆师1位：婚前免费试妆，全程跟妆，提供全部化妆用品及造型方面专业建议，赠送伴娘妆和妈妈妆<br/>（6） 婚礼现场督导1位：保证婚礼现场完美执行，解决现场突发状况，婚礼当天全程协调。<br/>（7） 专业婚礼DJ师1位：婚礼仪式音乐设计及编排，婚礼当日完美配合主持人<br/>（8） 专业灯光师3位：婚礼现场灯光设计及调控，整场灯光特效控制<br/>（9） 专业道具师1位：合理操控婚礼现场道具设备运行，完美展现物美特效<br/>【现场主体布置】<br/>（10） 豪华欧式纱幔背景1套：4米*8米以内，优质丝光纱幔，背景架，飘纱造型<br/>（11） WEDDING牌或主题LOGO牌<br/>（12） 造型背景装饰设计<br/>（13） 背景花艺一组（背景两侧花球2个或花环1个）<br/>（14） T台搭建2米*10米=20平米<br/>（15） T台镜面地毯（一次性高档材质， 1.2米*1.8米/块， 9块）或双色地毯<br/>（16） 舞台全新（红/白）地毯包裹<br/>（17） 烛台仪式位，香槟塔仪式位，签到台欧式纱艺造型布置（根据现场主题色系搭配设计）<br/>（18） 精美个性迎宾水牌1组（提供高档木架使用及画面设计精美制作）<br/>【鲜花花艺】<br/>（19） 豪华欧式鲜花门1座或豪华欧式鲜花仪式纱亭1座或豪华欧式罗马风格鲜花立柱2座（优质花材，花形饱满）<br/>（20） 欧式风情唯美T台鲜花路引10个（优质花材，花形饱满）<br/>（21） 欧式大气主桌鲜花花艺装饰2个（优质花材，花形饱满）<br/>（22） 烛台仪式位装饰（根据现场主题色系搭配设计）<br/>（23） 香槟台仪式位装饰（根据现场主题色系搭配设计）<br/>（24） 签到台花艺装饰1组（优质花材，花形饱满）<br/>（25） 创意个性迎宾牌花艺装饰1组（上下两组饱满鲜花装饰，创意制作）<br/>（26） 细节鲜花装饰5束：（点火器饰花，交杯酒饰花，麦克风饰花）<br/>（27） 经典唯美新娘手捧花1束<br/>（28） 新郎新娘胸花各1束<br/>（29） 贵宾胸花9束（伴郎、伴娘、双方父母、证婚人、主婚人、主持人）<br/>（30） 新娘精美手腕花1束，头花1组<br/>（31） 婚礼入场鲜花花瓣足量<br/>【仪式道具及效果设备】<br/>（32） 七色炫彩LED染色灯16台（渲染烘托整场色彩）<br/>（33） 专用舞台面光灯8台<br/>（34） 专用移动灯光架2套<br/>（35） 舞台炫彩电脑摇头灯6台（渲染宴会厅整体气氛，制造动感效果）<br/>（36） 1200W大功率专业舞台追光灯2台（烘托整场气氛）<br/>（37） 大型舞台专用干冰机1台，干冰10公斤（营造浪漫气氛）<br/>（38） 双风口大功率七彩泡泡机2台（优质七彩泡泡液）<br/>（39） 新颖精美烛台1套或七彩许愿沙1套<br/>（40） 精美香槟塔1座（不包含香槟酒）<br/>【免费提供】<br/>（41） 新娘饰品及皇冠免费借用<br/>（42） 精美戒枕婚礼当天免费使用<br/>（43） 精美誓言书婚礼当天免费使用<br/>（44） 免费提供15平米纯新红/白地毯<br/>（45） 免费提供椅背缎带150个<br/>（46） 精致小花篮4个<br/>（47） 婚礼实用大礼包一套（签到本1本，签到金笔2支，桌卡，喜字8个）<br/><strong style=\"margin: 0px; padding: 0px;\">LED大屏浪漫光影套餐12980元 （绝无附加费用）</strong><br/>【专业婚礼顾问指导】<br/>婚礼筹备计划案 婚纱礼服定制及租赁方案建议 婚纱摄影拍摄指导<br/>新人婚前物品准备明细表 婚礼场地实地考察沟通 婚礼前期的策划沟通<br/>婚礼现场布置方案 酒店服务配合明细表 宴会服务细节交流<br/>宴会桌位摆放指导 婚礼各方人员安排明细表 婚礼致辞参考<br/>婚礼当天新人流程时间安排 婚礼仪式流程明细单 婚礼前彩排及礼仪指导<br/>【婚礼人员团队服务】<br/>（1） 专业婚礼策划师1位：全程婚礼筹备指导，为新人策划专属的婚礼<br/>（2） 资深婚礼主持人1位：婚前沟通并提出专业性建议，婚礼前彩排指导，婚礼当天完美展现<br/>（3） 高清婚礼摄像师双机位2位：高清拍摄，全程跟拍记录化妆、接亲、典礼、敬酒，时尚后期编辑及精美DVD光盘两套<br/>（4） 资深婚礼摄影师1位：5D2以上机型及镜头组，全程跟拍化妆、接亲、典礼、敬酒、合影等，承诺300以上照片，部分精选精修，精美数据光盘一套<br/>（5） 资深化妆师1位：婚前免费试妆，全程跟妆，提供全部化妆用品及造型方面专业建议，赠送伴娘妆和妈妈妆<br/>（6） 婚礼现场督导1位：保证婚礼现场完美执行，解决现场突发状况，婚礼当天全程协调。<br/>（7） 专业婚礼DJ师1位：婚礼仪式音乐设计及编排，婚礼当日完美配合主持人<br/>（8） 专业灯光师3位：婚礼现场灯光设计及调控，整场灯光特效控制<br/>（9） 专业视频总控师1位：根据婚礼流程，编排播放大屏素材<br/>【现场主体布置】<br/>（10） 高清LED屏幕背景12平米<br/>（11） 欧式纱幔副背景2块或主题喷绘副背景2块12平米以内（主LED背景两侧设计摆放）<br/>（12） 烛台仪式位，香槟塔仪式位，签到台欧式纱艺造型布置，颜色根据现场自由搭配<br/>【鲜花花艺】<br/>（13） 欧式半鲜花门1座或四角式欧式鲜花亭一座（优质花材，花形饱满）<br/>（14） 经典欧式鲜花路引8个：（优质花材，花形饱满）<br/>（15） 主桌鲜花花艺装饰2个（优质花材，花形饱满）<br/>（16） 烛台仪式位花艺装饰1个（优质花材，花形饱满）<br/>（17） 香槟台仪式位花艺装饰1个（优质花材，花形饱满）<br/>（18） 签到台花艺装饰1个（优质常规花材，花形饱满）<br/>（19） 细节鲜花装饰5束：（点火器饰花，交杯酒饰花，麦克风饰花）<br/>（20） 经典唯美新娘手捧花1束<br/>（21） 新郎新娘胸花各1束<br/>（22） 贵宾胸花9束（伴郎、伴娘、双方父母、证婚人、主婚人、主持人）<br/>（23） 新娘精美手腕花1束，头花1组<br/>（24） 婚礼入场鲜花花瓣足量<br/>【仪式道具及效果设备】<br/>（25） 七色炫彩LED染色灯8台（渲染烘托整场色彩）<br/>（26） 专用舞台面光灯8台 （营造浪漫气氛）<br/>（27） 专用移动灯光架2套<br/>（28） 1200W大功率专业舞台追光灯2台（烘托整场气氛）<br/>（29） 双风口大功率七彩泡泡机2台（优质七彩泡泡液）<br/>（30） 新颖精美烛台1套或七彩许愿沙1套<br/>（31） 精美香槟塔1座（不包含香槟酒）<br/>【免费提供】<br/>（32） 免费提供制作震撼开场小片一套<br/>（33） 新娘饰品及皇冠免费借用<br/>（34） 精美戒枕婚礼当天免费使用<br/>（35） 精美誓言书婚礼当天免费使用<br/>（36） 免费提供15平米纯新红/白地毯<br/>（37） 免费提供椅背缎带150个<br/>（38） 精致小花篮4个<br/>（39） 婚礼实用大礼包一套（签到本1本，签到金笔2支，桌卡，喜字8个）</p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_news_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_extend_index`;
CREATE TABLE `om_1_news_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_news_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_extend_verify`;
CREATE TABLE `om_1_news_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_news_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_0`;
CREATE TABLE `om_1_news_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_1`;
CREATE TABLE `om_1_news_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_2`;
CREATE TABLE `om_1_news_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_3`;
CREATE TABLE `om_1_news_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_4`;
CREATE TABLE `om_1_news_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_5`;
CREATE TABLE `om_1_news_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_6`;
CREATE TABLE `om_1_news_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_7`;
CREATE TABLE `om_1_news_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_8`;
CREATE TABLE `om_1_news_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_9`;
CREATE TABLE `om_1_news_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_flag`;
CREATE TABLE `om_1_news_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_news_flag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_form`;
CREATE TABLE `om_1_news_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_news_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_html`;
CREATE TABLE `om_1_news_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_news_html
-- ----------------------------
INSERT INTO `om_1_news_html` VALUES ('1', '1', '0', '0', '3', '1', 'a:1:{i:0;s:58:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./xinwenzixun1/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('2', '1', '0', '0', '3', '1', 'a:1:{i:0;s:72:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./xinwenzixun1/xinwenzixun11/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('3', '1', '0', '0', '3', '1', 'a:1:{i:0;s:58:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./xinwenzixun1/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('4', '1', '0', '0', '3', '1', 'a:1:{i:0;s:72:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./xinwenzixun1/xinwenzixun11/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('5', '2', '0', '0', '3', '2', 'a:1:{i:0;s:59:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./hunlixueyuan2/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('6', '2', '0', '0', '3', '2', 'a:1:{i:0;s:74:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./hunlixueyuan2/hunlixueyuan21/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('7', '3', '0', '0', '3', '3', 'a:1:{i:0;s:59:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./yuanshirizhi3/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('8', '3', '0', '0', '3', '3', 'a:1:{i:0;s:74:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./yuanshirizhi3/yuanshirizhi31/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('9', '4', '0', '0', '3', '4', 'a:1:{i:0;s:55:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./activity4/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('10', '4', '0', '0', '3', '4', 'a:1:{i:0;s:66:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./activity4/activity41/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('11', '5', '0', '0', '3', '5', 'a:1:{i:0;s:51:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./news5/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('12', '5', '0', '0', '3', '5', 'a:1:{i:0;s:58:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./news5/news51/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('13', '6', '0', '0', '3', '6', 'a:1:{i:0;s:57:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./fuwubaojia6/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('14', '6', '0', '0', '3', '6', 'a:1:{i:0;s:70:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./fuwubaojia6/fuwubaojia61/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('15', '7', '0', '0', '3', '7', 'a:1:{i:0;s:60:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./youhuihuodong7/index.html\\\";}');
INSERT INTO `om_1_news_html` VALUES ('16', '7', '0', '0', '3', '7', 'a:1:{i:0;s:76:\\\"J:\\\\php\\\\wwwroot\\\\WWW\\\\omweb\\\\hq\\\\news/./youhuihuodong7/youhuihuodong71/index.html\\\";}');

-- ----------------------------
-- Table structure for om_1_news_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_index`;
CREATE TABLE `om_1_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_news_index
-- ----------------------------
INSERT INTO `om_1_news_index` VALUES ('1', '1', '1', '9', '1425805491');
INSERT INTO `om_1_news_index` VALUES ('2', '1', '1', '9', '1425805608');
INSERT INTO `om_1_news_index` VALUES ('3', '1', '2', '9', '1425805673');
INSERT INTO `om_1_news_index` VALUES ('4', '1', '2', '9', '1425805708');
INSERT INTO `om_1_news_index` VALUES ('5', '1', '6', '9', '1425805777');
INSERT INTO `om_1_news_index` VALUES ('6', '1', '6', '9', '1425805795');

-- ----------------------------
-- Table structure for om_1_news_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_search`;
CREATE TABLE `om_1_news_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_news_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_tag`;
CREATE TABLE `om_1_news_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_news_tag
-- ----------------------------
INSERT INTO `om_1_news_tag` VALUES ('1', '摄影师', 'sheyingshi', '0');
INSERT INTO `om_1_news_tag` VALUES ('2', '婚礼', 'hunli', '0');
INSERT INTO `om_1_news_tag` VALUES ('3', '记录', 'jilu', '0');
INSERT INTO `om_1_news_tag` VALUES ('4', '婚纱照', 'hunshazhao', '0');
INSERT INTO `om_1_news_tag` VALUES ('5', '婚宴酒店', 'hunyanjiudian', '0');
INSERT INTO `om_1_news_tag` VALUES ('6', '新娘', 'xinniang', '0');

-- ----------------------------
-- Table structure for om_1_news_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_verify`;
CREATE TABLE `om_1_news_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_news_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_page
-- ----------------------------
DROP TABLE IF EXISTS `om_1_page`;
CREATE TABLE `om_1_page` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL COMMENT '模块dir',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(255) NOT NULL COMMENT '单页名称',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL COMMENT '是否有子类',
  `childids` varchar(255) NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `title` varchar(255) NOT NULL COMMENT 'seo标题',
  `keywords` varchar(255) NOT NULL COMMENT 'seo关键字',
  `description` varchar(255) NOT NULL COMMENT 'seo描述',
  `content` mediumtext COMMENT '单页内容',
  `attachment` text COMMENT '附件信息',
  `template` varchar(30) NOT NULL COMMENT '模板文件',
  `urlrule` smallint(5) unsigned DEFAULT NULL COMMENT 'url规则id',
  `urllink` varchar(255) NOT NULL COMMENT 'url外链',
  `getchild` tinyint(1) unsigned NOT NULL COMMENT '将下级第一个菜单作为当前菜单',
  `show` tinyint(1) unsigned NOT NULL COMMENT '是否显示在菜单',
  `url` varchar(255) NOT NULL COMMENT 'url地址',
  `setting` mediumtext NOT NULL COMMENT '自定义内容',
  `displayorder` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`module`),
  KEY `pid` (`pid`),
  KEY `show` (`show`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of om_1_page
-- ----------------------------
INSERT INTO `om_1_page` VALUES ('1', '', '0', '0', '关于缘始', 'guanyuyuanshi', '', '1', '1,2,3,4', '', '', '', '', null, null, 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=1', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('2', '', '1', '0,1', '品牌故事', 'pinpaigushi', 'guanyuyuanshi/', '0', '2', '', '', '', '', '<p>品牌故事</p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=2', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('3', '', '1', '0,1', '精英团队', 'jingyingtuandui', 'guanyuyuanshi/', '0', '3', '', '', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &#39;Lucida Console&#39;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">精英团队</span></p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=3', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('4', '', '1', '0,1', '联系我们', 'lianxiwomen', 'guanyuyuanshi/', '0', '4', '', '', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &#39;Lucida Console&#39;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">联系我们</span></p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=4', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('5', '', '0', '0', 'GROUP', 'group', '', '1', '5,6,7,8', '', '', '', '', '<p>GROUP</p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=5', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('6', '', '5', '0,5', '在线预约', 'zaixianyuyue', 'group/', '0', '6', '', '', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &#39;Lucida Console&#39;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">在线预约</span></p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=6', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('7', '', '5', '0,5', '合作酒店', 'hezuojiudian', 'group/', '0', '7', '', '', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &#39;Lucida Console&#39;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">合作酒店</span></p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=7', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('8', '', '5', '0,5', '合作加盟', 'hezuojiameng', 'group/', '0', '8', '', '', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &#39;Lucida Console&#39;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">合作加盟</span></p>', '', 'page.html', '0', '', '1', '1', 'http://hq.in/index.php?c=page&id=8', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');

-- ----------------------------
-- Table structure for om_admin
-- ----------------------------
DROP TABLE IF EXISTS `om_admin`;
CREATE TABLE `om_admin` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `usermenu` text COMMENT '自定义面板菜单，序列化数组格式',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of om_admin
-- ----------------------------
INSERT INTO `om_admin` VALUES ('1', '网站创始人', '');

-- ----------------------------
-- Table structure for om_admin_login
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_login`;
CREATE TABLE `om_admin_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `loginip` varchar(50) NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='登录日志记录';

-- ----------------------------
-- Records of om_admin_login
-- ----------------------------
INSERT INTO `om_admin_login` VALUES ('1', '1', '127.0.0.1', '1425705333', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v40.0.2214.115');
INSERT INTO `om_admin_login` VALUES ('2', '1', '127.0.0.1', '1425816510', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');

-- ----------------------------
-- Table structure for om_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_menu`;
CREATE TABLE `om_admin_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text NOT NULL COMMENT '菜单语言名称',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(20) DEFAULT NULL COMMENT '菜单标识',
  `displayorder` tinyint(3) unsigned DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `uri` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of om_admin_menu
-- ----------------------------
INSERT INTO `om_admin_menu` VALUES ('1', '0', '首页', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('2', '0', '系统', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('3', '0', '网站', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('4', '0', '会员', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('5', '0', '应用', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('6', '1', '我的面板', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('7', '6', '后台首页', 'admin/home/main', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('8', '2', '系统功能', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('9', '2', '系统维护', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('10', '2', '角色权限', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('11', '8', '后台菜单', 'admin/menu/index', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('12', '9', '数据结构', 'admin/db/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('13', '10', '角色管理', 'admin/role/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('14', '10', '管理员管理', 'admin/root/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('15', '3', '网站功能', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('40', '24', '单页管理', 'admin/page/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('18', '15', '网站配置', 'admin/site/config', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('19', '8', '网站管理', 'admin/site/index', '', '', '8');
INSERT INTO `om_admin_menu` VALUES ('20', '15', '网站导航', 'admin/navigator/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('21', '8', '模块管理', 'admin/module/index', '', '', '9');
INSERT INTO `om_admin_menu` VALUES ('22', '15', '附件管理', 'admin/attachment/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('24', '3', '内容相关', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('25', '4', '会员管理', '/', null, '', '1');
INSERT INTO `om_admin_menu` VALUES ('26', '25', '会员列表', 'member/admin/home/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('27', '25', '会 员 组', 'member/admin/group/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('30', '25', '会员设置', 'member/admin/setting/index', '', '', '98');
INSERT INTO `om_admin_menu` VALUES ('32', '4', '模板风格', '/', null, '', '4');
INSERT INTO `om_admin_menu` VALUES ('33', '25', '自定义字段', 'admin/field/index/rname/member/rid/0', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('35', '15', '下载镜像', 'admin/downservers/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('37', '25', '快捷登录', 'member/admin/setting/oauth', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('38', '10', '审核流程', 'admin/verify/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('39', '25', '会员权限', 'member/admin/setting/permission', '', '', '7');
INSERT INTO `om_admin_menu` VALUES ('59', '25', '财务管理', 'member/admin/pay/card', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('60', '24', '联动菜单', 'admin/linkage/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('61', '8', '邮件系统', 'admin/mail/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('62', '9', '系统升级', 'admin/upgrade/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('63', '8', '系统配置', 'admin/system/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('65', '9', '系统体检', 'admin/check/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('66', '8', '操作日志', 'admin/system/oplog', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('67', '3', '模板风格', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('68', '67', '模板管理', 'admin/tpl/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('69', '67', '风格管理', 'admin/theme/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('70', '67', '标签向导', 'admin/tpl/tag', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('71', '32', '会员模板', 'member/admin/tpl/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('72', '32', '会员风格', 'member/admin/theme/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('73', '80', '空间模板', 'member/admin/spacetpl/index', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('74', '80', '空间管理', 'member/admin/space/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('75', '5', '应用中心', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('76', '75', '应用管理', 'admin/application/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('77', '24', '文本块管理', 'admin/block/index', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('78', '25', '会员菜单', 'member/admin/menu/index', '', '', '5');
INSERT INTO `om_admin_menu` VALUES ('79', '6', '资料修改', 'admin/root/my', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('80', '4', '会员空间', '', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('81', '80', '空间模型', 'member/admin/model/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('82', '24', '表单管理', 'admin/form/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('83', '80', '文章管理', 'member/admin/content/index/mid/1', '', 'space-1', '6');
INSERT INTO `om_admin_menu` VALUES ('84', '80', '外链管理', 'member/admin/content/index/mid/2', '', 'space-2', '7');
INSERT INTO `om_admin_menu` VALUES ('85', '80', '日志管理', 'member/admin/content/index/mid/3', '', 'space-3', '8');
INSERT INTO `om_admin_menu` VALUES ('86', '80', '相册管理', 'member/admin/content/index/mid/4', '', 'space-4', '9');
INSERT INTO `om_admin_menu` VALUES ('87', '80', '幻灯管理', 'member/admin/content/index/mid/5', '', 'space-5', '10');
INSERT INTO `om_admin_menu` VALUES ('88', '80', '空间设置', 'member/admin/setting/space', '', '', '199');
INSERT INTO `om_admin_menu` VALUES ('89', '8', '任务队列', 'admin/cron/index', '', '', '3');
INSERT INTO `om_admin_menu` VALUES ('90', '8', '短信系统', 'admin/sms/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('91', '24', 'URL规则', 'admin/urlrule/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('92', '80', '自定义字段', 'admin/field/index/rname/spacetable/rid/0', '', '', '200');
INSERT INTO `om_admin_menu` VALUES ('93', '6', '登录日志', 'admin/root/log', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('94', '6', '后台菜单', 'admin/menu/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('95', '6', '会员菜单', 'member/admin/menu/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('96', '6', '应用管理', 'admin/application/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('97', '6', '模块管理', 'admin/module/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('98', '6', '更新数据', 'admin/home/clear', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('99', '6', '更新全站', 'admin/home/cache', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('100', '6', '系统体检', 'admin/check/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('101', '6', '生成伪静态', 'admin/route/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('102', '80', '默认栏目', 'member/admin/space/init', '', '', '198');
INSERT INTO `om_admin_menu` VALUES ('103', '6', '<b><font color=red>新手入门必看</font></b>', '', 'http://www.omooo.com/help/list-341.html', '', '99');
INSERT INTO `om_admin_menu` VALUES ('104', '25', '会员互动', 'member/admin/sns/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('105', '0', '内容相关', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('106', '105', '内容管理', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('107', '106', '单页管理', 'admin/page/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('108', '106', '导航/baner/广告', 'admin/navigator/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('109', '106', '文本链接内容', 'admin/block/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('110', '0', '新闻中心', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('111', '110', '文档管理', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('112', '111', '已通过文档', 'news/admin/home/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('113', '111', '待审核文档', 'news/admin/home/verify', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('114', '111', '栏目分类', 'news/admin/category/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('115', '111', 'Tag标签', 'news/admin/tag/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('116', '111', '单页管理', 'news/admin/page/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('117', '110', '相关功能', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('118', '117', '更新地址', 'news/admin/home/url', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('119', '117', '生成静态', 'news/admin/home/html', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('120', '117', '自定义字段', 'admin/field/index/rname/module/rid/1', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('121', '117', '模块属性配置', 'admin/module/config/id/1', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('122', '110', '模板风格', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('123', '122', '模板管理', 'news/admin/tpl/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('124', '122', '风格管理', 'news/admin/theme/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('125', '122', '标签向导', 'news/admin/tpl/tag', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('126', '0', '婚礼案例', '', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('127', '126', '文档管理', '', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('128', '127', '已通过文档', 'case/admin/home/index', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('129', '127', '待审核文档', 'case/admin/home/verify', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('130', '127', '栏目分类', 'case/admin/category/index', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('131', '127', 'Tag标签', 'case/admin/tag/index', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('132', '127', '单页管理', 'case/admin/page/index', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('133', '126', '相关功能', '', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('134', '133', '更新地址', 'case/admin/home/url', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('135', '133', '生成静态', 'case/admin/home/html', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('136', '133', '自定义字段', 'admin/field/index/rname/module/rid/2', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('137', '133', '模块属性配置', 'admin/module/config/id/2', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('138', '126', '模板风格', '', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('139', '138', '模板管理', 'case/admin/tpl/index', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('140', '138', '风格管理', 'case/admin/theme/index', null, 'module-case', '0');
INSERT INTO `om_admin_menu` VALUES ('141', '138', '标签向导', 'case/admin/tpl/tag', null, 'module-case', '0');

-- ----------------------------
-- Table structure for om_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_role`;
CREATE TABLE `om_admin_role` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL COMMENT '允许管理的站点，序列化数组格式',
  `name` text NOT NULL COMMENT '角色组语言名称',
  `system` text NOT NULL COMMENT '系统权限',
  `module` text NOT NULL COMMENT '模块权限',
  `application` text NOT NULL COMMENT '应用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台角色权限表';

-- ----------------------------
-- Records of om_admin_role
-- ----------------------------
INSERT INTO `om_admin_role` VALUES ('1', '', '超级管理员', '', '', '');
INSERT INTO `om_admin_role` VALUES ('2', '', '网站编辑员', '', '', '');

-- ----------------------------
-- Table structure for om_admin_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_verify`;
CREATE TABLE `om_admin_verify` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '名称',
  `verify` text NOT NULL COMMENT '审核部署',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='审核管理表';

-- ----------------------------
-- Records of om_admin_verify
-- ----------------------------
INSERT INTO `om_admin_verify` VALUES ('1', '审核一次', 'a:1:{i:1;a:2:{i:0;s:1:\\\"2\\\";i:1;s:1:\\\"3\\\";}}');

-- ----------------------------
-- Table structure for om_application
-- ----------------------------
DROP TABLE IF EXISTS `om_application`;
CREATE TABLE `om_application` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` text COMMENT '模块划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of om_application
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment`;
CREATE TABLE `om_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint(8) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `filesize` int(10) unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of om_attachment
-- ----------------------------
INSERT INTO `om_attachment` VALUES ('1', '1', 'zansheng', '1', 'om_1_news-1', '1', '0', '4127', 'jpg', '2f06ce7d9a8c7e749a99973bf190bc4a');
INSERT INTO `om_attachment` VALUES ('2', '1', 'zansheng', '1', '', '0', '0', '59591', 'jpg', '85a316ee6cff8cb04bd42ddfba839f69');
INSERT INTO `om_attachment` VALUES ('3', '1', 'zansheng', '1', '', '0', '0', '55739', 'jpg', 'f2c68e820d993458d3ca733b02c430c1');
INSERT INTO `om_attachment` VALUES ('4', '1', 'zansheng', '1', '', '0', '0', '78141', 'jpg', '9041297748f06d7828fa29493d0224fb');
INSERT INTO `om_attachment` VALUES ('5', '1', 'zansheng', '1', '', '0', '0', '82762', 'jpg', 'fe972b416c1f2b29d1d5ea5220c8a8cb');
INSERT INTO `om_attachment` VALUES ('6', '1', 'zansheng', '1', '', '0', '0', '92144', 'jpg', '69e98866e46a3f2ccfba95533307803e');
INSERT INTO `om_attachment` VALUES ('7', '1', 'zansheng', '1', '', '0', '0', '63816', 'jpg', '6132c20f8575da211abeaae202edf457');
INSERT INTO `om_attachment` VALUES ('8', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '59591', 'jpg', '85a316ee6cff8cb04bd42ddfba839f69');
INSERT INTO `om_attachment` VALUES ('9', '1', 'zansheng', '1', '', '0', '0', '38043', 'jpg', '9f83b699e2cac69fd91ae860cb3f2438');
INSERT INTO `om_attachment` VALUES ('10', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '55739', 'jpg', 'f2c68e820d993458d3ca733b02c430c1');
INSERT INTO `om_attachment` VALUES ('11', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '78141', 'jpg', '9041297748f06d7828fa29493d0224fb');
INSERT INTO `om_attachment` VALUES ('12', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '82762', 'jpg', 'fe972b416c1f2b29d1d5ea5220c8a8cb');
INSERT INTO `om_attachment` VALUES ('13', '1', 'zansheng', '1', '', '0', '0', '140744', 'jpg', '43352d1492d0e38f51cfe18a8d8dfcd8');
INSERT INTO `om_attachment` VALUES ('14', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '92144', 'jpg', '69e98866e46a3f2ccfba95533307803e');
INSERT INTO `om_attachment` VALUES ('15', '1', 'zansheng', '1', '', '0', '0', '40399', 'jpg', '2e1bd7e22d78885f1c4cedc6fa6a2e2d');
INSERT INTO `om_attachment` VALUES ('16', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '63816', 'jpg', '6132c20f8575da211abeaae202edf457');
INSERT INTO `om_attachment` VALUES ('17', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '38043', 'jpg', '9f83b699e2cac69fd91ae860cb3f2438');
INSERT INTO `om_attachment` VALUES ('18', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '140744', 'jpg', '43352d1492d0e38f51cfe18a8d8dfcd8');
INSERT INTO `om_attachment` VALUES ('19', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '40399', 'jpg', '2e1bd7e22d78885f1c4cedc6fa6a2e2d');
INSERT INTO `om_attachment` VALUES ('20', '1', 'zansheng', '1', '', '0', '0', '89278', 'jpg', '04d0ee4a0c1f0512b5bea4a08099bcf0');
INSERT INTO `om_attachment` VALUES ('21', '1', 'zansheng', '1', '', '0', '0', '72437', 'jpg', 'a5642864380ef8c1edee568b863efd2c');
INSERT INTO `om_attachment` VALUES ('22', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '89278', 'jpg', '04d0ee4a0c1f0512b5bea4a08099bcf0');
INSERT INTO `om_attachment` VALUES ('23', '1', 'zansheng', '1', '', '0', '0', '61085', 'jpg', 'ee8afb2c541c28ac81d30833c8f7cdcf');
INSERT INTO `om_attachment` VALUES ('24', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '72437', 'jpg', 'a5642864380ef8c1edee568b863efd2c');
INSERT INTO `om_attachment` VALUES ('25', '1', 'zansheng', '1', 'om_1_case-1', '1', '0', '61085', 'jpg', 'ee8afb2c541c28ac81d30833c8f7cdcf');
INSERT INTO `om_attachment` VALUES ('26', '1', 'zansheng', '1', '', '0', '0', '70067', 'jpg', '420289d28ffd494814220e3215a1830b');
INSERT INTO `om_attachment` VALUES ('27', '1', 'zansheng', '1', '', '0', '0', '81045', 'jpg', '87c3db5038f6c80d6a61cf0f064b9195');
INSERT INTO `om_attachment` VALUES ('28', '1', 'zansheng', '1', '', '0', '0', '86796', 'jpg', 'c578d77ab43b0173735d60b424da9871');
INSERT INTO `om_attachment` VALUES ('29', '1', 'zansheng', '1', '', '0', '0', '59067', 'jpg', '4496a2161fc0090e4402032141ac9164');
INSERT INTO `om_attachment` VALUES ('30', '1', 'zansheng', '1', '', '0', '0', '63414', 'jpg', '5511ecad751006a8f07a9af4cbe898c3');
INSERT INTO `om_attachment` VALUES ('31', '1', 'zansheng', '1', '', '0', '0', '49541', 'jpg', '2ebeda33b808031ffe380bf8ee73c31e');
INSERT INTO `om_attachment` VALUES ('32', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '70067', 'jpg', '420289d28ffd494814220e3215a1830b');
INSERT INTO `om_attachment` VALUES ('33', '1', 'zansheng', '1', '', '0', '0', '52182', 'jpg', 'dc63916396faabf6cfb9607dd8934d03');
INSERT INTO `om_attachment` VALUES ('34', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '81045', 'jpg', '87c3db5038f6c80d6a61cf0f064b9195');
INSERT INTO `om_attachment` VALUES ('35', '1', 'zansheng', '1', '', '0', '0', '64555', 'jpg', '28defb09403191c9b140c9d4a7f19cdf');
INSERT INTO `om_attachment` VALUES ('36', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '86796', 'jpg', 'c578d77ab43b0173735d60b424da9871');
INSERT INTO `om_attachment` VALUES ('37', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '59067', 'jpg', '4496a2161fc0090e4402032141ac9164');
INSERT INTO `om_attachment` VALUES ('38', '1', 'zansheng', '1', '', '0', '0', '62320', 'jpg', 'dc4e872db55d4d614fd023a2db262cfd');
INSERT INTO `om_attachment` VALUES ('39', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '63414', 'jpg', '5511ecad751006a8f07a9af4cbe898c3');
INSERT INTO `om_attachment` VALUES ('40', '1', 'zansheng', '1', '', '0', '0', '77573', 'jpg', 'e4f633907cdd067db55d6f09ff325410');
INSERT INTO `om_attachment` VALUES ('41', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '49541', 'jpg', '2ebeda33b808031ffe380bf8ee73c31e');
INSERT INTO `om_attachment` VALUES ('42', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '52182', 'jpg', 'dc63916396faabf6cfb9607dd8934d03');
INSERT INTO `om_attachment` VALUES ('43', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '64555', 'jpg', '28defb09403191c9b140c9d4a7f19cdf');
INSERT INTO `om_attachment` VALUES ('44', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '62320', 'jpg', 'dc4e872db55d4d614fd023a2db262cfd');
INSERT INTO `om_attachment` VALUES ('45', '1', 'zansheng', '1', 'om_1_case-2', '1', '0', '77573', 'jpg', 'e4f633907cdd067db55d6f09ff325410');

-- ----------------------------
-- Table structure for om_attachment_0
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_0`;
CREATE TABLE `om_attachment_0` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表0';

-- ----------------------------
-- Records of om_attachment_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_1
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_1`;
CREATE TABLE `om_attachment_1` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表1';

-- ----------------------------
-- Records of om_attachment_1
-- ----------------------------
INSERT INTO `om_attachment_1` VALUES ('1', '1', 'zansheng', 'om_1_news-1', '167', 'jpg', '4127', 'member/uploadfile/201503/5636ef30bf.jpg', '0', '', '1425805585');
INSERT INTO `om_attachment_1` VALUES ('8', '1', 'zansheng', 'om_1_case-1', '2-4.jpg', 'jpg', '59591', 'member/uploadfile/201503/5e731d5761.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('10', '1', 'zansheng', 'om_1_case-1', '2-13.jpg', 'jpg', '55739', 'member/uploadfile/201503/7d8b2c2158.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('11', '1', 'zansheng', 'om_1_case-1', '3-2.jpg', 'jpg', '78141', 'member/uploadfile/201503/4ddb0f3284.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('12', '1', 'zansheng', 'om_1_case-1', '3-5.jpg', 'jpg', '82762', 'member/uploadfile/201503/e0be87e320.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('14', '1', 'zansheng', 'om_1_case-1', '3-6.jpg', 'jpg', '92144', 'member/uploadfile/201503/5057392609.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('16', '1', 'zansheng', 'om_1_case-1', '3-7.jpg', 'jpg', '63816', 'member/uploadfile/201503/5c36f3d729.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('17', '1', 'zansheng', 'om_1_case-1', '3-14.jpg', 'jpg', '38043', 'member/uploadfile/201503/5c36f3d226.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('18', '1', 'zansheng', 'om_1_case-1', '3-20.jpg', 'jpg', '140744', 'member/uploadfile/201503/23b1810791.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('19', '1', 'zansheng', 'om_1_case-1', '3-22.jpg', 'jpg', '40399', 'member/uploadfile/201503/903affb975.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('22', '1', 'zansheng', 'om_1_case-1', '3-44.jpg', 'jpg', '89278', 'member/uploadfile/201503/62848af222.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('24', '1', 'zansheng', 'om_1_case-1', '3-54.jpg', 'jpg', '72437', 'member/uploadfile/201503/0203e5c616.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('25', '1', 'zansheng', 'om_1_case-1', '3-56.jpg', 'jpg', '61085', 'member/uploadfile/201503/b2543b4621.jpg', '0', '', '1425818005');
INSERT INTO `om_attachment_1` VALUES ('32', '1', 'zansheng', 'om_1_case-2', 'MG_0211.jpg', 'jpg', '70067', 'member/uploadfile/201503/9a8462f707.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('34', '1', 'zansheng', 'om_1_case-2', 'MG_0214.jpg', 'jpg', '81045', 'member/uploadfile/201503/0fb9604747.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('36', '1', 'zansheng', 'om_1_case-2', 'MG_0215.jpg', 'jpg', '86796', 'member/uploadfile/201503/6ef0661977.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('37', '1', 'zansheng', 'om_1_case-2', 'MG_0221.jpg', 'jpg', '59067', 'member/uploadfile/201503/294966a793.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('39', '1', 'zansheng', 'om_1_case-2', 'MG_0222.jpg', 'jpg', '63414', 'member/uploadfile/201503/c3a451e901.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('41', '1', 'zansheng', 'om_1_case-2', 'MG_0232.jpg', 'jpg', '49541', 'member/uploadfile/201503/0864a38363.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('42', '1', 'zansheng', 'om_1_case-2', 'MG_0243.jpg', 'jpg', '52182', 'member/uploadfile/201503/13e0344379.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('43', '1', 'zansheng', 'om_1_case-2', 'MG_0261.jpg', 'jpg', '64555', 'member/uploadfile/201503/5d03f04943.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('44', '1', 'zansheng', 'om_1_case-2', 'MG_0511.jpg', 'jpg', '62320', 'member/uploadfile/201503/502a4dc404.jpg', '0', '', '1425818186');
INSERT INTO `om_attachment_1` VALUES ('45', '1', 'zansheng', 'om_1_case-2', 'MG_0575.jpg', 'jpg', '77573', 'member/uploadfile/201503/0000464280.jpg', '0', '', '1425818186');

-- ----------------------------
-- Table structure for om_attachment_2
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_2`;
CREATE TABLE `om_attachment_2` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表2';

-- ----------------------------
-- Records of om_attachment_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_3
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_3`;
CREATE TABLE `om_attachment_3` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表3';

-- ----------------------------
-- Records of om_attachment_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_4
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_4`;
CREATE TABLE `om_attachment_4` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表4';

-- ----------------------------
-- Records of om_attachment_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_5
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_5`;
CREATE TABLE `om_attachment_5` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表5';

-- ----------------------------
-- Records of om_attachment_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_6
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_6`;
CREATE TABLE `om_attachment_6` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表6';

-- ----------------------------
-- Records of om_attachment_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_7
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_7`;
CREATE TABLE `om_attachment_7` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表7';

-- ----------------------------
-- Records of om_attachment_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_8
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_8`;
CREATE TABLE `om_attachment_8` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表8';

-- ----------------------------
-- Records of om_attachment_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_9
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_9`;
CREATE TABLE `om_attachment_9` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表9';

-- ----------------------------
-- Records of om_attachment_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_unused
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_unused`;
CREATE TABLE `om_attachment_unused` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='未使用的附件表';

-- ----------------------------
-- Records of om_attachment_unused
-- ----------------------------
INSERT INTO `om_attachment_unused` VALUES ('2', '1', 'zansheng', '1', '2-4', 'jpg', '59591', 'member/uploadfile/ueditor/201503/ee96e968e1.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('3', '1', 'zansheng', '1', '2-13', 'jpg', '55739', 'member/uploadfile/ueditor/201503/69b7d09460.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('4', '1', 'zansheng', '1', '3-2', 'jpg', '78141', 'member/uploadfile/ueditor/201503/d9e5539ec8.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('5', '1', 'zansheng', '1', '3-5', 'jpg', '82762', 'member/uploadfile/ueditor/201503/e2e70d287b.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('6', '1', 'zansheng', '1', '3-6', 'jpg', '92144', 'member/uploadfile/ueditor/201503/14aed7e13d.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('7', '1', 'zansheng', '1', '3-7', 'jpg', '63816', 'member/uploadfile/ueditor/201503/04116cfa71.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('9', '1', 'zansheng', '1', '3-14', 'jpg', '38043', 'member/uploadfile/ueditor/201503/592efec5cd.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('33', '1', 'zansheng', '1', 'MG_0243', 'jpg', '52182', 'member/uploadfile/ueditor/201503/6876582882.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('13', '1', 'zansheng', '1', '3-20', 'jpg', '140744', 'member/uploadfile/ueditor/201503/5c97b90ad6.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('31', '1', 'zansheng', '1', 'MG_0232', 'jpg', '49541', 'member/uploadfile/ueditor/201503/d40c967aa4.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('15', '1', 'zansheng', '1', '3-22', 'jpg', '40399', 'member/uploadfile/ueditor/201503/9bb00d167b.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('30', '1', 'zansheng', '1', 'MG_0222', 'jpg', '63414', 'member/uploadfile/ueditor/201503/b72289125f.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('29', '1', 'zansheng', '1', 'MG_0221', 'jpg', '59067', 'member/uploadfile/ueditor/201503/7c3bfa53bc.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('28', '1', 'zansheng', '1', 'MG_0215', 'jpg', '86796', 'member/uploadfile/ueditor/201503/dda7521009.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('20', '1', 'zansheng', '1', '3-44', 'jpg', '89278', 'member/uploadfile/ueditor/201503/e20a2356c1.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('21', '1', 'zansheng', '1', '3-54', 'jpg', '72437', 'member/uploadfile/ueditor/201503/d4a7de17bc.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('23', '1', 'zansheng', '1', '3-56', 'jpg', '61085', 'member/uploadfile/ueditor/201503/59983589df.jpg', '0', '', '1425817990');
INSERT INTO `om_attachment_unused` VALUES ('27', '1', 'zansheng', '1', 'MG_0214', 'jpg', '81045', 'member/uploadfile/ueditor/201503/9d4a5a309e.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('26', '1', 'zansheng', '1', 'MG_0211', 'jpg', '70067', 'member/uploadfile/ueditor/201503/7e513ac0ec.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('35', '1', 'zansheng', '1', 'MG_0261', 'jpg', '64555', 'member/uploadfile/ueditor/201503/c600d9f3c9.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('38', '1', 'zansheng', '1', 'MG_0511', 'jpg', '62320', 'member/uploadfile/ueditor/201503/811f2d3b11.jpg', '0', '', '1425818174');
INSERT INTO `om_attachment_unused` VALUES ('40', '1', 'zansheng', '1', 'MG_0575', 'jpg', '77573', 'member/uploadfile/ueditor/201503/07bf938e15.jpg', '0', '', '1425818174');

-- ----------------------------
-- Table structure for om_cron_queue
-- ----------------------------
DROP TABLE IF EXISTS `om_cron_queue`;
CREATE TABLE `om_cron_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL COMMENT '类型',
  `value` text NOT NULL COMMENT '值',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `error` varchar(255) NOT NULL COMMENT '错误信息',
  `updatetime` int(10) unsigned NOT NULL COMMENT '执行时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务队列表';

-- ----------------------------
-- Records of om_cron_queue
-- ----------------------------

-- ----------------------------
-- Table structure for om_downservers
-- ----------------------------
DROP TABLE IF EXISTS `om_downservers`;
CREATE TABLE `om_downservers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '服务器名',
  `server` varchar(255) NOT NULL COMMENT '服务器地址',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载镜像服务器';

-- ----------------------------
-- Records of om_downservers
-- ----------------------------

-- ----------------------------
-- Table structure for om_field
-- ----------------------------
DROP TABLE IF EXISTS `om_field`;
CREATE TABLE `om_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) NOT NULL COMMENT '字段类型',
  `relatedid` smallint(5) unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(20) NOT NULL COMMENT '相关表',
  `isedit` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint(1) unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint(1) unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint(1) unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '禁用？',
  `setting` text NOT NULL COMMENT '配置信息',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='字段表';

-- ----------------------------
-- Records of om_field
-- ----------------------------
INSERT INTO `om_field` VALUES ('1', '相关附件', 'attachment', 'Files', '1', 'page', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\"option\";a:5:{s:5:\"width\";s:3:\"80%\";s:4:\"size\";s:1:\"2\";s:5:\"count\";s:2:\"10\";s:3:\"ext\";s:31:\"jpg,gif,png,ppt,doc,xls,rar,zip\";s:10:\"uploadpath\";s:0:\"\";}s:8:\"validate\";a:9:{s:8:\"required\";s:1:\"0\";s:7:\"pattern\";s:0:\"\";s:9:\"errortips\";s:0:\"\";s:6:\"isedit\";s:1:\"0\";s:3:\"xss\";s:1:\"0\";s:5:\"check\";s:0:\"\";s:6:\"filter\";s:0:\"\";s:4:\"tips\";s:0:\"\";s:8:\"formattr\";s:0:\"\";}}', '0');
INSERT INTO `om_field` VALUES ('2', '单页内容', 'content', 'Ueditor', '1', 'page', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\"option\";a:7:{s:5:\"width\";s:3:\"90%\";s:6:\"height\";s:3:\"400\";s:4:\"mode\";s:1:\"1\";s:4:\"tool\";s:0:\"\";s:5:\"mode2\";s:1:\"1\";s:5:\"tool2\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:8:\"validate\";a:9:{s:8:\"required\";s:1:\"1\";s:7:\"pattern\";s:0:\"\";s:9:\"errortips\";s:0:\"\";s:6:\"isedit\";s:1:\"0\";s:3:\"xss\";s:1:\"1\";s:5:\"check\";s:0:\"\";s:6:\"filter\";s:0:\"\";s:4:\"tips\";s:0:\"\";s:8:\"formattr\";s:0:\"\";}}', '0');
INSERT INTO `om_field` VALUES ('3', '名称', 'title', 'Text', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('4', '名称', 'title', 'Text', '2', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('5', '主题', 'title', 'Text', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('6', '名称', 'title', 'Text', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('7', '内容', 'content', 'Ueditor', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('8', '链接地址', 'link', 'Redirect', '2', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:2:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('9', '内容', 'content', 'Ueditor', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('10', '图片集', 'image', 'Files', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"80%\\\";s:4:\\\"size\\\";s:2:\\\"10\\\";s:5:\\\"count\\\";s:2:\\\"50\\\";s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";s:10:\\\"uploadpath\\\";s:25:\\\"{siteid}/photo/{y}{m}{d}/\\\";s:3:\\\"pan\\\";s:1:\\\"0\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('11', '简介', 'content', 'Ueditor', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '5');
INSERT INTO `om_field` VALUES ('12', '主题', 'title', 'Text', '5', 'space', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:4:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:4:\\\"tips\\\";N;s:9:\\\"errortips\\\";N;}}', '0');
INSERT INTO `om_field` VALUES ('13', '图片', 'image', 'File', '5', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:4:\\\"size\\\";s:2:\\\"10\\\";s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";s:3:\\\"pan\\\";s:1:\\\"0\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('14', '链接地址', 'link', 'Redirect', '5', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:2:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('15', '关键字', 'keywords', 'Text', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('16', '描述', 'description', 'Textarea', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('17', '关键字', 'keywords', 'Text', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('18', '描述', 'description', 'Textarea', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('19', '关键字', 'keywords', 'Text', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('20', '描述', 'description', 'Textarea', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('21', '名称', 'name', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:300;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:4:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:4:\\\"tips\\\";N;s:9:\\\"errortips\\\";N;}}', '0');
INSERT INTO `om_field` VALUES ('22', 'Logo', 'logo', 'File', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";s:1:\\\"2\\\";s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('23', '空间简介', 'introduction', 'Ueditor', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('24', 'SEO标题', 'title', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('25', 'SEO关键字', 'keywords', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('26', 'SEO描述信息', 'description', 'Textarea', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('27', '第三方代码', 'code', 'Textarea', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('28', '底部信息', 'footer', 'Ueditor', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('29', '主题', 'title', 'Text', '1', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('30', '缩略图', 'thumb', 'File', '1', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('31', '关键字', 'keywords', 'Text', '1', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('32', '描述', 'description', 'Textarea', '1', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('33', '内容', 'content', 'Ueditor', '1', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('34', '主题', 'title', 'Text', '2', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('35', '缩略图', 'thumb', 'File', '2', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('36', '关键字', 'keywords', 'Text', '2', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('37', '描述', 'description', 'Textarea', '2', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('38', '内容', 'content', 'Ueditor', '2', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');

-- ----------------------------
-- Table structure for om_linkage
-- ----------------------------
DROP TABLE IF EXISTS `om_linkage`;
CREATE TABLE `om_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` tinyint(1) unsigned NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联动菜单表';

-- ----------------------------
-- Records of om_linkage
-- ----------------------------
INSERT INTO `om_linkage` VALUES ('1', '中国地区', '0', 'address');

-- ----------------------------
-- Table structure for om_linkage_data_1
-- ----------------------------
DROP TABLE IF EXISTS `om_linkage_data_1`;
CREATE TABLE `om_linkage_data_1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  `displayorder` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=1149 DEFAULT CHARSET=utf8 COMMENT='联动菜单数据表';

-- ----------------------------
-- Records of om_linkage_data_1
-- ----------------------------
INSERT INTO `om_linkage_data_1` VALUES ('1', '1', '0', '0', '北京市', '0', '1', '1');
INSERT INTO `om_linkage_data_1` VALUES ('2', '1', '0', '0', '天津市', '0', '2', '2');
INSERT INTO `om_linkage_data_1` VALUES ('3', '1', '0', '0', '河北省', '1', '3,65,66,67,68,69,70,71,72,73,74,75', '3');
INSERT INTO `om_linkage_data_1` VALUES ('4', '1', '0', '0', '山西省', '1', '4,248,259,271,277,291,298,305,317,331,346,364', '4');
INSERT INTO `om_linkage_data_1` VALUES ('5', '1', '0', '0', '辽宁省', '1', '5,491,505,516,524,532,539,546,554,561,569,577,582,590,598', '5');
INSERT INTO `om_linkage_data_1` VALUES ('6', '1', '0', '0', '吉林省', '1', '6,605,616,626,633,638,646,653,659,665', '6');
INSERT INTO `om_linkage_data_1` VALUES ('7', '1', '0', '0', '黑龙江省', '1', '7,674,693,710,720,729,738,748,766,777,782,793,800,811', '7');
INSERT INTO `om_linkage_data_1` VALUES ('8', '1', '0', '0', '江苏省', '1', '8,833,834,835,836,837,838,839,840,841,842,843,844,845', '9');
INSERT INTO `om_linkage_data_1` VALUES ('9', '1', '0', '0', '浙江省', '1', '9,846,847,848,849,850,851,852,853,854,855,856', '10');
INSERT INTO `om_linkage_data_1` VALUES ('10', '1', '0', '0', '安徽省', '1', '10,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872', '11');
INSERT INTO `om_linkage_data_1` VALUES ('11', '1', '0', '0', '福建省', '1', '11,873,874,875,876,877,878,879,880,881', '12');
INSERT INTO `om_linkage_data_1` VALUES ('12', '1', '0', '0', '江西省', '1', '12,882,883,884,885,886,887,888,889,890,891,892', '13');
INSERT INTO `om_linkage_data_1` VALUES ('13', '1', '0', '0', '山东省', '1', '13,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909', '14');
INSERT INTO `om_linkage_data_1` VALUES ('14', '1', '0', '0', '河南省', '1', '14,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926', '15');
INSERT INTO `om_linkage_data_1` VALUES ('15', '1', '0', '0', '湖北省', '1', '15,927,928,929,930,931,932,933,934,935,936,937,938,939', '16');
INSERT INTO `om_linkage_data_1` VALUES ('16', '1', '0', '0', '湖南省', '1', '16,940,941,942,943,944,945,946,947,948,949,950,951,952,953', '17');
INSERT INTO `om_linkage_data_1` VALUES ('17', '1', '0', '0', '广东省', '1', '17,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,972,973,974', '18');
INSERT INTO `om_linkage_data_1` VALUES ('18', '1', '0', '0', '海南省', '1', '18,990', '19');
INSERT INTO `om_linkage_data_1` VALUES ('19', '1', '0', '0', '重庆市', '0', '19', '20');
INSERT INTO `om_linkage_data_1` VALUES ('20', '1', '0', '0', '四川省', '1', '20,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066', '21');
INSERT INTO `om_linkage_data_1` VALUES ('21', '1', '0', '0', '贵州省', '1', '21,1067,1068,1069,1070,1071,1072,1073,1074,1075', '22');
INSERT INTO `om_linkage_data_1` VALUES ('22', '1', '0', '0', '云南省', '1', '22,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091', '23');
INSERT INTO `om_linkage_data_1` VALUES ('23', '1', '0', '0', '陕西省', '1', '23,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108', '24');
INSERT INTO `om_linkage_data_1` VALUES ('24', '1', '0', '0', '甘肃省', '1', '24,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121', '25');
INSERT INTO `om_linkage_data_1` VALUES ('25', '1', '0', '0', '青海省', '1', '25,1122,1123,1124,1125,1126,1127,1128,1129', '26');
INSERT INTO `om_linkage_data_1` VALUES ('26', '1', '0', '0', '宁夏', '1', '26,1130,1131,1132,1133,1134', '27');
INSERT INTO `om_linkage_data_1` VALUES ('27', '1', '0', '0', '西藏', '1', '27,1092,1093,1094,1095,1096,1097,1098', '28');
INSERT INTO `om_linkage_data_1` VALUES ('28', '1', '0', '0', '新疆', '1', '28,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148', '29');
INSERT INTO `om_linkage_data_1` VALUES ('29', '1', '0', '0', '内蒙古', '1', '29,378,388,398,402,415,424,433,447,455,467,474,487', '30');
INSERT INTO `om_linkage_data_1` VALUES ('30', '1', '0', '0', '香港', '0', '30', '31');
INSERT INTO `om_linkage_data_1` VALUES ('31', '1', '0', '0', '澳门', '0', '31', '32');
INSERT INTO `om_linkage_data_1` VALUES ('32', '1', '0', '0', '台湾', '0', '32', '33');
INSERT INTO `om_linkage_data_1` VALUES ('65', '1', '3', '0,3', '石家庄市', '0', '65', '0');
INSERT INTO `om_linkage_data_1` VALUES ('66', '1', '3', '0,3', '唐山市', '0', '66', '0');
INSERT INTO `om_linkage_data_1` VALUES ('67', '1', '3', '0,3', '秦皇岛市', '0', '67', '0');
INSERT INTO `om_linkage_data_1` VALUES ('68', '1', '3', '0,3', '邯郸市', '0', '68', '0');
INSERT INTO `om_linkage_data_1` VALUES ('69', '1', '3', '0,3', '邢台市', '0', '69', '0');
INSERT INTO `om_linkage_data_1` VALUES ('70', '1', '3', '0,3', '保定市', '0', '70', '0');
INSERT INTO `om_linkage_data_1` VALUES ('71', '1', '3', '0,3', '张家口市', '0', '71', '0');
INSERT INTO `om_linkage_data_1` VALUES ('72', '1', '3', '0,3', '承德市', '0', '72', '0');
INSERT INTO `om_linkage_data_1` VALUES ('73', '1', '3', '0,3', '沧州市', '0', '73', '0');
INSERT INTO `om_linkage_data_1` VALUES ('74', '1', '3', '0,3', '廊坊市', '0', '74', '0');
INSERT INTO `om_linkage_data_1` VALUES ('75', '1', '3', '0,3', '衡水市', '0', '75', '0');
INSERT INTO `om_linkage_data_1` VALUES ('248', '1', '4', '0,4', '太原市', '0', '248', '0');
INSERT INTO `om_linkage_data_1` VALUES ('259', '1', '4', '0,4', '大同市', '0', '259', '0');
INSERT INTO `om_linkage_data_1` VALUES ('271', '1', '4', '0,4', '阳泉市', '0', '271', '0');
INSERT INTO `om_linkage_data_1` VALUES ('277', '1', '4', '0,4', '长治市', '0', '277', '0');
INSERT INTO `om_linkage_data_1` VALUES ('291', '1', '4', '0,4', '晋城市', '0', '291', '0');
INSERT INTO `om_linkage_data_1` VALUES ('298', '1', '4', '0,4', '朔州市', '0', '298', '0');
INSERT INTO `om_linkage_data_1` VALUES ('305', '1', '4', '0,4', '晋中市', '0', '305', '0');
INSERT INTO `om_linkage_data_1` VALUES ('317', '1', '4', '0,4', '运城市', '0', '317', '0');
INSERT INTO `om_linkage_data_1` VALUES ('331', '1', '4', '0,4', '忻州市', '0', '331', '0');
INSERT INTO `om_linkage_data_1` VALUES ('346', '1', '4', '0,4', '临汾市', '0', '346', '0');
INSERT INTO `om_linkage_data_1` VALUES ('364', '1', '4', '0,4', '吕梁市', '0', '364', '0');
INSERT INTO `om_linkage_data_1` VALUES ('378', '1', '29', '0,29', '呼和浩特市', '0', '378', '0');
INSERT INTO `om_linkage_data_1` VALUES ('388', '1', '29', '0,29', '包头市', '0', '388', '0');
INSERT INTO `om_linkage_data_1` VALUES ('398', '1', '29', '0,29', '乌海市', '0', '398', '0');
INSERT INTO `om_linkage_data_1` VALUES ('402', '1', '29', '0,29', '赤峰市', '0', '402', '0');
INSERT INTO `om_linkage_data_1` VALUES ('415', '1', '29', '0,29', '通辽市', '0', '415', '0');
INSERT INTO `om_linkage_data_1` VALUES ('424', '1', '29', '0,29', '鄂尔多斯市', '0', '424', '0');
INSERT INTO `om_linkage_data_1` VALUES ('433', '1', '29', '0,29', '呼伦贝尔市', '0', '433', '0');
INSERT INTO `om_linkage_data_1` VALUES ('447', '1', '29', '0,29', '巴彦淖尔市', '0', '447', '0');
INSERT INTO `om_linkage_data_1` VALUES ('455', '1', '29', '0,29', '乌兰察布市', '0', '455', '0');
INSERT INTO `om_linkage_data_1` VALUES ('467', '1', '29', '0,29', '兴安盟', '0', '467', '0');
INSERT INTO `om_linkage_data_1` VALUES ('474', '1', '29', '0,29', '锡林郭勒盟', '0', '474', '0');
INSERT INTO `om_linkage_data_1` VALUES ('487', '1', '29', '0,29', '阿拉善盟', '0', '487', '0');
INSERT INTO `om_linkage_data_1` VALUES ('491', '1', '5', '0,5', '沈阳市', '0', '491', '0');
INSERT INTO `om_linkage_data_1` VALUES ('505', '1', '5', '0,5', '大连市', '0', '505', '0');
INSERT INTO `om_linkage_data_1` VALUES ('516', '1', '5', '0,5', '鞍山市', '0', '516', '0');
INSERT INTO `om_linkage_data_1` VALUES ('524', '1', '5', '0,5', '抚顺市', '0', '524', '0');
INSERT INTO `om_linkage_data_1` VALUES ('532', '1', '5', '0,5', '本溪市', '0', '532', '0');
INSERT INTO `om_linkage_data_1` VALUES ('539', '1', '5', '0,5', '丹东市', '0', '539', '0');
INSERT INTO `om_linkage_data_1` VALUES ('546', '1', '5', '0,5', '锦州市', '0', '546', '0');
INSERT INTO `om_linkage_data_1` VALUES ('554', '1', '5', '0,5', '营口市', '0', '554', '0');
INSERT INTO `om_linkage_data_1` VALUES ('561', '1', '5', '0,5', '阜新市', '0', '561', '0');
INSERT INTO `om_linkage_data_1` VALUES ('569', '1', '5', '0,5', '辽阳市', '0', '569', '0');
INSERT INTO `om_linkage_data_1` VALUES ('577', '1', '5', '0,5', '盘锦市', '0', '577', '0');
INSERT INTO `om_linkage_data_1` VALUES ('582', '1', '5', '0,5', '铁岭市', '0', '582', '0');
INSERT INTO `om_linkage_data_1` VALUES ('590', '1', '5', '0,5', '朝阳市', '0', '590', '0');
INSERT INTO `om_linkage_data_1` VALUES ('598', '1', '5', '0,5', '葫芦岛市', '0', '598', '0');
INSERT INTO `om_linkage_data_1` VALUES ('605', '1', '6', '0,6', '长春市', '0', '605', '0');
INSERT INTO `om_linkage_data_1` VALUES ('616', '1', '6', '0,6', '吉林市', '0', '616', '0');
INSERT INTO `om_linkage_data_1` VALUES ('626', '1', '6', '0,6', '四平市', '0', '626', '0');
INSERT INTO `om_linkage_data_1` VALUES ('633', '1', '6', '0,6', '辽源市', '0', '633', '0');
INSERT INTO `om_linkage_data_1` VALUES ('638', '1', '6', '0,6', '通化市', '0', '638', '0');
INSERT INTO `om_linkage_data_1` VALUES ('646', '1', '6', '0,6', '白山市', '0', '646', '0');
INSERT INTO `om_linkage_data_1` VALUES ('653', '1', '6', '0,6', '松原市', '0', '653', '0');
INSERT INTO `om_linkage_data_1` VALUES ('659', '1', '6', '0,6', '白城市', '0', '659', '0');
INSERT INTO `om_linkage_data_1` VALUES ('665', '1', '6', '0,6', '延边自治州', '0', '665', '0');
INSERT INTO `om_linkage_data_1` VALUES ('674', '1', '7', '0,7', '哈尔滨市', '0', '674', '0');
INSERT INTO `om_linkage_data_1` VALUES ('693', '1', '7', '0,7', '齐齐哈尔市', '0', '693', '0');
INSERT INTO `om_linkage_data_1` VALUES ('710', '1', '7', '0,7', '鸡西市', '0', '710', '0');
INSERT INTO `om_linkage_data_1` VALUES ('720', '1', '7', '0,7', '鹤岗市', '0', '720', '0');
INSERT INTO `om_linkage_data_1` VALUES ('729', '1', '7', '0,7', '双鸭山市', '0', '729', '0');
INSERT INTO `om_linkage_data_1` VALUES ('738', '1', '7', '0,7', '大庆市', '0', '738', '0');
INSERT INTO `om_linkage_data_1` VALUES ('748', '1', '7', '0,7', '伊春市', '0', '748', '0');
INSERT INTO `om_linkage_data_1` VALUES ('766', '1', '7', '0,7', '佳木斯市', '0', '766', '0');
INSERT INTO `om_linkage_data_1` VALUES ('777', '1', '7', '0,7', '七台河市', '0', '777', '0');
INSERT INTO `om_linkage_data_1` VALUES ('782', '1', '7', '0,7', '牡丹江市', '0', '782', '0');
INSERT INTO `om_linkage_data_1` VALUES ('793', '1', '7', '0,7', '黑河市', '0', '793', '0');
INSERT INTO `om_linkage_data_1` VALUES ('800', '1', '7', '0,7', '绥化市', '0', '800', '0');
INSERT INTO `om_linkage_data_1` VALUES ('811', '1', '7', '0,7', '大兴安岭地区', '0', '811', '0');
INSERT INTO `om_linkage_data_1` VALUES ('815', '1', '0', '0', '上海市', '0', '815', '8');
INSERT INTO `om_linkage_data_1` VALUES ('833', '1', '8', '0,8', '南京市', '0', '833', '0');
INSERT INTO `om_linkage_data_1` VALUES ('834', '1', '8', '0,8', '无锡市', '0', '834', '0');
INSERT INTO `om_linkage_data_1` VALUES ('835', '1', '8', '0,8', '徐州市', '0', '835', '0');
INSERT INTO `om_linkage_data_1` VALUES ('836', '1', '8', '0,8', '常州市', '0', '836', '0');
INSERT INTO `om_linkage_data_1` VALUES ('837', '1', '8', '0,8', '苏州市', '0', '837', '0');
INSERT INTO `om_linkage_data_1` VALUES ('838', '1', '8', '0,8', '南通市', '0', '838', '0');
INSERT INTO `om_linkage_data_1` VALUES ('839', '1', '8', '0,8', '连云港市', '0', '839', '0');
INSERT INTO `om_linkage_data_1` VALUES ('840', '1', '8', '0,8', '淮安市', '0', '840', '0');
INSERT INTO `om_linkage_data_1` VALUES ('841', '1', '8', '0,8', '盐城市', '0', '841', '0');
INSERT INTO `om_linkage_data_1` VALUES ('842', '1', '8', '0,8', '扬州市', '0', '842', '0');
INSERT INTO `om_linkage_data_1` VALUES ('843', '1', '8', '0,8', '镇江市', '0', '843', '0');
INSERT INTO `om_linkage_data_1` VALUES ('844', '1', '8', '0,8', '泰州市', '0', '844', '0');
INSERT INTO `om_linkage_data_1` VALUES ('845', '1', '8', '0,8', '宿迁市', '0', '845', '0');
INSERT INTO `om_linkage_data_1` VALUES ('846', '1', '9', '0,9', '杭州市', '0', '846', '0');
INSERT INTO `om_linkage_data_1` VALUES ('847', '1', '9', '0,9', '宁波市', '0', '847', '0');
INSERT INTO `om_linkage_data_1` VALUES ('848', '1', '9', '0,9', '温州市', '0', '848', '0');
INSERT INTO `om_linkage_data_1` VALUES ('849', '1', '9', '0,9', '嘉兴市', '0', '849', '0');
INSERT INTO `om_linkage_data_1` VALUES ('850', '1', '9', '0,9', '湖州市', '0', '850', '0');
INSERT INTO `om_linkage_data_1` VALUES ('851', '1', '9', '0,9', '绍兴市', '0', '851', '0');
INSERT INTO `om_linkage_data_1` VALUES ('852', '1', '9', '0,9', '金华市', '0', '852', '0');
INSERT INTO `om_linkage_data_1` VALUES ('853', '1', '9', '0,9', '衢州市', '0', '853', '0');
INSERT INTO `om_linkage_data_1` VALUES ('854', '1', '9', '0,9', '舟山市', '0', '854', '0');
INSERT INTO `om_linkage_data_1` VALUES ('855', '1', '9', '0,9', '台州市', '0', '855', '0');
INSERT INTO `om_linkage_data_1` VALUES ('856', '1', '9', '0,9', '丽水市', '0', '856', '0');
INSERT INTO `om_linkage_data_1` VALUES ('857', '1', '10', '0,10', '合肥市', '0', '857', '0');
INSERT INTO `om_linkage_data_1` VALUES ('858', '1', '10', '0,10', '芜湖市', '0', '858', '0');
INSERT INTO `om_linkage_data_1` VALUES ('859', '1', '10', '0,10', '蚌埠市', '0', '859', '0');
INSERT INTO `om_linkage_data_1` VALUES ('860', '1', '10', '0,10', '淮南市', '0', '860', '0');
INSERT INTO `om_linkage_data_1` VALUES ('861', '1', '10', '0,10', '马鞍山市', '0', '861', '0');
INSERT INTO `om_linkage_data_1` VALUES ('862', '1', '10', '0,10', '淮北市', '0', '862', '0');
INSERT INTO `om_linkage_data_1` VALUES ('863', '1', '10', '0,10', '铜陵市', '0', '863', '0');
INSERT INTO `om_linkage_data_1` VALUES ('864', '1', '10', '0,10', '安庆市', '0', '864', '0');
INSERT INTO `om_linkage_data_1` VALUES ('865', '1', '10', '0,10', '黄山市', '0', '865', '0');
INSERT INTO `om_linkage_data_1` VALUES ('866', '1', '10', '0,10', '滁州市', '0', '866', '0');
INSERT INTO `om_linkage_data_1` VALUES ('867', '1', '10', '0,10', '阜阳市', '0', '867', '0');
INSERT INTO `om_linkage_data_1` VALUES ('868', '1', '10', '0,10', '宿州市', '0', '868', '0');
INSERT INTO `om_linkage_data_1` VALUES ('869', '1', '10', '0,10', '六安市', '0', '869', '0');
INSERT INTO `om_linkage_data_1` VALUES ('870', '1', '10', '0,10', '亳州市', '0', '870', '0');
INSERT INTO `om_linkage_data_1` VALUES ('871', '1', '10', '0,10', '池州市', '0', '871', '0');
INSERT INTO `om_linkage_data_1` VALUES ('872', '1', '10', '0,10', '宣城市', '0', '872', '0');
INSERT INTO `om_linkage_data_1` VALUES ('873', '1', '11', '0,11', '福州市', '0', '873', '0');
INSERT INTO `om_linkage_data_1` VALUES ('874', '1', '11', '0,11', '厦门市', '0', '874', '0');
INSERT INTO `om_linkage_data_1` VALUES ('875', '1', '11', '0,11', '莆田市', '0', '875', '0');
INSERT INTO `om_linkage_data_1` VALUES ('876', '1', '11', '0,11', '三明市', '0', '876', '0');
INSERT INTO `om_linkage_data_1` VALUES ('877', '1', '11', '0,11', '泉州市', '0', '877', '0');
INSERT INTO `om_linkage_data_1` VALUES ('878', '1', '11', '0,11', '漳州市', '0', '878', '0');
INSERT INTO `om_linkage_data_1` VALUES ('879', '1', '11', '0,11', '南平市', '0', '879', '0');
INSERT INTO `om_linkage_data_1` VALUES ('880', '1', '11', '0,11', '龙岩市', '0', '880', '0');
INSERT INTO `om_linkage_data_1` VALUES ('881', '1', '11', '0,11', '宁德市', '0', '881', '0');
INSERT INTO `om_linkage_data_1` VALUES ('882', '1', '12', '0,12', '南昌市', '0', '882', '0');
INSERT INTO `om_linkage_data_1` VALUES ('883', '1', '12', '0,12', '景德镇市', '0', '883', '0');
INSERT INTO `om_linkage_data_1` VALUES ('884', '1', '12', '0,12', '萍乡市', '0', '884', '0');
INSERT INTO `om_linkage_data_1` VALUES ('885', '1', '12', '0,12', '九江市', '0', '885', '0');
INSERT INTO `om_linkage_data_1` VALUES ('886', '1', '12', '0,12', '新余市', '0', '886', '0');
INSERT INTO `om_linkage_data_1` VALUES ('887', '1', '12', '0,12', '鹰潭市', '0', '887', '0');
INSERT INTO `om_linkage_data_1` VALUES ('888', '1', '12', '0,12', '赣州市', '0', '888', '0');
INSERT INTO `om_linkage_data_1` VALUES ('889', '1', '12', '0,12', '吉安市', '0', '889', '0');
INSERT INTO `om_linkage_data_1` VALUES ('890', '1', '12', '0,12', '宜春市', '0', '890', '0');
INSERT INTO `om_linkage_data_1` VALUES ('891', '1', '12', '0,12', '抚州市', '0', '891', '0');
INSERT INTO `om_linkage_data_1` VALUES ('892', '1', '12', '0,12', '上饶市', '0', '892', '0');
INSERT INTO `om_linkage_data_1` VALUES ('893', '1', '13', '0,13', '济南市', '0', '893', '0');
INSERT INTO `om_linkage_data_1` VALUES ('894', '1', '13', '0,13', '青岛市', '0', '894', '0');
INSERT INTO `om_linkage_data_1` VALUES ('895', '1', '13', '0,13', '淄博市', '0', '895', '0');
INSERT INTO `om_linkage_data_1` VALUES ('896', '1', '13', '0,13', '枣庄市', '0', '896', '0');
INSERT INTO `om_linkage_data_1` VALUES ('897', '1', '13', '0,13', '东营市', '0', '897', '0');
INSERT INTO `om_linkage_data_1` VALUES ('898', '1', '13', '0,13', '烟台市', '0', '898', '0');
INSERT INTO `om_linkage_data_1` VALUES ('899', '1', '13', '0,13', '潍坊市', '0', '899', '0');
INSERT INTO `om_linkage_data_1` VALUES ('900', '1', '13', '0,13', '济宁市', '0', '900', '0');
INSERT INTO `om_linkage_data_1` VALUES ('901', '1', '13', '0,13', '泰安市', '0', '901', '0');
INSERT INTO `om_linkage_data_1` VALUES ('902', '1', '13', '0,13', '威海市', '0', '902', '0');
INSERT INTO `om_linkage_data_1` VALUES ('903', '1', '13', '0,13', '日照市', '0', '903', '0');
INSERT INTO `om_linkage_data_1` VALUES ('904', '1', '13', '0,13', '莱芜市', '0', '904', '0');
INSERT INTO `om_linkage_data_1` VALUES ('905', '1', '13', '0,13', '临沂市', '0', '905', '0');
INSERT INTO `om_linkage_data_1` VALUES ('906', '1', '13', '0,13', '德州市', '0', '906', '0');
INSERT INTO `om_linkage_data_1` VALUES ('907', '1', '13', '0,13', '聊城市', '0', '907', '0');
INSERT INTO `om_linkage_data_1` VALUES ('908', '1', '13', '0,13', '滨州市', '0', '908', '0');
INSERT INTO `om_linkage_data_1` VALUES ('909', '1', '13', '0,13', '菏泽市', '0', '909', '0');
INSERT INTO `om_linkage_data_1` VALUES ('910', '1', '14', '0,14', '郑州市', '0', '910', '0');
INSERT INTO `om_linkage_data_1` VALUES ('911', '1', '14', '0,14', '开封市', '0', '911', '0');
INSERT INTO `om_linkage_data_1` VALUES ('912', '1', '14', '0,14', '洛阳市', '0', '912', '0');
INSERT INTO `om_linkage_data_1` VALUES ('913', '1', '14', '0,14', '平顶山市', '0', '913', '0');
INSERT INTO `om_linkage_data_1` VALUES ('914', '1', '14', '0,14', '安阳市', '0', '914', '0');
INSERT INTO `om_linkage_data_1` VALUES ('915', '1', '14', '0,14', '鹤壁市', '0', '915', '0');
INSERT INTO `om_linkage_data_1` VALUES ('916', '1', '14', '0,14', '新乡市', '0', '916', '0');
INSERT INTO `om_linkage_data_1` VALUES ('917', '1', '14', '0,14', '焦作市', '0', '917', '0');
INSERT INTO `om_linkage_data_1` VALUES ('918', '1', '14', '0,14', '濮阳市', '0', '918', '0');
INSERT INTO `om_linkage_data_1` VALUES ('919', '1', '14', '0,14', '许昌市', '0', '919', '0');
INSERT INTO `om_linkage_data_1` VALUES ('920', '1', '14', '0,14', '漯河市', '0', '920', '0');
INSERT INTO `om_linkage_data_1` VALUES ('921', '1', '14', '0,14', '三门峡市', '0', '921', '0');
INSERT INTO `om_linkage_data_1` VALUES ('922', '1', '14', '0,14', '南阳市', '0', '922', '0');
INSERT INTO `om_linkage_data_1` VALUES ('923', '1', '14', '0,14', '商丘市', '0', '923', '0');
INSERT INTO `om_linkage_data_1` VALUES ('924', '1', '14', '0,14', '信阳市', '0', '924', '0');
INSERT INTO `om_linkage_data_1` VALUES ('925', '1', '14', '0,14', '周口市', '0', '925', '0');
INSERT INTO `om_linkage_data_1` VALUES ('926', '1', '14', '0,14', '驻马店市', '0', '926', '0');
INSERT INTO `om_linkage_data_1` VALUES ('927', '1', '15', '0,15', '武汉市', '0', '927', '0');
INSERT INTO `om_linkage_data_1` VALUES ('928', '1', '15', '0,15', '黄石市', '0', '928', '0');
INSERT INTO `om_linkage_data_1` VALUES ('929', '1', '15', '0,15', '十堰市', '0', '929', '0');
INSERT INTO `om_linkage_data_1` VALUES ('930', '1', '15', '0,15', '宜昌市', '0', '930', '0');
INSERT INTO `om_linkage_data_1` VALUES ('931', '1', '15', '0,15', '襄阳市', '0', '931', '0');
INSERT INTO `om_linkage_data_1` VALUES ('932', '1', '15', '0,15', '鄂州市', '0', '932', '0');
INSERT INTO `om_linkage_data_1` VALUES ('933', '1', '15', '0,15', '荆门市', '0', '933', '0');
INSERT INTO `om_linkage_data_1` VALUES ('934', '1', '15', '0,15', '孝感市', '0', '934', '0');
INSERT INTO `om_linkage_data_1` VALUES ('935', '1', '15', '0,15', '荆州市', '0', '935', '0');
INSERT INTO `om_linkage_data_1` VALUES ('936', '1', '15', '0,15', '黄冈市', '0', '936', '0');
INSERT INTO `om_linkage_data_1` VALUES ('937', '1', '15', '0,15', '咸宁市', '0', '937', '0');
INSERT INTO `om_linkage_data_1` VALUES ('938', '1', '15', '0,15', '随州市', '0', '938', '0');
INSERT INTO `om_linkage_data_1` VALUES ('939', '1', '15', '0,15', '恩施自治州', '0', '939', '0');
INSERT INTO `om_linkage_data_1` VALUES ('940', '1', '16', '0,16', '长沙市', '0', '940', '0');
INSERT INTO `om_linkage_data_1` VALUES ('941', '1', '16', '0,16', '株洲市', '0', '941', '0');
INSERT INTO `om_linkage_data_1` VALUES ('942', '1', '16', '0,16', '湘潭市', '0', '942', '0');
INSERT INTO `om_linkage_data_1` VALUES ('943', '1', '16', '0,16', '衡阳市', '0', '943', '0');
INSERT INTO `om_linkage_data_1` VALUES ('944', '1', '16', '0,16', '邵阳市', '0', '944', '0');
INSERT INTO `om_linkage_data_1` VALUES ('945', '1', '16', '0,16', '岳阳市', '0', '945', '0');
INSERT INTO `om_linkage_data_1` VALUES ('946', '1', '16', '0,16', '常德市', '0', '946', '0');
INSERT INTO `om_linkage_data_1` VALUES ('947', '1', '16', '0,16', '张家界市', '0', '947', '0');
INSERT INTO `om_linkage_data_1` VALUES ('948', '1', '16', '0,16', '益阳市', '0', '948', '0');
INSERT INTO `om_linkage_data_1` VALUES ('949', '1', '16', '0,16', '郴州市', '0', '949', '0');
INSERT INTO `om_linkage_data_1` VALUES ('950', '1', '16', '0,16', '永州市', '0', '950', '0');
INSERT INTO `om_linkage_data_1` VALUES ('951', '1', '16', '0,16', '怀化市', '0', '951', '0');
INSERT INTO `om_linkage_data_1` VALUES ('952', '1', '16', '0,16', '娄底市', '0', '952', '0');
INSERT INTO `om_linkage_data_1` VALUES ('953', '1', '16', '0,16', '湘西自治州', '0', '953', '0');
INSERT INTO `om_linkage_data_1` VALUES ('954', '1', '17', '0,17', '广州市', '0', '954', '0');
INSERT INTO `om_linkage_data_1` VALUES ('955', '1', '17', '0,17', '韶关市', '0', '955', '0');
INSERT INTO `om_linkage_data_1` VALUES ('956', '1', '17', '0,17', '深圳市', '0', '956', '0');
INSERT INTO `om_linkage_data_1` VALUES ('957', '1', '17', '0,17', '珠海市', '0', '957', '0');
INSERT INTO `om_linkage_data_1` VALUES ('958', '1', '17', '0,17', '汕头市', '0', '958', '0');
INSERT INTO `om_linkage_data_1` VALUES ('959', '1', '17', '0,17', '佛山市', '0', '959', '0');
INSERT INTO `om_linkage_data_1` VALUES ('960', '1', '17', '0,17', '江门市', '0', '960', '0');
INSERT INTO `om_linkage_data_1` VALUES ('961', '1', '17', '0,17', '湛江市', '0', '961', '0');
INSERT INTO `om_linkage_data_1` VALUES ('962', '1', '17', '0,17', '茂名市', '0', '962', '0');
INSERT INTO `om_linkage_data_1` VALUES ('963', '1', '17', '0,17', '肇庆市', '0', '963', '0');
INSERT INTO `om_linkage_data_1` VALUES ('964', '1', '17', '0,17', '惠州市', '0', '964', '0');
INSERT INTO `om_linkage_data_1` VALUES ('965', '1', '17', '0,17', '梅州市', '0', '965', '0');
INSERT INTO `om_linkage_data_1` VALUES ('966', '1', '17', '0,17', '汕尾市', '0', '966', '0');
INSERT INTO `om_linkage_data_1` VALUES ('967', '1', '17', '0,17', '河源市', '0', '967', '0');
INSERT INTO `om_linkage_data_1` VALUES ('968', '1', '17', '0,17', '阳江市', '0', '968', '0');
INSERT INTO `om_linkage_data_1` VALUES ('969', '1', '17', '0,17', '清远市', '0', '969', '0');
INSERT INTO `om_linkage_data_1` VALUES ('972', '1', '17', '0,17', '潮州市', '0', '972', '0');
INSERT INTO `om_linkage_data_1` VALUES ('973', '1', '17', '0,17', '揭阳市', '0', '973', '0');
INSERT INTO `om_linkage_data_1` VALUES ('974', '1', '17', '0,17', '云浮市', '0', '974', '0');
INSERT INTO `om_linkage_data_1` VALUES ('975', '1', '0', '0', '广西', '1', '975,976,977,978,979,980,981,982,983,984,985,986,987,988,989', '18');
INSERT INTO `om_linkage_data_1` VALUES ('976', '1', '975', '0,975', '南宁市', '0', '976', '0');
INSERT INTO `om_linkage_data_1` VALUES ('977', '1', '975', '0,975', '柳州市', '0', '977', '0');
INSERT INTO `om_linkage_data_1` VALUES ('978', '1', '975', '0,975', '桂林市', '0', '978', '0');
INSERT INTO `om_linkage_data_1` VALUES ('979', '1', '975', '0,975', '梧州市', '0', '979', '0');
INSERT INTO `om_linkage_data_1` VALUES ('980', '1', '975', '0,975', '北海市', '0', '980', '0');
INSERT INTO `om_linkage_data_1` VALUES ('981', '1', '975', '0,975', '防城港市', '0', '981', '0');
INSERT INTO `om_linkage_data_1` VALUES ('982', '1', '975', '0,975', '钦州市', '0', '982', '0');
INSERT INTO `om_linkage_data_1` VALUES ('983', '1', '975', '0,975', '贵港市', '0', '983', '0');
INSERT INTO `om_linkage_data_1` VALUES ('984', '1', '975', '0,975', '玉林市', '0', '984', '0');
INSERT INTO `om_linkage_data_1` VALUES ('985', '1', '975', '0,975', '百色市', '0', '985', '0');
INSERT INTO `om_linkage_data_1` VALUES ('986', '1', '975', '0,975', '贺州市', '0', '986', '0');
INSERT INTO `om_linkage_data_1` VALUES ('987', '1', '975', '0,975', '河池市', '0', '987', '0');
INSERT INTO `om_linkage_data_1` VALUES ('988', '1', '975', '0,975', '来宾市', '0', '988', '0');
INSERT INTO `om_linkage_data_1` VALUES ('989', '1', '975', '0,975', '崇左市', '0', '989', '0');
INSERT INTO `om_linkage_data_1` VALUES ('990', '1', '18', '0,18', '海口市', '0', '990', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1046', '1', '20', '0,20', '成都市', '0', '1046', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1047', '1', '20', '0,20', '自贡市', '0', '1047', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1048', '1', '20', '0,20', '攀枝花市', '0', '1048', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1049', '1', '20', '0,20', '泸州市', '0', '1049', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1050', '1', '20', '0,20', '德阳市', '0', '1050', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1051', '1', '20', '0,20', '绵阳市', '0', '1051', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1052', '1', '20', '0,20', '广元市', '0', '1052', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1053', '1', '20', '0,20', '遂宁市', '0', '1053', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1054', '1', '20', '0,20', '内江市', '0', '1054', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1055', '1', '20', '0,20', '乐山市', '0', '1055', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1056', '1', '20', '0,20', '南充市', '0', '1056', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1057', '1', '20', '0,20', '眉山市', '0', '1057', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1058', '1', '20', '0,20', '宜宾市', '0', '1058', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1059', '1', '20', '0,20', '广安市', '0', '1059', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1060', '1', '20', '0,20', '达州市', '0', '1060', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1061', '1', '20', '0,20', '雅安市', '0', '1061', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1062', '1', '20', '0,20', '巴中市', '0', '1062', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1063', '1', '20', '0,20', '资阳市', '0', '1063', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1064', '1', '20', '0,20', '阿坝自治州', '0', '1064', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1065', '1', '20', '0,20', '甘孜自治州', '0', '1065', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1066', '1', '20', '0,20', '凉山自治州', '0', '1066', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1067', '1', '21', '0,21', '贵阳市', '0', '1067', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1068', '1', '21', '0,21', '六盘水市', '0', '1068', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1069', '1', '21', '0,21', '遵义市', '0', '1069', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1070', '1', '21', '0,21', '安顺市', '0', '1070', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1071', '1', '21', '0,21', '毕节市', '0', '1071', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1072', '1', '21', '0,21', '铜仁市', '0', '1072', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1073', '1', '21', '0,21', '黔西南自治州', '0', '1073', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1074', '1', '21', '0,21', '黔东南自治州', '0', '1074', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1075', '1', '21', '0,21', '黔南自治州', '0', '1075', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1076', '1', '22', '0,22', '昆明市', '0', '1076', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1077', '1', '22', '0,22', '曲靖市', '0', '1077', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1078', '1', '22', '0,22', '玉溪市', '0', '1078', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1079', '1', '22', '0,22', '保山市', '0', '1079', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1080', '1', '22', '0,22', '昭通市', '0', '1080', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1081', '1', '22', '0,22', '丽江市', '0', '1081', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1082', '1', '22', '0,22', '普洱市', '0', '1082', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1083', '1', '22', '0,22', '临沧市', '0', '1083', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1084', '1', '22', '0,22', '楚雄自治州', '0', '1084', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1085', '1', '22', '0,22', '红河自治州', '0', '1085', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1086', '1', '22', '0,22', '文山自治州', '0', '1086', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1087', '1', '22', '0,22', '西双版纳自治州', '0', '1087', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1088', '1', '22', '0,22', '大理自治州', '0', '1088', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1089', '1', '22', '0,22', '德宏自治州', '0', '1089', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1090', '1', '22', '0,22', '怒江自治州', '0', '1090', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1091', '1', '22', '0,22', '迪庆自治州', '0', '1091', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1092', '1', '27', '0,27', '拉萨市', '0', '1092', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1093', '1', '27', '0,27', '昌都地区', '0', '1093', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1094', '1', '27', '0,27', '山南地区', '0', '1094', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1095', '1', '27', '0,27', '日喀则地区', '0', '1095', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1096', '1', '27', '0,27', '那曲地区', '0', '1096', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1097', '1', '27', '0,27', '阿里地区', '0', '1097', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1098', '1', '27', '0,27', '林芝地区', '0', '1098', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1099', '1', '23', '0,23', '西安市', '0', '1099', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1100', '1', '23', '0,23', '铜川市', '0', '1100', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1101', '1', '23', '0,23', '宝鸡市', '0', '1101', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1102', '1', '23', '0,23', '咸阳市', '0', '1102', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1103', '1', '23', '0,23', '渭南市', '0', '1103', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1104', '1', '23', '0,23', '延安市', '0', '1104', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1105', '1', '23', '0,23', '汉中市', '0', '1105', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1106', '1', '23', '0,23', '榆林市', '0', '1106', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1107', '1', '23', '0,23', '安康市', '0', '1107', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1108', '1', '23', '0,23', '商洛市', '0', '1108', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1109', '1', '24', '0,24', '兰州市', '0', '1109', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1110', '1', '24', '0,24', '嘉峪关市', '0', '1110', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1111', '1', '24', '0,24', '白银市', '0', '1111', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1112', '1', '24', '0,24', '天水市', '0', '1112', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1113', '1', '24', '0,24', '武威市', '0', '1113', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1114', '1', '24', '0,24', '张掖市', '0', '1114', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1115', '1', '24', '0,24', '平凉市', '0', '1115', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1116', '1', '24', '0,24', '酒泉市', '0', '1116', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1117', '1', '24', '0,24', '庆阳市', '0', '1117', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1118', '1', '24', '0,24', '定西市', '0', '1118', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1119', '1', '24', '0,24', '陇南市', '0', '1119', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1120', '1', '24', '0,24', '临夏自治州', '0', '1120', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1121', '1', '24', '0,24', '甘南自治州', '0', '1121', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1122', '1', '25', '0,25', '西宁市', '0', '1122', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1123', '1', '25', '0,25', '海东地区', '0', '1123', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1124', '1', '25', '0,25', '海北自治州', '0', '1124', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1125', '1', '25', '0,25', '黄南自治州', '0', '1125', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1126', '1', '25', '0,25', '海南自治州', '0', '1126', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1127', '1', '25', '0,25', '果洛自治州', '0', '1127', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1128', '1', '25', '0,25', '玉树自治州', '0', '1128', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1129', '1', '25', '0,25', '海西自治州', '0', '1129', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1130', '1', '26', '0,26', '银川市', '0', '1130', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1131', '1', '26', '0,26', '石嘴山市', '0', '1131', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1132', '1', '26', '0,26', '吴忠市', '0', '1132', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1133', '1', '26', '0,26', '固原市', '0', '1133', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1134', '1', '26', '0,26', '中卫市', '0', '1134', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1135', '1', '28', '0,28', '乌鲁木齐市', '0', '1135', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1136', '1', '28', '0,28', '克拉玛依市', '0', '1136', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1137', '1', '28', '0,28', '吐鲁番地区', '0', '1137', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1138', '1', '28', '0,28', '哈密地区', '0', '1138', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1139', '1', '28', '0,28', '昌吉自治州', '0', '1139', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1140', '1', '28', '0,28', '博尔塔拉自治州', '0', '1140', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1141', '1', '28', '0,28', '巴音郭楞自治州', '0', '1141', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1142', '1', '28', '0,28', '阿克苏地区', '0', '1142', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1143', '1', '28', '0,28', '克孜勒自治州', '0', '1143', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1144', '1', '28', '0,28', '喀什地区', '0', '1144', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1145', '1', '28', '0,28', '和田地区', '0', '1145', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1146', '1', '28', '0,28', '伊犁自治州', '0', '1146', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1147', '1', '28', '0,28', '塔城地区', '0', '1147', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1148', '1', '28', '0,28', '阿勒泰地区', '0', '1148', '0');

-- ----------------------------
-- Table structure for om_mail_queue
-- ----------------------------
DROP TABLE IF EXISTS `om_mail_queue`;
CREATE TABLE `om_mail_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL COMMENT '邮件地址',
  `subject` varchar(255) NOT NULL COMMENT '邮件标题',
  `message` text NOT NULL COMMENT '邮件内容',
  `status` tinyint(1) unsigned NOT NULL COMMENT '发送状态',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件队列表';

-- ----------------------------
-- Records of om_mail_queue
-- ----------------------------

-- ----------------------------
-- Table structure for om_mail_smtp
-- ----------------------------
DROP TABLE IF EXISTS `om_mail_smtp`;
CREATE TABLE `om_mail_smtp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件账户表';

-- ----------------------------
-- Records of om_mail_smtp
-- ----------------------------

-- ----------------------------
-- Table structure for om_member
-- ----------------------------
DROP TABLE IF EXISTS `om_member`;
CREATE TABLE `om_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '加密密码',
  `salt` char(10) NOT NULL COMMENT '随机加密码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` char(20) NOT NULL COMMENT '手机号码',
  `avatar` varchar(255) NOT NULL COMMENT '头像地址',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int(10) unsigned NOT NULL COMMENT '虚拟币',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值',
  `adminid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理组id',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `levelid` smallint(5) unsigned NOT NULL COMMENT '会员级别',
  `overdue` int(10) unsigned NOT NULL COMMENT '到期时间',
  `regip` varchar(15) NOT NULL COMMENT '注册ip',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint(6) unsigned NOT NULL COMMENT '随机验证码',
  `ismobile` tinyint(1) unsigned DEFAULT NULL COMMENT '手机认证标识',
  PRIMARY KEY (`uid`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`),
  KEY `adminid` (`adminid`),
  KEY `username` (`username`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of om_member
-- ----------------------------
INSERT INTO `om_member` VALUES ('1', 'root@onmi.cn', 'zansheng', '377c8589430c9f1858815307ad5cbdc7', '287e03db1d', '', '', '', '9999.00', '0.00', '0.00', '10000', '10005', '1', '3', '4', '0', '', '0', '0', '0');

-- ----------------------------
-- Table structure for om_member_address
-- ----------------------------
DROP TABLE IF EXISTS `om_member_address`;
CREATE TABLE `om_member_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `city` mediumint(8) unsigned NOT NULL COMMENT '城市id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `zipcode` varchar(10) NOT NULL COMMENT '邮编',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `default` tinyint(1) unsigned NOT NULL COMMENT '是否默认',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`default`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';

-- ----------------------------
-- Records of om_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_data
-- ----------------------------
DROP TABLE IF EXISTS `om_member_data`;
CREATE TABLE `om_member_data` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `complete` tinyint(1) unsigned NOT NULL COMMENT '完善资料标识',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of om_member_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_group
-- ----------------------------
DROP TABLE IF EXISTS `om_member_group`;
CREATE TABLE `om_member_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '会员组名称',
  `theme` varchar(20) NOT NULL COMMENT '风格目录',
  `template` varchar(20) NOT NULL COMMENT '模板目录',
  `price` decimal(10,2) NOT NULL COMMENT '售价',
  `unit` tinyint(1) unsigned NOT NULL COMMENT '价格单位:1虚拟卡，2金钱',
  `limit` tinyint(1) unsigned NOT NULL COMMENT '售价限制：1月，2半年，3年',
  `overdue` smallint(5) unsigned NOT NULL COMMENT '过期后变成的组',
  `allowapply` tinyint(1) unsigned NOT NULL COMMENT '是否允许会员申请',
  `allowspace` tinyint(1) unsigned NOT NULL COMMENT '是否允许会员空间',
  `allowfield` text NOT NULL COMMENT '可用字段，序列化数组格式',
  `spacefield` text NOT NULL COMMENT '空间字段，序列化数组格式',
  `spacetemplate` varchar(50) DEFAULT NULL COMMENT '空间默认模板',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of om_member_group
-- ----------------------------
INSERT INTO `om_member_group` VALUES ('1', '待审核会员', 'default', 'default', '0.00', '1', '1', '0', '0', '0', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('2', 'OAuth会员', 'default', 'default', '0.00', '0', '0', '0', '0', '0', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('3', '普通会员', 'default', 'default', '0.00', '1', '1', '3', '0', '1', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('4', '商业会员', 'default', 'default', '10.00', '2', '1', '3', '1', '1', '', '', 'default', '0');

-- ----------------------------
-- Table structure for om_member_invite
-- ----------------------------
DROP TABLE IF EXISTS `om_member_invite`;
CREATE TABLE `om_member_invite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '邀请者',
  `rid` int(10) unsigned NOT NULL COMMENT '被邀请者',
  `rname` varchar(50) NOT NULL COMMENT '被邀请者名称',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='会员邀请注册表';

-- ----------------------------
-- Records of om_member_invite
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_level
-- ----------------------------
DROP TABLE IF EXISTS `om_member_level`;
CREATE TABLE `om_member_level` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '会员级别名称',
  `stars` tinyint(2) NOT NULL COMMENT '星星数量',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值要求',
  `allowupgrade` tinyint(1) NOT NULL COMMENT '允许自动升级',
  PRIMARY KEY (`id`),
  KEY `experience` (`experience`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员级别表';

-- ----------------------------
-- Records of om_member_level
-- ----------------------------
INSERT INTO `om_member_level` VALUES ('1', '3', '初级', '1', '0', '0');
INSERT INTO `om_member_level` VALUES ('2', '3', '中级', '5', '200', '0');
INSERT INTO `om_member_level` VALUES ('3', '3', '高级', '10', '500', '0');
INSERT INTO `om_member_level` VALUES ('4', '3', '元老', '15', '1000', '0');
INSERT INTO `om_member_level` VALUES ('5', '4', '普通', '16', '0', '0');
INSERT INTO `om_member_level` VALUES ('6', '4', '银牌', '23', '500', '0');
INSERT INTO `om_member_level` VALUES ('7', '4', '金牌', '35', '1000', '0');
INSERT INTO `om_member_level` VALUES ('8', '4', '钻石', '55', '2000', '0');

-- ----------------------------
-- Table structure for om_member_login
-- ----------------------------
DROP TABLE IF EXISTS `om_member_login`;
CREATE TABLE `om_member_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `oauthid` varchar(30) NOT NULL COMMENT '快捷登录方式',
  `loginip` varchar(50) NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='登录日志记录';

-- ----------------------------
-- Records of om_member_login
-- ----------------------------
INSERT INTO `om_member_login` VALUES ('1', '1', '', '127.0.0.1', '1425816502', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');

-- ----------------------------
-- Table structure for om_member_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_member_menu`;
CREATE TABLE `om_member_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text NOT NULL COMMENT '菜单名称',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) DEFAULT NULL COMMENT 'url',
  `mark` varchar(50) DEFAULT NULL COMMENT '菜单标识',
  `target` tinyint(3) unsigned DEFAULT NULL COMMENT '新窗口',
  `displayorder` tinyint(3) unsigned DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `uri` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='会员菜单表';

-- ----------------------------
-- Records of om_member_menu
-- ----------------------------
INSERT INTO `om_member_menu` VALUES ('1', '0', '账号', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('2', '0', '财务', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('3', '0', '空间', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('4', '0', '应用', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('5', '1', '基本管理', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('6', '5', '基本资料', 'account/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('7', '5', '收货地址', 'address/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('8', '5', '上传头像', 'account/avatar', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('9', '5', '附件管理', 'account/attachment', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('10', '1', '会员相关', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('11', '10', '修改密码', 'account/password', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('12', '10', '快捷登录', 'account/oauth', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('13', '10', '登录记录', 'account/login', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('14', '10', '会员升级', 'account/upgrade', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('15', '10', '会员权限', 'account/permission', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('16', '2', '充值', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('17', '2', '记录', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('18', '16', '网银充值', 'pay/add', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('19', '16', '卡密充值', 'pay/card', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('20', '16', '兑换服务', 'pay/convert', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('21', '17', '收入记录', 'pay/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('22', '17', '消费记录', 'pay/spend', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('23', '17', '经验值记录', 'pay/experience', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('24', '17', '虚拟币记录', 'pay/score', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('25', '3', '基本设置', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('26', '3', '内容管理', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('27', '25', '空间设置', 'space/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('28', '25', '模板设置', 'space/template', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('29', '26', '栏目分类', 'category/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('30', '4', '应用管理', '', '', '', '0', '99');
INSERT INTO `om_member_menu` VALUES ('31', '26', '文章管理', 'space1/index', '', 'space-1', '0', '0');
INSERT INTO `om_member_menu` VALUES ('32', '26', '外链管理', 'space2/index', '', 'space-2', '0', '0');
INSERT INTO `om_member_menu` VALUES ('33', '26', '日志管理', 'space3/index', '', 'space-3', '0', '0');
INSERT INTO `om_member_menu` VALUES ('34', '26', '相册管理', 'space4/index', '', 'space-4', '0', '0');
INSERT INTO `om_member_menu` VALUES ('35', '26', '幻灯管理', 'space5/index', '', 'space-5', '0', '0');
INSERT INTO `om_member_menu` VALUES ('36', '0', '互动', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('37', '36', '互动', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('38', '37', '我的动态', 'sns/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('39', '37', '我关注的', 'sns/follow', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('40', '37', '我的粉丝', 'sns/fans', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('41', '37', '互动设置', 'sns/config', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('42', '36', '通知', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('43', '42', '短消息', 'pm/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('44', '42', '系统提醒', 'notice/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('45', '42', '会员互动', 'notice/member', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('46', '42', '模块提醒', 'notice/module', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('47', '42', '应用提醒', 'notice/app', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('48', '0', '新闻中心', '', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('49', '48', '文档管理', '', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('50', '49', '已通过的文档', 'news/home/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('51', '49', '待审核的文档', 'news/verify/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('52', '49', '被退回的文档', 'news/back/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('53', '49', '我推荐的文档', 'news/home/flag', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('54', '49', '我收藏的文档', 'news/home/favorite', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('55', '49', '我购买的文档', 'news/home/buy', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('56', '0', '婚礼案例', '', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('57', '56', '文档管理', '', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('58', '57', '已通过的文档', 'case/home/index', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('59', '57', '待审核的文档', 'case/verify/index', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('60', '57', '被退回的文档', 'case/back/index', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('61', '57', '我推荐的文档', 'case/home/flag', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('62', '57', '我收藏的文档', 'case/home/favorite', '', 'module-case', '0', '0');
INSERT INTO `om_member_menu` VALUES ('63', '57', '我购买的文档', 'case/home/buy', '', 'module-case', '0', '0');

-- ----------------------------
-- Table structure for om_member_new_notice
-- ----------------------------
DROP TABLE IF EXISTS `om_member_new_notice`;
CREATE TABLE `om_member_new_notice` (
  `uid` smallint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新通知提醒表';

-- ----------------------------
-- Records of om_member_new_notice
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_0`;
CREATE TABLE `om_member_notice_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_1`;
CREATE TABLE `om_member_notice_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_2`;
CREATE TABLE `om_member_notice_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_3`;
CREATE TABLE `om_member_notice_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_4`;
CREATE TABLE `om_member_notice_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_5`;
CREATE TABLE `om_member_notice_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_6`;
CREATE TABLE `om_member_notice_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_7`;
CREATE TABLE `om_member_notice_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_8`;
CREATE TABLE `om_member_notice_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_9`;
CREATE TABLE `om_member_notice_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_oauth
-- ----------------------------
DROP TABLE IF EXISTS `om_member_oauth`;
CREATE TABLE `om_member_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `expire_at` int(10) unsigned NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员OAuth2授权表';

-- ----------------------------
-- Records of om_member_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paycard
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paycard`;
CREATE TABLE `om_member_paycard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` char(20) NOT NULL COMMENT '卡号',
  `password` mediumint(6) unsigned NOT NULL COMMENT '密码',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `inputtime` int(10) unsigned NOT NULL COMMENT '生成时间',
  `endtime` int(10) unsigned NOT NULL COMMENT '结束时间',
  `usetime` int(10) unsigned NOT NULL COMMENT '使用时间',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '使用人id',
  `username` varchar(50) NOT NULL COMMENT '使用人名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card` (`card`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付卡表';

-- ----------------------------
-- Records of om_member_paycard
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_0`;
CREATE TABLE `om_member_paylog_0` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_1`;
CREATE TABLE `om_member_paylog_1` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_2`;
CREATE TABLE `om_member_paylog_2` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_3`;
CREATE TABLE `om_member_paylog_3` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_4`;
CREATE TABLE `om_member_paylog_4` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_5`;
CREATE TABLE `om_member_paylog_5` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_6`;
CREATE TABLE `om_member_paylog_6` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_7`;
CREATE TABLE `om_member_paylog_7` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_8`;
CREATE TABLE `om_member_paylog_8` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_9`;
CREATE TABLE `om_member_paylog_9` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_0`;
CREATE TABLE `om_member_scorelog_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_1`;
CREATE TABLE `om_member_scorelog_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_1
-- ----------------------------
INSERT INTO `om_member_scorelog_1` VALUES ('1', '1', '0', '5', 'login', 'lang,m-056', '1425805492');

-- ----------------------------
-- Table structure for om_member_scorelog_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_2`;
CREATE TABLE `om_member_scorelog_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_3`;
CREATE TABLE `om_member_scorelog_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_4`;
CREATE TABLE `om_member_scorelog_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_5`;
CREATE TABLE `om_member_scorelog_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_6`;
CREATE TABLE `om_member_scorelog_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_7`;
CREATE TABLE `om_member_scorelog_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_8`;
CREATE TABLE `om_member_scorelog_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_9`;
CREATE TABLE `om_member_scorelog_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_session
-- ----------------------------
DROP TABLE IF EXISTS `om_member_session`;
CREATE TABLE `om_member_session` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员Session会话表';

-- ----------------------------
-- Records of om_member_session
-- ----------------------------
INSERT INTO `om_member_session` VALUES ('9c01f466403e713091191324111528f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '1425816502', 'a:3:{s:7:\"user_id\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('27e7b8b189243230954a82d493a43e35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '1425809191', 'a:3:{s:7:\"user_id\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('d0fa84074115b996fe2ed41b3f7de6a4', '127.0.0.1', 'Shockwave Flash', '1425805585', '', '0');
INSERT INTO `om_member_session` VALUES ('9f2083754b0d18b320a94c09ff413b8f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '1425801710', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');

-- ----------------------------
-- Table structure for om_member_setting
-- ----------------------------
DROP TABLE IF EXISTS `om_member_setting`;
CREATE TABLE `om_member_setting` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员属性参数表';

-- ----------------------------
-- Records of om_member_setting
-- ----------------------------
INSERT INTO `om_member_setting` VALUES ('ucentercfg', '');
INSERT INTO `om_member_setting` VALUES ('domain', '');
INSERT INTO `om_member_setting` VALUES ('pagesize', '10');
INSERT INTO `om_member_setting` VALUES ('regnotallow', 'omooo,OmWeb');
INSERT INTO `om_member_setting` VALUES ('ucenter', '0');
INSERT INTO `om_member_setting` VALUES ('regnamerule', '/^[0-9a-z]+$/i');
INSERT INTO `om_member_setting` VALUES ('register', '1');
INSERT INTO `om_member_setting` VALUES ('regcode', '0');
INSERT INTO `om_member_setting` VALUES ('regverify', '1');
INSERT INTO `om_member_setting` VALUES ('regiptime', '2');
INSERT INTO `om_member_setting` VALUES ('logincode', '1');
INSERT INTO `om_member_setting` VALUES ('permission', 'a:10:{i:1;a:13:{s:16:\\\"login_experience\\\";s:1:\\\"1\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"1\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:10:\\\"attachsize\\\";s:1:\\\"0\\\";}i:2;a:14:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"1\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:1:\\\"5\\\";}s:3:\\\"3_1\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"10\\\";}s:3:\\\"3_2\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"10\\\";}s:3:\\\"3_3\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:2:\\\"10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"20\\\";}s:3:\\\"3_4\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"3\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"30\\\";}s:3:\\\"4_5\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:2:\\\"10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"50\\\";}s:3:\\\"4_6\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"70\\\";}s:3:\\\"4_7\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:3:\\\"100\\\";}s:3:\\\"4_8\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:1:\\\"0\\\";}}');
INSERT INTO `om_member_setting` VALUES ('complete', '0');
INSERT INTO `om_member_setting` VALUES ('avatar', '0');
INSERT INTO `om_member_setting` VALUES ('pay', 'a:2:{s:6:\\\"tenpay\\\";a:3:{s:4:\\\"name\\\";s:9:\\\"财付通\\\";s:2:\\\"id\\\";s:0:\\\"\\\";s:3:\\\"key\\\";s:0:\\\"\\\";}s:6:\\\"alipay\\\";a:4:{s:4:\\\"name\\\";s:9:\\\"支付宝\\\";s:8:\\\"username\\\";s:0:\\\"\\\";s:2:\\\"id\\\";s:0:\\\"\\\";s:3:\\\"key\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_member_setting` VALUES ('space', 'a:9:{s:6:\\\"domain\\\";s:0:\\\"\\\";s:4:\\\"edit\\\";s:1:\\\"1\\\";s:6:\\\"verify\\\";s:1:\\\"0\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:5:\\\"title\\\";s:41:\\\"会员空间_OmWeb自助建站平台！\\\";s:8:\\\"keywords\\\";s:0:\\\"\\\";s:11:\\\"description\\\";s:0:\\\"\\\";s:4:\\\"flag\\\";a:9:{i:1;a:1:{s:4:\\\"name\\\";s:12:\\\"达人空间\\\";}i:2;a:1:{s:4:\\\"name\\\";s:12:\\\"推荐空间\\\";}i:3;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:4;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:5;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:6;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:7;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:8;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:9;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}}}');

-- ----------------------------
-- Table structure for om_module
-- ----------------------------
DROP TABLE IF EXISTS `om_module`;
CREATE TABLE `om_module` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` text COMMENT '站点划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否是扩展模块',
  `sitemap` tinyint(1) unsigned DEFAULT NULL COMMENT '是否生成地图',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of om_module
-- ----------------------------
INSERT INTO `om_module` VALUES ('1', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:6:\\\"hunTpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'news', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('2', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";i:1;s:4:\\\"html\\\";i:0;s:5:\\\"theme\\\";s:3:\\\"zan\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";s:8:\\\"template\\\";s:6:\\\"hunTpl\\\";}}', 'case', '0', '1', '', '0', '0');

-- ----------------------------
-- Table structure for om_newpm
-- ----------------------------
DROP TABLE IF EXISTS `om_newpm`;
CREATE TABLE `om_newpm` (
  `uid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新消息数量表';

-- ----------------------------
-- Records of om_newpm
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_indexes
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_indexes`;
CREATE TABLE `om_pm_indexes` (
  `pmid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息索引表';

-- ----------------------------
-- Records of om_pm_indexes
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_lists
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_lists`;
CREATE TABLE `om_pm_lists` (
  `plid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL,
  `pmtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL,
  `members` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_max` varchar(17) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmessage` text NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `pmtype` (`pmtype`),
  KEY `min_max` (`min_max`),
  KEY `authorid` (`authorid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息关系表';

-- ----------------------------
-- Records of om_pm_lists
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_members
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_members`;
CREATE TABLE `om_pm_members` (
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isnew` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pmnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`plid`,`uid`),
  KEY `isnew` (`isnew`),
  KEY `lastdateline` (`uid`,`lastdateline`),
  KEY `lastupdate` (`uid`,`lastupdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息与会员关系表';

-- ----------------------------
-- Records of om_pm_members
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_0
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_0`;
CREATE TABLE `om_pm_messages_0` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_1
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_1`;
CREATE TABLE `om_pm_messages_1` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_2
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_2`;
CREATE TABLE `om_pm_messages_2` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_3
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_3`;
CREATE TABLE `om_pm_messages_3` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_4
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_4`;
CREATE TABLE `om_pm_messages_4` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_5
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_5`;
CREATE TABLE `om_pm_messages_5` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_6
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_6`;
CREATE TABLE `om_pm_messages_6` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_7
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_7`;
CREATE TABLE `om_pm_messages_7` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_8
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_8`;
CREATE TABLE `om_pm_messages_8` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_9
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_9`;
CREATE TABLE `om_pm_messages_9` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_site
-- ----------------------------
DROP TABLE IF EXISTS `om_site`;
CREATE TABLE `om_site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '站点名称',
  `domain` varchar(50) NOT NULL COMMENT '站点域名',
  `setting` text NOT NULL COMMENT '站点配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of om_site
-- ----------------------------
INSERT INTO `om_site` VALUES ('1', '缘始婚庆礼仪 我们结婚吧', 'hq.in', 'a:33:{s:9:\\\"SITE_NAME\\\";s:34:\\\"缘始婚庆礼仪 我们结婚吧\\\";s:16:\\\"SITE_TIME_FORMAT\\\";s:9:\\\"Y-m-d H:i\\\";s:13:\\\"SITE_LANGUAGE\\\";s:5:\\\"zh-cn\\\";s:10:\\\"SITE_THEME\\\";s:3:\\\"zan\\\";s:13:\\\"SITE_TEMPLATE\\\";s:6:\\\"hunTpl\\\";s:13:\\\"SITE_TIMEZONE\\\";s:1:\\\"8\\\";s:11:\\\"SITE_MOBILE\\\";s:0:\\\"\\\";s:16:\\\"SITE_MOBILE_OPEN\\\";s:1:\\\"0\\\";s:12:\\\"SITE_SEOJOIN\\\";s:1:\\\"_\\\";s:10:\\\"SITE_TITLE\\\";s:34:\\\"缘始婚庆礼仪 我们结婚吧\\\";s:13:\\\"SITE_KEYWORDS\\\";s:34:\\\"缘始婚庆礼仪 我们结婚吧\\\";s:16:\\\"SITE_DESCRIPTION\\\";s:34:\\\"缘始婚庆礼仪 我们结婚吧\\\";s:18:\\\"SITE_ATTACH_REMOTE\\\";s:1:\\\"0\\\";s:6:\\\"remote\\\";a:3:{i:1;a:9:{s:16:\\\"SITE_ATTACH_HOST\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PORT\\\";s:0:\\\"\\\";s:20:\\\"SITE_ATTACH_USERNAME\\\";s:0:\\\"\\\";s:20:\\\"SITE_ATTACH_PASSWORD\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PATH\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PASV\\\";s:1:\\\"0\\\";s:16:\\\"SITE_ATTACH_MODE\\\";s:4:\\\"auto\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}i:2;a:6:{s:2:\\\"ak\\\";s:0:\\\"\\\";s:2:\\\"sk\\\";s:0:\\\"\\\";s:6:\\\"bucket\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:4:\\\"host\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}i:3;a:6:{s:2:\\\"id\\\";s:0:\\\"\\\";s:6:\\\"secret\\\";s:0:\\\"\\\";s:6:\\\"bucket\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:4:\\\"host\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}}s:16:\\\"SITE_IMAGE_RATIO\\\";s:1:\\\"0\\\";s:20:\\\"SITE_IMAGE_WATERMARK\\\";s:1:\\\"0\\\";s:17:\\\"SITE_IMAGE_REMOTE\\\";s:1:\\\"0\\\";s:18:\\\"SITE_IMAGE_CONTENT\\\";s:1:\\\"0\\\";s:19:\\\"SITE_IMAGE_VRTALIGN\\\";s:3:\\\"top\\\";s:19:\\\"SITE_IMAGE_HORALIGN\\\";s:4:\\\"left\\\";s:20:\\\"SITE_IMAGE_VRTOFFSET\\\";s:0:\\\"\\\";s:20:\\\"SITE_IMAGE_HOROFFSET\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_TYPE\\\";s:1:\\\"0\\\";s:18:\\\"SITE_IMAGE_OPACITY\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_FONT\\\";s:11:\\\"default.ttf\\\";s:16:\\\"SITE_IMAGE_COLOR\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_SIZE\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_TEXT\\\";s:0:\\\"\\\";s:15:\\\"SITE_HOME_INDEX\\\";s:4:\\\"1099\\\";s:17:\\\"SITE_MODULE_INDEX\\\";s:3:\\\"999\\\";s:16:\\\"SITE_QUERY_CACHE\\\";s:1:\\\"0\\\";s:11:\\\"SITE_DOMAIN\\\";s:5:\\\"hq.in\\\";s:14:\\\"SITE_NAVIGATOR\\\";s:42:\\\"主导航,首页幻灯,底部导航,,,,,,,\\\";}');

-- ----------------------------
-- Table structure for om_sns_comment
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_comment`;
CREATE TABLE `om_sns_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL COMMENT '动态表id',
  `uid` int(10) unsigned NOT NULL COMMENT '评论人id',
  `username` varchar(50) NOT NULL COMMENT '评论人',
  `comment` text NOT NULL COMMENT '评论内容',
  `inputip` varchar(50) NOT NULL COMMENT '录入ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入评论时间',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='动态评论';

-- ----------------------------
-- Records of om_sns_comment
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_config
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_config`;
CREATE TABLE `om_sns_config` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员uid',
  `show_all` tinyint(1) unsigned DEFAULT NULL COMMENT '是否全部人可查看我的动态',
  `show_follow` tinyint(1) unsigned DEFAULT NULL COMMENT '是否允许关注我的人访问',
  `show_fans` tinyint(1) unsigned DEFAULT NULL COMMENT '是否允许我的粉丝访问',
  UNIQUE KEY `uid` (`uid`),
  KEY `show_all` (`show_all`),
  KEY `show_fans` (`show_fans`),
  KEY `show_follow` (`show_follow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员互动配置';

-- ----------------------------
-- Records of om_sns_config
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed`;
CREATE TABLE `om_sns_feed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态ID',
  `uid` int(10) unsigned NOT NULL COMMENT '产生动态的用户UID',
  `username` varchar(100) NOT NULL COMMENT '会员名称',
  `comment` int(10) unsigned DEFAULT '0' COMMENT '评论数',
  `repost` int(10) unsigned DEFAULT '0' COMMENT '分享数',
  `digg` int(10) unsigned DEFAULT '0' COMMENT '赞数量',
  `content` text NOT NULL COMMENT '内容',
  `repost_id` int(10) unsigned NOT NULL COMMENT '转发id',
  `source` varchar(100) NOT NULL COMMENT '来源名称',
  `images` varchar(255) NOT NULL COMMENT '图片',
  `inputip` varchar(50) NOT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ctime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员动态表';

-- ----------------------------
-- Records of om_sns_feed
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed_digg
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed_digg`;
CREATE TABLE `om_sns_feed_digg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='点赞表';

-- ----------------------------
-- Records of om_sns_feed_digg
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed_favorite
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed_favorite`;
CREATE TABLE `om_sns_feed_favorite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of om_sns_feed_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_follow
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_follow`;
CREATE TABLE `om_sns_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '被关注者ID',
  `username` varchar(50) NOT NULL COMMENT '被关注者名称',
  `gid` int(11) unsigned NOT NULL COMMENT '分组表',
  `fid` int(11) NOT NULL COMMENT '关注者ID',
  `isdouble` tinyint(1) unsigned NOT NULL COMMENT '是否互粉',
  `remark` varchar(50) NOT NULL COMMENT '备注',
  `ctime` int(11) NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid-fid` (`uid`,`fid`),
  UNIQUE KEY `fid-uid` (`fid`,`uid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Records of om_sns_follow
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_follow_group
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_follow_group`;
CREATE TABLE `om_sns_follow_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注组ID',
  `uid` int(11) NOT NULL COMMENT '用户UID',
  `title` varchar(255) NOT NULL COMMENT '组名称',
  `ctime` int(11) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注组表';

-- ----------------------------
-- Records of om_sns_follow_group
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_topic
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_topic`;
CREATE TABLE `om_sns_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '话题名称',
  `uid` int(10) NOT NULL COMMENT '发起人',
  `username` varchar(100) NOT NULL COMMENT '发起人名称',
  `count` int(10) unsigned NOT NULL COMMENT '关联动态数量',
  `inputtime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `uid` (`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题表';

-- ----------------------------
-- Records of om_sns_topic
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_topic_index
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_topic_index`;
CREATE TABLE `om_sns_topic_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL COMMENT '话题id',
  `fid` int(10) unsigned NOT NULL COMMENT '动态id',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='话题关联表';

-- ----------------------------
-- Records of om_sns_topic_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_space
-- ----------------------------
DROP TABLE IF EXISTS `om_space`;
CREATE TABLE `om_space` (
  `uid` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '空间名称',
  `logo` varchar(255) DEFAULT NULL COMMENT '空间logo',
  `style` varchar(30) DEFAULT NULL COMMENT '空间风格',
  `title` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'SEO关键字',
  `description` text COMMENT 'SEO描述',
  `introduction` text COMMENT '空间简介',
  `code` text COMMENT '第三方代码',
  `footer` text COMMENT '底部信息',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `displayorder` tinyint(3) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`uid`),
  KEY `hits` (`hits`),
  KEY `status` (`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间表';

-- ----------------------------
-- Records of om_space
-- ----------------------------
INSERT INTO `om_space` VALUES ('1', 'omWeb团队', 'http://www.omooo.com/member/statics/default/images/logo_new.png', 'default', 'omWeb团队-专业技术团队', 'OmWeb,网站建设,内容管理系统', 'OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案', '<p>OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案。系统基于CodeIgniter框架，具有良好扩展性和管理性，可以帮助您在各种操作系统与运行环境中搭建各种网站模型而不需要对复杂繁琐的编程语言有太多的专业知识，系统采用UTF-8编码，采取(语言-代码-程序)两两分离的技术模式，全面使用了模板包与语言包结构，为用户的修改提供方便，网站内容的每一个角落都可以在后台予以管理，是一套非常适合用做系统建站或者进行二次开发的程序核心。</p>', '<script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cdiv id=\'cnzz_stat_icon_5629330\'%3E%3C/div%3E%3Cscript src=\'\" + cnzz_protocol + \"s9.cnzz.com/stat.php%3Fid%3D5629330%26show%3Dpic2\' type=\'text/javascript\'%3E%3C/script%3E\"));</script>', '<p>扣扣咨询：135977378 电子邮箱：OmWeb@qq.com</p>某某某公司版权所有，ICP备案0000001<p><br /></p>', '888888', '1', '1377949585', '0');

-- ----------------------------
-- Table structure for om_space_category
-- ----------------------------
DROP TABLE IF EXISTS `om_space_category`;
CREATE TABLE `om_space_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '0外链，1模型，2单页',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `body` text COMMENT '单页内容',
  `showid` tinyint(1) unsigned NOT NULL COMMENT '0不显示,1顶部,2底部,3都显示',
  `modelid` smallint(5) unsigned NOT NULL COMMENT '模型id',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  `title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述信息',
  `displayorder` tinyint(3) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `showid` (`showid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_space_category
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_category_init
-- ----------------------------
DROP TABLE IF EXISTS `om_space_category_init`;
CREATE TABLE `om_space_category_init` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `gid` mediumint(8) unsigned NOT NULL COMMENT '会员组id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '0外链，1模型，2单页',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `showid` tinyint(1) unsigned NOT NULL COMMENT '0不显示,1顶部,2底部,3都显示',
  `modelid` smallint(5) unsigned NOT NULL COMMENT '模型id',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  PRIMARY KEY (`id`),
  KEY `uid` (`gid`),
  KEY `pid` (`pid`),
  KEY `showid` (`showid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='空间栏目表初始化表';

-- ----------------------------
-- Records of om_space_category_init
-- ----------------------------
INSERT INTO `om_space_category_init` VALUES ('1', '1', '0', '0', '2', '关于我们', '', '3', '0', '1', '1,2,3');
INSERT INTO `om_space_category_init` VALUES ('2', '1', '1', '0,1', '2', '空间简介', '', '3', '0', '0', '2');
INSERT INTO `om_space_category_init` VALUES ('3', '1', '1', '0,1', '2', '联系我们', '', '3', '0', '0', '3');
INSERT INTO `om_space_category_init` VALUES ('4', '1', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '4');
INSERT INTO `om_space_category_init` VALUES ('5', '1', '0', '0', '1', '我的日志', '', '3', '3', '0', '5');
INSERT INTO `om_space_category_init` VALUES ('6', '1', '0', '0', '1', '精彩图片', '', '3', '4', '0', '6');
INSERT INTO `om_space_category_init` VALUES ('7', '1', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '7');
INSERT INTO `om_space_category_init` VALUES ('8', '1', '0', '0', '1', '友情链接', '', '3', '2', '0', '8');
INSERT INTO `om_space_category_init` VALUES ('9', '1', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '9');
INSERT INTO `om_space_category_init` VALUES ('10', '2', '0', '0', '2', '关于我们', '', '3', '0', '1', '10,11,12');
INSERT INTO `om_space_category_init` VALUES ('11', '2', '10', '0,10', '2', '空间简介', '', '3', '0', '0', '11');
INSERT INTO `om_space_category_init` VALUES ('12', '2', '10', '0,10', '2', '联系我们', '', '3', '0', '0', '12');
INSERT INTO `om_space_category_init` VALUES ('13', '2', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '13');
INSERT INTO `om_space_category_init` VALUES ('14', '2', '0', '0', '1', '我的日志', '', '3', '3', '0', '14');
INSERT INTO `om_space_category_init` VALUES ('15', '2', '0', '0', '1', '精彩图片', '', '3', '4', '0', '15');
INSERT INTO `om_space_category_init` VALUES ('16', '2', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '16');
INSERT INTO `om_space_category_init` VALUES ('17', '2', '0', '0', '1', '友情链接', '', '3', '2', '0', '17');
INSERT INTO `om_space_category_init` VALUES ('18', '2', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '18');
INSERT INTO `om_space_category_init` VALUES ('19', '3', '0', '0', '2', '关于我们', '', '3', '0', '1', '19,20,21');
INSERT INTO `om_space_category_init` VALUES ('20', '3', '19', '0,19', '2', '空间简介', '', '3', '0', '0', '20');
INSERT INTO `om_space_category_init` VALUES ('21', '3', '19', '0,19', '2', '联系我们', '', '3', '0', '0', '21');
INSERT INTO `om_space_category_init` VALUES ('22', '3', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '22');
INSERT INTO `om_space_category_init` VALUES ('23', '3', '0', '0', '1', '我的日志', '', '3', '3', '0', '23');
INSERT INTO `om_space_category_init` VALUES ('24', '3', '0', '0', '1', '精彩图片', '', '3', '4', '0', '24');
INSERT INTO `om_space_category_init` VALUES ('25', '3', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '25');
INSERT INTO `om_space_category_init` VALUES ('26', '3', '0', '0', '1', '友情链接', '', '3', '2', '0', '26');
INSERT INTO `om_space_category_init` VALUES ('27', '3', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '27');
INSERT INTO `om_space_category_init` VALUES ('28', '4', '0', '0', '2', '关于我们', '', '3', '0', '1', '28,29,30');
INSERT INTO `om_space_category_init` VALUES ('29', '4', '28', '0,28', '2', '空间简介', '', '3', '0', '0', '29');
INSERT INTO `om_space_category_init` VALUES ('30', '4', '28', '0,28', '2', '联系我们', '', '3', '0', '0', '30');
INSERT INTO `om_space_category_init` VALUES ('31', '4', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '31');
INSERT INTO `om_space_category_init` VALUES ('32', '4', '0', '0', '1', '我的日志', '', '3', '3', '0', '32');
INSERT INTO `om_space_category_init` VALUES ('33', '4', '0', '0', '1', '精彩图片', '', '3', '4', '0', '33');
INSERT INTO `om_space_category_init` VALUES ('34', '4', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '34');
INSERT INTO `om_space_category_init` VALUES ('35', '4', '0', '0', '1', '友情链接', '', '3', '2', '0', '35');
INSERT INTO `om_space_category_init` VALUES ('36', '4', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '36');

-- ----------------------------
-- Table structure for om_space_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_space_flag`;
CREATE TABLE `om_space_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '标记id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  KEY `flag` (`flag`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_space_flag
-- ----------------------------
INSERT INTO `om_space_flag` VALUES ('1', '1');
INSERT INTO `om_space_flag` VALUES ('2', '1');

-- ----------------------------
-- Table structure for om_space_link
-- ----------------------------
DROP TABLE IF EXISTS `om_space_link`;
CREATE TABLE `om_space_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间外链模型表';

-- ----------------------------
-- Records of om_space_link
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_log
-- ----------------------------
DROP TABLE IF EXISTS `om_space_log`;
CREATE TABLE `om_space_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间日志模型表';

-- ----------------------------
-- Records of om_space_log
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_model
-- ----------------------------
DROP TABLE IF EXISTS `om_space_model`;
CREATE TABLE `om_space_model` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text NOT NULL COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员模型表';

-- ----------------------------
-- Records of om_space_model
-- ----------------------------
INSERT INTO `om_space_model` VALUES ('1', '文章', 'news', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('2', '外链', 'link', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('3', '日志', 'log', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('4', '相册', 'photo', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('5', '幻灯', 'slides', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');

-- ----------------------------
-- Table structure for om_space_news
-- ----------------------------
DROP TABLE IF EXISTS `om_space_news`;
CREATE TABLE `om_space_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间单页模型表';

-- ----------------------------
-- Records of om_space_news
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_photo
-- ----------------------------
DROP TABLE IF EXISTS `om_space_photo`;
CREATE TABLE `om_space_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `image` text,
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间相册模型表';

-- ----------------------------
-- Records of om_space_photo
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_slides
-- ----------------------------
DROP TABLE IF EXISTS `om_space_slides`;
CREATE TABLE `om_space_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员空间幻灯模型表';

-- ----------------------------
-- Records of om_space_slides
-- ----------------------------
INSERT INTO `om_space_slides` VALUES ('1', '7', '应用开放平台', '1', 'admin', '0', '1', '1377949237', '1377949237', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner1.jpg', 'http://store.omooo.com');
INSERT INTO `om_space_slides` VALUES ('2', '7', '群站多语言管理', '1', 'admin', '0', '1', '1377949258', '1377949258', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner2.jpg', 'http://web.omooo.com/');
INSERT INTO `om_space_slides` VALUES ('3', '7', 'OmWeb 一套神奇的系统', '1', 'admin', '0', '1', '1377949306', '1377949306', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner3.jpg', 'http://www.omooo.com/');

-- ----------------------------
-- Table structure for om_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `om_urlrule`;
CREATE TABLE `om_urlrule` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) NOT NULL COMMENT '规则名称',
  `value` text NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='URL规则表';

-- ----------------------------
-- Records of om_urlrule
-- ----------------------------
INSERT INTO `om_urlrule` VALUES ('1', '0', 'zanUrl', 'a:8:{s:4:\\\"page\\\";s:23:\\\"{pdirname}{dirname}{id}\\\";s:9:\\\"page_page\\\";s:29:\\\"{pdirname}{dirname}{id}{page}\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:6:\\\"extend\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}');
INSERT INTO `om_urlrule` VALUES ('2', '1', 'zanurlM', 'a:8:{s:4:\\\"page\\\";s:0:\\\"\\\";s:9:\\\"page_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:19:\\\"{dirname}{id}{page}\\\";s:9:\\\"list_page\\\";s:19:\\\"{dirname}{id}{page}\\\";s:4:\\\"show\\\";s:20:\\\"{dirname}{id}{title}\\\";s:9:\\\"show_page\\\";s:26:\\\"{dirname}{id}{title}{page}\\\";s:6:\\\"extend\\\";s:26:\\\"{dirname}{id}{title}{page}\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}');
