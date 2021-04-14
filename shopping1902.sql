/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : shopping1902

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 25/01/2021 15:52:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gw
-- ----------------------------
DROP TABLE IF EXISTS `gw`;
CREATE TABLE `gw`  (
  `gid` int(0) NOT NULL AUTO_INCREMENT COMMENT '购物id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `uid` int(0) NOT NULL COMMENT '用户id',
  `id` int(0) NOT NULL COMMENT '商品id',
  `numor` int(0) NOT NULL COMMENT '数量',
  `money` double(11, 2) NOT NULL COMMENT '价格',
  `turl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片url',
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gw
-- ----------------------------
INSERT INTO `gw` VALUES (1, '商品1', 1, 1, 1, 100.00, '/style/images/04fb225ea46bd1346f330400eedb7ef2.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `gw` VALUES (2, '商品6', 1, 6, 1, 200.00, '/style/images/6d9d3912f417bb1cd5c77264e35a7431.jpeg_small.jpeg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `gw` VALUES (5, '商品5', 1, 5, 1, 100.00, '/style/images/5c169228f0f4d8ad2cae5b132c2b269c.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `gw` VALUES (6, '商品2', 2, 2, 1, 200.00, '/style/images/2dd23ee4eab519f1ab3492306039d888.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `gw` VALUES (7, '商品8', 2, 8, 2, 400.00, '/style/images/6f8ff741b6c12a2d6f9cce86eb6cf1ad.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `gw` VALUES (8, '商品2', 1, 2, 1, 200.00, '/style/images/2dd23ee4eab519f1ab3492306039d888.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `gw` VALUES (9, '商品10', 1, 10, 1, 100.00, '/style/images/70cd400bc29f748ebde074e04f1ad081.jpeg_small.jpeg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `gw` VALUES (10, '商品2', 2, 2, 4, 200.00, '/style/images/2dd23ee4eab519f1ab3492306039d888.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `gw` VALUES (11, '商品2', 2, 2, 4, 200.00, '/style/images/2dd23ee4eab519f1ab3492306039d888.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `gw` VALUES (12, '商品8', 1, 8, 2, 400.00, '/style/images/6f8ff741b6c12a2d6f9cce86eb6cf1ad.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');

-- ----------------------------
-- Table structure for listsp
-- ----------------------------
DROP TABLE IF EXISTS `listsp`;
CREATE TABLE `listsp`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品列表id',
  `turl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `money` double(11, 2) NOT NULL COMMENT '价格',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路径',
  `pinp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '品牌',
  `numc` int(0) NOT NULL COMMENT '成交数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of listsp
-- ----------------------------
INSERT INTO `listsp` VALUES (1, '/style/images/04fb225ea46bd1346f330400eedb7ef2.jpg_small.jpg', '商品1', 100.00, 'shangpin1', '李宁', 5);
INSERT INTO `listsp` VALUES (2, '/style/images/2dd23ee4eab519f1ab3492306039d888.jpg_small.jpg', '商品2', 200.00, 'shangpin2', '匡威', 3);
INSERT INTO `listsp` VALUES (3, '/style/images/3f81874d594894d19150843c42fb1f8e.jpg_small.jpg', '商品3', 300.00, 'shangpin3', '阿迪达斯', 8);
INSERT INTO `listsp` VALUES (4, '/style/images/4_cb2f7fb1e4fbe7e07f282c9d227b2776.jpg_small.jpg', '商品4', 400.00, 'shangpin4', '彪马', 25);
INSERT INTO `listsp` VALUES (5, '/style/images/5c169228f0f4d8ad2cae5b132c2b269c.jpg_small.jpg', '商品5', 500.00, 'shangpin5', '彪马', 14);
INSERT INTO `listsp` VALUES (6, '/style/images/6d9d3912f417bb1cd5c77264e35a7431.jpeg_small.jpeg', '商品6', 600.00, 'shangpin6', '李宁', 15);
INSERT INTO `listsp` VALUES (7, '/style/images/4_cb2f7fb1e4fbe7e07f282c9d227b2776.jpg_small.jpg', '商品7', 100.00, 'shangpin7', '李宁', 9);
INSERT INTO `listsp` VALUES (8, '/style/images/6f8ff741b6c12a2d6f9cce86eb6cf1ad.jpg_small.jpg', '商品8', 200.00, 'shangpin8', '匡威', 2);
INSERT INTO `listsp` VALUES (9, '/style/images/8cc68700c9e3fc1f6f01d4d065544558.jpg', '商品9', 300.00, 'shangpin9', '阿迪达斯', 10);
INSERT INTO `listsp` VALUES (10, '/style/images/70cd400bc29f748ebde074e04f1ad081.jpeg_small.jpeg', '商品10', 400.00, 'shangpin10', '彪马', 70);
INSERT INTO `listsp` VALUES (11, '/style/images/60ade3674d042f47b1bce40ae42df2c8.jpg_small.jpg', '商品11', 500.00, 'shangpin11', '彪马', 3);
INSERT INTO `listsp` VALUES (12, '/style/images/822d3f8d9c9330f074a2eb993a92d5c5.jpg_small.jpg', '商品12', 600.00, 'shangpin12', '李宁', 1);

-- ----------------------------
-- Table structure for okcc1
-- ----------------------------
DROP TABLE IF EXISTS `okcc1`;
CREATE TABLE `okcc1`  (
  `mid` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名字',
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品图片',
  `money` double(11, 2) NULL DEFAULT NULL COMMENT '商品价格',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of okcc1
-- ----------------------------
INSERT INTO `okcc1` VALUES (1, '商品1', '/style/images/3f81874d594894d19150843c42fb1f8e.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (2, '商品2', '/style/images/ed3755ac3f250e8a7be3c14343c67832.jpg_small.jpg', 40.00);
INSERT INTO `okcc1` VALUES (3, '商品1', '/style/images/ea64cc34f663159a68fde6872718541c.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (4, '商品4', '/style/images/ed3755ac3f250e8a7be3c14343c67832.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (5, '商品5', '/style/images/edbbe33a9dd3ca37861f4045e34edd5c.jpg', 20.00);
INSERT INTO `okcc1` VALUES (6, '商品6', '/style/images/fdde88fceb45f66e35d9da05b23e3e40.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (7, '商品7', '/style/images/ddfcab24bd812c466788eeba587f4057.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (8, '商品8', '/style/images/4881e7d174693f1196e669b86643ddd8.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (9, '商品9', '/style/images/4148eb0114cca80333da1f6924856bba.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (10, '商品10', '/style/images/4881e7d174693f1196e669b86643ddd8.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (11, '商品11', '/style/images/52f831e8e55240c3f9d529976b88f8f0.jpg_small.jpg', 20.00);
INSERT INTO `okcc1` VALUES (12, '商品12', '/style/images/70cd400bc29f748ebde074e04f1ad081.jpeg_small.jpeg', 20.00);

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '详情页id',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '跳转路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `money` double(11, 2) NOT NULL COMMENT '商品价格',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `createdate` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `updatedate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `turl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片集合',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES (1, 'shangpin1', '商品1', 100.00, NULL, NULL, NULL, '/style/images/04fb225ea46bd1346f330400eedb7ef2.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `shangpin` VALUES (2, 'shangpin2', '商品2', 200.00, NULL, NULL, NULL, '/style/images/2dd23ee4eab519f1ab3492306039d888.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `shangpin` VALUES (3, 'shangpin3', '商品3', 300.00, NULL, NULL, NULL, '/style/images/3f81874d594894d19150843c42fb1f8e.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `shangpin` VALUES (4, 'shangpin4', '商品4', 400.00, NULL, NULL, NULL, '/style/images/4_cb2f7fb1e4fbe7e07f282c9d227b2776.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `shangpin` VALUES (5, 'shangpin5', '商品5', 100.00, NULL, NULL, NULL, '/style/images/5c169228f0f4d8ad2cae5b132c2b269c.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `shangpin` VALUES (6, 'shangpin6', '商品6', 200.00, NULL, NULL, NULL, '/style/images/6d9d3912f417bb1cd5c77264e35a7431.jpeg_small.jpeg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `shangpin` VALUES (7, 'shangpin7', '商品7', 300.00, NULL, NULL, NULL, '/style/images/4_cb2f7fb1e4fbe7e07f282c9d227b2776.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `shangpin` VALUES (8, 'shangpin8', '商品8', 400.00, NULL, NULL, NULL, '/style/images/6f8ff741b6c12a2d6f9cce86eb6cf1ad.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `shangpin` VALUES (9, 'shangpin9', '商品9', 400.00, NULL, NULL, NULL, '/style/images/8cc68700c9e3fc1f6f01d4d065544558.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `shangpin` VALUES (10, 'shangpin10', '商品10', 100.00, NULL, NULL, NULL, '/style/images/70cd400bc29f748ebde074e04f1ad081.jpeg_small.jpeg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');
INSERT INTO `shangpin` VALUES (11, 'shangpin11', '商品11', 200.00, NULL, NULL, NULL, '/style/images/60ade3674d042f47b1bce40ae42df2c8.jpg_small.jpg,/style/images/49612054bdba0511da6eeb3a474abdee.jpg_small.jpg,/style/images/b16a7e3f6731b29fbb6bd236d4c9d300.jpg_small.jpg');
INSERT INTO `shangpin` VALUES (12, 'shangpin12', '商品12', 800.00, NULL, NULL, NULL, '/style/images/822d3f8d9c9330f074a2eb993a92d5c5.jpg_small.jpg,/style/images/img02.jpg,/style/images/img03.jpg,/style/images/img04.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `emil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `zname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` int(0) NULL DEFAULT NULL COMMENT '性别 0是保密  1是男  2是女',
  `ipon` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `createdate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updatedate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '邓', '123456', 'dsadsa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, '起飞侠', '000000', 'dsads ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, '良心', '123123123', 'opop', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
