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

 Date: 03/03/2019 11:09:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `jp_bridge` VALUES (86, '710d50682ae24c509610359f55f05796', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (87, '03a7dec6975b4db99458090952d19342', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (88, 'f73aac9ece4744a88cda771b2095b46c', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (89, '454a11db4d054e45abbbebdc6258b209', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (90, '823723cfbe75408393b1e6be160de7aa', '美国', ' 欠钱还敢嚣张的魂淡', 1);
INSERT INTO `jp_bridge` VALUES (91, '5b2e550059e24f68a7afbeca1afff885', '国足', ' 主人一定是烧坏了', 1);
INSERT INTO `jp_bridge` VALUES (92, '08190d8414d84ef0954af04ded7b6791', '傻子', ' 你笨蛋', 1);
INSERT INTO `jp_bridge` VALUES (93, '497381a1f3394e80bd2dc7a90e8f9780', '蠢货', ' 蠢蛋', 1);
INSERT INTO `jp_bridge` VALUES (94, 'df23a3a4309f4eeda7ec4d8239de2830', '叫爸爸', ' 爸爸', 1);
INSERT INTO `jp_bridge` VALUES (95, '99208977078d4d45b34c6f1d343f771b', '英国', ' 专属毛子永远的爱', 1);
INSERT INTO `jp_bridge` VALUES (96, 'd4e8ba5d46634ff4b0a5dc8073cf15cd', '医院', ' 不错。。。', 1);
INSERT INTO `jp_bridge` VALUES (97, 'e2a2d3c9390542a5bf0e27198d0f04b8', '学校', ' 哦哦，那你好好读书咯', 1);
INSERT INTO `jp_bridge` VALUES (98, '3a1811a01ebf4257bfbed845e0667724', '感冒了', ' 快去找点药吃吧，别拖着', 1);
INSERT INTO `jp_bridge` VALUES (99, 'ec819ae1fbf84f10afba8a21d9272943', '白加黑', ' 无法理解您的话，获取帮助请发送 help', 1);
INSERT INTO `jp_bridge` VALUES (100, '658b3b0b9f0e453086022a266136b2ee', 'help', ' 你说个“hll”是什么意思', 1);
INSERT INTO `jp_bridge` VALUES (101, 'b5101622c7414a6f8d23b49118f20207', '不舒服', ' 啊，哪里不舒服，要不要去看医生啊', 1);
INSERT INTO `jp_bridge` VALUES (102, 'f192e5648dfd4fa5a46e808639e34923', '肚子', ' 都是拾忆的', 1);
INSERT INTO `jp_bridge` VALUES (103, 'ef880285fcf847ffa28c00b1f9651ec5', '我头疼', ' 睡觉觉吧', 1);
INSERT INTO `jp_bridge` VALUES (104, 'd5dbd257d4c64dd9aa838c7bfb70f533', '肚子疼', ' 姨妈来了吗', 1);
INSERT INTO `jp_bridge` VALUES (105, '9e77c7a9749d40a29eb8ae61cdbd1202', '我肚子疼', ' 自己在角落里多捂捂，', 1);
INSERT INTO `jp_bridge` VALUES (106, '376b93a8171c49dbac31c0d61ef0c6ef', '我屁股疼', ' 感激不尽', 1);
INSERT INTO `jp_bridge` VALUES (107, '2296b8a5b9254b2baa5b03bd6e1ec6b7', '我菊花痒', ' 菊花本是一种挺好看的花，可惜被这个爆力的时代给摧残了', 1);
INSERT INTO `jp_bridge` VALUES (108, '732b2e026a3842399864ebd850c1d39d', '流鼻涕', ' 懂了了捏~我见你够切咧哦！', 1);
INSERT INTO `jp_bridge` VALUES (109, '2899f09189f64b7a8cf3a7d8492e27d4', '鼻塞', '听起来感觉像是感冒，建议前往耳鼻喉科去做更进一步的检查', 1);
INSERT INTO `jp_bridge` VALUES (110, '7927f80cf0274101af23f3ed8d7a0dd8', '鼻炎', NULL, 2);
INSERT INTO `jp_bridge` VALUES (111, '016eb9c255684d1ba038ee3735667ecd', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (112, '33f8af03469f438fb95199ab85f3d8e7', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (113, '15a08fe8f11e4bc8b36c7a2b06e02bd7', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (114, '89caa1eae54b4cf0bbc42043a2faa9cb', '你哈', ' 我错了', 1);
INSERT INTO `jp_bridge` VALUES (115, '9332cdde2abb412fbd15ba477eb9af17', '鼻炎', NULL, 2);
INSERT INTO `jp_bridge` VALUES (116, '1a45cd56518a43c7bf31656bf57d4de1', '你好', NULL, 2);
INSERT INTO `jp_bridge` VALUES (117, '844144c84ff44bc299a59520fbdf555e', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (118, '52a22d77f76c487eb772b31175775015', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (119, '3bd6f06cb5d04a6d92ac39a565c2fcca', '美国', ' 欠钱还敢嚣张的魂淡', 1);
INSERT INTO `jp_bridge` VALUES (120, '448cde753c4d42dcbdf2aaaa2c4398f8', '美国', ' 欠钱还敢嚣张的魂淡', 1);
INSERT INTO `jp_bridge` VALUES (121, '92af5ac5c09b4cf78899a18508692621', '脚痛', NULL, 2);
INSERT INTO `jp_bridge` VALUES (122, 'fb60545ddff244c0b867ff94d4610497', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (123, '25f68ed5471d4d1b915cb02e9a3d576c', '是吗', ' 当然，还用问么', 1);
INSERT INTO `jp_bridge` VALUES (124, 'e29fcf0950e94ed086d13327275ecb41', '肚子痛', ' 经痛摸摸就好了', 1);
INSERT INTO `jp_bridge` VALUES (125, 'a493e2d318924a7cb526bef3b822a3d8', '瞎说', ' 虽然是瞎说，不过，也蛮有道理的嘛', 1);
INSERT INTO `jp_bridge` VALUES (126, '4ff81952a42c4555a06445fc062bb636', '你是真的蠢', ' 係，我認', 1);
INSERT INTO `jp_bridge` VALUES (127, 'edec43ed199740e38257d5bd2d513823', '你可以呀', ' 屏蔽！--！', 1);
INSERT INTO `jp_bridge` VALUES (128, '48d4588a06ea4b4c9c80abe180a8c2d9', '大学', ' 尼玛，上下铺！！！', 1);
INSERT INTO `jp_bridge` VALUES (129, '22e307e9a3744ffaafcc4500a24d5715', '清华', ' 她是张诗琳爱的人', 1);
INSERT INTO `jp_bridge` VALUES (130, '440957cdea274486bfb29f22383147b8', '清华大学', ' 壮哉！', 1);
INSERT INTO `jp_bridge` VALUES (131, '6058e1291dcd4332b025273c2e448f93', '华中科技大学', ' 快樂是選擇', 1);
INSERT INTO `jp_bridge` VALUES (132, '9f17ef57c0f5474fb58fc70ddf54c4d2', '胃病', NULL, 2);
INSERT INTO `jp_bridge` VALUES (133, '05641dad8aaa425b80d960e87604f4c5', '你好', ' 我很好,你呢，你怎么样', 1);
INSERT INTO `jp_bridge` VALUES (134, 'a5778d2303e44eadb36c31de60662eaa', '你又回来啦', ' 你老公等你好久了，还在等呢', 1);
INSERT INTO `jp_bridge` VALUES (135, 'a76526ed553346579b13cd759b861997', '愚蠢', ' 汤匀麒', 1);
INSERT INTO `jp_bridge` VALUES (136, 'f00c85a4f43441ba8a01e8bbcfeb59b0', '头痛', '目前看起來像是感冒，可以到耳鼻喉科了解更细部的资讯', 1);
INSERT INTO `jp_bridge` VALUES (137, '8d7e0670afd74913a20633c42e5dbda0', '感冒', ' 快吃白加黑，白天服白片，晚上服黑片~不瞌睡，一吃就见效~', 1);
INSERT INTO `jp_bridge` VALUES (138, '56a7393befe541049cae662ede87a82a', '嗓子不舒服', ' 啊，哪里不舒服，要不要去看医生啊', 1);
INSERT INTO `jp_bridge` VALUES (139, 'f65f35029bb749fa938d0e9bdfa6fa4f', '切克闹', ' 奶罩内裤避孕套', 1);
INSERT INTO `jp_bridge` VALUES (140, '695c51f1e5184959bb2acd8aed90e1b5', '不够好', ' 在那遥远的11区', 1);
INSERT INTO `jp_bridge` VALUES (141, '349be0075e954a1cbcb7ebc8b8877744', '红楼梦', ' 开辟鸿蒙，谁为情种？都只为风月情浓。趁着这奈何天，伤怀日，寂寥时，试遣愚衷。因此上演出这怀金悼玉的《红楼梦》。', 1);
INSERT INTO `jp_bridge` VALUES (142, '7ffea1147028468588aa1b6792d93655', '三国', ' 武虎将和修＞＜~', 1);

SET FOREIGN_KEY_CHECKS = 1;
