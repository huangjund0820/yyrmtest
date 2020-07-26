

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hrrm_check_code`
-- ----------------------------
DROP TABLE IF EXISTS `hrrm_check_code`;
CREATE TABLE `hrrm_check_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `key_` varchar(64) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `target` varchar(64) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_shxjkbkgnpxa80pnv4ts57o19` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrrm_check_code
-- ----------------------------
INSERT INTO `hrrm_check_code` VALUES ('1', '371667', '2020-07-18 15:18:58', '2020-07-18 15:48:58', '777', '0', '777', '3');
INSERT INTO `hrrm_check_code` VALUES ('2', '674042', '2020-07-23 17:34:39', '2020-07-23 18:04:39', '554311335@qq.com', '0', '554311335@qq.com', '3');
INSERT INTO `hrrm_check_code` VALUES ('3', '458559', '2020-07-18 15:28:58', '2020-07-18 15:58:58', '5444', '0', '5444', '3');
INSERT INTO `hrrm_check_code` VALUES ('4', '948483', '2020-07-18 15:32:43', '2020-07-18 16:02:43', '554333', '0', '554333', '3');
INSERT INTO `hrrm_check_code` VALUES ('5', '277856', '2020-07-18 15:35:06', '2020-07-18 16:05:06', '5555555', '0', '5555555', '3');
INSERT INTO `hrrm_check_code` VALUES ('6', '586790', '2020-07-18 17:04:03', '2020-07-18 17:34:03', '555', '0', '555', '3');
INSERT INTO `hrrm_check_code` VALUES ('7', '669785', '2020-07-23 18:31:34', '2020-07-23 19:01:34', 'huangjund@yonyou.com', '0', 'huangjund@yonyou.com', '3');
INSERT INTO `hrrm_check_code` VALUES ('8', '608966', '2020-07-23 18:37:20', '2020-07-23 19:07:20', '1', '1', '554311335@qq.com', '2');
INSERT INTO `hrrm_check_code` VALUES ('9', '231112', '2020-07-23 18:18:34', '2020-07-23 18:48:34', '111', '0', '111', '3');
INSERT INTO `hrrm_check_code` VALUES ('10', '396370', '2020-07-23 18:32:50', '2020-07-23 19:02:50', '11', '0', '11', '3');
INSERT INTO `hrrm_check_code` VALUES ('11', '868074', '2020-07-23 18:36:08', '2020-07-23 19:06:08', '5', '0', '11', '1');

-- ----------------------------
-- Table structure for `hrrm_options`
-- ----------------------------
DROP TABLE IF EXISTS `hrrm_options`;
CREATE TABLE `hrrm_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) DEFAULT NULL,
  `type` int(5) DEFAULT '0',
  `value` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrrm_options
-- ----------------------------
INSERT INTO `hrrm_options` VALUES ('21', 'mail_smtp_host', '0', 'smtp.qq.com');
INSERT INTO `hrrm_options` VALUES ('22', 'mail_smtp_password', '0', 'prcvlmmhsaqcbffb');
INSERT INTO `hrrm_options` VALUES ('23', 'mail_smtp_username', '0', '554311335@qq.com');

