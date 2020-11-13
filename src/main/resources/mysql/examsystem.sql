/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : examsystem

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 13/11/2020 13:21:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for examination_bank
-- ----------------------------
DROP TABLE IF EXISTS `examination_bank`;
CREATE TABLE `examination_bank`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题干',
  `solution_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项A',
  `solution_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项B',
  `solution_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项C',
  `solution_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项D',
  `solution_t` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '正确答案',
  `exam_category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题库分类',
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `is_detele` int(11) NULL DEFAULT NULL COMMENT '是否删除  0否1是',
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_add` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_bank
-- ----------------------------
INSERT INTO `examination_bank` VALUES ('102e02b9-dc8c-4d24-ad8f-671ac02631af', '1+1=1+1+1+1', '0', NULL, NULL, NULL, '0', 'html', '0', 0, '2020-06-11 12:00:17', 1);
INSERT INTO `examination_bank` VALUES ('193d4f17-ed35-4007-9217-cff04b261234', '444', '1', '2', '3', '4', 'B', 'html', '1', 1, '2020-05-29 16:00:29', 0);
INSERT INTO `examination_bank` VALUES ('1dd6a6d5-f1d8-4bbb-a201-30972f063c2f', '1+2+3+4+5=', '15', '20', '25', '30', 'D', 'html', '1', 0, '2020-06-15 16:35:13', 0);
INSERT INTO `examination_bank` VALUES ('244645d2-be68-450c-aaa9-b8586adae888', '333', '3', '6', '9', '12', 'B', 'html', '1', 1, '2020-05-29 15:59:06', 0);
INSERT INTO `examination_bank` VALUES ('2ac353c7-76a2-4649-8de2-0961b44fa4c0', '9*9*9', '1888', '8118', '722', '546', 'D', 'ssm框架', '1', 0, '2020-06-08 09:33:20', 0);
INSERT INTO `examination_bank` VALUES ('2b93db0f-22e0-4e59-9dda-1579ebc8ee70', '2*2*2=66', NULL, NULL, NULL, NULL, '0', 'ssm框架', '0', 1, '2020-06-10 14:23:54', 0);
INSERT INTO `examination_bank` VALUES ('341bac6a-ab53-45b8-843f-ffb3314181f3', '5+5+5=3*5', '1', NULL, NULL, NULL, '1', 'java', '0', 0, '2020-06-07 17:35:35', 0);
INSERT INTO `examination_bank` VALUES ('47a72d4e-1105-4de5-9e6a-b0a9ec50233d', '1111111', '1', '2', '3', '4', 'B', 'ssm', '1', 1, '2020-05-29 15:53:47', 0);
INSERT INTO `examination_bank` VALUES ('50254ff8-89a5-456f-a837-5121505df823', '10*10*10', NULL, NULL, NULL, NULL, 'B', 'html', '1', 0, '2020-06-10 11:59:00', 0);
INSERT INTO `examination_bank` VALUES ('55ef5fcc-6086-476f-8c8a-748038600999', '111111111111111111', '0', NULL, NULL, NULL, '0', 'SpringMVC', '0', 1, '2020-06-10 14:29:14', 0);
INSERT INTO `examination_bank` VALUES ('5903ec57-d52a-47ef-b096-0cd977218274', '测试中文', '0', NULL, NULL, NULL, '0', 'java', '0', 1, '2020-06-16 15:15:14', 0);
INSERT INTO `examination_bank` VALUES ('638273ee-1fb3-492a-b355-6927ad93380f', '5+5=151', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, '2020-06-07 17:29:34', 0);
INSERT INTO `examination_bank` VALUES ('6a8966d2-70a8-4f29-8d92-df170785df35', '1+1=2', '1', '3', '2', '4', 'C', 'html', '1', 0, '2020-06-07 17:18:29', 0);
INSERT INTO `examination_bank` VALUES ('7feec1c2-b326-4841-9094-76dd03bc847c', '2*2*2', '4', '6', '8', '10', 'C', 'java', '1', 1, '2020-05-29 15:56:49', 0);
INSERT INTO `examination_bank` VALUES ('c96998bd-6def-422e-8c15-96a46eab22f4', '1+1=16', '0', NULL, NULL, NULL, '0', 'java', '0', 0, '2020-06-16 15:12:49', 0);
INSERT INTO `examination_bank` VALUES ('d2a636c6-8ea1-49c7-894f-98fb5dee4f1c', 'i测试', '1', NULL, NULL, NULL, '1', 'java', '0', 0, '2020-06-19 09:20:20', 0);
INSERT INTO `examination_bank` VALUES ('d3fade5a-58c0-4cb5-a370-547fbe40027c', '1+2+3+4+5=15', '1', NULL, NULL, NULL, '1', 'ssm框架', '0', 0, '2020-06-15 16:35:29', 0);
INSERT INTO `examination_bank` VALUES ('d4886077-e9fe-411d-bd9f-122565326dd1', '9*9*9*9-9', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, '2020-06-10 14:27:59', 1);
INSERT INTO `examination_bank` VALUES ('d4cae140-616d-4c30-ac81-14be2271be54', '2*2*2=8', '1', NULL, NULL, NULL, '1', 'SpringMVC', '0', 0, '2020-06-07 17:31:11', 0);

