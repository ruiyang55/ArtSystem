/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 03/03/2021 19:12:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` bigint(20) NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (123456, '123456', 'admin', '123@163.com', 18812345678);

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `language` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '少有人走的路', 'M·斯科特·派克 ', '吉林文史公司', '9787807023777', '处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中国', 26.00, '2007-01-01', 9, 1);
INSERT INTO `book_info` VALUES (2, '方向', '马克-安托万·马修 ', '后浪丨北京联合公司', '9787020125265', '即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中国', 99.80, '2017-04-01', 9, 1);
INSERT INTO `book_info` VALUES (3, '画的秘密', '马克-安托万·马修 ', '北京联合公司·后浪公司', '9787550265608', '直击人内心最为隐秘的情感。 一部追寻艺术的纸上，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中国', 60.00, '2016-01-01', 9, 0);
INSERT INTO `book_info` VALUES (4, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华公司', '9787501162734', '该作品是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中国', 12.00, '2003-01-01', 9, 0);
INSERT INTO `book_info` VALUES (5, '人类泥塑', '[以色列] 尤瓦尔·赫拉利 ', '中信公司', '9787508647357', '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？', '英国', 68.00, '2014-11-01', 11, 1);
INSERT INTO `book_info` VALUES (6, '大雪中的山庄', '东圭吾 ', '北京十月文艺公司', '9787530216835', '东圭吾杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东圭吾', '日本', 35.00, '2017-06-01', 9, 1);
INSERT INTO `book_info` VALUES (7, '社会', '[美] 曼昆 ', '机械工业公司', '9787111126768', '此画的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英国', 88.00, '2003-08-05', 6, 1);
INSERT INTO `book_info` VALUES (8, '梦中世界', '顾元 ', '朝华公司', '9787505414709', '一段年少时的爱恋，牵出一生的纠缠。不善表达的他终于使她在一次伤心之下远走他乡……', '中国', 15.00, '2007-04-03', 7, 1);
INSERT INTO `book_info` VALUES (9, '桃花水墨画', '唐艺 ', '沈阳公司', '9787544138000', '三生三世，她和他，是否注定背负一段纠缠的姻缘？\r\n三生三世，她和他，是否终能互许一个生生世世的承诺？', '中国', 26.80, '2009-01-06', 7, 1);
INSERT INTO `book_info` VALUES (10, '明朝瓷碗（1-9）', '年明月 ', '中国海关公司', '9787801656087', '作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中国', 358.20, '2009-04-06', 11, 1);
INSERT INTO `book_info` VALUES (11, '证人雕像', '阿加莎·克里斯蒂 ', '新星公司', '9787513325745', '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中国', 35.00, '2017-05-01', 9, 1);
INSERT INTO `book_info` VALUES (12, '雅典娜', '湘冬', '江苏文艺公司', '9787539943893', '《雅典娜》内容简介：决胜于千里之外，堪称军情局大厦的定海神针。', '中国', 74.80, '2011-05-05', 7, 1);
INSERT INTO `book_info` VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中国', 42.00, '2015-06-01', 9, 1);
INSERT INTO `book_info` VALUES (15, '造彩虹的人', '东圭吾 ', '北京十月文艺公司', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中国', 39.50, '2017-06-01', 9, 1);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (1, '中国水墨画');
INSERT INTO `class_info` VALUES (2, '日系水墨画');
INSERT INTO `class_info` VALUES (3, '雕像');
INSERT INTO `class_info` VALUES (4, '油画');
INSERT INTO `class_info` VALUES (5, '水彩画');
INSERT INTO `class_info` VALUES (6, '素描');
INSERT INTO `class_info` VALUES (7, '泥塑');
INSERT INTO `class_info` VALUES (8, '板绘');
INSERT INTO `class_info` VALUES (9, '刺绣');
INSERT INTO `class_info` VALUES (10, '紫砂');
INSERT INTO `class_info` VALUES (11, '蜡笔画');
INSERT INTO `class_info` VALUES (12, '蜡像');
INSERT INTO `class_info` VALUES (13, '书画');
INSERT INTO `class_info` VALUES (14, '铁艺');
INSERT INTO `class_info` VALUES (15, '树脂');
INSERT INTO `class_info` VALUES (16, '木雕');
INSERT INTO `class_info` VALUES (17, '陶瓷');
INSERT INTO `class_info` VALUES (18, '乐器');
INSERT INTO `class_info` VALUES (19, '琉璃');
INSERT INTO `class_info` VALUES (20, '花艺');
INSERT INTO `class_info` VALUES (21, '壁画');
INSERT INTO `class_info` VALUES (22, '水粉画');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `ser_num` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `reader_id` bigint(20) NOT NULL,
  `lend_date` date NULL DEFAULT NULL,
  `back_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ser_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (1, 1, 10000, '2021-01-15', '2021-01-16');
INSERT INTO `lend_list` VALUES (2, 2, 10001, '2021-02-10', '2021-03-02');
INSERT INTO `lend_list` VALUES (3, 3, 10003, '2021-01-12', '2021-03-02');
INSERT INTO `lend_list` VALUES (4, 4, 10000, '2021-01-15', '2021-03-03');
INSERT INTO `lend_list` VALUES (5, 5, 10002, '2021-02-15', NULL);
INSERT INTO `lend_list` VALUES (6, 6, 10000, '2020-06-15', NULL);
INSERT INTO `lend_list` VALUES (7, 1, 10001, '2020-09-02', '2020-09-02');
INSERT INTO `lend_list` VALUES (8, 5, 10000, '2021-03-02', '2021-03-02');

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`  (
  `reader_id` bigint(20) NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card` VALUES (10000, '小红', '123456');
INSERT INTO `reader_card` VALUES (10001, '小明', '123456');
INSERT INTO `reader_card` VALUES (10002, '小黑', '123456');
INSERT INTO `reader_card` VALUES (10003, '小绿', '123456');
INSERT INTO `reader_card` VALUES (10004, '小紫', '123456');
INSERT INTO `reader_card` VALUES (10005, '小刚', '123456');
INSERT INTO `reader_card` VALUES (10006, 'å°è±', '123456');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `reader_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES (10000, '小红', '女 ', '1999-06-10', '珠海市', '12345672222');
INSERT INTO `reader_info` VALUES (10001, '小明', '男', '1998-02-01', '杭州市', '12345673333');
INSERT INTO `reader_info` VALUES (10002, '小黑', '女', '2001-04-15', '上海市', '12345675555');
INSERT INTO `reader_info` VALUES (10003, '小绿', '男', '1997-08-29', '西安市', '12345678888');
INSERT INTO `reader_info` VALUES (10004, '小紫', '女', '2002-01-01', '苏州市', '15123659999');
INSERT INTO `reader_info` VALUES (10005, '小刚', '男', '2000-05-03', '建德市', '15369870000');
INSERT INTO `reader_info` VALUES (10006, 'å°è±', '1', '1998-05-05', 'ä¸æµ·å¸', '18788888888');

SET FOREIGN_KEY_CHECKS = 1;
