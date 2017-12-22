/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-22 18:34:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `names` varchar(20) NOT NULL,
  `powers` varchar(50) NOT NULL,
  `isdel` tinyint(2) NOT NULL DEFAULT '0',
  `instime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '智慧程', 'super', '0', '1513532456');
INSERT INTO `admins` VALUES ('2', 'zhc', 'e10adc3949ba59abbe56e057f20f883e', '管理员1', '1,6,7,8,9,20,21', '0', '1513532456');
INSERT INTO `admins` VALUES ('3', 'haha', 'e10adc3949ba59abbe56e057f20f883e', '管理员2', '1,6,7,8,9,20,21', '0', '1513532456');

-- ----------------------------
-- Table structure for `admin_auth`
-- ----------------------------
DROP TABLE IF EXISTS `admin_auth`;
CREATE TABLE `admin_auth` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '权限表的主键id',
  `authname` varchar(30) NOT NULL COMMENT '权限名字',
  `pid` int(4) NOT NULL,
  `path` varchar(50) NOT NULL,
  `level` tinyint(2) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_auth
-- ----------------------------
INSERT INTO `admin_auth` VALUES ('1', '基本功能', '0', '/index/manager', '1', 'fa fa-dashboard');
INSERT INTO `admin_auth` VALUES ('2', '学校管理', '0', '/index/school', '1', 'fa fa-files-o');
INSERT INTO `admin_auth` VALUES ('3', '用户管理', '0', '/index/user', '1', 'fa fa-th');
INSERT INTO `admin_auth` VALUES ('4', '资讯管理', '0', '/index/information', '1', 'fa fa-pie-chart');
INSERT INTO `admin_auth` VALUES ('5', '测评管理', '0', '/index/evaluation', '1', 'fa fa-laptop');
INSERT INTO `admin_auth` VALUES ('6', '系统管理', '0', '/index/system', '1', 'fa fa-edit');
INSERT INTO `admin_auth` VALUES ('7', '管理员列表', '6', '/index/system/index', '2', '');
INSERT INTO `admin_auth` VALUES ('8', '添加管理员', '6', '/index/system/addadmin', '2', '');
INSERT INTO `admin_auth` VALUES ('9', '修改密码', '1', '/index/manager/password', '2', '');
INSERT INTO `admin_auth` VALUES ('10', '学校', '2', '/index/school/schoollist', '2', '');
INSERT INTO `admin_auth` VALUES ('11', '添加学校', '2', '/index/school/addschool', '2', '');
INSERT INTO `admin_auth` VALUES ('12', '学生列表', '3', '/index/user/studentlist', '2', '');
INSERT INTO `admin_auth` VALUES ('13', '教师列表', '3', '/index/user/teacherlist', '2', '');
INSERT INTO `admin_auth` VALUES ('14', '家长列表', '3', '/index/user/parentlist', '2', '');
INSERT INTO `admin_auth` VALUES ('15', '资讯', '4', '/index/information/informationlist', '2', '');
INSERT INTO `admin_auth` VALUES ('16', '添加资讯', '4', '/index/information/addinformation', '2', '');
INSERT INTO `admin_auth` VALUES ('17', '资讯类型', '4', '/index/information/infotype', '2', '');
INSERT INTO `admin_auth` VALUES ('18', '测评', '5', '/index/evaluation/evaluationlist', '2', ' ');
INSERT INTO `admin_auth` VALUES ('19', '添加测评', '5', '/index/evaluation/addevaluation', '2', '');
INSERT INTO `admin_auth` VALUES ('20', '卡号', '6', '/index/system/card', '2', '');
INSERT INTO `admin_auth` VALUES ('21', '红包', '6', '/index/system/redenvelopelist', '2', '');

-- ----------------------------
-- Table structure for `alipay`
-- ----------------------------
DROP TABLE IF EXISTS `alipay`;
CREATE TABLE `alipay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `money` float(10,2) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `alipayid` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of alipay
-- ----------------------------

-- ----------------------------
-- Table structure for `areas`
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `names` varchar(30) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of areas
-- ----------------------------

-- ----------------------------
-- Table structure for `ask`
-- ----------------------------
DROP TABLE IF EXISTS `ask`;
CREATE TABLE `ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` int(7) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `answer` text,
  `instime` int(11) DEFAULT NULL,
  `clicknum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ask
-- ----------------------------

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(50) DEFAULT NULL,
  `types` int(1) DEFAULT NULL,
  `times` int(5) DEFAULT NULL,
  `nums` int(5) DEFAULT NULL,
  `schid` int(11) DEFAULT NULL,
  `iskey` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  `chargeman` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for `classes_dividetask`
-- ----------------------------
DROP TABLE IF EXISTS `classes_dividetask`;
CREATE TABLE `classes_dividetask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schid` int(11) DEFAULT NULL,
  `names` varchar(50) DEFAULT NULL,
  `types` int(1) DEFAULT NULL,
  `maxnum` int(5) DEFAULT NULL,
  `specinum` int(5) DEFAULT NULL,
  `alayerratio` int(3) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of classes_dividetask
-- ----------------------------

-- ----------------------------
-- Table structure for `classes_sched`
-- ----------------------------
DROP TABLE IF EXISTS `classes_sched`;
CREATE TABLE `classes_sched` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) DEFAULT NULL,
  `seqid` int(11) DEFAULT NULL,
  `timeperiod` int(1) DEFAULT NULL,
  `seqorder` int(2) DEFAULT NULL,
  `tearchid` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of classes_sched
-- ----------------------------

-- ----------------------------
-- Table structure for `classes_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `classes_teacher`;
CREATE TABLE `classes_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of classes_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for `class_student`
-- ----------------------------
DROP TABLE IF EXISTS `class_student`;
CREATE TABLE `class_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of class_student
-- ----------------------------

-- ----------------------------
-- Table structure for `colleges`
-- ----------------------------
DROP TABLE IF EXISTS `colleges`;
CREATE TABLE `colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(70) DEFAULT NULL,
  `types` int(2) DEFAULT NULL,
  `levels` int(2) DEFAULT NULL,
  `foundtime` int(11) DEFAULT NULL,
  `urls` varchar(200) DEFAULT NULL,
  `addres` varchar(200) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of colleges
-- ----------------------------

-- ----------------------------
-- Table structure for `coursetask`
-- ----------------------------
DROP TABLE IF EXISTS `coursetask`;
CREATE TABLE `coursetask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) DEFAULT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `schid` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of coursetask
-- ----------------------------

-- ----------------------------
-- Table structure for `coursetask_det`
-- ----------------------------
DROP TABLE IF EXISTS `coursetask_det`;
CREATE TABLE `coursetask_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) DEFAULT NULL,
  `types` int(3) DEFAULT NULL,
  `seque` int(11) DEFAULT NULL,
  `names` varchar(20) DEFAULT NULL,
  `var1` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of coursetask_det
-- ----------------------------

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `usertype` int(1) DEFAULT NULL,
  `urls` varchar(200) DEFAULT NULL,
  `funname` varchar(50) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for `myfollow`
-- ----------------------------
DROP TABLE IF EXISTS `myfollow`;
CREATE TABLE `myfollow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `types` int(1) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of myfollow
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `titles` varchar(100) DEFAULT NULL,
  `conts` text,
  `intro` text,
  `clicks` int(11) DEFAULT NULL,
  `imgs` varchar(200) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `news_type`
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(50) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news_type
-- ----------------------------

-- ----------------------------
-- Table structure for `news_video`
-- ----------------------------
DROP TABLE IF EXISTS `news_video`;
CREATE TABLE `news_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `names` varchar(100) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news_video
-- ----------------------------

-- ----------------------------
-- Table structure for `news_video_det`
-- ----------------------------
DROP TABLE IF EXISTS `news_video_det`;
CREATE TABLE `news_video_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoid` int(11) DEFAULT NULL,
  `names` varchar(100) DEFAULT NULL,
  `urls` varchar(200) DEFAULT NULL,
  `seqid` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news_video_det
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `prices` float(10,2) DEFAULT NULL,
  `moneys` float(10,2) DEFAULT NULL,
  `ifpay` int(1) DEFAULT NULL,
  `paytype` int(1) DEFAULT NULL,
  `paytime` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `packetmoney`
-- ----------------------------
DROP TABLE IF EXISTS `packetmoney`;
CREATE TABLE `packetmoney` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '红包金额表自增主键id',
  `money` smallint(5) NOT NULL COMMENT '红包金额，存入数据为实际金额*100，即526表示实际金额5.26',
  `rid` int(20) NOT NULL COMMENT '红包表里的id',
  `is_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '表示此红包金额是否已经使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of packetmoney
