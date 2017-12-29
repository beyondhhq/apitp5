/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-29 19:26:18
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '智慧程', 'super', '0', '1513532456');
INSERT INTO `admins` VALUES ('2', 'zhc', 'e10adc3949ba59abbe56e057f20f883e', '管理员1', '1,6,7,8,9,20,21', '0', '1513532456');
INSERT INTO `admins` VALUES ('3', 'haha', 'e10adc3949ba59abbe56e057f20f883e', '管理员2', '1,6,7,8,9,20,21', '0', '1513532456');
INSERT INTO `admins` VALUES ('13', 'wanger', '4297f44b13955235245b2497399d7a93', '王二', '1,9', '1', '1514277701');
INSERT INTO `admins` VALUES ('14', 'xiaowang', 'e10adc3949ba59abbe56e057f20f883e', '小王', '1,9,2,10,11,3,12,13,14,1,9,2,10,11,3,12,13,14', '0', '1514278904');
INSERT INTO `admins` VALUES ('15', 'xiaoer', 'e10adc3949ba59abbe56e057f20f883e', '小二', '1,9,2,10,11,1,9,2,10,11,1,9,2,10,11,1,9,2,10,11', '0', '1514279058');
INSERT INTO `admins` VALUES ('16', 'xiaohai', '4297f44b13955235245b2497399d7a93', 'xiaohai', '1,9,2,10,11,1,9,2,10,11', '1', '1514279098');
INSERT INTO `admins` VALUES ('17', 'xiaozi', 'e10adc3949ba59abbe56e057f20f883e', '小子', '1,9,2,10,11', '0', '1514335768');

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
INSERT INTO `admin_auth` VALUES ('10', '学校列表', '2', '/index/school/schoollist', '2', '');
INSERT INTO `admin_auth` VALUES ('11', '添加学校', '2', '/index/school/addschool', '2', '');
INSERT INTO `admin_auth` VALUES ('12', '学生列表', '3', '/index/user/studentlist', '2', '');
INSERT INTO `admin_auth` VALUES ('13', '教师列表', '3', '/index/user/teacherlist', '2', '');
INSERT INTO `admin_auth` VALUES ('14', '家长列表', '3', '/index/user/parentlist', '2', '');
INSERT INTO `admin_auth` VALUES ('15', '资讯列表', '4', '/index/information/informationlist', '2', '');
INSERT INTO `admin_auth` VALUES ('16', '添加资讯', '4', '/index/information/addinformation', '2', '');
INSERT INTO `admin_auth` VALUES ('17', '资讯类型', '4', '/index/information/infotype', '2', '');
INSERT INTO `admin_auth` VALUES ('18', '测评列表', '5', '/index/evaluation/evaluationlist', '2', ' ');
INSERT INTO `admin_auth` VALUES ('19', '添加测评', '10', '/index/evaluation/addevaluation', '2', '');
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
  `isdel` tinyint(2) DEFAULT '0' COMMENT '是否删除，0表示没有删除，1表示已经删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', '大是哈哈哈哈', '<p>水电费胜多负少说的的水电费是的阿斯蒂芬阿斯蒂芬阿萨德爱上对方过后就哭水电费水电费是了阿萨德<img src=\"http://img.baidu.com/hi/jx2/j_0041.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0031.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0020.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', '水电费胜多负少说的的水电费是的阿斯蒂芬阿', '0', null, '1514546705', '0');
