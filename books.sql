/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : ssmbuild

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 08/10/2020 23:34:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `bookID` int(10) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `bookCounts` int(11) NOT NULL COMMENT '数量',
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  INDEX `bookID`(`bookID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Java', 860, '從入門到放棄');
INSERT INTO `books` VALUES (2, 'Python', 120, '從入門到放棄');
INSERT INTO `books` VALUES (3, 'CPP', 150, '從入門到放棄');
INSERT INTO `books` VALUES (5, 'Ruby', 560, '從入門到放棄');
INSERT INTO `books` VALUES (11, 'Java', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (12, 'Java', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (13, 'Java', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (15, 'Java', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (22, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (23, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (24, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (25, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (26, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (27, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (28, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (29, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (30, 'CPP', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (31, 'Python', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (32, 'Python', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (33, 'Python', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (34, 'Python', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (35, 'Python', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (37, 'Python', 1000, '從入門到放棄');
INSERT INTO `books` VALUES (40, 'Python', 1000, '從入門到放棄');

SET FOREIGN_KEY_CHECKS = 1;