-- ----------------------------
INSERT INTO `packetmoney` VALUES ('1', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('2', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('3', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('4', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('5', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('6', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('7', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('8', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('9', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('10', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('11', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('12', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('13', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('14', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('15', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('16', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('17', '131', '0', '1');
INSERT INTO `packetmoney` VALUES ('18', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('19', '123', '0', '1');
INSERT INTO `packetmoney` VALUES ('20', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('21', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('22', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('23', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('24', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('25', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('26', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('27', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('28', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('29', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('30', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('31', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('32', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('33', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('34', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('35', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('36', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('37', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('38', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('39', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('40', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('41', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('42', '104', '0', '1');
INSERT INTO `packetmoney` VALUES ('43', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('44', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('45', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('46', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('47', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('48', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('49', '123', '0', '1');
INSERT INTO `packetmoney` VALUES ('50', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('51', '135', '0', '1');
INSERT INTO `packetmoney` VALUES ('52', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('53', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('54', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('55', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('56', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('57', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('58', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('59', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('60', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('61', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('62', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('63', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('64', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('65', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('66', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('67', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('68', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('69', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('70', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('71', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('72', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('73', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('74', '100', '0', '1');
INSERT INTO `packetmoney` VALUES ('75', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('76', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('77', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('78', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('79', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('80', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('81', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('82', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('83', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('84', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('85', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('86', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('87', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('88', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('89', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('90', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('91', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('92', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('93', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('94', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('95', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('96', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('97', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('98', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('99', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('100', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('101', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('102', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('103', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('104', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('105', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('106', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('107', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('108', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('109', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('110', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('111', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('112', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('113', '120', '0', '1');
INSERT INTO `packetmoney` VALUES ('114', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('115', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('116', '111', '0', '1');
INSERT INTO `packetmoney` VALUES ('117', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('118', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('119', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('120', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('121', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('122', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('123', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('124', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('125', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('126', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('127', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('128', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('129', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('130', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('131', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('132', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('133', '104', '0', '1');
INSERT INTO `packetmoney` VALUES ('134', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('135', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('136', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('137', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('138', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('139', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('140', '149', '0', '1');
INSERT INTO `packetmoney` VALUES ('141', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('142', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('143', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('144', '111', '0', '1');
INSERT INTO `packetmoney` VALUES ('145', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('146', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('147', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('148', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('149', '171', '0', '1');
INSERT INTO `packetmoney` VALUES ('150', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('151', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('152', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('153', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('154', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('155', '132', '0', '1');
INSERT INTO `packetmoney` VALUES ('156', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('157', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('158', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('159', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('160', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('161', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('162', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('163', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('164', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('165', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('166', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('167', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('168', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('169', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('170', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('171', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('172', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('173', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('174', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('175', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('176', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('177', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('178', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('179', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('180', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('181', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('182', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('183', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('184', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('185', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('186', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('187', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('188', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('189', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('190', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('191', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('192', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('193', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('194', '132', '0', '1');
INSERT INTO `packetmoney` VALUES ('195', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('196', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('197', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('198', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('199', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('200', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('201', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('202', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('203', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('204', '120', '0', '1');
INSERT INTO `packetmoney` VALUES ('205', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('206', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('207', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('208', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('209', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('210', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('211', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('212', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('213', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('214', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('215', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('216', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('217', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('218', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('219', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('220', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('221', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('222', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('223', '116', '0', '1');
INSERT INTO `packetmoney` VALUES ('224', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('225', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('226', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('227', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('228', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('229', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('230', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('231', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('232', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('233', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('234', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('235', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('236', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('237', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('238', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('239', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('240', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('241', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('242', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('243', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('244', '120', '0', '1');
INSERT INTO `packetmoney` VALUES ('245', '164', '35', '1');
INSERT INTO `packetmoney` VALUES ('246', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('247', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('248', '111', '0', '1');
INSERT INTO `packetmoney` VALUES ('249', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('250', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('251', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('252', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('253', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('254', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('255', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('256', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('257', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('258', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('259', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('260', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('261', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('262', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('263', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('264', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('265', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('266', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('267', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('268', '104', '0', '1');
INSERT INTO `packetmoney` VALUES ('269', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('270', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('271', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('272', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('273', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('274', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('275', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('276', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('277', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('278', '123', '0', '1');
INSERT INTO `packetmoney` VALUES ('279', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('280', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('281', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('282', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('283', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('284', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('285', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('286', '171', '0', '1');
INSERT INTO `packetmoney` VALUES ('287', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('288', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('289', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('290', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('291', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('292', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('293', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('294', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('295', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('296', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('297', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('298', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('299', '126', '0', '1');
INSERT INTO `packetmoney` VALUES ('300', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('301', '149', '0', '1');
INSERT INTO `packetmoney` VALUES ('302', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('303', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('304', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('305', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('306', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('307', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('308', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('309', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('310', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('311', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('312', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('313', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('314', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('315', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('316', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('317', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('318', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('319', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('320', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('321', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('322', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('323', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('324', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('325', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('326', '131', '0', '1');
INSERT INTO `packetmoney` VALUES ('327', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('328', '149', '0', '1');
INSERT INTO `packetmoney` VALUES ('329', '171', '0', '1');
INSERT INTO `packetmoney` VALUES ('330', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('331', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('332', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('333', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('334', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('335', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('336', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('337', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('338', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('339', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('340', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('341', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('342', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('343', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('344', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('345', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('346', '126', '0', '1');
INSERT INTO `packetmoney` VALUES ('347', '100', '0', '1');
INSERT INTO `packetmoney` VALUES ('348', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('349', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('350', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('351', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('352', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('353', '116', '0', '1');
INSERT INTO `packetmoney` VALUES ('354', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('355', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('356', '135', '0', '1');
INSERT INTO `packetmoney` VALUES ('357', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('358', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('359', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('360', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('361', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('362', '171', '0', '1');
INSERT INTO `packetmoney` VALUES ('363', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('364', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('365', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('366', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('367', '131', '0', '1');
INSERT INTO `packetmoney` VALUES ('368', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('369', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('370', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('371', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('372', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('373', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('374', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('375', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('376', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('377', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('378', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('379', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('380', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('381', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('382', '123', '0', '1');
INSERT INTO `packetmoney` VALUES ('383', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('384', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('385', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('386', '135', '0', '1');
INSERT INTO `packetmoney` VALUES ('387', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('388', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('389', '111', '0', '1');
INSERT INTO `packetmoney` VALUES ('390', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('391', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('392', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('393', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('394', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('395', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('396', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('397', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('398', '149', '0', '1');
INSERT INTO `packetmoney` VALUES ('399', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('400', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('401', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('402', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('403', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('404', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('405', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('406', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('407', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('408', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('409', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('410', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('411', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('412', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('413', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('414', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('415', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('416', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('417', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('418', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('419', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('420', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('421', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('422', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('423', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('424', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('425', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('426', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('427', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('428', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('429', '151', '0', '1');
INSERT INTO `packetmoney` VALUES ('430', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('431', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('432', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('433', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('434', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('435', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('436', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('437', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('438', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('439', '131', '0', '1');
INSERT INTO `packetmoney` VALUES ('440', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('441', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('442', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('443', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('444', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('445', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('446', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('447', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('448', '117', '0', '1');
INSERT INTO `packetmoney` VALUES ('449', '111', '0', '1');
INSERT INTO `packetmoney` VALUES ('450', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('451', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('452', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('453', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('454', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('455', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('456', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('457', '100', '0', '1');
INSERT INTO `packetmoney` VALUES ('458', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('459', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('460', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('461', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('462', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('463', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('464', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('465', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('466', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('467', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('468', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('469', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('470', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('471', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('472', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('473', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('474', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('475', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('476', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('477', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('478', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('479', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('480', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('481', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('482', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('483', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('484', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('485', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('486', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('487', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('488', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('489', '168', '0', '1');
INSERT INTO `packetmoney` VALUES ('490', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('491', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('492', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('493', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('494', '116', '0', '1');
INSERT INTO `packetmoney` VALUES ('495', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('496', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('497', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('498', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('499', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('500', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('501', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('502', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('503', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('504', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('505', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('506', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('507', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('508', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('509', '151', '0', '1');
INSERT INTO `packetmoney` VALUES ('510', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('511', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('512', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('513', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('514', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('515', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('516', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('517', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('518', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('519', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('520', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('521', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('522', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('523', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('524', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('525', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('526', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('527', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('528', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('529', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('530', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('531', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('532', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('533', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('534', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('535', '132', '0', '1');
INSERT INTO `packetmoney` VALUES ('536', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('537', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('538', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('539', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('540', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('541', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('542', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('543', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('544', '156', '0', '1');
INSERT INTO `packetmoney` VALUES ('545', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('546', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('547', '151', '0', '1');
INSERT INTO `packetmoney` VALUES ('548', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('549', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('550', '104', '0', '1');
INSERT INTO `packetmoney` VALUES ('551', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('552', '151', '0', '1');
INSERT INTO `packetmoney` VALUES ('553', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('554', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('555', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('556', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('557', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('558', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('559', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('560', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('561', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('562', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('563', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('564', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('565', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('566', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('567', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('568', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('569', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('570', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('571', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('572', '172', '0', '1');
INSERT INTO `packetmoney` VALUES ('573', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('574', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('575', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('576', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('577', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('578', '176', '32', '1');
INSERT INTO `packetmoney` VALUES ('579', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('580', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('581', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('582', '171', '0', '1');
INSERT INTO `packetmoney` VALUES ('583', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('584', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('585', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('586', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('587', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('588', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('589', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('590', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('591', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('592', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('593', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('594', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('595', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('596', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('597', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('598', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('599', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('600', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('601', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('602', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('603', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('604', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('605', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('606', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('607', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('608', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('609', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('610', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('611', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('612', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('613', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('614', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('615', '178', '0', '1');
INSERT INTO `packetmoney` VALUES ('616', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('617', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('618', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('619', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('620', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('621', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('622', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('623', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('624', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('625', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('626', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('627', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('628', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('629', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('630', '120', '0', '1');
INSERT INTO `packetmoney` VALUES ('631', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('632', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('633', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('634', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('635', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('636', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('637', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('638', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('639', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('640', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('641', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('642', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('643', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('644', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('645', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('646', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('647', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('648', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('649', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('650', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('651', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('652', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('653', '166', '0', '1');
INSERT INTO `packetmoney` VALUES ('654', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('655', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('656', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('657', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('658', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('659', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('660', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('661', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('662', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('663', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('664', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('665', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('666', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('667', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('668', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('669', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('670', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('671', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('672', '111', '0', '1');
INSERT INTO `packetmoney` VALUES ('673', '151', '0', '1');
INSERT INTO `packetmoney` VALUES ('674', '146', '0', '1');
INSERT INTO `packetmoney` VALUES ('675', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('676', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('677', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('678', '156', '33', '1');
INSERT INTO `packetmoney` VALUES ('679', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('680', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('681', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('682', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('683', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('684', '175', '0', '1');
INSERT INTO `packetmoney` VALUES ('685', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('686', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('687', '117', '0', '1');
INSERT INTO `packetmoney` VALUES ('688', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('689', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('690', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('691', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('692', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('693', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('694', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('695', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('696', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('697', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('698', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('699', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('700', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('701', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('702', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('703', '120', '0', '1');
INSERT INTO `packetmoney` VALUES ('704', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('705', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('706', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('707', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('708', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('709', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('710', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('711', '126', '0', '1');
INSERT INTO `packetmoney` VALUES ('712', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('713', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('714', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('715', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('716', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('717', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('718', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('719', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('720', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('721', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('722', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('723', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('724', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('725', '176', '0', '1');
INSERT INTO `packetmoney` VALUES ('726', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('727', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('728', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('729', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('730', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('731', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('732', '187', '0', '1');
INSERT INTO `packetmoney` VALUES ('733', '132', '0', '1');
INSERT INTO `packetmoney` VALUES ('734', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('735', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('736', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('737', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('738', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('739', '120', '0', '1');
INSERT INTO `packetmoney` VALUES ('740', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('741', '101', '31', '1');
INSERT INTO `packetmoney` VALUES ('742', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('743', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('744', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('745', '104', '0', '1');
INSERT INTO `packetmoney` VALUES ('746', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('747', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('748', '167', '0', '1');
INSERT INTO `packetmoney` VALUES ('749', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('750', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('751', '165', '0', '1');
INSERT INTO `packetmoney` VALUES ('752', '184', '0', '1');
INSERT INTO `packetmoney` VALUES ('753', '131', '0', '1');
INSERT INTO `packetmoney` VALUES ('754', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('755', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('756', '109', '0', '1');
INSERT INTO `packetmoney` VALUES ('757', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('758', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('759', '119', '34', '1');
INSERT INTO `packetmoney` VALUES ('760', '110', '0', '1');
INSERT INTO `packetmoney` VALUES ('761', '195', '0', '1');
INSERT INTO `packetmoney` VALUES ('762', '142', '0', '1');
INSERT INTO `packetmoney` VALUES ('763', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('764', '124', '0', '1');
INSERT INTO `packetmoney` VALUES ('765', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('766', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('767', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('768', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('769', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('770', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('771', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('772', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('773', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('774', '112', '0', '1');
INSERT INTO `packetmoney` VALUES ('775', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('776', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('777', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('778', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('779', '136', '0', '1');
INSERT INTO `packetmoney` VALUES ('780', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('781', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('782', '117', '0', '1');
INSERT INTO `packetmoney` VALUES ('783', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('784', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('785', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('786', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('787', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('788', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('789', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('790', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('791', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('792', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('793', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('794', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('795', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('796', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('797', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('798', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('799', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('800', '180', '0', '1');
INSERT INTO `packetmoney` VALUES ('801', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('802', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('803', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('804', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('805', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('806', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('807', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('808', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('809', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('810', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('811', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('812', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('813', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('814', '163', '0', '1');
INSERT INTO `packetmoney` VALUES ('815', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('816', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('817', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('818', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('819', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('820', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('821', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('822', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('823', '200', '0', '1');
INSERT INTO `packetmoney` VALUES ('824', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('825', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('826', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('827', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('828', '129', '0', '1');
INSERT INTO `packetmoney` VALUES ('829', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('830', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('831', '131', '0', '1');
INSERT INTO `packetmoney` VALUES ('832', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('833', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('834', '183', '0', '1');
INSERT INTO `packetmoney` VALUES ('835', '127', '0', '1');
INSERT INTO `packetmoney` VALUES ('836', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('837', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('838', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('839', '132', '0', '1');
INSERT INTO `packetmoney` VALUES ('840', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('841', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('842', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('843', '161', '0', '1');
INSERT INTO `packetmoney` VALUES ('844', '103', '0', '1');
INSERT INTO `packetmoney` VALUES ('845', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('846', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('847', '182', '0', '1');
INSERT INTO `packetmoney` VALUES ('848', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('849', '138', '0', '1');
INSERT INTO `packetmoney` VALUES ('850', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('851', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('852', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('853', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('854', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('855', '114', '0', '1');
INSERT INTO `packetmoney` VALUES ('856', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('857', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('858', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('859', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('860', '154', '0', '1');
INSERT INTO `packetmoney` VALUES ('861', '160', '0', '1');
INSERT INTO `packetmoney` VALUES ('862', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('863', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('864', '106', '0', '1');
INSERT INTO `packetmoney` VALUES ('865', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('866', '115', '0', '1');
INSERT INTO `packetmoney` VALUES ('867', '191', '0', '1');
INSERT INTO `packetmoney` VALUES ('868', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('869', '149', '0', '1');
INSERT INTO `packetmoney` VALUES ('870', '193', '0', '1');
INSERT INTO `packetmoney` VALUES ('871', '177', '0', '1');
INSERT INTO `packetmoney` VALUES ('872', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('873', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('874', '126', '0', '1');
INSERT INTO `packetmoney` VALUES ('875', '197', '0', '1');
INSERT INTO `packetmoney` VALUES ('876', '116', '0', '1');
INSERT INTO `packetmoney` VALUES ('877', '140', '0', '1');
INSERT INTO `packetmoney` VALUES ('878', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('879', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('880', '155', '0', '1');
INSERT INTO `packetmoney` VALUES ('881', '134', '0', '1');
INSERT INTO `packetmoney` VALUES ('882', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('883', '171', '0', '1');
INSERT INTO `packetmoney` VALUES ('884', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('885', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('886', '116', '0', '1');
INSERT INTO `packetmoney` VALUES ('887', '192', '0', '1');
INSERT INTO `packetmoney` VALUES ('888', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('889', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('890', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('891', '173', '0', '1');
INSERT INTO `packetmoney` VALUES ('892', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('893', '117', '0', '1');
INSERT INTO `packetmoney` VALUES ('894', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('895', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('896', '194', '0', '1');
INSERT INTO `packetmoney` VALUES ('897', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('898', '107', '0', '1');
INSERT INTO `packetmoney` VALUES ('899', '188', '0', '1');
INSERT INTO `packetmoney` VALUES ('900', '147', '0', '1');
INSERT INTO `packetmoney` VALUES ('901', '198', '0', '1');
INSERT INTO `packetmoney` VALUES ('902', '181', '0', '1');
INSERT INTO `packetmoney` VALUES ('903', '119', '0', '1');
INSERT INTO `packetmoney` VALUES ('904', '102', '0', '1');
INSERT INTO `packetmoney` VALUES ('905', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('906', '101', '0', '1');
INSERT INTO `packetmoney` VALUES ('907', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('908', '170', '0', '1');
INSERT INTO `packetmoney` VALUES ('909', '151', '0', '1');
INSERT INTO `packetmoney` VALUES ('910', '143', '0', '1');
INSERT INTO `packetmoney` VALUES ('911', '196', '0', '1');
INSERT INTO `packetmoney` VALUES ('912', '153', '0', '1');
INSERT INTO `packetmoney` VALUES ('913', '159', '0', '1');
INSERT INTO `packetmoney` VALUES ('914', '122', '0', '1');
INSERT INTO `packetmoney` VALUES ('915', '137', '0', '1');
INSERT INTO `packetmoney` VALUES ('916', '133', '0', '1');
INSERT INTO `packetmoney` VALUES ('917', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('918', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('919', '162', '0', '1');
INSERT INTO `packetmoney` VALUES ('920', '144', '0', '1');
INSERT INTO `packetmoney` VALUES ('921', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('922', '199', '0', '1');
INSERT INTO `packetmoney` VALUES ('923', '121', '0', '1');
INSERT INTO `packetmoney` VALUES ('924', '113', '0', '1');
INSERT INTO `packetmoney` VALUES ('925', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('926', '179', '0', '1');
INSERT INTO `packetmoney` VALUES ('927', '186', '0', '1');
INSERT INTO `packetmoney` VALUES ('928', '108', '0', '1');
INSERT INTO `packetmoney` VALUES ('929', '139', '0', '1');
INSERT INTO `packetmoney` VALUES ('930', '174', '0', '1');
INSERT INTO `packetmoney` VALUES ('931', '169', '0', '1');
INSERT INTO `packetmoney` VALUES ('932', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('933', '185', '0', '1');
INSERT INTO `packetmoney` VALUES ('934', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('935', '118', '0', '1');
INSERT INTO `packetmoney` VALUES ('936', '152', '0', '1');
INSERT INTO `packetmoney` VALUES ('937', '158', '0', '1');
INSERT INTO `packetmoney` VALUES ('938', '104', '0', '1');
INSERT INTO `packetmoney` VALUES ('939', '141', '0', '1');
INSERT INTO `packetmoney` VALUES ('940', '130', '0', '1');
INSERT INTO `packetmoney` VALUES ('941', '157', '0', '1');
INSERT INTO `packetmoney` VALUES ('942', '105', '0', '1');
INSERT INTO `packetmoney` VALUES ('943', '190', '0', '1');
INSERT INTO `packetmoney` VALUES ('944', '148', '0', '1');
INSERT INTO `packetmoney` VALUES ('945', '150', '0', '1');
INSERT INTO `packetmoney` VALUES ('946', '164', '0', '1');
INSERT INTO `packetmoney` VALUES ('947', '189', '0', '1');
INSERT INTO `packetmoney` VALUES ('948', '128', '0', '1');
INSERT INTO `packetmoney` VALUES ('949', '145', '0', '1');
INSERT INTO `packetmoney` VALUES ('950', '125', '0', '1');
INSERT INTO `packetmoney` VALUES ('951', '491', '0', '1');
INSERT INTO `packetmoney` VALUES ('952', '300', '0', '1');
INSERT INTO `packetmoney` VALUES ('953', '220', '0', '1');
INSERT INTO `packetmoney` VALUES ('954', '293', '0', '1');
INSERT INTO `packetmoney` VALUES ('955', '484', '0', '1');
INSERT INTO `packetmoney` VALUES ('956', '268', '0', '1');
INSERT INTO `packetmoney` VALUES ('957', '353', '0', '1');
INSERT INTO `packetmoney` VALUES ('958', '260', '0', '1');
INSERT INTO `packetmoney` VALUES ('959', '447', '0', '1');
INSERT INTO `packetmoney` VALUES ('960', '204', '0', '1');
INSERT INTO `packetmoney` VALUES ('961', '333', '0', '1');
INSERT INTO `packetmoney` VALUES ('962', '273', '0', '1');
INSERT INTO `packetmoney` VALUES ('963', '327', '0', '1');
INSERT INTO `packetmoney` VALUES ('964', '292', '0', '1');
INSERT INTO `packetmoney` VALUES ('965', '274', '0', '1');
INSERT INTO `packetmoney` VALUES ('966', '402', '0', '1');
INSERT INTO `packetmoney` VALUES ('967', '328', '0', '1');
INSERT INTO `packetmoney` VALUES ('968', '395', '0', '1');
INSERT INTO `packetmoney` VALUES ('969', '320', '0', '1');
INSERT INTO `packetmoney` VALUES ('970', '399', '0', '1');
INSERT INTO `packetmoney` VALUES ('971', '367', '0', '1');
INSERT INTO `packetmoney` VALUES ('972', '276', '0', '1');
INSERT INTO `packetmoney` VALUES ('973', '221', '0', '1');
INSERT INTO `packetmoney` VALUES ('974', '498', '0', '1');
INSERT INTO `packetmoney` VALUES ('975', '425', '0', '1');
INSERT INTO `packetmoney` VALUES ('976', '912', '0', '1');
INSERT INTO `packetmoney` VALUES ('977', '930', '0', '1');
INSERT INTO `packetmoney` VALUES ('978', '754', '0', '1');
INSERT INTO `packetmoney` VALUES ('979', '621', '0', '1');
INSERT INTO `packetmoney` VALUES ('980', '621', '0', '1');
INSERT INTO `packetmoney` VALUES ('981', '1132', '0', '1');
INSERT INTO `packetmoney` VALUES ('982', '1232', '0', '1');
INSERT INTO `packetmoney` VALUES ('983', '1484', '0', '1');
INSERT INTO `packetmoney` VALUES ('984', '1228', '0', '1');
INSERT INTO `packetmoney` VALUES ('985', '1127', '0', '1');
INSERT INTO `packetmoney` VALUES ('986', '1554', '0', '1');
INSERT INTO `packetmoney` VALUES ('987', '1970', '0', '1');
INSERT INTO `packetmoney` VALUES ('988', '1694', '0', '1');
INSERT INTO `packetmoney` VALUES ('989', '1511', '0', '1');
INSERT INTO `packetmoney` VALUES ('990', '2034', '0', '1');
INSERT INTO `packetmoney` VALUES ('991', '2345', '0', '1');
INSERT INTO `packetmoney` VALUES ('992', '2949', '0', '1');
INSERT INTO `packetmoney` VALUES ('993', '2742', '0', '1');
INSERT INTO `packetmoney` VALUES ('994', '3411', '0', '1');
INSERT INTO `packetmoney` VALUES ('995', '3233', '0', '1');
INSERT INTO `packetmoney` VALUES ('996', '3685', '0', '1');
INSERT INTO `packetmoney` VALUES ('997', '3948', '0', '1');
INSERT INTO `packetmoney` VALUES ('998', '4056', '0', '1');
INSERT INTO `packetmoney` VALUES ('999', '4193', '0', '1');
INSERT INTO `packetmoney` VALUES ('1000', '4885', '0', '1');
INSERT INTO `packetmoney` VALUES ('1001', '361', '0', '0');
INSERT INTO `packetmoney` VALUES ('1002', '497', '0', '0');
INSERT INTO `packetmoney` VALUES ('1003', '483', '0', '0');
INSERT INTO `packetmoney` VALUES ('1004', '210', '0', '0');
INSERT INTO `packetmoney` VALUES ('1005', '326', '0', '0');
INSERT INTO `packetmoney` VALUES ('1006', '454', '0', '0');
INSERT INTO `packetmoney` VALUES ('1007', '434', '0', '0');
INSERT INTO `packetmoney` VALUES ('1008', '335', '0', '0');
INSERT INTO `packetmoney` VALUES ('1009', '229', '0', '0');
INSERT INTO `packetmoney` VALUES ('1010', '150', '0', '0');
INSERT INTO `packetmoney` VALUES ('1011', '269', '0', '0');
INSERT INTO `packetmoney` VALUES ('1012', '282', '0', '0');
INSERT INTO `packetmoney` VALUES ('1013', '389', '0', '0');
INSERT INTO `packetmoney` VALUES ('1014', '185', '0', '0');
INSERT INTO `packetmoney` VALUES ('1015', '463', '0', '0');
INSERT INTO `packetmoney` VALUES ('1016', '401', '0', '0');
INSERT INTO `packetmoney` VALUES ('1017', '332', '0', '0');
INSERT INTO `packetmoney` VALUES ('1018', '321', '0', '0');
INSERT INTO `packetmoney` VALUES ('1019', '265', '0', '0');
INSERT INTO `packetmoney` VALUES ('1020', '369', '0', '0');
INSERT INTO `packetmoney` VALUES ('1021', '386', '0', '0');
INSERT INTO `packetmoney` VALUES ('1022', '346', '0', '0');
INSERT INTO `packetmoney` VALUES ('1023', '134', '0', '0');
INSERT INTO `packetmoney` VALUES ('1024', '260', '0', '0');
INSERT INTO `packetmoney` VALUES ('1025', '286', '0', '0');
INSERT INTO `packetmoney` VALUES ('1026', '386', '0', '0');
INSERT INTO `packetmoney` VALUES ('1027', '372', '0', '0');
INSERT INTO `packetmoney` VALUES ('1028', '417', '0', '0');
INSERT INTO `packetmoney` VALUES ('1029', '320', '0', '0');
INSERT INTO `packetmoney` VALUES ('1030', '494', '0', '0');
INSERT INTO `packetmoney` VALUES ('1031', '216', '0', '0');
INSERT INTO `packetmoney` VALUES ('1032', '258', '0', '0');
INSERT INTO `packetmoney` VALUES ('1033', '314', '0', '0');
INSERT INTO `packetmoney` VALUES ('1034', '473', '0', '0');
INSERT INTO `packetmoney` VALUES ('1035', '457', '0', '0');
INSERT INTO `packetmoney` VALUES ('1036', '139', '0', '0');
INSERT INTO `packetmoney` VALUES ('1037', '482', '0', '0');
INSERT INTO `packetmoney` VALUES ('1038', '360', '0', '0');
INSERT INTO `packetmoney` VALUES ('1039', '377', '0', '0');
INSERT INTO `packetmoney` VALUES ('1040', '319', '0', '0');
INSERT INTO `packetmoney` VALUES ('1041', '148', '0', '0');
INSERT INTO `packetmoney` VALUES ('1042', '235', '0', '0');
INSERT INTO `packetmoney` VALUES ('1043', '302', '0', '0');
INSERT INTO `packetmoney` VALUES ('1044', '440', '0', '0');
INSERT INTO `packetmoney` VALUES ('1045', '196', '0', '0');
INSERT INTO `packetmoney` VALUES ('1046', '381', '0', '0');
INSERT INTO `packetmoney` VALUES ('1047', '496', '0', '0');
INSERT INTO `packetmoney` VALUES ('1048', '218', '0', '0');
INSERT INTO `packetmoney` VALUES ('1049', '273', '0', '0');
INSERT INTO `packetmoney` VALUES ('1050', '289', '0', '0');
INSERT INTO `packetmoney` VALUES ('1051', '467', '0', '0');
INSERT INTO `packetmoney` VALUES ('1052', '452', '0', '0');
INSERT INTO `packetmoney` VALUES ('1053', '411', '0', '0');
INSERT INTO `packetmoney` VALUES ('1054', '345', '0', '0');
INSERT INTO `packetmoney` VALUES ('1055', '449', '0', '0');
INSERT INTO `packetmoney` VALUES ('1056', '460', '0', '0');
INSERT INTO `packetmoney` VALUES ('1057', '335', '0', '0');
INSERT INTO `packetmoney` VALUES ('1058', '197', '0', '0');
INSERT INTO `packetmoney` VALUES ('1059', '213', '0', '0');
INSERT INTO `packetmoney` VALUES ('1060', '143', '0', '0');
INSERT INTO `packetmoney` VALUES ('1061', '137', '0', '0');
INSERT INTO `packetmoney` VALUES ('1062', '101', '0', '0');
INSERT INTO `packetmoney` VALUES ('1063', '399', '0', '0');
INSERT INTO `packetmoney` VALUES ('1064', '101', '0', '0');
INSERT INTO `packetmoney` VALUES ('1065', '420', '0', '0');
INSERT INTO `packetmoney` VALUES ('1066', '238', '0', '0');
INSERT INTO `packetmoney` VALUES ('1067', '453', '0', '0');
INSERT INTO `packetmoney` VALUES ('1068', '434', '0', '0');
INSERT INTO `packetmoney` VALUES ('1069', '301', '0', '0');
INSERT INTO `packetmoney` VALUES ('1070', '338', '0', '0');
INSERT INTO `packetmoney` VALUES ('1071', '298', '0', '0');
INSERT INTO `packetmoney` VALUES ('1072', '323', '0', '0');
INSERT INTO `packetmoney` VALUES ('1073', '330', '0', '0');
INSERT INTO `packetmoney` VALUES ('1074', '423', '0', '0');
INSERT INTO `packetmoney` VALUES ('1075', '244', '0', '0');
INSERT INTO `packetmoney` VALUES ('1076', '191', '0', '0');
INSERT INTO `packetmoney` VALUES ('1077', '258', '0', '0');
INSERT INTO `packetmoney` VALUES ('1078', '401', '0', '0');
INSERT INTO `packetmoney` VALUES ('1079', '405', '0', '0');
INSERT INTO `packetmoney` VALUES ('1080', '348', '0', '0');
INSERT INTO `packetmoney` VALUES ('1081', '210', '0', '0');
INSERT INTO `packetmoney` VALUES ('1082', '406', '0', '0');
INSERT INTO `packetmoney` VALUES ('1083', '456', '0', '0');
INSERT INTO `packetmoney` VALUES ('1084', '149', '0', '0');
INSERT INTO `packetmoney` VALUES ('1085', '279', '0', '0');
INSERT INTO `packetmoney` VALUES ('1086', '350', '0', '0');
INSERT INTO `packetmoney` VALUES ('1087', '169', '0', '0');
INSERT INTO `packetmoney` VALUES ('1088', '405', '0', '0');
INSERT INTO `packetmoney` VALUES ('1089', '429', '0', '0');
INSERT INTO `packetmoney` VALUES ('1090', '448', '0', '0');
INSERT INTO `packetmoney` VALUES ('1091', '387', '0', '0');
INSERT INTO `packetmoney` VALUES ('1092', '268', '0', '0');
INSERT INTO `packetmoney` VALUES ('1093', '470', '0', '0');
INSERT INTO `packetmoney` VALUES ('1094', '299', '0', '0');
INSERT INTO `packetmoney` VALUES ('1095', '426', '0', '0');
INSERT INTO `packetmoney` VALUES ('1096', '405', '0', '0');
INSERT INTO `packetmoney` VALUES ('1097', '449', '0', '0');
INSERT INTO `packetmoney` VALUES ('1098', '176', '0', '0');
INSERT INTO `packetmoney` VALUES ('1099', '342', '0', '0');
INSERT INTO `packetmoney` VALUES ('1100', '495', '0', '0');
INSERT INTO `packetmoney` VALUES ('1101', '948', '0', '0');
INSERT INTO `packetmoney` VALUES ('1102', '790', '0', '0');
INSERT INTO `packetmoney` VALUES ('1103', '592', '0', '0');
INSERT INTO `packetmoney` VALUES ('1104', '974', '0', '0');
INSERT INTO `packetmoney` VALUES ('1105', '838', '0', '0');
INSERT INTO `packetmoney` VALUES ('1106', '684', '0', '0');
INSERT INTO `packetmoney` VALUES ('1107', '804', '0', '0');
INSERT INTO `packetmoney` VALUES ('1108', '626', '0', '0');
INSERT INTO `packetmoney` VALUES ('1109', '500', '0', '0');
INSERT INTO `packetmoney` VALUES ('1110', '514', '0', '0');
INSERT INTO `packetmoney` VALUES ('1111', '796', '0', '0');
INSERT INTO `packetmoney` VALUES ('1112', '983', '0', '0');
INSERT INTO `packetmoney` VALUES ('1113', '987', '0', '0');
INSERT INTO `packetmoney` VALUES ('1114', '630', '0', '0');
INSERT INTO `packetmoney` VALUES ('1115', '519', '0', '0');
INSERT INTO `packetmoney` VALUES ('1116', '608', '0', '0');
INSERT INTO `packetmoney` VALUES ('1117', '556', '0', '0');
INSERT INTO `packetmoney` VALUES ('1118', '619', '0', '0');
INSERT INTO `packetmoney` VALUES ('1119', '828', '0', '0');
INSERT INTO `packetmoney` VALUES ('1120', '602', '0', '0');
INSERT INTO `packetmoney` VALUES ('1121', '974', '0', '0');
INSERT INTO `packetmoney` VALUES ('1122', '567', '0', '0');
INSERT INTO `packetmoney` VALUES ('1123', '905', '0', '0');
INSERT INTO `packetmoney` VALUES ('1124', '569', '0', '0');
INSERT INTO `packetmoney` VALUES ('1125', '579', '0', '0');
INSERT INTO `packetmoney` VALUES ('1126', '773', '0', '0');
INSERT INTO `packetmoney` VALUES ('1127', '579', '0', '0');
INSERT INTO `packetmoney` VALUES ('1128', '500', '0', '0');
INSERT INTO `packetmoney` VALUES ('1129', '907', '0', '0');
INSERT INTO `packetmoney` VALUES ('1130', '619', '0', '0');
INSERT INTO `packetmoney` VALUES ('1131', '988', '0', '0');
INSERT INTO `packetmoney` VALUES ('1132', '911', '0', '0');
INSERT INTO `packetmoney` VALUES ('1133', '651', '0', '0');
INSERT INTO `packetmoney` VALUES ('1134', '506', '0', '0');
INSERT INTO `packetmoney` VALUES ('1135', '606', '0', '0');
INSERT INTO `packetmoney` VALUES ('1136', '844', '0', '0');
INSERT INTO `packetmoney` VALUES ('1137', '584', '0', '0');
INSERT INTO `packetmoney` VALUES ('1138', '979', '0', '0');
INSERT INTO `packetmoney` VALUES ('1139', '932', '0', '0');
INSERT INTO `packetmoney` VALUES ('1140', '786', '0', '0');
INSERT INTO `packetmoney` VALUES ('1141', '792', '0', '0');
INSERT INTO `packetmoney` VALUES ('1142', '786', '0', '0');
INSERT INTO `packetmoney` VALUES ('1143', '833', '0', '0');
INSERT INTO `packetmoney` VALUES ('1144', '707', '0', '0');
INSERT INTO `packetmoney` VALUES ('1145', '539', '0', '0');
INSERT INTO `packetmoney` VALUES ('1146', '920', '0', '0');
INSERT INTO `packetmoney` VALUES ('1147', '585', '0', '0');
INSERT INTO `packetmoney` VALUES ('1148', '847', '0', '0');
INSERT INTO `packetmoney` VALUES ('1149', '730', '0', '0');
INSERT INTO `packetmoney` VALUES ('1150', '759', '0', '0');
INSERT INTO `packetmoney` VALUES ('1151', '729', '0', '0');
INSERT INTO `packetmoney` VALUES ('1152', '764', '0', '0');
INSERT INTO `packetmoney` VALUES ('1153', '556', '0', '0');
INSERT INTO `packetmoney` VALUES ('1154', '587', '0', '0');
INSERT INTO `packetmoney` VALUES ('1155', '952', '0', '0');
INSERT INTO `packetmoney` VALUES ('1156', '837', '0', '0');
INSERT INTO `packetmoney` VALUES ('1157', '723', '0', '0');
INSERT INTO `packetmoney` VALUES ('1158', '931', '0', '0');
INSERT INTO `packetmoney` VALUES ('1159', '562', '0', '0');
INSERT INTO `packetmoney` VALUES ('1160', '610', '0', '0');
INSERT INTO `packetmoney` VALUES ('1161', '822', '0', '0');
INSERT INTO `packetmoney` VALUES ('1162', '553', '0', '0');
INSERT INTO `packetmoney` VALUES ('1163', '506', '0', '0');
INSERT INTO `packetmoney` VALUES ('1164', '927', '0', '0');
INSERT INTO `packetmoney` VALUES ('1165', '733', '0', '0');
INSERT INTO `packetmoney` VALUES ('1166', '713', '0', '0');
INSERT INTO `packetmoney` VALUES ('1167', '985', '0', '0');
INSERT INTO `packetmoney` VALUES ('1168', '613', '0', '0');
INSERT INTO `packetmoney` VALUES ('1169', '561', '0', '0');
INSERT INTO `packetmoney` VALUES ('1170', '867', '0', '0');
INSERT INTO `packetmoney` VALUES ('1171', '821', '0', '0');
INSERT INTO `packetmoney` VALUES ('1172', '920', '0', '0');
INSERT INTO `packetmoney` VALUES ('1173', '618', '0', '0');
INSERT INTO `packetmoney` VALUES ('1174', '754', '0', '0');
INSERT INTO `packetmoney` VALUES ('1175', '955', '0', '0');
INSERT INTO `packetmoney` VALUES ('1176', '603', '0', '0');
INSERT INTO `packetmoney` VALUES ('1177', '676', '0', '0');
INSERT INTO `packetmoney` VALUES ('1178', '949', '0', '0');
INSERT INTO `packetmoney` VALUES ('1179', '653', '0', '0');
INSERT INTO `packetmoney` VALUES ('1180', '938', '0', '0');
INSERT INTO `packetmoney` VALUES ('1181', '522', '0', '0');
INSERT INTO `packetmoney` VALUES ('1182', '944', '0', '0');
INSERT INTO `packetmoney` VALUES ('1183', '688', '0', '0');
INSERT INTO `packetmoney` VALUES ('1184', '640', '0', '0');
INSERT INTO `packetmoney` VALUES ('1185', '598', '0', '0');
INSERT INTO `packetmoney` VALUES ('1186', '715', '0', '0');
INSERT INTO `packetmoney` VALUES ('1187', '804', '0', '0');
INSERT INTO `packetmoney` VALUES ('1188', '737', '0', '0');
INSERT INTO `packetmoney` VALUES ('1189', '660', '0', '0');
INSERT INTO `packetmoney` VALUES ('1190', '944', '0', '0');
INSERT INTO `packetmoney` VALUES ('1191', '568', '0', '0');
INSERT INTO `packetmoney` VALUES ('1192', '789', '0', '0');
INSERT INTO `packetmoney` VALUES ('1193', '557', '0', '0');
INSERT INTO `packetmoney` VALUES ('1194', '665', '0', '0');
INSERT INTO `packetmoney` VALUES ('1195', '604', '0', '0');
INSERT INTO `packetmoney` VALUES ('1196', '935', '0', '0');
INSERT INTO `packetmoney` VALUES ('1197', '731', '0', '0');
INSERT INTO `packetmoney` VALUES ('1198', '682', '0', '0');
INSERT INTO `packetmoney` VALUES ('1199', '777', '0', '0');
INSERT INTO `packetmoney` VALUES ('1200', '867', '0', '0');
INSERT INTO `packetmoney` VALUES ('1201', '717', '0', '0');
INSERT INTO `packetmoney` VALUES ('1202', '557', '0', '0');
INSERT INTO `packetmoney` VALUES ('1203', '825', '0', '0');
INSERT INTO `packetmoney` VALUES ('1204', '852', '0', '0');
INSERT INTO `packetmoney` VALUES ('1205', '745', '0', '0');
INSERT INTO `packetmoney` VALUES ('1206', '780', '0', '0');
INSERT INTO `packetmoney` VALUES ('1207', '814', '0', '0');
INSERT INTO `packetmoney` VALUES ('1208', '525', '0', '0');
INSERT INTO `packetmoney` VALUES ('1209', '843', '0', '0');
INSERT INTO `packetmoney` VALUES ('1210', '777', '0', '0');
INSERT INTO `packetmoney` VALUES ('1211', '981', '0', '0');
INSERT INTO `packetmoney` VALUES ('1212', '769', '0', '0');
INSERT INTO `packetmoney` VALUES ('1213', '822', '0', '0');
INSERT INTO `packetmoney` VALUES ('1214', '553', '0', '0');
INSERT INTO `packetmoney` VALUES ('1215', '896', '0', '0');
INSERT INTO `packetmoney` VALUES ('1216', '732', '0', '0');
INSERT INTO `packetmoney` VALUES ('1217', '517', '0', '0');
INSERT INTO `packetmoney` VALUES ('1218', '941', '0', '0');
INSERT INTO `packetmoney` VALUES ('1219', '701', '0', '0');
INSERT INTO `packetmoney` VALUES ('1220', '875', '0', '0');
INSERT INTO `packetmoney` VALUES ('1221', '668', '0', '0');
INSERT INTO `packetmoney` VALUES ('1222', '828', '0', '0');
INSERT INTO `packetmoney` VALUES ('1223', '849', '0', '0');
INSERT INTO `packetmoney` VALUES ('1224', '999', '0', '0');
INSERT INTO `packetmoney` VALUES ('1225', '889', '0', '0');
INSERT INTO `packetmoney` VALUES ('1226', '569', '0', '0');
INSERT INTO `packetmoney` VALUES ('1227', '645', '0', '0');
INSERT INTO `packetmoney` VALUES ('1228', '605', '0', '0');
INSERT INTO `packetmoney` VALUES ('1229', '617', '0', '0');
INSERT INTO `packetmoney` VALUES ('1230', '825', '0', '0');
INSERT INTO `packetmoney` VALUES ('1231', '677', '0', '0');
INSERT INTO `packetmoney` VALUES ('1232', '974', '0', '0');
INSERT INTO `packetmoney` VALUES ('1233', '910', '0', '0');
INSERT INTO `packetmoney` VALUES ('1234', '923', '0', '0');
INSERT INTO `packetmoney` VALUES ('1235', '991', '0', '0');
INSERT INTO `packetmoney` VALUES ('1236', '836', '0', '0');
INSERT INTO `packetmoney` VALUES ('1237', '502', '0', '0');
INSERT INTO `packetmoney` VALUES ('1238', '594', '0', '0');
INSERT INTO `packetmoney` VALUES ('1239', '575', '0', '0');
INSERT INTO `packetmoney` VALUES ('1240', '633', '0', '0');
INSERT INTO `packetmoney` VALUES ('1241', '552', '0', '0');
INSERT INTO `packetmoney` VALUES ('1242', '696', '0', '0');
INSERT INTO `packetmoney` VALUES ('1243', '960', '0', '0');
INSERT INTO `packetmoney` VALUES ('1244', '546', '0', '0');
INSERT INTO `packetmoney` VALUES ('1245', '673', '0', '0');
INSERT INTO `packetmoney` VALUES ('1246', '579', '0', '0');
INSERT INTO `packetmoney` VALUES ('1247', '964', '0', '0');
INSERT INTO `packetmoney` VALUES ('1248', '706', '0', '0');
INSERT INTO `packetmoney` VALUES ('1249', '596', '0', '0');
INSERT INTO `packetmoney` VALUES ('1250', '544', '0', '0');
INSERT INTO `packetmoney` VALUES ('1251', '614', '0', '0');
INSERT INTO `packetmoney` VALUES ('1252', '624', '0', '0');
INSERT INTO `packetmoney` VALUES ('1253', '951', '0', '0');
INSERT INTO `packetmoney` VALUES ('1254', '591', '0', '0');
INSERT INTO `packetmoney` VALUES ('1255', '926', '0', '0');
INSERT INTO `packetmoney` VALUES ('1256', '936', '0', '0');
INSERT INTO `packetmoney` VALUES ('1257', '789', '0', '0');
INSERT INTO `packetmoney` VALUES ('1258', '658', '0', '0');
INSERT INTO `packetmoney` VALUES ('1259', '585', '0', '0');
INSERT INTO `packetmoney` VALUES ('1260', '829', '0', '0');
INSERT INTO `packetmoney` VALUES ('1261', '867', '0', '0');
INSERT INTO `packetmoney` VALUES ('1262', '902', '0', '0');
INSERT INTO `packetmoney` VALUES ('1263', '693', '0', '0');
INSERT INTO `packetmoney` VALUES ('1264', '884', '0', '0');
INSERT INTO `packetmoney` VALUES ('1265', '896', '0', '0');
INSERT INTO `packetmoney` VALUES ('1266', '629', '0', '0');
INSERT INTO `packetmoney` VALUES ('1267', '992', '0', '0');
INSERT INTO `packetmoney` VALUES ('1268', '851', '0', '0');
INSERT INTO `packetmoney` VALUES ('1269', '569', '0', '0');
INSERT INTO `packetmoney` VALUES ('1270', '639', '0', '0');
INSERT INTO `packetmoney` VALUES ('1271', '620', '0', '0');
INSERT INTO `packetmoney` VALUES ('1272', '919', '0', '0');
INSERT INTO `packetmoney` VALUES ('1273', '725', '0', '0');
INSERT INTO `packetmoney` VALUES ('1274', '657', '0', '0');
INSERT INTO `packetmoney` VALUES ('1275', '691', '0', '0');
INSERT INTO `packetmoney` VALUES ('1276', '663', '0', '0');
INSERT INTO `packetmoney` VALUES ('1277', '523', '0', '0');
INSERT INTO `packetmoney` VALUES ('1278', '607', '0', '0');
INSERT INTO `packetmoney` VALUES ('1279', '662', '0', '0');
INSERT INTO `packetmoney` VALUES ('1280', '860', '0', '0');
INSERT INTO `packetmoney` VALUES ('1281', '873', '0', '0');
INSERT INTO `packetmoney` VALUES ('1282', '621', '0', '0');
INSERT INTO `packetmoney` VALUES ('1283', '521', '0', '0');
INSERT INTO `packetmoney` VALUES ('1284', '725', '0', '0');
INSERT INTO `packetmoney` VALUES ('1285', '783', '0', '0');
INSERT INTO `packetmoney` VALUES ('1286', '912', '0', '0');
INSERT INTO `packetmoney` VALUES ('1287', '760', '0', '0');
INSERT INTO `packetmoney` VALUES ('1288', '980', '0', '0');
INSERT INTO `packetmoney` VALUES ('1289', '969', '0', '0');
INSERT INTO `packetmoney` VALUES ('1290', '555', '0', '0');
INSERT INTO `packetmoney` VALUES ('1291', '693', '0', '0');
INSERT INTO `packetmoney` VALUES ('1292', '714', '0', '0');
INSERT INTO `packetmoney` VALUES ('1293', '911', '0', '0');
INSERT INTO `packetmoney` VALUES ('1294', '872', '0', '0');
INSERT INTO `packetmoney` VALUES ('1295', '634', '0', '0');
INSERT INTO `packetmoney` VALUES ('1296', '726', '0', '0');
INSERT INTO `packetmoney` VALUES ('1297', '819', '0', '0');
INSERT INTO `packetmoney` VALUES ('1298', '875', '0', '0');
INSERT INTO `packetmoney` VALUES ('1299', '675', '0', '0');
INSERT INTO `packetmoney` VALUES ('1300', '993', '0', '0');
INSERT INTO `packetmoney` VALUES ('1301', '898', '0', '0');
INSERT INTO `packetmoney` VALUES ('1302', '944', '0', '0');
INSERT INTO `packetmoney` VALUES ('1303', '972', '0', '0');
INSERT INTO `packetmoney` VALUES ('1304', '987', '0', '0');
INSERT INTO `packetmoney` VALUES ('1305', '753', '0', '0');
INSERT INTO `packetmoney` VALUES ('1306', '808', '0', '0');
INSERT INTO `packetmoney` VALUES ('1307', '651', '0', '0');
INSERT INTO `packetmoney` VALUES ('1308', '917', '0', '0');
INSERT INTO `packetmoney` VALUES ('1309', '520', '0', '0');
INSERT INTO `packetmoney` VALUES ('1310', '963', '0', '0');
INSERT INTO `packetmoney` VALUES ('1311', '780', '0', '0');
INSERT INTO `packetmoney` VALUES ('1312', '842', '0', '0');
INSERT INTO `packetmoney` VALUES ('1313', '516', '0', '0');
INSERT INTO `packetmoney` VALUES ('1314', '674', '0', '0');
INSERT INTO `packetmoney` VALUES ('1315', '551', '0', '0');
INSERT INTO `packetmoney` VALUES ('1316', '524', '0', '0');
INSERT INTO `packetmoney` VALUES ('1317', '615', '0', '0');
INSERT INTO `packetmoney` VALUES ('1318', '939', '0', '0');
INSERT INTO `packetmoney` VALUES ('1319', '730', '0', '0');
INSERT INTO `packetmoney` VALUES ('1320', '829', '0', '0');
INSERT INTO `packetmoney` VALUES ('1321', '790', '0', '0');
INSERT INTO `packetmoney` VALUES ('1322', '630', '0', '0');
INSERT INTO `packetmoney` VALUES ('1323', '674', '0', '0');
INSERT INTO `packetmoney` VALUES ('1324', '739', '0', '0');
INSERT INTO `packetmoney` VALUES ('1325', '529', '0', '0');
INSERT INTO `packetmoney` VALUES ('1326', '900', '0', '0');
INSERT INTO `packetmoney` VALUES ('1327', '999', '0', '0');
INSERT INTO `packetmoney` VALUES ('1328', '820', '0', '0');
INSERT INTO `packetmoney` VALUES ('1329', '959', '0', '0');
INSERT INTO `packetmoney` VALUES ('1330', '850', '0', '0');
INSERT INTO `packetmoney` VALUES ('1331', '723', '0', '0');
INSERT INTO `packetmoney` VALUES ('1332', '996', '0', '0');
INSERT INTO `packetmoney` VALUES ('1333', '931', '0', '0');
INSERT INTO `packetmoney` VALUES ('1334', '999', '0', '0');
INSERT INTO `packetmoney` VALUES ('1335', '671', '0', '0');
INSERT INTO `packetmoney` VALUES ('1336', '691', '0', '0');
INSERT INTO `packetmoney` VALUES ('1337', '875', '0', '0');
INSERT INTO `packetmoney` VALUES ('1338', '753', '0', '0');
INSERT INTO `packetmoney` VALUES ('1339', '990', '0', '0');
INSERT INTO `packetmoney` VALUES ('1340', '821', '0', '0');
INSERT INTO `packetmoney` VALUES ('1341', '703', '0', '0');
INSERT INTO `packetmoney` VALUES ('1342', '907', '0', '0');
INSERT INTO `packetmoney` VALUES ('1343', '880', '0', '0');
INSERT INTO `packetmoney` VALUES ('1344', '786', '0', '0');
INSERT INTO `packetmoney` VALUES ('1345', '867', '0', '0');
INSERT INTO `packetmoney` VALUES ('1346', '501', '0', '0');
INSERT INTO `packetmoney` VALUES ('1347', '775', '0', '0');
INSERT INTO `packetmoney` VALUES ('1348', '905', '0', '0');
INSERT INTO `packetmoney` VALUES ('1349', '625', '0', '0');
INSERT INTO `packetmoney` VALUES ('1350', '738', '0', '0');
INSERT INTO `packetmoney` VALUES ('1351', '857', '0', '0');
INSERT INTO `packetmoney` VALUES ('1352', '679', '0', '0');
INSERT INTO `packetmoney` VALUES ('1353', '928', '0', '0');
INSERT INTO `packetmoney` VALUES ('1354', '542', '0', '0');
INSERT INTO `packetmoney` VALUES ('1355', '509', '0', '0');
INSERT INTO `packetmoney` VALUES ('1356', '571', '0', '0');
INSERT INTO `packetmoney` VALUES ('1357', '702', '0', '0');
INSERT INTO `packetmoney` VALUES ('1358', '782', '0', '0');
INSERT INTO `packetmoney` VALUES ('1359', '555', '0', '0');
INSERT INTO `packetmoney` VALUES ('1360', '986', '0', '0');
INSERT INTO `packetmoney` VALUES ('1361', '976', '0', '0');
INSERT INTO `packetmoney` VALUES ('1362', '619', '0', '0');
INSERT INTO `packetmoney` VALUES ('1363', '974', '0', '0');
INSERT INTO `packetmoney` VALUES ('1364', '717', '0', '0');
INSERT INTO `packetmoney` VALUES ('1365', '925', '0', '0');
INSERT INTO `packetmoney` VALUES ('1366', '882', '0', '0');
INSERT INTO `packetmoney` VALUES ('1367', '678', '0', '0');
INSERT INTO `packetmoney` VALUES ('1368', '832', '0', '0');
INSERT INTO `packetmoney` VALUES ('1369', '917', '0', '0');
INSERT INTO `packetmoney` VALUES ('1370', '521', '0', '0');
INSERT INTO `packetmoney` VALUES ('1371', '841', '0', '0');
INSERT INTO `packetmoney` VALUES ('1372', '668', '0', '0');
INSERT INTO `packetmoney` VALUES ('1373', '960', '0', '0');
INSERT INTO `packetmoney` VALUES ('1374', '784', '0', '0');
INSERT INTO `packetmoney` VALUES ('1375', '942', '0', '0');
INSERT INTO `packetmoney` VALUES ('1376', '703', '0', '0');
INSERT INTO `packetmoney` VALUES ('1377', '624', '0', '0');
INSERT INTO `packetmoney` VALUES ('1378', '804', '0', '0');
INSERT INTO `packetmoney` VALUES ('1379', '717', '0', '0');
INSERT INTO `packetmoney` VALUES ('1380', '747', '0', '0');
INSERT INTO `packetmoney` VALUES ('1381', '838', '0', '0');
INSERT INTO `packetmoney` VALUES ('1382', '787', '0', '0');
INSERT INTO `packetmoney` VALUES ('1383', '702', '0', '0');
INSERT INTO `packetmoney` VALUES ('1384', '994', '0', '0');
INSERT INTO `packetmoney` VALUES ('1385', '608', '0', '0');
INSERT INTO `packetmoney` VALUES ('1386', '535', '0', '0');
INSERT INTO `packetmoney` VALUES ('1387', '767', '0', '0');
INSERT INTO `packetmoney` VALUES ('1388', '590', '0', '0');
INSERT INTO `packetmoney` VALUES ('1389', '942', '0', '0');
INSERT INTO `packetmoney` VALUES ('1390', '933', '0', '0');
INSERT INTO `packetmoney` VALUES ('1391', '581', '0', '0');
INSERT INTO `packetmoney` VALUES ('1392', '748', '0', '0');
INSERT INTO `packetmoney` VALUES ('1393', '899', '0', '0');
INSERT INTO `packetmoney` VALUES ('1394', '829', '0', '0');
INSERT INTO `packetmoney` VALUES ('1395', '553', '0', '0');
INSERT INTO `packetmoney` VALUES ('1396', '647', '0', '0');
INSERT INTO `packetmoney` VALUES ('1397', '954', '0', '0');
INSERT INTO `packetmoney` VALUES ('1398', '677', '0', '0');
INSERT INTO `packetmoney` VALUES ('1399', '957', '0', '0');
INSERT INTO `packetmoney` VALUES ('1400', '968', '0', '0');
INSERT INTO `packetmoney` VALUES ('1401', '617', '0', '0');
INSERT INTO `packetmoney` VALUES ('1402', '924', '0', '0');
INSERT INTO `packetmoney` VALUES ('1403', '969', '0', '0');
INSERT INTO `packetmoney` VALUES ('1404', '885', '0', '0');
INSERT INTO `packetmoney` VALUES ('1405', '521', '0', '0');
INSERT INTO `packetmoney` VALUES ('1406', '571', '0', '0');
INSERT INTO `packetmoney` VALUES ('1407', '658', '0', '0');
INSERT INTO `packetmoney` VALUES ('1408', '667', '0', '0');
INSERT INTO `packetmoney` VALUES ('1409', '974', '0', '0');
INSERT INTO `packetmoney` VALUES ('1410', '795', '0', '0');
INSERT INTO `packetmoney` VALUES ('1411', '857', '0', '0');
INSERT INTO `packetmoney` VALUES ('1412', '710', '0', '0');
INSERT INTO `packetmoney` VALUES ('1413', '574', '0', '0');
INSERT INTO `packetmoney` VALUES ('1414', '573', '0', '0');
INSERT INTO `packetmoney` VALUES ('1415', '702', '0', '0');
INSERT INTO `packetmoney` VALUES ('1416', '989', '0', '0');
INSERT INTO `packetmoney` VALUES ('1417', '793', '0', '0');
INSERT INTO `packetmoney` VALUES ('1418', '644', '0', '0');
INSERT INTO `packetmoney` VALUES ('1419', '527', '0', '0');
INSERT INTO `packetmoney` VALUES ('1420', '544', '0', '0');
INSERT INTO `packetmoney` VALUES ('1421', '800', '0', '0');
INSERT INTO `packetmoney` VALUES ('1422', '639', '0', '0');
INSERT INTO `packetmoney` VALUES ('1423', '659', '0', '0');
INSERT INTO `packetmoney` VALUES ('1424', '771', '0', '0');
INSERT INTO `packetmoney` VALUES ('1425', '863', '0', '0');
INSERT INTO `packetmoney` VALUES ('1426', '858', '0', '0');
INSERT INTO `packetmoney` VALUES ('1427', '770', '0', '0');
INSERT INTO `packetmoney` VALUES ('1428', '717', '0', '0');
INSERT INTO `packetmoney` VALUES ('1429', '926', '0', '0');
INSERT INTO `packetmoney` VALUES ('1430', '923', '0', '0');
INSERT INTO `packetmoney` VALUES ('1431', '700', '0', '0');
INSERT INTO `packetmoney` VALUES ('1432', '675', '0', '0');
INSERT INTO `packetmoney` VALUES ('1433', '513', '0', '0');
INSERT INTO `packetmoney` VALUES ('1434', '753', '0', '0');
INSERT INTO `packetmoney` VALUES ('1435', '860', '0', '0');
INSERT INTO `packetmoney` VALUES ('1436', '703', '0', '0');
INSERT INTO `packetmoney` VALUES ('1437', '812', '0', '0');
INSERT INTO `packetmoney` VALUES ('1438', '938', '0', '0');
INSERT INTO `packetmoney` VALUES ('1439', '702', '0', '0');
INSERT INTO `packetmoney` VALUES ('1440', '531', '0', '0');
INSERT INTO `packetmoney` VALUES ('1441', '700', '0', '0');
INSERT INTO `packetmoney` VALUES ('1442', '909', '0', '0');
INSERT INTO `packetmoney` VALUES ('1443', '720', '0', '0');
INSERT INTO `packetmoney` VALUES ('1444', '927', '0', '0');
INSERT INTO `packetmoney` VALUES ('1445', '509', '0', '0');
INSERT INTO `packetmoney` VALUES ('1446', '770', '0', '0');
INSERT INTO `packetmoney` VALUES ('1447', '709', '0', '0');
INSERT INTO `packetmoney` VALUES ('1448', '612', '0', '0');
INSERT INTO `packetmoney` VALUES ('1449', '888', '0', '0');
INSERT INTO `packetmoney` VALUES ('1450', '798', '0', '0');
INSERT INTO `packetmoney` VALUES ('1451', '862', '0', '0');
INSERT INTO `packetmoney` VALUES ('1452', '741', '0', '0');
INSERT INTO `packetmoney` VALUES ('1453', '805', '0', '0');
INSERT INTO `packetmoney` VALUES ('1454', '659', '0', '0');
INSERT INTO `packetmoney` VALUES ('1455', '654', '0', '0');
INSERT INTO `packetmoney` VALUES ('1456', '556', '0', '0');
INSERT INTO `packetmoney` VALUES ('1457', '634', '0', '0');
INSERT INTO `packetmoney` VALUES ('1458', '618', '0', '0');
INSERT INTO `packetmoney` VALUES ('1459', '618', '0', '0');
INSERT INTO `packetmoney` VALUES ('1460', '683', '0', '0');
INSERT INTO `packetmoney` VALUES ('1461', '999', '0', '0');
INSERT INTO `packetmoney` VALUES ('1462', '901', '0', '0');
INSERT INTO `packetmoney` VALUES ('1463', '801', '0', '0');
INSERT INTO `packetmoney` VALUES ('1464', '892', '0', '0');
INSERT INTO `packetmoney` VALUES ('1465', '625', '0', '0');
INSERT INTO `packetmoney` VALUES ('1466', '818', '0', '0');
INSERT INTO `packetmoney` VALUES ('1467', '912', '0', '0');
INSERT INTO `packetmoney` VALUES ('1468', '805', '0', '0');
INSERT INTO `packetmoney` VALUES ('1469', '894', '0', '0');
INSERT INTO `packetmoney` VALUES ('1470', '832', '0', '0');
INSERT INTO `packetmoney` VALUES ('1471', '967', '0', '0');
INSERT INTO `packetmoney` VALUES ('1472', '953', '0', '0');
INSERT INTO `packetmoney` VALUES ('1473', '605', '0', '0');
INSERT INTO `packetmoney` VALUES ('1474', '864', '0', '0');
INSERT INTO `packetmoney` VALUES ('1475', '599', '0', '0');
INSERT INTO `packetmoney` VALUES ('1476', '862', '0', '0');
INSERT INTO `packetmoney` VALUES ('1477', '613', '0', '0');
INSERT INTO `packetmoney` VALUES ('1478', '612', '0', '0');
INSERT INTO `packetmoney` VALUES ('1479', '952', '0', '0');
INSERT INTO `packetmoney` VALUES ('1480', '881', '0', '0');
INSERT INTO `packetmoney` VALUES ('1481', '774', '0', '0');
INSERT INTO `packetmoney` VALUES ('1482', '745', '0', '0');
INSERT INTO `packetmoney` VALUES ('1483', '809', '0', '0');
INSERT INTO `packetmoney` VALUES ('1484', '963', '0', '0');
INSERT INTO `packetmoney` VALUES ('1485', '687', '0', '0');
INSERT INTO `packetmoney` VALUES ('1486', '736', '0', '0');
INSERT INTO `packetmoney` VALUES ('1487', '913', '0', '0');
INSERT INTO `packetmoney` VALUES ('1488', '840', '0', '0');
INSERT INTO `packetmoney` VALUES ('1489', '666', '0', '0');
INSERT INTO `packetmoney` VALUES ('1490', '744', '0', '0');
INSERT INTO `packetmoney` VALUES ('1491', '517', '0', '0');
INSERT INTO `packetmoney` VALUES ('1492', '910', '0', '0');
INSERT INTO `packetmoney` VALUES ('1493', '968', '0', '0');
INSERT INTO `packetmoney` VALUES ('1494', '808', '0', '0');
INSERT INTO `packetmoney` VALUES ('1495', '893', '0', '0');
INSERT INTO `packetmoney` VALUES ('1496', '723', '0', '0');
INSERT INTO `packetmoney` VALUES ('1497', '929', '0', '0');
INSERT INTO `packetmoney` VALUES ('1498', '668', '0', '0');
INSERT INTO `packetmoney` VALUES ('1499', '854', '0', '0');
INSERT INTO `packetmoney` VALUES ('1500', '642', '0', '0');
INSERT INTO `packetmoney` VALUES ('1501', '625', '0', '0');
INSERT INTO `packetmoney` VALUES ('1502', '898', '0', '0');
INSERT INTO `packetmoney` VALUES ('1503', '977', '0', '0');
INSERT INTO `packetmoney` VALUES ('1504', '526', '0', '0');
INSERT INTO `packetmoney` VALUES ('1505', '538', '0', '0');
INSERT INTO `packetmoney` VALUES ('1506', '744', '0', '0');
INSERT INTO `packetmoney` VALUES ('1507', '567', '0', '0');
INSERT INTO `packetmoney` VALUES ('1508', '715', '0', '0');
INSERT INTO `packetmoney` VALUES ('1509', '938', '0', '0');
INSERT INTO `packetmoney` VALUES ('1510', '700', '0', '0');
INSERT INTO `packetmoney` VALUES ('1511', '982', '0', '0');
INSERT INTO `packetmoney` VALUES ('1512', '621', '0', '0');
INSERT INTO `packetmoney` VALUES ('1513', '720', '0', '0');
INSERT INTO `packetmoney` VALUES ('1514', '778', '0', '0');
INSERT INTO `packetmoney` VALUES ('1515', '805', '0', '0');
INSERT INTO `packetmoney` VALUES ('1516', '621', '0', '0');
INSERT INTO `packetmoney` VALUES ('1517', '844', '0', '0');
INSERT INTO `packetmoney` VALUES ('1518', '928', '0', '0');
INSERT INTO `packetmoney` VALUES ('1519', '886', '0', '0');
INSERT INTO `packetmoney` VALUES ('1520', '681', '0', '0');
INSERT INTO `packetmoney` VALUES ('1521', '597', '0', '0');
INSERT INTO `packetmoney` VALUES ('1522', '745', '0', '0');
INSERT INTO `packetmoney` VALUES ('1523', '670', '0', '0');
INSERT INTO `packetmoney` VALUES ('1524', '705', '0', '0');
INSERT INTO `packetmoney` VALUES ('1525', '768', '0', '0');
INSERT INTO `packetmoney` VALUES ('1526', '699', '0', '0');
INSERT INTO `packetmoney` VALUES ('1527', '758', '0', '0');
INSERT INTO `packetmoney` VALUES ('1528', '889', '0', '0');
INSERT INTO `packetmoney` VALUES ('1529', '828', '0', '0');
INSERT INTO `packetmoney` VALUES ('1530', '691', '0', '0');
INSERT INTO `packetmoney` VALUES ('1531', '629', '0', '0');
INSERT INTO `packetmoney` VALUES ('1532', '668', '0', '0');
INSERT INTO `packetmoney` VALUES ('1533', '548', '0', '0');
INSERT INTO `packetmoney` VALUES ('1534', '880', '0', '0');
INSERT INTO `packetmoney` VALUES ('1535', '790', '0', '0');
INSERT INTO `packetmoney` VALUES ('1536', '867', '0', '0');
INSERT INTO `packetmoney` VALUES ('1537', '562', '0', '0');
INSERT INTO `packetmoney` VALUES ('1538', '555', '0', '0');
INSERT INTO `packetmoney` VALUES ('1539', '746', '0', '0');
INSERT INTO `packetmoney` VALUES ('1540', '826', '0', '0');
INSERT INTO `packetmoney` VALUES ('1541', '698', '0', '0');
INSERT INTO `packetmoney` VALUES ('1542', '885', '0', '0');
INSERT INTO `packetmoney` VALUES ('1543', '933', '0', '0');
INSERT INTO `packetmoney` VALUES ('1544', '931', '0', '0');
INSERT INTO `packetmoney` VALUES ('1545', '920', '0', '0');
INSERT INTO `packetmoney` VALUES ('1546', '698', '0', '0');
INSERT INTO `packetmoney` VALUES ('1547', '527', '0', '0');
INSERT INTO `packetmoney` VALUES ('1548', '856', '0', '0');
INSERT INTO `packetmoney` VALUES ('1549', '782', '0', '0');
INSERT INTO `packetmoney` VALUES ('1550', '961', '0', '0');
INSERT INTO `packetmoney` VALUES ('1551', '798', '0', '0');
INSERT INTO `packetmoney` VALUES ('1552', '740', '0', '0');
INSERT INTO `packetmoney` VALUES ('1553', '673', '0', '0');
INSERT INTO `packetmoney` VALUES ('1554', '819', '0', '0');
INSERT INTO `packetmoney` VALUES ('1555', '524', '0', '0');
INSERT INTO `packetmoney` VALUES ('1556', '642', '0', '0');
INSERT INTO `packetmoney` VALUES ('1557', '548', '0', '0');
INSERT INTO `packetmoney` VALUES ('1558', '769', '0', '0');
INSERT INTO `packetmoney` VALUES ('1559', '966', '0', '0');
INSERT INTO `packetmoney` VALUES ('1560', '913', '0', '0');
INSERT INTO `packetmoney` VALUES ('1561', '838', '0', '0');
INSERT INTO `packetmoney` VALUES ('1562', '571', '0', '0');
INSERT INTO `packetmoney` VALUES ('1563', '907', '0', '0');
INSERT INTO `packetmoney` VALUES ('1564', '521', '0', '0');
INSERT INTO `packetmoney` VALUES ('1565', '840', '0', '0');
INSERT INTO `packetmoney` VALUES ('1566', '827', '0', '0');
INSERT INTO `packetmoney` VALUES ('1567', '809', '0', '0');
INSERT INTO `packetmoney` VALUES ('1568', '669', '0', '0');
INSERT INTO `packetmoney` VALUES ('1569', '819', '0', '0');
INSERT INTO `packetmoney` VALUES ('1570', '804', '0', '0');
INSERT INTO `packetmoney` VALUES ('1571', '929', '0', '0');
INSERT INTO `packetmoney` VALUES ('1572', '848', '0', '0');
INSERT INTO `packetmoney` VALUES ('1573', '827', '0', '0');
INSERT INTO `packetmoney` VALUES ('1574', '917', '0', '0');
INSERT INTO `packetmoney` VALUES ('1575', '639', '0', '0');
INSERT INTO `packetmoney` VALUES ('1576', '529', '0', '0');
INSERT INTO `packetmoney` VALUES ('1577', '586', '0', '0');
INSERT INTO `packetmoney` VALUES ('1578', '549', '0', '0');
INSERT INTO `packetmoney` VALUES ('1579', '834', '0', '0');
INSERT INTO `packetmoney` VALUES ('1580', '588', '0', '0');
INSERT INTO `packetmoney` VALUES ('1581', '821', '0', '0');
INSERT INTO `packetmoney` VALUES ('1582', '590', '0', '0');
INSERT INTO `packetmoney` VALUES ('1583', '911', '0', '0');
INSERT INTO `packetmoney` VALUES ('1584', '834', '0', '0');
INSERT INTO `packetmoney` VALUES ('1585', '701', '0', '0');
INSERT INTO `packetmoney` VALUES ('1586', '825', '0', '0');
INSERT INTO `packetmoney` VALUES ('1587', '977', '0', '0');
INSERT INTO `packetmoney` VALUES ('1588', '785', '0', '0');
INSERT INTO `packetmoney` VALUES ('1589', '798', '0', '0');
INSERT INTO `packetmoney` VALUES ('1590', '591', '0', '0');
INSERT INTO `packetmoney` VALUES ('1591', '924', '0', '0');
INSERT INTO `packetmoney` VALUES ('1592', '824', '0', '0');
INSERT INTO `packetmoney` VALUES ('1593', '616', '0', '0');
INSERT INTO `packetmoney` VALUES ('1594', '601', '0', '0');
INSERT INTO `packetmoney` VALUES ('1595', '817', '0', '0');
INSERT INTO `packetmoney` VALUES ('1596', '575', '0', '0');
INSERT INTO `packetmoney` VALUES ('1597', '572', '0', '0');
INSERT INTO `packetmoney` VALUES ('1598', '743', '0', '0');
INSERT INTO `packetmoney` VALUES ('1599', '701', '0', '0');
INSERT INTO `packetmoney` VALUES ('1600', '522', '0', '0');
INSERT INTO `packetmoney` VALUES ('1601', '676', '0', '0');
INSERT INTO `packetmoney` VALUES ('1602', '865', '0', '0');
INSERT INTO `packetmoney` VALUES ('1603', '714', '0', '0');
INSERT INTO `packetmoney` VALUES ('1604', '766', '0', '0');
INSERT INTO `packetmoney` VALUES ('1605', '625', '0', '0');
INSERT INTO `packetmoney` VALUES ('1606', '927', '0', '0');
INSERT INTO `packetmoney` VALUES ('1607', '728', '0', '0');
INSERT INTO `packetmoney` VALUES ('1608', '810', '0', '0');
INSERT INTO `packetmoney` VALUES ('1609', '607', '0', '0');
INSERT INTO `packetmoney` VALUES ('1610', '856', '0', '0');
INSERT INTO `packetmoney` VALUES ('1611', '989', '0', '0');
INSERT INTO `packetmoney` VALUES ('1612', '991', '0', '0');
INSERT INTO `packetmoney` VALUES ('1613', '687', '0', '0');
INSERT INTO `packetmoney` VALUES ('1614', '623', '0', '0');
INSERT INTO `packetmoney` VALUES ('1615', '899', '0', '0');
INSERT INTO `packetmoney` VALUES ('1616', '531', '0', '0');
INSERT INTO `packetmoney` VALUES ('1617', '565', '0', '0');
INSERT INTO `packetmoney` VALUES ('1618', '819', '0', '0');
INSERT INTO `packetmoney` VALUES ('1619', '503', '0', '0');
INSERT INTO `packetmoney` VALUES ('1620', '723', '0', '0');
INSERT INTO `packetmoney` VALUES ('1621', '858', '0', '0');
INSERT INTO `packetmoney` VALUES ('1622', '559', '0', '0');
INSERT INTO `packetmoney` VALUES ('1623', '507', '0', '0');
INSERT INTO `packetmoney` VALUES ('1624', '566', '0', '0');
INSERT INTO `packetmoney` VALUES ('1625', '728', '0', '0');
INSERT INTO `packetmoney` VALUES ('1626', '865', '0', '0');
INSERT INTO `packetmoney` VALUES ('1627', '835', '0', '0');
INSERT INTO `packetmoney` VALUES ('1628', '858', '0', '0');
INSERT INTO `packetmoney` VALUES ('1629', '711', '0', '0');
INSERT INTO `packetmoney` VALUES ('1630', '529', '0', '0');
INSERT INTO `packetmoney` VALUES ('1631', '537', '0', '0');
INSERT INTO `packetmoney` VALUES ('1632', '869', '0', '0');
INSERT INTO `packetmoney` VALUES ('1633', '769', '0', '0');
INSERT INTO `packetmoney` VALUES ('1634', '977', '0', '0');
INSERT INTO `packetmoney` VALUES ('1635', '634', '0', '0');
INSERT INTO `packetmoney` VALUES ('1636', '661', '0', '0');
INSERT INTO `packetmoney` VALUES ('1637', '604', '0', '0');
INSERT INTO `packetmoney` VALUES ('1638', '777', '0', '0');
INSERT INTO `packetmoney` VALUES ('1639', '898', '0', '0');
INSERT INTO `packetmoney` VALUES ('1640', '503', '0', '0');
INSERT INTO `packetmoney` VALUES ('1641', '988', '0', '0');
INSERT INTO `packetmoney` VALUES ('1642', '715', '0', '0');
INSERT INTO `packetmoney` VALUES ('1643', '604', '0', '0');
INSERT INTO `packetmoney` VALUES ('1644', '727', '0', '0');
INSERT INTO `packetmoney` VALUES ('1645', '746', '0', '0');
INSERT INTO `packetmoney` VALUES ('1646', '897', '0', '0');
INSERT INTO `packetmoney` VALUES ('1647', '935', '0', '0');
INSERT INTO `packetmoney` VALUES ('1648', '708', '0', '0');
INSERT INTO `packetmoney` VALUES ('1649', '782', '0', '0');
INSERT INTO `packetmoney` VALUES ('1650', '733', '0', '0');
INSERT INTO `packetmoney` VALUES ('1651', '528', '0', '0');
INSERT INTO `packetmoney` VALUES ('1652', '900', '0', '0');
INSERT INTO `packetmoney` VALUES ('1653', '959', '0', '0');
INSERT INTO `packetmoney` VALUES ('1654', '701', '0', '0');
INSERT INTO `packetmoney` VALUES ('1655', '638', '0', '0');
INSERT INTO `packetmoney` VALUES ('1656', '845', '0', '0');
INSERT INTO `packetmoney` VALUES ('1657', '609', '0', '0');
INSERT INTO `packetmoney` VALUES ('1658', '511', '0', '0');
INSERT INTO `packetmoney` VALUES ('1659', '623', '0', '0');
INSERT INTO `packetmoney` VALUES ('1660', '604', '0', '0');
INSERT INTO `packetmoney` VALUES ('1661', '682', '0', '0');
INSERT INTO `packetmoney` VALUES ('1662', '979', '0', '0');
INSERT INTO `packetmoney` VALUES ('1663', '645', '0', '0');
INSERT INTO `packetmoney` VALUES ('1664', '540', '0', '0');
INSERT INTO `packetmoney` VALUES ('1665', '730', '0', '0');
INSERT INTO `packetmoney` VALUES ('1666', '595', '0', '0');
INSERT INTO `packetmoney` VALUES ('1667', '562', '0', '0');
INSERT INTO `packetmoney` VALUES ('1668', '989', '0', '0');
INSERT INTO `packetmoney` VALUES ('1669', '858', '0', '0');
INSERT INTO `packetmoney` VALUES ('1670', '863', '0', '0');
INSERT INTO `packetmoney` VALUES ('1671', '602', '0', '0');
INSERT INTO `packetmoney` VALUES ('1672', '525', '0', '0');
INSERT INTO `packetmoney` VALUES ('1673', '791', '0', '0');
INSERT INTO `packetmoney` VALUES ('1674', '549', '0', '0');
INSERT INTO `packetmoney` VALUES ('1675', '883', '0', '0');
INSERT INTO `packetmoney` VALUES ('1676', '993', '0', '0');
INSERT INTO `packetmoney` VALUES ('1677', '808', '0', '0');
INSERT INTO `packetmoney` VALUES ('1678', '726', '0', '0');
INSERT INTO `packetmoney` VALUES ('1679', '529', '0', '0');
INSERT INTO `packetmoney` VALUES ('1680', '611', '0', '0');
INSERT INTO `packetmoney` VALUES ('1681', '843', '0', '0');
INSERT INTO `packetmoney` VALUES ('1682', '615', '0', '0');
INSERT INTO `packetmoney` VALUES ('1683', '535', '0', '0');
INSERT INTO `packetmoney` VALUES ('1684', '926', '0', '0');
INSERT INTO `packetmoney` VALUES ('1685', '995', '0', '0');
INSERT INTO `packetmoney` VALUES ('1686', '630', '0', '0');
INSERT INTO `packetmoney` VALUES ('1687', '824', '0', '0');
INSERT INTO `packetmoney` VALUES ('1688', '581', '0', '0');
INSERT INTO `packetmoney` VALUES ('1689', '925', '0', '0');
INSERT INTO `packetmoney` VALUES ('1690', '619', '0', '0');
INSERT INTO `packetmoney` VALUES ('1691', '895', '0', '0');
INSERT INTO `packetmoney` VALUES ('1692', '736', '0', '0');
INSERT INTO `packetmoney` VALUES ('1693', '701', '0', '0');
INSERT INTO `packetmoney` VALUES ('1694', '902', '0', '0');
INSERT INTO `packetmoney` VALUES ('1695', '712', '0', '0');
INSERT INTO `packetmoney` VALUES ('1696', '694', '0', '0');
INSERT INTO `packetmoney` VALUES ('1697', '792', '0', '0');
INSERT INTO `packetmoney` VALUES ('1698', '771', '0', '0');
INSERT INTO `packetmoney` VALUES ('1699', '932', '0', '0');
INSERT INTO `packetmoney` VALUES ('1700', '899', '0', '0');
INSERT INTO `packetmoney` VALUES ('1701', '1976', '0', '0');
INSERT INTO `packetmoney` VALUES ('1702', '1478', '0', '0');
INSERT INTO `packetmoney` VALUES ('1703', '1614', '0', '0');
INSERT INTO `packetmoney` VALUES ('1704', '1949', '0', '0');
INSERT INTO `packetmoney` VALUES ('1705', '1352', '0', '0');
INSERT INTO `packetmoney` VALUES ('1706', '1506', '0', '0');
INSERT INTO `packetmoney` VALUES ('1707', '1644', '0', '0');
INSERT INTO `packetmoney` VALUES ('1708', '1466', '0', '0');
INSERT INTO `packetmoney` VALUES ('1709', '1335', '0', '0');
INSERT INTO `packetmoney` VALUES ('1710', '1030', '0', '0');
INSERT INTO `packetmoney` VALUES ('1711', '1227', '0', '0');
INSERT INTO `packetmoney` VALUES ('1712', '1752', '0', '0');
INSERT INTO `packetmoney` VALUES ('1713', '1174', '0', '0');
INSERT INTO `packetmoney` VALUES ('1714', '1864', '0', '0');
INSERT INTO `packetmoney` VALUES ('1715', '1924', '0', '0');
INSERT INTO `packetmoney` VALUES ('1716', '1105', '0', '0');
INSERT INTO `packetmoney` VALUES ('1717', '1102', '0', '0');
INSERT INTO `packetmoney` VALUES ('1718', '1692', '0', '0');
INSERT INTO `packetmoney` VALUES ('1719', '1182', '0', '0');
INSERT INTO `packetmoney` VALUES ('1720', '1008', '0', '0');
INSERT INTO `packetmoney` VALUES ('1721', '1165', '0', '0');
INSERT INTO `packetmoney` VALUES ('1722', '1175', '0', '0');
INSERT INTO `packetmoney` VALUES ('1723', '1450', '0', '0');
INSERT INTO `packetmoney` VALUES ('1724', '1959', '0', '0');
INSERT INTO `packetmoney` VALUES ('1725', '1883', '0', '0');
INSERT INTO `packetmoney` VALUES ('1726', '1125', '0', '0');
INSERT INTO `packetmoney` VALUES ('1727', '1399', '0', '0');
INSERT INTO `packetmoney` VALUES ('1728', '1437', '0', '0');
INSERT INTO `packetmoney` VALUES ('1729', '1579', '0', '0');
INSERT INTO `packetmoney` VALUES ('1730', '1105', '0', '0');
INSERT INTO `packetmoney` VALUES ('1731', '1886', '0', '0');
INSERT INTO `packetmoney` VALUES ('1732', '1995', '0', '0');
INSERT INTO `packetmoney` VALUES ('1733', '1629', '0', '0');
INSERT INTO `packetmoney` VALUES ('1734', '1021', '0', '0');
INSERT INTO `packetmoney` VALUES ('1735', '1135', '0', '0');
INSERT INTO `packetmoney` VALUES ('1736', '1173', '0', '0');
INSERT INTO `packetmoney` VALUES ('1737', '1589', '0', '0');
INSERT INTO `packetmoney` VALUES ('1738', '1321', '0', '0');
INSERT INTO `packetmoney` VALUES ('1739', '1973', '0', '0');
INSERT INTO `packetmoney` VALUES ('1740', '1351', '0', '0');
INSERT INTO `packetmoney` VALUES ('1741', '1393', '0', '0');
INSERT INTO `packetmoney` VALUES ('1742', '1395', '0', '0');
INSERT INTO `packetmoney` VALUES ('1743', '1099', '0', '0');
INSERT INTO `packetmoney` VALUES ('1744', '1605', '0', '0');
INSERT INTO `packetmoney` VALUES ('1745', '1586', '0', '0');
INSERT INTO `packetmoney` VALUES ('1746', '1929', '0', '0');
INSERT INTO `packetmoney` VALUES ('1747', '1640', '0', '0');
INSERT INTO `packetmoney` VALUES ('1748', '1696', '0', '0');
INSERT INTO `packetmoney` VALUES ('1749', '1540', '0', '0');
INSERT INTO `packetmoney` VALUES ('1750', '1346', '0', '0');
INSERT INTO `packetmoney` VALUES ('1751', '1816', '0', '0');
INSERT INTO `packetmoney` VALUES ('1752', '1464', '0', '0');
INSERT INTO `packetmoney` VALUES ('1753', '1333', '0', '0');
INSERT INTO `packetmoney` VALUES ('1754', '1631', '0', '0');
INSERT INTO `packetmoney` VALUES ('1755', '1286', '0', '0');
INSERT INTO `packetmoney` VALUES ('1756', '1227', '0', '0');
INSERT INTO `packetmoney` VALUES ('1757', '1036', '0', '0');
INSERT INTO `packetmoney` VALUES ('1758', '1396', '0', '0');
INSERT INTO `packetmoney` VALUES ('1759', '1666', '0', '0');
INSERT INTO `packetmoney` VALUES ('1760', '1314', '0', '0');
INSERT INTO `packetmoney` VALUES ('1761', '1195', '0', '0');
INSERT INTO `packetmoney` VALUES ('1762', '1622', '0', '0');
INSERT INTO `packetmoney` VALUES ('1763', '1551', '0', '0');
INSERT INTO `packetmoney` VALUES ('1764', '1720', '0', '0');
INSERT INTO `packetmoney` VALUES ('1765', '1769', '0', '0');
INSERT INTO `packetmoney` VALUES ('1766', '1402', '0', '0');
INSERT INTO `packetmoney` VALUES ('1767', '1212', '0', '0');
INSERT INTO `packetmoney` VALUES ('1768', '1961', '0', '0');
INSERT INTO `packetmoney` VALUES ('1769', '1858', '0', '0');
INSERT INTO `packetmoney` VALUES ('1770', '1829', '0', '0');
INSERT INTO `packetmoney` VALUES ('1771', '1486', '0', '0');
INSERT INTO `packetmoney` VALUES ('1772', '1977', '0', '0');
INSERT INTO `packetmoney` VALUES ('1773', '1676', '0', '0');
INSERT INTO `packetmoney` VALUES ('1774', '1146', '0', '0');
INSERT INTO `packetmoney` VALUES ('1775', '1992', '0', '0');
INSERT INTO `packetmoney` VALUES ('1776', '1042', '0', '0');
INSERT INTO `packetmoney` VALUES ('1777', '1131', '0', '0');
INSERT INTO `packetmoney` VALUES ('1778', '1915', '0', '0');
INSERT INTO `packetmoney` VALUES ('1779', '1162', '0', '0');
INSERT INTO `packetmoney` VALUES ('1780', '1057', '0', '0');
INSERT INTO `packetmoney` VALUES ('1781', '1777', '0', '0');
INSERT INTO `packetmoney` VALUES ('1782', '1332', '0', '0');
INSERT INTO `packetmoney` VALUES ('1783', '1459', '0', '0');
INSERT INTO `packetmoney` VALUES ('1784', '1906', '0', '0');
INSERT INTO `packetmoney` VALUES ('1785', '1800', '0', '0');
INSERT INTO `packetmoney` VALUES ('1786', '1909', '0', '0');
INSERT INTO `packetmoney` VALUES ('1787', '1820', '0', '0');
INSERT INTO `packetmoney` VALUES ('1788', '1002', '0', '0');
INSERT INTO `packetmoney` VALUES ('1789', '1421', '0', '0');
INSERT INTO `packetmoney` VALUES ('1790', '1867', '0', '0');
INSERT INTO `packetmoney` VALUES ('1791', '1797', '0', '0');
INSERT INTO `packetmoney` VALUES ('1792', '1721', '0', '0');
INSERT INTO `packetmoney` VALUES ('1793', '1862', '0', '0');
INSERT INTO `packetmoney` VALUES ('1794', '1587', '0', '0');
INSERT INTO `packetmoney` VALUES ('1795', '1141', '0', '0');
INSERT INTO `packetmoney` VALUES ('1796', '1518', '0', '0');
INSERT INTO `packetmoney` VALUES ('1797', '1158', '0', '0');
INSERT INTO `packetmoney` VALUES ('1798', '1663', '0', '0');
INSERT INTO `packetmoney` VALUES ('1799', '1444', '0', '0');
INSERT INTO `packetmoney` VALUES ('1800', '1977', '0', '0');
INSERT INTO `packetmoney` VALUES ('1801', '1549', '0', '0');
INSERT INTO `packetmoney` VALUES ('1802', '1317', '0', '0');
INSERT INTO `packetmoney` VALUES ('1803', '1778', '0', '0');
INSERT INTO `packetmoney` VALUES ('1804', '1348', '0', '0');
INSERT INTO `packetmoney` VALUES ('1805', '1709', '0', '0');
INSERT INTO `packetmoney` VALUES ('1806', '1227', '0', '0');
INSERT INTO `packetmoney` VALUES ('1807', '1400', '0', '0');
INSERT INTO `packetmoney` VALUES ('1808', '1296', '0', '0');
INSERT INTO `packetmoney` VALUES ('1809', '1662', '0', '0');
INSERT INTO `packetmoney` VALUES ('1810', '1427', '0', '0');
INSERT INTO `packetmoney` VALUES ('1811', '1806', '0', '0');
INSERT INTO `packetmoney` VALUES ('1812', '1012', '0', '0');
INSERT INTO `packetmoney` VALUES ('1813', '1881', '0', '0');
INSERT INTO `packetmoney` VALUES ('1814', '1285', '0', '0');
INSERT INTO `packetmoney` VALUES ('1815', '1005', '0', '0');
INSERT INTO `packetmoney` VALUES ('1816', '1562', '0', '0');
INSERT INTO `packetmoney` VALUES ('1817', '1688', '0', '0');
INSERT INTO `packetmoney` VALUES ('1818', '1408', '0', '0');
INSERT INTO `packetmoney` VALUES ('1819', '1159', '0', '0');
INSERT INTO `packetmoney` VALUES ('1820', '1670', '0', '0');
INSERT INTO `packetmoney` VALUES ('1821', '1267', '0', '0');
INSERT INTO `packetmoney` VALUES ('1822', '1094', '0', '0');
INSERT INTO `packetmoney` VALUES ('1823', '1158', '0', '0');
INSERT INTO `packetmoney` VALUES ('1824', '1083', '0', '0');
INSERT INTO `packetmoney` VALUES ('1825', '1446', '0', '0');
INSERT INTO `packetmoney` VALUES ('1826', '1274', '0', '0');
INSERT INTO `packetmoney` VALUES ('1827', '1394', '0', '0');
INSERT INTO `packetmoney` VALUES ('1828', '1620', '0', '0');
INSERT INTO `packetmoney` VALUES ('1829', '1646', '0', '0');
INSERT INTO `packetmoney` VALUES ('1830', '1049', '0', '0');
INSERT INTO `packetmoney` VALUES ('1831', '1877', '0', '0');
INSERT INTO `packetmoney` VALUES ('1832', '1758', '0', '0');
INSERT INTO `packetmoney` VALUES ('1833', '1976', '0', '0');
INSERT INTO `packetmoney` VALUES ('1834', '1261', '0', '0');
INSERT INTO `packetmoney` VALUES ('1835', '1839', '0', '0');
INSERT INTO `packetmoney` VALUES ('1836', '1641', '0', '0');
INSERT INTO `packetmoney` VALUES ('1837', '1520', '0', '0');
INSERT INTO `packetmoney` VALUES ('1838', '1070', '0', '0');
INSERT INTO `packetmoney` VALUES ('1839', '1202', '0', '0');
INSERT INTO `packetmoney` VALUES ('1840', '1985', '0', '0');
INSERT INTO `packetmoney` VALUES ('1841', '1404', '0', '0');
INSERT INTO `packetmoney` VALUES ('1842', '1793', '0', '0');
INSERT INTO `packetmoney` VALUES ('1843', '1147', '0', '0');
INSERT INTO `packetmoney` VALUES ('1844', '1203', '0', '0');
INSERT INTO `packetmoney` VALUES ('1845', '1351', '0', '0');
INSERT INTO `packetmoney` VALUES ('1846', '1571', '0', '0');
INSERT INTO `packetmoney` VALUES ('1847', '1646', '0', '0');
INSERT INTO `packetmoney` VALUES ('1848', '1366', '0', '0');
INSERT INTO `packetmoney` VALUES ('1849', '1395', '0', '0');
INSERT INTO `packetmoney` VALUES ('1850', '1646', '0', '0');
INSERT INTO `packetmoney` VALUES ('1851', '1914', '0', '0');
INSERT INTO `packetmoney` VALUES ('1852', '1076', '0', '0');
INSERT INTO `packetmoney` VALUES ('1853', '1991', '0', '0');
INSERT INTO `packetmoney` VALUES ('1854', '1059', '0', '0');
INSERT INTO `packetmoney` VALUES ('1855', '1660', '0', '0');
INSERT INTO `packetmoney` VALUES ('1856', '1577', '0', '0');
INSERT INTO `packetmoney` VALUES ('1857', '1027', '0', '0');
INSERT INTO `packetmoney` VALUES ('1858', '1599', '0', '0');
INSERT INTO `packetmoney` VALUES ('1859', '1810', '0', '0');
INSERT INTO `packetmoney` VALUES ('1860', '1077', '0', '0');
INSERT INTO `packetmoney` VALUES ('1861', '1447', '0', '0');
INSERT INTO `packetmoney` VALUES ('1862', '1050', '0', '0');
INSERT INTO `packetmoney` VALUES ('1863', '1576', '0', '0');
INSERT INTO `packetmoney` VALUES ('1864', '1551', '0', '0');
INSERT INTO `packetmoney` VALUES ('1865', '1671', '0', '0');
INSERT INTO `packetmoney` VALUES ('1866', '1231', '0', '0');
INSERT INTO `packetmoney` VALUES ('1867', '1713', '0', '0');
INSERT INTO `packetmoney` VALUES ('1868', '1269', '0', '0');
INSERT INTO `packetmoney` VALUES ('1869', '1204', '0', '0');
INSERT INTO `packetmoney` VALUES ('1870', '1181', '0', '0');
INSERT INTO `packetmoney` VALUES ('1871', '1017', '0', '0');
INSERT INTO `packetmoney` VALUES ('1872', '1663', '0', '0');
INSERT INTO `packetmoney` VALUES ('1873', '1141', '0', '0');
INSERT INTO `packetmoney` VALUES ('1874', '1711', '0', '0');
INSERT INTO `packetmoney` VALUES ('1875', '1891', '0', '0');
INSERT INTO `packetmoney` VALUES ('1876', '1569', '0', '0');
INSERT INTO `packetmoney` VALUES ('1877', '1076', '0', '0');
INSERT INTO `packetmoney` VALUES ('1878', '1285', '0', '0');
INSERT INTO `packetmoney` VALUES ('1879', '1042', '0', '0');
INSERT INTO `packetmoney` VALUES ('1880', '1851', '0', '0');
INSERT INTO `packetmoney` VALUES ('1881', '1043', '0', '0');
INSERT INTO `packetmoney` VALUES ('1882', '1890', '0', '0');
INSERT INTO `packetmoney` VALUES ('1883', '1271', '0', '0');
INSERT INTO `packetmoney` VALUES ('1884', '1080', '0', '0');
INSERT INTO `packetmoney` VALUES ('1885', '1910', '0', '0');
INSERT INTO `packetmoney` VALUES ('1886', '1127', '0', '0');
INSERT INTO `packetmoney` VALUES ('1887', '1290', '0', '0');
INSERT INTO `packetmoney` VALUES ('1888', '1154', '0', '0');
INSERT INTO `packetmoney` VALUES ('1889', '1883', '0', '0');
INSERT INTO `packetmoney` VALUES ('1890', '1239', '0', '0');
INSERT INTO `packetmoney` VALUES ('1891', '1211', '0', '0');
INSERT INTO `packetmoney` VALUES ('1892', '1176', '0', '0');
INSERT INTO `packetmoney` VALUES ('1893', '1993', '0', '0');
INSERT INTO `packetmoney` VALUES ('1894', '1108', '0', '0');
INSERT INTO `packetmoney` VALUES ('1895', '1142', '0', '0');
INSERT INTO `packetmoney` VALUES ('1896', '1794', '0', '0');
INSERT INTO `packetmoney` VALUES ('1897', '1877', '0', '0');
INSERT INTO `packetmoney` VALUES ('1898', '1809', '0', '0');
INSERT INTO `packetmoney` VALUES ('1899', '1201', '0', '0');
INSERT INTO `packetmoney` VALUES ('1900', '1779', '0', '0');
INSERT INTO `packetmoney` VALUES ('1901', '2225', '0', '0');
INSERT INTO `packetmoney` VALUES ('1902', '2216', '0', '0');
INSERT INTO `packetmoney` VALUES ('1903', '2143', '0', '0');
INSERT INTO `packetmoney` VALUES ('1904', '2302', '0', '0');
INSERT INTO `packetmoney` VALUES ('1905', '2595', '0', '0');
INSERT INTO `packetmoney` VALUES ('1906', '2390', '0', '0');
INSERT INTO `packetmoney` VALUES ('1907', '2311', '0', '0');
INSERT INTO `packetmoney` VALUES ('1908', '2671', '0', '0');
INSERT INTO `packetmoney` VALUES ('1909', '2581', '0', '0');
INSERT INTO `packetmoney` VALUES ('1910', '2477', '0', '0');
INSERT INTO `packetmoney` VALUES ('1911', '2283', '0', '0');
INSERT INTO `packetmoney` VALUES ('1912', '2071', '0', '0');
INSERT INTO `packetmoney` VALUES ('1913', '2277', '0', '0');
INSERT INTO `packetmoney` VALUES ('1914', '2410', '0', '0');
INSERT INTO `packetmoney` VALUES ('1915', '2795', '0', '0');
INSERT INTO `packetmoney` VALUES ('1916', '2248', '0', '0');
INSERT INTO `packetmoney` VALUES ('1917', '2143', '0', '0');
INSERT INTO `packetmoney` VALUES ('1918', '2928', '0', '0');
INSERT INTO `packetmoney` VALUES ('1919', '2771', '0', '0');
INSERT INTO `packetmoney` VALUES ('1920', '2717', '0', '0');
INSERT INTO `packetmoney` VALUES ('1921', '2950', '0', '0');
INSERT INTO `packetmoney` VALUES ('1922', '2359', '0', '0');
INSERT INTO `packetmoney` VALUES ('1923', '2487', '0', '0');
INSERT INTO `packetmoney` VALUES ('1924', '2571', '0', '0');
INSERT INTO `packetmoney` VALUES ('1925', '2061', '0', '0');
INSERT INTO `packetmoney` VALUES ('1926', '2898', '0', '0');
INSERT INTO `packetmoney` VALUES ('1927', '2155', '0', '0');
INSERT INTO `packetmoney` VALUES ('1928', '2756', '0', '0');
INSERT INTO `packetmoney` VALUES ('1929', '2750', '0', '0');
INSERT INTO `packetmoney` VALUES ('1930', '2868', '0', '0');
INSERT INTO `packetmoney` VALUES ('1931', '2919', '0', '0');
INSERT INTO `packetmoney` VALUES ('1932', '2606', '0', '0');
INSERT INTO `packetmoney` VALUES ('1933', '2685', '0', '0');
INSERT INTO `packetmoney` VALUES ('1934', '2121', '0', '0');
INSERT INTO `packetmoney` VALUES ('1935', '2115', '0', '0');
INSERT INTO `packetmoney` VALUES ('1936', '2368', '0', '0');
INSERT INTO `packetmoney` VALUES ('1937', '2733', '0', '0');
INSERT INTO `packetmoney` VALUES ('1938', '2309', '0', '0');
INSERT INTO `packetmoney` VALUES ('1939', '2401', '0', '0');
INSERT INTO `packetmoney` VALUES ('1940', '2876', '0', '0');
INSERT INTO `packetmoney` VALUES ('1941', '3536', '0', '0');
INSERT INTO `packetmoney` VALUES ('1942', '3890', '0', '0');
INSERT INTO `packetmoney` VALUES ('1943', '3017', '0', '0');
INSERT INTO `packetmoney` VALUES ('1944', '3341', '0', '0');
INSERT INTO `packetmoney` VALUES ('1945', '3663', '0', '0');
INSERT INTO `packetmoney` VALUES ('1946', '3717', '0', '0');
INSERT INTO `packetmoney` VALUES ('1947', '3033', '0', '0');
INSERT INTO `packetmoney` VALUES ('1948', '3525', '0', '0');
INSERT INTO `packetmoney` VALUES ('1949', '3088', '0', '0');
INSERT INTO `packetmoney` VALUES ('1950', '3389', '0', '0');
INSERT INTO `packetmoney` VALUES ('1951', '3198', '0', '0');
INSERT INTO `packetmoney` VALUES ('1952', '3404', '0', '0');
INSERT INTO `packetmoney` VALUES ('1953', '3372', '0', '0');
INSERT INTO `packetmoney` VALUES ('1954', '3853', '0', '0');
INSERT INTO `packetmoney` VALUES ('1955', '3851', '0', '0');
INSERT INTO `packetmoney` VALUES ('1956', '3296', '0', '0');
INSERT INTO `packetmoney` VALUES ('1957', '3041', '0', '0');
INSERT INTO `packetmoney` VALUES ('1958', '3738', '0', '0');
INSERT INTO `packetmoney` VALUES ('1959', '3008', '0', '0');
INSERT INTO `packetmoney` VALUES ('1960', '3950', '0', '0');
INSERT INTO `packetmoney` VALUES ('1961', '3591', '0', '0');
INSERT INTO `packetmoney` VALUES ('1962', '3837', '0', '0');
INSERT INTO `packetmoney` VALUES ('1963', '3589', '0', '0');
INSERT INTO `packetmoney` VALUES ('1964', '3137', '0', '0');
INSERT INTO `packetmoney` VALUES ('1965', '3541', '0', '0');
INSERT INTO `packetmoney` VALUES ('1966', '3569', '0', '0');
INSERT INTO `packetmoney` VALUES ('1967', '3843', '0', '0');
INSERT INTO `packetmoney` VALUES ('1968', '3772', '0', '0');
INSERT INTO `packetmoney` VALUES ('1969', '3746', '0', '0');
INSERT INTO `packetmoney` VALUES ('1970', '3646', '0', '0');
INSERT INTO `packetmoney` VALUES ('1971', '3383', '0', '0');
INSERT INTO `packetmoney` VALUES ('1972', '3430', '0', '0');
INSERT INTO `packetmoney` VALUES ('1973', '3099', '0', '0');
INSERT INTO `packetmoney` VALUES ('1974', '3525', '0', '0');
INSERT INTO `packetmoney` VALUES ('1975', '3964', '0', '0');
INSERT INTO `packetmoney` VALUES ('1976', '3792', '0', '0');
INSERT INTO `packetmoney` VALUES ('1977', '3946', '0', '0');
INSERT INTO `packetmoney` VALUES ('1978', '3820', '0', '0');
INSERT INTO `packetmoney` VALUES ('1979', '3058', '0', '0');
INSERT INTO `packetmoney` VALUES ('1980', '3505', '0', '0');
INSERT INTO `packetmoney` VALUES ('1981', '4747', '0', '0');
INSERT INTO `packetmoney` VALUES ('1982', '4575', '0', '0');
INSERT INTO `packetmoney` VALUES ('1983', '4884', '0', '0');
INSERT INTO `packetmoney` VALUES ('1984', '4805', '0', '0');
INSERT INTO `packetmoney` VALUES ('1985', '4332', '0', '0');
INSERT INTO `packetmoney` VALUES ('1986', '4411', '0', '0');
INSERT INTO `packetmoney` VALUES ('1987', '4053', '0', '0');
INSERT INTO `packetmoney` VALUES ('1988', '4055', '0', '0');
INSERT INTO `packetmoney` VALUES ('1989', '4454', '0', '0');
INSERT INTO `packetmoney` VALUES ('1990', '4785', '0', '0');
INSERT INTO `packetmoney` VALUES ('1991', '4086', '0', '0');
INSERT INTO `packetmoney` VALUES ('1992', '4369', '0', '0');
INSERT INTO `packetmoney` VALUES ('1993', '4595', '0', '0');
INSERT INTO `packetmoney` VALUES ('1994', '4367', '0', '0');
INSERT INTO `packetmoney` VALUES ('1995', '4945', '0', '0');
INSERT INTO `packetmoney` VALUES ('1996', '4153', '0', '0');
INSERT INTO `packetmoney` VALUES ('1997', '4321', '0', '0');
INSERT INTO `packetmoney` VALUES ('1998', '4143', '0', '0');
INSERT INTO `packetmoney` VALUES ('1999', '4504', '0', '0');
INSERT INTO `packetmoney` VALUES ('2000', '4228', '0', '0');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(100) DEFAULT NULL,
  `prices` float(10,2) DEFAULT NULL,
  `usetype` int(1) DEFAULT NULL,
  `terms` int(6) DEFAULT NULL,
  `usenum` int(6) DEFAULT NULL,
  `ifvalid` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(100) DEFAULT NULL,
  `types` int(2) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for `question_item`
-- ----------------------------
DROP TABLE IF EXISTS `question_item`;
CREATE TABLE `question_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) DEFAULT NULL,
  `titles` varchar(100) DEFAULT NULL,
  `ifanswer` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of question_item
-- ----------------------------

-- ----------------------------
-- Table structure for `redpacket`
-- ----------------------------
DROP TABLE IF EXISTS `redpacket`;
CREATE TABLE `redpacket` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '红包表自增主键id',
  `student_id` int(20) NOT NULL COMMENT '学生表里的学生id',
  `submit_time` datetime DEFAULT NULL COMMENT '学生测试完提交相关信息时的时间',
  `send_time` datetime DEFAULT NULL COMMENT '后台为学生发送红包成功后的时间',
  `times` tinyint(1) NOT NULL COMMENT '测试的次数，1和2，最多只能测两次',
  `result_id` int(20) NOT NULL COMMENT '测试完生成的报告在报告表中的id',
  `tel` varchar(13) NOT NULL COMMENT '领红包留的手机号',
  `weixin` varchar(30) NOT NULL COMMENT '领红包时留下的微信号',
  `money` smallint(5) NOT NULL COMMENT '红包金额，存入数据为实际金额*100，即526表示实际金额5.26',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '表示此红包是否发送，0表示未发送，1表示已发送',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '表示此红包是否删除，0表示未删除，1表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of redpacket
-- ----------------------------
INSERT INTO `redpacket` VALUES ('1', '1', '2017-11-29 09:26:22', '2017-11-29 10:19:30', '1', '1', '13520323558', '13520323558', '10', '0', '0');
INSERT INTO `redpacket` VALUES ('2', '1', '2017-11-30 09:05:22', '2017-11-30 09:07:30', '2', '2', '13520323228', '13520323338', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('3', '2', '2017-11-30 09:36:22', '2017-11-30 09:37:30', '1', '3', '13520323448', '13520323448', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('4', '2', '2017-11-30 09:36:22', '2017-11-30 09:37:30', '2', '4', '13520323223', '13520323228', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('5', '10000', '2017-11-30 09:36:22', null, '1', '10000', '13520323558', '13520323228', '537', '0', '0');
INSERT INTO `redpacket` VALUES ('6', '948', '2017-11-30 09:36:22', null, '1', '1466', '13520323728', '13520323228', '505', '0', '0');
INSERT INTO `redpacket` VALUES ('7', '10', '2017-11-30 09:36:22', null, '1', '10', '13520323288', '13520323228', '525', '0', '0');
INSERT INTO `redpacket` VALUES ('8', '291', '2017-11-30 09:36:22', null, '1', '220', '13520323248', '13520323228', '2946', '0', '0');
INSERT INTO `redpacket` VALUES ('9', '290', '2017-11-30 09:36:22', null, '1', '2290', '13520323238', '13520323228', '567', '0', '0');
INSERT INTO `redpacket` VALUES ('10', '11', '2017-11-30 09:36:22', null, '1', '13', '13520323288', '13520323228', '529', '0', '0');
INSERT INTO `redpacket` VALUES ('11', '999', '2017-11-30 09:36:22', null, '1', '999', '13520323438', '13520323228', '575', '0', '0');
INSERT INTO `redpacket` VALUES ('12', '88', '2017-11-30 09:36:22', null, '1', '7', '13520325548', '13520323228', '527', '0', '0');
INSERT INTO `redpacket` VALUES ('13', '29', '2017-12-01 09:43:58', null, '1', '130', '18600286713', '18600286713', '585', '0', '0');
INSERT INTO `redpacket` VALUES ('14', '2', null, null, '1', '134', '', '', '556', '0', '0');
INSERT INTO `redpacket` VALUES ('15', '5', '2017-11-30 17:04:27', null, '1', '138', '18600286713', '123', '508', '0', '0');
INSERT INTO `redpacket` VALUES ('16', '290', '2017-11-30 17:52:57', null, '2', '2290', '', '', '520', '0', '0');
INSERT INTO `redpacket` VALUES ('17', '2148', null, null, '1', '1468', '', '', '551', '0', '0');
INSERT INTO `redpacket` VALUES ('18', '2', null, null, '2', '244', '', '', '545', '0', '0');
INSERT INTO `redpacket` VALUES ('19', '12', null, null, '1', '245', '', '', '505', '0', '0');
INSERT INTO `redpacket` VALUES ('20', '290', null, null, '3', '2290', '', '', '580', '0', '0');
INSERT INTO `redpacket` VALUES ('21', '2', '0000-00-00 00:00:00', null, '1', '333', '', '', '3455', '0', '0');
INSERT INTO `redpacket` VALUES ('22', '1019', null, null, '1', '2329', '', '', '514', '0', '0');
INSERT INTO `redpacket` VALUES ('23', '29', null, null, '2', '2327', '', '', '597', '0', '0');
INSERT INTO `redpacket` VALUES ('24', '1019', '2017-12-01 20:03:29', null, '1', '2330', '18600286713', '18600286713', '553', '0', '0');
INSERT INTO `redpacket` VALUES ('25', '952', null, null, '1', '2331', '', '', '590', '0', '0');
INSERT INTO `redpacket` VALUES ('26', '8655', null, null, '1', '2306', '', '', '531', '0', '0');
INSERT INTO `redpacket` VALUES ('27', '8777', '2017-12-02 13:04:46', null, '1', '2334', '15864584204', '15864584204', '583', '0', '0');
INSERT INTO `redpacket` VALUES ('28', '8775', '2017-12-02 14:36:52', null, '1', '2332', '18653332662', '18653332662', '543', '0', '0');
INSERT INTO `redpacket` VALUES ('29', '8783', '2017-12-02 18:13:22', null, '1', '2337', '13963646730', '13963646730', '534', '0', '0');
INSERT INTO `redpacket` VALUES ('30', '2136', null, '2017-12-04 10:52:57', '1', '221', '', '', '546', '1', '0');
INSERT INTO `redpacket` VALUES ('31', '8795', null, null, '1', '2340', '', '', '101', '0', '0');
INSERT INTO `redpacket` VALUES ('32', '4722', '2017-12-08 15:52:23', null, '1', '2344', '15713209691', '15713209691', '176', '0', '0');
INSERT INTO `redpacket` VALUES ('33', '8794', null, null, '1', '2357', '', '', '156', '0', '0');
INSERT INTO `redpacket` VALUES ('34', '13', '2017-12-19 11:27:38', null, '1', '183', '13439380857', 'liuzhenmin260630', '119', '0', '0');
INSERT INTO `redpacket` VALUES ('35', '13', null, null, '2', '2359', '', '', '164', '0', '0');

-- ----------------------------
-- Table structure for `schools`
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `names` varchar(200) DEFAULT NULL,
  `provid` int(11) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `zoneid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  `logourl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', '北京市第二十五中学', '110101', '110101', '110101', '1513532456', null);
INSERT INTO `schools` VALUES ('2', '北京市第三十一中学', '110102', '110102', '110102', '1513532456', null);

-- ----------------------------
-- Table structure for `schools_conf`
-- ----------------------------
DROP TABLE IF EXISTS `schools_conf`;
CREATE TABLE `schools_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schid` int(11) DEFAULT NULL,
  `types` int(2) DEFAULT NULL,
  `vals` varchar(100) DEFAULT NULL,
  `seqid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of schools_conf
-- ----------------------------

-- ----------------------------
-- Table structure for `schools_room`
-- ----------------------------
DROP TABLE IF EXISTS `schools_room`;
CREATE TABLE `schools_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schid` int(11) DEFAULT NULL,
  `names` varchar(50) DEFAULT NULL,
  `floors` int(5) DEFAULT NULL,
  `capacity` int(5) DEFAULT NULL,
  `types` int(255) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of schools_room
-- ----------------------------

-- ----------------------------
-- Table structure for `schools_term`
-- ----------------------------
DROP TABLE IF EXISTS `schools_term`;
CREATE TABLE `schools_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schid` int(11) DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `names` varchar(50) DEFAULT NULL,
  `begindate` int(11) DEFAULT NULL,
  `enddate` int(11) DEFAULT NULL,
  `ifnow` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of schools_term
-- ----------------------------

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(100) DEFAULT NULL,
  `types` int(2) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `schid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for `score_det`
-- ----------------------------
DROP TABLE IF EXISTS `score_det`;
CREATE TABLE `score_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(50) DEFAULT NULL,
  `score` float(10,2) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of score_det
-- ----------------------------

-- ----------------------------
-- Table structure for `score_user`
-- ----------------------------
DROP TABLE IF EXISTS `score_user`;
CREATE TABLE `score_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sumscore` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of score_user
-- ----------------------------

-- ----------------------------
-- Table structure for `studentsel`
-- ----------------------------
DROP TABLE IF EXISTS `studentsel`;
CREATE TABLE `studentsel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `types` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of studentsel
-- ----------------------------

-- ----------------------------
-- Table structure for `syneval`
-- ----------------------------
DROP TABLE IF EXISTS `syneval`;
CREATE TABLE `syneval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `detid` int(11) DEFAULT NULL,
  `listid` int(11) DEFAULT NULL,
  `listnum` int(5) DEFAULT NULL,
  `vals` text,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of syneval
-- ----------------------------

-- ----------------------------
-- Table structure for `syneval_task`
-- ----------------------------
DROP TABLE IF EXISTS `syneval_task`;
CREATE TABLE `syneval_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(50) DEFAULT NULL,
  `schid` int(11) DEFAULT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of syneval_task
-- ----------------------------

-- ----------------------------
-- Table structure for `syneval_task_det`
-- ----------------------------
DROP TABLE IF EXISTS `syneval_task_det`;
CREATE TABLE `syneval_task_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) DEFAULT NULL,
  `oneorder` int(5) DEFAULT NULL,
  `twoorder` int(5) DEFAULT NULL,
  `showorder` int(5) DEFAULT NULL,
  `conttype` int(1) DEFAULT NULL,
  `reclimit` int(11) DEFAULT NULL,
  `titles` varchar(100) DEFAULT NULL,
  `owners` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of syneval_task_det
-- ----------------------------

-- ----------------------------
-- Table structure for `syneval_task_det_list`
-- ----------------------------
DROP TABLE IF EXISTS `syneval_task_det_list`;
CREATE TABLE `syneval_task_det_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detid` int(11) DEFAULT NULL,
  `titles` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of syneval_task_det_list
-- ----------------------------

-- ----------------------------
-- Table structure for `sysconf`
-- ----------------------------
DROP TABLE IF EXISTS `sysconf`;
CREATE TABLE `sysconf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` int(2) DEFAULT NULL,
  `seque` int(2) DEFAULT NULL,
  `vals` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sysconf
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher_course`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `seque` int(2) DEFAULT NULL,
  `grade` int(1) DEFAULT NULL,
  `classanum` int(1) DEFAULT NULL,
  `classbnum` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) DEFAULT NULL,
  `cardnum` varchar(50) DEFAULT NULL,
  `usertype` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  `schid` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `names` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '13699999999', 'S123456', '1', 'xingyx', 'e10adc3949ba59abbe56e057f20f883e', '1513532456', '1', '1', '邢尹馨');
INSERT INTO `users` VALUES ('2', '13599999999', 'S123123', '1', 'zhaoning', 'e10adc3949ba59abbe56e057f20f883e', '1513532456', '2', '1', '赵宁');
INSERT INTO `users` VALUES ('3', '13799999999', 'F123456', '2', 'mrxing', 'e10adc3949ba59abbe56e057f20f883e', '1513532456', null, '1', '邢先生');
INSERT INTO `users` VALUES ('4', '13899999999', 'F123123', '2', 'mrzhao', 'e10adc3949ba59abbe56e057f20f883e', '1513532456', null, '1', '赵先生');
INSERT INTO `users` VALUES ('5', '15199999999', 'T123321', '3', 'lilaoshi', 'e10adc3949ba59abbe56e057f20f883e', '1513532456', '1', '2', '李老师');
INSERT INTO `users` VALUES ('6', '15299999999', 'T123234', '3', 'wanglaoshi', 'e10adc3949ba59abbe56e057f20f883e', '1513532456', '2', '2', '王老师');

-- ----------------------------
-- Table structure for `users_card`
-- ----------------------------
DROP TABLE IF EXISTS `users_card`;
CREATE TABLE `users_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cardnum` varchar(50) DEFAULT NULL,
  `cardpass` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `acttime` int(11) DEFAULT NULL,
  `actendtime` int(11) DEFAULT NULL,
  `cstatus` int(1) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_card
-- ----------------------------

-- ----------------------------
-- Table structure for `users_student`
-- ----------------------------
DROP TABLE IF EXISTS `users_student`;
CREATE TABLE `users_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `stuid` varchar(50) DEFAULT NULL,
  `schoolold` varchar(100) DEFAULT NULL,
  `scoreold` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_student
-- ----------------------------
INSERT INTO `users_student` VALUES ('1', '1', '4563456445', '北京朝阳第一初中', '666.00');
INSERT INTO `users_student` VALUES ('2', '2', '23423423423', '北京通州第一初中', '655.00');

-- ----------------------------
-- Table structure for `users_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `users_teacher`;
CREATE TABLE `users_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `coursemax` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_payment`
-- ----------------------------
DROP TABLE IF EXISTS `wx_payment`;
CREATE TABLE `wx_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` int(2) DEFAULT NULL,
  `money` float(10,2) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wx_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `wx_userinfo`;
CREATE TABLE `wx_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` int(2) DEFAULT NULL,
  `names` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `prov_id` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `openid` varchar(100) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `cardid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `qrcodeurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wx_userinfo
-- ----------------------------
