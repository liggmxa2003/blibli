/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : springboot

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 20/10/2024 21:41:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_anime
-- ----------------------------
DROP TABLE IF EXISTS `t_anime`;
CREATE TABLE `t_anime`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `first_picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flag` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `views` int NULL DEFAULT NULL,
  `appreciation` int NOT NULL DEFAULT 0,
  `share_statement` int NOT NULL DEFAULT 0,
  `commentabled` int NOT NULL DEFAULT 0,
  `published` int NOT NULL DEFAULT 0,
  `recommend` int NOT NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `type_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `tag_ids` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_anime
-- ----------------------------
INSERT INTO `t_anime` VALUES (14, '败犬女主太多了！', '**没能赢得心上人恋情的女孩——“败犬女主”。\r\n爱吃的青梅竹马系女主·八奈见杏菜。\r\n活力充沛的运动系女主·烧盐柠檬。\r\n怕生的小动物系女主·小鞠知花。\r\n被有点缺憾的败犬女主——败女们环绕，新感觉、乱糟糟的败走系青春故事就此揭幕。**', 'https://lain.bgm.tv/r/400/pic/cover/l/e4/dc/464376_NsZRw.jpg', '', 0, 1, 0, 1, 1, 0, '2024-10-19 21:28:10', '2024-10-20 01:21:50', 4, 2, '没能赢得心上人恋情的女孩——“败犬女主”。\r\n爱吃的青梅竹马系女主·八奈见杏菜。\r\n活力充沛的运动系女主·烧盐柠檬。\r\n怕生的小动物系女主·小鞠知花。\r\n被有点缺憾的败犬女主——败女们环绕，新感觉、乱糟糟的败走系青春故事就此揭幕。', '3,4,5,8,9');
INSERT INTO `t_anime` VALUES (15, '【我推的孩子】 第二季', '**当红漫画《东京BLADE》的舞台剧开始排练了。\r\n被剧团LALALAI的众演员包围，让加奈的演技大爆发。\r\n一边认加奈实力，却同时激起猛烈竞争心的黑川茜。\r\n在一群才华洋溢又充满热情的演员中，阿库亚利用自身演技，来追查爱当年的丧命真相...。**', 'https://lain.bgm.tv/r/400/pic/cover/l/d1/1c/443428_FIhFu.jpg', '', 0, 1, 1, 1, 1, 0, '2024-10-19 21:29:08', '2024-10-19 21:29:08', 1, 2, '橘さおり、平牧大輔、入江泰浩、仁科くにやす、小松和映、西邑大輔、内野宮晃希', NULL);
INSERT INTO `t_anime` VALUES (17, '青春笨蛋少年不做兔女郎学姐的梦', '**例如，在梓川咲太面前出现的野生兔女郎。\r\n她的真实身份是高中高年级学生，明星活动休止的女演员樱岛麻衣。她迷人的身姿，不知为何在周围的人眼里看不出来。\r\n咲太决定解开这一谜题。在于麻衣一起度过的时间里，咲太知道了她秘密的想法…**', 'https://lain.bgm.tv/r/400/pic/cover/l/b9/45/240038_b5j7g.jpg', 'https://v3-cold-src.toutiaovod.com/376a9773f712136c8aeba20297dd9346/6715101b/video/tos/cn/tos-cn-ve-0026/os47NAvOtdcXFf0jvbg6KRBAQIcCAk2Ez7JBAH/', 0, 0, 0, 1, 1, 0, '2024-10-20 02:16:10', '2024-10-20 20:52:14', 7, 2, '女主人公们一个接一个地出现在咲太的周围，她们都有着“青春期症候群”。在天空和大海都很闪耀的小镇上，开始了令人激动的故事。', '10,16,15,14,17,12');
INSERT INTO `t_anime` VALUES (18, '你的名字。', '在每千年回归一次的彗星造访过一个月之后的日本。\r\n　　某个深山的乡下小镇，女高中生三叶每天都过着忧郁的生活。\r\n　　而她烦恼的不光有担任镇长的父亲所举行的选举运动，还有家传神社的古老习俗。', 'https://lain.bgm.tv/r/400/pic/cover/l/20/15/160209_2UzU8.jpg', 'http://v16m-default.akamaized.net/4734d7e4921f7107696e6df83fda3678/67154fb8/video/tos/alisg/tos-alisg-v-0000/o8QDgjCDmBHvBgNCYSoAeeDBHdnkZotNPb2s0Q/?name=yhdmMzhALjBg&ch=0&cr=0&dr=0&net=5&cd=0%7C0%7C0%7C0&br=3364&bt=1682&cs=0&ds=4&ft=XE5bCqT0mmjPD12nF.K73wU7C1JcMeF~O5&mime_type=video_mp4&qs=0&rc=MzlmZDc5ODc2NWUzaDQ8PEBpM2VsM3E5cnM4dDMzODYzNEBhM2MvLjEtNi8xYWM2Yy4tYSNscGBjMmRzY2FgLS1kMC1zcw%3D%3D&vvpl=1&l=2024072101184317BDBC932287A2CA51BD&btag=e000a8000', 0, 0, 0, 1, 1, 0, '2024-10-20 02:23:14', '2024-10-20 18:58:59', 7, 2, '　在每千年回归一次的彗星造访过一个月之后的日本。\r\n　　某个深山的乡下小镇，女高中生三叶每天都过着忧郁的生活。\r\n　　而她烦恼的不光有担任镇长的父亲所举行的选举运动，还有家传神社的古老习俗。', '10,11,14,15');
INSERT INTO `t_anime` VALUES (19, '玉子市场', '　座落某个小镇的兔子商店街上，有一间日式饼店，住着一位十分喜欢饼类小吃的高中一年级女生——玉子。除了偶尔在店铺协助父亲，以及钻研新口味的饼类小吃外，她亦有跟学校的朋友参与羽毛球部活动。而饼店对面是同行的竞争对手，两边的父亲经常都因生意问题而喧哗。不过对方儿子——饼藏却自小跟玉子建立青梅竹马的关系，近日更不断隐约地表达心思，只是玉子没有特别注意，更常常被旁观的朋友拿出来扰攘一番。总而言之，玉子就是在商店街众人的护荫下，如此热闹地渡过每一天，生活可谓过得相当快乐', 'https://lain.bgm.tv/r/400/pic/cover/l/f8/7f/55113_TR5Is.jpg', 'https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/04/05/46590504/46590504_da8-1-208.mp4?e=ig8euxZM2rNcNbNMhzdVhwdlhbKzhwdVhoNvNC8BqJIzNbfqXBvEuENvNC8aNEVEtEvE9IMvXBvE2ENvNCImNEVEIj0Y2J_aug859r1qXg8gNEVE5XREto8z5JZC2X2gkX5L5F1eTX1jkXlsTXHeux_f2o859IMvNC8xNbLEkF6MuwLStj8fqJ0EkX1ftx7Sqr_aio8_&ua=tvproj&uipk=5&nbs=1&deadline=1729431281&gen=playurlv2&os=bcache&oi=1879385489&trid=0000f1e3a70291204ca39998f9fe90337b9aT&mid=0&og=cos&upsig=2665fecde528f2b9fb1b48b4cfee51a8&uparams=e,ua,uipk,nbs,deadline,gen,os,oi,trid,mid,og&cdnid=5359&bvc=vod&nettype=0&bw=243947&orderid=0,3&buvid=&build=2040100&mobi_app=android_i&f=T_0_0&logo=80000000', 0, 0, 0, 1, 1, 1, '2024-10-20 03:32:30', '2024-10-20 20:49:03', 10, 2, '除夕，也就是玉子的生日，处于商店街年末最繁忙的时刻。庆祝仪式已经成为了商店街上下的惯例，唯独今年的饼藏没有准时来到。直到他带着礼物来到之时……一只光辉灿烂的鸟出现在众人面前。偶然变得越来越热闹的兔子商店街，亦正式开始其稍微不同的新一年。', '9,15,10,11');
INSERT INTO `t_anime` VALUES (20, '紫罗兰永恒花园剧场版', '**暁佳奈の人気ライトノベルを原作とする京都アニメーション制作のTVアニメ「ヴァイオレット・エヴァーガーデン」の外伝作品。感情を持たない元軍人の少女ヴァイオレットが、手紙を代筆する“自動手記人形”の仕事を通して様々な人たちの想いと向き合い、愛の意味を知っていく姿を繊細な映像表現で綴るファンタジー群像劇。本作では、生きることに絶望していた新たな依頼主の少女イザベラとの物語が描かれる。監督はTVシリーズでシリーズ演出を手がけた藤田春香。2019年9月に3週間限定で劇場上映を実施。**', 'https://cdn.aqdstatic.com:966/age/20190002.jpg', 'https://apd-vlive.apdcdn.tc.qq.com/vmtt.tc.qq.com/1098_e4f0fd196be0c4b2fa3e050c888ddaa1.f0.mp4?ptype=http&vkey=DC1C0D93C84D4081505427D76587C4E7788FB43D9F94C7FC7B33B9B44EACFD41D8CBDE4207C04C8D16811166E09B211CCD03B1830CCDD98C&sdtfrom=v6000&owner=0&chgtype=712', 0, 0, 0, 1, 1, 0, '2024-10-20 03:34:10', '2024-10-20 20:58:10', 7, 2, '……大切なものを守るのと引き換えに僕は、僕の未来を売り払ったんだ。\r\n良家の子女のみが通うことを許される女学校。\r\n父親と「契約」を交わしたイザベラ・ヨークにとって、\r\n白椿が咲き誇る美しいこの場所は牢獄そのもので……。', '10,11,12,14');
INSERT INTO `t_anime` VALUES (21, ' 冰菓', '以节能为座右铭的高中生折木奉太郎， 为一个小小的原因而加入了濒临废社的“古典文学部”。古典文学部的社员，包括他在社里认识的好奇宝宝，也就是女主角千反田爱瑠，还有他从国中就认识的伊原摩耶花和福部里志。这是他们四人以神山高中为舞台，对一桩桩事件展开推理的青春学园推理剧。“我很好奇！”奉太郎平静的灰色高中生活，因为千反田的这一句话而为之一变！', 'https://lain.bgm.tv/r/400/pic/cover/l/cd/38/27364_1ZFmr.jpg', 'https://video.31dm.com/sda1/冰菓/冰菓21.mp4?sign=5833c395278fa6608d5f2c16727276d6&t=1729427741', 0, 0, 0, 1, 1, 0, '2024-10-20 03:35:11', '2024-10-20 20:36:48', 5, 2, '主角千反田爱瑠，还有他从国中就认识的伊原摩耶花和福部里志。这是他们四人以神山高中为舞台，对一桩桩事件展开推理的青春学园推理剧。“我很好奇！”奉太郎平静的灰色高中生活，因为千反田的这一句话而为之一变！', '10,16,12,11');
INSERT INTO `t_anime` VALUES (22, '堀与宫村', '堀京子既是美人又成绩优秀，在学校是班上的中心。但实际上，她代替忙碌的双亲，在放学后直接回家，专注于家务和照顾年幼的弟弟，是个持家型的高中生。某天，受伤的弟弟创太被陌生的男性送回了堀的家里。\r\n“堀同学”被这样称呼后和他交谈才发现，他实际上是自己的同班同学——班上头号人气女子与阴沉男子相遇后会怎样！？\r\n恋爱、友情。充满青春气息的超微碳酸系校园生活，就此开幕', 'https://lain.bgm.tv/r/400/pic/cover/l/23/a2/315069_2zYW6.jpg', 'http://v16m-default.akamaized.net/5a3adb82c4ff1a4ab6c986e89f8e75e1/67153ca4/video/tos/alisg/tos-alisg-v-0000/o03qsenHQeA9orCeAkDgdwGgDVNYbbMxGxIDAo/?name=yhdmMzhALjBg&ch=0&cr=0&dr=0&net=5&cd=0%7C0%7C0%7C0&br=3364&bt=1682&cs=0&ds=4&ft=XE5bCqT0mmjPD12nF.K73wU7C1JcMeF~O5&mime_type=video_mp4&qs=0&rc=MzlmZDc5ODc2NWUzaDQ8PEBpM2VsM3E5cnM4dDMzODYzNEBhM2MvLjEtNi8xYWM2Yy4tYSNscGBjMmRzY2FgLS1kMC1zcw%3D%3D&vvpl=1&l=2024072101184317BDBC932287A2CA51BD&btag=e000a8000', 0, 0, 0, 1, 1, 0, '2024-10-20 04:02:25', '2024-10-20 19:00:45', 10, 2, '堀京子既是美人又成绩优秀，在学校是班上的中心。但实际上，她代替忙碌的双亲，在放学后直接回家，专注于家务和照顾年幼的弟弟，是个持家型的高中生。某天，受伤的弟弟创太被陌生的男性送回了堀的家里。\r\n“堀同学”被这样称呼后和他交谈才发现，他实际上是自己的同班同学——班上头号人气女子与阴沉男子相遇后会怎样！？\r\n恋爱、友情。充满青春气息的超微碳酸系校园生活，就此开幕', '9,10,15,16,14');
INSERT INTO `t_anime` VALUES (23, ' 【我推的孩子】', '**在小城市工作的妇产科医生・五郎，有一天他所推的偶像“B小町”出现在了他的面前。“B小町”有着一个禁忌的秘密。\r\n如此这般的两人实现了最糟糕的相遇，从此命运的齿轮开始转动**', 'https://lain.bgm.tv/r/400/pic/cover/l/d1/1c/443428_FIhFu.jpg', 'https://www.5dm.link/api/dd.php?vid=wotuidehzs1&cid=wotuidehzs1&xid=0&pid=53814&tid=1729239305&t=a430e3750fac514e6e60a20151848438&ext=.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 06:40:40', '2024-10-20 07:22:11', 10, 2, '“在演艺圈里，谎言就是武器。 ”\r\n在小城市工作的妇产科医生・五郎，有一天他所推的偶像“B小町”出现在了他的面前。“B小町”有着一个禁忌的秘密。\r\n如此这般的两人实现了最糟糕的相遇，从此命运的齿轮开始转动—', '10,11,12,14');
INSERT INTO `t_anime` VALUES (24, ' 我的青春恋爱物语果然有问题 完', '**看似在过去的心理阴影及独自的别扭思考回路之下讴歌着“独自生活”的比企谷八幡，偶然地被生活指导担当教师平冢静带着加入了「侍奉部」。他和同社团所属的令人窒息的完美美少女·雪之下雪乃，以及班级上位阶级所属的时髦女子·由比滨结衣一同，从解决班上的人际关系问题到给学生会帮忙，度过着解决各种事件的每一天**', 'https://lain.bgm.tv/r/400/pic/cover/l/ba/69/277954_s8qHA.jpg', 'http://v16m-default.akamaized.net/1b6f87d1ce37a98f62648204be072cd9/67153bab/video/tos/alisg/tos-alisg-v-0000/oEQGuejzHexmACguYGIjb7AqPDQbbDLnoyCfzU/?name=yhdmMzhALjBg&ch=0&cr=0&dr=0&net=5&cd=0%7C0%7C0%7C0&br=3364&bt=1682&cs=0&ds=4&ft=XE5bCqT0mmjPD12nF.K73wU7C1JcMeF~O5&mime_type=video_mp4&qs=0&rc=MzlmZDc5ODc2NWUzaDQ8PEBpM2VsM3E5cnM4dDMzODYzNEBhM2MvLjEtNi8xYWM2Yy4tYSNscGBjMmRzY2FgLS1kMC1zcw%3D%3D&vvpl=1&l=2024072101184317BDBC932287A2CA51BD&btag=e000a8000', 0, 0, 0, 1, 1, 0, '2024-10-20 18:56:57', '2024-10-20 18:56:57', 5, 2, '季节流转，时至春天。八幡与结衣，接受了雪乃最后的委托。在准备3月的毕业典礼过程中，还被彩羽请求协助毕业舞会……\r\n——追求真物的八幡，与3人的关系逐渐改变。究竟他的高中生活将迎来怎样的结局！？', '9,10,16,15');
INSERT INTO `t_anime` VALUES (25, '败犬女主太多了！', '**没能赢得心上人恋情的女孩——“败犬女主”。\r\n爱吃的青梅竹马系女主·八奈见杏菜。\r\n活力充沛的运动系女主·烧盐柠檬。\r\n怕生的小动物系女主·小鞠知花。**', 'https://lain.bgm.tv/r/400/pic/cover/l/e4/dc/464376_NsZRw.jpg', 'https://www.5dm.link/api/dd.php?vid=bqnvzhutdl1&cid=bqnvzhutdl1&xid=0&pid=53894&tid=1729238642&t=8deff6b3d45084ad76c7696b60fb3ade&ext=.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 20:40:31', '2024-10-20 20:40:31', 4, 2, '被有点缺憾的败犬女主——败女们环绕，新感觉、乱糟糟的败走系青春故事就此揭幕。\r\n因失败而更加闪耀吧，败女们！', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (26, '青之箱', '**中高一貫のスポーツ強豪校・栄明高校に入学する、男子バドミントン部の一年生・猪股大喜。**', 'https://lain.bgm.tv/r/400/pic/cover/l/ab/e5/460306_tOsaH.jpg', 'https://sf16-cgfe-sg.ibytedtos.com/obj/tos-alisg-ve-0051c001-sg/oogQeU0fQxfGgSICLjcM8D0bDHAXoF1AXOqOIx?filename=1.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 21:05:01', '2024-10-20 21:07:48', 5, 2, '大喜は毎朝、朝練で顔を合わせる一つ上の先輩、鹿野千夏に恋をする。\r\n千夏は女子バスケットボール部のエースで、校内外問わず人気の高嶺の花。\r\n部活に恋に勉強に、大喜にとって忙しい高校生活がはじまる、そんなある日――', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (27, '境界的彼方', '**　一个偶然的契机，人类和妖梦之间出生的少年——神原秋人，有一天与在学校屋顶看上去要跳楼的少女——栗山未来相遇了。\r\n　　有着即使在异界士中也很特殊的“血”之能力的少女，在孤独中战斗着**', 'https://lain.bgm.tv/r/400/pic/cover/l/0e/32/49278_mo7EP.jpg', 'https://upos-szbyjkm8g1.bilivideo.com/upgcxcode/48/10/6821048/6821048_da8-1-208.mp4?e=ig8euxZM2rNcNbNV7wdVhwdlhbdMhwdVhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1729438477&gen=playurlv2&os=alibv&oi=143020617&trid=f6252026ff5b4d8893bb7d84136a118cp&mid=3546565098604571&platform=pc&og=hw&upsig=733e808572abc9a6e009b135257282a6&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform,og&bvc=vod&nettype=0&orderid=0,3&buvid=&build=0&f=p_0_0&agrr=0&bw=204929&logo=80000000', 0, 0, 0, 1, 1, 0, '2024-10-20 21:34:54', '2024-10-20 21:34:54', 7, 2, '我看着像——普通的人类吗?”\r\n　　少年决心帮助这个命运与自己重叠的少女。由此，围绕在少年身边险恶的战斗开始发生……', '10,11,12,14,16,17');

-- ----------------------------
-- Table structure for t_anime_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_anime_tags`;
CREATE TABLE `t_anime_tags`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` bigint NULL DEFAULT NULL,
  `anime_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_anime_tags
