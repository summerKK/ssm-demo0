/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.01
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : ssm00

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 13/06/2019 23:43:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of member
-- ----------------------------
BEGIN;
INSERT INTO `member` VALUES (1, '张三', '张三', '112222222', '34@qq.com');
INSERT INTO `member` VALUES (2, '李四', '李四', '4444444', '666@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL,
  `order_time` timestamp NOT NULL,
  `people_count` int(11) NOT NULL,
  `order_desc` varchar(255) DEFAULT NULL,
  `pay_type` tinyint(1) NOT NULL COMMENT '支付方式(0 支付宝 1 微信 2其它)',
  `order_status` tinyint(1) NOT NULL COMMENT '订单状态(0 未支付 1 已支付)',
  `product_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES (1, 'XX-001', '2019-06-12 23:33:38', 10, 'order', 1, 1, 1, 1);
INSERT INTO `order` VALUES (2, 'XX-02', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (3, 'XX-03', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (4, 'XX-04', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (5, 'XX-05', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (6, 'XX-06', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (7, 'XX-07', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (8, 'XX-08', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (9, 'XX-09', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (10, 'XX-10', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (11, 'XX-11', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (12, 'XX-12', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (13, 'XX-13', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (14, 'XX-14', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (15, 'XX-15', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (16, 'XX-16', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (17, 'XX-17', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (18, 'XX-18', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (19, 'XX-19', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
INSERT INTO `order` VALUES (20, 'XX-20', '2019-06-12 23:34:17', 10, 'order', 1, 1, 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for order_traveller
-- ----------------------------
DROP TABLE IF EXISTS `order_traveller`;
CREATE TABLE `order_traveller` (
  `order_id` int(11) NOT NULL,
  `traveller_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`traveller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_traveller
-- ----------------------------
BEGIN;
INSERT INTO `order_traveller` VALUES (1, 1);
INSERT INTO `order_traveller` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_no` varchar(32) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `departure_time` datetime DEFAULT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_desc` text,
  `product_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES (1, 'SGMRITIH88', '魔鬼城', '新疆', '2019-06-10 10:59:19', 100.00, '魔鬼城', 1);
INSERT INTO `product` VALUES (2, 'QWRPLGN99', '欢乐谷', '深圳', '2019-06-10 11:00:24', 299.00, '欢乐谷', 1);
INSERT INTO `product` VALUES (3, 'xn-1122', '新疆三日游', '深圳', '2019-06-11 11:08:00', 199.00, '新疆三日游', 1);
COMMIT;

-- ----------------------------
-- Table structure for traveller
-- ----------------------------
DROP TABLE IF EXISTS `traveller`;
CREATE TABLE `traveller` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `credentials_type` tinyint(1) NOT NULL COMMENT '证件类型 0身份证 1护照 2军官证',
  `credentials_no` varchar(30) NOT NULL,
  `traveller_type` tinyint(1) NOT NULL COMMENT '旅客类型(人群) 0 成人 1 儿童',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of traveller
-- ----------------------------
BEGIN;
INSERT INTO `traveller` VALUES (1, '王五', '男', '5556667', 1, '444444444', 1);
INSERT INTO `traveller` VALUES (2, '小刘', '女', '667777', 2, '5555555', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
