/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : design

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-05-18 17:20:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gmt_start` bigint(20) DEFAULT NULL,
  `gmt_end` bigint(20) DEFAULT NULL,
  `gmt_create` bigint(255) DEFAULT NULL,
  `gmt_modified` bigint(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `pos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------

-- ----------------------------
-- Table structure for chatcontent
-- ----------------------------
DROP TABLE IF EXISTS `chatcontent`;
CREATE TABLE `chatcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `ChatContent` varchar(255) DEFAULT NULL,
  `ChatTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chatcontent
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `commentator` bigint(20) DEFAULT NULL,
  `gmt_create` bigint(20) DEFAULT NULL,
  `gmt_modified` bigint(20) DEFAULT NULL,
  `like_count` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comment_count` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('2', '1', '1', '1', '1575353488324', '1575353488324', '0', '0.0', '1');
INSERT INTO `comment` VALUES ('3', '2', '2', '1', '1575353516223', '1575353516223', '0', 'hahaha', null);
INSERT INTO `comment` VALUES ('4', '5', '1', '2', '1576214324847', '1576214324847', '0', '123', '1');
INSERT INTO `comment` VALUES ('5', '4', '2', '2', '1576214332484', '1576214332484', '0', '321', null);

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `gmt_create` bigint(20) DEFAULT NULL,
  `gmt_modified` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nav
-- ----------------------------

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notifier` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `outerid` bigint(20) DEFAULT NULL,
  `receiver` bigint(20) DEFAULT NULL,
  `gmt_create` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notifier_name` varchar(255) DEFAULT NULL,
  `outer_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `gmt_create` bigint(20) DEFAULT NULL,
  `gmt_modified` bigint(20) DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '简单说一句', '1575353235415', '1575362051359', '2', '1', '11', '0', 'objective-c,typescript,shell', '你好啊，挺好');
INSERT INTO `question` VALUES ('2', 'hello world', '1575367386689', '1575367386689', '2', '0', '0', '0', 'javascript,php', '你好，世界');
INSERT INTO `question` VALUES ('3', '大哥大不是小哥小', '1575367410464', '1575367410464', '2', '0', '2', '0', 'css,html', '大哥大不是小哥小');
INSERT INTO `question` VALUES ('4', '123654', '1575522211220', '1575522211220', '2', '0', '0', '0', 'javascript,php,css', '789654');
INSERT INTO `question` VALUES ('5', '简单明了', '1575522231116', '1575522231116', '2', '1', '5', '0', 'javascript,css,html5', 'H2');

-- ----------------------------
-- Table structure for tagtype
-- ----------------------------
DROP TABLE IF EXISTS `tagtype`;
CREATE TABLE `tagtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tagtype
-- ----------------------------

-- ----------------------------
-- Table structure for test_index
-- ----------------------------
DROP TABLE IF EXISTS `test_index`;
CREATE TABLE `test_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_index
-- ----------------------------
INSERT INTO `test_index` VALUES ('1', 'joke', '25');
INSERT INTO `test_index` VALUES ('2', 'joker', '22');
INSERT INTO `test_index` VALUES ('3', 'play', '18');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `gmt_create` bigint(20) DEFAULT NULL,
  `gmt_modified` bigint(20) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '50311480', '孙德胜', 'da79f807-45a7-465e-a011-7e72f621db4a', '1575611322122', '1589792718256', null, 'https://avatars0.githubusercontent.com/u/50311480?v=4');