-- ----------------------------
-- Table structure for `hrrm_user`
-- ----------------------------
DROP TABLE IF EXISTS `hrrm_user`;
CREATE TABLE `hrrm_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT '/dist/images/ava/default.png',
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `gender` int(5) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrrm_user
-- ----------------------------
INSERT INTO `hrrm_user` VALUES ('1', 'admin', '用友测试', '', '554311335@qq.com', '3TGCQF25BLHU9R7IQUITN0FCC5', '0', '2020-07-18 16:16:44', '2020-07-18 16:16:44', '2020-07-23 18:56:56', '0', '1');
INSERT INTO `hrrm_user` VALUES ('2', 'huangjun', 'huangjun', '', null, '3TGCQF25BLHU9R7IQUITN0FCC5', '0', '2020-07-18 16:16:44', null, '2020-07-16 20:05:54', '0', null);
INSERT INTO `hrrm_user` VALUES ('3', 'huangjund', 'huangjund', '', null, '105ISM5B2P0TDPCIO72KMI6IRG', '0', '2020-07-18 16:16:44', null, '2020-07-18 16:16:44', '0', null);
INSERT INTO `hrrm_user` VALUES ('4', 'admin5555', 'admin5555', '', null, '114CNIIUINKMJK72AA1P5807U3', '0', '2020-07-18 16:23:34', null, '2020-07-18 16:23:34', '0', null);
INSERT INTO `hrrm_user` VALUES ('5', 'fengzhongyu', 'fengzhongyu', '', 'huangjund@yonyou.com', '105ISM5B2P0TDPCIO72KMI6IRG', '0', '2020-07-23 18:20:40', null, '2020-07-23 18:38:16', '0', null);

-- ----------------------------
-- Table structure for `shiro_permission`
-- ----------------------------
DROP TABLE IF EXISTS `shiro_permission`;
CREATE TABLE `shiro_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `parent_id` bigint(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_NAME` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiro_permission
-- ----------------------------
INSERT INTO `shiro_permission` VALUES ('1', '进入后台', 'admin', '0', '0', '0');
INSERT INTO `shiro_permission` VALUES ('10', '用户管理', 'user:list', '0', '0', '0');
INSERT INTO `shiro_permission` VALUES ('11', '用户授权', 'user:role', '10', '0', '0');
INSERT INTO `shiro_permission` VALUES ('12', '修改密码', 'user:pwd', '10', '0', '0');
INSERT INTO `shiro_permission` VALUES ('13', '激活用户', 'user:open', '10', '0', '0');
INSERT INTO `shiro_permission` VALUES ('14', '关闭用户', 'user:close', '10', '0', '0');
INSERT INTO `shiro_permission` VALUES ('15', '角色管理', 'role:list', '0', '0', '0');
INSERT INTO `shiro_permission` VALUES ('16', '修改角色', 'role:update', '15', '0', '0');
INSERT INTO `shiro_permission` VALUES ('17', '删除角色', 'role:delete', '15', '0', '0');
INSERT INTO `shiro_permission` VALUES ('19', '系统配置', 'options:index', '0', '0', '0');
INSERT INTO `shiro_permission` VALUES ('20', '修改配置', 'options:update', '19', '0', '0');

-- ----------------------------
-- Table structure for `shiro_role`
-- ----------------------------
DROP TABLE IF EXISTS `shiro_role`;
CREATE TABLE `shiro_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiro_role
-- ----------------------------
INSERT INTO `shiro_role` VALUES ('1', null, 'admin', '0');

-- ----------------------------
-- Table structure for `shiro_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `shiro_role_permission`;
CREATE TABLE `shiro_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiro_role_permission
-- ----------------------------
INSERT INTO `shiro_role_permission` VALUES ('1', '1', '1');
INSERT INTO `shiro_role_permission` VALUES ('2', '2', '1');
INSERT INTO `shiro_role_permission` VALUES ('3', '3', '1');
INSERT INTO `shiro_role_permission` VALUES ('4', '4', '1');
INSERT INTO `shiro_role_permission` VALUES ('5', '5', '1');
INSERT INTO `shiro_role_permission` VALUES ('6', '6', '1');
INSERT INTO `shiro_role_permission` VALUES ('7', '7', '1');
INSERT INTO `shiro_role_permission` VALUES ('8', '8', '1');
INSERT INTO `shiro_role_permission` VALUES ('9', '9', '1');
INSERT INTO `shiro_role_permission` VALUES ('10', '10', '1');
INSERT INTO `shiro_role_permission` VALUES ('11', '11', '1');
INSERT INTO `shiro_role_permission` VALUES ('12', '12', '1');
INSERT INTO `shiro_role_permission` VALUES ('13', '13', '1');
INSERT INTO `shiro_role_permission` VALUES ('14', '14', '1');
INSERT INTO `shiro_role_permission` VALUES ('15', '15', '1');
INSERT INTO `shiro_role_permission` VALUES ('16', '16', '1');
INSERT INTO `shiro_role_permission` VALUES ('17', '17', '1');
INSERT INTO `shiro_role_permission` VALUES ('18', '18', '1');
INSERT INTO `shiro_role_permission` VALUES ('19', '19', '1');
INSERT INTO `shiro_role_permission` VALUES ('20', '20', '1');

-- ----------------------------
-- Table structure for `shiro_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `shiro_user_role`;
CREATE TABLE `shiro_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiro_user_role
-- ----------------------------
INSERT INTO `shiro_user_role` VALUES ('1', '1', '1');
