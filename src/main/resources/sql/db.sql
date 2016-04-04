/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : orderingonline_db

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-04-03 17:50:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_foodlist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_foodlist`;
CREATE TABLE `tb_foodlist` (
  `FOODLIST_ID` varchar(100) NOT NULL DEFAULT '',
  `FOODNAME` varchar(255) DEFAULT NULL,
  `RESTAURANTID` varchar(255) DEFAULT NULL,
  `FOODPRICE` int(11) DEFAULT NULL,
  `LEVEL` int(1) DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  `PICTURE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FOODLIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_foodlist
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `ORDER_ID` varchar(100) NOT NULL DEFAULT '',
  `RESTAURANTID` varchar(100) DEFAULT NULL,
  `USERID` varchar(100) DEFAULT NULL,
  `CREATETIME` varchar(32) DEFAULT NULL,
  `FOOD` text,
  `TOTALPRICE` int(11) DEFAULT NULL,
  `CONTACT` varchar(32) DEFAULT NULL COMMENT '联系人',
  `PHONE` varchar(11) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `ARRIVETIME` varchar(32) DEFAULT NULL,
  `EVALUATION` text,
  `STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('94902a1fed81447e88a8e2b70cd96944', null, 'zjhuang', '2016-04-03 17:29:17', null, '85', 'zjhuang', '11111111111', 'china', null, null, '1');
INSERT INTO `tb_order` VALUES ('c2aaaabf9e764f21a1aa1d888d46acf8', 'zjhuang', 'zjhuang', '2016-04-03 17:44:04', null, '85', '', '', '', null, null, '1');

-- ----------------------------
-- Table structure for `tb_restaurant`
-- ----------------------------
DROP TABLE IF EXISTS `tb_restaurant`;
CREATE TABLE `tb_restaurant` (
  `RESTAURANT_ID` varchar(100) NOT NULL DEFAULT '',
  `RESTAURANTNAME` varchar(255) DEFAULT NULL,
  `ADDRESS` text,
  `INFO` text,
  `TELPHONE` varchar(11) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  `WORKTIME` varchar(32) DEFAULT NULL,
  `PICTURE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RESTAURANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_restaurant
-- ----------------------------
INSERT INTO `tb_restaurant` VALUES ('1', '必胜客', '中国', null, null, null, null, null, 'images/bishengke.jpg');

-- ----------------------------
-- Table structure for `tb_restaurantadmin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_restaurantadmin`;
CREATE TABLE `tb_restaurantadmin` (
  `ESTAURANTADMIN_ID` varchar(100) NOT NULL DEFAULT '',
  `ADMINNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `REALNAME` varchar(10) NOT NULL,
  `SEX` int(1) NOT NULL,
  `PHONE` varchar(11) NOT NULL,
  `IDENTITYCARD` varchar(20) NOT NULL,
  `HEADPHOTO` varchar(255) NOT NULL,
  PRIMARY KEY (`ESTAURANTADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_restaurantadmin
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_shoppingcard`
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoppingcard`;
CREATE TABLE `tb_shoppingcard` (
  `SHOPPINGCARD_ID` varchar(100) NOT NULL DEFAULT '',
  `USERID` varchar(100) NOT NULL,
  `RESTAURANTID` varchar(100) NOT NULL,
  `FOODNAME` text,
  `FOODPRICE` text,
  `FOODAMOUNT` int(11) DEFAULT NULL,
  `TOTALPRICE` int(11) DEFAULT NULL,
  PRIMARY KEY (`SHOPPINGCARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shoppingcard
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(255) NOT NULL COMMENT '密码',
  `REALNAME` varchar(255) NOT NULL COMMENT '真实姓名',
  `SEX` int(11) DEFAULT NULL COMMENT '性别',
  `PHONE` varchar(255) NOT NULL COMMENT '手机号',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  `HEADPHOTO` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('zjhuang', 'zjhuang', '1', 'zjhuang', '1', '11111111111', 'china', null);