-- ----------------------------
-- Table structure for examination_category
-- ----------------------------
DROP TABLE IF EXISTS `examination_category`;
CREATE TABLE `examination_category`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exam_category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_detele` int(8) NULL DEFAULT NULL,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_category
-- ----------------------------
INSERT INTO `examination_category` VALUES ('0031e4e4-7aa4-4c1a-8914-6941c39dc82f', 'html', 0, '2020-06-04 10:56:46');
INSERT INTO `examination_category` VALUES ('1', 'ssm框架', NULL, NULL);
INSERT INTO `examination_category` VALUES ('2', 'ssm框架', NULL, NULL);
INSERT INTO `examination_category` VALUES ('2fd1a674-c805-43c8-a4d1-c6164bda5437', 'SpringMVC', 0, '2020-06-05 15:59:35');
INSERT INTO `examination_category` VALUES ('73e4feac-6491-4073-9331-771be0aa4af2', 'java', 0, '2020-06-04 11:36:26');
INSERT INTO `examination_category` VALUES ('f2e4947b-daa6-4d00-a6ef-fb59cc75b2b8', 'ssm框架', 0, '2020-06-04 10:50:58');
INSERT INTO `examination_category` VALUES ('fe9723ea-2d88-405b-9fa7-3966514b6e7e', 'Jquery', 0, '2020-06-19 09:23:37');

-- ----------------------------
-- Table structure for examination_decide
-- ----------------------------
DROP TABLE IF EXISTS `examination_decide`;
CREATE TABLE `examination_decide`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '判断题题干',
  `solution` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答题人的答案  T / F',
  `solutionT` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '正确答案',
  `exam_category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题库分类',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_detele` int(11) NULL DEFAULT NULL COMMENT '是否删除 ',
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_decide
-- ----------------------------
INSERT INTO `examination_decide` VALUES ('33e600ad-c5eb-4d3c-a485-a787ed18b0af', '1111111', '1', '1', 'html', '判断题', 1, '2020-06-07 17:28:22');
INSERT INTO `examination_decide` VALUES ('341bac6a-ab53-45b8-843f-ffb3314181f3', '5+5+5=3*5', '1', '1', 'java', '判断题', 0, '2020-06-07 17:35:35');
INSERT INTO `examination_decide` VALUES ('638273ee-1fb3-492a-b355-6927ad93380f', '5+5=15', '1', '0', 'SpringMVC', '判断题', 0, '2020-06-07 17:29:34');
INSERT INTO `examination_decide` VALUES ('69d1b441-f3ba-4b99-99e9-97b5f308d29b', '9*9=91', '1', '1', 'html', '判断题', 0, '2020-06-08 09:33:52');
INSERT INTO `examination_decide` VALUES ('c6d0df2c-5064-45e0-be08-bacc547fe951', '5*5=25', '1', '0', 'html', '判断题', 0, '2020-06-07 17:23:10');
INSERT INTO `examination_decide` VALUES ('d4cae140-616d-4c30-ac81-14be2271be54', '2*2*2=8', '0', '1', 'ssm框架', '判断题', 0, '2020-06-07 17:31:19');
INSERT INTO `examination_decide` VALUES ('deb321ac-fa16-4fce-a868-2b3c66975c64', '1+2+3=7', '1', '0', 'java', '判断题', 0, '2020-06-07 17:26:30');

