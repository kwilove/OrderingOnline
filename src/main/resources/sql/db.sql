/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : numysql

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-04-25 18:34:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('04762c0b28b643939455c7800c2e2412', 'dsfsd', 'f1290186a5d0b1ceab27f4e77c0c5d68', 'w', '', '55896f5ce3c0494fa6850775a4e29ff6', '', '', '0', '', '18766666666', '', '', '', '0', '001', '18766666666@qq.com');
INSERT INTO `sys_app_user` VALUES ('3faac8fe5c0241e593e0f9ea6f2d5870', 'dsfsdf', 'f1290186a5d0b1ceab27f4e77c0c5d68', 'wewe', '', '68f23fc0caee475bae8d52244dea8444', '', '', '1', '', '18767676767', '', '', '', '0', 'wqwe', 'qweqwe@qq.com');

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `ZD_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BIANMA` varchar(100) DEFAULT NULL,
  `ORDY_BY` int(10) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `JB` int(10) DEFAULT NULL,
  `P_BM` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ZD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('212a6765fddc4430941469e1ec8c8e6c', '人事部', '001', '1', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_001');
INSERT INTO `sys_dictionaries` VALUES ('3cec73a7cc8a4cb79e3f6ccc7fc8858c', '行政部', '002', '2', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_002');
INSERT INTO `sys_dictionaries` VALUES ('48724375640341deb5ef01ac51a89c34', '北京', 'dq001', '1', 'cdba0b5ef20e4fc0a5231fa3e9ae246a', '2', 'DQ_dq001');
INSERT INTO `sys_dictionaries` VALUES ('5a1547632cca449db378fbb9a042b336', '研发部', '004', '4', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_004');
INSERT INTO `sys_dictionaries` VALUES ('7f9cd74e60a140b0aea5095faa95cda3', '财务部', '003', '3', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_003');
INSERT INTO `sys_dictionaries` VALUES ('b861bd1c3aba4934acdb5054dd0d0c6e', '科技不', 'kj', '7', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_kj');
INSERT INTO `sys_dictionaries` VALUES ('c067fdaf51a141aeaa56ed26b70de863', '部门', 'BM', '1', '0', '1', 'BM');
INSERT INTO `sys_dictionaries` VALUES ('cdba0b5ef20e4fc0a5231fa3e9ae246a', '地区', 'DQ', '2', '0', '1', 'DQ');
INSERT INTO `sys_dictionaries` VALUES ('f184bff5081d452489271a1bd57599ed', '上海', 'SH', '2', 'cdba0b5ef20e4fc0a5231fa3e9ae246a', '2', 'DQ_SH');
INSERT INTO `sys_dictionaries` VALUES ('f30bf95e216d4ebb8169ff0c86330b8f', '客服部', '006', '6', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_006');

-- ----------------------------
-- Table structure for sys_gl_qx
-- ----------------------------
DROP TABLE IF EXISTS `sys_gl_qx`;
CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `FX_QX` int(10) DEFAULT NULL,
  `FW_QX` int(10) DEFAULT NULL,
  `QX1` int(10) DEFAULT NULL,
  `QX2` int(10) DEFAULT NULL,
  `QX3` int(10) DEFAULT NULL,
  `QX4` int(10) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gl_qx
-- ----------------------------
INSERT INTO `sys_gl_qx` VALUES ('1', '2', '1', '1', '1', '1', '1', '1');
INSERT INTO `sys_gl_qx` VALUES ('2', '1', '0', '0', '1', '1', '1', '1');
INSERT INTO `sys_gl_qx` VALUES ('3a3e45d6a3b64234965b83b0b9891435', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('55896f5ce3c0494fa6850775a4e29ff6', '7', '0', '0', '1', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('68f23fc0caee475bae8d52244dea8444', '7', '0', '0', '1', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('7dfd8d1f7b6245d283217b7e63eec9b2', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('8415f06ebe48433ba6a608f109cb7500', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('ac66961adaa2426da4470c72ffeec117', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('ade2a318ffa14581a91189e26cc44acb', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('b0c77c29dfa140dc9b14a29c056f824f', '7', '1', '0', '1', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('b14729b2ef8e4b93bea1ba0fac20240a', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('e5525bb11c824fa88e3633178d75886e', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('e74f713314154c35bd7fc98897859fe3', '6', '1', '1', '1', '1', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('f152de009430439bbcc052b2fc456ffe', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('f944a9df72634249bbcb8cb73b0c9b86', '7', '1', '1', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '997', 'icon-desktop', '2');
INSERT INTO `sys_menu` VALUES ('2', '组织管理', 'role.do', '1', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('4', '会员管理', 'happuser/listUsers.do', '1', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('5', '系统用户', 'user/listUsers.do', '1', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '998', 'icon-th', '2');
INSERT INTO `sys_menu` VALUES ('10', '接口测试', 'tool/interfaceTest.do', '9', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('11', '发送邮件', 'tool/goSendEmail.do', '9', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('12', '置二维码', 'tool/goTwoDimensionCode.do', '9', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('13', '多级别树', 'tool/ztree.do', '9', '5', null, '2');
INSERT INTO `sys_menu` VALUES ('14', '地图工具', 'tool/map.do', '9', '6', null, '2');
INSERT INTO `sys_menu` VALUES ('15', '微信管理', '#', '0', '999', 'icon-comments', '2');
INSERT INTO `sys_menu` VALUES ('16', '文本回复', 'textmsg/list.do', '15', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('17', '应用命令', '#', '15', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('18', '图文回复', 'imgmsg/list.do', '15', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('19', '关注回复', 'textmsg/goSubscribe.do', '15', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('20', '在线管理', 'onlinemanager/list.do', '1', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('21', '打印测试', 'tool/printTest.do', '9', '7', null, '2');
INSERT INTO `sys_menu` VALUES ('30', '资料管理', '#', '0', '3', 'icon-upload', '2');
INSERT INTO `sys_menu` VALUES ('31', '资料上传', 'ziliaoshangchuan/index', '30', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('33', '资料信息著录', 'ziliaoxinxizhulu/index', '30', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('34', '声像资料查看', 'shujuchengguochakan/index', '30', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('37', '声像科内部检查', '#', '0', '5', 'icon-check', '2');
INSERT INTO `sys_menu` VALUES ('38', '声像档案整理管理', '#', '0', '4', 'icon-th-list', '2');
INSERT INTO `sys_menu` VALUES ('40', '目录生成模块', 'mulushengchengmokuai/index', '38', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('41', '档案移交', 'danganyijiao/index', '38', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('42', '专题制作模块', 'zhuantizhizuo/index', '38', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('43', '声像档案利用管理', '#', '0', '6', 'icon-share', '2');
INSERT INTO `sys_menu` VALUES ('44', '档案利用', 'danganliyong/index', '43', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('45', '资料利用', 'ziliaoliyong/index', '43', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('46', '系统工具', '#', '0', '9', 'icon-cogs', '2');
INSERT INTO `sys_menu` VALUES ('47', '批量上传', 'pictures/index.do', '46', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('48', '统计报表模块', 'login_default.do', '46', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('51', '任务流程', '#', '0', '2', 'icon-facetime-video', '2');
INSERT INTO `sys_menu` VALUES ('53', '我的工作台', '#', '0', '1', 'icon-home', '2');
INSERT INTO `sys_menu` VALUES ('54', '工作台', 'worktop.do', '53', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('55', '查询检索', 'search/index.do', '53', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('56', '数据来源', 'shujulaiyuan.do', '46', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('57', '填写工作任务单', 'starttask/list.do', '51', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('59', '填写设备借用单', 'starttask/shebeijieyong', '51', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('60', '任务审核', 'taskaudit/list.do', '51', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('61', '经办人检查', 'neibujiancha/index', '37', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('62', '审核人审核', 'neibujiancha/shrneibujiancha', '37', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('63', '第三方检查', '#', '0', '7', null, '');
INSERT INTO `sys_menu` VALUES ('64', '检查人检查', 'disanfangjiancha/index', '63', '1', null, '');
INSERT INTO `sys_menu` VALUES ('65', '复查人复查', 'disanfangfucha/index', '63', '2', null, '');
INSERT INTO `sys_menu` VALUES ('66', '复核人复核', 'disanfangfuhe/index', '63', '3', null, '');
INSERT INTO `sys_menu` VALUES ('67', '用户权限管理模块', '#', '1', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('68', '用户权限管理模块', '#', '46', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('69', '内部利用审核', 'shenherenliyongshenhe/index', '43', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('70', '外部利用审批', 'waibuliyongshenpi/index', '43', '4', null, '2');
INSERT INTO `sys_menu` VALUES ('71', '应用命令', 'command/list.do', '46', '5', null, '2');
INSERT INTO `sys_menu` VALUES ('72', '资料整理', 'ziliaozhengli/index', '46', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('73', '资料上传结果', 'ziliao/dayin', '30', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('74', '图文打印', 'tuwendayin/index', '43', '5', null, '2');
INSERT INTO `sys_menu` VALUES ('75', '附件上传', 'fujianshangchuan/index', '43', '6', null, '2');
INSERT INTO `sys_menu` VALUES ('76', '图片水印', 'tupianshuiyin/index', '43', '7', null, '2');
INSERT INTO `sys_menu` VALUES ('77', '拍摄成果数据发布', 'shootingResults/listPage', '30', '5', null, '2');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '4194294', '0', '1', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('2', '超级管理员', '4194102', '1', '1048822', '50', '34', '54', '2');
INSERT INTO `sys_role` VALUES ('3', '声像案经办人', '214870839311598834679808', '1', '16676715141203955286070', '16676715141066516332598', '16679020984213168980022', '186684214366970640859190', '3a3e45d6a3b64234965b83b0b9891435');
INSERT INTO `sys_role` VALUES ('4', '用户组', '118', '0', '0', '0', '0', '0', null);
INSERT INTO `sys_role` VALUES ('55896f5ce3c0494fa6850775a4e29ff6', '特级会员', '498', '7', '1048630', '0', '0', '0', '55896f5ce3c0494fa6850775a4e29ff6');
INSERT INTO `sys_role` VALUES ('6', '客户组', '18', '0', '1', '1', '1', '1', null);
INSERT INTO `sys_role` VALUES ('68f23fc0caee475bae8d52244dea8444', '中级会员', '498', '7', '0', '0', '0', '0', '68f23fc0caee475bae8d52244dea8444');
INSERT INTO `sys_role` VALUES ('7', '会员组', '498', '0', '0', '0', '0', '1', null);
INSERT INTO `sys_role` VALUES ('7dfd8d1f7b6245d283217b7e63eec9b2', '管理员B', '4194294', '1', '246', '0', '0', '0', '7dfd8d1f7b6245d283217b7e63eec9b2');
INSERT INTO `sys_role` VALUES ('8415f06ebe48433ba6a608f109cb7500', '第三方复核人', '83037369929457205248', '1', '83010348331692982272', '83010348331692982272', '83010348331692982272', '83010348331692982272', '8415f06ebe48433ba6a608f109cb7500');
INSERT INTO `sys_role` VALUES ('ac66961adaa2426da4470c72ffeec117', '管理员A', '4194294', '1', '54', '54', '0', '246', 'ac66961adaa2426da4470c72ffeec117');
INSERT INTO `sys_role` VALUES ('ade2a318ffa14581a91189e26cc44acb', '第三方检查人', '27697137708328550400', '1', '27670116110564327424', '27670116110564327424', '27670116110564327424', '27670116110564327424', 'ade2a318ffa14581a91189e26cc44acb');
INSERT INTO `sys_role` VALUES ('b0c77c29dfa140dc9b14a29c056f824f', '高级会员', '498', '7', '0', '0', '0', '0', 'b0c77c29dfa140dc9b14a29c056f824f');
INSERT INTO `sys_role` VALUES ('b14729b2ef8e4b93bea1ba0fac20240a', '声像案审核人', '596395944987510964224', '1', '591739222835370917888', '591739222835370917888', '596350908991237259264', '596350908991237259264', 'b14729b2ef8e4b93bea1ba0fac20240a');
INSERT INTO `sys_role` VALUES ('e5525bb11c824fa88e3633178d75886e', '第三方复查人', '46143881782038102016', '1', '46116860184273879040', '46116860184273879040', '46116860184273879040', '46116860184273879040', 'e5525bb11c824fa88e3633178d75886e');
INSERT INTO `sys_role` VALUES ('e74f713314154c35bd7fc98897859fe3', '黄金客户', '18', '6', '1', '1', '1', '1', 'e74f713314154c35bd7fc98897859fe3');
INSERT INTO `sys_role` VALUES ('f152de009430439bbcc052b2fc456ffe', '声像案审批人', '1770932475868483699200', '1', '1180591629513504325632', '1180591629513504325632', '1180591629513504325632', '1180591629513504325632', 'f152de009430439bbcc052b2fc456ffe');
INSERT INTO `sys_role` VALUES ('f944a9df72634249bbcb8cb73b0c9b86', '初级会员', '498', '7', '1', '1', '1', '1', 'f944a9df72634249bbcb8cb73b0c9b86');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0b9cb5cdcc904dab800eec35c2324eae', 'sxjbr1', 'f4ce12135ccb18172113b31399284df608f6be2d', '张深', '', '3', '', '', '0', '45f454', 'default', '4554f654dfd@qq.com', '103', '13548550587');
INSERT INTO `sys_user` VALUES ('1', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', '系统管理员', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2016-04-20 10:14:37', '0:0:0:0:0:0:0:1', '0', '最高统治者', 'skin-1', 'admin@main.com', '001', '18788888888');
INSERT INTO `sys_user` VALUES ('23837362aac94c7a8cdde0ffbd682835', 'sxspr', 'e24994d2386791871a9033aff1d1497ec2fce0d8', '声像案审批人', '', 'f152de009430439bbcc052b2fc456ffe', '2016-04-07 11:41:56', '127.0.0.1', '0', '', 'default', '33333333333@qq.com', '102', '33333333333');
INSERT INTO `sys_user` VALUES ('2c7ee560d3594bf096379356d0cb9053', 'sxshr', '73b0615720baf97339eeed941f940fbbe3212ebc', '声像案审核人', '', 'b14729b2ef8e4b93bea1ba0fac20240a', '2016-04-20 17:08:01', '0:0:0:0:0:0:0:1', '0', '', 'skin-1', '22222222222@qq.com', '101', '22222222222');
INSERT INTO `sys_user` VALUES ('52fdb965a2c846ad938649808de47ede', 'dsffcr', '5cf5db0925e3bda2532cab5700e88e27a9118872', '第三方复查人', '', 'e5525bb11c824fa88e3633178d75886e', '2016-04-07 17:50:41', '127.0.0.1', '0', '', 'default', '55555555555@qq.com', '202', '55555555555');
INSERT INTO `sys_user` VALUES ('864471ea48db4a7a867da3b1dbb8e93a', 'dsfjcr', 'a7c4c5ca8f388f9aea5560301af57a1b77ccd3af', '第三方检查人', '', 'ade2a318ffa14581a91189e26cc44acb', '2016-04-07 17:49:27', '127.0.0.1', '0', '', 'skin-2', '44444444444@qq.com', '201', '44444444444');
INSERT INTO `sys_user` VALUES ('88ffa63809ac4b4787a49d16d800d8aa', '104', 'a6990ed96e2c5acac92acdcc3f83ba4e2893ad76', '苏嘉敏', '', '3', '', '', '0', 'sd', 'default', '8748485485@qq.com', 'd', '13548553654');
INSERT INTO `sys_user` VALUES ('9b3e36c7d9f64175b561ca152a06c4d7', 'sxjbr2', '30904d3a2f32ce54ea3afb936d47d6c5d111cf77', '经办人—张三', '', '3', '2016-04-18 17:16:41', '0:0:0:0:0:0:0:1', '0', 'test', 'default', '11111111111@qq.com', '0012', '11111111111');
INSERT INTO `sys_user` VALUES ('9d3aa973fe204ba99dc5b683617d68c3', '105', '7cb3f42379df52fb7c22a44c27399c3177bd99d2', '陈媛', '', '3', '', '', '0', 'fdf', 'default', '845145452@qq.com', '108', '13548564556');
INSERT INTO `sys_user` VALUES ('c7c410be93e44d7a9c06af4ec8e68c5c', 'dsffhr', 'be8592bdb17dd32829fdff7c19274ef12d9d033e', '第三方复核人', '', '8415f06ebe48433ba6a608f109cb7500', '2016-04-07 17:51:02', '127.0.0.1', '0', '', 'default', '66666666666@qq.com', '203', '66666666666');
INSERT INTO `sys_user` VALUES ('ce3df3e63e7d40ebbbd05583c479de5b', 'sxjbr', 'c691dbd0a33f40d86465962c9ad98851ff636c9c', '声像案经办人', '', '3', '2016-04-25 18:07:03', '0:0:0:0:0:0:0:1', '0', '', 'default', '88888888888@qq.com', '100', '88888888888');

-- ----------------------------
-- Table structure for sys_user_qx
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_qx`;
CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_qx
-- ----------------------------
INSERT INTO `sys_user_qx` VALUES ('1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('2', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `sys_user_qx` VALUES ('3a3e45d6a3b64234965b83b0b9891435', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('55896f5ce3c0494fa6850775a4e29ff6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('68f23fc0caee475bae8d52244dea8444', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('7dfd8d1f7b6245d283217b7e63eec9b2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('8415f06ebe48433ba6a608f109cb7500', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('ac66961adaa2426da4470c72ffeec117', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('ade2a318ffa14581a91189e26cc44acb', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('b0c77c29dfa140dc9b14a29c056f824f', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('b14729b2ef8e4b93bea1ba0fac20240a', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('e5525bb11c824fa88e3633178d75886e', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('e74f713314154c35bd7fc98897859fe3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('f152de009430439bbcc052b2fc456ffe', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('f944a9df72634249bbcb8cb73b0c9b86', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tb_aj
-- ----------------------------
DROP TABLE IF EXISTS `tb_aj`;
CREATE TABLE `tb_aj` (
  `AJID` varchar(100) NOT NULL,
  `RWID` varchar(32) NOT NULL COMMENT '任务ID',
  `SJML` varchar(32) DEFAULT NULL COMMENT '上级目录',
  `AJTM` varchar(255) DEFAULT NULL COMMENT '案卷提名',
  `FLH` varchar(2) DEFAULT NULL,
  `NF` varchar(4) DEFAULT NULL COMMENT '年份',
  `SYZ` varchar(50) DEFAULT NULL COMMENT '摄影者',
  `PSSJ` varchar(255) DEFAULT NULL COMMENT '拍摄时间',
  `PSDD` int(11) DEFAULT NULL COMMENT '拍摄地点',
  `WZSM` varchar(255) DEFAULT NULL COMMENT '文字说明',
  PRIMARY KEY (`AJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='著录照片录象案卷级表';

-- ----------------------------
-- Records of tb_aj
-- ----------------------------
INSERT INTO `tb_aj` VALUES ('1', '0', '0', 'R1', null, null, null, null, null, null);
INSERT INTO `tb_aj` VALUES ('11', '0', '1', '2016', null, null, null, null, null, null);
INSERT INTO `tb_aj` VALUES ('21', '0', '3', '2016', null, null, null, null, null, null);
INSERT INTO `tb_aj` VALUES ('3', '0', '0', 'R3', null, null, null, null, null, null);
INSERT INTO `tb_aj` VALUES ('bfec14a13dec47628784d8f25eca6df0', 'ddb123c48bbe44219b4ec59022ac4e6a', '11', '00000000', 'R1', '2016', null, null, null, null);
INSERT INTO `tb_aj` VALUES ('bfec14a13dec47628784d8f25eca6df1', 'ddb123c48bbe44219b4ec59022ac4e6a', '11', '00000000', 'R3', '2015', '', '', null, '');

-- ----------------------------
-- Table structure for tb_anjuanjixinxi
-- ----------------------------
DROP TABLE IF EXISTS `tb_anjuanjixinxi`;
CREATE TABLE `tb_anjuanjixinxi` (
  `ANJUANJIXINXI_ID` varchar(100) NOT NULL,
  `AJTM` varchar(255) DEFAULT NULL COMMENT '案卷题名',
  `BZDW` varchar(255) DEFAULT NULL COMMENT '编制单位',
  `BZRQ` varchar(255) DEFAULT NULL COMMENT '编制日期',
  `ZTZL` varchar(255) DEFAULT NULL COMMENT '载体种类',
  `JNJS` varchar(255) DEFAULT NULL COMMENT '卷内件数',
  `BGQX` varchar(255) DEFAULT NULL COMMENT '保管期限',
  `MJ` varchar(255) DEFAULT NULL COMMENT '密级',
  `ZTC` varchar(255) DEFAULT NULL COMMENT '主题词',
  `PSSJ` varchar(255) DEFAULT NULL COMMENT '拍摄时间',
  `PSDD` varchar(255) DEFAULT NULL COMMENT '拍摄地点',
  `PSR` varchar(255) DEFAULT NULL COMMENT '拍摄人',
  PRIMARY KEY (`ANJUANJIXINXI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案卷级信息';

-- ----------------------------
-- Records of tb_anjuanjixinxi
-- ----------------------------
INSERT INTO `tb_anjuanjixinxi` VALUES ('', '2014', '声像科', '2016-04-18', '照片', '5', '10年', '3', 'this is the anjuan named 2014', '2016-04-18', '6', null);
INSERT INTO `tb_anjuanjixinxi` VALUES ('8fa3969592e44da284a27732c6c592d8', '2014', '声像科', '2016-04-18', '照片', '5', '10年', '3', 'this is a anjuan named 2014', '2016-04-18', '6', null);

-- ----------------------------
-- Table structure for tb_anjuanmulu
-- ----------------------------
DROP TABLE IF EXISTS `tb_anjuanmulu`;
CREATE TABLE `tb_anjuanmulu` (
  `ANJUANMULU_ID` varchar(100) NOT NULL,
  `DAHFW` varchar(255) DEFAULT NULL COMMENT '档案号范围',
  `AJTM` varchar(255) DEFAULT NULL COMMENT '案卷题名',
  `XGDW` varchar(255) DEFAULT NULL COMMENT '相关单位',
  `PSRQ` varchar(255) DEFAULT NULL COMMENT '拍摄日期',
  `PSSL` int(11) NOT NULL COMMENT '拍摄数量',
  `PSRY` varchar(255) DEFAULT NULL COMMENT '拍摄人员',
  PRIMARY KEY (`ANJUANMULU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案卷目录';

-- ----------------------------
-- Records of tb_anjuanmulu
-- ----------------------------

-- ----------------------------
-- Table structure for tb_danganliyong
-- ----------------------------
DROP TABLE IF EXISTS `tb_danganliyong`;
CREATE TABLE `tb_danganliyong` (
  `DANGANLIYONG_ID` varchar(100) NOT NULL,
  `LYMD` varchar(255) DEFAULT NULL COMMENT '利用目的',
  `YJDW` varchar(255) DEFAULT NULL COMMENT '移交单位',
  `ZLQK` varchar(255) DEFAULT NULL COMMENT '资料情况',
  `LYSJLX` varchar(255) DEFAULT NULL COMMENT '利用数据类型',
  `SL` int(11) NOT NULL COMMENT '数量',
  `NR` varchar(255) DEFAULT NULL COMMENT '内容',
  `YJR` varchar(11) NOT NULL COMMENT '移交人',
  `YJSJ` varchar(255) DEFAULT NULL COMMENT '移交时间',
  `JSR` varchar(11) NOT NULL COMMENT '接收人',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `RWID` varchar(32) NOT NULL,
  `RWZT` int(11) DEFAULT NULL,
  `LLCS` int(11) DEFAULT NULL,
  `GZZ_PATH` varchar(100) DEFAULT NULL,
  `SFZ_PATH` varchar(100) DEFAULT NULL,
  `JSX_PATH` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DANGANLIYONG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='档案利用表';

-- ----------------------------
-- Records of tb_danganliyong
-- ----------------------------

-- ----------------------------
-- Table structure for tb_fujianshangchuan
-- ----------------------------
DROP TABLE IF EXISTS `tb_fujianshangchuan`;
CREATE TABLE `tb_fujianshangchuan` (
  `FUJIANSHANGCHUAN_ID` varchar(100) NOT NULL,
  `RWID` varchar(255) DEFAULT NULL COMMENT '所属任务',
  `PATH` varchar(255) DEFAULT NULL COMMENT '保存路径',
  `FJTI` varchar(255) DEFAULT NULL COMMENT '附件题名',
  `UPLOADTIME` varchar(255) DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`FUJIANSHANGCHUAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件上传';

-- ----------------------------
-- Records of tb_fujianshangchuan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_luxiangfile
-- ----------------------------
DROP TABLE IF EXISTS `tb_luxiangfile`;
CREATE TABLE `tb_luxiangfile` (
  `LXWJJID` varchar(100) NOT NULL,
  `LXDABH` varchar(255) DEFAULT NULL COMMENT '录像档案编号',
  `LXTM` varchar(255) DEFAULT NULL COMMENT '照片提名',
  `SYZ` varchar(50) DEFAULT NULL COMMENT '摄影者',
  `LY` int(11) DEFAULT NULL COMMENT '来源',
  `PSSJ` varchar(50) DEFAULT NULL COMMENT '拍摄时间',
  `PSDD` varchar(255) DEFAULT NULL COMMENT '拍摄地点',
  `RW` varchar(50) DEFAULT NULL COMMENT '人物',
  `WZSM` varchar(255) DEFAULT NULL COMMENT '文字说明',
  `GDSJ` varchar(50) DEFAULT NULL COMMENT '归档时间',
  `LXGG` int(11) DEFAULT NULL COMMENT '录像规格',
  `BGQX` int(11) DEFAULT NULL COMMENT '保管期限',
  `MJ` int(11) DEFAULT NULL COMMENT '密级',
  `ZZR` varchar(50) DEFAULT NULL COMMENT '制作人',
  `ZZDW` int(11) DEFAULT NULL COMMENT '制作单位',
  `RWID` varchar(32) NOT NULL,
  `AJID` varchar(32) DEFAULT NULL,
  `PATH` varchar(32) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `UPLOADTIME` date DEFAULT NULL,
  `GJZ` text,
  PRIMARY KEY (`LXWJJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='录像文件级表';

-- ----------------------------
-- Records of tb_luxiangfile
-- ----------------------------
INSERT INTO `tb_luxiangfile` VALUES ('63319cfafd89423cacbcefd70c4524df', '', '', '张深', '15', '2016-03-08', '6', '张深', '', '2016-03-23', '24', '12', '18', '张深', '21', 'd2304a110e7548338473a11894c95ed7', 'd966a2983b14492fa438a22e84c5afd0', null, null, null, null);
INSERT INTO `tb_luxiangfile` VALUES ('69a58e48fc95421f98446470cae0800d', '奋斗奋斗', 'FDFD', '张深', '15', '2016-03-09', '6', '张深', '飞得更高', '2016-03-23 16:44:28', '24', '12', '18', '张深', '21', 'd2304a110e7548338473a11894c95ed7', 'c2089e4f819642258b6476994a34502e', null, null, null, null);

-- ----------------------------
-- Table structure for tb_pictures
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('4e367b252fc74027a51d76d2fb850128', '图片', 'd6546f68f7194ea99adff0be24d187b7.JPG', '20160223/d6546f68f7194ea99adff0be24d187b7.JPG', '2016-02-23 10:57:22', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('72672ba6952c4e7895fadc19457f0aa3', '图片', '4e894cefcd6c4003ac403e6435dc0621.JPG', '20160223/4e894cefcd6c4003ac403e6435dc0621.JPG', '2016-02-23 10:52:09', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for tb_rwd
-- ----------------------------
DROP TABLE IF EXISTS `tb_rwd`;
CREATE TABLE `tb_rwd` (
  `rwid` varchar(32) NOT NULL COMMENT '任务ID',
  `gdzt` int(1) DEFAULT '0' COMMENT '记录声像文件是否归档成为档案的标记',
  `fbzt` int(1) DEFAULT '0' COMMENT '记录声像文件是否发布的标记',
  `lyshzt` int(1) DEFAULT '0' COMMENT '判断利用状态',
  `zzdwid` varchar(32) DEFAULT NULL COMMENT '组织单位',
  `smmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `sj` varchar(50) DEFAULT NULL COMMENT '时间',
  `lxr` varchar(32) DEFAULT NULL COMMENT '联系人',
  `dd` varchar(100) DEFAULT NULL COMMENT '地点',
  `xcap` varchar(100) DEFAULT NULL COMMENT '行程安排',
  `psxqr` varchar(32) DEFAULT NULL COMMENT '拍摄需求人',
  `zxrid` varchar(32) DEFAULT '' COMMENT '部门执行人工作确认',
  `bz` varchar(255) DEFAULT NULL COMMENT '备注',
  `rwzt` varchar(2) DEFAULT NULL COMMENT '状态',
  `zpxq` int(10) DEFAULT '0' COMMENT '照片需求',
  `zpjbr` varchar(50) DEFAULT NULL COMMENT '照片经办人',
  `zpjbrqr` int(10) DEFAULT NULL COMMENT '照片经办人确认',
  `lxxq` int(10) DEFAULT '0' COMMENT '录像需要',
  `lxjbr` varchar(50) DEFAULT NULL COMMENT '录像经办人',
  `lxjbrqr` int(10) DEFAULT NULL COMMENT '录像经办人确认',
  `lyxq` int(10) DEFAULT '0' COMMENT 'l录音需求',
  `lyjbr` varchar(50) DEFAULT NULL COMMENT 'l录音经办人',
  `lyjbrqr` int(10) DEFAULT NULL COMMENT 'l录音经办人确认',
  `zlxq` int(10) DEFAULT '0' COMMENT '整理需求',
  `zljbr` varchar(50) DEFAULT NULL COMMENT '整理经办人',
  `zljbrqr` int(10) DEFAULT NULL COMMENT '整理经办人确认',
  `cgzzxq` int(10) DEFAULT '0' COMMENT '成果制作需求',
  `cgzzjbr` varchar(50) DEFAULT NULL COMMENT '成果制作经办人',
  `cgzzjbrqr` int(10) DEFAULT NULL COMMENT '成果制作经办人确认',
  `qtxq` int(10) DEFAULT '0' COMMENT '其它需求',
  `qtjbr` varchar(50) DEFAULT NULL COMMENT '其他需求经办人',
  `qtjbrqr` int(10) DEFAULT NULL COMMENT '其他需求经办人确认',
  `bmgzqr` varchar(50) DEFAULT NULL COMMENT '部门工作确认',
  `sh` varchar(50) DEFAULT NULL COMMENT '审核人',
  `yjzt` int(11) DEFAULT NULL COMMENT '移交状态',
  `psqkqr` int(2) DEFAULT NULL COMMENT '拍摄情况确认:已拍摄:1,未拍摄:0',
  `psqksm` varchar(2000) DEFAULT NULL COMMENT '拍摄情况说明',
  PRIMARY KEY (`rwid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务单表';

-- ----------------------------
-- Records of tb_rwd
-- ----------------------------
INSERT INTO `tb_rwd` VALUES ('ddb123c48bbe44219b4ec59022ac4e6a', '14', '0', '18', null, '00000000', '2016-04-25', null, '00000000000', null, 'ce3df3e63e7d40ebbbd05583c479de5b', '0', '', '5', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '7', null, null);

-- ----------------------------
-- Table structure for tb_sbjyd
-- ----------------------------
DROP TABLE IF EXISTS `tb_sbjyd`;
CREATE TABLE `tb_sbjyd` (
  `sbjydid` varchar(32) NOT NULL COMMENT '设备借用单ID',
  `jydw` varchar(100) DEFAULT NULL COMMENT '借用单位',
  `jyyt` varchar(255) DEFAULT NULL COMMENT '借用用途',
  `jyrq` varchar(50) DEFAULT NULL COMMENT '借用日期',
  `jyrid` varchar(32) DEFAULT NULL COMMENT '借用人',
  `ghrq` varchar(50) DEFAULT NULL COMMENT '归还日期',
  `jbrid` varchar(32) DEFAULT NULL COMMENT '经办人',
  `bmyj` varchar(255) DEFAULT NULL,
  `bmfzrqm` varchar(50) DEFAULT NULL,
  `sprid` varchar(32) DEFAULT NULL,
  `rwid` varchar(32) DEFAULT NULL,
  `sbmc` varchar(255) DEFAULT NULL,
  `sbsl` varchar(100) DEFAULT NULL,
  `spryj` varchar(50) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sbjydid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备借用单表';

-- ----------------------------
-- Records of tb_sbjyd
-- ----------------------------

-- ----------------------------
-- Table structure for tb_shoudongdaoru
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoudongdaoru`;
CREATE TABLE `tb_shoudongdaoru` (
  `SHOUDONGDAORU_ID` varchar(100) NOT NULL,
  `JH` varchar(255) DEFAULT NULL COMMENT '卷号',
  `DH` varchar(255) DEFAULT NULL COMMENT '档号',
  `AJTM` varchar(255) DEFAULT NULL COMMENT '案卷题名',
  `ZTCZ` varchar(255) DEFAULT NULL COMMENT '载体材质',
  `BIANZHI` varchar(255) DEFAULT NULL COMMENT '编制',
  `BMQX` int(11) NOT NULL COMMENT '保密期限',
  `MJ` int(11) NOT NULL COMMENT '密级',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `JSR` int(11) NOT NULL COMMENT '接收人',
  `JSRQ` varchar(255) DEFAULT NULL COMMENT '接收日期',
  PRIMARY KEY (`SHOUDONGDAORU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手动导入数据表';

-- ----------------------------
-- Records of tb_shoudongdaoru
-- ----------------------------

-- ----------------------------
-- Table structure for tb_srdl
-- ----------------------------
DROP TABLE IF EXISTS `tb_srdl`;
CREATE TABLE `tb_srdl` (
  `id` varchar(45) NOT NULL COMMENT '下载日志id',
  `userId` varchar(45) NOT NULL COMMENT '下载人id',
  `sum` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `twid` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下载日志 Shooting results download log';

-- ----------------------------
-- Records of tb_srdl
-- ----------------------------

-- ----------------------------
-- Table structure for tb_srdp
-- ----------------------------
DROP TABLE IF EXISTS `tb_srdp`;
CREATE TABLE `tb_srdp` (
  `id` varchar(45) NOT NULL DEFAULT '0',
  `permissionstype` varchar(45) NOT NULL COMMENT '权限类型:\r\n下载权限:1,\r\n原始素材下载权限:2',
  `resourceName` varchar(45) DEFAULT NULL COMMENT '资源名称',
  `permissions` int(2) NOT NULL COMMENT '是否拥有权限:\r\n0:no;\r\n>=1:yes',
  `rwid` varchar(45) NOT NULL COMMENT '项目id',
  `holder` varchar(45) NOT NULL COMMENT '该项目指定权限持有人',
  `resourcePath` varchar(45) DEFAULT NULL COMMENT '资源路径',
  `downloadlog` varchar(45) DEFAULT NULL COMMENT '下载日志id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shooting results download permissions';

-- ----------------------------
-- Records of tb_srdp
-- ----------------------------
INSERT INTO `tb_srdp` VALUES ('6ad11ff6cff84d589676d6d72e814c3b', '1', null, '10', '59b43c5bd039432c9d53e08616cef4a4', '9b3e36c7d9f64175b561ca152a06c4d7', null, null);
INSERT INTO `tb_srdp` VALUES ('8b5faff32c544d3e8a383bd94bdda34c', '2', null, '8', '59b43c5bd039432c9d53e08616cef4a4', 'ce3df3e63e7d40ebbbd05583c479de5b', null, null);

-- ----------------------------
-- Table structure for tb_tianxieyijian
-- ----------------------------
DROP TABLE IF EXISTS `tb_tianxieyijian`;
CREATE TABLE `tb_tianxieyijian` (
  `TIANXIEYIJIAN_ID` varchar(100) NOT NULL,
  `TXR` varchar(255) DEFAULT NULL COMMENT '填写人',
  `YJ` varchar(255) DEFAULT NULL COMMENT '意见',
  `JG` varchar(255) DEFAULT NULL COMMENT '结果',
  `YJLX` varchar(255) DEFAULT NULL COMMENT '意见类型',
  `TXRQ` varchar(255) DEFAULT NULL COMMENT '填写日期',
  `RWID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`TIANXIEYIJIAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='填写意见表';

-- ----------------------------
-- Records of tb_tianxieyijian
-- ----------------------------
INSERT INTO `tb_tianxieyijian` VALUES ('37d853e1f69c4df08bfedad3c50cd336', '第三方检查人', '贵妇狗', '1', null, '2016-04-07 17:49:34', '59b43c5bd039432c9d53e08616cef4a4');
INSERT INTO `tb_tianxieyijian` VALUES ('38ea9adf8d9447958fb4e13aac5a2008', '第三方复核人', 'gfgh', '1', null, '2016-04-07 17:51:14', '59b43c5bd039432c9d53e08616cef4a4');
INSERT INTO `tb_tianxieyijian` VALUES ('cac16ad9870c436e8b670fa29861ff6a', '第三方复查人', 'kghj ', '1', null, '2016-04-07 17:50:47', '59b43c5bd039432c9d53e08616cef4a4');
INSERT INTO `tb_tianxieyijian` VALUES ('d46451cbdd9349229e0bcea458cd386a', '第三方检查人', '', '1', null, '2016-04-07 17:49:46', '59b43c5bd039432c9d53e08616cef4a4');

-- ----------------------------
-- Table structure for tb_yijiaoqingdan
-- ----------------------------
DROP TABLE IF EXISTS `tb_yijiaoqingdan`;
CREATE TABLE `tb_yijiaoqingdan` (
  `YIJIAOQINGDAN_ID` varchar(100) NOT NULL,
  `RWID` varchar(255) DEFAULT NULL COMMENT '任务ID',
  `XMMC` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `YJDW` varchar(255) DEFAULT NULL COMMENT '移交单位',
  `JSDW` varchar(255) DEFAULT NULL COMMENT '接收单位',
  `CZ` varchar(255) DEFAULT NULL COMMENT '材质',
  `SL` varchar(255) DEFAULT NULL COMMENT '数量',
  `NR` varchar(255) DEFAULT NULL COMMENT '内容',
  `YJR` varchar(255) DEFAULT NULL COMMENT '移交人',
  `JSR` varchar(255) DEFAULT NULL COMMENT '接收人',
  `YJSJ` varchar(255) DEFAULT NULL COMMENT '移交时间',
  `BZ` varchar(255) DEFAULT NULL COMMENT '标注',
  PRIMARY KEY (`YIJIAOQINGDAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='移交清单表';

-- ----------------------------
-- Records of tb_yijiaoqingdan
-- ----------------------------
INSERT INTO `tb_yijiaoqingdan` VALUES ('40cc6d9f2497439280dfbbefe7b52165', '59b43c5bd039432c9d53e08616cef4a4', '中山大学大数据项目', '市档案馆声像科', '市档案馆宣传部', 'A4纸,fhm,美式纸,fhm,', '10,fhm,20,fhm,', '研讨大数据信息', '苏嘉敏', '曾颖', '2016-04-21', '注意资料的完整');

-- ----------------------------
-- Table structure for tb_zhaopianfile
-- ----------------------------
DROP TABLE IF EXISTS `tb_zhaopianfile`;
CREATE TABLE `tb_zhaopianfile` (
  `ZPWJJID` varchar(100) NOT NULL,
  `RWID` varchar(32) NOT NULL,
  `AJID` varchar(32) DEFAULT NULL COMMENT '所属案卷ID',
  `ZPDABH` varchar(255) DEFAULT NULL COMMENT '照片档案编号',
  `ZPTM` varchar(255) DEFAULT NULL COMMENT '照片提名',
  `SYZ` varchar(50) DEFAULT NULL COMMENT '摄影者',
  `LY` varchar(11) DEFAULT NULL COMMENT '来源',
  `PSSJ` varchar(50) DEFAULT NULL COMMENT '拍摄时间',
  `PSDD` varchar(255) DEFAULT NULL COMMENT '拍摄地点',
  `RW` varchar(50) DEFAULT NULL COMMENT '人物',
  `WZSM` varchar(255) DEFAULT NULL COMMENT '文字说明',
  `GDSJ` varchar(50) DEFAULT NULL COMMENT '归档时间',
  `BGQX` int(11) DEFAULT NULL COMMENT '保管期限',
  `MJ` int(11) DEFAULT NULL COMMENT '密级',
  `FLH` varchar(255) DEFAULT NULL COMMENT '分类号',
  `GPH` varchar(255) DEFAULT NULL COMMENT '光盘号',
  `GS` varchar(255) DEFAULT NULL COMMENT '格式',
  `CC` varchar(255) DEFAULT NULL COMMENT '尺寸',
  `DX` varchar(32) DEFAULT NULL COMMENT '大小',
  `XJCS` varchar(255) DEFAULT NULL COMMENT '相机厂商',
  `JSXH` varchar(255) DEFAULT NULL COMMENT '机身型号',
  `XJJT` varchar(255) DEFAULT NULL COMMENT '相机镜头',
  `PSMS` varchar(255) DEFAULT NULL COMMENT '拍摄模式',
  `CGMS` varchar(255) DEFAULT NULL COMMENT '测光模式',
  `KMSD` varchar(255) DEFAULT NULL COMMENT '快门速度',
  `GQZ` varchar(255) DEFAULT NULL COMMENT '光圈值',
  `GGD` varchar(255) DEFAULT NULL COMMENT '感光度',
  `JJ` varchar(255) DEFAULT NULL COMMENT '焦距',
  `PGBC` varchar(255) DEFAULT NULL COMMENT '曝光补偿',
  `SGD` varchar(255) DEFAULT NULL COMMENT '闪光灯',
  `BTH` varchar(255) DEFAULT NULL COMMENT '白平衡',
  `PATH_SRC` varchar(255) DEFAULT NULL COMMENT '源图存放路径',
  `PATH` varchar(255) DEFAULT NULL COMMENT '存放路径',
  `NAME` varchar(32) DEFAULT NULL COMMENT '文件名',
  `UPLOADTIME` varchar(50) DEFAULT NULL COMMENT '上传时间',
  `GJZ` text COMMENT '关键字',
  PRIMARY KEY (`ZPWJJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='著录照片文件级表';

-- ----------------------------
-- Records of tb_zhaopianfile
-- ----------------------------
INSERT INTO `tb_zhaopianfile` VALUES ('0dd0af64e5e34a6b98d1db14ff9f7d1c', 'ddb123c48bbe44219b4ec59022ac4e6a', null, null, null, null, null, '2011:12:03 15:48:18', null, null, null, null, null, null, 'R1', null, 'jpg', '5634 pixels × 3753 pixels', '3.273914337158203 MB', 'Canon', 'Canon EOS 5D Mark II', null, 'Shutter priority', 'Multi-segment', '1/400 sec', 'f/6.3', null, '24.0 mm', '4294633963/1000000 EV', 'Flash did not fire, auto', 'Unknown', 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/b7d29bec81ec484280d2a57d7129ad7f.jpg', 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/b7d29bec81ec484280d2a57d7129ad7f.jpg', '_MG_1942   李海.jpg', '2016-04-25 17:12:11', null);
INSERT INTO `tb_zhaopianfile` VALUES ('7eee5e55641742b584600074576ae87d', 'ddb123c48bbe44219b4ec59022ac4e6a', null, null, null, null, null, '2011:12:03 15:48:18', null, null, null, null, null, null, 'R1', null, 'jpg', '5634 pixels × 3753 pixels', '3.273914337158203 MB', 'Canon', 'Canon EOS 5D Mark II', null, 'Shutter priority', 'Multi-segment', '1/400 sec', 'f/6.3', null, '24.0 mm', '4294633963/1000000 EV', 'Flash did not fire, auto', 'Unknown', 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/f52934e8a6574a1ca4539bd5e1b0436a.jpg', 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/f52934e8a6574a1ca4539bd5e1b0436a.jpg', '_MG_1942   李海.jpg', '2016-04-25 17:54:21', null);
INSERT INTO `tb_zhaopianfile` VALUES ('c5659bbcd5224021971b64c8447d5cde', 'ddb123c48bbe44219b4ec59022ac4e6a', null, null, null, null, null, null, null, null, null, null, null, null, 'R1', null, 'jpg', '1000 pixels × 606 pixels', '0.4298410415649414 MB', null, null, null, null, null, null, null, null, null, null, null, null, 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/df4ce718be59467a87b2a49e0b7c8cda.jpg', 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/df4ce718be59467a87b2a49e0b7c8cda.jpg', '1.jpg', '2016-04-25 17:12:10', null);
INSERT INTO `tb_zhaopianfile` VALUES ('eabd5e3805224808842ec697370f6ae5', 'ddb123c48bbe44219b4ec59022ac4e6a', null, null, null, null, null, null, null, null, null, null, null, null, 'R1', null, 'jpg', '1000 pixels × 606 pixels', '0.4298410415649414 MB', null, null, null, null, null, null, null, null, null, null, null, null, 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/c618068b782d42a0871e08a8a72befad.jpg', 'RW_ddb123c48bbe44219b4ec59022ac4e6a/R1/20160425/c618068b782d42a0871e08a8a72befad.jpg', '1.jpg', '2016-04-25 17:54:20', null);

-- ----------------------------
-- Table structure for tb_zhipaijilu
-- ----------------------------
DROP TABLE IF EXISTS `tb_zhipaijilu`;
CREATE TABLE `tb_zhipaijilu` (
  `ZHIPAIJILU_ID` varchar(100) NOT NULL,
  `ZPR` int(11) NOT NULL COMMENT '指派人',
  `BZPR` int(11) NOT NULL COMMENT '被指派人',
  `ZPRQ` varchar(255) DEFAULT NULL COMMENT '指派日期',
  `ZPBZXX` varchar(255) DEFAULT NULL COMMENT '指派备注信息',
  PRIMARY KEY (`ZHIPAIJILU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指派记录表';

-- ----------------------------
-- Records of tb_zhipaijilu
-- ----------------------------

-- ----------------------------
-- Table structure for tb_zhuangtizhizuo
-- ----------------------------
DROP TABLE IF EXISTS `tb_zhuangtizhizuo`;
CREATE TABLE `tb_zhuangtizhizuo` (
  `ZHUANGTIZHIZUO_ID` varchar(100) NOT NULL,
  `ZPXYID` varchar(255) DEFAULT NULL COMMENT '照片芯页ID',
  `ZLID` varchar(255) DEFAULT NULL COMMENT '资料ID',
  `ZPDPH` varchar(255) DEFAULT NULL COMMENT '照片号/底片号',
  `SJ` varchar(255) DEFAULT NULL COMMENT '时间',
  `SYZ` varchar(255) NOT NULL COMMENT '摄影者',
  `RW` varchar(255) NOT NULL COMMENT '人物',
  `DZ` varchar(255) DEFAULT NULL COMMENT '地址',
  `TM` varchar(255) DEFAULT NULL COMMENT '题名',
  PRIMARY KEY (`ZHUANGTIZHIZUO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题制作表';

-- ----------------------------
-- Records of tb_zhuangtizhizuo
-- ----------------------------
INSERT INTO `tb_zhuangtizhizuo` VALUES ('23657055e8d94cd7ac6ad1d302acb3e4.jpg', '1111', '11111', '111111111111', '2016-04-25', 'sxjbr', 'sxjbr', 'china', '城市风貌');

-- ----------------------------
-- Table structure for tb_ziliao
-- ----------------------------
DROP TABLE IF EXISTS `tb_ziliao`;
CREATE TABLE `tb_ziliao` (
  `ZILIAO_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '资料名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '资料存放路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `BELONGTYPE` varchar(255) DEFAULT NULL COMMENT '所属资料类型',
  PRIMARY KEY (`ZILIAO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ziliao
-- ----------------------------
INSERT INTO `tb_ziliao` VALUES ('0933eb18360e468a917844fc06e6e67b', 'putku.jpg', 'default/20160229/d003c9c46db240059eed83e307b5df73.jpg', '2016-02-29 11:15:06', '1');
INSERT INTO `tb_ziliao` VALUES ('1948b820a7334acebfda200b3571600a', 'yyyy.JPG', 'default/20160225/73bd0fe963f742f8be9ccb3bad2d5701.JPG', '2016-02-25 10:23:20', '1');
INSERT INTO `tb_ziliao` VALUES ('3c76f1af108b487297e3d04803d2e1bd', 'ouli3.JPG', 'default/20160229/4d607db50a584e41ba81b9bfb4020ca5.JPG', '2016-02-29 11:12:12', '1');
INSERT INTO `tb_ziliao` VALUES ('81153c8b51ee46cdb2c1a26c64bd6167', 'DSC08037.JPG', 'default/20160314/e5648ec384cb4b69aee586f893280535.JPG', '2016-03-14 12:36:56', '1');
INSERT INTO `tb_ziliao` VALUES ('de7f829aa973497f919aa339104dea71', 'watermark.png', 'default/20160308/1ae560a224184cedb402fc8de28ac2e8.png', '2016-03-08 09:33:27', '1');
INSERT INTO `tb_ziliao` VALUES ('e64380bd4a1641ce8b7a05b4ac01ce3b', '1.png', 'default/20160229/9458664aa080457b8f66778b2687b1f0.png', '2016-02-29 11:15:05', '1');
INSERT INTO `tb_ziliao` VALUES ('e9c5e84484524b87aa797c7ec0ff9418', 'copy.jpg', 'default/20160229/ead746645a2e42498454f2d12771317c.jpg', '2016-02-29 11:15:05', '1');
INSERT INTO `tb_ziliao` VALUES ('f3a053d6db8445a6861642c45a530d84', 'ouli3.JPG', 'default/20160229/9a965fb8d8d642639dadfe529f0cf46a.JPG', '2016-02-29 11:15:04', '1');

-- ----------------------------
-- Table structure for tb_ziliaoliyong
-- ----------------------------
DROP TABLE IF EXISTS `tb_ziliaoliyong`;
CREATE TABLE `tb_ziliaoliyong` (
  `ZILIAOLIYONG_ID` varchar(100) NOT NULL,
  `RWID` varchar(32) DEFAULT NULL,
  `LYMD` varchar(255) DEFAULT NULL COMMENT '利用目的',
  `YJDW` varchar(255) DEFAULT NULL COMMENT '移交单位 ',
  `ZLQK` varchar(255) DEFAULT NULL COMMENT '资料情况',
  `ZLSJLX` varchar(255) DEFAULT NULL COMMENT '利用数据类型',
  `SL` int(11) NOT NULL COMMENT '数量',
  `NR` varchar(255) DEFAULT NULL COMMENT '内容',
  `YJR` varchar(11) NOT NULL COMMENT '移交人',
  `YJSJ` varchar(255) DEFAULT NULL COMMENT '移交时间',
  `JSR` varchar(11) NOT NULL COMMENT '接收人',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `RWZT` int(11) DEFAULT NULL,
  `LLCS` int(11) DEFAULT NULL,
  `GZZ_PATH` varchar(100) DEFAULT NULL,
  `SFZ_PATH` varchar(100) DEFAULT NULL,
  `JSX_PATH` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ZILIAOLIYONG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资料利用表';

-- ----------------------------
-- Records of tb_ziliaoliyong
-- ----------------------------

-- ----------------------------
-- Table structure for tb_ziliaoliyongzidang
-- ----------------------------
DROP TABLE IF EXISTS `tb_ziliaoliyongzidang`;
CREATE TABLE `tb_ziliaoliyongzidang` (
  `ZILIAOLIYONGZIDANG_ID` varchar(100) NOT NULL,
  `LYID` varchar(255) DEFAULT NULL COMMENT '利用ID',
  `SBMC` varchar(255) DEFAULT NULL COMMENT '设备名称',
  `SBSL` int(11) NOT NULL COMMENT '设备数量',
  PRIMARY KEY (`ZILIAOLIYONGZIDANG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资料利用子单表';

-- ----------------------------
-- Records of tb_ziliaoliyongzidang
-- ----------------------------

-- ----------------------------
-- Table structure for weixin_command
-- ----------------------------
DROP TABLE IF EXISTS `weixin_command`;
CREATE TABLE `weixin_command` (
  `COMMAND_ID` varchar(100) NOT NULL,
  `USER_ID` varchar(100) DEFAULT NULL COMMENT '所属用户ID',
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `COMMANDCODE` varchar(255) DEFAULT NULL COMMENT '应用路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(1) NOT NULL COMMENT '状态',
  `NECESSARY` int(1) DEFAULT '0' COMMENT '1：图片编辑\r\n2：视频编辑',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`COMMAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_command
-- ----------------------------
INSERT INTO `weixin_command` VALUES ('2636750f6978451b8330874c9be042c2', null, '锁定服务器', 'rundll32.exe user32.dll,LockWorkStation', '2015-05-10 21:25:06', '1', null, '锁定计算机');
INSERT INTO `weixin_command` VALUES ('46217c6d44354010823241ef484f7214', null, '打开浏览器', 'C:/Program Files/Internet Explorer/iexplore.exe', '2015-05-09 02:43:02', '1', null, '打开浏览器操作');
INSERT INTO `weixin_command` VALUES ('485c6f21be8848959794e5f0fb88e4e0', 'ce3df3e63e7d40ebbbd05583c479de5b', '图形编辑软件', 'C:\\Windows\\System32\\mspaint.exe', '2016-04-01 09:36:40', '1', '1', '图形编辑软件');
INSERT INTO `weixin_command` VALUES ('576adcecce504bf3bb34c6b4da79a177', null, '关闭浏览器', 'taskkill /f /im iexplore.exe', '2015-05-09 02:36:48', '1', null, '关闭浏览器操作');
INSERT INTO `weixin_command` VALUES ('854a157c6d99499493f4cc303674c01f', null, '关闭QQ', 'taskkill /f /im qq.exe', '2015-05-10 21:25:46', '1', null, '关闭QQ');
INSERT INTO `weixin_command` VALUES ('88013b10f1084d88a10189a7f041d556', 'ce3df3e63e7d40ebbbd05583c479de5b', '视频编辑软件', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQ.exe', '2016-04-01 10:39:58', '1', '2', '视频编辑软件');
INSERT INTO `weixin_command` VALUES ('99f43a029ac34a9c9aa3566f45204837', null, '图形编辑软件', '#', '2016-01-30 14:15:25', '2', null, '图形编辑软件');
INSERT INTO `weixin_command` VALUES ('ab3a8c6310ca4dc8b803ecc547e55ae7', null, '打开QQ', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQ.exe', '2015-05-10 21:25:25', '1', null, '打开QQ');
INSERT INTO `weixin_command` VALUES ('b30947bf1efa4d7291969d77f21cc3da', null, '视频编辑软件', '#', '2016-01-30 14:15:53', '2', null, '视频编辑软件');

-- ----------------------------
-- Table structure for weixin_imgmsg
-- ----------------------------
DROP TABLE IF EXISTS `weixin_imgmsg`;
CREATE TABLE `weixin_imgmsg` (
  `IMGMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '标题1',
  `DESCRIPTION1` varchar(255) DEFAULT NULL COMMENT '描述1',
  `IMGURL1` varchar(255) DEFAULT NULL COMMENT '图片地址1',
  `TOURL1` varchar(255) DEFAULT NULL COMMENT '超链接1',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '标题2',
  `DESCRIPTION2` varchar(255) DEFAULT NULL COMMENT '描述2',
  `IMGURL2` varchar(255) DEFAULT NULL COMMENT '图片地址2',
  `TOURL2` varchar(255) DEFAULT NULL COMMENT '超链接2',
  `TITLE3` varchar(255) DEFAULT NULL COMMENT '标题3',
  `DESCRIPTION3` varchar(255) DEFAULT NULL COMMENT '描述3',
  `IMGURL3` varchar(255) DEFAULT NULL COMMENT '图片地址3',
  `TOURL3` varchar(255) DEFAULT NULL COMMENT '超链接3',
  `TITLE4` varchar(255) DEFAULT NULL COMMENT '标题4',
  `DESCRIPTION4` varchar(255) DEFAULT NULL COMMENT '描述4',
  `IMGURL4` varchar(255) DEFAULT NULL COMMENT '图片地址4',
  `TOURL4` varchar(255) DEFAULT NULL COMMENT '超链接4',
  `TITLE5` varchar(255) DEFAULT NULL COMMENT '标题5',
  `DESCRIPTION5` varchar(255) DEFAULT NULL COMMENT '描述5',
  `IMGURL5` varchar(255) DEFAULT NULL COMMENT '图片地址5',
  `TOURL5` varchar(255) DEFAULT NULL COMMENT '超链接5',
  `TITLE6` varchar(255) DEFAULT NULL COMMENT '标题6',
  `DESCRIPTION6` varchar(255) DEFAULT NULL COMMENT '描述6',
  `IMGURL6` varchar(255) DEFAULT NULL COMMENT '图片地址6',
  `TOURL6` varchar(255) DEFAULT NULL COMMENT '超链接6',
  `TITLE7` varchar(255) DEFAULT NULL COMMENT '标题7',
  `DESCRIPTION7` varchar(255) DEFAULT NULL COMMENT '描述7',
  `IMGURL7` varchar(255) DEFAULT NULL COMMENT '图片地址7',
  `TOURL7` varchar(255) DEFAULT NULL COMMENT '超链接7',
  `TITLE8` varchar(255) DEFAULT NULL COMMENT '标题8',
  `DESCRIPTION8` varchar(255) DEFAULT NULL COMMENT '描述8',
  `IMGURL8` varchar(255) DEFAULT NULL COMMENT '图片地址8',
  `TOURL8` varchar(255) DEFAULT NULL COMMENT '超链接8',
  PRIMARY KEY (`IMGMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_imgmsg
-- ----------------------------
INSERT INTO `weixin_imgmsg` VALUES ('380b2cb1f4954315b0e20618f7b5bd8f', '首页', '2015-05-10 20:51:09', '1', '图文回复', '图文回复标题', '图文回复描述', 'http://a.hiphotos.baidu.com/image/h%3D360/sign=c6c7e73ebc389b5027ffe654b535e5f1/a686c9177f3e6709392bb8df3ec79f3df8dc55e3.jpg', 'www.baidu.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for weixin_textmsg
-- ----------------------------
DROP TABLE IF EXISTS `weixin_textmsg`;
CREATE TABLE `weixin_textmsg` (
  `TEXTMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '内容',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TEXTMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_textmsg
-- ----------------------------
INSERT INTO `weixin_textmsg` VALUES ('303c190498a045bdbba4c940c2f0d9f9', '1ss', '1ssddd', '2015-05-18 20:17:02', '1', '1ssdddsd');
INSERT INTO `weixin_textmsg` VALUES ('63681adbe7144f10b66d6863e07f23c2', '你好', '你也好', '2015-05-09 02:39:23', '1', '文本回复');
INSERT INTO `weixin_textmsg` VALUES ('695cd74779734231928a253107ab0eeb', '吃饭', '吃了噢噢噢噢', '2015-05-10 22:52:27', '1', '文本回复');
INSERT INTO `weixin_textmsg` VALUES ('d4738af7aea74a6ca1a5fb25a98f9acb', '关注', '关注', '2015-05-11 02:12:36', '1', '关注回复');
