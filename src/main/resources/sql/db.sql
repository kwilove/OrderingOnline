
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `TB_USER`
-- ----------------------------
DROP TABLE IF EXISTS `TB_USER`;
CREATE TABLE `TB_USER` (
 		`USER_ID` varchar(100) NOT NULL,
		`USERNAME` varchar(255) NOT NULL COMMENT '用户名',
		`PASSWORD` varchar(255) NOT NULL COMMENT '密码',
		`REALNAME` varchar(255) NOT NULL COMMENT '真实姓名',
		`SEX` int(11) COMMENT '性别',
		`PHONE` varchar(255) NOT NULL COMMENT '手机号',
		`ADDRESS` varchar(255) COMMENT '地址',
		`HEADPHOTO` varchar(255) COMMENT '头像',
  		PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
