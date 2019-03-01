/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : chatterbot

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 01/03/2019 11:12:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat_dialog
-- ----------------------------
DROP TABLE IF EXISTS `chat_dialog`;
CREATE TABLE `chat_dialog`  (
  `chatId` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inputMessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sendTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `responseMessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `responseTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`chatId`) USING BTREE,
  INDEX `chat_wxuser`(`openid`) USING BTREE,
  CONSTRAINT `chat_wxuser` FOREIGN KEY (`openid`) REFERENCES `weixin_user` (`openid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_dialog
-- ----------------------------
INSERT INTO `chat_dialog` VALUES (56, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '不错', NULL, '2019-02-28 19:19:50 下午', ' 谢谢', '2019-02-28 19:19:54 下午');
INSERT INTO `chat_dialog` VALUES (60, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '你是谁', NULL, '2019-02-28 20:31:31 下午', ' 神', '2019-02-28 20:31:38 下午');
INSERT INTO `chat_dialog` VALUES (69, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '吃鸡', NULL, '2019-02-28 20:48:12 下午', '响应超时，请稍候再试.', '2019-02-28 20:48:28 下午');
INSERT INTO `chat_dialog` VALUES (70, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '吃鸡', NULL, '2019-02-28 20:48:46 下午', NULL, '2019-02-28 20:48:56 下午');
INSERT INTO `chat_dialog` VALUES (71, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '回来啦', NULL, '2019-02-28 20:51:47 下午', ' 累了', '2019-02-28 20:51:51 下午');
INSERT INTO `chat_dialog` VALUES (82, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '手痛', NULL, '2019-02-28 20:55:55 下午', '响应超时，请稍候再试.', '2019-02-28 20:56:11 下午');
INSERT INTO `chat_dialog` VALUES (85, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '你好', NULL, '2019-02-28 22:03:14 下午', ' 我很好,你呢，你怎么样', '2019-02-28 22:03:23 下午');
INSERT INTO `chat_dialog` VALUES (86, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '早上好', NULL, '2019-02-28 22:03:29 下午', ' 嘿，早上好啊！', '2019-02-28 22:03:34 下午');
INSERT INTO `chat_dialog` VALUES (87, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '晚上好', NULL, '2019-02-28 22:03:59 下午', ' 晚上好～', '2019-02-28 22:04:04 下午');
INSERT INTO `chat_dialog` VALUES (88, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '中午好', NULL, '2019-02-28 22:04:09 下午', ' 嗨~', '2019-02-28 22:04:15 下午');
INSERT INTO `chat_dialog` VALUES (89, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '午饭吃什么', NULL, '2019-02-28 22:04:20 下午', ' 好多好多好吃的', '2019-02-28 22:04:25 下午');
INSERT INTO `chat_dialog` VALUES (90, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', '好吃的', NULL, '2019-02-28 22:04:33 下午', ' 在爭鮮', '2019-02-28 22:04:38 下午');

-- ----------------------------
-- Table structure for jp_bridge
-- ----------------------------
DROP TABLE IF EXISTS `jp_bridge`;
CREATE TABLE `jp_bridge`  (
  `jpid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inputMessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `responseMessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `solved` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0,
  PRIMARY KEY (`jpid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jp_bridge
-- ----------------------------
INSERT INTO `jp_bridge` VALUES (5, '91d76eaf17cb4f27b3cceeb63f41c7b4', '你好', NULL, 1);
INSERT INTO `jp_bridge` VALUES (6, '849a5f4f54324ac2a9f6954015bcc9a6', '你是', ' 没什么印象咯', 1);
INSERT INTO `jp_bridge` VALUES (7, NULL, '您好', ' 好好好~', 1);
INSERT INTO `jp_bridge` VALUES (8, NULL, '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (9, NULL, '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (10, 'f4f8c073aad34ae9992f24ae7d0309a2', '你好呀', ' 哟~ 都好都好', 1);
INSERT INTO `jp_bridge` VALUES (11, '0c16f533c8b64f2696a48708d7ca2708', '是吗', ' 当然，还用问么', 1);
INSERT INTO `jp_bridge` VALUES (12, '60e7b00865bb4eabb22cdfb87e9f7051', '你很聪明', ' 当然，还不是一般的聪明', 1);
INSERT INTO `jp_bridge` VALUES (13, '3936f54b44854511bdd0948a1795658a', '唱歌', ' 啦啦啦啦啦啦啦啦啦啦啦……', 1);
INSERT INTO `jp_bridge` VALUES (14, 'df6de961e28a4107a7d93ea2dde493ac', '医院', ' 不错。。。', 1);
INSERT INTO `jp_bridge` VALUES (15, '868eb7600de1457280d295fec25b1ef2', '脚扭了', ' 哭了一夜的疯子', 1);
INSERT INTO `jp_bridge` VALUES (16, '1abbeddd769d4b818898d26e5c275058', '偏头痛', ' 你一开口，我就知道结果，你就不能搞点新创意出来嘛', 1);
INSERT INTO `jp_bridge` VALUES (17, 'ee407de073ba4788a0517442f3d57baa', '头痛', '初步判斷可能为感冒，建议到耳鼻喉科进一步检查', 1);
INSERT INTO `jp_bridge` VALUES (18, '0c3f749d363c4d478166eb8299415060', '感冒', ' 快吃白加黑，白天服白片，晚上服黑片~不瞌睡，一吃就见效~', 1);
INSERT INTO `jp_bridge` VALUES (19, '9fdb5ff62b1e4d3ca8f8ef43733d4d6c', '发烧了', ' 呼呼，痛痛飞走啦~', 1);
INSERT INTO `jp_bridge` VALUES (20, '012f9b640985464aacdadb54ad9fb3db', '胃不舒服', ' 啊，哪里不舒服，要不要去看医生啊', 1);
INSERT INTO `jp_bridge` VALUES (21, '89c06deea5fa4031a4d0953e17f950d0', '肚子痛', ' 经痛摸摸就好了', 1);
INSERT INTO `jp_bridge` VALUES (22, '949f1909ac414a34ab0aba6e4e3f5d78', '脚痛', NULL, 1);
INSERT INTO `jp_bridge` VALUES (23, 'fe14092b24e34f85bf59d6a2e76ed918', '不舒服', ' 啊，哪里不舒服，要不要去看医生啊', 1);
INSERT INTO `jp_bridge` VALUES (24, '3b5c08dbc3a54b73a2bde956d1c2126b', 'hello', ' 没什么话题聊了是吗', 1);
INSERT INTO `jp_bridge` VALUES (25, '462eeb1e2fa741339cd60b8853ce19a7', 'hello', ' 没什么话题聊了是吗', 1);
INSERT INTO `jp_bridge` VALUES (26, '655e0c58e31a438295b8b7a1909fd4a1', '你是谁', ' 神', 1);
INSERT INTO `jp_bridge` VALUES (27, '378f92ff70fb423f8ae72ec5c46fec55', '你是谁', ' 神', 1);
INSERT INTO `jp_bridge` VALUES (28, 'c57fa13eba4640dd9cc297bb0f6e8860', '你是谁', ' 神', 1);
INSERT INTO `jp_bridge` VALUES (29, '2da196b5f3bc44299e6fa335f114018f', '你是谁', ' 神', 1);
INSERT INTO `jp_bridge` VALUES (30, '2c8402f1bd10433c8ce04ba0baf53210', '你好呀', ' 哟~ 都好都好', 1);
INSERT INTO `jp_bridge` VALUES (31, 'c43af09ebd3c425fa5214b92a2030e4b', '是吗', ' 当然，还用问么', 1);
INSERT INTO `jp_bridge` VALUES (32, '3845176758f543bd9e715695c24c4746', '太慢了', ' 彪悍的人生不需要解释', 1);
INSERT INTO `jp_bridge` VALUES (33, 'cb5ae98cdc6d4a43bf5db33d2fb2a74f', '脚痛', NULL, 1);
INSERT INTO `jp_bridge` VALUES (34, '5cf66363a718434492cfbbee6ca870f6', '脑壳痛', NULL, 1);
INSERT INTO `jp_bridge` VALUES (35, '26475b5db617463f95eaa9a281555a2a', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (36, '46a0018f8c2941f7a6b24a410da28c2e', '你回来啦', ' 必须的，师兄弟八千，徒弟一万二！', 1);
INSERT INTO `jp_bridge` VALUES (37, 'cfbc4653e96f45f78c81f6de25af42cb', '英语', ' 你是想看英语笑话吗？如果是的话要在后面要加上“笑话”两字，请发送：英语笑话', 1);
INSERT INTO `jp_bridge` VALUES (38, 'cec9d5f92f224313812ffbe158572a0e', '笑话', ' 你傻逼吧？要看先给钱，不给自己找笑话去', 1);
INSERT INTO `jp_bridge` VALUES (39, 'f575e2564e8240a7a6692a7fdb9c8819', '就医', NULL, 1);
INSERT INTO `jp_bridge` VALUES (40, '8db6a8d0f7ae4336b34199a28c1c112e', '医院', ' 不错。。。', 1);
INSERT INTO `jp_bridge` VALUES (41, 'c5b68f3401fc401da0db7e795d14a19a', '不舒服', ' 啊，哪里不舒服，要不要去看医生啊', 1);
INSERT INTO `jp_bridge` VALUES (42, '9f2fbac297994470a3da14a64b8ee6f3', '电影', ' 去电影院看好贵的说，还不如在家看看电脑，还不花钱', 1);
INSERT INTO `jp_bridge` VALUES (43, 'd4116d43d3314d37bf70e2df77c94e42', '电脑', ' 负二代是我爷爷', 1);
INSERT INTO `jp_bridge` VALUES (44, '85bd7fbe96184104b612964a35cc9fc2', '爸爸', ' 啊...小朋友，你叫错了，我不是你爸爸', 1);
INSERT INTO `jp_bridge` VALUES (45, '21123c663cfe428ab923f60ac86b5a62', '不错', ' 谢谢', 1);
INSERT INTO `jp_bridge` VALUES (46, 'ab6b91e3fabe4dc89a70ed291224ddbf', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (47, 'd81cc69d9f844d5c8e5dafe0f414e43f', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (48, 'f1747485b5434a059e9330c525852022', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (49, '81b5d2e57a024981bc5cc6b05190f909', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (50, '63222ff8efcb4695ac781cb1e01e03e7', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (51, '88cf831273f1483da10580b9ee991971', '你是谁', ' 神', 1);
INSERT INTO `jp_bridge` VALUES (52, '6abec13cb6a74ac5919e95be13780b38', '你是谁', ' 神', 1);
INSERT INTO `jp_bridge` VALUES (53, '6b2c7a427ca44dfca0e27e65a2e525da', '你是哪个', ' 是你大爷', 1);
INSERT INTO `jp_bridge` VALUES (54, '2eda8c3ff65647dfa727e23a2ca05291', '你好吗', ' 我很好，你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (55, '8c83e7c0ea13441ba9b75aeacf9fe3ab', '你好吗', ' 我很好，你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (56, '0360c5fb78174bef86b0960224d0ab7d', '可以呀', ' 可以就行', 1);
INSERT INTO `jp_bridge` VALUES (57, '3f3eb30ac32a48e29559cadc809d06ea', '吃鸡', NULL, 2);
INSERT INTO `jp_bridge` VALUES (58, 'e03aea5b0a4c42c9be78c1118c524117', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (59, 'a296c4228fa14fa788b8b4c77716d392', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (60, '1fbdc03ef1034ca3bc9cae9bec070331', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (61, '927c12c5b2424fe8b46b63e23a16d338', '吃鸡', NULL, 2);
INSERT INTO `jp_bridge` VALUES (62, '9fd1c03f76464ce8abf0419cae962058', '吃鸡', NULL, 2);
INSERT INTO `jp_bridge` VALUES (63, 'ecd742929b3141dea8b33f8962e277f1', '回来啦', ' 累了', 1);
INSERT INTO `jp_bridge` VALUES (64, '168fa5d3b1494ea183b97bd061a90703', '音乐', ' 马上播放', 1);
INSERT INTO `jp_bridge` VALUES (65, '706adf4ed57e45349fe1b2e39cf5a167', '唱首歌', ' 你是我心中最美的云彩 让我用心把你留下来~', 1);
INSERT INTO `jp_bridge` VALUES (66, '25ad73ae7ed14d7b9bc1e9fa7cf1b38f', '青花瓷', ' 天青色等烟雨 而我在等你', 1);
INSERT INTO `jp_bridge` VALUES (67, 'f61dc605a0d74b3080cfd7a8bb5d0808', '我爱你', ' 我爱贾彦娟', 1);
INSERT INTO `jp_bridge` VALUES (68, 'fd6cb3858c3d41d2a7366b45ce1044ac', '中国', ' 负二代是我爷爷', 1);
INSERT INTO `jp_bridge` VALUES (69, 'dc27184775ab40ccb9b5f9bcc4729e22', '富二代', ' 吊丝', 1);
INSERT INTO `jp_bridge` VALUES (70, 'f2a02401d5794abaa869ba6724f6a19f', '程序员', ' 谈谈情，跳跳舞，跟我搞暧昧啊', 1);
INSERT INTO `jp_bridge` VALUES (71, '377c135d36594eaea275428d85888cc6', '胃', NULL, 2);
INSERT INTO `jp_bridge` VALUES (72, 'a457e657695141cba72a4ed7d3c2f3e5', '医疗', ' 不错。。。', 1);
INSERT INTO `jp_bridge` VALUES (73, '91805b1f27834e58a270223c9753b3a9', '打针', ' @高晓平', 1);
INSERT INTO `jp_bridge` VALUES (74, '7f7cfc6ec27240f58a20704326696918', '手痛', NULL, 2);
INSERT INTO `jp_bridge` VALUES (75, '1c9c1f37cbc8400687e3e65fc7c54db5', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (76, 'de8898ca7d3e4fc78a67b5af146554e0', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (77, '31a8ae083da74d2b948f162416388f24', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (78, 'e4be43ec166349ff85739dc4b9f29135', '早上好', ' 嘿，早上好啊！', 1);
INSERT INTO `jp_bridge` VALUES (79, '47033321f328401e9b09715d115534ae', '晚上好', ' 晚上好～', 1);
INSERT INTO `jp_bridge` VALUES (80, '5b0911bf22cd47b2b712417f7c83fd32', '中午好', ' 嗨~', 1);
INSERT INTO `jp_bridge` VALUES (81, '212aeeca4ea2429593a4286f8ad377b2', '午饭吃什么', ' 好多好多好吃的', 1);
INSERT INTO `jp_bridge` VALUES (82, 'ea389ac0ffb64124baca6a9a920067eb', '好吃的', ' 在爭鮮', 1);
INSERT INTO `jp_bridge` VALUES (83, 'ebc009ad4ac54d99bc13b51cada6bdd1', '台湾', ' 中国不可分割的一部分', 1);
INSERT INTO `jp_bridge` VALUES (84, 'c9235315b11a4606bc72f720bc4509e2', '中国', ' 负二代是我爷爷', 1);
INSERT INTO `jp_bridge` VALUES (85, '94add368069d43609d503ad582c9eca0', '美国', ' 欠钱还敢嚣张的魂淡', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `realName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'hhm', 'hh', NULL, '何海', NULL, '13971474250', '123@123.com');
INSERT INTO `user` VALUES (3, 'hhf', 'hhf', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (9, 'sfsd', 'sdfsdf', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (10, 'sjj', 'sjj', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `weixin_user`;
CREATE TABLE `weixin_user`  (
  `wxuid` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe` int(255) NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subscribe_time` bigint(20) NULL DEFAULT NULL,
  `unionid` varbinary(255) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `groupid` int(11) NULL DEFAULT NULL,
  `tagid_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subscribe_scene` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `qr_scene` int(255) NULL DEFAULT NULL,
  `qr_scene_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`wxuid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weixin_user
-- ----------------------------
INSERT INTO `weixin_user` VALUES (2, 1, 'test', 'asd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `weixin_user` VALUES (4, 1, 'o7l5N1KWFUnsqSFjUp7hVM8JS8Tw', 'Hiram He', 1, 'en', '武汉', '湖北', '中国', 'http://thirdwx.qlogo.cn/mmopen/TZznQUbRDfXpRiayQRnoRxIOVmLdxmxEgkblO4ULqGW2grDTpkLZzCibJBUYIoJByckLKyn8YsUqCTL8kuMuhEheTVFETHhxab/132', 1550665499, NULL, '', 0, '[]', 'ADD_SCENE_QR_CODE', 0, '');
INSERT INTO `weixin_user` VALUES (8, 1, 'o7l5N1JkVX0dMfilxpCu7DGTvc7k', 'Bugatti Chiron', 1, 'zh_CN', '', '柏林', '德国', 'http://thirdwx.qlogo.cn/mmopen/TZznQUbRDfULiaSiabUR7vd2eQ8GsHtL0DRWBicOa9AKWf1aeTbibP69NdASplfVs9cLIHvjeAHDdL5ibAXhhBNkgWia27p0ofkKdN/132', 1550796778, NULL, '', 0, '[]', 'ADD_SCENE_PROFILE_CARD', 0, '');
INSERT INTO `weixin_user` VALUES (9, 1, 'o7l5N1A5CSXZBBn986FKjFkf4xQQ', '123～木头人', 1, 'en', '武汉', '湖北', '中国', 'http://thirdwx.qlogo.cn/mmopen/5aqMyxILRuy0wXESeJIibDdEldibujHUH9giaKXswRkMDBYyLGr1x1goSdb5ILAN4kjd01gjE8siaicFhsObfgyDe58zjAEQ33EwX/132', 1551076021, NULL, '', 0, '[]', 'ADD_SCENE_PROFILE_CARD', 0, '');

SET FOREIGN_KEY_CHECKS = 1;