-- ----------------------------
INSERT INTO `t_anime_tags` VALUES (1, 3, '4');
INSERT INTO `t_anime_tags` VALUES (2, 4, '1');
INSERT INTO `t_anime_tags` VALUES (3, 4, '3');
INSERT INTO `t_anime_tags` VALUES (4, 5, '3');
INSERT INTO `t_anime_tags` VALUES (5, 5, '4');
INSERT INTO `t_anime_tags` VALUES (6, 7, '2');
INSERT INTO `t_anime_tags` VALUES (7, 6, '5');
INSERT INTO `t_anime_tags` VALUES (64, 5, '3');
INSERT INTO `t_anime_tags` VALUES (65, 4, '3');
INSERT INTO `t_anime_tags` VALUES (66, 4, '6');
INSERT INTO `t_anime_tags` VALUES (74, 7, '10');
INSERT INTO `t_anime_tags` VALUES (75, 8, '11');
INSERT INTO `t_anime_tags` VALUES (76, 8, '12');
INSERT INTO `t_anime_tags` VALUES (77, 8, '13');
INSERT INTO `t_anime_tags` VALUES (78, 4, '12');
INSERT INTO `t_anime_tags` VALUES (79, 5, '12');
INSERT INTO `t_anime_tags` VALUES (80, 6, '12');
INSERT INTO `t_anime_tags` VALUES (81, 7, '12');
INSERT INTO `t_anime_tags` VALUES (82, 5, '13');
INSERT INTO `t_anime_tags` VALUES (83, 3, '13');
INSERT INTO `t_anime_tags` VALUES (84, 4, '13');
INSERT INTO `t_anime_tags` VALUES (85, 6, '13');
INSERT INTO `t_anime_tags` VALUES (86, 7, '13');
INSERT INTO `t_anime_tags` VALUES (87, 8, '13');
INSERT INTO `t_anime_tags` VALUES (88, 4, '12');
INSERT INTO `t_anime_tags` VALUES (89, 5, '12');
INSERT INTO `t_anime_tags` VALUES (90, 6, '12');
INSERT INTO `t_anime_tags` VALUES (91, 7, '12');
INSERT INTO `t_anime_tags` VALUES (92, 3, '13');
INSERT INTO `t_anime_tags` VALUES (93, 4, '13');
INSERT INTO `t_anime_tags` VALUES (94, 5, '13');
INSERT INTO `t_anime_tags` VALUES (95, 8, '13');
INSERT INTO `t_anime_tags` VALUES (96, 9, '13');
INSERT INTO `t_anime_tags` VALUES (97, 3, '14');
INSERT INTO `t_anime_tags` VALUES (98, 4, '14');
INSERT INTO `t_anime_tags` VALUES (99, 5, '14');
INSERT INTO `t_anime_tags` VALUES (100, 8, '14');
INSERT INTO `t_anime_tags` VALUES (101, 9, '14');
INSERT INTO `t_anime_tags` VALUES (102, 3, '14');
INSERT INTO `t_anime_tags` VALUES (103, 4, '14');
INSERT INTO `t_anime_tags` VALUES (104, 5, '14');
INSERT INTO `t_anime_tags` VALUES (105, 8, '14');
INSERT INTO `t_anime_tags` VALUES (106, 9, '14');
INSERT INTO `t_anime_tags` VALUES (107, 3, '14');
INSERT INTO `t_anime_tags` VALUES (108, 4, '14');
INSERT INTO `t_anime_tags` VALUES (109, 5, '14');
INSERT INTO `t_anime_tags` VALUES (110, 8, '14');
INSERT INTO `t_anime_tags` VALUES (111, 9, '14');
INSERT INTO `t_anime_tags` VALUES (112, 4, '12');
INSERT INTO `t_anime_tags` VALUES (113, 5, '12');
INSERT INTO `t_anime_tags` VALUES (114, 6, '12');
INSERT INTO `t_anime_tags` VALUES (115, 7, '12');
INSERT INTO `t_anime_tags` VALUES (116, 3, '16');
INSERT INTO `t_anime_tags` VALUES (117, 4, '16');
INSERT INTO `t_anime_tags` VALUES (118, 5, '16');
INSERT INTO `t_anime_tags` VALUES (119, 3, '16');
INSERT INTO `t_anime_tags` VALUES (120, 4, '16');
INSERT INTO `t_anime_tags` VALUES (121, 5, '16');
INSERT INTO `t_anime_tags` VALUES (122, 3, '16');
INSERT INTO `t_anime_tags` VALUES (123, 4, '16');
INSERT INTO `t_anime_tags` VALUES (124, 5, '16');
INSERT INTO `t_anime_tags` VALUES (125, 4, '12');
INSERT INTO `t_anime_tags` VALUES (126, 5, '12');
INSERT INTO `t_anime_tags` VALUES (127, 6, '12');
INSERT INTO `t_anime_tags` VALUES (128, 7, '12');
INSERT INTO `t_anime_tags` VALUES (129, 9, '17');
INSERT INTO `t_anime_tags` VALUES (130, 10, '17');
INSERT INTO `t_anime_tags` VALUES (131, 11, '17');
INSERT INTO `t_anime_tags` VALUES (132, 9, '17');
INSERT INTO `t_anime_tags` VALUES (133, 10, '17');
INSERT INTO `t_anime_tags` VALUES (134, 11, '17');
INSERT INTO `t_anime_tags` VALUES (135, 14, '17');
INSERT INTO `t_anime_tags` VALUES (136, 15, '17');
INSERT INTO `t_anime_tags` VALUES (137, 9, '17');
INSERT INTO `t_anime_tags` VALUES (138, 10, '17');
INSERT INTO `t_anime_tags` VALUES (139, 11, '17');
INSERT INTO `t_anime_tags` VALUES (140, 14, '17');
INSERT INTO `t_anime_tags` VALUES (141, 15, '17');
INSERT INTO `t_anime_tags` VALUES (142, 10, '18');
INSERT INTO `t_anime_tags` VALUES (143, 11, '18');
INSERT INTO `t_anime_tags` VALUES (144, 14, '18');
INSERT INTO `t_anime_tags` VALUES (145, 15, '18');
INSERT INTO `t_anime_tags` VALUES (146, 9, '17');
INSERT INTO `t_anime_tags` VALUES (147, 10, '17');
INSERT INTO `t_anime_tags` VALUES (148, 11, '17');
INSERT INTO `t_anime_tags` VALUES (149, 16, '17');
INSERT INTO `t_anime_tags` VALUES (150, 15, '17');
INSERT INTO `t_anime_tags` VALUES (151, 14, '17');
INSERT INTO `t_anime_tags` VALUES (152, 9, '19');
INSERT INTO `t_anime_tags` VALUES (153, 15, '19');
INSERT INTO `t_anime_tags` VALUES (154, 10, '19');
INSERT INTO `t_anime_tags` VALUES (155, 11, '19');
INSERT INTO `t_anime_tags` VALUES (156, 9, '19');
INSERT INTO `t_anime_tags` VALUES (157, 15, '19');
INSERT INTO `t_anime_tags` VALUES (158, 10, '19');
INSERT INTO `t_anime_tags` VALUES (159, 11, '19');
INSERT INTO `t_anime_tags` VALUES (160, 10, '20');
INSERT INTO `t_anime_tags` VALUES (161, 11, '20');
INSERT INTO `t_anime_tags` VALUES (162, 12, '20');
INSERT INTO `t_anime_tags` VALUES (163, 14, '20');
INSERT INTO `t_anime_tags` VALUES (164, 9, '21');
INSERT INTO `t_anime_tags` VALUES (165, 15, '21');
INSERT INTO `t_anime_tags` VALUES (166, 16, '21');
INSERT INTO `t_anime_tags` VALUES (167, 14, '21');
INSERT INTO `t_anime_tags` VALUES (168, 9, '22');
INSERT INTO `t_anime_tags` VALUES (169, 10, '22');
INSERT INTO `t_anime_tags` VALUES (170, 15, '22');
INSERT INTO `t_anime_tags` VALUES (171, 16, '22');
INSERT INTO `t_anime_tags` VALUES (172, 14, '22');
INSERT INTO `t_anime_tags` VALUES (173, 9, '17');
INSERT INTO `t_anime_tags` VALUES (174, 10, '17');
INSERT INTO `t_anime_tags` VALUES (175, 11, '17');
INSERT INTO `t_anime_tags` VALUES (176, 16, '17');
INSERT INTO `t_anime_tags` VALUES (177, 15, '17');
INSERT INTO `t_anime_tags` VALUES (178, 14, '17');
INSERT INTO `t_anime_tags` VALUES (179, 10, '18');
INSERT INTO `t_anime_tags` VALUES (180, 11, '18');
INSERT INTO `t_anime_tags` VALUES (181, 14, '18');
INSERT INTO `t_anime_tags` VALUES (182, 15, '18');
INSERT INTO `t_anime_tags` VALUES (183, 10, '18');
INSERT INTO `t_anime_tags` VALUES (184, 11, '18');
INSERT INTO `t_anime_tags` VALUES (185, 14, '18');
INSERT INTO `t_anime_tags` VALUES (186, 15, '18');
INSERT INTO `t_anime_tags` VALUES (187, 9, '22');
INSERT INTO `t_anime_tags` VALUES (188, 10, '22');
INSERT INTO `t_anime_tags` VALUES (189, 15, '22');
INSERT INTO `t_anime_tags` VALUES (190, 16, '22');
INSERT INTO `t_anime_tags` VALUES (191, 14, '22');
INSERT INTO `t_anime_tags` VALUES (192, 9, '22');
INSERT INTO `t_anime_tags` VALUES (193, 10, '22');
INSERT INTO `t_anime_tags` VALUES (194, 15, '22');
INSERT INTO `t_anime_tags` VALUES (195, 16, '22');
INSERT INTO `t_anime_tags` VALUES (196, 14, '22');
INSERT INTO `t_anime_tags` VALUES (197, 9, '22');
INSERT INTO `t_anime_tags` VALUES (198, 10, '22');
INSERT INTO `t_anime_tags` VALUES (199, 15, '22');
INSERT INTO `t_anime_tags` VALUES (200, 16, '22');
INSERT INTO `t_anime_tags` VALUES (201, 14, '22');
INSERT INTO `t_anime_tags` VALUES (202, 9, '22');
INSERT INTO `t_anime_tags` VALUES (203, 10, '22');
INSERT INTO `t_anime_tags` VALUES (204, 15, '22');
INSERT INTO `t_anime_tags` VALUES (205, 14, '22');
INSERT INTO `t_anime_tags` VALUES (206, 10, '23');
INSERT INTO `t_anime_tags` VALUES (207, 11, '23');
INSERT INTO `t_anime_tags` VALUES (208, 12, '23');
INSERT INTO `t_anime_tags` VALUES (209, 14, '23');
INSERT INTO `t_anime_tags` VALUES (210, 10, '23');
INSERT INTO `t_anime_tags` VALUES (211, 11, '23');
INSERT INTO `t_anime_tags` VALUES (212, 12, '23');
INSERT INTO `t_anime_tags` VALUES (213, 14, '23');
INSERT INTO `t_anime_tags` VALUES (214, 10, '23');
INSERT INTO `t_anime_tags` VALUES (215, 11, '23');
INSERT INTO `t_anime_tags` VALUES (216, 12, '23');
INSERT INTO `t_anime_tags` VALUES (217, 14, '23');
INSERT INTO `t_anime_tags` VALUES (218, 10, '23');
INSERT INTO `t_anime_tags` VALUES (219, 11, '23');
INSERT INTO `t_anime_tags` VALUES (220, 12, '23');
INSERT INTO `t_anime_tags` VALUES (221, 14, '23');
INSERT INTO `t_anime_tags` VALUES (222, 10, '23');
INSERT INTO `t_anime_tags` VALUES (223, 11, '23');
INSERT INTO `t_anime_tags` VALUES (224, 12, '23');
INSERT INTO `t_anime_tags` VALUES (225, 14, '23');
INSERT INTO `t_anime_tags` VALUES (226, 10, '23');
INSERT INTO `t_anime_tags` VALUES (227, 11, '23');
INSERT INTO `t_anime_tags` VALUES (228, 12, '23');
INSERT INTO `t_anime_tags` VALUES (229, 14, '23');
INSERT INTO `t_anime_tags` VALUES (230, 10, '23');
INSERT INTO `t_anime_tags` VALUES (231, 11, '23');
INSERT INTO `t_anime_tags` VALUES (232, 12, '23');
INSERT INTO `t_anime_tags` VALUES (233, 14, '23');
INSERT INTO `t_anime_tags` VALUES (234, 10, '23');
INSERT INTO `t_anime_tags` VALUES (235, 11, '23');
INSERT INTO `t_anime_tags` VALUES (236, 12, '23');
INSERT INTO `t_anime_tags` VALUES (237, 14, '23');
INSERT INTO `t_anime_tags` VALUES (238, 10, '23');
INSERT INTO `t_anime_tags` VALUES (239, 11, '23');
INSERT INTO `t_anime_tags` VALUES (240, 12, '23');
INSERT INTO `t_anime_tags` VALUES (241, 14, '23');
INSERT INTO `t_anime_tags` VALUES (242, 10, '18');
INSERT INTO `t_anime_tags` VALUES (243, 11, '18');
INSERT INTO `t_anime_tags` VALUES (244, 14, '18');
INSERT INTO `t_anime_tags` VALUES (245, 15, '18');
INSERT INTO `t_anime_tags` VALUES (246, 10, '18');
INSERT INTO `t_anime_tags` VALUES (247, 11, '18');
INSERT INTO `t_anime_tags` VALUES (248, 14, '18');
INSERT INTO `t_anime_tags` VALUES (249, 15, '18');
INSERT INTO `t_anime_tags` VALUES (250, 9, '24');
INSERT INTO `t_anime_tags` VALUES (251, 10, '24');
INSERT INTO `t_anime_tags` VALUES (252, 16, '24');
INSERT INTO `t_anime_tags` VALUES (253, 15, '24');
INSERT INTO `t_anime_tags` VALUES (254, 10, '18');
INSERT INTO `t_anime_tags` VALUES (255, 11, '18');
INSERT INTO `t_anime_tags` VALUES (256, 14, '18');
INSERT INTO `t_anime_tags` VALUES (257, 15, '18');
INSERT INTO `t_anime_tags` VALUES (258, 9, '22');
INSERT INTO `t_anime_tags` VALUES (259, 10, '22');
INSERT INTO `t_anime_tags` VALUES (260, 15, '22');
INSERT INTO `t_anime_tags` VALUES (261, 16, '22');
INSERT INTO `t_anime_tags` VALUES (262, 14, '22');
INSERT INTO `t_anime_tags` VALUES (263, 9, '17');
INSERT INTO `t_anime_tags` VALUES (264, 10, '17');
INSERT INTO `t_anime_tags` VALUES (265, 11, '17');
INSERT INTO `t_anime_tags` VALUES (266, 16, '17');
INSERT INTO `t_anime_tags` VALUES (267, 15, '17');
INSERT INTO `t_anime_tags` VALUES (268, 14, '17');
INSERT INTO `t_anime_tags` VALUES (269, 9, '19');
INSERT INTO `t_anime_tags` VALUES (270, 15, '19');
INSERT INTO `t_anime_tags` VALUES (271, 10, '19');
INSERT INTO `t_anime_tags` VALUES (272, 11, '19');
INSERT INTO `t_anime_tags` VALUES (273, 9, '21');
INSERT INTO `t_anime_tags` VALUES (274, 10, '21');
INSERT INTO `t_anime_tags` VALUES (275, 16, '21');
INSERT INTO `t_anime_tags` VALUES (276, 12, '21');
INSERT INTO `t_anime_tags` VALUES (277, 11, '21');
INSERT INTO `t_anime_tags` VALUES (278, 10, '21');
INSERT INTO `t_anime_tags` VALUES (279, 16, '21');
INSERT INTO `t_anime_tags` VALUES (280, 12, '21');
INSERT INTO `t_anime_tags` VALUES (281, 11, '21');
INSERT INTO `t_anime_tags` VALUES (282, 9, '25');
INSERT INTO `t_anime_tags` VALUES (283, 10, '25');
INSERT INTO `t_anime_tags` VALUES (284, 15, '25');
INSERT INTO `t_anime_tags` VALUES (285, 16, '25');
INSERT INTO `t_anime_tags` VALUES (286, 17, '25');
INSERT INTO `t_anime_tags` VALUES (287, 9, '19');
INSERT INTO `t_anime_tags` VALUES (288, 15, '19');
INSERT INTO `t_anime_tags` VALUES (289, 10, '19');
INSERT INTO `t_anime_tags` VALUES (290, 11, '19');
INSERT INTO `t_anime_tags` VALUES (291, 9, '19');
INSERT INTO `t_anime_tags` VALUES (292, 15, '19');
INSERT INTO `t_anime_tags` VALUES (293, 10, '19');
INSERT INTO `t_anime_tags` VALUES (294, 11, '19');
INSERT INTO `t_anime_tags` VALUES (295, 10, '17');
INSERT INTO `t_anime_tags` VALUES (296, 16, '17');
INSERT INTO `t_anime_tags` VALUES (297, 15, '17');
INSERT INTO `t_anime_tags` VALUES (298, 14, '17');
INSERT INTO `t_anime_tags` VALUES (299, 17, '17');
INSERT INTO `t_anime_tags` VALUES (300, 12, '17');
INSERT INTO `t_anime_tags` VALUES (301, 10, '17');
INSERT INTO `t_anime_tags` VALUES (302, 16, '17');
INSERT INTO `t_anime_tags` VALUES (303, 15, '17');
INSERT INTO `t_anime_tags` VALUES (304, 14, '17');
INSERT INTO `t_anime_tags` VALUES (305, 17, '17');
INSERT INTO `t_anime_tags` VALUES (306, 12, '17');
INSERT INTO `t_anime_tags` VALUES (307, 10, '17');
INSERT INTO `t_anime_tags` VALUES (308, 16, '17');
INSERT INTO `t_anime_tags` VALUES (309, 15, '17');
INSERT INTO `t_anime_tags` VALUES (310, 14, '17');
INSERT INTO `t_anime_tags` VALUES (311, 17, '17');
INSERT INTO `t_anime_tags` VALUES (312, 12, '17');
INSERT INTO `t_anime_tags` VALUES (313, 10, '20');
INSERT INTO `t_anime_tags` VALUES (314, 11, '20');
INSERT INTO `t_anime_tags` VALUES (315, 12, '20');
INSERT INTO `t_anime_tags` VALUES (316, 14, '20');
INSERT INTO `t_anime_tags` VALUES (317, 9, '26');
INSERT INTO `t_anime_tags` VALUES (318, 10, '26');
INSERT INTO `t_anime_tags` VALUES (319, 15, '26');
INSERT INTO `t_anime_tags` VALUES (320, 16, '26');
INSERT INTO `t_anime_tags` VALUES (321, 17, '26');
INSERT INTO `t_anime_tags` VALUES (322, 9, '26');
INSERT INTO `t_anime_tags` VALUES (323, 10, '26');
INSERT INTO `t_anime_tags` VALUES (324, 15, '26');
INSERT INTO `t_anime_tags` VALUES (325, 16, '26');
INSERT INTO `t_anime_tags` VALUES (326, 17, '26');
INSERT INTO `t_anime_tags` VALUES (327, 9, '26');
INSERT INTO `t_anime_tags` VALUES (328, 10, '26');
INSERT INTO `t_anime_tags` VALUES (329, 15, '26');
INSERT INTO `t_anime_tags` VALUES (330, 16, '26');
INSERT INTO `t_anime_tags` VALUES (331, 17, '26');
INSERT INTO `t_anime_tags` VALUES (332, 10, '27');
INSERT INTO `t_anime_tags` VALUES (333, 11, '27');
INSERT INTO `t_anime_tags` VALUES (334, 12, '27');
INSERT INTO `t_anime_tags` VALUES (335, 14, '27');
INSERT INTO `t_anime_tags` VALUES (336, 16, '27');
INSERT INTO `t_anime_tags` VALUES (337, 17, '27');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `anime_id` bigint NULL DEFAULT NULL,
  `parent_comment_id` bigint NULL DEFAULT NULL,
  `admincomment` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (9, '12414', 'qq@com', '123141', '/images/avatar.jpg', '2024-10-19 21:21:26', 11, -1, 0);