-- ----------------------------
-- Table structure for examination_examineeinfo
-- ----------------------------
DROP TABLE IF EXISTS `examination_examineeinfo`;
CREATE TABLE `examination_examineeinfo`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exam_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_over` int(11) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_examineeinfo
-- ----------------------------
INSERT INTO `examination_examineeinfo` VALUES ('054d6e01-c267-4a2d-957b-dd4e8c092773', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:09:55');
INSERT INTO `examination_examineeinfo` VALUES ('10c94435-605e-47ae-8043-0b3e26b08237', '测试', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:59:26');
INSERT INTO `examination_examineeinfo` VALUES ('1ab10d32-284c-4cf2-8204-fe5e65a58813', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:45:46');
INSERT INTO `examination_examineeinfo` VALUES ('1e173508-8a81-4fe5-82bc-dd3967907575', 'zhangyu', '17631428921', 'e4e2dec6-7a1b-403a-aed1-ae2fe3977f6e', 0, 0, '2020-06-17 11:16:59');
INSERT INTO `examination_examineeinfo` VALUES ('20356872-5a37-4aec-9913-02b866567a0e', '辣条', '17631428922', 'db00321a-7987-4cba-95eb-c62dc501aece', 0, 0, '2020-06-17 10:18:10');
INSERT INTO `examination_examineeinfo` VALUES ('20d3e981-2f39-472a-983b-6d29ce822fe1', '拯救者', '17631428922', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:51:12');
INSERT INTO `examination_examineeinfo` VALUES ('21b53268-6316-46da-a0a8-2a14b3e8aaa3', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:42:37');
INSERT INTO `examination_examineeinfo` VALUES ('227e9d81-c010-4dc5-81c4-b2fc4974bb19', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:29:03');
INSERT INTO `examination_examineeinfo` VALUES ('2332b5ee-d55c-424f-8381-5cf60b464492', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:19:24');
INSERT INTO `examination_examineeinfo` VALUES ('25cce858-335b-46fe-bff6-2e92f2716125', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:53:30');
INSERT INTO `examination_examineeinfo` VALUES ('2622707b-3f02-41fa-8e08-faa68ae783fa', '测试11', '15176743273', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:58:27');
INSERT INTO `examination_examineeinfo` VALUES ('27092d26-0ebd-4276-a0c8-f399fdf20517', '衬衫', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:24:27');
INSERT INTO `examination_examineeinfo` VALUES ('27e2c215-c4ab-411c-8c2b-a9687ca0011e', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:36:12');
INSERT INTO `examination_examineeinfo` VALUES ('28b8dc10-4bd2-47c0-a97e-b5e52c8a6cae', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:10:02');
INSERT INTO `examination_examineeinfo` VALUES ('28c15582-8d11-4ef9-8110-a3b506e7cfe2', 'zhangyu', '17631428921', '391aea87-73ef-4980-8d92-db3d53fbe042', 0, 0, '2020-06-17 11:36:03');
INSERT INTO `examination_examineeinfo` VALUES ('2b76d55d-7c08-4fe5-85e5-e7b78d43074a', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:19:07');
INSERT INTO `examination_examineeinfo` VALUES ('2d1323f6-37d5-4834-92bd-fddb302291a1', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:46:20');
INSERT INTO `examination_examineeinfo` VALUES ('2d488f01-b2d6-4a51-9ffa-222c174264bf', '可乐', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:53:02');
INSERT INTO `examination_examineeinfo` VALUES ('2df9d1a5-7a4f-4f91-8cff-0ae5737357dd', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:43:43');
INSERT INTO `examination_examineeinfo` VALUES ('2fbd0833-cd22-4a44-8efd-f4ac827749ac', 'zhangyu', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:13:04');
INSERT INTO `examination_examineeinfo` VALUES ('33129f01-868d-42f7-94f2-5eaeead1d6d3', 'zhangyu', '17631428921', 'e4e2dec6-7a1b-403a-aed1-ae2fe3977f6e', 0, 0, '2020-06-17 11:16:18');
INSERT INTO `examination_examineeinfo` VALUES ('338ac577-8237-476a-ae9e-daa99237eb31', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:53:59');
INSERT INTO `examination_examineeinfo` VALUES ('339fa2a5-57ce-484e-a9eb-f0f8917b3575', '可乐', '17631428925', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:04:19');
INSERT INTO `examination_examineeinfo` VALUES ('36e74105-951f-4db7-a4d6-14d05562d0a4', 'zhangyu', '17631428923', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:08:36');
INSERT INTO `examination_examineeinfo` VALUES ('374cbb7c-2f29-4118-876e-44247a6f1af3', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:12:08');
INSERT INTO `examination_examineeinfo` VALUES ('37baa13c-5bef-4ba7-a71c-fc6ffbdbe986', '可乐', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 12:01:29');
INSERT INTO `examination_examineeinfo` VALUES ('391e9db4-e63d-49c7-b75d-2a44ce70a002', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:10:23');
INSERT INTO `examination_examineeinfo` VALUES ('3b077b7d-0681-4de8-8513-19cd1b50ecdb', '可乐', '17631428923', 'f3f2bdd0-9501-4d54-8f42-cbea1933dd29', 0, 0, '2020-06-17 10:20:18');
INSERT INTO `examination_examineeinfo` VALUES ('3d539bcd-219f-437c-a12e-f3503bb68a8d', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:49:49');
INSERT INTO `examination_examineeinfo` VALUES ('3f71979c-2606-47ac-bb3c-c2c9b95d3dd3', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 11:16:00');
INSERT INTO `examination_examineeinfo` VALUES ('3fd2e1af-a76b-425b-bba0-8760df4697b2', 'youli', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:41:00');
INSERT INTO `examination_examineeinfo` VALUES ('4344048e-62e2-4dcf-8941-2c4daef8cc4f', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:28:50');
INSERT INTO `examination_examineeinfo` VALUES ('4484d7b1-8192-41e5-b1c2-c8a3a9c2c6a1', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:19:14');
INSERT INTO `examination_examineeinfo` VALUES ('499cd25c-475b-41b4-abc4-f4d85df30120', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:26:38');
INSERT INTO `examination_examineeinfo` VALUES ('4a7296fa-5019-4251-96f2-52cb21e693ba', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 15:37:45');
INSERT INTO `examination_examineeinfo` VALUES ('4a912c9c-eccc-48fe-9329-c3e86a709dae', 'zhangyu1', '17631428921', '5dc143c4-2bee-4090-9fa9-d1a58bec5673', 0, 0, '2020-06-17 15:15:51');
INSERT INTO `examination_examineeinfo` VALUES ('4e5b6927-6f3e-490d-a5ba-f7104c5580dd', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:33:25');
INSERT INTO `examination_examineeinfo` VALUES ('508ecb54-606d-46cf-99b2-4aa5498c9ca8', '辣条', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:59:49');
INSERT INTO `examination_examineeinfo` VALUES ('5103533e-3df3-4cb3-bcd1-6e260eb60fd4', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:54:24');
INSERT INTO `examination_examineeinfo` VALUES ('53e05ad7-770e-4ace-a3be-143f920ab807', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:27:08');
INSERT INTO `examination_examineeinfo` VALUES ('55f5bc6a-c10c-4b4f-b6d8-0159bdecb1ce', '辣条', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-20 09:45:17');
INSERT INTO `examination_examineeinfo` VALUES ('56b87d0c-008c-42a1-a4b9-4699567c5142', '可乐', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:30:13');
INSERT INTO `examination_examineeinfo` VALUES ('56f9875f-420d-4ee7-a359-9b3d475f0116', 'zhangyu', '17631428921', '0a30b429-469a-49c5-afc6-2ca013aa56a2', 0, 0, '2020-06-17 15:11:57');
INSERT INTO `examination_examineeinfo` VALUES ('5e37eb61-e417-42f3-a754-a1a546c2048a', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:21:03');
INSERT INTO `examination_examineeinfo` VALUES ('5f56cbfc-f56e-4500-8f6d-ce58afbc8ace', '辣条', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-20 10:31:21');
INSERT INTO `examination_examineeinfo` VALUES ('61d8a957-0687-4c80-b999-2199915ef23a', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:09:20');
INSERT INTO `examination_examineeinfo` VALUES ('6432d405-17b8-4910-9e1e-5140a8a30376', '辣条', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:00:29');
INSERT INTO `examination_examineeinfo` VALUES ('65abf767-6822-47c3-a68f-d643c2bd5ddc', 'zhangyu', '17631428921', '15911980-dc3d-41fd-b09c-8552e06abbee', 0, 0, '2020-06-19 09:26:09');
INSERT INTO `examination_examineeinfo` VALUES ('6672b989-8470-4e30-ac0d-51310e0fcfcf', 'zhangyu', '17631428922', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:07:19');
INSERT INTO `examination_examineeinfo` VALUES ('67b25c78-e5fe-4a98-8681-0ae30c6a70ef', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 15:32:36');
INSERT INTO `examination_examineeinfo` VALUES ('6c2c5710-fcaf-48cb-9ad0-f141688d7169', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:14:04');
INSERT INTO `examination_examineeinfo` VALUES ('71fb3b31-1771-4fab-b3f4-9b8835de5132', '拯救者', '17631428922', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:48:39');
INSERT INTO `examination_examineeinfo` VALUES ('72aa5f10-d85e-49bb-8c54-fd56bbeddf48', '辣条', '17631428922', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:02:34');
INSERT INTO `examination_examineeinfo` VALUES ('74aac79c-f3bd-434e-805b-99eb892c68a5', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:18:09');
INSERT INTO `examination_examineeinfo` VALUES ('76cbe7ef-4488-4182-95dd-f5869af936af', '测试', '15176743273', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:44:30');
INSERT INTO `examination_examineeinfo` VALUES ('78a65185-efcd-4510-906f-be7f9154abd8', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:33:10');
INSERT INTO `examination_examineeinfo` VALUES ('7b3addfb-7448-45a1-8cc7-952f191f8ee1', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:53:22');
INSERT INTO `examination_examineeinfo` VALUES ('7b7833d4-70a7-40b9-8957-1754ec3d34cd', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 11:03:42');
INSERT INTO `examination_examineeinfo` VALUES ('7c027b30-cd99-42af-95f1-0c94879c0d43', 'zhangyu', '17631428921', '00488cd1-f11c-4a8f-a5b1-3db68ecf640e', 0, 0, '2020-06-17 11:21:33');
INSERT INTO `examination_examineeinfo` VALUES ('7cee8901-ebe4-4b76-aba5-d3d47978b457', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:31:31');
INSERT INTO `examination_examineeinfo` VALUES ('7efe63e2-4b78-4e94-877f-dbe13b7b9571', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:17:47');
INSERT INTO `examination_examineeinfo` VALUES ('87db9a90-92f8-46bd-8574-31dab8bcca8f', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:36:46');
INSERT INTO `examination_examineeinfo` VALUES ('87f697bb-c6f0-4a84-b258-1a78f10b4bdc', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:01:15');
INSERT INTO `examination_examineeinfo` VALUES ('897d1689-5a34-4c37-ac61-b9ce56b0d0ea', 'zhangyu', '17631428921', 'bbe67053-fbd4-4fa8-95a5-d9e314c0ccdb', 0, 0, '2020-06-17 11:08:17');
INSERT INTO `examination_examineeinfo` VALUES ('8b1699e7-874f-4302-8ae1-26af49e7f3ec', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 10:14:00');
INSERT INTO `examination_examineeinfo` VALUES ('8c2c6f49-620e-49ac-b31b-11284734f833', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:19:53');
INSERT INTO `examination_examineeinfo` VALUES ('8daf7ba5-a11b-4673-bee6-c01964f5560c', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:09:33');
INSERT INTO `examination_examineeinfo` VALUES ('8f7e0cf1-30e2-4f6b-ad14-f6c063d3178f', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:55:34');
INSERT INTO `examination_examineeinfo` VALUES ('8fbde7fc-8d6c-46d9-b53f-408e71a47739', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:37:54');
INSERT INTO `examination_examineeinfo` VALUES ('9af4f450-bc9a-4b14-94de-fd57793c0bf7', 'zhangyu', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:57:23');
INSERT INTO `examination_examineeinfo` VALUES ('9ef39fc7-398a-474e-b564-5ee0d278fb68', 'zhangyu', '17631428921', '7234c964-c4ed-48c5-ab42-63a0f2a2175c', 0, 0, '2020-06-17 10:09:47');
INSERT INTO `examination_examineeinfo` VALUES ('9f09e2cf-9ce1-48a3-9f9d-693aaeabab7c', 'zhangyu', '17631428921', 'f5c24f6a-d779-4b02-8d76-0863433af1fb', 0, 0, '2020-06-19 11:29:58');
INSERT INTO `examination_examineeinfo` VALUES ('9f8686f5-8695-4526-808d-4bd6d86a6b74', '拯救者', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:48:11');
INSERT INTO `examination_examineeinfo` VALUES ('9f8bb65c-a307-40c2-8723-2d37a6d605b5', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:57:47');
INSERT INTO `examination_examineeinfo` VALUES ('a12e06fc-b922-4294-ace9-9412a325dfa4', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:46:36');
INSERT INTO `examination_examineeinfo` VALUES ('a44c0fb7-b797-40f3-9baf-597256825dfd', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:12:43');
INSERT INTO `examination_examineeinfo` VALUES ('a49115ec-c015-4913-98f6-830c71ec102c', '衬衫', '17631428925', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:05:36');
INSERT INTO `examination_examineeinfo` VALUES ('a7b69f08-17a8-4027-9c39-f6e55aa717d8', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:18:09');
INSERT INTO `examination_examineeinfo` VALUES ('a895d233-f643-43fc-8ef2-6027d620b8a9', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:49:52');
INSERT INTO `examination_examineeinfo` VALUES ('a9e720fc-d590-4677-a170-1e724d6f62a4', '辣条', '17631428921', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-20 10:31:22');
INSERT INTO `examination_examineeinfo` VALUES ('aae336f8-d308-4c48-aed5-a27aa149fa7e', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:38:59');
INSERT INTO `examination_examineeinfo` VALUES ('ab9f38ed-6777-43d5-b754-71ea1a394237', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:34:45');
INSERT INTO `examination_examineeinfo` VALUES ('ae50e698-21f6-4d67-84aa-5a58878f7fdf', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:26:21');
INSERT INTO `examination_examineeinfo` VALUES ('af79cf40-12aa-4cc7-ad9e-1970a46542e6', 'zhangyu', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 11:07:49');
INSERT INTO `examination_examineeinfo` VALUES ('b23159bb-b8e2-4496-88a9-aac6eec792b6', 'zhangyu', '17631428925', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 0, 0, '2020-06-19 11:55:03');
INSERT INTO `examination_examineeinfo` VALUES ('b5c51f7e-d463-43f5-b88d-60aa74b17bf3', '辣条', '17631428924', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:44:51');
INSERT INTO `examination_examineeinfo` VALUES ('b7cb0ab6-392a-4655-8667-025f8fb710cf', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:10:40');
INSERT INTO `examination_examineeinfo` VALUES ('b9d04963-2453-4a59-b92e-237f67c9fb9e', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:56:37');
INSERT INTO `examination_examineeinfo` VALUES ('ba6e5d12-6a6f-469f-939e-6acee34039b8', 'zhangyu', '176314289213', '6e29f2fc-9d60-4a37-a520-0b44b905d4bc', 0, 0, '2020-06-17 09:14:32');
INSERT INTO `examination_examineeinfo` VALUES ('bbf5e531-6aa2-4398-9040-1f8d5a9a72c0', '可乐', '17631428921', '7951cd4b-b0c5-43cf-a558-3193d58fb6e1', 0, 0, '2020-06-19 11:41:52');
INSERT INTO `examination_examineeinfo` VALUES ('bdb80ad9-b668-4a79-9025-28f85b4c9f78', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:58:10');
INSERT INTO `examination_examineeinfo` VALUES ('c078d822-3edc-46a2-a0fa-ed904e3ee515', '可乐', '17631428921', '7951cd4b-b0c5-43cf-a558-3193d58fb6e1', 0, 0, '2020-06-19 11:41:26');
INSERT INTO `examination_examineeinfo` VALUES ('c08d9c47-fe0e-47db-aa6e-3f090d5d51f2', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:36:23');
INSERT INTO `examination_examineeinfo` VALUES ('c0da0295-b831-499f-b52a-2f52b40260d7', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:10:55');
INSERT INTO `examination_examineeinfo` VALUES ('c6419ca9-a067-4928-ac91-b30e1b4b4c2a', '辣条', '17631428921', 'e50cc263-6932-41d7-8e98-ae7454fb1d91', 0, 0, '2020-06-19 11:37:54');
INSERT INTO `examination_examineeinfo` VALUES ('c6545aef-4b29-4d2b-8d48-31cb238dc54b', '可乐', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 11:14:38');
INSERT INTO `examination_examineeinfo` VALUES ('ca05aeac-d369-43c2-a5bc-01c9a9837bd1', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:12:55');
INSERT INTO `examination_examineeinfo` VALUES ('cbd16bb8-de18-4152-90ea-ce3ced50c8fc', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:53:10');
INSERT INTO `examination_examineeinfo` VALUES ('ce84c8c9-e5ed-4ad1-9c9a-cee3695ab32b', '拯救者', '17631428924', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 17:06:11');
INSERT INTO `examination_examineeinfo` VALUES ('ceb49f06-d85a-4697-8955-76ff0f2926c2', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:37:31');
INSERT INTO `examination_examineeinfo` VALUES ('cf05bf08-5ce6-4b55-bf3c-dc0ab60ace1b', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:21:22');
INSERT INTO `examination_examineeinfo` VALUES ('d019c52b-fb1d-4923-9de0-35b05fe3d98f', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:25:50');
INSERT INTO `examination_examineeinfo` VALUES ('d023041e-3c0d-45c5-9764-55d0ddb3e1a7', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:10:58');
INSERT INTO `examination_examineeinfo` VALUES ('d09fe8d2-c860-4c5e-a860-dfc3a226d486', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:12:57');
INSERT INTO `examination_examineeinfo` VALUES ('d507e102-4c03-4ca2-83f3-ed97b8fd3c91', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 11:12:49');
INSERT INTO `examination_examineeinfo` VALUES ('d880883f-5fc3-4b8d-90a9-b03c20f6a935', 'zhangyu', '17631428921', 'e4e2dec6-7a1b-403a-aed1-ae2fe3977f6e', 0, 0, '2020-06-17 11:16:41');
INSERT INTO `examination_examineeinfo` VALUES ('d94831b2-f6bc-431f-95c5-609433f14785', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-18 11:11:50');
INSERT INTO `examination_examineeinfo` VALUES ('d95228b2-1a28-4761-a7af-88ddd0ebd56c', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:44:04');
INSERT INTO `examination_examineeinfo` VALUES ('d9d241b8-5224-4e5e-b76c-930438044efe', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 15:31:50');
INSERT INTO `examination_examineeinfo` VALUES ('db54e49f-03b4-4836-a98d-294aa50481eb', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 15:39:40');
INSERT INTO `examination_examineeinfo` VALUES ('dca3e8a6-d513-4277-b980-d316f1b718a2', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 15:47:20');
INSERT INTO `examination_examineeinfo` VALUES ('e074b1cd-a09c-443c-8928-78614655d052', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 15:35:00');
INSERT INTO `examination_examineeinfo` VALUES ('e0a5fc57-87f8-4b9f-b500-e18baad76489', 'zhangyu', '17631428921', 'e4e2dec6-7a1b-403a-aed1-ae2fe3977f6e', 0, 0, '2020-06-17 11:15:09');
INSERT INTO `examination_examineeinfo` VALUES ('e0fe1553-2f5b-4e90-b931-06843473ce8e', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:22:20');
INSERT INTO `examination_examineeinfo` VALUES ('e2c9f885-4eab-4695-81c2-605477dc527c', '拯救者', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:57:49');
INSERT INTO `examination_examineeinfo` VALUES ('e5597fa9-78de-4ae1-a471-f867b716adee', 'tom', '17631428925', '61fc03eb-c046-4f9e-8233-ba1cd28c4b71', 0, 0, '2020-06-17 10:30:18');
INSERT INTO `examination_examineeinfo` VALUES ('e727be00-19a6-4095-8f1c-aec327bf9ac8', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:27:02');
INSERT INTO `examination_examineeinfo` VALUES ('e854cbc8-1fde-49a9-8971-ff16317908bd', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:30:59');
INSERT INTO `examination_examineeinfo` VALUES ('eadbbf77-56c1-4f80-ba54-52cdfc3f6a7c', 'join', '17631428926', '1414c22f-4dc5-4beb-b952-2e92c0ae9f15', 0, 0, '2020-06-17 10:37:28');
INSERT INTO `examination_examineeinfo` VALUES ('eae9c5a2-3f56-4e6e-abee-4284ee3aa225', 'zhangyu', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:13:15');
INSERT INTO `examination_examineeinfo` VALUES ('eb99b071-3d1b-4394-aac0-e528f50b1f59', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:15:29');
INSERT INTO `examination_examineeinfo` VALUES ('ecd4cc62-5f77-479a-8d16-074b32c04773', '测试', '15176743273', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:59:45');
INSERT INTO `examination_examineeinfo` VALUES ('efdd0b90-873e-4c9c-8294-bf13a7cc4d1b', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-17 16:24:12');
INSERT INTO `examination_examineeinfo` VALUES ('f09cf535-48c3-49a0-8341-94f643b20f4f', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:00:46');
INSERT INTO `examination_examineeinfo` VALUES ('f37025aa-dd1b-4408-8186-fb93a833cd48', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 15:33:53');
INSERT INTO `examination_examineeinfo` VALUES ('f4543b74-863f-4a32-ad78-b7f4033dffde', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:33:18');
INSERT INTO `examination_examineeinfo` VALUES ('f62e172f-bb72-4a4e-97d0-1159ce59ed27', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:21:37');
INSERT INTO `examination_examineeinfo` VALUES ('f7f343d4-9c63-49cf-add4-4b5f98ccd849', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:26:12');
INSERT INTO `examination_examineeinfo` VALUES ('fae992c2-c2c3-4cd1-9c09-09586d1a6a54', 'zhangyu', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-18 11:08:07');
INSERT INTO `examination_examineeinfo` VALUES ('fb54db18-8a46-457a-a60f-3301d120393e', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 10:49:50');
INSERT INTO `examination_examineeinfo` VALUES ('fb7cfa71-cd70-4bbd-9cc1-cb809cb69cc1', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 10:29:22');
INSERT INTO `examination_examineeinfo` VALUES ('fbc8d130-26dc-47b8-93ed-cd04b9b365b7', '辣条', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-19 11:36:25');
INSERT INTO `examination_examineeinfo` VALUES ('ff786035-598e-40db-9422-4daae63bbf98', '拯救者', '17631428921', 'a4582865-5666-48ca-8e75-731e8dc63d31', 0, 0, '2020-06-20 09:19:11');

-- ----------------------------
-- Table structure for examination_papper
-- ----------------------------
DROP TABLE IF EXISTS `examination_papper`;
CREATE TABLE `examination_papper`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID创建',
  `exam_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷标题',
  `exam_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷状态',
  `exam_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试题码',
  `exam_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷分类',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除 0否1是',
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_papper
-- ----------------------------
INSERT INTO `examination_papper` VALUES ('0fdd7e5f-6f49-411d-95ca-19660376f52e', 'HTML5+CSS3测试', '已开启', '36b25952-a1a6-4bc6-bd2e-b564752bd3e0', '前端', 0, '2020-05-28 16:53:52');
INSERT INTO `examination_papper` VALUES ('1aef38ce-5040-4fc1-9324-b908ab2ad62f', 'Jquery测试', '已开启', 'e50cc263-6932-41d7-8e98-ae7454fb1d91', 'SpringMVC', 0, '2020-06-19 09:23:55');
INSERT INTO `examination_papper` VALUES ('20f2de83-76d0-43ac-a0d1-cf21d76f657f', 'SpringMVC+MyBatis测试111', '未开启', NULL, 'html', 1, '2020-06-04 16:24:18');
INSERT INTO `examination_papper` VALUES ('353fb5c2-d9ba-49b5-8d47-4c3216557fa9', 'springMVC周测', '已开启', '5dc143c4-2bee-4090-9fa9-d1a58bec5673', 'html', 0, '2020-06-05 16:00:00');
INSERT INTO `examination_papper` VALUES ('4922690e-9a70-430c-95ba-8e6c621bfc41', 'java期末考试', '未开启', NULL, 'java', 1, '2020-06-04 11:45:42');
INSERT INTO `examination_papper` VALUES ('4dbc550a-5679-4385-8763-7b8ed3692678', 'jsp基础', '未开启', NULL, '框架', 1, '2020-05-27 20:07:53');
INSERT INTO `examination_papper` VALUES ('4dd23066-225b-4dab-8e8f-31f99596850d', 'java期末考试', '已开启', 'f3f2bdd0-9501-4d54-8f42-cbea1933dd29', 'java', 0, '2020-06-04 11:45:39');
INSERT INTO `examination_papper` VALUES ('4fffa7a2-7cc7-4082-815e-0888326c82f1', 'java周测', '未开启', NULL, '前端', 1, '2020-06-04 11:36:43');
INSERT INTO `examination_papper` VALUES ('5221c63e-90f4-4326-8b1b-fa660c6f857c', '2020年度劳动关系下学期期末考试', '已开启', 'a4582865-5666-48ca-8e75-731e8dc63d31', '其他', 0, '2020-05-27 20:01:47');
INSERT INTO `examination_papper` VALUES ('545a0ff8-44cf-4cb9-ad01-d54eb9cdb768', '2020年劳动关系下半学年期末考试', '已开启', NULL, '框架', 0, '2020-06-01 10:47:10');
INSERT INTO `examination_papper` VALUES ('5709aa41-f4ae-4959-8e1d-fff76e7939f7', 'SpringMVC+MyBatis测试444', '未开启', NULL, 'html', 1, '2020-06-04 16:34:30');
INSERT INTO `examination_papper` VALUES ('59c44c78-26bd-4d27-be59-a17e1d24af71', 'SpringMVC+MyBatis测试333333', '未开启', NULL, 'html', 1, '2020-06-04 16:33:45');
INSERT INTO `examination_papper` VALUES ('5a917f2d-002e-483c-8f63-604c7b43f70d', 'java期末考试', '未开启', NULL, 'java', 1, '2020-06-04 11:45:43');
INSERT INTO `examination_papper` VALUES ('5db85faa-17ef-40fa-a093-a4cd2137af57', 'html期末考试', '已开启', '23f31cc0-04e7-41f8-8d0e-e80856300f8b', 'html', 0, '2020-06-04 11:50:18');
INSERT INTO `examination_papper` VALUES ('5e233862-1ab7-44fa-840f-beb4d9fb6837', 'SpringMVC+MyBatis测试444', '未开启', NULL, 'html', 1, '2020-06-04 16:34:24');
INSERT INTO `examination_papper` VALUES ('5f4f0250-91db-418c-a591-4778a5caf09e', 'SpringMVC+MyBatis测试', '未开启', '21fb1d48-cdf8-4692-b3dc-542a2126f40f', '框架', 0, '2020-05-27 19:54:50');
INSERT INTO `examination_papper` VALUES ('63805212-e54f-4394-82e7-6a9e38323dd2', '2020年劳动关系下半学年期末考试', '未开启', NULL, '后台 ', 1, '2020-05-29 15:31:53');
INSERT INTO `examination_papper` VALUES ('676b3f3b-bdb2-4502-902d-4ea2b177b2e1', 'java周测', '已开启', 'ef3b3d77-1eaf-4e02-b4d4-4ff452d7f121', 'java', 0, '2020-06-04 11:43:22');
INSERT INTO `examination_papper` VALUES ('6f36b3fb-4b7a-4a0f-bf25-3d731a385a95', '2020年劳动关系下半学年期末考试1111111111111', '未开启', NULL, 'html', 1, '2020-06-04 11:56:14');
INSERT INTO `examination_papper` VALUES ('7db200d6-2f89-4d60-bd23-e8a42c2ff58a', 'SpringMVC+MyBatis测试111', '未开启', NULL, 'html', 1, '2020-06-04 11:53:43');
INSERT INTO `examination_papper` VALUES ('97259484-8cee-4fed-a32b-4e34fc8cad73', 'ssm框架测试', '未开启', NULL, '框架', 0, '2020-05-27 19:46:36');
INSERT INTO `examination_papper` VALUES ('98b1d577-fe36-4f98-a7a4-75d21ec778b1', 'MyBatis+Spring测试', '已开启', '391aea87-73ef-4980-8d92-db3d53fbe042', '其他', 0, '2020-05-27 19:58:27');
INSERT INTO `examination_papper` VALUES ('9d0d563c-b981-4fa2-b4fd-c5768b0262d2', 'java基础', '未开启', NULL, '其他', 1, '2020-05-27 19:47:53');
INSERT INTO `examination_papper` VALUES ('a3eef0af-a4c6-44b4-8de2-30dc2068bc6a', '2020年劳动关系下半学年期末考试2222', '未开启', NULL, 'ssm框架', 1, '2020-06-04 16:37:49');
INSERT INTO `examination_papper` VALUES ('c04ca83c-bae1-40e6-8f50-04d8d14392c1', 'SpringMVC+MyBatis测试2222', '未开启', NULL, 'html', 1, '2020-06-04 16:26:00');
INSERT INTO `examination_papper` VALUES ('c49eeda5-88da-4774-a1af-ecd301b1e7dd', 'java期末考试', '未开启', NULL, 'java', 1, '2020-06-04 11:45:43');
INSERT INTO `examination_papper` VALUES ('d5b53751-0187-491b-a846-21788c16c3ca', 'ssm周测', '未开启', NULL, NULL, 1, '2020-06-04 11:38:41');
INSERT INTO `examination_papper` VALUES ('e02dd141-990b-462d-88c0-b9d017a2d289', 'ssm期末考试11', '未开启', NULL, 'html', 1, '2020-06-04 11:47:34');
INSERT INTO `examination_papper` VALUES ('e81bb6a4-a023-4817-beb1-4a22a80c6cd8', '2020年劳动关系下半学年期末考试111', '未开启', NULL, 'html', 1, '2020-06-04 16:37:21');
INSERT INTO `examination_papper` VALUES ('e8223ad7-5590-449b-8b69-f6cae3c4a4b4', 'html周测', '已开启', 'db00321a-7987-4cba-95eb-c62dc501aece', 'html', 0, '2020-06-04 11:33:51');
INSERT INTO `examination_papper` VALUES ('f22880c8-5f94-41da-a371-d5ca2fe9fa6f', 'Jquery', '未开启', NULL, '框架', 1, '2020-05-28 10:27:00');
INSERT INTO `examination_papper` VALUES ('fa12e535-c05a-4867-8b8b-71a1ae62d666', 'SpringMVC+MyBatis测试1', '未开启', NULL, 'html', 1, '2020-06-04 11:51:54');
INSERT INTO `examination_papper` VALUES ('ff2edc17-982b-4c28-9485-6d0ba3189745', 'java期末考试', '未开启', NULL, 'java', 1, '2020-06-04 11:45:43');

-- ----------------------------
-- Table structure for examination_subject
-- ----------------------------
DROP TABLE IF EXISTS `examination_subject`;
CREATE TABLE `examination_subject`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `exam_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷id',
  `subject_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试题名称',
  `subject_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试题表id',
  `solution_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项A',
  `solution_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项B',
  `solution_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项C',
  `solution_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项D',
  `solution_t` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '正确答案',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题库名称',
  `exam_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题型分类',
  `is_add` int(8) NULL DEFAULT 0 COMMENT '是否被添加',
  `is_delete` int(8) NULL DEFAULT NULL COMMENT '是否删除 0否1是',
  `create_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_subject
