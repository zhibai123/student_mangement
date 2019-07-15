/*
Navicat MySQL Data Transfer

Source Server         : htj
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : pxscj2

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-15 11:54:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(4) NOT NULL,
  `username` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'root');

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(5) NOT NULL,
  `name` char(20) NOT NULL,
  `desc` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `class` int(2) NOT NULL,
  `student_number` char(20) NOT NULL,
  `sex` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Hobby` varchar(10) NOT NULL,
  `Grades` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '小红', '2', '124', 'Male', 'CS', '2');
INSERT INTO `student` VALUES ('3', '何天骄', '1', '123', 'Male', 'CS', '1');
INSERT INTO `student` VALUES ('4', 'a', '1', '1234', 'male', 'Array', '1');
INSERT INTO `student` VALUES ('5', 'a', '1', '13', 'male', 'Array', '1');
INSERT INTO `student` VALUES ('6', 'ab', '1', '13', 'male', 'Array', '1');
INSERT INTO `student` VALUES ('7', 'abc', '1', '13', 'male', 'Array', '1');
INSERT INTO `student` VALUES ('8', '111', '2', '111', 'male', 'Array', '1');
INSERT INTO `student` VALUES ('9', '何天骄', '2', '123', 'male', 'Array', '1');
