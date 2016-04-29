
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `USER`
-- ----------------------------
DROP TABLE IF EXISTS `USER`;
CREATE TABLE `USER` (
 		`USER_ID` varchar(100) NOT NULL,
		`PHONE` int(11) NOT NULL COMMENT '手机号码',
		`PASSWORD` varchar(255) DEFAULT NULL COMMENT '用户密码',
		`ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  		PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