INSERT INTO `news` VALUES ('2', '1', '哈哈哈哈哈', '<p>12312312水电费水电费水电费水电费水电123123<img src=\"http://img.baidu.com/hi/jx2/j_0027.gif\"/>费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费123123水电费水电费水电费水电费水电费水电费</p>', '12312312水电费水电费水电费水电费水电123123费', '0', null, '1514453296', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES ('1', '高考新政', '0', '1514365172');
INSERT INTO `news_type` VALUES ('2', '生涯课堂', '0', '1514365510');
INSERT INTO `news_type` VALUES ('3', '名家指导', '0', '1514366265');
INSERT INTO `news_type` VALUES ('4', '评价内容与方法', '0', '1514366848');
INSERT INTO `news_type` VALUES ('5', '综合素养提升', '0', '1514366872');
INSERT INTO `news_type` VALUES ('6', '自主招生', '0', '1514366936');
INSERT INTO `news_type` VALUES ('7', '三位一体', '0', '1514366948');
INSERT INTO `news_type` VALUES ('8', '艺体招生', '0', '1514366991');
INSERT INTO `news_type` VALUES ('9', '出国留学', '0', '1514367001');
INSERT INTO `news_type` VALUES ('10', '中外合作', '0', '1514367868');
INSERT INTO `news_type` VALUES ('11', '高职单招', '0', '1514367882');
INSERT INTO `news_type` VALUES ('12', '高考信息', '0', '1514367924');
INSERT INTO `news_type` VALUES ('13', '专家讲座', '0', '1514367956');
INSERT INTO `news_type` VALUES ('14', '高考新政国家政策', '1', '1514368324');
INSERT INTO `news_type` VALUES ('15', '高考新政省份政策', '1', '1514368388');
INSERT INTO `news_type` VALUES ('16', '适合的教育是最好的教育', '2', '1514369746');
INSERT INTO `news_type` VALUES ('17', '怎样选科选考', '2', '1514369772');
INSERT INTO `news_type` VALUES ('18', '怎样做好生涯规划', '2', '1514369994');
INSERT INTO `news_type` VALUES ('19', '语文', '3', '1514370222');
INSERT INTO `news_type` VALUES ('20', '作文', '3', '1514370235');
INSERT INTO `news_type` VALUES ('21', '数学', '3', '1514370267');
INSERT INTO `news_type` VALUES ('22', '英语', '3', '1514370285');
INSERT INTO `news_type` VALUES ('23', '全国资讯', '12', '1514433393');
INSERT INTO `news_type` VALUES ('24', '地方资讯', '12', '1514433404');
INSERT INTO `news_type` VALUES ('25', '北京', '24', '1514433417');

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
-- Table structure for `provinces`
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `ProvincesID` int(20) NOT NULL COMMENT '省会ID',
  `ProvincesName` varchar(25) NOT NULL COMMENT '省会名称',
  `PID` int(20) NOT NULL COMMENT '父级ID',
  PRIMARY KEY (`ProvincesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('110000', '北京市', '0');
INSERT INTO `provinces` VALUES ('110100', '市辖区', '110000');
INSERT INTO `provinces` VALUES ('110101', '东城区', '110100');
INSERT INTO `provinces` VALUES ('110102', '西城区', '110100');
INSERT INTO `provinces` VALUES ('110105', '朝阳区', '110100');
INSERT INTO `provinces` VALUES ('110106', '丰台区', '110100');
INSERT INTO `provinces` VALUES ('110107', '石景山区', '110100');
INSERT INTO `provinces` VALUES ('110108', '海淀区', '110100');
INSERT INTO `provinces` VALUES ('110109', '门头沟区', '110100');
INSERT INTO `provinces` VALUES ('110111', '房山区', '110100');
INSERT INTO `provinces` VALUES ('110112', '通州区', '110100');
INSERT INTO `provinces` VALUES ('110113', '顺义区', '110100');
INSERT INTO `provinces` VALUES ('110114', '昌平区', '110100');
INSERT INTO `provinces` VALUES ('110115', '大兴区', '110100');
INSERT INTO `provinces` VALUES ('110116', '怀柔区', '110100');
INSERT INTO `provinces` VALUES ('110117', '平谷区', '110100');
INSERT INTO `provinces` VALUES ('110118', '密云区', '110100');
INSERT INTO `provinces` VALUES ('110119', '延庆区', '110100');
INSERT INTO `provinces` VALUES ('120000', '天津市', '0');
INSERT INTO `provinces` VALUES ('120100', '市辖区', '120000');
INSERT INTO `provinces` VALUES ('120101', '和平区', '120100');
INSERT INTO `provinces` VALUES ('120102', '河东区', '120100');
INSERT INTO `provinces` VALUES ('120103', '河西区', '120100');
INSERT INTO `provinces` VALUES ('120104', '南开区', '120100');
INSERT INTO `provinces` VALUES ('120105', '河北区', '120100');
INSERT INTO `provinces` VALUES ('120106', '红桥区', '120100');
INSERT INTO `provinces` VALUES ('120110', '东丽区', '120100');
INSERT INTO `provinces` VALUES ('120111', '西青区', '120100');
INSERT INTO `provinces` VALUES ('120112', '津南区', '120100');
INSERT INTO `provinces` VALUES ('120113', '北辰区', '120100');
INSERT INTO `provinces` VALUES ('120114', '武清区', '120100');
INSERT INTO `provinces` VALUES ('120115', '宝坻区', '120100');
INSERT INTO `provinces` VALUES ('120116', '滨海新区', '120100');
INSERT INTO `provinces` VALUES ('120117', '宁河区', '120100');
INSERT INTO `provinces` VALUES ('120118', '静海区', '120100');
INSERT INTO `provinces` VALUES ('120119', '蓟州区', '120100');
INSERT INTO `provinces` VALUES ('130000', '河北省', '0');
INSERT INTO `provinces` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `provinces` VALUES ('130101', '市辖区', '130100');
INSERT INTO `provinces` VALUES ('130102', '长安区', '130100');
INSERT INTO `provinces` VALUES ('130104', '桥西区', '130100');
INSERT INTO `provinces` VALUES ('130105', '新华区', '130100');
INSERT INTO `provinces` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `provinces` VALUES ('130108', '裕华区', '130100');
INSERT INTO `provinces` VALUES ('130109', '藁城区', '130100');
INSERT INTO `provinces` VALUES ('130110', '鹿泉区', '130100');
INSERT INTO `provinces` VALUES ('130111', '栾城区', '130100');
INSERT INTO `provinces` VALUES ('130121', '井陉县', '130100');
INSERT INTO `provinces` VALUES ('130123', '正定县', '130100');
INSERT INTO `provinces` VALUES ('130125', '行唐县', '130100');
INSERT INTO `provinces` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `provinces` VALUES ('130127', '高邑县', '130100');
INSERT INTO `provinces` VALUES ('130128', '深泽县', '130100');
INSERT INTO `provinces` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `provinces` VALUES ('130130', '无极县', '130100');
INSERT INTO `provinces` VALUES ('130131', '平山县', '130100');
INSERT INTO `provinces` VALUES ('130132', '元氏县', '130100');
INSERT INTO `provinces` VALUES ('130133', '赵县', '130100');
INSERT INTO `provinces` VALUES ('130183', '晋州市', '130100');
INSERT INTO `provinces` VALUES ('130184', '新乐市', '130100');
INSERT INTO `provinces` VALUES ('130200', '唐山市', '130000');
INSERT INTO `provinces` VALUES ('130201', '市辖区', '130200');
INSERT INTO `provinces` VALUES ('130202', '路南区', '130200');
INSERT INTO `provinces` VALUES ('130203', '路北区', '130200');
INSERT INTO `provinces` VALUES ('130204', '古冶区', '130200');
INSERT INTO `provinces` VALUES ('130205', '开平区', '130200');
INSERT INTO `provinces` VALUES ('130207', '丰南区', '130200');
INSERT INTO `provinces` VALUES ('130208', '丰润区', '130200');
INSERT INTO `provinces` VALUES ('130209', '曹妃甸区', '130200');
INSERT INTO `provinces` VALUES ('130223', '滦县', '130200');
INSERT INTO `provinces` VALUES ('130224', '滦南县', '130200');
INSERT INTO `provinces` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `provinces` VALUES ('130227', '迁西县', '130200');
INSERT INTO `provinces` VALUES ('130229', '玉田县', '130200');
INSERT INTO `provinces` VALUES ('130281', '遵化市', '130200');
INSERT INTO `provinces` VALUES ('130283', '迁安市', '130200');
INSERT INTO `provinces` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `provinces` VALUES ('130301', '市辖区', '130300');
INSERT INTO `provinces` VALUES ('130302', '海港区', '130300');
INSERT INTO `provinces` VALUES ('130303', '山海关区', '130300');
INSERT INTO `provinces` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `provinces` VALUES ('130306', '抚宁区', '130300');
INSERT INTO `provinces` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `provinces` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `provinces` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `provinces` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `provinces` VALUES ('130401', '市辖区', '130400');
INSERT INTO `provinces` VALUES ('130402', '邯山区', '130400');
INSERT INTO `provinces` VALUES ('130403', '丛台区', '130400');
INSERT INTO `provinces` VALUES ('130404', '复兴区', '130400');
INSERT INTO `provinces` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `provinces` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `provinces` VALUES ('130423', '临漳县', '130400');
INSERT INTO `provinces` VALUES ('130424', '成安县', '130400');
INSERT INTO `provinces` VALUES ('130425', '大名县', '130400');
INSERT INTO `provinces` VALUES ('130426', '涉县', '130400');
INSERT INTO `provinces` VALUES ('130427', '磁县', '130400');
INSERT INTO `provinces` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `provinces` VALUES ('130429', '永年县', '130400');
INSERT INTO `provinces` VALUES ('130430', '邱县', '130400');
INSERT INTO `provinces` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `provinces` VALUES ('130432', '广平县', '130400');
INSERT INTO `provinces` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `provinces` VALUES ('130434', '魏县', '130400');
INSERT INTO `provinces` VALUES ('130435', '曲周县', '130400');
INSERT INTO `provinces` VALUES ('130481', '武安市', '130400');
INSERT INTO `provinces` VALUES ('130500', '邢台市', '130000');
INSERT INTO `provinces` VALUES ('130501', '市辖区', '130500');
INSERT INTO `provinces` VALUES ('130502', '桥东区', '130500');
INSERT INTO `provinces` VALUES ('130503', '桥西区', '130500');
INSERT INTO `provinces` VALUES ('130521', '邢台县', '130500');
INSERT INTO `provinces` VALUES ('130522', '临城县', '130500');
INSERT INTO `provinces` VALUES ('130523', '内丘县', '130500');
INSERT INTO `provinces` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `provinces` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `provinces` VALUES ('130526', '任县', '130500');
INSERT INTO `provinces` VALUES ('130527', '南和县', '130500');
INSERT INTO `provinces` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `provinces` VALUES ('130529', '巨鹿县', '130500');
INSERT INTO `provinces` VALUES ('130530', '新河县', '130500');
INSERT INTO `provinces` VALUES ('130531', '广宗县', '130500');
INSERT INTO `provinces` VALUES ('130532', '平乡县', '130500');
INSERT INTO `provinces` VALUES ('130533', '威县', '130500');
INSERT INTO `provinces` VALUES ('130534', '清河县', '130500');
INSERT INTO `provinces` VALUES ('130535', '临西县', '130500');
INSERT INTO `provinces` VALUES ('130581', '南宫市', '130500');
INSERT INTO `provinces` VALUES ('130582', '沙河市', '130500');
INSERT INTO `provinces` VALUES ('130600', '保定市', '130000');
INSERT INTO `provinces` VALUES ('130601', '市辖区', '130600');
INSERT INTO `provinces` VALUES ('130602', '竞秀区', '130600');
INSERT INTO `provinces` VALUES ('130606', '莲池区', '130600');
INSERT INTO `provinces` VALUES ('130607', '满城区', '130600');
INSERT INTO `provinces` VALUES ('130608', '清苑区', '130600');
INSERT INTO `provinces` VALUES ('130609', '徐水区', '130600');
INSERT INTO `provinces` VALUES ('130623', '涞水县', '130600');
INSERT INTO `provinces` VALUES ('130624', '阜平县', '130600');
INSERT INTO `provinces` VALUES ('130626', '定兴县', '130600');
INSERT INTO `provinces` VALUES ('130627', '唐县', '130600');
INSERT INTO `provinces` VALUES ('130628', '高阳县', '130600');
INSERT INTO `provinces` VALUES ('130629', '容城县', '130600');
INSERT INTO `provinces` VALUES ('130630', '涞源县', '130600');
INSERT INTO `provinces` VALUES ('130631', '望都县', '130600');
INSERT INTO `provinces` VALUES ('130632', '安新县', '130600');
INSERT INTO `provinces` VALUES ('130633', '易县', '130600');
INSERT INTO `provinces` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `provinces` VALUES ('130635', '蠡县', '130600');
INSERT INTO `provinces` VALUES ('130636', '顺平县', '130600');
INSERT INTO `provinces` VALUES ('130637', '博野县', '130600');
INSERT INTO `provinces` VALUES ('130638', '雄县', '130600');
INSERT INTO `provinces` VALUES ('130681', '涿州市', '130600');
INSERT INTO `provinces` VALUES ('130683', '安国市', '130600');
INSERT INTO `provinces` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `provinces` VALUES ('130700', '张家口市', '130000');
INSERT INTO `provinces` VALUES ('130701', '市辖区', '130700');
INSERT INTO `provinces` VALUES ('130702', '桥东区', '130700');
INSERT INTO `provinces` VALUES ('130703', '桥西区', '130700');
INSERT INTO `provinces` VALUES ('130705', '宣化区', '130700');
INSERT INTO `provinces` VALUES ('130706', '下花园区', '130700');
INSERT INTO `provinces` VALUES ('130708', '万全区', '130700');
INSERT INTO `provinces` VALUES ('130709', '崇礼区', '130700');
INSERT INTO `provinces` VALUES ('130722', '张北县', '130700');
INSERT INTO `provinces` VALUES ('130723', '康保县', '130700');
INSERT INTO `provinces` VALUES ('130724', '沽源县', '130700');
INSERT INTO `provinces` VALUES ('130725', '尚义县', '130700');
INSERT INTO `provinces` VALUES ('130726', '蔚县', '130700');
INSERT INTO `provinces` VALUES ('130727', '阳原县', '130700');
INSERT INTO `provinces` VALUES ('130728', '怀安县', '130700');
INSERT INTO `provinces` VALUES ('130730', '怀来县', '130700');
INSERT INTO `provinces` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `provinces` VALUES ('130732', '赤城县', '130700');
INSERT INTO `provinces` VALUES ('130800', '承德市', '130000');
INSERT INTO `provinces` VALUES ('130801', '市辖区', '130800');
INSERT INTO `provinces` VALUES ('130802', '双桥区', '130800');
INSERT INTO `provinces` VALUES ('130803', '双滦区', '130800');
INSERT INTO `provinces` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `provinces` VALUES ('130821', '承德县', '130800');
INSERT INTO `provinces` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `provinces` VALUES ('130823', '平泉县', '130800');
INSERT INTO `provinces` VALUES ('130824', '滦平县', '130800');
INSERT INTO `provinces` VALUES ('130825', '隆化县', '130800');
INSERT INTO `provinces` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `provinces` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `provinces` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `provinces` VALUES ('130900', '沧州市', '130000');
INSERT INTO `provinces` VALUES ('130901', '市辖区', '130900');
INSERT INTO `provinces` VALUES ('130902', '新华区', '130900');
INSERT INTO `provinces` VALUES ('130903', '运河区', '130900');
INSERT INTO `provinces` VALUES ('130921', '沧县', '130900');
INSERT INTO `provinces` VALUES ('130922', '青县', '130900');
INSERT INTO `provinces` VALUES ('130923', '东光县', '130900');
INSERT INTO `provinces` VALUES ('130924', '海兴县', '130900');
INSERT INTO `provinces` VALUES ('130925', '盐山县', '130900');
INSERT INTO `provinces` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `provinces` VALUES ('130927', '南皮县', '130900');
INSERT INTO `provinces` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `provinces` VALUES ('130929', '献县', '130900');
INSERT INTO `provinces` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `provinces` VALUES ('130981', '泊头市', '130900');
INSERT INTO `provinces` VALUES ('130982', '任丘市', '130900');
INSERT INTO `provinces` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `provinces` VALUES ('130984', '河间市', '130900');
INSERT INTO `provinces` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `provinces` VALUES ('131001', '市辖区', '131000');
INSERT INTO `provinces` VALUES ('131002', '安次区', '131000');
INSERT INTO `provinces` VALUES ('131003', '广阳区', '131000');
INSERT INTO `provinces` VALUES ('131022', '固安县', '131000');
INSERT INTO `provinces` VALUES ('131023', '永清县', '131000');
INSERT INTO `provinces` VALUES ('131024', '香河县', '131000');
INSERT INTO `provinces` VALUES ('131025', '大城县', '131000');
INSERT INTO `provinces` VALUES ('131026', '文安县', '131000');
INSERT INTO `provinces` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `provinces` VALUES ('131081', '霸州市', '131000');
INSERT INTO `provinces` VALUES ('131082', '三河市', '131000');
INSERT INTO `provinces` VALUES ('131100', '衡水市', '130000');
INSERT INTO `provinces` VALUES ('131101', '市辖区', '131100');
INSERT INTO `provinces` VALUES ('131102', '桃城区', '131100');
INSERT INTO `provinces` VALUES ('131103', '冀州区', '131100');
INSERT INTO `provinces` VALUES ('131121', '枣强县', '131100');
INSERT INTO `provinces` VALUES ('131122', '武邑县', '131100');
INSERT INTO `provinces` VALUES ('131123', '武强县', '131100');
INSERT INTO `provinces` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `provinces` VALUES ('131125', '安平县', '131100');
INSERT INTO `provinces` VALUES ('131126', '故城县', '131100');
INSERT INTO `provinces` VALUES ('131127', '景县', '131100');
INSERT INTO `provinces` VALUES ('131128', '阜城县', '131100');
INSERT INTO `provinces` VALUES ('131182', '深州市', '131100');
INSERT INTO `provinces` VALUES ('139000', '省直辖县级行政区划', '130000');
INSERT INTO `provinces` VALUES ('139001', '定州市', '139000');
INSERT INTO `provinces` VALUES ('139002', '辛集市', '139000');
INSERT INTO `provinces` VALUES ('140000', '山西省', '0');
INSERT INTO `provinces` VALUES ('140100', '太原市', '140000');
INSERT INTO `provinces` VALUES ('140101', '市辖区', '140100');
INSERT INTO `provinces` VALUES ('140105', '小店区', '140100');
INSERT INTO `provinces` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `provinces` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `provinces` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `provinces` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `provinces` VALUES ('140110', '晋源区', '140100');
INSERT INTO `provinces` VALUES ('140121', '清徐县', '140100');
INSERT INTO `provinces` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `provinces` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `provinces` VALUES ('140181', '古交市', '140100');
INSERT INTO `provinces` VALUES ('140200', '大同市', '140000');
INSERT INTO `provinces` VALUES ('140201', '市辖区', '140200');
INSERT INTO `provinces` VALUES ('140202', '城区', '140200');
INSERT INTO `provinces` VALUES ('140203', '矿区', '140200');
INSERT INTO `provinces` VALUES ('140211', '南郊区', '140200');
INSERT INTO `provinces` VALUES ('140212', '新荣区', '140200');
INSERT INTO `provinces` VALUES ('140221', '阳高县', '140200');
INSERT INTO `provinces` VALUES ('140222', '天镇县', '140200');
INSERT INTO `provinces` VALUES ('140223', '广灵县', '140200');
INSERT INTO `provinces` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `provinces` VALUES ('140225', '浑源县', '140200');
INSERT INTO `provinces` VALUES ('140226', '左云县', '140200');
INSERT INTO `provinces` VALUES ('140227', '大同县', '140200');
INSERT INTO `provinces` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `provinces` VALUES ('140301', '市辖区', '140300');
INSERT INTO `provinces` VALUES ('140302', '城区', '140300');
INSERT INTO `provinces` VALUES ('140303', '矿区', '140300');
INSERT INTO `provinces` VALUES ('140311', '郊区', '140300');
INSERT INTO `provinces` VALUES ('140321', '平定县', '140300');
INSERT INTO `provinces` VALUES ('140322', '盂县', '140300');
INSERT INTO `provinces` VALUES ('140400', '长治市', '140000');
INSERT INTO `provinces` VALUES ('140401', '市辖区', '140400');
INSERT INTO `provinces` VALUES ('140402', '城区', '140400');
INSERT INTO `provinces` VALUES ('140411', '郊区', '140400');
INSERT INTO `provinces` VALUES ('140421', '长治县', '140400');
INSERT INTO `provinces` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `provinces` VALUES ('140424', '屯留县', '140400');
INSERT INTO `provinces` VALUES ('140425', '平顺县', '140400');
INSERT INTO `provinces` VALUES ('140426', '黎城县', '140400');
INSERT INTO `provinces` VALUES ('140427', '壶关县', '140400');
INSERT INTO `provinces` VALUES ('140428', '长子县', '140400');
INSERT INTO `provinces` VALUES ('140429', '武乡县', '140400');
INSERT INTO `provinces` VALUES ('140430', '沁县', '140400');
INSERT INTO `provinces` VALUES ('140431', '沁源县', '140400');
INSERT INTO `provinces` VALUES ('140481', '潞城市', '140400');
INSERT INTO `provinces` VALUES ('140500', '晋城市', '140000');
INSERT INTO `provinces` VALUES ('140501', '市辖区', '140500');
INSERT INTO `provinces` VALUES ('140502', '城区', '140500');
INSERT INTO `provinces` VALUES ('140521', '沁水县', '140500');
INSERT INTO `provinces` VALUES ('140522', '阳城县', '140500');
INSERT INTO `provinces` VALUES ('140524', '陵川县', '140500');
INSERT INTO `provinces` VALUES ('140525', '泽州县', '140500');
INSERT INTO `provinces` VALUES ('140581', '高平市', '140500');
INSERT INTO `provinces` VALUES ('140600', '朔州市', '140000');
INSERT INTO `provinces` VALUES ('140601', '市辖区', '140600');
INSERT INTO `provinces` VALUES ('140602', '朔城区', '140600');
INSERT INTO `provinces` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `provinces` VALUES ('140621', '山阴县', '140600');
INSERT INTO `provinces` VALUES ('140622', '应县', '140600');
INSERT INTO `provinces` VALUES ('140623', '右玉县', '140600');
INSERT INTO `provinces` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `provinces` VALUES ('140700', '晋中市', '140000');
INSERT INTO `provinces` VALUES ('140701', '市辖区', '140700');
INSERT INTO `provinces` VALUES ('140702', '榆次区', '140700');
INSERT INTO `provinces` VALUES ('140721', '榆社县', '140700');
INSERT INTO `provinces` VALUES ('140722', '左权县', '140700');
INSERT INTO `provinces` VALUES ('140723', '和顺县', '140700');
INSERT INTO `provinces` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `provinces` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `provinces` VALUES ('140726', '太谷县', '140700');
INSERT INTO `provinces` VALUES ('140727', '祁县', '140700');
INSERT INTO `provinces` VALUES ('140728', '平遥县', '140700');
INSERT INTO `provinces` VALUES ('140729', '灵石县', '140700');
INSERT INTO `provinces` VALUES ('140781', '介休市', '140700');
INSERT INTO `provinces` VALUES ('140800', '运城市', '140000');
INSERT INTO `provinces` VALUES ('140801', '市辖区', '140800');
INSERT INTO `provinces` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `provinces` VALUES ('140821', '临猗县', '140800');
INSERT INTO `provinces` VALUES ('140822', '万荣县', '140800');
INSERT INTO `provinces` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `provinces` VALUES ('140824', '稷山县', '140800');
INSERT INTO `provinces` VALUES ('140825', '新绛县', '140800');
INSERT INTO `provinces` VALUES ('140826', '绛县', '140800');
INSERT INTO `provinces` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `provinces` VALUES ('140828', '夏县', '140800');
INSERT INTO `provinces` VALUES ('140829', '平陆县', '140800');
INSERT INTO `provinces` VALUES ('140830', '芮城县', '140800');
INSERT INTO `provinces` VALUES ('140881', '永济市', '140800');
INSERT INTO `provinces` VALUES ('140882', '河津市', '140800');
INSERT INTO `provinces` VALUES ('140900', '忻州市', '140000');
INSERT INTO `provinces` VALUES ('140901', '市辖区', '140900');
INSERT INTO `provinces` VALUES ('140902', '忻府区', '140900');
INSERT INTO `provinces` VALUES ('140921', '定襄县', '140900');
INSERT INTO `provinces` VALUES ('140922', '五台县', '140900');
INSERT INTO `provinces` VALUES ('140923', '代县', '140900');
INSERT INTO `provinces` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `provinces` VALUES ('140925', '宁武县', '140900');
INSERT INTO `provinces` VALUES ('140926', '静乐县', '140900');
INSERT INTO `provinces` VALUES ('140927', '神池县', '140900');
INSERT INTO `provinces` VALUES ('140928', '五寨县', '140900');
INSERT INTO `provinces` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `provinces` VALUES ('140930', '河曲县', '140900');
INSERT INTO `provinces` VALUES ('140931', '保德县', '140900');
INSERT INTO `provinces` VALUES ('140932', '偏关县', '140900');
INSERT INTO `provinces` VALUES ('140981', '原平市', '140900');
INSERT INTO `provinces` VALUES ('141000', '临汾市', '140000');
INSERT INTO `provinces` VALUES ('141001', '市辖区', '141000');
INSERT INTO `provinces` VALUES ('141002', '尧都区', '141000');
INSERT INTO `provinces` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `provinces` VALUES ('141022', '翼城县', '141000');
INSERT INTO `provinces` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `provinces` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `provinces` VALUES ('141025', '古县', '141000');
INSERT INTO `provinces` VALUES ('141026', '安泽县', '141000');
INSERT INTO `provinces` VALUES ('141027', '浮山县', '141000');
INSERT INTO `provinces` VALUES ('141028', '吉县', '141000');
INSERT INTO `provinces` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `provinces` VALUES ('141030', '大宁县', '141000');
INSERT INTO `provinces` VALUES ('141031', '隰县', '141000');
INSERT INTO `provinces` VALUES ('141032', '永和县', '141000');
INSERT INTO `provinces` VALUES ('141033', '蒲县', '141000');
INSERT INTO `provinces` VALUES ('141034', '汾西县', '141000');
INSERT INTO `provinces` VALUES ('141081', '侯马市', '141000');
INSERT INTO `provinces` VALUES ('141082', '霍州市', '141000');
INSERT INTO `provinces` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `provinces` VALUES ('141101', '市辖区', '141100');
INSERT INTO `provinces` VALUES ('141102', '离石区', '141100');
INSERT INTO `provinces` VALUES ('141121', '文水县', '141100');
INSERT INTO `provinces` VALUES ('141122', '交城县', '141100');
INSERT INTO `provinces` VALUES ('141123', '兴县', '141100');
INSERT INTO `provinces` VALUES ('141124', '临县', '141100');
INSERT INTO `provinces` VALUES ('141125', '柳林县', '141100');
INSERT INTO `provinces` VALUES ('141126', '石楼县', '141100');
INSERT INTO `provinces` VALUES ('141127', '岚县', '141100');
INSERT INTO `provinces` VALUES ('141128', '方山县', '141100');
INSERT INTO `provinces` VALUES ('141129', '中阳县', '141100');
INSERT INTO `provinces` VALUES ('141130', '交口县', '141100');
INSERT INTO `provinces` VALUES ('141181', '孝义市', '141100');
INSERT INTO `provinces` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `provinces` VALUES ('150000', '内蒙古自治区', '0');
INSERT INTO `provinces` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `provinces` VALUES ('150101', '市辖区', '150100');
INSERT INTO `provinces` VALUES ('150102', '新城区', '150100');
INSERT INTO `provinces` VALUES ('150103', '回民区', '150100');
INSERT INTO `provinces` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `provinces` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `provinces` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `provinces` VALUES ('150122', '托克托县', '150100');
INSERT INTO `provinces` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `provinces` VALUES ('150124', '清水河县', '150100');
INSERT INTO `provinces` VALUES ('150125', '武川县', '150100');
INSERT INTO `provinces` VALUES ('150200', '包头市', '150000');
INSERT INTO `provinces` VALUES ('150201', '市辖区', '150200');
INSERT INTO `provinces` VALUES ('150202', '东河区', '150200');
INSERT INTO `provinces` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `provinces` VALUES ('150204', '青山区', '150200');
INSERT INTO `provinces` VALUES ('150205', '石拐区', '150200');
INSERT INTO `provinces` VALUES ('150206', '白云鄂博矿区', '150200');
INSERT INTO `provinces` VALUES ('150207', '九原区', '150200');
INSERT INTO `provinces` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `provinces` VALUES ('150222', '固阳县', '150200');
INSERT INTO `provinces` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `provinces` VALUES ('150300', '乌海市', '150000');
INSERT INTO `provinces` VALUES ('150301', '市辖区', '150300');
INSERT INTO `provinces` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `provinces` VALUES ('150303', '海南区', '150300');
INSERT INTO `provinces` VALUES ('150304', '乌达区', '150300');
INSERT INTO `provinces` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `provinces` VALUES ('150401', '市辖区', '150400');
INSERT INTO `provinces` VALUES ('150402', '红山区', '150400');
INSERT INTO `provinces` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `provinces` VALUES ('150404', '松山区', '150400');
INSERT INTO `provinces` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `provinces` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `provinces` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `provinces` VALUES ('150424', '林西县', '150400');
INSERT INTO `provinces` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `provinces` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `provinces` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `provinces` VALUES ('150429', '宁城县', '150400');
INSERT INTO `provinces` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `provinces` VALUES ('150500', '通辽市', '150000');
INSERT INTO `provinces` VALUES ('150501', '市辖区', '150500');
INSERT INTO `provinces` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `provinces` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `provinces` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `provinces` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `provinces` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `provinces` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `provinces` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `provinces` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `provinces` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `provinces` VALUES ('150601', '市辖区', '150600');
INSERT INTO `provinces` VALUES ('150602', '东胜区', '150600');
INSERT INTO `provinces` VALUES ('150603', '康巴什区', '150600');
INSERT INTO `provinces` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `provinces` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `provinces` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `provinces` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `provinces` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `provinces` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `provinces` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `provinces` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `provinces` VALUES ('150701', '市辖区', '150700');
INSERT INTO `provinces` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `provinces` VALUES ('150703', '扎赉诺尔区', '150700');
INSERT INTO `provinces` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `provinces` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `provinces` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `provinces` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `provinces` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `provinces` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `provinces` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `provinces` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `provinces` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `provinces` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `provinces` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `provinces` VALUES ('150785', '根河市', '150700');
INSERT INTO `provinces` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `provinces` VALUES ('150801', '市辖区', '150800');
INSERT INTO `provinces` VALUES ('150802', '临河区', '150800');
INSERT INTO `provinces` VALUES ('150821', '五原县', '150800');
INSERT INTO `provinces` VALUES ('150822', '磴口县', '150800');
INSERT INTO `provinces` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `provinces` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `provinces` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `provinces` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `provinces` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `provinces` VALUES ('150901', '市辖区', '150900');
INSERT INTO `provinces` VALUES ('150902', '集宁区', '150900');
INSERT INTO `provinces` VALUES ('150921', '卓资县', '150900');
INSERT INTO `provinces` VALUES ('150922', '化德县', '150900');
INSERT INTO `provinces` VALUES ('150923', '商都县', '150900');
INSERT INTO `provinces` VALUES ('150924', '兴和县', '150900');
INSERT INTO `provinces` VALUES ('150925', '凉城县', '150900');
INSERT INTO `provinces` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `provinces` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `provinces` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `provinces` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `provinces` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `provinces` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `provinces` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `provinces` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `provinces` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `provinces` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `provinces` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `provinces` VALUES ('152224', '突泉县', '152200');
INSERT INTO `provinces` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `provinces` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `provinces` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `provinces` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `provinces` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `provinces` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `provinces` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `provinces` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `provinces` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `provinces` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `provinces` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `provinces` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `provinces` VALUES ('152531', '多伦县', '152500');
INSERT INTO `provinces` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `provinces` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `provinces` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `provinces` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `provinces` VALUES ('210000', '辽宁省', '0');
INSERT INTO `provinces` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `provinces` VALUES ('210101', '市辖区', '210100');
INSERT INTO `provinces` VALUES ('210102', '和平区', '210100');
INSERT INTO `provinces` VALUES ('210103', '沈河区', '210100');
INSERT INTO `provinces` VALUES ('210104', '大东区', '210100');
INSERT INTO `provinces` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `provinces` VALUES ('210106', '铁西区', '210100');
INSERT INTO `provinces` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `provinces` VALUES ('210112', '浑南区', '210100');
INSERT INTO `provinces` VALUES ('210113', '沈北新区', '210100');
INSERT INTO `provinces` VALUES ('210114', '于洪区', '210100');
INSERT INTO `provinces` VALUES ('210115', '辽中区', '210100');
INSERT INTO `provinces` VALUES ('210123', '康平县', '210100');
INSERT INTO `provinces` VALUES ('210124', '法库县', '210100');
INSERT INTO `provinces` VALUES ('210181', '新民市', '210100');
INSERT INTO `provinces` VALUES ('210200', '大连市', '210000');
INSERT INTO `provinces` VALUES ('210201', '市辖区', '210200');
INSERT INTO `provinces` VALUES ('210202', '中山区', '210200');
INSERT INTO `provinces` VALUES ('210203', '西岗区', '210200');
INSERT INTO `provinces` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `provinces` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `provinces` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `provinces` VALUES ('210213', '金州区', '210200');
INSERT INTO `provinces` VALUES ('210214', '普兰店区', '210200');
INSERT INTO `provinces` VALUES ('210224', '长海县', '210200');
INSERT INTO `provinces` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `provinces` VALUES ('210283', '庄河市', '210200');
INSERT INTO `provinces` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `provinces` VALUES ('210301', '市辖区', '210300');
INSERT INTO `provinces` VALUES ('210302', '铁东区', '210300');
INSERT INTO `provinces` VALUES ('210303', '铁西区', '210300');
INSERT INTO `provinces` VALUES ('210304', '立山区', '210300');
INSERT INTO `provinces` VALUES ('210311', '千山区', '210300');
INSERT INTO `provinces` VALUES ('210321', '台安县', '210300');
INSERT INTO `provinces` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `provinces` VALUES ('210381', '海城市', '210300');
INSERT INTO `provinces` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `provinces` VALUES ('210401', '市辖区', '210400');
INSERT INTO `provinces` VALUES ('210402', '新抚区', '210400');
INSERT INTO `provinces` VALUES ('210403', '东洲区', '210400');
INSERT INTO `provinces` VALUES ('210404', '望花区', '210400');
INSERT INTO `provinces` VALUES ('210411', '顺城区', '210400');
INSERT INTO `provinces` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `provinces` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `provinces` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `provinces` VALUES ('210500', '本溪市', '210000');
INSERT INTO `provinces` VALUES ('210501', '市辖区', '210500');
INSERT INTO `provinces` VALUES ('210502', '平山区', '210500');
INSERT INTO `provinces` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `provinces` VALUES ('210504', '明山区', '210500');
INSERT INTO `provinces` VALUES ('210505', '南芬区', '210500');
INSERT INTO `provinces` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `provinces` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `provinces` VALUES ('210600', '丹东市', '210000');
INSERT INTO `provinces` VALUES ('210601', '市辖区', '210600');
INSERT INTO `provinces` VALUES ('210602', '元宝区', '210600');
INSERT INTO `provinces` VALUES ('210603', '振兴区', '210600');
INSERT INTO `provinces` VALUES ('210604', '振安区', '210600');
INSERT INTO `provinces` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `provinces` VALUES ('210681', '东港市', '210600');
INSERT INTO `provinces` VALUES ('210682', '凤城市', '210600');
INSERT INTO `provinces` VALUES ('210700', '锦州市', '210000');
INSERT INTO `provinces` VALUES ('210701', '市辖区', '210700');
INSERT INTO `provinces` VALUES ('210702', '古塔区', '210700');
INSERT INTO `provinces` VALUES ('210703', '凌河区', '210700');
INSERT INTO `provinces` VALUES ('210711', '太和区', '210700');
INSERT INTO `provinces` VALUES ('210726', '黑山县', '210700');
INSERT INTO `provinces` VALUES ('210727', '义县', '210700');
INSERT INTO `provinces` VALUES ('210781', '凌海市', '210700');
INSERT INTO `provinces` VALUES ('210782', '北镇市', '210700');
INSERT INTO `provinces` VALUES ('210800', '营口市', '210000');
INSERT INTO `provinces` VALUES ('210801', '市辖区', '210800');
INSERT INTO `provinces` VALUES ('210802', '站前区', '210800');
INSERT INTO `provinces` VALUES ('210803', '西市区', '210800');
INSERT INTO `provinces` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `provinces` VALUES ('210811', '老边区', '210800');
INSERT INTO `provinces` VALUES ('210881', '盖州市', '210800');
INSERT INTO `provinces` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `provinces` VALUES ('210900', '阜新市', '210000');
INSERT INTO `provinces` VALUES ('210901', '市辖区', '210900');
INSERT INTO `provinces` VALUES ('210902', '海州区', '210900');
INSERT INTO `provinces` VALUES ('210903', '新邱区', '210900');
INSERT INTO `provinces` VALUES ('210904', '太平区', '210900');
INSERT INTO `provinces` VALUES ('210905', '清河门区', '210900');
INSERT INTO `provinces` VALUES ('210911', '细河区', '210900');
INSERT INTO `provinces` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `provinces` VALUES ('210922', '彰武县', '210900');
INSERT INTO `provinces` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `provinces` VALUES ('211001', '市辖区', '211000');
INSERT INTO `provinces` VALUES ('211002', '白塔区', '211000');
INSERT INTO `provinces` VALUES ('211003', '文圣区', '211000');
INSERT INTO `provinces` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `provinces` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `provinces` VALUES ('211011', '太子河区', '211000');
INSERT INTO `provinces` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `provinces` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `provinces` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `provinces` VALUES ('211101', '市辖区', '211100');
INSERT INTO `provinces` VALUES ('211102', '双台子区', '211100');
INSERT INTO `provinces` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `provinces` VALUES ('211104', '大洼区', '211100');
INSERT INTO `provinces` VALUES ('211122', '盘山县', '211100');
INSERT INTO `provinces` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `provinces` VALUES ('211201', '市辖区', '211200');
INSERT INTO `provinces` VALUES ('211202', '银州区', '211200');
INSERT INTO `provinces` VALUES ('211204', '清河区', '211200');
INSERT INTO `provinces` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `provinces` VALUES ('211223', '西丰县', '211200');
INSERT INTO `provinces` VALUES ('211224', '昌图县', '211200');
INSERT INTO `provinces` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `provinces` VALUES ('211282', '开原市', '211200');
INSERT INTO `provinces` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `provinces` VALUES ('211301', '市辖区', '211300');
INSERT INTO `provinces` VALUES ('211302', '双塔区', '211300');
INSERT INTO `provinces` VALUES ('211303', '龙城区', '211300');
INSERT INTO `provinces` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `provinces` VALUES ('211322', '建平县', '211300');
INSERT INTO `provinces` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `provinces` VALUES ('211381', '北票市', '211300');
INSERT INTO `provinces` VALUES ('211382', '凌源市', '211300');
INSERT INTO `provinces` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `provinces` VALUES ('211401', '市辖区', '211400');
INSERT INTO `provinces` VALUES ('211402', '连山区', '211400');
INSERT INTO `provinces` VALUES ('211403', '龙港区', '211400');
INSERT INTO `provinces` VALUES ('211404', '南票区', '211400');
INSERT INTO `provinces` VALUES ('211421', '绥中县', '211400');
INSERT INTO `provinces` VALUES ('211422', '建昌县', '211400');
INSERT INTO `provinces` VALUES ('211481', '兴城市', '211400');
INSERT INTO `provinces` VALUES ('220000', '吉林省', '0');
INSERT INTO `provinces` VALUES ('220100', '长春市', '220000');
INSERT INTO `provinces` VALUES ('220101', '市辖区', '220100');
INSERT INTO `provinces` VALUES ('220102', '南关区', '220100');
INSERT INTO `provinces` VALUES ('220103', '宽城区', '220100');
INSERT INTO `provinces` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `provinces` VALUES ('220105', '二道区', '220100');
INSERT INTO `provinces` VALUES ('220106', '绿园区', '220100');
INSERT INTO `provinces` VALUES ('220112', '双阳区', '220100');
INSERT INTO `provinces` VALUES ('220113', '九台区', '220100');
INSERT INTO `provinces` VALUES ('220122', '农安县', '220100');
INSERT INTO `provinces` VALUES ('220182', '榆树市', '220100');
INSERT INTO `provinces` VALUES ('220183', '德惠市', '220100');
INSERT INTO `provinces` VALUES ('220200', '吉林市', '220000');
INSERT INTO `provinces` VALUES ('220201', '市辖区', '220200');
INSERT INTO `provinces` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `provinces` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `provinces` VALUES ('220204', '船营区', '220200');
INSERT INTO `provinces` VALUES ('220211', '丰满区', '220200');
INSERT INTO `provinces` VALUES ('220221', '永吉县', '220200');
INSERT INTO `provinces` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `provinces` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `provinces` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `provinces` VALUES ('220284', '磐石市', '220200');
INSERT INTO `provinces` VALUES ('220300', '四平市', '220000');
INSERT INTO `provinces` VALUES ('220301', '市辖区', '220300');
INSERT INTO `provinces` VALUES ('220302', '铁西区', '220300');
INSERT INTO `provinces` VALUES ('220303', '铁东区', '220300');
INSERT INTO `provinces` VALUES ('220322', '梨树县', '220300');
INSERT INTO `provinces` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `provinces` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `provinces` VALUES ('220382', '双辽市', '220300');
INSERT INTO `provinces` VALUES ('220400', '辽源市', '220000');
INSERT INTO `provinces` VALUES ('220401', '市辖区', '220400');
INSERT INTO `provinces` VALUES ('220402', '龙山区', '220400');
INSERT INTO `provinces` VALUES ('220403', '西安区', '220400');
INSERT INTO `provinces` VALUES ('220421', '东丰县', '220400');
INSERT INTO `provinces` VALUES ('220422', '东辽县', '220400');
INSERT INTO `provinces` VALUES ('220500', '通化市', '220000');
INSERT INTO `provinces` VALUES ('220501', '市辖区', '220500');
INSERT INTO `provinces` VALUES ('220502', '东昌区', '220500');
INSERT INTO `provinces` VALUES ('220503', '二道江区', '220500');
INSERT INTO `provinces` VALUES ('220521', '通化县', '220500');
INSERT INTO `provinces` VALUES ('220523', '辉南县', '220500');
INSERT INTO `provinces` VALUES ('220524', '柳河县', '220500');
INSERT INTO `provinces` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `provinces` VALUES ('220582', '集安市', '220500');
INSERT INTO `provinces` VALUES ('220600', '白山市', '220000');
INSERT INTO `provinces` VALUES ('220601', '市辖区', '220600');
INSERT INTO `provinces` VALUES ('220602', '浑江区', '220600');
INSERT INTO `provinces` VALUES ('220605', '江源区', '220600');
INSERT INTO `provinces` VALUES ('220621', '抚松县', '220600');
INSERT INTO `provinces` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `provinces` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `provinces` VALUES ('220681', '临江市', '220600');
INSERT INTO `provinces` VALUES ('220700', '松原市', '220000');
INSERT INTO `provinces` VALUES ('220701', '市辖区', '220700');
INSERT INTO `provinces` VALUES ('220702', '宁江区', '220700');
INSERT INTO `provinces` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `provinces` VALUES ('220722', '长岭县', '220700');
INSERT INTO `provinces` VALUES ('220723', '乾安县', '220700');
INSERT INTO `provinces` VALUES ('220781', '扶余市', '220700');
INSERT INTO `provinces` VALUES ('220800', '白城市', '220000');
INSERT INTO `provinces` VALUES ('220801', '市辖区', '220800');
INSERT INTO `provinces` VALUES ('220802', '洮北区', '220800');
INSERT INTO `provinces` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `provinces` VALUES ('220822', '通榆县', '220800');
INSERT INTO `provinces` VALUES ('220881', '洮南市', '220800');
INSERT INTO `provinces` VALUES ('220882', '大安市', '220800');
INSERT INTO `provinces` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `provinces` VALUES ('222401', '延吉市', '222400');
INSERT INTO `provinces` VALUES ('222402', '图们市', '222400');
INSERT INTO `provinces` VALUES ('222403', '敦化市', '222400');
INSERT INTO `provinces` VALUES ('222404', '珲春市', '222400');
INSERT INTO `provinces` VALUES ('222405', '龙井市', '222400');
INSERT INTO `provinces` VALUES ('222406', '和龙市', '222400');
INSERT INTO `provinces` VALUES ('222424', '汪清县', '222400');
INSERT INTO `provinces` VALUES ('222426', '安图县', '222400');
INSERT INTO `provinces` VALUES ('230000', '黑龙江省', '0');
INSERT INTO `provinces` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `provinces` VALUES ('230101', '市辖区', '230100');
INSERT INTO `provinces` VALUES ('230102', '道里区', '230100');
INSERT INTO `provinces` VALUES ('230103', '南岗区', '230100');
INSERT INTO `provinces` VALUES ('230104', '道外区', '230100');
INSERT INTO `provinces` VALUES ('230108', '平房区', '230100');
INSERT INTO `provinces` VALUES ('230109', '松北区', '230100');
INSERT INTO `provinces` VALUES ('230110', '香坊区', '230100');
INSERT INTO `provinces` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `provinces` VALUES ('230112', '阿城区', '230100');
INSERT INTO `provinces` VALUES ('230113', '双城区', '230100');
INSERT INTO `provinces` VALUES ('230123', '依兰县', '230100');
INSERT INTO `provinces` VALUES ('230124', '方正县', '230100');
INSERT INTO `provinces` VALUES ('230125', '宾县', '230100');
INSERT INTO `provinces` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `provinces` VALUES ('230127', '木兰县', '230100');
INSERT INTO `provinces` VALUES ('230128', '通河县', '230100');
INSERT INTO `provinces` VALUES ('230129', '延寿县', '230100');
INSERT INTO `provinces` VALUES ('230183', '尚志市', '230100');
INSERT INTO `provinces` VALUES ('230184', '五常市', '230100');
INSERT INTO `provinces` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `provinces` VALUES ('230201', '市辖区', '230200');
INSERT INTO `provinces` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `provinces` VALUES ('230203', '建华区', '230200');
INSERT INTO `provinces` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `provinces` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `provinces` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `provinces` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `provinces` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `provinces` VALUES ('230221', '龙江县', '230200');
INSERT INTO `provinces` VALUES ('230223', '依安县', '230200');
INSERT INTO `provinces` VALUES ('230224', '泰来县', '230200');
INSERT INTO `provinces` VALUES ('230225', '甘南县', '230200');
INSERT INTO `provinces` VALUES ('230227', '富裕县', '230200');
INSERT INTO `provinces` VALUES ('230229', '克山县', '230200');
INSERT INTO `provinces` VALUES ('230230', '克东县', '230200');
INSERT INTO `provinces` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `provinces` VALUES ('230281', '讷河市', '230200');
INSERT INTO `provinces` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `provinces` VALUES ('230301', '市辖区', '230300');
INSERT INTO `provinces` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `provinces` VALUES ('230303', '恒山区', '230300');
INSERT INTO `provinces` VALUES ('230304', '滴道区', '230300');
INSERT INTO `provinces` VALUES ('230305', '梨树区', '230300');
INSERT INTO `provinces` VALUES ('230306', '城子河区', '230300');
INSERT INTO `provinces` VALUES ('230307', '麻山区', '230300');
INSERT INTO `provinces` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `provinces` VALUES ('230381', '虎林市', '230300');
INSERT INTO `provinces` VALUES ('230382', '密山市', '230300');
INSERT INTO `provinces` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `provinces` VALUES ('230401', '市辖区', '230400');
INSERT INTO `provinces` VALUES ('230402', '向阳区', '230400');
INSERT INTO `provinces` VALUES ('230403', '工农区', '230400');
INSERT INTO `provinces` VALUES ('230404', '南山区', '230400');
INSERT INTO `provinces` VALUES ('230405', '兴安区', '230400');
INSERT INTO `provinces` VALUES ('230406', '东山区', '230400');
INSERT INTO `provinces` VALUES ('230407', '兴山区', '230400');
INSERT INTO `provinces` VALUES ('230421', '萝北县', '230400');
INSERT INTO `provinces` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `provinces` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `provinces` VALUES ('230501', '市辖区', '230500');
INSERT INTO `provinces` VALUES ('230502', '尖山区', '230500');
INSERT INTO `provinces` VALUES ('230503', '岭东区', '230500');
INSERT INTO `provinces` VALUES ('230505', '四方台区', '230500');
INSERT INTO `provinces` VALUES ('230506', '宝山区', '230500');
INSERT INTO `provinces` VALUES ('230521', '集贤县', '230500');
INSERT INTO `provinces` VALUES ('230522', '友谊县', '230500');
INSERT INTO `provinces` VALUES ('230523', '宝清县', '230500');
INSERT INTO `provinces` VALUES ('230524', '饶河县', '230500');
INSERT INTO `provinces` VALUES ('230600', '大庆市', '230000');
INSERT INTO `provinces` VALUES ('230601', '市辖区', '230600');
INSERT INTO `provinces` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `provinces` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `provinces` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `provinces` VALUES ('230605', '红岗区', '230600');
INSERT INTO `provinces` VALUES ('230606', '大同区', '230600');
INSERT INTO `provinces` VALUES ('230621', '肇州县', '230600');
INSERT INTO `provinces` VALUES ('230622', '肇源县', '230600');
INSERT INTO `provinces` VALUES ('230623', '林甸县', '230600');
INSERT INTO `provinces` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `provinces` VALUES ('230700', '伊春市', '230000');
INSERT INTO `provinces` VALUES ('230701', '市辖区', '230700');
INSERT INTO `provinces` VALUES ('230702', '伊春区', '230700');
INSERT INTO `provinces` VALUES ('230703', '南岔区', '230700');
INSERT INTO `provinces` VALUES ('230704', '友好区', '230700');
INSERT INTO `provinces` VALUES ('230705', '西林区', '230700');
INSERT INTO `provinces` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `provinces` VALUES ('230707', '新青区', '230700');
INSERT INTO `provinces` VALUES ('230708', '美溪区', '230700');
INSERT INTO `provinces` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `provinces` VALUES ('230710', '五营区', '230700');
INSERT INTO `provinces` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `provinces` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `provinces` VALUES ('230713', '带岭区', '230700');
INSERT INTO `provinces` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `provinces` VALUES ('230715', '红星区', '230700');
INSERT INTO `provinces` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `provinces` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `provinces` VALUES ('230781', '铁力市', '230700');
INSERT INTO `provinces` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `provinces` VALUES ('230801', '市辖区', '230800');
INSERT INTO `provinces` VALUES ('230803', '向阳区', '230800');
INSERT INTO `provinces` VALUES ('230804', '前进区', '230800');
INSERT INTO `provinces` VALUES ('230805', '东风区', '230800');
INSERT INTO `provinces` VALUES ('230811', '郊区', '230800');
INSERT INTO `provinces` VALUES ('230822', '桦南县', '230800');
INSERT INTO `provinces` VALUES ('230826', '桦川县', '230800');
INSERT INTO `provinces` VALUES ('230828', '汤原县', '230800');
INSERT INTO `provinces` VALUES ('230881', '同江市', '230800');
INSERT INTO `provinces` VALUES ('230882', '富锦市', '230800');
INSERT INTO `provinces` VALUES ('230883', '抚远市', '230800');
INSERT INTO `provinces` VALUES ('230900', '七台河市', '230000');
INSERT INTO `provinces` VALUES ('230901', '市辖区', '230900');
INSERT INTO `provinces` VALUES ('230902', '新兴区', '230900');
INSERT INTO `provinces` VALUES ('230903', '桃山区', '230900');
INSERT INTO `provinces` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `provinces` VALUES ('230921', '勃利县', '230900');
INSERT INTO `provinces` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `provinces` VALUES ('231001', '市辖区', '231000');
INSERT INTO `provinces` VALUES ('231002', '东安区', '231000');
INSERT INTO `provinces` VALUES ('231003', '阳明区', '231000');
INSERT INTO `provinces` VALUES ('231004', '爱民区', '231000');
INSERT INTO `provinces` VALUES ('231005', '西安区', '231000');
INSERT INTO `provinces` VALUES ('231025', '林口县', '231000');
INSERT INTO `provinces` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `provinces` VALUES ('231083', '海林市', '231000');
INSERT INTO `provinces` VALUES ('231084', '宁安市', '231000');
INSERT INTO `provinces` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `provinces` VALUES ('231086', '东宁市', '231000');
INSERT INTO `provinces` VALUES ('231100', '黑河市', '230000');
INSERT INTO `provinces` VALUES ('231101', '市辖区', '231100');
INSERT INTO `provinces` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `provinces` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `provinces` VALUES ('231123', '逊克县', '231100');
INSERT INTO `provinces` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `provinces` VALUES ('231181', '北安市', '231100');
INSERT INTO `provinces` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `provinces` VALUES ('231200', '绥化市', '230000');
INSERT INTO `provinces` VALUES ('231201', '市辖区', '231200');
INSERT INTO `provinces` VALUES ('231202', '北林区', '231200');
INSERT INTO `provinces` VALUES ('231221', '望奎县', '231200');
INSERT INTO `provinces` VALUES ('231222', '兰西县', '231200');
INSERT INTO `provinces` VALUES ('231223', '青冈县', '231200');
INSERT INTO `provinces` VALUES ('231224', '庆安县', '231200');
INSERT INTO `provinces` VALUES ('231225', '明水县', '231200');
INSERT INTO `provinces` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `provinces` VALUES ('231281', '安达市', '231200');
INSERT INTO `provinces` VALUES ('231282', '肇东市', '231200');
INSERT INTO `provinces` VALUES ('231283', '海伦市', '231200');
INSERT INTO `provinces` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `provinces` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `provinces` VALUES ('232722', '塔河县', '232700');
INSERT INTO `provinces` VALUES ('232723', '漠河县', '232700');
INSERT INTO `provinces` VALUES ('310000', '上海市', '0');
INSERT INTO `provinces` VALUES ('310100', '市辖区', '310000');
INSERT INTO `provinces` VALUES ('310101', '黄浦区', '310100');
INSERT INTO `provinces` VALUES ('310104', '徐汇区', '310100');
INSERT INTO `provinces` VALUES ('310105', '长宁区', '310100');
INSERT INTO `provinces` VALUES ('310106', '静安区', '310100');
INSERT INTO `provinces` VALUES ('310107', '普陀区', '310100');
INSERT INTO `provinces` VALUES ('310109', '虹口区', '310100');
INSERT INTO `provinces` VALUES ('310110', '杨浦区', '310100');
INSERT INTO `provinces` VALUES ('310112', '闵行区', '310100');
INSERT INTO `provinces` VALUES ('310113', '宝山区', '310100');
INSERT INTO `provinces` VALUES ('310114', '嘉定区', '310100');
INSERT INTO `provinces` VALUES ('310115', '浦东新区', '310100');
INSERT INTO `provinces` VALUES ('310116', '金山区', '310100');
INSERT INTO `provinces` VALUES ('310117', '松江区', '310100');
INSERT INTO `provinces` VALUES ('310118', '青浦区', '310100');
INSERT INTO `provinces` VALUES ('310120', '奉贤区', '310100');
INSERT INTO `provinces` VALUES ('310151', '崇明区', '310100');
INSERT INTO `provinces` VALUES ('320000', '江苏省', '0');
INSERT INTO `provinces` VALUES ('320100', '南京市', '320000');
INSERT INTO `provinces` VALUES ('320101', '市辖区', '320100');
INSERT INTO `provinces` VALUES ('320102', '玄武区', '320100');
INSERT INTO `provinces` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `provinces` VALUES ('320105', '建邺区', '320100');
INSERT INTO `provinces` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `provinces` VALUES ('320111', '浦口区', '320100');
INSERT INTO `provinces` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `provinces` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `provinces` VALUES ('320115', '江宁区', '320100');
INSERT INTO `provinces` VALUES ('320116', '六合区', '320100');
INSERT INTO `provinces` VALUES ('320117', '溧水区', '320100');
INSERT INTO `provinces` VALUES ('320118', '高淳区', '320100');
INSERT INTO `provinces` VALUES ('320200', '无锡市', '320000');
INSERT INTO `provinces` VALUES ('320201', '市辖区', '320200');
INSERT INTO `provinces` VALUES ('320205', '锡山区', '320200');
INSERT INTO `provinces` VALUES ('320206', '惠山区', '320200');
INSERT INTO `provinces` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `provinces` VALUES ('320213', '梁溪区', '320200');
INSERT INTO `provinces` VALUES ('320214', '新吴区', '320200');
INSERT INTO `provinces` VALUES ('320281', '江阴市', '320200');
INSERT INTO `provinces` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `provinces` VALUES ('320300', '徐州市', '320000');
INSERT INTO `provinces` VALUES ('320301', '市辖区', '320300');
INSERT INTO `provinces` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `provinces` VALUES ('320303', '云龙区', '320300');
INSERT INTO `provinces` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `provinces` VALUES ('320311', '泉山区', '320300');
INSERT INTO `provinces` VALUES ('320312', '铜山区', '320300');
INSERT INTO `provinces` VALUES ('320321', '丰县', '320300');
INSERT INTO `provinces` VALUES ('320322', '沛县', '320300');
INSERT INTO `provinces` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `provinces` VALUES ('320381', '新沂市', '320300');
INSERT INTO `provinces` VALUES ('320382', '邳州市', '320300');
INSERT INTO `provinces` VALUES ('320400', '常州市', '320000');
INSERT INTO `provinces` VALUES ('320401', '市辖区', '320400');
INSERT INTO `provinces` VALUES ('320402', '天宁区', '320400');
INSERT INTO `provinces` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `provinces` VALUES ('320411', '新北区', '320400');
INSERT INTO `provinces` VALUES ('320412', '武进区', '320400');
INSERT INTO `provinces` VALUES ('320413', '金坛区', '320400');
INSERT INTO `provinces` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `provinces` VALUES ('320500', '苏州市', '320000');
INSERT INTO `provinces` VALUES ('320501', '市辖区', '320500');
INSERT INTO `provinces` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `provinces` VALUES ('320506', '吴中区', '320500');
INSERT INTO `provinces` VALUES ('320507', '相城区', '320500');
INSERT INTO `provinces` VALUES ('320508', '姑苏区', '320500');
INSERT INTO `provinces` VALUES ('320509', '吴江区', '320500');
INSERT INTO `provinces` VALUES ('320581', '常熟市', '320500');
INSERT INTO `provinces` VALUES ('320582', '张家港市', '320500');
INSERT INTO `provinces` VALUES ('320583', '昆山市', '320500');
INSERT INTO `provinces` VALUES ('320585', '太仓市', '320500');
INSERT INTO `provinces` VALUES ('320600', '南通市', '320000');
INSERT INTO `provinces` VALUES ('320601', '市辖区', '320600');
INSERT INTO `provinces` VALUES ('320602', '崇川区', '320600');
INSERT INTO `provinces` VALUES ('320611', '港闸区', '320600');
INSERT INTO `provinces` VALUES ('320612', '通州区', '320600');
INSERT INTO `provinces` VALUES ('320621', '海安县', '320600');
INSERT INTO `provinces` VALUES ('320623', '如东县', '320600');
INSERT INTO `provinces` VALUES ('320681', '启东市', '320600');
INSERT INTO `provinces` VALUES ('320682', '如皋市', '320600');
INSERT INTO `provinces` VALUES ('320684', '海门市', '320600');
INSERT INTO `provinces` VALUES ('320700', '连云港市', '320000');
INSERT INTO `provinces` VALUES ('320701', '市辖区', '320700');
INSERT INTO `provinces` VALUES ('320703', '连云区', '320700');
INSERT INTO `provinces` VALUES ('320706', '海州区', '320700');
INSERT INTO `provinces` VALUES ('320707', '赣榆区', '320700');
INSERT INTO `provinces` VALUES ('320722', '东海县', '320700');
INSERT INTO `provinces` VALUES ('320723', '灌云县', '320700');
INSERT INTO `provinces` VALUES ('320724', '灌南县', '320700');
INSERT INTO `provinces` VALUES ('320800', '淮安市', '320000');
INSERT INTO `provinces` VALUES ('320801', '市辖区', '320800');
INSERT INTO `provinces` VALUES ('320803', '淮安区', '320800');
INSERT INTO `provinces` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `provinces` VALUES ('320812', '清江浦区', '320800');
INSERT INTO `provinces` VALUES ('320813', '洪泽区', '320800');
INSERT INTO `provinces` VALUES ('320826', '涟水县', '320800');
INSERT INTO `provinces` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `provinces` VALUES ('320831', '金湖县', '320800');
INSERT INTO `provinces` VALUES ('320900', '盐城市', '320000');
INSERT INTO `provinces` VALUES ('320901', '市辖区', '320900');
INSERT INTO `provinces` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `provinces` VALUES ('320903', '盐都区', '320900');
INSERT INTO `provinces` VALUES ('320904', '大丰区', '320900');
INSERT INTO `provinces` VALUES ('320921', '响水县', '320900');
INSERT INTO `provinces` VALUES ('320922', '滨海县', '320900');
INSERT INTO `provinces` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `provinces` VALUES ('320924', '射阳县', '320900');
INSERT INTO `provinces` VALUES ('320925', '建湖县', '320900');
INSERT INTO `provinces` VALUES ('320981', '东台市', '320900');
INSERT INTO `provinces` VALUES ('321000', '扬州市', '320000');
INSERT INTO `provinces` VALUES ('321001', '市辖区', '321000');
INSERT INTO `provinces` VALUES ('321002', '广陵区', '321000');
INSERT INTO `provinces` VALUES ('321003', '邗江区', '321000');
INSERT INTO `provinces` VALUES ('321012', '江都区', '321000');
INSERT INTO `provinces` VALUES ('321023', '宝应县', '321000');
INSERT INTO `provinces` VALUES ('321081', '仪征市', '321000');
INSERT INTO `provinces` VALUES ('321084', '高邮市', '321000');
INSERT INTO `provinces` VALUES ('321100', '镇江市', '320000');
INSERT INTO `provinces` VALUES ('321101', '市辖区', '321100');
INSERT INTO `provinces` VALUES ('321102', '京口区', '321100');
INSERT INTO `provinces` VALUES ('321111', '润州区', '321100');
INSERT INTO `provinces` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `provinces` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `provinces` VALUES ('321182', '扬中市', '321100');
INSERT INTO `provinces` VALUES ('321183', '句容市', '321100');
INSERT INTO `provinces` VALUES ('321200', '泰州市', '320000');
INSERT INTO `provinces` VALUES ('321201', '市辖区', '321200');
INSERT INTO `provinces` VALUES ('321202', '海陵区', '321200');
INSERT INTO `provinces` VALUES ('321203', '高港区', '321200');
INSERT INTO `provinces` VALUES ('321204', '姜堰区', '321200');
INSERT INTO `provinces` VALUES ('321281', '兴化市', '321200');
INSERT INTO `provinces` VALUES ('321282', '靖江市', '321200');
INSERT INTO `provinces` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `provinces` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `provinces` VALUES ('321301', '市辖区', '321300');
INSERT INTO `provinces` VALUES ('321302', '宿城区', '321300');
INSERT INTO `provinces` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `provinces` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `provinces` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `provinces` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `provinces` VALUES ('330000', '浙江省', '0');
INSERT INTO `provinces` VALUES ('330100', '杭州市', '330000');
INSERT INTO `provinces` VALUES ('330101', '市辖区', '330100');
INSERT INTO `provinces` VALUES ('330102', '上城区', '330100');
INSERT INTO `provinces` VALUES ('330103', '下城区', '330100');
INSERT INTO `provinces` VALUES ('330104', '江干区', '330100');
INSERT INTO `provinces` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `provinces` VALUES ('330106', '西湖区', '330100');
INSERT INTO `provinces` VALUES ('330108', '滨江区', '330100');
INSERT INTO `provinces` VALUES ('330109', '萧山区', '330100');
INSERT INTO `provinces` VALUES ('330110', '余杭区', '330100');
INSERT INTO `provinces` VALUES ('330111', '富阳区', '330100');
INSERT INTO `provinces` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `provinces` VALUES ('330127', '淳安县', '330100');
INSERT INTO `provinces` VALUES ('330182', '建德市', '330100');
INSERT INTO `provinces` VALUES ('330185', '临安市', '330100');
INSERT INTO `provinces` VALUES ('330200', '宁波市', '330000');
INSERT INTO `provinces` VALUES ('330201', '市辖区', '330200');
INSERT INTO `provinces` VALUES ('330203', '海曙区', '330200');
INSERT INTO `provinces` VALUES ('330204', '江东区', '330200');
INSERT INTO `provinces` VALUES ('330205', '江北区', '330200');
INSERT INTO `provinces` VALUES ('330206', '北仑区', '330200');
INSERT INTO `provinces` VALUES ('330211', '镇海区', '330200');
INSERT INTO `provinces` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `provinces` VALUES ('330225', '象山县', '330200');
INSERT INTO `provinces` VALUES ('330226', '宁海县', '330200');
INSERT INTO `provinces` VALUES ('330281', '余姚市', '330200');
INSERT INTO `provinces` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `provinces` VALUES ('330283', '奉化市', '330200');
INSERT INTO `provinces` VALUES ('330300', '温州市', '330000');
INSERT INTO `provinces` VALUES ('330301', '市辖区', '330300');
INSERT INTO `provinces` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `provinces` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `provinces` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `provinces` VALUES ('330305', '洞头区', '330300');
INSERT INTO `provinces` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `provinces` VALUES ('330326', '平阳县', '330300');
INSERT INTO `provinces` VALUES ('330327', '苍南县', '330300');
INSERT INTO `provinces` VALUES ('330328', '文成县', '330300');
INSERT INTO `provinces` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `provinces` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `provinces` VALUES ('330382', '乐清市', '330300');
INSERT INTO `provinces` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `provinces` VALUES ('330401', '市辖区', '330400');
INSERT INTO `provinces` VALUES ('330402', '南湖区', '330400');
INSERT INTO `provinces` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `provinces` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `provinces` VALUES ('330424', '海盐县', '330400');
INSERT INTO `provinces` VALUES ('330481', '海宁市', '330400');
INSERT INTO `provinces` VALUES ('330482', '平湖市', '330400');
INSERT INTO `provinces` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `provinces` VALUES ('330500', '湖州市', '330000');
INSERT INTO `provinces` VALUES ('330501', '市辖区', '330500');
INSERT INTO `provinces` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `provinces` VALUES ('330503', '南浔区', '330500');
INSERT INTO `provinces` VALUES ('330521', '德清县', '330500');
INSERT INTO `provinces` VALUES ('330522', '长兴县', '330500');
INSERT INTO `provinces` VALUES ('330523', '安吉县', '330500');
INSERT INTO `provinces` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `provinces` VALUES ('330601', '市辖区', '330600');
INSERT INTO `provinces` VALUES ('330602', '越城区', '330600');
INSERT INTO `provinces` VALUES ('330603', '柯桥区', '330600');
INSERT INTO `provinces` VALUES ('330604', '上虞区', '330600');
INSERT INTO `provinces` VALUES ('330624', '新昌县', '330600');
INSERT INTO `provinces` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `provinces` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `provinces` VALUES ('330700', '金华市', '330000');
INSERT INTO `provinces` VALUES ('330701', '市辖区', '330700');
INSERT INTO `provinces` VALUES ('330702', '婺城区', '330700');
INSERT INTO `provinces` VALUES ('330703', '金东区', '330700');
INSERT INTO `provinces` VALUES ('330723', '武义县', '330700');
INSERT INTO `provinces` VALUES ('330726', '浦江县', '330700');
INSERT INTO `provinces` VALUES ('330727', '磐安县', '330700');
INSERT INTO `provinces` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `provinces` VALUES ('330782', '义乌市', '330700');
INSERT INTO `provinces` VALUES ('330783', '东阳市', '330700');
INSERT INTO `provinces` VALUES ('330784', '永康市', '330700');
INSERT INTO `provinces` VALUES ('330800', '衢州市', '330000');
INSERT INTO `provinces` VALUES ('330801', '市辖区', '330800');
INSERT INTO `provinces` VALUES ('330802', '柯城区', '330800');
INSERT INTO `provinces` VALUES ('330803', '衢江区', '330800');
INSERT INTO `provinces` VALUES ('330822', '常山县', '330800');
INSERT INTO `provinces` VALUES ('330824', '开化县', '330800');
INSERT INTO `provinces` VALUES ('330825', '龙游县', '330800');
INSERT INTO `provinces` VALUES ('330881', '江山市', '330800');
INSERT INTO `provinces` VALUES ('330900', '舟山市', '330000');
INSERT INTO `provinces` VALUES ('330901', '市辖区', '330900');
INSERT INTO `provinces` VALUES ('330902', '定海区', '330900');
INSERT INTO `provinces` VALUES ('330903', '普陀区', '330900');
INSERT INTO `provinces` VALUES ('330921', '岱山县', '330900');
INSERT INTO `provinces` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `provinces` VALUES ('331000', '台州市', '330000');
INSERT INTO `provinces` VALUES ('331001', '市辖区', '331000');
INSERT INTO `provinces` VALUES ('331002', '椒江区', '331000');
INSERT INTO `provinces` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `provinces` VALUES ('331004', '路桥区', '331000');
INSERT INTO `provinces` VALUES ('331021', '玉环县', '331000');
INSERT INTO `provinces` VALUES ('331022', '三门县', '331000');
INSERT INTO `provinces` VALUES ('331023', '天台县', '331000');
INSERT INTO `provinces` VALUES ('331024', '仙居县', '331000');
INSERT INTO `provinces` VALUES ('331081', '温岭市', '331000');
INSERT INTO `provinces` VALUES ('331082', '临海市', '331000');
INSERT INTO `provinces` VALUES ('331100', '丽水市', '330000');
INSERT INTO `provinces` VALUES ('331101', '市辖区', '331100');
INSERT INTO `provinces` VALUES ('331102', '莲都区', '331100');
INSERT INTO `provinces` VALUES ('331121', '青田县', '331100');
INSERT INTO `provinces` VALUES ('331122', '缙云县', '331100');
INSERT INTO `provinces` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `provinces` VALUES ('331124', '松阳县', '331100');
INSERT INTO `provinces` VALUES ('331125', '云和县', '331100');
INSERT INTO `provinces` VALUES ('331126', '庆元县', '331100');
INSERT INTO `provinces` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `provinces` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `provinces` VALUES ('340000', '安徽省', '0');
INSERT INTO `provinces` VALUES ('340100', '合肥市', '340000');
INSERT INTO `provinces` VALUES ('340101', '市辖区', '340100');
INSERT INTO `provinces` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `provinces` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `provinces` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `provinces` VALUES ('340111', '包河区', '340100');
INSERT INTO `provinces` VALUES ('340121', '长丰县', '340100');
INSERT INTO `provinces` VALUES ('340122', '肥东县', '340100');
INSERT INTO `provinces` VALUES ('340123', '肥西县', '340100');
INSERT INTO `provinces` VALUES ('340124', '庐江县', '340100');
INSERT INTO `provinces` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `provinces` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `provinces` VALUES ('340201', '市辖区', '340200');
INSERT INTO `provinces` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `provinces` VALUES ('340203', '弋江区', '340200');
INSERT INTO `provinces` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `provinces` VALUES ('340208', '三山区', '340200');
INSERT INTO `provinces` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `provinces` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `provinces` VALUES ('340223', '南陵县', '340200');
INSERT INTO `provinces` VALUES ('340225', '无为县', '340200');
INSERT INTO `provinces` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `provinces` VALUES ('340301', '市辖区', '340300');
INSERT INTO `provinces` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `provinces` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `provinces` VALUES ('340304', '禹会区', '340300');
INSERT INTO `provinces` VALUES ('340311', '淮上区', '340300');
INSERT INTO `provinces` VALUES ('340321', '怀远县', '340300');
INSERT INTO `provinces` VALUES ('340322', '五河县', '340300');
INSERT INTO `provinces` VALUES ('340323', '固镇县', '340300');
INSERT INTO `provinces` VALUES ('340400', '淮南市', '340000');
INSERT INTO `provinces` VALUES ('340401', '市辖区', '340400');
INSERT INTO `provinces` VALUES ('340402', '大通区', '340400');
INSERT INTO `provinces` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `provinces` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `provinces` VALUES ('340405', '八公山区', '340400');
INSERT INTO `provinces` VALUES ('340406', '潘集区', '340400');
INSERT INTO `provinces` VALUES ('340421', '凤台县', '340400');
INSERT INTO `provinces` VALUES ('340422', '寿县', '340400');
INSERT INTO `provinces` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `provinces` VALUES ('340501', '市辖区', '340500');
INSERT INTO `provinces` VALUES ('340503', '花山区', '340500');
INSERT INTO `provinces` VALUES ('340504', '雨山区', '340500');
INSERT INTO `provinces` VALUES ('340506', '博望区', '340500');
INSERT INTO `provinces` VALUES ('340521', '当涂县', '340500');
INSERT INTO `provinces` VALUES ('340522', '含山县', '340500');
INSERT INTO `provinces` VALUES ('340523', '和县', '340500');
INSERT INTO `provinces` VALUES ('340600', '淮北市', '340000');
INSERT INTO `provinces` VALUES ('340601', '市辖区', '340600');
INSERT INTO `provinces` VALUES ('340602', '杜集区', '340600');
INSERT INTO `provinces` VALUES ('340603', '相山区', '340600');
INSERT INTO `provinces` VALUES ('340604', '烈山区', '340600');
INSERT INTO `provinces` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `provinces` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `provinces` VALUES ('340701', '市辖区', '340700');
INSERT INTO `provinces` VALUES ('340705', '铜官区', '340700');
INSERT INTO `provinces` VALUES ('340706', '义安区', '340700');
INSERT INTO `provinces` VALUES ('340711', '郊区', '340700');
INSERT INTO `provinces` VALUES ('340722', '枞阳县', '340700');
INSERT INTO `provinces` VALUES ('340800', '安庆市', '340000');
INSERT INTO `provinces` VALUES ('340801', '市辖区', '340800');
INSERT INTO `provinces` VALUES ('340802', '迎江区', '340800');
INSERT INTO `provinces` VALUES ('340803', '大观区', '340800');
INSERT INTO `provinces` VALUES ('340811', '宜秀区', '340800');
INSERT INTO `provinces` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `provinces` VALUES ('340824', '潜山县', '340800');
INSERT INTO `provinces` VALUES ('340825', '太湖县', '340800');
INSERT INTO `provinces` VALUES ('340826', '宿松县', '340800');
INSERT INTO `provinces` VALUES ('340827', '望江县', '340800');
INSERT INTO `provinces` VALUES ('340828', '岳西县', '340800');
INSERT INTO `provinces` VALUES ('340881', '桐城市', '340800');
INSERT INTO `provinces` VALUES ('341000', '黄山市', '340000');
INSERT INTO `provinces` VALUES ('341001', '市辖区', '341000');
INSERT INTO `provinces` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `provinces` VALUES ('341003', '黄山区', '341000');
INSERT INTO `provinces` VALUES ('341004', '徽州区', '341000');
INSERT INTO `provinces` VALUES ('341021', '歙县', '341000');
INSERT INTO `provinces` VALUES ('341022', '休宁县', '341000');
INSERT INTO `provinces` VALUES ('341023', '黟县', '341000');
INSERT INTO `provinces` VALUES ('341024', '祁门县', '341000');
INSERT INTO `provinces` VALUES ('341100', '滁州市', '340000');
INSERT INTO `provinces` VALUES ('341101', '市辖区', '341100');
INSERT INTO `provinces` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `provinces` VALUES ('341103', '南谯区', '341100');
INSERT INTO `provinces` VALUES ('341122', '来安县', '341100');
INSERT INTO `provinces` VALUES ('341124', '全椒县', '341100');
INSERT INTO `provinces` VALUES ('341125', '定远县', '341100');
INSERT INTO `provinces` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `provinces` VALUES ('341181', '天长市', '341100');
INSERT INTO `provinces` VALUES ('341182', '明光市', '341100');
INSERT INTO `provinces` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `provinces` VALUES ('341201', '市辖区', '341200');
INSERT INTO `provinces` VALUES ('341202', '颍州区', '341200');
INSERT INTO `provinces` VALUES ('341203', '颍东区', '341200');
INSERT INTO `provinces` VALUES ('341204', '颍泉区', '341200');
INSERT INTO `provinces` VALUES ('341221', '临泉县', '341200');
INSERT INTO `provinces` VALUES ('341222', '太和县', '341200');
INSERT INTO `provinces` VALUES ('341225', '阜南县', '341200');
INSERT INTO `provinces` VALUES ('341226', '颍上县', '341200');
INSERT INTO `provinces` VALUES ('341282', '界首市', '341200');
INSERT INTO `provinces` VALUES ('341300', '宿州市', '340000');
INSERT INTO `provinces` VALUES ('341301', '市辖区', '341300');
INSERT INTO `provinces` VALUES ('341302', '埇桥区', '341300');
INSERT INTO `provinces` VALUES ('341321', '砀山县', '341300');
INSERT INTO `provinces` VALUES ('341322', '萧县', '341300');
INSERT INTO `provinces` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `provinces` VALUES ('341324', '泗县', '341300');
INSERT INTO `provinces` VALUES ('341500', '六安市', '340000');
INSERT INTO `provinces` VALUES ('341501', '市辖区', '341500');
INSERT INTO `provinces` VALUES ('341502', '金安区', '341500');
INSERT INTO `provinces` VALUES ('341503', '裕安区', '341500');
INSERT INTO `provinces` VALUES ('341504', '叶集区', '341500');
INSERT INTO `provinces` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `provinces` VALUES ('341523', '舒城县', '341500');
INSERT INTO `provinces` VALUES ('341524', '金寨县', '341500');
INSERT INTO `provinces` VALUES ('341525', '霍山县', '341500');
INSERT INTO `provinces` VALUES ('341600', '亳州市', '340000');
INSERT INTO `provinces` VALUES ('341601', '市辖区', '341600');
INSERT INTO `provinces` VALUES ('341602', '谯城区', '341600');
INSERT INTO `provinces` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `provinces` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `provinces` VALUES ('341623', '利辛县', '341600');
INSERT INTO `provinces` VALUES ('341700', '池州市', '340000');
INSERT INTO `provinces` VALUES ('341701', '市辖区', '341700');
INSERT INTO `provinces` VALUES ('341702', '贵池区', '341700');
INSERT INTO `provinces` VALUES ('341721', '东至县', '341700');
INSERT INTO `provinces` VALUES ('341722', '石台县', '341700');
INSERT INTO `provinces` VALUES ('341723', '青阳县', '341700');
INSERT INTO `provinces` VALUES ('341800', '宣城市', '340000');
INSERT INTO `provinces` VALUES ('341801', '市辖区', '341800');
INSERT INTO `provinces` VALUES ('341802', '宣州区', '341800');
INSERT INTO `provinces` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `provinces` VALUES ('341822', '广德县', '341800');
INSERT INTO `provinces` VALUES ('341823', '泾县', '341800');
INSERT INTO `provinces` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `provinces` VALUES ('341825', '旌德县', '341800');
INSERT INTO `provinces` VALUES ('341881', '宁国市', '341800');
INSERT INTO `provinces` VALUES ('350000', '福建省', '0');
INSERT INTO `provinces` VALUES ('350100', '福州市', '350000');
INSERT INTO `provinces` VALUES ('350101', '市辖区', '350100');
INSERT INTO `provinces` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `provinces` VALUES ('350103', '台江区', '350100');
INSERT INTO `provinces` VALUES ('350104', '仓山区', '350100');
INSERT INTO `provinces` VALUES ('350105', '马尾区', '350100');
INSERT INTO `provinces` VALUES ('350111', '晋安区', '350100');
INSERT INTO `provinces` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `provinces` VALUES ('350122', '连江县', '350100');
INSERT INTO `provinces` VALUES ('350123', '罗源县', '350100');
INSERT INTO `provinces` VALUES ('350124', '闽清县', '350100');
INSERT INTO `provinces` VALUES ('350125', '永泰县', '350100');
INSERT INTO `provinces` VALUES ('350128', '平潭县', '350100');
INSERT INTO `provinces` VALUES ('350181', '福清市', '350100');
INSERT INTO `provinces` VALUES ('350182', '长乐市', '350100');
INSERT INTO `provinces` VALUES ('350200', '厦门市', '350000');
INSERT INTO `provinces` VALUES ('350201', '市辖区', '350200');
INSERT INTO `provinces` VALUES ('350203', '思明区', '350200');
INSERT INTO `provinces` VALUES ('350205', '海沧区', '350200');
INSERT INTO `provinces` VALUES ('350206', '湖里区', '350200');
INSERT INTO `provinces` VALUES ('350211', '集美区', '350200');
INSERT INTO `provinces` VALUES ('350212', '同安区', '350200');
INSERT INTO `provinces` VALUES ('350213', '翔安区', '350200');
INSERT INTO `provinces` VALUES ('350300', '莆田市', '350000');
INSERT INTO `provinces` VALUES ('350301', '市辖区', '350300');
INSERT INTO `provinces` VALUES ('350302', '城厢区', '350300');
INSERT INTO `provinces` VALUES ('350303', '涵江区', '350300');
INSERT INTO `provinces` VALUES ('350304', '荔城区', '350300');
INSERT INTO `provinces` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `provinces` VALUES ('350322', '仙游县', '350300');
INSERT INTO `provinces` VALUES ('350400', '三明市', '350000');
INSERT INTO `provinces` VALUES ('350401', '市辖区', '350400');
INSERT INTO `provinces` VALUES ('350402', '梅列区', '350400');
INSERT INTO `provinces` VALUES ('350403', '三元区', '350400');
INSERT INTO `provinces` VALUES ('350421', '明溪县', '350400');
INSERT INTO `provinces` VALUES ('350423', '清流县', '350400');
INSERT INTO `provinces` VALUES ('350424', '宁化县', '350400');
INSERT INTO `provinces` VALUES ('350425', '大田县', '350400');
INSERT INTO `provinces` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `provinces` VALUES ('350427', '沙县', '350400');
INSERT INTO `provinces` VALUES ('350428', '将乐县', '350400');
INSERT INTO `provinces` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `provinces` VALUES ('350430', '建宁县', '350400');
INSERT INTO `provinces` VALUES ('350481', '永安市', '350400');
INSERT INTO `provinces` VALUES ('350500', '泉州市', '350000');
INSERT INTO `provinces` VALUES ('350501', '市辖区', '350500');
INSERT INTO `provinces` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `provinces` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `provinces` VALUES ('350504', '洛江区', '350500');
INSERT INTO `provinces` VALUES ('350505', '泉港区', '350500');
INSERT INTO `provinces` VALUES ('350521', '惠安县', '350500');
INSERT INTO `provinces` VALUES ('350524', '安溪县', '350500');
INSERT INTO `provinces` VALUES ('350525', '永春县', '350500');
INSERT INTO `provinces` VALUES ('350526', '德化县', '350500');
INSERT INTO `provinces` VALUES ('350527', '金门县', '350500');
INSERT INTO `provinces` VALUES ('350581', '石狮市', '350500');
INSERT INTO `provinces` VALUES ('350582', '晋江市', '350500');
INSERT INTO `provinces` VALUES ('350583', '南安市', '350500');
INSERT INTO `provinces` VALUES ('350600', '漳州市', '350000');
INSERT INTO `provinces` VALUES ('350601', '市辖区', '350600');
INSERT INTO `provinces` VALUES ('350602', '芗城区', '350600');
INSERT INTO `provinces` VALUES ('350603', '龙文区', '350600');
INSERT INTO `provinces` VALUES ('350622', '云霄县', '350600');
INSERT INTO `provinces` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `provinces` VALUES ('350624', '诏安县', '350600');
INSERT INTO `provinces` VALUES ('350625', '长泰县', '350600');
INSERT INTO `provinces` VALUES ('350626', '东山县', '350600');
INSERT INTO `provinces` VALUES ('350627', '南靖县', '350600');
INSERT INTO `provinces` VALUES ('350628', '平和县', '350600');
INSERT INTO `provinces` VALUES ('350629', '华安县', '350600');
INSERT INTO `provinces` VALUES ('350681', '龙海市', '350600');
INSERT INTO `provinces` VALUES ('350700', '南平市', '350000');
INSERT INTO `provinces` VALUES ('350701', '市辖区', '350700');
INSERT INTO `provinces` VALUES ('350702', '延平区', '350700');
INSERT INTO `provinces` VALUES ('350703', '建阳区', '350700');
INSERT INTO `provinces` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `provinces` VALUES ('350722', '浦城县', '350700');
INSERT INTO `provinces` VALUES ('350723', '光泽县', '350700');
INSERT INTO `provinces` VALUES ('350724', '松溪县', '350700');
INSERT INTO `provinces` VALUES ('350725', '政和县', '350700');
INSERT INTO `provinces` VALUES ('350781', '邵武市', '350700');
INSERT INTO `provinces` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `provinces` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `provinces` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `provinces` VALUES ('350801', '市辖区', '350800');
INSERT INTO `provinces` VALUES ('350802', '新罗区', '350800');
INSERT INTO `provinces` VALUES ('350803', '永定区', '350800');
INSERT INTO `provinces` VALUES ('350821', '长汀县', '350800');
INSERT INTO `provinces` VALUES ('350823', '上杭县', '350800');
INSERT INTO `provinces` VALUES ('350824', '武平县', '350800');
INSERT INTO `provinces` VALUES ('350825', '连城县', '350800');
INSERT INTO `provinces` VALUES ('350881', '漳平市', '350800');
INSERT INTO `provinces` VALUES ('350900', '宁德市', '350000');
INSERT INTO `provinces` VALUES ('350901', '市辖区', '350900');
INSERT INTO `provinces` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `provinces` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `provinces` VALUES ('350922', '古田县', '350900');
INSERT INTO `provinces` VALUES ('350923', '屏南县', '350900');
INSERT INTO `provinces` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `provinces` VALUES ('350925', '周宁县', '350900');
INSERT INTO `provinces` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `provinces` VALUES ('350981', '福安市', '350900');
INSERT INTO `provinces` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `provinces` VALUES ('360000', '江西省', '0');
INSERT INTO `provinces` VALUES ('360100', '南昌市', '360000');
INSERT INTO `provinces` VALUES ('360101', '市辖区', '360100');
INSERT INTO `provinces` VALUES ('360102', '东湖区', '360100');
INSERT INTO `provinces` VALUES ('360103', '西湖区', '360100');
INSERT INTO `provinces` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `provinces` VALUES ('360105', '湾里区', '360100');
INSERT INTO `provinces` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `provinces` VALUES ('360112', '新建区', '360100');
INSERT INTO `provinces` VALUES ('360121', '南昌县', '360100');
INSERT INTO `provinces` VALUES ('360123', '安义县', '360100');
INSERT INTO `provinces` VALUES ('360124', '进贤县', '360100');
INSERT INTO `provinces` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `provinces` VALUES ('360201', '市辖区', '360200');
INSERT INTO `provinces` VALUES ('360202', '昌江区', '360200');
INSERT INTO `provinces` VALUES ('360203', '珠山区', '360200');
INSERT INTO `provinces` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `provinces` VALUES ('360281', '乐平市', '360200');
INSERT INTO `provinces` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `provinces` VALUES ('360301', '市辖区', '360300');
INSERT INTO `provinces` VALUES ('360302', '安源区', '360300');
INSERT INTO `provinces` VALUES ('360313', '湘东区', '360300');
INSERT INTO `provinces` VALUES ('360321', '莲花县', '360300');
INSERT INTO `provinces` VALUES ('360322', '上栗县', '360300');
INSERT INTO `provinces` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `provinces` VALUES ('360400', '九江市', '360000');
INSERT INTO `provinces` VALUES ('360401', '市辖区', '360400');
INSERT INTO `provinces` VALUES ('360402', '濂溪区', '360400');
INSERT INTO `provinces` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `provinces` VALUES ('360421', '九江县', '360400');
INSERT INTO `provinces` VALUES ('360423', '武宁县', '360400');
INSERT INTO `provinces` VALUES ('360424', '修水县', '360400');
INSERT INTO `provinces` VALUES ('360425', '永修县', '360400');
INSERT INTO `provinces` VALUES ('360426', '德安县', '360400');
INSERT INTO `provinces` VALUES ('360428', '都昌县', '360400');
INSERT INTO `provinces` VALUES ('360429', '湖口县', '360400');
INSERT INTO `provinces` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `provinces` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `provinces` VALUES ('360482', '共青城市', '360400');
INSERT INTO `provinces` VALUES ('360483', '庐山市', '360400');
INSERT INTO `provinces` VALUES ('360500', '新余市', '360000');
INSERT INTO `provinces` VALUES ('360501', '市辖区', '360500');
INSERT INTO `provinces` VALUES ('360502', '渝水区', '360500');
INSERT INTO `provinces` VALUES ('360521', '分宜县', '360500');
INSERT INTO `provinces` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `provinces` VALUES ('360601', '市辖区', '360600');
INSERT INTO `provinces` VALUES ('360602', '月湖区', '360600');
INSERT INTO `provinces` VALUES ('360622', '余江县', '360600');
INSERT INTO `provinces` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `provinces` VALUES ('360700', '赣州市', '360000');
INSERT INTO `provinces` VALUES ('360701', '市辖区', '360700');
INSERT INTO `provinces` VALUES ('360702', '章贡区', '360700');
INSERT INTO `provinces` VALUES ('360703', '南康区', '360700');
INSERT INTO `provinces` VALUES ('360721', '赣县', '360700');
INSERT INTO `provinces` VALUES ('360722', '信丰县', '360700');
INSERT INTO `provinces` VALUES ('360723', '大余县', '360700');
INSERT INTO `provinces` VALUES ('360724', '上犹县', '360700');
INSERT INTO `provinces` VALUES ('360725', '崇义县', '360700');
INSERT INTO `provinces` VALUES ('360726', '安远县', '360700');
INSERT INTO `provinces` VALUES ('360727', '龙南县', '360700');
INSERT INTO `provinces` VALUES ('360728', '定南县', '360700');
INSERT INTO `provinces` VALUES ('360729', '全南县', '360700');
INSERT INTO `provinces` VALUES ('360730', '宁都县', '360700');
INSERT INTO `provinces` VALUES ('360731', '于都县', '360700');
INSERT INTO `provinces` VALUES ('360732', '兴国县', '360700');
INSERT INTO `provinces` VALUES ('360733', '会昌县', '360700');
INSERT INTO `provinces` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `provinces` VALUES ('360735', '石城县', '360700');
INSERT INTO `provinces` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `provinces` VALUES ('360800', '吉安市', '360000');
INSERT INTO `provinces` VALUES ('360801', '市辖区', '360800');
INSERT INTO `provinces` VALUES ('360802', '吉州区', '360800');
INSERT INTO `provinces` VALUES ('360803', '青原区', '360800');
INSERT INTO `provinces` VALUES ('360821', '吉安县', '360800');
INSERT INTO `provinces` VALUES ('360822', '吉水县', '360800');
INSERT INTO `provinces` VALUES ('360823', '峡江县', '360800');
INSERT INTO `provinces` VALUES ('360824', '新干县', '360800');
INSERT INTO `provinces` VALUES ('360825', '永丰县', '360800');
INSERT INTO `provinces` VALUES ('360826', '泰和县', '360800');
INSERT INTO `provinces` VALUES ('360827', '遂川县', '360800');
INSERT INTO `provinces` VALUES ('360828', '万安县', '360800');
INSERT INTO `provinces` VALUES ('360829', '安福县', '360800');
INSERT INTO `provinces` VALUES ('360830', '永新县', '360800');
INSERT INTO `provinces` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `provinces` VALUES ('360900', '宜春市', '360000');
INSERT INTO `provinces` VALUES ('360901', '市辖区', '360900');
INSERT INTO `provinces` VALUES ('360902', '袁州区', '360900');
INSERT INTO `provinces` VALUES ('360921', '奉新县', '360900');
INSERT INTO `provinces` VALUES ('360922', '万载县', '360900');
INSERT INTO `provinces` VALUES ('360923', '上高县', '360900');
INSERT INTO `provinces` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `provinces` VALUES ('360925', '靖安县', '360900');
INSERT INTO `provinces` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `provinces` VALUES ('360981', '丰城市', '360900');
INSERT INTO `provinces` VALUES ('360982', '樟树市', '360900');
INSERT INTO `provinces` VALUES ('360983', '高安市', '360900');
INSERT INTO `provinces` VALUES ('361000', '抚州市', '360000');
INSERT INTO `provinces` VALUES ('361001', '市辖区', '361000');
INSERT INTO `provinces` VALUES ('361002', '临川区', '361000');
INSERT INTO `provinces` VALUES ('361021', '南城县', '361000');
INSERT INTO `provinces` VALUES ('361022', '黎川县', '361000');
INSERT INTO `provinces` VALUES ('361023', '南丰县', '361000');
INSERT INTO `provinces` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `provinces` VALUES ('361025', '乐安县', '361000');
INSERT INTO `provinces` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `provinces` VALUES ('361027', '金溪县', '361000');
INSERT INTO `provinces` VALUES ('361028', '资溪县', '361000');
INSERT INTO `provinces` VALUES ('361029', '东乡县', '361000');
INSERT INTO `provinces` VALUES ('361030', '广昌县', '361000');
INSERT INTO `provinces` VALUES ('361100', '上饶市', '360000');
INSERT INTO `provinces` VALUES ('361101', '市辖区', '361100');
INSERT INTO `provinces` VALUES ('361102', '信州区', '361100');
INSERT INTO `provinces` VALUES ('361103', '广丰区', '361100');
INSERT INTO `provinces` VALUES ('361121', '上饶县', '361100');
INSERT INTO `provinces` VALUES ('361123', '玉山县', '361100');
INSERT INTO `provinces` VALUES ('361124', '铅山县', '361100');
INSERT INTO `provinces` VALUES ('361125', '横峰县', '361100');
INSERT INTO `provinces` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `provinces` VALUES ('361127', '余干县', '361100');
INSERT INTO `provinces` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `provinces` VALUES ('361129', '万年县', '361100');
INSERT INTO `provinces` VALUES ('361130', '婺源县', '361100');
INSERT INTO `provinces` VALUES ('361181', '德兴市', '361100');
INSERT INTO `provinces` VALUES ('370000', '山东省', '0');
INSERT INTO `provinces` VALUES ('370100', '济南市', '370000');
INSERT INTO `provinces` VALUES ('370101', '市辖区', '370100');
INSERT INTO `provinces` VALUES ('370102', '历下区', '370100');
INSERT INTO `provinces` VALUES ('370103', '市中区', '370100');
INSERT INTO `provinces` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `provinces` VALUES ('370105', '天桥区', '370100');
INSERT INTO `provinces` VALUES ('370112', '历城区', '370100');
INSERT INTO `provinces` VALUES ('370113', '长清区', '370100');
INSERT INTO `provinces` VALUES ('370124', '平阴县', '370100');
INSERT INTO `provinces` VALUES ('370125', '济阳县', '370100');
INSERT INTO `provinces` VALUES ('370126', '商河县', '370100');
INSERT INTO `provinces` VALUES ('370181', '章丘市', '370100');
INSERT INTO `provinces` VALUES ('370200', '青岛市', '370000');
INSERT INTO `provinces` VALUES ('370201', '市辖区', '370200');
INSERT INTO `provinces` VALUES ('370202', '市南区', '370200');
INSERT INTO `provinces` VALUES ('370203', '市北区', '370200');
INSERT INTO `provinces` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `provinces` VALUES ('370212', '崂山区', '370200');
INSERT INTO `provinces` VALUES ('370213', '李沧区', '370200');
INSERT INTO `provinces` VALUES ('370214', '城阳区', '370200');
INSERT INTO `provinces` VALUES ('370281', '胶州市', '370200');
INSERT INTO `provinces` VALUES ('370282', '即墨市', '370200');
INSERT INTO `provinces` VALUES ('370283', '平度市', '370200');
INSERT INTO `provinces` VALUES ('370285', '莱西市', '370200');
INSERT INTO `provinces` VALUES ('370300', '淄博市', '370000');
INSERT INTO `provinces` VALUES ('370301', '市辖区', '370300');
INSERT INTO `provinces` VALUES ('370302', '淄川区', '370300');
INSERT INTO `provinces` VALUES ('370303', '张店区', '370300');
INSERT INTO `provinces` VALUES ('370304', '博山区', '370300');
INSERT INTO `provinces` VALUES ('370305', '临淄区', '370300');
INSERT INTO `provinces` VALUES ('370306', '周村区', '370300');
INSERT INTO `provinces` VALUES ('370321', '桓台县', '370300');
INSERT INTO `provinces` VALUES ('370322', '高青县', '370300');
INSERT INTO `provinces` VALUES ('370323', '沂源县', '370300');
INSERT INTO `provinces` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `provinces` VALUES ('370401', '市辖区', '370400');
INSERT INTO `provinces` VALUES ('370402', '市中区', '370400');
INSERT INTO `provinces` VALUES ('370403', '薛城区', '370400');
INSERT INTO `provinces` VALUES ('370404', '峄城区', '370400');
INSERT INTO `provinces` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `provinces` VALUES ('370406', '山亭区', '370400');
INSERT INTO `provinces` VALUES ('370481', '滕州市', '370400');
INSERT INTO `provinces` VALUES ('370500', '东营市', '370000');
INSERT INTO `provinces` VALUES ('370501', '市辖区', '370500');
INSERT INTO `provinces` VALUES ('370502', '东营区', '370500');
INSERT INTO `provinces` VALUES ('370503', '河口区', '370500');
INSERT INTO `provinces` VALUES ('370505', '垦利区', '370500');
INSERT INTO `provinces` VALUES ('370522', '利津县', '370500');
INSERT INTO `provinces` VALUES ('370523', '广饶县', '370500');
INSERT INTO `provinces` VALUES ('370600', '烟台市', '370000');
INSERT INTO `provinces` VALUES ('370601', '市辖区', '370600');
INSERT INTO `provinces` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `provinces` VALUES ('370611', '福山区', '370600');
INSERT INTO `provinces` VALUES ('370612', '牟平区', '370600');
INSERT INTO `provinces` VALUES ('370613', '莱山区', '370600');
INSERT INTO `provinces` VALUES ('370634', '长岛县', '370600');
INSERT INTO `provinces` VALUES ('370681', '龙口市', '370600');
INSERT INTO `provinces` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `provinces` VALUES ('370683', '莱州市', '370600');
INSERT INTO `provinces` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `provinces` VALUES ('370685', '招远市', '370600');
INSERT INTO `provinces` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `provinces` VALUES ('370687', '海阳市', '370600');
INSERT INTO `provinces` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `provinces` VALUES ('370701', '市辖区', '370700');
INSERT INTO `provinces` VALUES ('370702', '潍城区', '370700');
INSERT INTO `provinces` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `provinces` VALUES ('370704', '坊子区', '370700');
INSERT INTO `provinces` VALUES ('370705', '奎文区', '370700');
INSERT INTO `provinces` VALUES ('370724', '临朐县', '370700');
INSERT INTO `provinces` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `provinces` VALUES ('370781', '青州市', '370700');
INSERT INTO `provinces` VALUES ('370782', '诸城市', '370700');
INSERT INTO `provinces` VALUES ('370783', '寿光市', '370700');
INSERT INTO `provinces` VALUES ('370784', '安丘市', '370700');
INSERT INTO `provinces` VALUES ('370785', '高密市', '370700');
INSERT INTO `provinces` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `provinces` VALUES ('370800', '济宁市', '370000');
INSERT INTO `provinces` VALUES ('370801', '市辖区', '370800');
INSERT INTO `provinces` VALUES ('370811', '任城区', '370800');
INSERT INTO `provinces` VALUES ('370812', '兖州区', '370800');
INSERT INTO `provinces` VALUES ('370826', '微山县', '370800');
INSERT INTO `provinces` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `provinces` VALUES ('370828', '金乡县', '370800');
INSERT INTO `provinces` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `provinces` VALUES ('370830', '汶上县', '370800');
INSERT INTO `provinces` VALUES ('370831', '泗水县', '370800');
INSERT INTO `provinces` VALUES ('370832', '梁山县', '370800');
INSERT INTO `provinces` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `provinces` VALUES ('370883', '邹城市', '370800');
INSERT INTO `provinces` VALUES ('370900', '泰安市', '370000');
INSERT INTO `provinces` VALUES ('370901', '市辖区', '370900');
INSERT INTO `provinces` VALUES ('370902', '泰山区', '370900');
INSERT INTO `provinces` VALUES ('370911', '岱岳区', '370900');
INSERT INTO `provinces` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `provinces` VALUES ('370923', '东平县', '370900');
INSERT INTO `provinces` VALUES ('370982', '新泰市', '370900');
INSERT INTO `provinces` VALUES ('370983', '肥城市', '370900');
INSERT INTO `provinces` VALUES ('371000', '威海市', '370000');
INSERT INTO `provinces` VALUES ('371001', '市辖区', '371000');
INSERT INTO `provinces` VALUES ('371002', '环翠区', '371000');
INSERT INTO `provinces` VALUES ('371003', '文登区', '371000');
INSERT INTO `provinces` VALUES ('371082', '荣成市', '371000');
INSERT INTO `provinces` VALUES ('371083', '乳山市', '371000');
INSERT INTO `provinces` VALUES ('371100', '日照市', '370000');
INSERT INTO `provinces` VALUES ('371101', '市辖区', '371100');
INSERT INTO `provinces` VALUES ('371102', '东港区', '371100');
INSERT INTO `provinces` VALUES ('371103', '岚山区', '371100');
INSERT INTO `provinces` VALUES ('371121', '五莲县', '371100');
INSERT INTO `provinces` VALUES ('371122', '莒县', '371100');
INSERT INTO `provinces` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `provinces` VALUES ('371201', '市辖区', '371200');
INSERT INTO `provinces` VALUES ('371202', '莱城区', '371200');
INSERT INTO `provinces` VALUES ('371203', '钢城区', '371200');
INSERT INTO `provinces` VALUES ('371300', '临沂市', '370000');
INSERT INTO `provinces` VALUES ('371301', '市辖区', '371300');
INSERT INTO `provinces` VALUES ('371302', '兰山区', '371300');
INSERT INTO `provinces` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `provinces` VALUES ('371312', '河东区', '371300');
INSERT INTO `provinces` VALUES ('371321', '沂南县', '371300');
INSERT INTO `provinces` VALUES ('371322', '郯城县', '371300');
INSERT INTO `provinces` VALUES ('371323', '沂水县', '371300');
INSERT INTO `provinces` VALUES ('371324', '兰陵县', '371300');
INSERT INTO `provinces` VALUES ('371325', '费县', '371300');
INSERT INTO `provinces` VALUES ('371326', '平邑县', '371300');
INSERT INTO `provinces` VALUES ('371327', '莒南县', '371300');
INSERT INTO `provinces` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `provinces` VALUES ('371329', '临沭县', '371300');
INSERT INTO `provinces` VALUES ('371400', '德州市', '370000');
INSERT INTO `provinces` VALUES ('371401', '市辖区', '371400');
INSERT INTO `provinces` VALUES ('371402', '德城区', '371400');
INSERT INTO `provinces` VALUES ('371403', '陵城区', '371400');
INSERT INTO `provinces` VALUES ('371422', '宁津县', '371400');
INSERT INTO `provinces` VALUES ('371423', '庆云县', '371400');
INSERT INTO `provinces` VALUES ('371424', '临邑县', '371400');
INSERT INTO `provinces` VALUES ('371425', '齐河县', '371400');
INSERT INTO `provinces` VALUES ('371426', '平原县', '371400');
INSERT INTO `provinces` VALUES ('371427', '夏津县', '371400');
INSERT INTO `provinces` VALUES ('371428', '武城县', '371400');
INSERT INTO `provinces` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `provinces` VALUES ('371482', '禹城市', '371400');
INSERT INTO `provinces` VALUES ('371500', '聊城市', '370000');
INSERT INTO `provinces` VALUES ('371501', '市辖区', '371500');
INSERT INTO `provinces` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `provinces` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `provinces` VALUES ('371522', '莘县', '371500');
INSERT INTO `provinces` VALUES ('371523', '茌平县', '371500');
INSERT INTO `provinces` VALUES ('371524', '东阿县', '371500');
INSERT INTO `provinces` VALUES ('371525', '冠县', '371500');
INSERT INTO `provinces` VALUES ('371526', '高唐县', '371500');
INSERT INTO `provinces` VALUES ('371581', '临清市', '371500');
INSERT INTO `provinces` VALUES ('371600', '滨州市', '370000');
INSERT INTO `provinces` VALUES ('371601', '市辖区', '371600');
INSERT INTO `provinces` VALUES ('371602', '滨城区', '371600');
INSERT INTO `provinces` VALUES ('371603', '沾化区', '371600');
INSERT INTO `provinces` VALUES ('371621', '惠民县', '371600');
INSERT INTO `provinces` VALUES ('371622', '阳信县', '371600');
INSERT INTO `provinces` VALUES ('371623', '无棣县', '371600');
INSERT INTO `provinces` VALUES ('371625', '博兴县', '371600');
INSERT INTO `provinces` VALUES ('371626', '邹平县', '371600');
INSERT INTO `provinces` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `provinces` VALUES ('371701', '市辖区', '371700');
INSERT INTO `provinces` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `provinces` VALUES ('371703', '定陶区', '371700');
INSERT INTO `provinces` VALUES ('371721', '曹县', '371700');
INSERT INTO `provinces` VALUES ('371722', '单县', '371700');
INSERT INTO `provinces` VALUES ('371723', '成武县', '371700');
INSERT INTO `provinces` VALUES ('371724', '巨野县', '371700');
INSERT INTO `provinces` VALUES ('371725', '郓城县', '371700');
INSERT INTO `provinces` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `provinces` VALUES ('371728', '东明县', '371700');
INSERT INTO `provinces` VALUES ('410000', '河南省', '0');
INSERT INTO `provinces` VALUES ('410100', '郑州市', '410000');
INSERT INTO `provinces` VALUES ('410101', '市辖区', '410100');
INSERT INTO `provinces` VALUES ('410102', '中原区', '410100');
INSERT INTO `provinces` VALUES ('410103', '二七区', '410100');
INSERT INTO `provinces` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `provinces` VALUES ('410105', '金水区', '410100');
INSERT INTO `provinces` VALUES ('410106', '上街区', '410100');
INSERT INTO `provinces` VALUES ('410108', '惠济区', '410100');
INSERT INTO `provinces` VALUES ('410122', '中牟县', '410100');
INSERT INTO `provinces` VALUES ('410181', '巩义市', '410100');
INSERT INTO `provinces` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `provinces` VALUES ('410183', '新密市', '410100');
INSERT INTO `provinces` VALUES ('410184', '新郑市', '410100');
INSERT INTO `provinces` VALUES ('410185', '登封市', '410100');
INSERT INTO `provinces` VALUES ('410200', '开封市', '410000');
INSERT INTO `provinces` VALUES ('410201', '市辖区', '410200');
INSERT INTO `provinces` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `provinces` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `provinces` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `provinces` VALUES ('410205', '禹王台区', '410200');
INSERT INTO `provinces` VALUES ('410211', '金明区', '410200');
INSERT INTO `provinces` VALUES ('410212', '祥符区', '410200');
INSERT INTO `provinces` VALUES ('410221', '杞县', '410200');
INSERT INTO `provinces` VALUES ('410222', '通许县', '410200');
INSERT INTO `provinces` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `provinces` VALUES ('410225', '兰考县', '410200');
INSERT INTO `provinces` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `provinces` VALUES ('410301', '市辖区', '410300');
INSERT INTO `provinces` VALUES ('410302', '老城区', '410300');
INSERT INTO `provinces` VALUES ('410303', '西工区', '410300');
INSERT INTO `provinces` VALUES ('410304', '瀍河回族区', '410300');
INSERT INTO `provinces` VALUES ('410305', '涧西区', '410300');
INSERT INTO `provinces` VALUES ('410306', '吉利区', '410300');
INSERT INTO `provinces` VALUES ('410311', '洛龙区', '410300');
INSERT INTO `provinces` VALUES ('410322', '孟津县', '410300');
INSERT INTO `provinces` VALUES ('410323', '新安县', '410300');
INSERT INTO `provinces` VALUES ('410324', '栾川县', '410300');
INSERT INTO `provinces` VALUES ('410325', '嵩县', '410300');
INSERT INTO `provinces` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `provinces` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `provinces` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `provinces` VALUES ('410329', '伊川县', '410300');
INSERT INTO `provinces` VALUES ('410381', '偃师市', '410300');
INSERT INTO `provinces` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `provinces` VALUES ('410401', '市辖区', '410400');
INSERT INTO `provinces` VALUES ('410402', '新华区', '410400');
INSERT INTO `provinces` VALUES ('410403', '卫东区', '410400');
INSERT INTO `provinces` VALUES ('410404', '石龙区', '410400');
INSERT INTO `provinces` VALUES ('410411', '湛河区', '410400');
INSERT INTO `provinces` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `provinces` VALUES ('410422', '叶县', '410400');
INSERT INTO `provinces` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `provinces` VALUES ('410425', '郏县', '410400');
INSERT INTO `provinces` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `provinces` VALUES ('410482', '汝州市', '410400');
INSERT INTO `provinces` VALUES ('410500', '安阳市', '410000');
INSERT INTO `provinces` VALUES ('410501', '市辖区', '410500');
INSERT INTO `provinces` VALUES ('410502', '文峰区', '410500');
INSERT INTO `provinces` VALUES ('410503', '北关区', '410500');
INSERT INTO `provinces` VALUES ('410505', '殷都区', '410500');
INSERT INTO `provinces` VALUES ('410506', '龙安区', '410500');
INSERT INTO `provinces` VALUES ('410522', '安阳县', '410500');
INSERT INTO `provinces` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `provinces` VALUES ('410526', '滑县', '410500');
INSERT INTO `provinces` VALUES ('410527', '内黄县', '410500');
INSERT INTO `provinces` VALUES ('410581', '林州市', '410500');
INSERT INTO `provinces` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `provinces` VALUES ('410601', '市辖区', '410600');
INSERT INTO `provinces` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `provinces` VALUES ('410603', '山城区', '410600');
INSERT INTO `provinces` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `provinces` VALUES ('410621', '浚县', '410600');
INSERT INTO `provinces` VALUES ('410622', '淇县', '410600');
INSERT INTO `provinces` VALUES ('410700', '新乡市', '410000');
INSERT INTO `provinces` VALUES ('410701', '市辖区', '410700');
INSERT INTO `provinces` VALUES ('410702', '红旗区', '410700');
INSERT INTO `provinces` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `provinces` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `provinces` VALUES ('410711', '牧野区', '410700');
INSERT INTO `provinces` VALUES ('410721', '新乡县', '410700');
INSERT INTO `provinces` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `provinces` VALUES ('410725', '原阳县', '410700');
INSERT INTO `provinces` VALUES ('410726', '延津县', '410700');
INSERT INTO `provinces` VALUES ('410727', '封丘县', '410700');
INSERT INTO `provinces` VALUES ('410728', '长垣县', '410700');
INSERT INTO `provinces` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `provinces` VALUES ('410782', '辉县市', '410700');
INSERT INTO `provinces` VALUES ('410800', '焦作市', '410000');
INSERT INTO `provinces` VALUES ('410801', '市辖区', '410800');
INSERT INTO `provinces` VALUES ('410802', '解放区', '410800');
INSERT INTO `provinces` VALUES ('410803', '中站区', '410800');
INSERT INTO `provinces` VALUES ('410804', '马村区', '410800');
INSERT INTO `provinces` VALUES ('410811', '山阳区', '410800');
INSERT INTO `provinces` VALUES ('410821', '修武县', '410800');
INSERT INTO `provinces` VALUES ('410822', '博爱县', '410800');
INSERT INTO `provinces` VALUES ('410823', '武陟县', '410800');
INSERT INTO `provinces` VALUES ('410825', '温县', '410800');
INSERT INTO `provinces` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `provinces` VALUES ('410883', '孟州市', '410800');
INSERT INTO `provinces` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `provinces` VALUES ('410901', '市辖区', '410900');
INSERT INTO `provinces` VALUES ('410902', '华龙区', '410900');
INSERT INTO `provinces` VALUES ('410922', '清丰县', '410900');
INSERT INTO `provinces` VALUES ('410923', '南乐县', '410900');
INSERT INTO `provinces` VALUES ('410926', '范县', '410900');
INSERT INTO `provinces` VALUES ('410927', '台前县', '410900');
INSERT INTO `provinces` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `provinces` VALUES ('411000', '许昌市', '410000');
INSERT INTO `provinces` VALUES ('411001', '市辖区', '411000');
INSERT INTO `provinces` VALUES ('411002', '魏都区', '411000');
INSERT INTO `provinces` VALUES ('411023', '许昌县', '411000');
INSERT INTO `provinces` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `provinces` VALUES ('411025', '襄城县', '411000');
INSERT INTO `provinces` VALUES ('411081', '禹州市', '411000');
INSERT INTO `provinces` VALUES ('411082', '长葛市', '411000');
INSERT INTO `provinces` VALUES ('411100', '漯河市', '410000');
INSERT INTO `provinces` VALUES ('411101', '市辖区', '411100');
INSERT INTO `provinces` VALUES ('411102', '源汇区', '411100');
INSERT INTO `provinces` VALUES ('411103', '郾城区', '411100');
INSERT INTO `provinces` VALUES ('411104', '召陵区', '411100');
INSERT INTO `provinces` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `provinces` VALUES ('411122', '临颍县', '411100');
INSERT INTO `provinces` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `provinces` VALUES ('411201', '市辖区', '411200');
INSERT INTO `provinces` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `provinces` VALUES ('411203', '陕州区', '411200');
INSERT INTO `provinces` VALUES ('411221', '渑池县', '411200');
INSERT INTO `provinces` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `provinces` VALUES ('411281', '义马市', '411200');
INSERT INTO `provinces` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `provinces` VALUES ('411300', '南阳市', '410000');
INSERT INTO `provinces` VALUES ('411301', '市辖区', '411300');
INSERT INTO `provinces` VALUES ('411302', '宛城区', '411300');
INSERT INTO `provinces` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `provinces` VALUES ('411321', '南召县', '411300');
INSERT INTO `provinces` VALUES ('411322', '方城县', '411300');
INSERT INTO `provinces` VALUES ('411323', '西峡县', '411300');
INSERT INTO `provinces` VALUES ('411324', '镇平县', '411300');
INSERT INTO `provinces` VALUES ('411325', '内乡县', '411300');
INSERT INTO `provinces` VALUES ('411326', '淅川县', '411300');
INSERT INTO `provinces` VALUES ('411327', '社旗县', '411300');
INSERT INTO `provinces` VALUES ('411328', '唐河县', '411300');
INSERT INTO `provinces` VALUES ('411329', '新野县', '411300');
INSERT INTO `provinces` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `provinces` VALUES ('411381', '邓州市', '411300');
INSERT INTO `provinces` VALUES ('411400', '商丘市', '410000');
INSERT INTO `provinces` VALUES ('411401', '市辖区', '411400');
INSERT INTO `provinces` VALUES ('411402', '梁园区', '411400');
INSERT INTO `provinces` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `provinces` VALUES ('411421', '民权县', '411400');
INSERT INTO `provinces` VALUES ('411422', '睢县', '411400');
INSERT INTO `provinces` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `provinces` VALUES ('411424', '柘城县', '411400');
INSERT INTO `provinces` VALUES ('411425', '虞城县', '411400');
INSERT INTO `provinces` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `provinces` VALUES ('411481', '永城市', '411400');
INSERT INTO `provinces` VALUES ('411500', '信阳市', '410000');
INSERT INTO `provinces` VALUES ('411501', '市辖区', '411500');
INSERT INTO `provinces` VALUES ('411502', '浉河区', '411500');
INSERT INTO `provinces` VALUES ('411503', '平桥区', '411500');
INSERT INTO `provinces` VALUES ('411521', '罗山县', '411500');
INSERT INTO `provinces` VALUES ('411522', '光山县', '411500');
INSERT INTO `provinces` VALUES ('411523', '新县', '411500');
INSERT INTO `provinces` VALUES ('411524', '商城县', '411500');
INSERT INTO `provinces` VALUES ('411525', '固始县', '411500');
INSERT INTO `provinces` VALUES ('411526', '潢川县', '411500');
INSERT INTO `provinces` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `provinces` VALUES ('411528', '息县', '411500');
INSERT INTO `provinces` VALUES ('411600', '周口市', '410000');
INSERT INTO `provinces` VALUES ('411601', '市辖区', '411600');
INSERT INTO `provinces` VALUES ('411602', '川汇区', '411600');
INSERT INTO `provinces` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `provinces` VALUES ('411622', '西华县', '411600');
INSERT INTO `provinces` VALUES ('411623', '商水县', '411600');
INSERT INTO `provinces` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `provinces` VALUES ('411625', '郸城县', '411600');
INSERT INTO `provinces` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `provinces` VALUES ('411627', '太康县', '411600');
INSERT INTO `provinces` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `provinces` VALUES ('411681', '项城市', '411600');
INSERT INTO `provinces` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `provinces` VALUES ('411701', '市辖区', '411700');
INSERT INTO `provinces` VALUES ('411702', '驿城区', '411700');
INSERT INTO `provinces` VALUES ('411721', '西平县', '411700');
INSERT INTO `provinces` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `provinces` VALUES ('411723', '平舆县', '411700');
INSERT INTO `provinces` VALUES ('411724', '正阳县', '411700');
INSERT INTO `provinces` VALUES ('411725', '确山县', '411700');
INSERT INTO `provinces` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `provinces` VALUES ('411727', '汝南县', '411700');
INSERT INTO `provinces` VALUES ('411728', '遂平县', '411700');
INSERT INTO `provinces` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `provinces` VALUES ('419000', '省直辖县级行政区划', '410000');
INSERT INTO `provinces` VALUES ('419001', '济源市', '419000');
INSERT INTO `provinces` VALUES ('420000', '湖北省', '0');
INSERT INTO `provinces` VALUES ('420100', '武汉市', '420000');
INSERT INTO `provinces` VALUES ('420101', '市辖区', '420100');
INSERT INTO `provinces` VALUES ('420102', '江岸区', '420100');
INSERT INTO `provinces` VALUES ('420103', '江汉区', '420100');
INSERT INTO `provinces` VALUES ('420104', '硚口区', '420100');
INSERT INTO `provinces` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `provinces` VALUES ('420106', '武昌区', '420100');
INSERT INTO `provinces` VALUES ('420107', '青山区', '420100');
INSERT INTO `provinces` VALUES ('420111', '洪山区', '420100');
INSERT INTO `provinces` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `provinces` VALUES ('420113', '汉南区', '420100');
INSERT INTO `provinces` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `provinces` VALUES ('420115', '江夏区', '420100');
INSERT INTO `provinces` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `provinces` VALUES ('420117', '新洲区', '420100');
INSERT INTO `provinces` VALUES ('420200', '黄石市', '420000');
INSERT INTO `provinces` VALUES ('420201', '市辖区', '420200');
INSERT INTO `provinces` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `provinces` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `provinces` VALUES ('420204', '下陆区', '420200');
INSERT INTO `provinces` VALUES ('420205', '铁山区', '420200');
INSERT INTO `provinces` VALUES ('420222', '阳新县', '420200');
INSERT INTO `provinces` VALUES ('420281', '大冶市', '420200');
INSERT INTO `provinces` VALUES ('420300', '十堰市', '420000');
INSERT INTO `provinces` VALUES ('420301', '市辖区', '420300');
INSERT INTO `provinces` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `provinces` VALUES ('420303', '张湾区', '420300');
INSERT INTO `provinces` VALUES ('420304', '郧阳区', '420300');
INSERT INTO `provinces` VALUES ('420322', '郧西县', '420300');
INSERT INTO `provinces` VALUES ('420323', '竹山县', '420300');
INSERT INTO `provinces` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `provinces` VALUES ('420325', '房县', '420300');
INSERT INTO `provinces` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `provinces` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `provinces` VALUES ('420501', '市辖区', '420500');
INSERT INTO `provinces` VALUES ('420502', '西陵区', '420500');
INSERT INTO `provinces` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `provinces` VALUES ('420504', '点军区', '420500');
INSERT INTO `provinces` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `provinces` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `provinces` VALUES ('420525', '远安县', '420500');
INSERT INTO `provinces` VALUES ('420526', '兴山县', '420500');
INSERT INTO `provinces` VALUES ('420527', '秭归县', '420500');
INSERT INTO `provinces` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `provinces` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `provinces` VALUES ('420581', '宜都市', '420500');
INSERT INTO `provinces` VALUES ('420582', '当阳市', '420500');
INSERT INTO `provinces` VALUES ('420583', '枝江市', '420500');
INSERT INTO `provinces` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `provinces` VALUES ('420601', '市辖区', '420600');
INSERT INTO `provinces` VALUES ('420602', '襄城区', '420600');
INSERT INTO `provinces` VALUES ('420606', '樊城区', '420600');
INSERT INTO `provinces` VALUES ('420607', '襄州区', '420600');
INSERT INTO `provinces` VALUES ('420624', '南漳县', '420600');
INSERT INTO `provinces` VALUES ('420625', '谷城县', '420600');
INSERT INTO `provinces` VALUES ('420626', '保康县', '420600');
INSERT INTO `provinces` VALUES ('420682', '老河口市', '420600');
INSERT INTO `provinces` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `provinces` VALUES ('420684', '宜城市', '420600');
INSERT INTO `provinces` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `provinces` VALUES ('420701', '市辖区', '420700');
INSERT INTO `provinces` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `provinces` VALUES ('420703', '华容区', '420700');
INSERT INTO `provinces` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `provinces` VALUES ('420800', '荆门市', '420000');
INSERT INTO `provinces` VALUES ('420801', '市辖区', '420800');
INSERT INTO `provinces` VALUES ('420802', '东宝区', '420800');
INSERT INTO `provinces` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `provinces` VALUES ('420821', '京山县', '420800');
INSERT INTO `provinces` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `provinces` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `provinces` VALUES ('420900', '孝感市', '420000');
INSERT INTO `provinces` VALUES ('420901', '市辖区', '420900');
INSERT INTO `provinces` VALUES ('420902', '孝南区', '420900');
INSERT INTO `provinces` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `provinces` VALUES ('420922', '大悟县', '420900');
INSERT INTO `provinces` VALUES ('420923', '云梦县', '420900');
INSERT INTO `provinces` VALUES ('420981', '应城市', '420900');
INSERT INTO `provinces` VALUES ('420982', '安陆市', '420900');
INSERT INTO `provinces` VALUES ('420984', '汉川市', '420900');
INSERT INTO `provinces` VALUES ('421000', '荆州市', '420000');
INSERT INTO `provinces` VALUES ('421001', '市辖区', '421000');
INSERT INTO `provinces` VALUES ('421002', '沙市区', '421000');
INSERT INTO `provinces` VALUES ('421003', '荆州区', '421000');
INSERT INTO `provinces` VALUES ('421022', '公安县', '421000');
INSERT INTO `provinces` VALUES ('421023', '监利县', '421000');
INSERT INTO `provinces` VALUES ('421024', '江陵县', '421000');
INSERT INTO `provinces` VALUES ('421081', '石首市', '421000');
INSERT INTO `provinces` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `provinces` VALUES ('421087', '松滋市', '421000');
INSERT INTO `provinces` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `provinces` VALUES ('421101', '市辖区', '421100');
INSERT INTO `provinces` VALUES ('421102', '黄州区', '421100');
INSERT INTO `provinces` VALUES ('421121', '团风县', '421100');
INSERT INTO `provinces` VALUES ('421122', '红安县', '421100');
INSERT INTO `provinces` VALUES ('421123', '罗田县', '421100');
INSERT INTO `provinces` VALUES ('421124', '英山县', '421100');
INSERT INTO `provinces` VALUES ('421125', '浠水县', '421100');
INSERT INTO `provinces` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `provinces` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `provinces` VALUES ('421181', '麻城市', '421100');
INSERT INTO `provinces` VALUES ('421182', '武穴市', '421100');
INSERT INTO `provinces` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `provinces` VALUES ('421201', '市辖区', '421200');
INSERT INTO `provinces` VALUES ('421202', '咸安区', '421200');
INSERT INTO `provinces` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `provinces` VALUES ('421222', '通城县', '421200');
INSERT INTO `provinces` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `provinces` VALUES ('421224', '通山县', '421200');
INSERT INTO `provinces` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `provinces` VALUES ('421300', '随州市', '420000');
INSERT INTO `provinces` VALUES ('421301', '市辖区', '421300');
INSERT INTO `provinces` VALUES ('421303', '曾都区', '421300');
INSERT INTO `provinces` VALUES ('421321', '随县', '421300');
INSERT INTO `provinces` VALUES ('421381', '广水市', '421300');
INSERT INTO `provinces` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `provinces` VALUES ('422801', '恩施市', '422800');
INSERT INTO `provinces` VALUES ('422802', '利川市', '422800');
INSERT INTO `provinces` VALUES ('422822', '建始县', '422800');
INSERT INTO `provinces` VALUES ('422823', '巴东县', '422800');
INSERT INTO `provinces` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `provinces` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `provinces` VALUES ('422827', '来凤县', '422800');
INSERT INTO `provinces` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `provinces` VALUES ('429000', '省直辖县级行政区划', '420000');
INSERT INTO `provinces` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `provinces` VALUES ('429005', '潜江市', '429000');
INSERT INTO `provinces` VALUES ('429006', '天门市', '429000');
INSERT INTO `provinces` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `provinces` VALUES ('430000', '湖南省', '0');
INSERT INTO `provinces` VALUES ('430100', '长沙市', '430000');
INSERT INTO `provinces` VALUES ('430101', '市辖区', '430100');
INSERT INTO `provinces` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `provinces` VALUES ('430103', '天心区', '430100');
INSERT INTO `provinces` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `provinces` VALUES ('430105', '开福区', '430100');
INSERT INTO `provinces` VALUES ('430111', '雨花区', '430100');
INSERT INTO `provinces` VALUES ('430112', '望城区', '430100');
INSERT INTO `provinces` VALUES ('430121', '长沙县', '430100');
INSERT INTO `provinces` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `provinces` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `provinces` VALUES ('430200', '株洲市', '430000');
INSERT INTO `provinces` VALUES ('430201', '市辖区', '430200');
INSERT INTO `provinces` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `provinces` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `provinces` VALUES ('430204', '石峰区', '430200');
INSERT INTO `provinces` VALUES ('430211', '天元区', '430200');
INSERT INTO `provinces` VALUES ('430221', '株洲县', '430200');
INSERT INTO `provinces` VALUES ('430223', '攸县', '430200');
INSERT INTO `provinces` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `provinces` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `provinces` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `provinces` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `provinces` VALUES ('430301', '市辖区', '430300');
INSERT INTO `provinces` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `provinces` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `provinces` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `provinces` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `provinces` VALUES ('430382', '韶山市', '430300');
INSERT INTO `provinces` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `provinces` VALUES ('430401', '市辖区', '430400');
INSERT INTO `provinces` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `provinces` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `provinces` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `provinces` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `provinces` VALUES ('430412', '南岳区', '430400');
INSERT INTO `provinces` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `provinces` VALUES ('430422', '衡南县', '430400');
INSERT INTO `provinces` VALUES ('430423', '衡山县', '430400');
INSERT INTO `provinces` VALUES ('430424', '衡东县', '430400');
INSERT INTO `provinces` VALUES ('430426', '祁东县', '430400');
INSERT INTO `provinces` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `provinces` VALUES ('430482', '常宁市', '430400');
INSERT INTO `provinces` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `provinces` VALUES ('430501', '市辖区', '430500');
INSERT INTO `provinces` VALUES ('430502', '双清区', '430500');
INSERT INTO `provinces` VALUES ('430503', '大祥区', '430500');
INSERT INTO `provinces` VALUES ('430511', '北塔区', '430500');
INSERT INTO `provinces` VALUES ('430521', '邵东县', '430500');
INSERT INTO `provinces` VALUES ('430522', '新邵县', '430500');
INSERT INTO `provinces` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `provinces` VALUES ('430524', '隆回县', '430500');
INSERT INTO `provinces` VALUES ('430525', '洞口县', '430500');
INSERT INTO `provinces` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `provinces` VALUES ('430528', '新宁县', '430500');
INSERT INTO `provinces` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `provinces` VALUES ('430581', '武冈市', '430500');
INSERT INTO `provinces` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `provinces` VALUES ('430601', '市辖区', '430600');
INSERT INTO `provinces` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `provinces` VALUES ('430603', '云溪区', '430600');
INSERT INTO `provinces` VALUES ('430611', '君山区', '430600');
INSERT INTO `provinces` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `provinces` VALUES ('430623', '华容县', '430600');
INSERT INTO `provinces` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `provinces` VALUES ('430626', '平江县', '430600');
INSERT INTO `provinces` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `provinces` VALUES ('430682', '临湘市', '430600');
INSERT INTO `provinces` VALUES ('430700', '常德市', '430000');
INSERT INTO `provinces` VALUES ('430701', '市辖区', '430700');
INSERT INTO `provinces` VALUES ('430702', '武陵区', '430700');
INSERT INTO `provinces` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `provinces` VALUES ('430721', '安乡县', '430700');
INSERT INTO `provinces` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `provinces` VALUES ('430723', '澧县', '430700');
INSERT INTO `provinces` VALUES ('430724', '临澧县', '430700');
INSERT INTO `provinces` VALUES ('430725', '桃源县', '430700');
INSERT INTO `provinces` VALUES ('430726', '石门县', '430700');
INSERT INTO `provinces` VALUES ('430781', '津市市', '430700');
INSERT INTO `provinces` VALUES ('430800', '张家界市', '430000');
INSERT INTO `provinces` VALUES ('430801', '市辖区', '430800');
INSERT INTO `provinces` VALUES ('430802', '永定区', '430800');
INSERT INTO `provinces` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `provinces` VALUES ('430821', '慈利县', '430800');
INSERT INTO `provinces` VALUES ('430822', '桑植县', '430800');
INSERT INTO `provinces` VALUES ('430900', '益阳市', '430000');
INSERT INTO `provinces` VALUES ('430901', '市辖区', '430900');
INSERT INTO `provinces` VALUES ('430902', '资阳区', '430900');
INSERT INTO `provinces` VALUES ('430903', '赫山区', '430900');
INSERT INTO `provinces` VALUES ('430921', '南县', '430900');
INSERT INTO `provinces` VALUES ('430922', '桃江县', '430900');
INSERT INTO `provinces` VALUES ('430923', '安化县', '430900');
INSERT INTO `provinces` VALUES ('430981', '沅江市', '430900');
INSERT INTO `provinces` VALUES ('431000', '郴州市', '430000');
INSERT INTO `provinces` VALUES ('431001', '市辖区', '431000');
INSERT INTO `provinces` VALUES ('431002', '北湖区', '431000');
INSERT INTO `provinces` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `provinces` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `provinces` VALUES ('431022', '宜章县', '431000');
INSERT INTO `provinces` VALUES ('431023', '永兴县', '431000');
INSERT INTO `provinces` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `provinces` VALUES ('431025', '临武县', '431000');
INSERT INTO `provinces` VALUES ('431026', '汝城县', '431000');
INSERT INTO `provinces` VALUES ('431027', '桂东县', '431000');
INSERT INTO `provinces` VALUES ('431028', '安仁县', '431000');
INSERT INTO `provinces` VALUES ('431081', '资兴市', '431000');
INSERT INTO `provinces` VALUES ('431100', '永州市', '430000');
INSERT INTO `provinces` VALUES ('431101', '市辖区', '431100');
INSERT INTO `provinces` VALUES ('431102', '零陵区', '431100');
INSERT INTO `provinces` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `provinces` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `provinces` VALUES ('431122', '东安县', '431100');
INSERT INTO `provinces` VALUES ('431123', '双牌县', '431100');
INSERT INTO `provinces` VALUES ('431124', '道县', '431100');
INSERT INTO `provinces` VALUES ('431125', '江永县', '431100');
INSERT INTO `provinces` VALUES ('431126', '宁远县', '431100');
INSERT INTO `provinces` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `provinces` VALUES ('431128', '新田县', '431100');
INSERT INTO `provinces` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `provinces` VALUES ('431200', '怀化市', '430000');
INSERT INTO `provinces` VALUES ('431201', '市辖区', '431200');
INSERT INTO `provinces` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `provinces` VALUES ('431221', '中方县', '431200');
INSERT INTO `provinces` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `provinces` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `provinces` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `provinces` VALUES ('431225', '会同县', '431200');
INSERT INTO `provinces` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `provinces` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `provinces` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `provinces` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `provinces` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `provinces` VALUES ('431281', '洪江市', '431200');
INSERT INTO `provinces` VALUES ('431300', '娄底市', '430000');
INSERT INTO `provinces` VALUES ('431301', '市辖区', '431300');
INSERT INTO `provinces` VALUES ('431302', '娄星区', '431300');
INSERT INTO `provinces` VALUES ('431321', '双峰县', '431300');
INSERT INTO `provinces` VALUES ('431322', '新化县', '431300');
INSERT INTO `provinces` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `provinces` VALUES ('431382', '涟源市', '431300');
INSERT INTO `provinces` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `provinces` VALUES ('433101', '吉首市', '433100');
INSERT INTO `provinces` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `provinces` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `provinces` VALUES ('433124', '花垣县', '433100');
INSERT INTO `provinces` VALUES ('433125', '保靖县', '433100');
INSERT INTO `provinces` VALUES ('433126', '古丈县', '433100');
INSERT INTO `provinces` VALUES ('433127', '永顺县', '433100');
INSERT INTO `provinces` VALUES ('433130', '龙山县', '433100');
INSERT INTO `provinces` VALUES ('440000', '广东省', '0');
INSERT INTO `provinces` VALUES ('440100', '广州市', '440000');
INSERT INTO `provinces` VALUES ('440101', '市辖区', '440100');
INSERT INTO `provinces` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `provinces` VALUES ('440104', '越秀区', '440100');
INSERT INTO `provinces` VALUES ('440105', '海珠区', '440100');
INSERT INTO `provinces` VALUES ('440106', '天河区', '440100');
INSERT INTO `provinces` VALUES ('440111', '白云区', '440100');
INSERT INTO `provinces` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `provinces` VALUES ('440113', '番禺区', '440100');
INSERT INTO `provinces` VALUES ('440114', '花都区', '440100');
INSERT INTO `provinces` VALUES ('440115', '南沙区', '440100');
INSERT INTO `provinces` VALUES ('440117', '从化区', '440100');
INSERT INTO `provinces` VALUES ('440118', '增城区', '440100');
INSERT INTO `provinces` VALUES ('440200', '韶关市', '440000');
INSERT INTO `provinces` VALUES ('440201', '市辖区', '440200');
INSERT INTO `provinces` VALUES ('440203', '武江区', '440200');
INSERT INTO `provinces` VALUES ('440204', '浈江区', '440200');
INSERT INTO `provinces` VALUES ('440205', '曲江区', '440200');
INSERT INTO `provinces` VALUES ('440222', '始兴县', '440200');
INSERT INTO `provinces` VALUES ('440224', '仁化县', '440200');
INSERT INTO `provinces` VALUES ('440229', '翁源县', '440200');
INSERT INTO `provinces` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `provinces` VALUES ('440233', '新丰县', '440200');
INSERT INTO `provinces` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `provinces` VALUES ('440282', '南雄市', '440200');
INSERT INTO `provinces` VALUES ('440300', '深圳市', '440000');
INSERT INTO `provinces` VALUES ('440301', '市辖区', '440300');
INSERT INTO `provinces` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `provinces` VALUES ('440304', '福田区', '440300');
INSERT INTO `provinces` VALUES ('440305', '南山区', '440300');
INSERT INTO `provinces` VALUES ('440306', '宝安区', '440300');
INSERT INTO `provinces` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `provinces` VALUES ('440308', '盐田区', '440300');
INSERT INTO `provinces` VALUES ('440400', '珠海市', '440000');
INSERT INTO `provinces` VALUES ('440401', '市辖区', '440400');
INSERT INTO `provinces` VALUES ('440402', '香洲区', '440400');
INSERT INTO `provinces` VALUES ('440403', '斗门区', '440400');
INSERT INTO `provinces` VALUES ('440404', '金湾区', '440400');
INSERT INTO `provinces` VALUES ('440500', '汕头市', '440000');
INSERT INTO `provinces` VALUES ('440501', '市辖区', '440500');
INSERT INTO `provinces` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `provinces` VALUES ('440511', '金平区', '440500');
INSERT INTO `provinces` VALUES ('440512', '濠江区', '440500');
INSERT INTO `provinces` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `provinces` VALUES ('440514', '潮南区', '440500');
INSERT INTO `provinces` VALUES ('440515', '澄海区', '440500');
INSERT INTO `provinces` VALUES ('440523', '南澳县', '440500');
INSERT INTO `provinces` VALUES ('440600', '佛山市', '440000');
INSERT INTO `provinces` VALUES ('440601', '市辖区', '440600');
INSERT INTO `provinces` VALUES ('440604', '禅城区', '440600');
INSERT INTO `provinces` VALUES ('440605', '南海区', '440600');
INSERT INTO `provinces` VALUES ('440606', '顺德区', '440600');
INSERT INTO `provinces` VALUES ('440607', '三水区', '440600');
INSERT INTO `provinces` VALUES ('440608', '高明区', '440600');
INSERT INTO `provinces` VALUES ('440700', '江门市', '440000');
INSERT INTO `provinces` VALUES ('440701', '市辖区', '440700');
INSERT INTO `provinces` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `provinces` VALUES ('440704', '江海区', '440700');
INSERT INTO `provinces` VALUES ('440705', '新会区', '440700');
INSERT INTO `provinces` VALUES ('440781', '台山市', '440700');
INSERT INTO `provinces` VALUES ('440783', '开平市', '440700');
INSERT INTO `provinces` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `provinces` VALUES ('440785', '恩平市', '440700');
INSERT INTO `provinces` VALUES ('440800', '湛江市', '440000');
INSERT INTO `provinces` VALUES ('440801', '市辖区', '440800');
INSERT INTO `provinces` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `provinces` VALUES ('440803', '霞山区', '440800');
INSERT INTO `provinces` VALUES ('440804', '坡头区', '440800');
INSERT INTO `provinces` VALUES ('440811', '麻章区', '440800');
INSERT INTO `provinces` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `provinces` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `provinces` VALUES ('440881', '廉江市', '440800');
INSERT INTO `provinces` VALUES ('440882', '雷州市', '440800');
INSERT INTO `provinces` VALUES ('440883', '吴川市', '440800');
INSERT INTO `provinces` VALUES ('440900', '茂名市', '440000');
INSERT INTO `provinces` VALUES ('440901', '市辖区', '440900');
INSERT INTO `provinces` VALUES ('440902', '茂南区', '440900');
INSERT INTO `provinces` VALUES ('440904', '电白区', '440900');
INSERT INTO `provinces` VALUES ('440981', '高州市', '440900');
INSERT INTO `provinces` VALUES ('440982', '化州市', '440900');
INSERT INTO `provinces` VALUES ('440983', '信宜市', '440900');
INSERT INTO `provinces` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `provinces` VALUES ('441201', '市辖区', '441200');
INSERT INTO `provinces` VALUES ('441202', '端州区', '441200');
INSERT INTO `provinces` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `provinces` VALUES ('441204', '高要区', '441200');
INSERT INTO `provinces` VALUES ('441223', '广宁县', '441200');
INSERT INTO `provinces` VALUES ('441224', '怀集县', '441200');
INSERT INTO `provinces` VALUES ('441225', '封开县', '441200');
INSERT INTO `provinces` VALUES ('441226', '德庆县', '441200');
INSERT INTO `provinces` VALUES ('441284', '四会市', '441200');
INSERT INTO `provinces` VALUES ('441300', '惠州市', '440000');
INSERT INTO `provinces` VALUES ('441301', '市辖区', '441300');
INSERT INTO `provinces` VALUES ('441302', '惠城区', '441300');
INSERT INTO `provinces` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `provinces` VALUES ('441322', '博罗县', '441300');
INSERT INTO `provinces` VALUES ('441323', '惠东县', '441300');
INSERT INTO `provinces` VALUES ('441324', '龙门县', '441300');
INSERT INTO `provinces` VALUES ('441400', '梅州市', '440000');
INSERT INTO `provinces` VALUES ('441401', '市辖区', '441400');
INSERT INTO `provinces` VALUES ('441402', '梅江区', '441400');
INSERT INTO `provinces` VALUES ('441403', '梅县区', '441400');
INSERT INTO `provinces` VALUES ('441422', '大埔县', '441400');
INSERT INTO `provinces` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `provinces` VALUES ('441424', '五华县', '441400');
INSERT INTO `provinces` VALUES ('441426', '平远县', '441400');
INSERT INTO `provinces` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `provinces` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `provinces` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `provinces` VALUES ('441501', '市辖区', '441500');
INSERT INTO `provinces` VALUES ('441502', '城区', '441500');
INSERT INTO `provinces` VALUES ('441521', '海丰县', '441500');
INSERT INTO `provinces` VALUES ('441523', '陆河县', '441500');
INSERT INTO `provinces` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `provinces` VALUES ('441600', '河源市', '440000');
INSERT INTO `provinces` VALUES ('441601', '市辖区', '441600');
INSERT INTO `provinces` VALUES ('441602', '源城区', '441600');
INSERT INTO `provinces` VALUES ('441621', '紫金县', '441600');
INSERT INTO `provinces` VALUES ('441622', '龙川县', '441600');
INSERT INTO `provinces` VALUES ('441623', '连平县', '441600');
INSERT INTO `provinces` VALUES ('441624', '和平县', '441600');
INSERT INTO `provinces` VALUES ('441625', '东源县', '441600');
INSERT INTO `provinces` VALUES ('441700', '阳江市', '440000');
INSERT INTO `provinces` VALUES ('441701', '市辖区', '441700');
INSERT INTO `provinces` VALUES ('441702', '江城区', '441700');
INSERT INTO `provinces` VALUES ('441704', '阳东区', '441700');
INSERT INTO `provinces` VALUES ('441721', '阳西县', '441700');
INSERT INTO `provinces` VALUES ('441781', '阳春市', '441700');
INSERT INTO `provinces` VALUES ('441800', '清远市', '440000');
INSERT INTO `provinces` VALUES ('441801', '市辖区', '441800');
INSERT INTO `provinces` VALUES ('441802', '清城区', '441800');
INSERT INTO `provinces` VALUES ('441803', '清新区', '441800');
INSERT INTO `provinces` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `provinces` VALUES ('441823', '阳山县', '441800');
INSERT INTO `provinces` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `provinces` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `provinces` VALUES ('441881', '英德市', '441800');
INSERT INTO `provinces` VALUES ('441882', '连州市', '441800');
INSERT INTO `provinces` VALUES ('441900', '东莞市', '440000');
INSERT INTO `provinces` VALUES ('442000', '中山市', '440000');
INSERT INTO `provinces` VALUES ('445100', '潮州市', '440000');
INSERT INTO `provinces` VALUES ('445101', '市辖区', '445100');
INSERT INTO `provinces` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `provinces` VALUES ('445103', '潮安区', '445100');
INSERT INTO `provinces` VALUES ('445122', '饶平县', '445100');
INSERT INTO `provinces` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `provinces` VALUES ('445201', '市辖区', '445200');
INSERT INTO `provinces` VALUES ('445202', '榕城区', '445200');
INSERT INTO `provinces` VALUES ('445203', '揭东区', '445200');
INSERT INTO `provinces` VALUES ('445222', '揭西县', '445200');
INSERT INTO `provinces` VALUES ('445224', '惠来县', '445200');
INSERT INTO `provinces` VALUES ('445281', '普宁市', '445200');
INSERT INTO `provinces` VALUES ('445300', '云浮市', '440000');
INSERT INTO `provinces` VALUES ('445301', '市辖区', '445300');
INSERT INTO `provinces` VALUES ('445302', '云城区', '445300');
INSERT INTO `provinces` VALUES ('445303', '云安区', '445300');
INSERT INTO `provinces` VALUES ('445321', '新兴县', '445300');
INSERT INTO `provinces` VALUES ('445322', '郁南县', '445300');
INSERT INTO `provinces` VALUES ('445381', '罗定市', '445300');
INSERT INTO `provinces` VALUES ('450000', '广西壮族自治区', '0');
INSERT INTO `provinces` VALUES ('450100', '南宁市', '450000');
INSERT INTO `provinces` VALUES ('450101', '市辖区', '450100');
INSERT INTO `provinces` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `provinces` VALUES ('450103', '青秀区', '450100');
INSERT INTO `provinces` VALUES ('450105', '江南区', '450100');
INSERT INTO `provinces` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `provinces` VALUES ('450108', '良庆区', '450100');
INSERT INTO `provinces` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `provinces` VALUES ('450110', '武鸣区', '450100');
INSERT INTO `provinces` VALUES ('450123', '隆安县', '450100');
INSERT INTO `provinces` VALUES ('450124', '马山县', '450100');
INSERT INTO `provinces` VALUES ('450125', '上林县', '450100');
INSERT INTO `provinces` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `provinces` VALUES ('450127', '横县', '450100');
INSERT INTO `provinces` VALUES ('450200', '柳州市', '450000');
INSERT INTO `provinces` VALUES ('450201', '市辖区', '450200');
INSERT INTO `provinces` VALUES ('450202', '城中区', '450200');
INSERT INTO `provinces` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `provinces` VALUES ('450204', '柳南区', '450200');
INSERT INTO `provinces` VALUES ('450205', '柳北区', '450200');
INSERT INTO `provinces` VALUES ('450206', '柳江区', '450200');
INSERT INTO `provinces` VALUES ('450222', '柳城县', '450200');
INSERT INTO `provinces` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `provinces` VALUES ('450224', '融安县', '450200');
INSERT INTO `provinces` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `provinces` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `provinces` VALUES ('450300', '桂林市', '450000');
INSERT INTO `provinces` VALUES ('450301', '市辖区', '450300');
INSERT INTO `provinces` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `provinces` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `provinces` VALUES ('450304', '象山区', '450300');
INSERT INTO `provinces` VALUES ('450305', '七星区', '450300');
INSERT INTO `provinces` VALUES ('450311', '雁山区', '450300');
INSERT INTO `provinces` VALUES ('450312', '临桂区', '450300');
INSERT INTO `provinces` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `provinces` VALUES ('450323', '灵川县', '450300');
INSERT INTO `provinces` VALUES ('450324', '全州县', '450300');
INSERT INTO `provinces` VALUES ('450325', '兴安县', '450300');
INSERT INTO `provinces` VALUES ('450326', '永福县', '450300');
INSERT INTO `provinces` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `provinces` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `provinces` VALUES ('450329', '资源县', '450300');
INSERT INTO `provinces` VALUES ('450330', '平乐县', '450300');
INSERT INTO `provinces` VALUES ('450331', '荔浦县', '450300');
INSERT INTO `provinces` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `provinces` VALUES ('450400', '梧州市', '450000');
INSERT INTO `provinces` VALUES ('450401', '市辖区', '450400');
INSERT INTO `provinces` VALUES ('450403', '万秀区', '450400');
INSERT INTO `provinces` VALUES ('450405', '长洲区', '450400');
INSERT INTO `provinces` VALUES ('450406', '龙圩区', '450400');
INSERT INTO `provinces` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `provinces` VALUES ('450422', '藤县', '450400');
INSERT INTO `provinces` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `provinces` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `provinces` VALUES ('450500', '北海市', '450000');
INSERT INTO `provinces` VALUES ('450501', '市辖区', '450500');
INSERT INTO `provinces` VALUES ('450502', '海城区', '450500');
INSERT INTO `provinces` VALUES ('450503', '银海区', '450500');
INSERT INTO `provinces` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `provinces` VALUES ('450521', '合浦县', '450500');
INSERT INTO `provinces` VALUES ('450600', '防城港市', '450000');
INSERT INTO `provinces` VALUES ('450601', '市辖区', '450600');
INSERT INTO `provinces` VALUES ('450602', '港口区', '450600');
INSERT INTO `provinces` VALUES ('450603', '防城区', '450600');
INSERT INTO `provinces` VALUES ('450621', '上思县', '450600');
INSERT INTO `provinces` VALUES ('450681', '东兴市', '450600');
INSERT INTO `provinces` VALUES ('450700', '钦州市', '450000');
INSERT INTO `provinces` VALUES ('450701', '市辖区', '450700');
INSERT INTO `provinces` VALUES ('450702', '钦南区', '450700');
INSERT INTO `provinces` VALUES ('450703', '钦北区', '450700');
INSERT INTO `provinces` VALUES ('450721', '灵山县', '450700');
INSERT INTO `provinces` VALUES ('450722', '浦北县', '450700');
INSERT INTO `provinces` VALUES ('450800', '贵港市', '450000');
INSERT INTO `provinces` VALUES ('450801', '市辖区', '450800');
INSERT INTO `provinces` VALUES ('450802', '港北区', '450800');
INSERT INTO `provinces` VALUES ('450803', '港南区', '450800');
INSERT INTO `provinces` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `provinces` VALUES ('450821', '平南县', '450800');
INSERT INTO `provinces` VALUES ('450881', '桂平市', '450800');
INSERT INTO `provinces` VALUES ('450900', '玉林市', '450000');
INSERT INTO `provinces` VALUES ('450901', '市辖区', '450900');
INSERT INTO `provinces` VALUES ('450902', '玉州区', '450900');
INSERT INTO `provinces` VALUES ('450903', '福绵区', '450900');
INSERT INTO `provinces` VALUES ('450921', '容县', '450900');
INSERT INTO `provinces` VALUES ('450922', '陆川县', '450900');
INSERT INTO `provinces` VALUES ('450923', '博白县', '450900');
INSERT INTO `provinces` VALUES ('450924', '兴业县', '450900');
INSERT INTO `provinces` VALUES ('450981', '北流市', '450900');
INSERT INTO `provinces` VALUES ('451000', '百色市', '450000');
INSERT INTO `provinces` VALUES ('451001', '市辖区', '451000');
INSERT INTO `provinces` VALUES ('451002', '右江区', '451000');
INSERT INTO `provinces` VALUES ('451021', '田阳县', '451000');
INSERT INTO `provinces` VALUES ('451022', '田东县', '451000');
INSERT INTO `provinces` VALUES ('451023', '平果县', '451000');
INSERT INTO `provinces` VALUES ('451024', '德保县', '451000');
INSERT INTO `provinces` VALUES ('451026', '那坡县', '451000');
INSERT INTO `provinces` VALUES ('451027', '凌云县', '451000');
INSERT INTO `provinces` VALUES ('451028', '乐业县', '451000');
INSERT INTO `provinces` VALUES ('451029', '田林县', '451000');
INSERT INTO `provinces` VALUES ('451030', '西林县', '451000');
INSERT INTO `provinces` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `provinces` VALUES ('451081', '靖西市', '451000');
INSERT INTO `provinces` VALUES ('451100', '贺州市', '450000');
INSERT INTO `provinces` VALUES ('451101', '市辖区', '451100');
INSERT INTO `provinces` VALUES ('451102', '八步区', '451100');
INSERT INTO `provinces` VALUES ('451103', '平桂区', '451100');
INSERT INTO `provinces` VALUES ('451121', '昭平县', '451100');
INSERT INTO `provinces` VALUES ('451122', '钟山县', '451100');
INSERT INTO `provinces` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `provinces` VALUES ('451200', '河池市', '450000');
INSERT INTO `provinces` VALUES ('451201', '市辖区', '451200');
INSERT INTO `provinces` VALUES ('451202', '金城江区', '451200');
INSERT INTO `provinces` VALUES ('451221', '南丹县', '451200');
INSERT INTO `provinces` VALUES ('451222', '天峨县', '451200');
INSERT INTO `provinces` VALUES ('451223', '凤山县', '451200');
INSERT INTO `provinces` VALUES ('451224', '东兰县', '451200');
INSERT INTO `provinces` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `provinces` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `provinces` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `provinces` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `provinces` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `provinces` VALUES ('451281', '宜州市', '451200');
INSERT INTO `provinces` VALUES ('451300', '来宾市', '450000');
INSERT INTO `provinces` VALUES ('451301', '市辖区', '451300');
INSERT INTO `provinces` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `provinces` VALUES ('451321', '忻城县', '451300');
INSERT INTO `provinces` VALUES ('451322', '象州县', '451300');
INSERT INTO `provinces` VALUES ('451323', '武宣县', '451300');
INSERT INTO `provinces` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `provinces` VALUES ('451381', '合山市', '451300');
INSERT INTO `provinces` VALUES ('451400', '崇左市', '450000');
INSERT INTO `provinces` VALUES ('451401', '市辖区', '451400');
INSERT INTO `provinces` VALUES ('451402', '江州区', '451400');
INSERT INTO `provinces` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `provinces` VALUES ('451422', '宁明县', '451400');
INSERT INTO `provinces` VALUES ('451423', '龙州县', '451400');
INSERT INTO `provinces` VALUES ('451424', '大新县', '451400');
INSERT INTO `provinces` VALUES ('451425', '天等县', '451400');
INSERT INTO `provinces` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `provinces` VALUES ('460000', '海南省', '0');
INSERT INTO `provinces` VALUES ('460100', '海口市', '460000');
INSERT INTO `provinces` VALUES ('460101', '市辖区', '460100');
INSERT INTO `provinces` VALUES ('460105', '秀英区', '460100');
INSERT INTO `provinces` VALUES ('460106', '龙华区', '460100');
INSERT INTO `provinces` VALUES ('460107', '琼山区', '460100');
INSERT INTO `provinces` VALUES ('460108', '美兰区', '460100');
INSERT INTO `provinces` VALUES ('460200', '三亚市', '460000');
INSERT INTO `provinces` VALUES ('460201', '市辖区', '460200');
INSERT INTO `provinces` VALUES ('460202', '海棠区', '460200');
INSERT INTO `provinces` VALUES ('460203', '吉阳区', '460200');
INSERT INTO `provinces` VALUES ('460204', '天涯区', '460200');
INSERT INTO `provinces` VALUES ('460205', '崖州区', '460200');
INSERT INTO `provinces` VALUES ('460300', '三沙市', '460000');
INSERT INTO `provinces` VALUES ('460400', '儋州市', '460000');
INSERT INTO `provinces` VALUES ('469000', '省直辖县级行政区划', '460000');
INSERT INTO `provinces` VALUES ('469001', '五指山市', '469000');
INSERT INTO `provinces` VALUES ('469002', '琼海市', '469000');
INSERT INTO `provinces` VALUES ('469005', '文昌市', '469000');
INSERT INTO `provinces` VALUES ('469006', '万宁市', '469000');
INSERT INTO `provinces` VALUES ('469007', '东方市', '469000');
INSERT INTO `provinces` VALUES ('469021', '定安县', '469000');
INSERT INTO `provinces` VALUES ('469022', '屯昌县', '469000');
INSERT INTO `provinces` VALUES ('469023', '澄迈县', '469000');
INSERT INTO `provinces` VALUES ('469024', '临高县', '469000');
INSERT INTO `provinces` VALUES ('469025', '白沙黎族自治县', '469000');
INSERT INTO `provinces` VALUES ('469026', '昌江黎族自治县', '469000');
INSERT INTO `provinces` VALUES ('469027', '乐东黎族自治县', '469000');
INSERT INTO `provinces` VALUES ('469028', '陵水黎族自治县', '469000');
INSERT INTO `provinces` VALUES ('469029', '保亭黎族苗族自治县', '469000');
INSERT INTO `provinces` VALUES ('469030', '琼中黎族苗族自治县', '469000');
INSERT INTO `provinces` VALUES ('500000', '重庆市', '0');
INSERT INTO `provinces` VALUES ('500100', '市辖区', '500000');
INSERT INTO `provinces` VALUES ('500101', '万州区', '500100');
INSERT INTO `provinces` VALUES ('500102', '涪陵区', '500100');
INSERT INTO `provinces` VALUES ('500103', '渝中区', '500100');
INSERT INTO `provinces` VALUES ('500104', '大渡口区', '500100');
INSERT INTO `provinces` VALUES ('500105', '江北区', '500100');
INSERT INTO `provinces` VALUES ('500106', '沙坪坝区', '500100');
INSERT INTO `provinces` VALUES ('500107', '九龙坡区', '500100');
INSERT INTO `provinces` VALUES ('500108', '南岸区', '500100');
INSERT INTO `provinces` VALUES ('500109', '北碚区', '500100');
INSERT INTO `provinces` VALUES ('500110', '綦江区', '500100');
INSERT INTO `provinces` VALUES ('500111', '大足区', '500100');
INSERT INTO `provinces` VALUES ('500112', '渝北区', '500100');
INSERT INTO `provinces` VALUES ('500113', '巴南区', '500100');
INSERT INTO `provinces` VALUES ('500114', '黔江区', '500100');
INSERT INTO `provinces` VALUES ('500115', '长寿区', '500100');
INSERT INTO `provinces` VALUES ('500116', '江津区', '500100');
INSERT INTO `provinces` VALUES ('500117', '合川区', '500100');
INSERT INTO `provinces` VALUES ('500118', '永川区', '500100');
INSERT INTO `provinces` VALUES ('500119', '南川区', '500100');
INSERT INTO `provinces` VALUES ('500120', '璧山区', '500100');
INSERT INTO `provinces` VALUES ('500151', '铜梁区', '500100');
INSERT INTO `provinces` VALUES ('500152', '潼南区', '500100');
INSERT INTO `provinces` VALUES ('500153', '荣昌区', '500100');
INSERT INTO `provinces` VALUES ('500154', '开州区', '500100');
INSERT INTO `provinces` VALUES ('500200', '县', '500000');
INSERT INTO `provinces` VALUES ('500228', '梁平县', '500200');
INSERT INTO `provinces` VALUES ('500229', '城口县', '500200');
INSERT INTO `provinces` VALUES ('500230', '丰都县', '500200');
INSERT INTO `provinces` VALUES ('500231', '垫江县', '500200');
INSERT INTO `provinces` VALUES ('500232', '武隆县', '500200');
INSERT INTO `provinces` VALUES ('500233', '忠县', '500200');
INSERT INTO `provinces` VALUES ('500235', '云阳县', '500200');
INSERT INTO `provinces` VALUES ('500236', '奉节县', '500200');
INSERT INTO `provinces` VALUES ('500237', '巫山县', '500200');
INSERT INTO `provinces` VALUES ('500238', '巫溪县', '500200');
INSERT INTO `provinces` VALUES ('500240', '石柱土家族自治县', '500200');
INSERT INTO `provinces` VALUES ('500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `provinces` VALUES ('500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `provinces` VALUES ('500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `provinces` VALUES ('510000', '四川省', '0');
INSERT INTO `provinces` VALUES ('510100', '成都市', '510000');
INSERT INTO `provinces` VALUES ('510101', '市辖区', '510100');
INSERT INTO `provinces` VALUES ('510104', '锦江区', '510100');
INSERT INTO `provinces` VALUES ('510105', '青羊区', '510100');
INSERT INTO `provinces` VALUES ('510106', '金牛区', '510100');
INSERT INTO `provinces` VALUES ('510107', '武侯区', '510100');
INSERT INTO `provinces` VALUES ('510108', '成华区', '510100');
INSERT INTO `provinces` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `provinces` VALUES ('510113', '青白江区', '510100');
INSERT INTO `provinces` VALUES ('510114', '新都区', '510100');
INSERT INTO `provinces` VALUES ('510115', '温江区', '510100');
INSERT INTO `provinces` VALUES ('510116', '双流区', '510100');
INSERT INTO `provinces` VALUES ('510121', '金堂县', '510100');
INSERT INTO `provinces` VALUES ('510124', '郫县', '510100');
INSERT INTO `provinces` VALUES ('510129', '大邑县', '510100');
INSERT INTO `provinces` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `provinces` VALUES ('510132', '新津县', '510100');
INSERT INTO `provinces` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `provinces` VALUES ('510182', '彭州市', '510100');
INSERT INTO `provinces` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `provinces` VALUES ('510184', '崇州市', '510100');
INSERT INTO `provinces` VALUES ('510185', '简阳市', '510100');
INSERT INTO `provinces` VALUES ('510300', '自贡市', '510000');
INSERT INTO `provinces` VALUES ('510301', '市辖区', '510300');
INSERT INTO `provinces` VALUES ('510302', '自流井区', '510300');
INSERT INTO `provinces` VALUES ('510303', '贡井区', '510300');
INSERT INTO `provinces` VALUES ('510304', '大安区', '510300');
INSERT INTO `provinces` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `provinces` VALUES ('510321', '荣县', '510300');
INSERT INTO `provinces` VALUES ('510322', '富顺县', '510300');
INSERT INTO `provinces` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `provinces` VALUES ('510401', '市辖区', '510400');
INSERT INTO `provinces` VALUES ('510402', '东区', '510400');
INSERT INTO `provinces` VALUES ('510403', '西区', '510400');
INSERT INTO `provinces` VALUES ('510411', '仁和区', '510400');
INSERT INTO `provinces` VALUES ('510421', '米易县', '510400');
INSERT INTO `provinces` VALUES ('510422', '盐边县', '510400');
INSERT INTO `provinces` VALUES ('510500', '泸州市', '510000');
INSERT INTO `provinces` VALUES ('510501', '市辖区', '510500');
INSERT INTO `provinces` VALUES ('510502', '江阳区', '510500');
INSERT INTO `provinces` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `provinces` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `provinces` VALUES ('510521', '泸县', '510500');
INSERT INTO `provinces` VALUES ('510522', '合江县', '510500');
INSERT INTO `provinces` VALUES ('510524', '叙永县', '510500');
INSERT INTO `provinces` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `provinces` VALUES ('510600', '德阳市', '510000');
INSERT INTO `provinces` VALUES ('510601', '市辖区', '510600');
INSERT INTO `provinces` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `provinces` VALUES ('510623', '中江县', '510600');
INSERT INTO `provinces` VALUES ('510626', '罗江县', '510600');
INSERT INTO `provinces` VALUES ('510681', '广汉市', '510600');
INSERT INTO `provinces` VALUES ('510682', '什邡市', '510600');
INSERT INTO `provinces` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `provinces` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `provinces` VALUES ('510701', '市辖区', '510700');
INSERT INTO `provinces` VALUES ('510703', '涪城区', '510700');
INSERT INTO `provinces` VALUES ('510704', '游仙区', '510700');
INSERT INTO `provinces` VALUES ('510705', '安州区', '510700');
INSERT INTO `provinces` VALUES ('510722', '三台县', '510700');
INSERT INTO `provinces` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `provinces` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `provinces` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `provinces` VALUES ('510727', '平武县', '510700');
INSERT INTO `provinces` VALUES ('510781', '江油市', '510700');
INSERT INTO `provinces` VALUES ('510800', '广元市', '510000');
INSERT INTO `provinces` VALUES ('510801', '市辖区', '510800');
INSERT INTO `provinces` VALUES ('510802', '利州区', '510800');
INSERT INTO `provinces` VALUES ('510811', '昭化区', '510800');
INSERT INTO `provinces` VALUES ('510812', '朝天区', '510800');
INSERT INTO `provinces` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `provinces` VALUES ('510822', '青川县', '510800');
INSERT INTO `provinces` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `provinces` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `provinces` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `provinces` VALUES ('510901', '市辖区', '510900');
INSERT INTO `provinces` VALUES ('510903', '船山区', '510900');
INSERT INTO `provinces` VALUES ('510904', '安居区', '510900');
INSERT INTO `provinces` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `provinces` VALUES ('510922', '射洪县', '510900');
INSERT INTO `provinces` VALUES ('510923', '大英县', '510900');
INSERT INTO `provinces` VALUES ('511000', '内江市', '510000');
INSERT INTO `provinces` VALUES ('511001', '市辖区', '511000');
INSERT INTO `provinces` VALUES ('511002', '市中区', '511000');
INSERT INTO `provinces` VALUES ('511011', '东兴区', '511000');
INSERT INTO `provinces` VALUES ('511024', '威远县', '511000');
INSERT INTO `provinces` VALUES ('511025', '资中县', '511000');
INSERT INTO `provinces` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `provinces` VALUES ('511100', '乐山市', '510000');
INSERT INTO `provinces` VALUES ('511101', '市辖区', '511100');
INSERT INTO `provinces` VALUES ('511102', '市中区', '511100');
INSERT INTO `provinces` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `provinces` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `provinces` VALUES ('511113', '金口河区', '511100');
INSERT INTO `provinces` VALUES ('511123', '犍为县', '511100');
INSERT INTO `provinces` VALUES ('511124', '井研县', '511100');
INSERT INTO `provinces` VALUES ('511126', '夹江县', '511100');
INSERT INTO `provinces` VALUES ('511129', '沐川县', '511100');
INSERT INTO `provinces` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `provinces` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `provinces` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `provinces` VALUES ('511300', '南充市', '510000');
INSERT INTO `provinces` VALUES ('511301', '市辖区', '511300');
INSERT INTO `provinces` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `provinces` VALUES ('511303', '高坪区', '511300');
INSERT INTO `provinces` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `provinces` VALUES ('511321', '南部县', '511300');
INSERT INTO `provinces` VALUES ('511322', '营山县', '511300');
INSERT INTO `provinces` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `provinces` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `provinces` VALUES ('511325', '西充县', '511300');
INSERT INTO `provinces` VALUES ('511381', '阆中市', '511300');
INSERT INTO `provinces` VALUES ('511400', '眉山市', '510000');
INSERT INTO `provinces` VALUES ('511401', '市辖区', '511400');
INSERT INTO `provinces` VALUES ('511402', '东坡区', '511400');
INSERT INTO `provinces` VALUES ('511403', '彭山区', '511400');
INSERT INTO `provinces` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `provinces` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `provinces` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `provinces` VALUES ('511425', '青神县', '511400');
INSERT INTO `provinces` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `provinces` VALUES ('511501', '市辖区', '511500');
INSERT INTO `provinces` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `provinces` VALUES ('511503', '南溪区', '511500');
INSERT INTO `provinces` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `provinces` VALUES ('511523', '江安县', '511500');
INSERT INTO `provinces` VALUES ('511524', '长宁县', '511500');
INSERT INTO `provinces` VALUES ('511525', '高县', '511500');
INSERT INTO `provinces` VALUES ('511526', '珙县', '511500');
INSERT INTO `provinces` VALUES ('511527', '筠连县', '511500');
INSERT INTO `provinces` VALUES ('511528', '兴文县', '511500');
INSERT INTO `provinces` VALUES ('511529', '屏山县', '511500');
INSERT INTO `provinces` VALUES ('511600', '广安市', '510000');
INSERT INTO `provinces` VALUES ('511601', '市辖区', '511600');
INSERT INTO `provinces` VALUES ('511602', '广安区', '511600');
INSERT INTO `provinces` VALUES ('511603', '前锋区', '511600');
INSERT INTO `provinces` VALUES ('511621', '岳池县', '511600');
INSERT INTO `provinces` VALUES ('511622', '武胜县', '511600');
INSERT INTO `provinces` VALUES ('511623', '邻水县', '511600');
INSERT INTO `provinces` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `provinces` VALUES ('511700', '达州市', '510000');
INSERT INTO `provinces` VALUES ('511701', '市辖区', '511700');
INSERT INTO `provinces` VALUES ('511702', '通川区', '511700');
INSERT INTO `provinces` VALUES ('511703', '达川区', '511700');
INSERT INTO `provinces` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `provinces` VALUES ('511723', '开江县', '511700');
INSERT INTO `provinces` VALUES ('511724', '大竹县', '511700');
INSERT INTO `provinces` VALUES ('511725', '渠县', '511700');
INSERT INTO `provinces` VALUES ('511781', '万源市', '511700');
INSERT INTO `provinces` VALUES ('511800', '雅安市', '510000');
INSERT INTO `provinces` VALUES ('511801', '市辖区', '511800');
INSERT INTO `provinces` VALUES ('511802', '雨城区', '511800');
INSERT INTO `provinces` VALUES ('511803', '名山区', '511800');
INSERT INTO `provinces` VALUES ('511822', '荥经县', '511800');
INSERT INTO `provinces` VALUES ('511823', '汉源县', '511800');
INSERT INTO `provinces` VALUES ('511824', '石棉县', '511800');
INSERT INTO `provinces` VALUES ('511825', '天全县', '511800');
INSERT INTO `provinces` VALUES ('511826', '芦山县', '511800');
INSERT INTO `provinces` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `provinces` VALUES ('511900', '巴中市', '510000');
INSERT INTO `provinces` VALUES ('511901', '市辖区', '511900');
INSERT INTO `provinces` VALUES ('511902', '巴州区', '511900');
INSERT INTO `provinces` VALUES ('511903', '恩阳区', '511900');
INSERT INTO `provinces` VALUES ('511921', '通江县', '511900');
INSERT INTO `provinces` VALUES ('511922', '南江县', '511900');
INSERT INTO `provinces` VALUES ('511923', '平昌县', '511900');
INSERT INTO `provinces` VALUES ('512000', '资阳市', '510000');
INSERT INTO `provinces` VALUES ('512001', '市辖区', '512000');
INSERT INTO `provinces` VALUES ('512002', '雁江区', '512000');
INSERT INTO `provinces` VALUES ('512021', '安岳县', '512000');
INSERT INTO `provinces` VALUES ('512022', '乐至县', '512000');
INSERT INTO `provinces` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `provinces` VALUES ('513201', '马尔康市', '513200');
INSERT INTO `provinces` VALUES ('513221', '汶川县', '513200');
INSERT INTO `provinces` VALUES ('513222', '理县', '513200');
INSERT INTO `provinces` VALUES ('513223', '茂县', '513200');
INSERT INTO `provinces` VALUES ('513224', '松潘县', '513200');
INSERT INTO `provinces` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `provinces` VALUES ('513226', '金川县', '513200');
INSERT INTO `provinces` VALUES ('513227', '小金县', '513200');
INSERT INTO `provinces` VALUES ('513228', '黑水县', '513200');
INSERT INTO `provinces` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `provinces` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `provinces` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `provinces` VALUES ('513233', '红原县', '513200');
INSERT INTO `provinces` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `provinces` VALUES ('513301', '康定市', '513300');
INSERT INTO `provinces` VALUES ('513322', '泸定县', '513300');
INSERT INTO `provinces` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `provinces` VALUES ('513324', '九龙县', '513300');
INSERT INTO `provinces` VALUES ('513325', '雅江县', '513300');
INSERT INTO `provinces` VALUES ('513326', '道孚县', '513300');
INSERT INTO `provinces` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `provinces` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `provinces` VALUES ('513329', '新龙县', '513300');
INSERT INTO `provinces` VALUES ('513330', '德格县', '513300');
INSERT INTO `provinces` VALUES ('513331', '白玉县', '513300');
INSERT INTO `provinces` VALUES ('513332', '石渠县', '513300');
INSERT INTO `provinces` VALUES ('513333', '色达县', '513300');
INSERT INTO `provinces` VALUES ('513334', '理塘县', '513300');
INSERT INTO `provinces` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `provinces` VALUES ('513336', '乡城县', '513300');
INSERT INTO `provinces` VALUES ('513337', '稻城县', '513300');
INSERT INTO `provinces` VALUES ('513338', '得荣县', '513300');
INSERT INTO `provinces` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `provinces` VALUES ('513401', '西昌市', '513400');
INSERT INTO `provinces` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `provinces` VALUES ('513423', '盐源县', '513400');
INSERT INTO `provinces` VALUES ('513424', '德昌县', '513400');
INSERT INTO `provinces` VALUES ('513425', '会理县', '513400');
INSERT INTO `provinces` VALUES ('513426', '会东县', '513400');
INSERT INTO `provinces` VALUES ('513427', '宁南县', '513400');
INSERT INTO `provinces` VALUES ('513428', '普格县', '513400');
INSERT INTO `provinces` VALUES ('513429', '布拖县', '513400');
INSERT INTO `provinces` VALUES ('513430', '金阳县', '513400');
INSERT INTO `provinces` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `provinces` VALUES ('513432', '喜德县', '513400');
INSERT INTO `provinces` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `provinces` VALUES ('513434', '越西县', '513400');
INSERT INTO `provinces` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `provinces` VALUES ('513436', '美姑县', '513400');
INSERT INTO `provinces` VALUES ('513437', '雷波县', '513400');
INSERT INTO `provinces` VALUES ('520000', '贵州省', '0');
INSERT INTO `provinces` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `provinces` VALUES ('520101', '市辖区', '520100');
INSERT INTO `provinces` VALUES ('520102', '南明区', '520100');
INSERT INTO `provinces` VALUES ('520103', '云岩区', '520100');
INSERT INTO `provinces` VALUES ('520111', '花溪区', '520100');
INSERT INTO `provinces` VALUES ('520112', '乌当区', '520100');
INSERT INTO `provinces` VALUES ('520113', '白云区', '520100');
INSERT INTO `provinces` VALUES ('520115', '观山湖区', '520100');
INSERT INTO `provinces` VALUES ('520121', '开阳县', '520100');
INSERT INTO `provinces` VALUES ('520122', '息烽县', '520100');
INSERT INTO `provinces` VALUES ('520123', '修文县', '520100');
INSERT INTO `provinces` VALUES ('520181', '清镇市', '520100');
INSERT INTO `provinces` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `provinces` VALUES ('520201', '钟山区', '520200');
INSERT INTO `provinces` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `provinces` VALUES ('520221', '水城县', '520200');
INSERT INTO `provinces` VALUES ('520222', '盘县', '520200');
INSERT INTO `provinces` VALUES ('520300', '遵义市', '520000');
INSERT INTO `provinces` VALUES ('520301', '市辖区', '520300');
INSERT INTO `provinces` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `provinces` VALUES ('520303', '汇川区', '520300');
INSERT INTO `provinces` VALUES ('520304', '播州区', '520300');
INSERT INTO `provinces` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `provinces` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `provinces` VALUES ('520324', '正安县', '520300');
INSERT INTO `provinces` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `provinces` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `provinces` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `provinces` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `provinces` VALUES ('520329', '余庆县', '520300');
INSERT INTO `provinces` VALUES ('520330', '习水县', '520300');
INSERT INTO `provinces` VALUES ('520381', '赤水市', '520300');
INSERT INTO `provinces` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `provinces` VALUES ('520400', '安顺市', '520000');
INSERT INTO `provinces` VALUES ('520401', '市辖区', '520400');
INSERT INTO `provinces` VALUES ('520402', '西秀区', '520400');
INSERT INTO `provinces` VALUES ('520403', '平坝区', '520400');
INSERT INTO `provinces` VALUES ('520422', '普定县', '520400');
INSERT INTO `provinces` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `provinces` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `provinces` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `provinces` VALUES ('520500', '毕节市', '520000');
INSERT INTO `provinces` VALUES ('520501', '市辖区', '520500');
INSERT INTO `provinces` VALUES ('520502', '七星关区', '520500');
INSERT INTO `provinces` VALUES ('520521', '大方县', '520500');
INSERT INTO `provinces` VALUES ('520522', '黔西县', '520500');
INSERT INTO `provinces` VALUES ('520523', '金沙县', '520500');
INSERT INTO `provinces` VALUES ('520524', '织金县', '520500');
INSERT INTO `provinces` VALUES ('520525', '纳雍县', '520500');
INSERT INTO `provinces` VALUES ('520526', '威宁彝族回族苗族自治县', '520500');
INSERT INTO `provinces` VALUES ('520527', '赫章县', '520500');
INSERT INTO `provinces` VALUES ('520600', '铜仁市', '520000');
INSERT INTO `provinces` VALUES ('520601', '市辖区', '520600');
INSERT INTO `provinces` VALUES ('520602', '碧江区', '520600');
INSERT INTO `provinces` VALUES ('520603', '万山区', '520600');
INSERT INTO `provinces` VALUES ('520621', '江口县', '520600');
INSERT INTO `provinces` VALUES ('520622', '玉屏侗族自治县', '520600');
INSERT INTO `provinces` VALUES ('520623', '石阡县', '520600');
INSERT INTO `provinces` VALUES ('520624', '思南县', '520600');
INSERT INTO `provinces` VALUES ('520625', '印江土家族苗族自治县', '520600');
INSERT INTO `provinces` VALUES ('520626', '德江县', '520600');
INSERT INTO `provinces` VALUES ('520627', '沿河土家族自治县', '520600');
INSERT INTO `provinces` VALUES ('520628', '松桃苗族自治县', '520600');
INSERT INTO `provinces` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `provinces` VALUES ('522301', '兴义市', '522300');
INSERT INTO `provinces` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `provinces` VALUES ('522323', '普安县', '522300');
INSERT INTO `provinces` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `provinces` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `provinces` VALUES ('522326', '望谟县', '522300');
INSERT INTO `provinces` VALUES ('522327', '册亨县', '522300');
INSERT INTO `provinces` VALUES ('522328', '安龙县', '522300');
INSERT INTO `provinces` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `provinces` VALUES ('522601', '凯里市', '522600');
INSERT INTO `provinces` VALUES ('522622', '黄平县', '522600');
INSERT INTO `provinces` VALUES ('522623', '施秉县', '522600');
INSERT INTO `provinces` VALUES ('522624', '三穗县', '522600');
INSERT INTO `provinces` VALUES ('522625', '镇远县', '522600');
INSERT INTO `provinces` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `provinces` VALUES ('522627', '天柱县', '522600');
INSERT INTO `provinces` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `provinces` VALUES ('522629', '剑河县', '522600');
INSERT INTO `provinces` VALUES ('522630', '台江县', '522600');
INSERT INTO `provinces` VALUES ('522631', '黎平县', '522600');
INSERT INTO `provinces` VALUES ('522632', '榕江县', '522600');
INSERT INTO `provinces` VALUES ('522633', '从江县', '522600');
INSERT INTO `provinces` VALUES ('522634', '雷山县', '522600');
INSERT INTO `provinces` VALUES ('522635', '麻江县', '522600');
INSERT INTO `provinces` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `provinces` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `provinces` VALUES ('522701', '都匀市', '522700');
INSERT INTO `provinces` VALUES ('522702', '福泉市', '522700');
INSERT INTO `provinces` VALUES ('522722', '荔波县', '522700');
INSERT INTO `provinces` VALUES ('522723', '贵定县', '522700');
INSERT INTO `provinces` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `provinces` VALUES ('522726', '独山县', '522700');
INSERT INTO `provinces` VALUES ('522727', '平塘县', '522700');
INSERT INTO `provinces` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `provinces` VALUES ('522729', '长顺县', '522700');
INSERT INTO `provinces` VALUES ('522730', '龙里县', '522700');
INSERT INTO `provinces` VALUES ('522731', '惠水县', '522700');
INSERT INTO `provinces` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `provinces` VALUES ('530000', '云南省', '0');
INSERT INTO `provinces` VALUES ('530100', '昆明市', '530000');
INSERT INTO `provinces` VALUES ('530101', '市辖区', '530100');
INSERT INTO `provinces` VALUES ('530102', '五华区', '530100');
INSERT INTO `provinces` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `provinces` VALUES ('530111', '官渡区', '530100');
INSERT INTO `provinces` VALUES ('530112', '西山区', '530100');
INSERT INTO `provinces` VALUES ('530113', '东川区', '530100');
INSERT INTO `provinces` VALUES ('530114', '呈贡区', '530100');
INSERT INTO `provinces` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `provinces` VALUES ('530124', '富民县', '530100');
INSERT INTO `provinces` VALUES ('530125', '宜良县', '530100');
INSERT INTO `provinces` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `provinces` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `provinces` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `provinces` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `provinces` VALUES ('530181', '安宁市', '530100');
INSERT INTO `provinces` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `provinces` VALUES ('530301', '市辖区', '530300');
INSERT INTO `provinces` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `provinces` VALUES ('530303', '沾益区', '530300');
INSERT INTO `provinces` VALUES ('530321', '马龙县', '530300');
INSERT INTO `provinces` VALUES ('530322', '陆良县', '530300');
INSERT INTO `provinces` VALUES ('530323', '师宗县', '530300');
INSERT INTO `provinces` VALUES ('530324', '罗平县', '530300');
INSERT INTO `provinces` VALUES ('530325', '富源县', '530300');
INSERT INTO `provinces` VALUES ('530326', '会泽县', '530300');
INSERT INTO `provinces` VALUES ('530381', '宣威市', '530300');
INSERT INTO `provinces` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `provinces` VALUES ('530401', '市辖区', '530400');
INSERT INTO `provinces` VALUES ('530402', '红塔区', '530400');
INSERT INTO `provinces` VALUES ('530403', '江川区', '530400');
INSERT INTO `provinces` VALUES ('530422', '澄江县', '530400');
INSERT INTO `provinces` VALUES ('530423', '通海县', '530400');
INSERT INTO `provinces` VALUES ('530424', '华宁县', '530400');
INSERT INTO `provinces` VALUES ('530425', '易门县', '530400');
INSERT INTO `provinces` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `provinces` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `provinces` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `provinces` VALUES ('530500', '保山市', '530000');
INSERT INTO `provinces` VALUES ('530501', '市辖区', '530500');
INSERT INTO `provinces` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `provinces` VALUES ('530521', '施甸县', '530500');
INSERT INTO `provinces` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `provinces` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `provinces` VALUES ('530581', '腾冲市', '530500');
INSERT INTO `provinces` VALUES ('530600', '昭通市', '530000');
INSERT INTO `provinces` VALUES ('530601', '市辖区', '530600');
INSERT INTO `provinces` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `provinces` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `provinces` VALUES ('530622', '巧家县', '530600');
INSERT INTO `provinces` VALUES ('530623', '盐津县', '530600');
INSERT INTO `provinces` VALUES ('530624', '大关县', '530600');
INSERT INTO `provinces` VALUES ('530625', '永善县', '530600');
INSERT INTO `provinces` VALUES ('530626', '绥江县', '530600');
INSERT INTO `provinces` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `provinces` VALUES ('530628', '彝良县', '530600');
INSERT INTO `provinces` VALUES ('530629', '威信县', '530600');
INSERT INTO `provinces` VALUES ('530630', '水富县', '530600');
INSERT INTO `provinces` VALUES ('530700', '丽江市', '530000');
INSERT INTO `provinces` VALUES ('530701', '市辖区', '530700');
INSERT INTO `provinces` VALUES ('530702', '古城区', '530700');
INSERT INTO `provinces` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `provinces` VALUES ('530722', '永胜县', '530700');
INSERT INTO `provinces` VALUES ('530723', '华坪县', '530700');
INSERT INTO `provinces` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `provinces` VALUES ('530800', '普洱市', '530000');
INSERT INTO `provinces` VALUES ('530801', '市辖区', '530800');
INSERT INTO `provinces` VALUES ('530802', '思茅区', '530800');
INSERT INTO `provinces` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800');
INSERT INTO `provinces` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `provinces` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `provinces` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `provinces` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `provinces` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `provinces` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `provinces` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `provinces` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `provinces` VALUES ('530900', '临沧市', '530000');
INSERT INTO `provinces` VALUES ('530901', '市辖区', '530900');
INSERT INTO `provinces` VALUES ('530902', '临翔区', '530900');
INSERT INTO `provinces` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `provinces` VALUES ('530922', '云县', '530900');
INSERT INTO `provinces` VALUES ('530923', '永德县', '530900');
INSERT INTO `provinces` VALUES ('530924', '镇康县', '530900');
INSERT INTO `provinces` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `provinces` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `provinces` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `provinces` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `provinces` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `provinces` VALUES ('532322', '双柏县', '532300');
INSERT INTO `provinces` VALUES ('532323', '牟定县', '532300');
INSERT INTO `provinces` VALUES ('532324', '南华县', '532300');
INSERT INTO `provinces` VALUES ('532325', '姚安县', '532300');
INSERT INTO `provinces` VALUES ('532326', '大姚县', '532300');
INSERT INTO `provinces` VALUES ('532327', '永仁县', '532300');
INSERT INTO `provinces` VALUES ('532328', '元谋县', '532300');
INSERT INTO `provinces` VALUES ('532329', '武定县', '532300');
INSERT INTO `provinces` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `provinces` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `provinces` VALUES ('532501', '个旧市', '532500');
INSERT INTO `provinces` VALUES ('532502', '开远市', '532500');
INSERT INTO `provinces` VALUES ('532503', '蒙自市', '532500');
INSERT INTO `provinces` VALUES ('532504', '弥勒市', '532500');
INSERT INTO `provinces` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `provinces` VALUES ('532524', '建水县', '532500');
INSERT INTO `provinces` VALUES ('532525', '石屏县', '532500');
INSERT INTO `provinces` VALUES ('532527', '泸西县', '532500');
INSERT INTO `provinces` VALUES ('532528', '元阳县', '532500');
INSERT INTO `provinces` VALUES ('532529', '红河县', '532500');
INSERT INTO `provinces` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `provinces` VALUES ('532531', '绿春县', '532500');
INSERT INTO `provinces` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `provinces` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `provinces` VALUES ('532601', '文山市', '532600');
INSERT INTO `provinces` VALUES ('532622', '砚山县', '532600');
INSERT INTO `provinces` VALUES ('532623', '西畴县', '532600');
INSERT INTO `provinces` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `provinces` VALUES ('532625', '马关县', '532600');
INSERT INTO `provinces` VALUES ('532626', '丘北县', '532600');
INSERT INTO `provinces` VALUES ('532627', '广南县', '532600');
INSERT INTO `provinces` VALUES ('532628', '富宁县', '532600');
INSERT INTO `provinces` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `provinces` VALUES ('532801', '景洪市', '532800');
INSERT INTO `provinces` VALUES ('532822', '勐海县', '532800');
INSERT INTO `provinces` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `provinces` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `provinces` VALUES ('532901', '大理市', '532900');
INSERT INTO `provinces` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `provinces` VALUES ('532923', '祥云县', '532900');
INSERT INTO `provinces` VALUES ('532924', '宾川县', '532900');
INSERT INTO `provinces` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `provinces` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `provinces` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `provinces` VALUES ('532928', '永平县', '532900');
INSERT INTO `provinces` VALUES ('532929', '云龙县', '532900');
INSERT INTO `provinces` VALUES ('532930', '洱源县', '532900');
INSERT INTO `provinces` VALUES ('532931', '剑川县', '532900');
INSERT INTO `provinces` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `provinces` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `provinces` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `provinces` VALUES ('533103', '芒市', '533100');
INSERT INTO `provinces` VALUES ('533122', '梁河县', '533100');
INSERT INTO `provinces` VALUES ('533123', '盈江县', '533100');
INSERT INTO `provinces` VALUES ('533124', '陇川县', '533100');
INSERT INTO `provinces` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `provinces` VALUES ('533301', '泸水市', '533300');
INSERT INTO `provinces` VALUES ('533323', '福贡县', '533300');
INSERT INTO `provinces` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `provinces` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `provinces` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `provinces` VALUES ('533401', '香格里拉市', '533400');
INSERT INTO `provinces` VALUES ('533422', '德钦县', '533400');
INSERT INTO `provinces` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `provinces` VALUES ('540000', '西藏自治区', '0');
INSERT INTO `provinces` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `provinces` VALUES ('540101', '市辖区', '540100');
INSERT INTO `provinces` VALUES ('540102', '城关区', '540100');
INSERT INTO `provinces` VALUES ('540103', '堆龙德庆区', '540100');
INSERT INTO `provinces` VALUES ('540121', '林周县', '540100');
INSERT INTO `provinces` VALUES ('540122', '当雄县', '540100');
INSERT INTO `provinces` VALUES ('540123', '尼木县', '540100');
INSERT INTO `provinces` VALUES ('540124', '曲水县', '540100');
INSERT INTO `provinces` VALUES ('540126', '达孜县', '540100');
INSERT INTO `provinces` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `provinces` VALUES ('540200', '日喀则市', '540000');
INSERT INTO `provinces` VALUES ('540202', '桑珠孜区', '540200');
INSERT INTO `provinces` VALUES ('540221', '南木林县', '540200');
INSERT INTO `provinces` VALUES ('540222', '江孜县', '540200');
INSERT INTO `provinces` VALUES ('540223', '定日县', '540200');
INSERT INTO `provinces` VALUES ('540224', '萨迦县', '540200');
INSERT INTO `provinces` VALUES ('540225', '拉孜县', '540200');
INSERT INTO `provinces` VALUES ('540226', '昂仁县', '540200');
INSERT INTO `provinces` VALUES ('540227', '谢通门县', '540200');
INSERT INTO `provinces` VALUES ('540228', '白朗县', '540200');
INSERT INTO `provinces` VALUES ('540229', '仁布县', '540200');
INSERT INTO `provinces` VALUES ('540230', '康马县', '540200');
INSERT INTO `provinces` VALUES ('540231', '定结县', '540200');
INSERT INTO `provinces` VALUES ('540232', '仲巴县', '540200');
INSERT INTO `provinces` VALUES ('540233', '亚东县', '540200');
INSERT INTO `provinces` VALUES ('540234', '吉隆县', '540200');
INSERT INTO `provinces` VALUES ('540235', '聂拉木县', '540200');
INSERT INTO `provinces` VALUES ('540236', '萨嘎县', '540200');
INSERT INTO `provinces` VALUES ('540237', '岗巴县', '540200');
INSERT INTO `provinces` VALUES ('540300', '昌都市', '540000');
INSERT INTO `provinces` VALUES ('540302', '卡若区', '540300');
INSERT INTO `provinces` VALUES ('540321', '江达县', '540300');
INSERT INTO `provinces` VALUES ('540322', '贡觉县', '540300');
INSERT INTO `provinces` VALUES ('540323', '类乌齐县', '540300');
INSERT INTO `provinces` VALUES ('540324', '丁青县', '540300');
INSERT INTO `provinces` VALUES ('540325', '察雅县', '540300');
INSERT INTO `provinces` VALUES ('540326', '八宿县', '540300');
INSERT INTO `provinces` VALUES ('540327', '左贡县', '540300');
INSERT INTO `provinces` VALUES ('540328', '芒康县', '540300');
INSERT INTO `provinces` VALUES ('540329', '洛隆县', '540300');
INSERT INTO `provinces` VALUES ('540330', '边坝县', '540300');
INSERT INTO `provinces` VALUES ('540400', '林芝市', '540000');
INSERT INTO `provinces` VALUES ('540402', '巴宜区', '540400');
INSERT INTO `provinces` VALUES ('540421', '工布江达县', '540400');
INSERT INTO `provinces` VALUES ('540422', '米林县', '540400');
INSERT INTO `provinces` VALUES ('540423', '墨脱县', '540400');
INSERT INTO `provinces` VALUES ('540424', '波密县', '540400');
INSERT INTO `provinces` VALUES ('540425', '察隅县', '540400');
INSERT INTO `provinces` VALUES ('540426', '朗县', '540400');
INSERT INTO `provinces` VALUES ('540500', '山南市', '540000');
INSERT INTO `provinces` VALUES ('540501', '市辖区', '540500');
INSERT INTO `provinces` VALUES ('540502', '乃东区', '540500');
INSERT INTO `provinces` VALUES ('540521', '扎囊县', '540500');
INSERT INTO `provinces` VALUES ('540522', '贡嘎县', '540500');
INSERT INTO `provinces` VALUES ('540523', '桑日县', '540500');
INSERT INTO `provinces` VALUES ('540524', '琼结县', '540500');
INSERT INTO `provinces` VALUES ('540525', '曲松县', '540500');
INSERT INTO `provinces` VALUES ('540526', '措美县', '540500');
INSERT INTO `provinces` VALUES ('540527', '洛扎县', '540500');
INSERT INTO `provinces` VALUES ('540528', '加查县', '540500');
INSERT INTO `provinces` VALUES ('540529', '隆子县', '540500');
INSERT INTO `provinces` VALUES ('540530', '错那县', '540500');
INSERT INTO `provinces` VALUES ('540531', '浪卡子县', '540500');
INSERT INTO `provinces` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `provinces` VALUES ('542421', '那曲县', '542400');
INSERT INTO `provinces` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `provinces` VALUES ('542423', '比如县', '542400');
INSERT INTO `provinces` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `provinces` VALUES ('542425', '安多县', '542400');
INSERT INTO `provinces` VALUES ('542426', '申扎县', '542400');
INSERT INTO `provinces` VALUES ('542427', '索县', '542400');
INSERT INTO `provinces` VALUES ('542428', '班戈县', '542400');
INSERT INTO `provinces` VALUES ('542429', '巴青县', '542400');
INSERT INTO `provinces` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `provinces` VALUES ('542431', '双湖县', '542400');
INSERT INTO `provinces` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `provinces` VALUES ('542521', '普兰县', '542500');
INSERT INTO `provinces` VALUES ('542522', '札达县', '542500');
INSERT INTO `provinces` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `provinces` VALUES ('542524', '日土县', '542500');
INSERT INTO `provinces` VALUES ('542525', '革吉县', '542500');
INSERT INTO `provinces` VALUES ('542526', '改则县', '542500');
INSERT INTO `provinces` VALUES ('542527', '措勤县', '542500');
INSERT INTO `provinces` VALUES ('610000', '陕西省', '0');
INSERT INTO `provinces` VALUES ('610100', '西安市', '610000');
INSERT INTO `provinces` VALUES ('610101', '市辖区', '610100');
INSERT INTO `provinces` VALUES ('610102', '新城区', '610100');
INSERT INTO `provinces` VALUES ('610103', '碑林区', '610100');
INSERT INTO `provinces` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `provinces` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `provinces` VALUES ('610112', '未央区', '610100');
INSERT INTO `provinces` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `provinces` VALUES ('610114', '阎良区', '610100');
INSERT INTO `provinces` VALUES ('610115', '临潼区', '610100');
INSERT INTO `provinces` VALUES ('610116', '长安区', '610100');
INSERT INTO `provinces` VALUES ('610117', '高陵区', '610100');
INSERT INTO `provinces` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `provinces` VALUES ('610124', '周至县', '610100');
INSERT INTO `provinces` VALUES ('610125', '户县', '610100');
INSERT INTO `provinces` VALUES ('610200', '铜川市', '610000');
INSERT INTO `provinces` VALUES ('610201', '市辖区', '610200');
INSERT INTO `provinces` VALUES ('610202', '王益区', '610200');
INSERT INTO `provinces` VALUES ('610203', '印台区', '610200');
INSERT INTO `provinces` VALUES ('610204', '耀州区', '610200');
INSERT INTO `provinces` VALUES ('610222', '宜君县', '610200');
INSERT INTO `provinces` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `provinces` VALUES ('610301', '市辖区', '610300');
INSERT INTO `provinces` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `provinces` VALUES ('610303', '金台区', '610300');
INSERT INTO `provinces` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `provinces` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `provinces` VALUES ('610323', '岐山县', '610300');
INSERT INTO `provinces` VALUES ('610324', '扶风县', '610300');
INSERT INTO `provinces` VALUES ('610326', '眉县', '610300');
INSERT INTO `provinces` VALUES ('610327', '陇县', '610300');
INSERT INTO `provinces` VALUES ('610328', '千阳县', '610300');
INSERT INTO `provinces` VALUES ('610329', '麟游县', '610300');
INSERT INTO `provinces` VALUES ('610330', '凤县', '610300');
INSERT INTO `provinces` VALUES ('610331', '太白县', '610300');
INSERT INTO `provinces` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `provinces` VALUES ('610401', '市辖区', '610400');
INSERT INTO `provinces` VALUES ('610402', '秦都区', '610400');
INSERT INTO `provinces` VALUES ('610403', '杨陵区', '610400');
INSERT INTO `provinces` VALUES ('610404', '渭城区', '610400');
INSERT INTO `provinces` VALUES ('610422', '三原县', '610400');
INSERT INTO `provinces` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `provinces` VALUES ('610424', '乾县', '610400');
INSERT INTO `provinces` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `provinces` VALUES ('610426', '永寿县', '610400');
INSERT INTO `provinces` VALUES ('610427', '彬县', '610400');
INSERT INTO `provinces` VALUES ('610428', '长武县', '610400');
INSERT INTO `provinces` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `provinces` VALUES ('610430', '淳化县', '610400');
INSERT INTO `provinces` VALUES ('610431', '武功县', '610400');
INSERT INTO `provinces` VALUES ('610481', '兴平市', '610400');
INSERT INTO `provinces` VALUES ('610500', '渭南市', '610000');
INSERT INTO `provinces` VALUES ('610501', '市辖区', '610500');
INSERT INTO `provinces` VALUES ('610502', '临渭区', '610500');
INSERT INTO `provinces` VALUES ('610503', '华州区', '610500');
INSERT INTO `provinces` VALUES ('610522', '潼关县', '610500');
INSERT INTO `provinces` VALUES ('610523', '大荔县', '610500');
INSERT INTO `provinces` VALUES ('610524', '合阳县', '610500');
INSERT INTO `provinces` VALUES ('610525', '澄城县', '610500');
INSERT INTO `provinces` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `provinces` VALUES ('610527', '白水县', '610500');
INSERT INTO `provinces` VALUES ('610528', '富平县', '610500');
INSERT INTO `provinces` VALUES ('610581', '韩城市', '610500');
INSERT INTO `provinces` VALUES ('610582', '华阴市', '610500');
INSERT INTO `provinces` VALUES ('610600', '延安市', '610000');
INSERT INTO `provinces` VALUES ('610601', '市辖区', '610600');
INSERT INTO `provinces` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `provinces` VALUES ('610603', '安塞区', '610600');
INSERT INTO `provinces` VALUES ('610621', '延长县', '610600');
INSERT INTO `provinces` VALUES ('610622', '延川县', '610600');
INSERT INTO `provinces` VALUES ('610623', '子长县', '610600');
INSERT INTO `provinces` VALUES ('610625', '志丹县', '610600');
INSERT INTO `provinces` VALUES ('610626', '吴起县', '610600');
INSERT INTO `provinces` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `provinces` VALUES ('610628', '富县', '610600');
INSERT INTO `provinces` VALUES ('610629', '洛川县', '610600');
INSERT INTO `provinces` VALUES ('610630', '宜川县', '610600');
INSERT INTO `provinces` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `provinces` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `provinces` VALUES ('610700', '汉中市', '610000');
INSERT INTO `provinces` VALUES ('610701', '市辖区', '610700');
INSERT INTO `provinces` VALUES ('610702', '汉台区', '610700');
INSERT INTO `provinces` VALUES ('610721', '南郑县', '610700');
INSERT INTO `provinces` VALUES ('610722', '城固县', '610700');
INSERT INTO `provinces` VALUES ('610723', '洋县', '610700');
INSERT INTO `provinces` VALUES ('610724', '西乡县', '610700');
INSERT INTO `provinces` VALUES ('610725', '勉县', '610700');
INSERT INTO `provinces` VALUES ('610726', '宁强县', '610700');
INSERT INTO `provinces` VALUES ('610727', '略阳县', '610700');
INSERT INTO `provinces` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `provinces` VALUES ('610729', '留坝县', '610700');
INSERT INTO `provinces` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `provinces` VALUES ('610800', '榆林市', '610000');
INSERT INTO `provinces` VALUES ('610801', '市辖区', '610800');
INSERT INTO `provinces` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `provinces` VALUES ('610803', '横山区', '610800');
INSERT INTO `provinces` VALUES ('610821', '神木县', '610800');
INSERT INTO `provinces` VALUES ('610822', '府谷县', '610800');
INSERT INTO `provinces` VALUES ('610824', '靖边县', '610800');
INSERT INTO `provinces` VALUES ('610825', '定边县', '610800');
INSERT INTO `provinces` VALUES ('610826', '绥德县', '610800');
INSERT INTO `provinces` VALUES ('610827', '米脂县', '610800');
INSERT INTO `provinces` VALUES ('610828', '佳县', '610800');
INSERT INTO `provinces` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `provinces` VALUES ('610830', '清涧县', '610800');
INSERT INTO `provinces` VALUES ('610831', '子洲县', '610800');
INSERT INTO `provinces` VALUES ('610900', '安康市', '610000');
INSERT INTO `provinces` VALUES ('610901', '市辖区', '610900');
INSERT INTO `provinces` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `provinces` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `provinces` VALUES ('610922', '石泉县', '610900');
INSERT INTO `provinces` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `provinces` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `provinces` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `provinces` VALUES ('610926', '平利县', '610900');
INSERT INTO `provinces` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `provinces` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `provinces` VALUES ('610929', '白河县', '610900');
INSERT INTO `provinces` VALUES ('611000', '商洛市', '610000');
INSERT INTO `provinces` VALUES ('611001', '市辖区', '611000');
INSERT INTO `provinces` VALUES ('611002', '商州区', '611000');
INSERT INTO `provinces` VALUES ('611021', '洛南县', '611000');
INSERT INTO `provinces` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `provinces` VALUES ('611023', '商南县', '611000');
INSERT INTO `provinces` VALUES ('611024', '山阳县', '611000');
INSERT INTO `provinces` VALUES ('611025', '镇安县', '611000');
INSERT INTO `provinces` VALUES ('611026', '柞水县', '611000');
INSERT INTO `provinces` VALUES ('620000', '甘肃省', '0');
INSERT INTO `provinces` VALUES ('620100', '兰州市', '620000');
INSERT INTO `provinces` VALUES ('620101', '市辖区', '620100');
INSERT INTO `provinces` VALUES ('620102', '城关区', '620100');
INSERT INTO `provinces` VALUES ('620103', '七里河区', '620100');
INSERT INTO `provinces` VALUES ('620104', '西固区', '620100');
INSERT INTO `provinces` VALUES ('620105', '安宁区', '620100');
INSERT INTO `provinces` VALUES ('620111', '红古区', '620100');
INSERT INTO `provinces` VALUES ('620121', '永登县', '620100');
INSERT INTO `provinces` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `provinces` VALUES ('620123', '榆中县', '620100');
INSERT INTO `provinces` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `provinces` VALUES ('620201', '市辖区', '620200');
INSERT INTO `provinces` VALUES ('620300', '金昌市', '620000');
INSERT INTO `provinces` VALUES ('620301', '市辖区', '620300');
INSERT INTO `provinces` VALUES ('620302', '金川区', '620300');
INSERT INTO `provinces` VALUES ('620321', '永昌县', '620300');
INSERT INTO `provinces` VALUES ('620400', '白银市', '620000');
INSERT INTO `provinces` VALUES ('620401', '市辖区', '620400');
INSERT INTO `provinces` VALUES ('620402', '白银区', '620400');
INSERT INTO `provinces` VALUES ('620403', '平川区', '620400');
INSERT INTO `provinces` VALUES ('620421', '靖远县', '620400');
INSERT INTO `provinces` VALUES ('620422', '会宁县', '620400');
INSERT INTO `provinces` VALUES ('620423', '景泰县', '620400');
INSERT INTO `provinces` VALUES ('620500', '天水市', '620000');
INSERT INTO `provinces` VALUES ('620501', '市辖区', '620500');
INSERT INTO `provinces` VALUES ('620502', '秦州区', '620500');
INSERT INTO `provinces` VALUES ('620503', '麦积区', '620500');
INSERT INTO `provinces` VALUES ('620521', '清水县', '620500');
INSERT INTO `provinces` VALUES ('620522', '秦安县', '620500');
INSERT INTO `provinces` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `provinces` VALUES ('620524', '武山县', '620500');
INSERT INTO `provinces` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `provinces` VALUES ('620600', '武威市', '620000');
INSERT INTO `provinces` VALUES ('620601', '市辖区', '620600');
INSERT INTO `provinces` VALUES ('620602', '凉州区', '620600');
INSERT INTO `provinces` VALUES ('620621', '民勤县', '620600');
INSERT INTO `provinces` VALUES ('620622', '古浪县', '620600');
INSERT INTO `provinces` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `provinces` VALUES ('620700', '张掖市', '620000');
INSERT INTO `provinces` VALUES ('620701', '市辖区', '620700');
INSERT INTO `provinces` VALUES ('620702', '甘州区', '620700');
INSERT INTO `provinces` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `provinces` VALUES ('620722', '民乐县', '620700');
INSERT INTO `provinces` VALUES ('620723', '临泽县', '620700');
INSERT INTO `provinces` VALUES ('620724', '高台县', '620700');
INSERT INTO `provinces` VALUES ('620725', '山丹县', '620700');
INSERT INTO `provinces` VALUES ('620800', '平凉市', '620000');
INSERT INTO `provinces` VALUES ('620801', '市辖区', '620800');
INSERT INTO `provinces` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `provinces` VALUES ('620821', '泾川县', '620800');
INSERT INTO `provinces` VALUES ('620822', '灵台县', '620800');
INSERT INTO `provinces` VALUES ('620823', '崇信县', '620800');
INSERT INTO `provinces` VALUES ('620824', '华亭县', '620800');
INSERT INTO `provinces` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `provinces` VALUES ('620826', '静宁县', '620800');
INSERT INTO `provinces` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `provinces` VALUES ('620901', '市辖区', '620900');
INSERT INTO `provinces` VALUES ('620902', '肃州区', '620900');
INSERT INTO `provinces` VALUES ('620921', '金塔县', '620900');
INSERT INTO `provinces` VALUES ('620922', '瓜州县', '620900');
INSERT INTO `provinces` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `provinces` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `provinces` VALUES ('620981', '玉门市', '620900');
INSERT INTO `provinces` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `provinces` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `provinces` VALUES ('621001', '市辖区', '621000');
INSERT INTO `provinces` VALUES ('621002', '西峰区', '621000');
INSERT INTO `provinces` VALUES ('621021', '庆城县', '621000');
INSERT INTO `provinces` VALUES ('621022', '环县', '621000');
INSERT INTO `provinces` VALUES ('621023', '华池县', '621000');
INSERT INTO `provinces` VALUES ('621024', '合水县', '621000');
INSERT INTO `provinces` VALUES ('621025', '正宁县', '621000');
INSERT INTO `provinces` VALUES ('621026', '宁县', '621000');
INSERT INTO `provinces` VALUES ('621027', '镇原县', '621000');
INSERT INTO `provinces` VALUES ('621100', '定西市', '620000');
INSERT INTO `provinces` VALUES ('621101', '市辖区', '621100');
INSERT INTO `provinces` VALUES ('621102', '安定区', '621100');
INSERT INTO `provinces` VALUES ('621121', '通渭县', '621100');
INSERT INTO `provinces` VALUES ('621122', '陇西县', '621100');
INSERT INTO `provinces` VALUES ('621123', '渭源县', '621100');
INSERT INTO `provinces` VALUES ('621124', '临洮县', '621100');
INSERT INTO `provinces` VALUES ('621125', '漳县', '621100');
INSERT INTO `provinces` VALUES ('621126', '岷县', '621100');
INSERT INTO `provinces` VALUES ('621200', '陇南市', '620000');
INSERT INTO `provinces` VALUES ('621201', '市辖区', '621200');
INSERT INTO `provinces` VALUES ('621202', '武都区', '621200');
INSERT INTO `provinces` VALUES ('621221', '成县', '621200');
INSERT INTO `provinces` VALUES ('621222', '文县', '621200');
INSERT INTO `provinces` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `provinces` VALUES ('621224', '康县', '621200');
INSERT INTO `provinces` VALUES ('621225', '西和县', '621200');
INSERT INTO `provinces` VALUES ('621226', '礼县', '621200');
INSERT INTO `provinces` VALUES ('621227', '徽县', '621200');
INSERT INTO `provinces` VALUES ('621228', '两当县', '621200');
INSERT INTO `provinces` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `provinces` VALUES ('622901', '临夏市', '622900');
INSERT INTO `provinces` VALUES ('622921', '临夏县', '622900');
INSERT INTO `provinces` VALUES ('622922', '康乐县', '622900');
INSERT INTO `provinces` VALUES ('622923', '永靖县', '622900');
INSERT INTO `provinces` VALUES ('622924', '广河县', '622900');
INSERT INTO `provinces` VALUES ('622925', '和政县', '622900');
INSERT INTO `provinces` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `provinces` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `provinces` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `provinces` VALUES ('623001', '合作市', '623000');
INSERT INTO `provinces` VALUES ('623021', '临潭县', '623000');
INSERT INTO `provinces` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `provinces` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `provinces` VALUES ('623024', '迭部县', '623000');
INSERT INTO `provinces` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `provinces` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `provinces` VALUES ('623027', '夏河县', '623000');
INSERT INTO `provinces` VALUES ('630000', '青海省', '0');
INSERT INTO `provinces` VALUES ('630100', '西宁市', '630000');
INSERT INTO `provinces` VALUES ('630101', '市辖区', '630100');
INSERT INTO `provinces` VALUES ('630102', '城东区', '630100');
INSERT INTO `provinces` VALUES ('630103', '城中区', '630100');
INSERT INTO `provinces` VALUES ('630104', '城西区', '630100');
INSERT INTO `provinces` VALUES ('630105', '城北区', '630100');
INSERT INTO `provinces` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `provinces` VALUES ('630122', '湟中县', '630100');
INSERT INTO `provinces` VALUES ('630123', '湟源县', '630100');
INSERT INTO `provinces` VALUES ('630200', '海东市', '630000');
INSERT INTO `provinces` VALUES ('630202', '乐都区', '630200');
INSERT INTO `provinces` VALUES ('630203', '平安区', '630200');
INSERT INTO `provinces` VALUES ('630222', '民和回族土族自治县', '630200');
INSERT INTO `provinces` VALUES ('630223', '互助土族自治县', '630200');
INSERT INTO `provinces` VALUES ('630224', '化隆回族自治县', '630200');
INSERT INTO `provinces` VALUES ('630225', '循化撒拉族自治县', '630200');
INSERT INTO `provinces` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `provinces` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `provinces` VALUES ('632222', '祁连县', '632200');
INSERT INTO `provinces` VALUES ('632223', '海晏县', '632200');
INSERT INTO `provinces` VALUES ('632224', '刚察县', '632200');
INSERT INTO `provinces` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `provinces` VALUES ('632321', '同仁县', '632300');
INSERT INTO `provinces` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `provinces` VALUES ('632323', '泽库县', '632300');
INSERT INTO `provinces` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `provinces` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `provinces` VALUES ('632521', '共和县', '632500');
INSERT INTO `provinces` VALUES ('632522', '同德县', '632500');
INSERT INTO `provinces` VALUES ('632523', '贵德县', '632500');
INSERT INTO `provinces` VALUES ('632524', '兴海县', '632500');
INSERT INTO `provinces` VALUES ('632525', '贵南县', '632500');
INSERT INTO `provinces` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `provinces` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `provinces` VALUES ('632622', '班玛县', '632600');
INSERT INTO `provinces` VALUES ('632623', '甘德县', '632600');
INSERT INTO `provinces` VALUES ('632624', '达日县', '632600');
INSERT INTO `provinces` VALUES ('632625', '久治县', '632600');
INSERT INTO `provinces` VALUES ('632626', '玛多县', '632600');
INSERT INTO `provinces` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `provinces` VALUES ('632701', '玉树市', '632700');
INSERT INTO `provinces` VALUES ('632722', '杂多县', '632700');
INSERT INTO `provinces` VALUES ('632723', '称多县', '632700');
INSERT INTO `provinces` VALUES ('632724', '治多县', '632700');
INSERT INTO `provinces` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `provinces` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `provinces` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `provinces` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `provinces` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `provinces` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `provinces` VALUES ('632822', '都兰县', '632800');
INSERT INTO `provinces` VALUES ('632823', '天峻县', '632800');
INSERT INTO `provinces` VALUES ('640000', '宁夏回族自治区', '0');
INSERT INTO `provinces` VALUES ('640100', '银川市', '640000');
INSERT INTO `provinces` VALUES ('640101', '市辖区', '640100');
INSERT INTO `provinces` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `provinces` VALUES ('640105', '西夏区', '640100');
INSERT INTO `provinces` VALUES ('640106', '金凤区', '640100');
INSERT INTO `provinces` VALUES ('640121', '永宁县', '640100');
INSERT INTO `provinces` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `provinces` VALUES ('640181', '灵武市', '640100');
INSERT INTO `provinces` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `provinces` VALUES ('640201', '市辖区', '640200');
INSERT INTO `provinces` VALUES ('640202', '大武口区', '640200');
INSERT INTO `provinces` VALUES ('640205', '惠农区', '640200');
INSERT INTO `provinces` VALUES ('640221', '平罗县', '640200');
INSERT INTO `provinces` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `provinces` VALUES ('640301', '市辖区', '640300');
INSERT INTO `provinces` VALUES ('640302', '利通区', '640300');
INSERT INTO `provinces` VALUES ('640303', '红寺堡区', '640300');
INSERT INTO `provinces` VALUES ('640323', '盐池县', '640300');
INSERT INTO `provinces` VALUES ('640324', '同心县', '640300');
INSERT INTO `provinces` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `provinces` VALUES ('640400', '固原市', '640000');
INSERT INTO `provinces` VALUES ('640401', '市辖区', '640400');
INSERT INTO `provinces` VALUES ('640402', '原州区', '640400');
INSERT INTO `provinces` VALUES ('640422', '西吉县', '640400');
INSERT INTO `provinces` VALUES ('640423', '隆德县', '640400');
INSERT INTO `provinces` VALUES ('640424', '泾源县', '640400');
INSERT INTO `provinces` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `provinces` VALUES ('640500', '中卫市', '640000');
INSERT INTO `provinces` VALUES ('640501', '市辖区', '640500');
INSERT INTO `provinces` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `provinces` VALUES ('640521', '中宁县', '640500');
INSERT INTO `provinces` VALUES ('640522', '海原县', '640500');
INSERT INTO `provinces` VALUES ('650000', '新疆维吾尔自治区', '0');
INSERT INTO `provinces` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `provinces` VALUES ('650101', '市辖区', '650100');
INSERT INTO `provinces` VALUES ('650102', '天山区', '650100');
INSERT INTO `provinces` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `provinces` VALUES ('650104', '新市区', '650100');
INSERT INTO `provinces` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `provinces` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `provinces` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `provinces` VALUES ('650109', '米东区', '650100');
INSERT INTO `provinces` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `provinces` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `provinces` VALUES ('650201', '市辖区', '650200');
INSERT INTO `provinces` VALUES ('650202', '独山子区', '650200');
INSERT INTO `provinces` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `provinces` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `provinces` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `provinces` VALUES ('650400', '吐鲁番市', '650000');
INSERT INTO `provinces` VALUES ('650402', '高昌区', '650400');
INSERT INTO `provinces` VALUES ('650421', '鄯善县', '650400');
INSERT INTO `provinces` VALUES ('650422', '托克逊县', '650400');
INSERT INTO `provinces` VALUES ('650500', '哈密市', '650000');
INSERT INTO `provinces` VALUES ('650502', '伊州区', '650500');
INSERT INTO `provinces` VALUES ('650521', '巴里坤哈萨克自治县', '650500');
INSERT INTO `provinces` VALUES ('650522', '伊吾县', '650500');
INSERT INTO `provinces` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `provinces` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `provinces` VALUES ('652302', '阜康市', '652300');
INSERT INTO `provinces` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `provinces` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `provinces` VALUES ('652325', '奇台县', '652300');
INSERT INTO `provinces` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `provinces` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `provinces` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `provinces` VALUES ('652701', '博乐市', '652700');
INSERT INTO `provinces` VALUES ('652702', '阿拉山口市', '652700');
INSERT INTO `provinces` VALUES ('652722', '精河县', '652700');
INSERT INTO `provinces` VALUES ('652723', '温泉县', '652700');
INSERT INTO `provinces` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `provinces` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `provinces` VALUES ('652822', '轮台县', '652800');
INSERT INTO `provinces` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `provinces` VALUES ('652824', '若羌县', '652800');
INSERT INTO `provinces` VALUES ('652825', '且末县', '652800');
INSERT INTO `provinces` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `provinces` VALUES ('652827', '和静县', '652800');
INSERT INTO `provinces` VALUES ('652828', '和硕县', '652800');
INSERT INTO `provinces` VALUES ('652829', '博湖县', '652800');
INSERT INTO `provinces` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `provinces` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `provinces` VALUES ('652922', '温宿县', '652900');
INSERT INTO `provinces` VALUES ('652923', '库车县', '652900');
INSERT INTO `provinces` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `provinces` VALUES ('652925', '新和县', '652900');
INSERT INTO `provinces` VALUES ('652926', '拜城县', '652900');
INSERT INTO `provinces` VALUES ('652927', '乌什县', '652900');
INSERT INTO `provinces` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `provinces` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `provinces` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `provinces` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `provinces` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `provinces` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `provinces` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `provinces` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `provinces` VALUES ('653101', '喀什市', '653100');
INSERT INTO `provinces` VALUES ('653121', '疏附县', '653100');
INSERT INTO `provinces` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `provinces` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `provinces` VALUES ('653124', '泽普县', '653100');
INSERT INTO `provinces` VALUES ('653125', '莎车县', '653100');
INSERT INTO `provinces` VALUES ('653126', '叶城县', '653100');
INSERT INTO `provinces` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `provinces` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `provinces` VALUES ('653129', '伽师县', '653100');
INSERT INTO `provinces` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `provinces` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `provinces` VALUES ('653200', '和田地区', '650000');
INSERT INTO `provinces` VALUES ('653201', '和田市', '653200');
INSERT INTO `provinces` VALUES ('653221', '和田县', '653200');
INSERT INTO `provinces` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `provinces` VALUES ('653223', '皮山县', '653200');
INSERT INTO `provinces` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `provinces` VALUES ('653225', '策勒县', '653200');
INSERT INTO `provinces` VALUES ('653226', '于田县', '653200');
INSERT INTO `provinces` VALUES ('653227', '民丰县', '653200');
INSERT INTO `provinces` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `provinces` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `provinces` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `provinces` VALUES ('654004', '霍尔果斯市', '654000');
INSERT INTO `provinces` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `provinces` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `provinces` VALUES ('654023', '霍城县', '654000');
INSERT INTO `provinces` VALUES ('654024', '巩留县', '654000');
INSERT INTO `provinces` VALUES ('654025', '新源县', '654000');
INSERT INTO `provinces` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `provinces` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `provinces` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `provinces` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `provinces` VALUES ('654201', '塔城市', '654200');
INSERT INTO `provinces` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `provinces` VALUES ('654221', '额敏县', '654200');
INSERT INTO `provinces` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `provinces` VALUES ('654224', '托里县', '654200');
INSERT INTO `provinces` VALUES ('654225', '裕民县', '654200');
INSERT INTO `provinces` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `provinces` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `provinces` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `provinces` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `provinces` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `provinces` VALUES ('654323', '福海县', '654300');
INSERT INTO `provinces` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `provinces` VALUES ('654325', '青河县', '654300');
INSERT INTO `provinces` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `provinces` VALUES ('659000', '自治区直辖县级行政区划', '650000');
INSERT INTO `provinces` VALUES ('659001', '石河子市', '659000');
INSERT INTO `provinces` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `provinces` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `provinces` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `provinces` VALUES ('659006', '铁门关市', '659000');
INSERT INTO `provinces` VALUES ('710000', '台湾省', '0');
INSERT INTO `provinces` VALUES ('810000', '香港特别行政区', '0');
INSERT INTO `provinces` VALUES ('820000', '澳门特别行政区', '0');

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
INSERT INTO `redpacket` VALUES ('1', '1', '2017-11-29 09:26:22', '2017-11-29 10:19:30', '1', '1', '13520323558', '13520323558', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('2', '1', '2017-11-30 09:05:22', '2017-11-30 09:07:30', '2', '2', '13520323228', '13520323338', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('3', '2', '2017-11-30 09:36:22', '2017-11-30 09:37:30', '1', '3', '13520323448', '13520323448', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('4', '2', '2017-11-30 09:36:22', '2017-11-30 09:37:30', '2', '4', '13520323223', '13520323228', '10', '1', '0');
INSERT INTO `redpacket` VALUES ('5', '10000', '2017-11-30 09:36:22', null, '1', '10000', '13520323558', '13520323228', '537', '1', '0');
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(200) DEFAULT NULL,
  `provid` int(11) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `zoneid` int(11) DEFAULT NULL,
  `instime` int(11) DEFAULT NULL,
  `logourl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', '北京市第二十五中学', '110000', '110100', '110101', '1513532456', 'www.xxxxx.com');
INSERT INTO `schools` VALUES ('2', '北京市第三十一中学', '110000', '110100', '110102', '1513532456', 'www.yyyyy.com');
INSERT INTO `schools` VALUES ('3', '北京智慧程学校', '110000', '110100', '110112', '1514268808', 'www.yxke12.com');
INSERT INTO `schools` VALUES ('4', '北京77中学', '110000', '110100', '110101', '1514335590', 'www.yexke12.conm');

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