-- ----------------------------
INSERT INTO `examination_subject` VALUES ('0d5230db-4cdc-4c38-bc85-19ef6b7b0b1a', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');
INSERT INTO `examination_subject` VALUES ('11f1ffb7-c87f-41b7-814e-31eee9aff5b3', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:13');
INSERT INTO `examination_subject` VALUES ('161a1ca3-d07b-4483-a9d0-a9a9ef2e79a4', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:17');
INSERT INTO `examination_subject` VALUES ('2f9ecc3a-058d-4109-876a-70b8fb5a1a26', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '5+5=151', '638273ee-1fb3-492a-b355-6927ad93380f', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('2fa53afd-628a-4247-abc4-c26b51b4047b', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');
INSERT INTO `examination_subject` VALUES ('3cb59cc3-b7d5-4273-ae22-c72edb9cea29', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('5ec0b7b4-dab8-4b45-b866-855b960c0f8e', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '5+5=151', '638273ee-1fb3-492a-b355-6927ad93380f', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('6d87bec2-18ee-414f-bdd2-706412848a1c', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');
INSERT INTO `examination_subject` VALUES ('70aa6a6e-0479-4499-95ce-127320c01717', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:17');
INSERT INTO `examination_subject` VALUES ('74b137f7-618a-4479-8da0-d9c1d5ee7197', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');
INSERT INTO `examination_subject` VALUES ('82ff6ad5-f8e5-49aa-8e08-34d28e3f984f', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:20');
INSERT INTO `examination_subject` VALUES ('842166fb-2a0d-4c6b-be08-13ad8da6ac39', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '5+5=151', '638273ee-1fb3-492a-b355-6927ad93380f', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('9529a663-64ec-48c9-95d2-3f68af80a212', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:16');
INSERT INTO `examination_subject` VALUES ('9ab4660d-dabd-4cf4-82a3-986f27e321f8', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '5+5=151', '638273ee-1fb3-492a-b355-6927ad93380f', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('a27bc177-1049-4348-acc7-8c4470bd2e55', '5221c63e-90f4-4326-8b1b-fa660c6f857c', '444', '193d4f17-ed35-4007-9217-cff04b261234', '1', '2', '3', '4', 'B', 'html', '1', 0, 0, '2020-06-11 08:50:28');
INSERT INTO `examination_subject` VALUES ('a99d4f74-f8ad-4a6b-95c1-9554650a05d5', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '9*9*9*9-9', 'd4886077-e9fe-411d-bd9f-122565326dd1', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');
INSERT INTO `examination_subject` VALUES ('b835f16b-bbf9-48cf-88ef-9a59024a1088', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '5+5=151', '638273ee-1fb3-492a-b355-6927ad93380f', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');
INSERT INTO `examination_subject` VALUES ('bd425745-05e0-435a-8a1b-1a799f9fa27a', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('c07a1249-f083-4aa5-a0ec-35e0d69dbd7a', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:17');
INSERT INTO `examination_subject` VALUES ('c514e6ea-f945-40eb-8446-e89c4742df55', '5db85faa-17ef-40fa-a093-a4cd2137af57', '2*2*2=66', '2b93db0f-22e0-4e59-9dda-1579ebc8ee70', NULL, NULL, NULL, NULL, '0', 'ssm框架', '0', 0, 0, '2020-06-11 09:34:27');
INSERT INTO `examination_subject` VALUES ('d7be7ddf-445e-440d-80d6-b1f4c1118e33', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '1+1=1+1+1+1', '102e02b9-dc8c-4d24-ad8f-671ac02631af', '0', NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:18');
INSERT INTO `examination_subject` VALUES ('d933a108-6684-43b7-ad0a-5bc3831aa08a', '5221c63e-90f4-4326-8b1b-fa660c6f857c', '5+5+5=3*5', '341bac6a-ab53-45b8-843f-ffb3314181f3', '1', NULL, NULL, NULL, '1', NULL, '0', 0, 0, '2020-06-02 09:42:14');
INSERT INTO `examination_subject` VALUES ('e98da7e6-aea9-4d31-a459-b882f16f36fb', '5db85faa-17ef-40fa-a093-a4cd2137af57', '9*9*9', '2ac353c7-76a2-4649-8de2-0961b44fa4c0', '1888', '8118', '722', '546', 'D', 'ssm框架', '1', 0, 0, '2020-06-11 09:34:26');
INSERT INTO `examination_subject` VALUES ('f2c8bd1a-239b-403a-8a5c-ff04afb2c91c', '1aef38ce-5040-4fc1-9324-b908ab2ad62f', '5+5=151', '638273ee-1fb3-492a-b355-6927ad93380f', NULL, NULL, NULL, NULL, '0', 'html', '0', 0, 0, '2020-06-19 09:24:19');

-- ----------------------------
-- Table structure for examination_users
-- ----------------------------
DROP TABLE IF EXISTS `examination_users`;
CREATE TABLE `examination_users`  (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `againpass` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telephone` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_detele` int(11) NULL DEFAULT NULL,
  `create_time` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_users
-- ----------------------------
INSERT INTO `examination_users` VALUES ('2d201cd7-3f30-46a3-a901-4505e17c55ec', 'zhangyu2', '123456', '123456', '17631428922', 0, '2020-05-26 17:31:33');
INSERT INTO `examination_users` VALUES ('36afb7a8-9276-485e-8502-0510f6df21ea', 'zhangyu', 'zhangyu', 'zhangyu', '17631428921', 0, '2020-05-26 17:38:38');
INSERT INTO `examination_users` VALUES ('a4d2dda9-40ba-4fae-a77e-ab2bbd537c4f', '', '', '', '', 0, '2020-05-26 19:51:29');
INSERT INTO `examination_users` VALUES ('a9c327df-9583-4c00-86c3-4b337d8c4ae3', 'zhangyu1', '123456', '123456', '17631428923', 0, '2020-05-26 17:27:48');
INSERT INTO `examination_users` VALUES ('bad67640-cffa-4d19-b0bf-f3bfadc16a17', '', '', '', '', 0, '2020-06-15 10:01:15');
INSERT INTO `examination_users` VALUES ('f4cb7faa-8835-422b-8374-fffcb5e4139f', 'zhangyu', '123456', '123456', '17631428924', 0, '2020-05-26 17:25:31');
INSERT INTO `examination_users` VALUES ('f8d326c7-d475-4872-b206-e3251532e182', 'zhangyu', '123456', '123456', '15176743273', 0, '2020-05-27 10:47:49');

SET FOREIGN_KEY_CHECKS = 1;