INSERT INTO `t_comment` VALUES (10, 'LIgg', '29544@qq.com', 'adw', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:23:31', 12, -1, 1);
INSERT INTO `t_comment` VALUES (11, 'LIgg', '29544@qq.com', 'dwads', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:23:33', 12, -1, 1);
INSERT INTO `t_comment` VALUES (12, 'LIgg', '29544@qq.com', 'sdawadadawd', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:24:48', 13, -1, 1);
INSERT INTO `t_comment` VALUES (13, 'LIgg', '29544@qq.com', 'dasdaw', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:24:50', 13, -1, 1);
INSERT INTO `t_comment` VALUES (14, 'LIgg', '29544@qq.com', 'sdawD', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:29:16', 12, -1, 1);
INSERT INTO `t_comment` VALUES (15, 'LIgg', '29544@qq.com', 'adsadwd', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:29:33', 12, -1, 1);
INSERT INTO `t_comment` VALUES (16, 'da', '', 'daDa', '/images/avatar.jpg', '2024-10-19 23:48:01', 14, -1, 0);
INSERT INTO `t_comment` VALUES (17, 'as', '', 'ada', '/images/avatar.jpg', '2024-10-20 01:10:35', 13, -1, 0);
INSERT INTO `t_comment` VALUES (18, 'adad', NULL, 'daw', '/images/avatar.jpg', '2024-10-20 01:12:21', 14, -1, 0);
INSERT INTO `t_comment` VALUES (19, 'adad', NULL, 'dawadad', '/images/avatar.jpg', '2024-10-20 01:12:22', 14, -1, 0);
INSERT INTO `t_comment` VALUES (20, 'adad', NULL, 'dawadad', '/images/avatar.jpg', '2024-10-20 01:12:24', 14, -1, 0);
INSERT INTO `t_comment` VALUES (21, 'adad', NULL, 'dawadad', '/images/avatar.jpg', '2024-10-20 01:12:26', 14, -1, 0);
INSERT INTO `t_comment` VALUES (22, 'a', NULL, 'daD', '/images/avatar.jpg', '2024-10-20 01:13:36', 14, -1, 0);
INSERT INTO `t_comment` VALUES (23, 'ada', NULL, 'aD', '/images/avatar.jpg', '2024-10-20 01:17:03', 14, NULL, 0);
INSERT INTO `t_comment` VALUES (24, 'dad', NULL, 'asda', '/images/avatar.jpg', '2024-10-20 01:33:08', 16, -1, 0);
INSERT INTO `t_comment` VALUES (25, 'dad', NULL, 'asdaad', '/images/avatar.jpg', '2024-10-20 01:33:15', 16, -1, 0);
INSERT INTO `t_comment` VALUES (26, 'aA', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 01:45:18', 16, -1, 0);
INSERT INTO `t_comment` VALUES (27, '阿库娅', NULL, '阿达', '/images/avatar.jpg', '2024-10-20 02:18:51', 17, -1, 0);
INSERT INTO `t_comment` VALUES (28, 'LIgg', NULL, 'da', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 03:33:04', 19, -1, 1);
INSERT INTO `t_comment` VALUES (29, 'LIgg', NULL, 'sadada', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 05:54:04', 18, -1, 1);
INSERT INTO `t_comment` VALUES (30, 'dad', NULL, 'dawdad', '/images/avatar.jpg', '2024-10-20 07:29:01', 18, -1, 0);
INSERT INTO `t_comment` VALUES (31, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:33', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (32, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:36', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (33, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:36', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (34, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:36', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (35, 'ad', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 16:01:57', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (36, 'ad', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 16:01:57', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (37, 'ad', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 16:01:57', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (38, 'ad', NULL, 'aa', '/images/avatar.jpg', '2024-10-20 16:02:03', 18, -1, 0);
INSERT INTO `t_comment` VALUES (39, '比企谷八幡', NULL, '我讨厌温柔的女孩子 温柔的女孩子 其实对所有人都温柔 我却会误以为只对我温柔 然后就沾沾自喜 得意忘形最后闹得不欢而散', 'https://lain.bgm.tv/pic/crt/g/71/60/19039_crt_F48f0.jpg', '2024-10-20 21:10:11', 24, -1, 1);
INSERT INTO `t_comment` VALUES (40, 'LIgg', NULL, 'SDAA', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 21:14:45', 24, NULL, 1);
INSERT INTO `t_comment` VALUES (41, 'LIgg', NULL, 'SDAA', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 21:14:45', 24, NULL, 1);
INSERT INTO `t_comment` VALUES (42, '雪之下雪乃', NULL, '将来某一天，你要来拯救我哦\n', 'https://lain.bgm.tv/pic/crt/g/7a/02/19040_crt_wQQO2.jpg?r=1515405272', '2024-10-20 21:16:52', 24, -1, 1);
INSERT INTO `t_comment` VALUES (43, '由比滨结衣', NULL, 'ゆいがはま ゆい', 'https://lain.bgm.tv/pic/crt/g/f3/90/19041_crt_FG0PO.jpg', '2024-10-20 21:19:50', 24, -1, 1);
INSERT INTO `t_comment` VALUES (44, '薇尔莉特', NULL, '花无凋零之日，意无传达之期，爱情恒古不变，紫罗兰与世长存” #紫罗兰永恒花园 ', 'https://lain.bgm.tv/pic/crt/g/77/03/37344_crt_QeHnZ.jpg?r=1515695817', '2024-10-20 21:22:47', 20, -1, 1);
INSERT INTO `t_comment` VALUES (45, 'ギルベルト・ブーゲンビリア', NULL, 'ヴァイオレット・エヴァーガーデン', 'https://lain.bgm.tv/pic/crt/g/e8/25/38323_crt_FbUSl.jpg?r=1453465684', '2024-10-20 21:24:29', 20, -1, 1);
INSERT INTO `t_comment` VALUES (46, '星野アイ', NULL, '你们长大后...会变成什么样的人呢 好想看看你们背起书包的样子 真想待在你们身边...看着你们慢慢长大', 'https://lain.bgm.tv/pic/crt/g/40/e1/102127_crt_1BT0Q.jpg?r=1681671679', '2024-10-20 21:27:05', 17, -1, 1);
INSERT INTO `t_comment` VALUES (47, '阿库亚', NULL, '星野アイ星野アイ', 'https://lain.bgm.tv/pic/crt/g/c5/3a/102125_crt_I1eZN.jpg?r=1674520069', '2024-10-20 21:28:21', 17, -1, 1);
INSERT INTO `t_comment` VALUES (48, '露比', NULL, '星野アイ星野アイ露比', 'https://lain.bgm.tv/pic/crt/g/71/cc/102126_crt_aJfCA.jpg?r=1674520085', '2024-10-20 21:28:32', 17, -1, 1);
INSERT INTO `t_comment` VALUES (49, '神原秋人', NULL, '我看着像——普通的人类吗?”', 'https://lain.bgm.tv/pic/crt/g/ae/9f/20891_crt_t2w0t.jpg?r=1612039045', '2024-10-20 21:35:37', 27, -1, 1);
INSERT INTO `t_comment` VALUES (50, '栗山未来', NULL, 'きょうかいのかなた アイドル裁判! ～迷いながらも君を裁く民～', 'https://lain.bgm.tv/pic/crt/g/a7/e2/20890_crt_lZEaV.jpg?r=1612039348', '2024-10-20 21:36:23', 27, -1, 1);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (9, '青春');
INSERT INTO `t_tag` VALUES (10, '感情');
INSERT INTO `t_tag` VALUES (11, '续作');
INSERT INTO `t_tag` VALUES (12, '剧场');
INSERT INTO `t_tag` VALUES (14, '奇幻');
INSERT INTO `t_tag` VALUES (15, '日常');
INSERT INTO `t_tag` VALUES (16, '校园');
INSERT INTO `t_tag` VALUES (17, '推理');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (4, '搞笑番');
INSERT INTO `t_type` VALUES (5, '校园番');
INSERT INTO `t_type` VALUES (7, '治愈番');
INSERT INTO `t_type` VALUES (10, '感情番');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (2, 'LIgg', 'ligg200309', '123456', '29544@qq.com', 'https://lain.bgm.tv/pic/user/c/000/91/64/916400.jpg', 1, '2024-10-04 17:43:52', NULL);
INSERT INTO `t_user` VALUES (3, 'admin', '123456789', '123456789', 'admin@163.com', NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (4, 'Ligg', 'lwz123', '123', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
