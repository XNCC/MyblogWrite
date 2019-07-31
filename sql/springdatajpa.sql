/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : localhost:3306
 Source Schema         : springdatajpa

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 31/07/2019 10:05:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (2);

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES (1, '/products/cover/001.png', '测试商品-001', 100);
INSERT INTO `tb_product` VALUES (2, '/products/cover/002.png', '测试商品-002', 200);
INSERT INTO `tb_product` VALUES (3, '/products/cover/003.png', '测试商品-003', 300);
INSERT INTO `tb_product` VALUES (4, '/products/cover/004.png', '测试商品-004', 400);
INSERT INTO `tb_product` VALUES (5, '/products/cover/005.png', '测试商品-005', 500);

-- ----------------------------
-- Table structure for tb_product_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_comment`;
CREATE TABLE `tb_product_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_product_comment
-- ----------------------------
INSERT INTO `tb_product_comment` VALUES (1, 1, '非常不错的商品', '2019-07-28 15:32:54', 3);
INSERT INTO `tb_product_comment` VALUES (2, 3, '非常不错的商品+1', '2019-07-28 15:32:54', 3);
INSERT INTO `tb_product_comment` VALUES (3, 4, '哈哈，谁用谁知道', '2019-07-28 15:32:54', 3);

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student`  (
  `id` int(11) NOT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES (1, 4, 'hjlfgje');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '/users/avatar/zhangsan.png', 'zhangSan');
INSERT INTO `tb_user` VALUES (2, '/users/avatar/lisi.png', 'lisi');
INSERT INTO `tb_user` VALUES (3, '/users/avatar/wangwu.png', 'wangwu');
INSERT INTO `tb_user` VALUES (4, '/users/avatar/yanxiaoliu.png', 'yanxiaoliu');

SET FOREIGN_KEY_CHECKS = 1;
