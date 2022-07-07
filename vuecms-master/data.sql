/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : vuecms

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 22/10/2021 15:04:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cd_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `cd_admin_user`;
CREATE TABLE `cd_admin_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `user` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '所属分组',
  `note` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_admin_user
-- ----------------------------
INSERT INTO `cd_admin_user` VALUES (1, '寒塘冷月', 'admin', 'ba0146a4e7ace84189072e241e15ee09', 1, '超级管理员', 1, 1548558919);
INSERT INTO `cd_admin_user` VALUES (29, '测试', 'test01', '6a5888d05ceb8033ebf0a3dfbf2b416e', 50, '', 1, 1633848669);

-- ----------------------------
-- Table structure for cd_base_config
-- ----------------------------
DROP TABLE IF EXISTS `cd_base_config`;
CREATE TABLE `cd_base_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_base_config
-- ----------------------------
INSERT INTO `cd_base_config` VALUES (1, 'site_title', 'vueadmin后台管理系统');
INSERT INTO `cd_base_config` VALUES (2, 'logo', 'http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg');
INSERT INTO `cd_base_config` VALUES (3, 'keyword', 'vueadmin,快速生成a,不写一行代码,xhadmin');
INSERT INTO `cd_base_config` VALUES (4, 'descrip', '停车管理系统');
INSERT INTO `cd_base_config` VALUES (5, 'copyright', '寒塘冷月');
INSERT INTO `cd_base_config` VALUES (6, 'filesize', '100');
INSERT INTO `cd_base_config` VALUES (7, 'filetype', 'gif,png,jpg,jpeg,doc,docx,xls,xlsx,csv,pdf,rar,zip,txt,mp4,flv,wgt');
INSERT INTO `cd_base_config` VALUES (8, 'water_status', '1');
INSERT INTO `cd_base_config` VALUES (9, 'water_position', '5');
INSERT INTO `cd_base_config` VALUES (10, 'domain', '');
INSERT INTO `cd_base_config` VALUES (18, 'ip_white', '');
INSERT INTO `cd_base_config` VALUES (20, 'water_alpha', '90');
INSERT INTO `cd_base_config` VALUES (26, 'tinymce', '<p>ekrjkrjkrejkkj</p>');

-- ----------------------------
-- Table structure for cd_batch
-- ----------------------------
DROP TABLE IF EXISTS `cd_batch`;
CREATE TABLE `cd_batch`  (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `sex` smallint(6) NULL DEFAULT NULL COMMENT '性别',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `sortid` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `wb` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文本域',
  `bq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `jsq` decimal(10, 2) NULL DEFAULT NULL COMMENT '计数器',
  PRIMARY KEY (`batch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_batch
-- ----------------------------
INSERT INTO `cd_batch` VALUES (1, '测试信息', 1, 1, 239.00, 1, '文本内容', 'layui', 4.00);
INSERT INTO `cd_batch` VALUES (8, '张三', 1, 1, 11.00, 2, '测试2', 'thinkphp', 3.00);
INSERT INTO `cd_batch` VALUES (10, '王五1a', 1, 1, 31.00, 4, '寒塘冷月', 'xhadmin,xhcms', 1.00);
INSERT INTO `cd_batch` VALUES (12, '何影青', 2, 1, 100.00, 5, '文本域', 'vue', 5.00);
INSERT INTO `cd_batch` VALUES (13, '寒塘冷月', 1, 1, 568.00, 6, '会更好', 'xhadmin,vue', 4545.00);

-- ----------------------------
-- Table structure for cd_catagory
-- ----------------------------
DROP TABLE IF EXISTS `cd_catagory`;
CREATE TABLE `cd_catagory`  (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `type` tinyint(4) NULL DEFAULT NULL,
  `list_tpl` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail_tpl` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jumpurl` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sortid` int(9) NULL DEFAULT NULL,
  `pid` tinyint(4) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1,
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成文件名',
  `module_id` smallint(5) NULL DEFAULT NULL,
  `upload_config_id` smallint(6) NULL DEFAULT NULL COMMENT '上传配置',
  PRIMARY KEY (`class_id`) USING BTREE,
  UNIQUE INDEX `class_id`(`class_id`) USING BTREE,
  INDEX `class_name`(`class_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_catagory
-- ----------------------------
INSERT INTO `cd_catagory` VALUES (7, '公司简介', '', 1, 'about', '', '', '', '', '', 1, 0, 1, '/about', 'index.html', 5, NULL);
INSERT INTO `cd_catagory` VALUES (8, '产品中心', '', 2, 'pic', 'viewproduct', '', '', '', '', 2, 0, 1, '/html/chanpinzhongxin', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (9, '新闻资讯', '', 2, 'list', 'view', '', '', '', '', 9, 0, 1, '/html/xinwenzixun', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (10, '人才招聘', '', 1, 'about', '', '', '', '', '', 2, 0, 1, '/html/rencaizhaopin', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (11, '在线留言', '', 1, 'gustbook', '', '', '', '', '/about/11', 11, 0, 1, '/html/zaixianliuyan', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (12, '联系我们', '', 1, 'about', '', '', '', '', '', 12, 0, 1, '/', 'contact.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (13, 'Intel网卡', '', 2, 'pic', 'viewproduct', '', '', '', '', 15, 8, 1, '/html/intelwangka', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (14, 'BCM网卡', '', 2, 'pic', 'viewproduct', '', '', '', '', 16, 8, 1, '/html/bcmwangka', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (15, '惠普HP网卡系列', '', 2, 'pic', 'viewproduct', '', '', '', '', 14, 8, 1, '/html/huipuHPwangkaxilie', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (16, '光纤跳线系列', '', 2, 'pic', 'viewproduct', '', '', '', '', 13, 8, 1, '/html/IBMwangka', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (17, '光纤模块系列', '', 2, 'pic', 'viewproduct', '', '', '', '', 17, 8, 1, '/html/guangxianmokuaixilie', 'index.html', 0, NULL);
INSERT INTO `cd_catagory` VALUES (22, '内容模型测试', NULL, 1, 'list', 'view2', NULL, '', NULL, NULL, 22, NULL, 1, NULL, 'index.html', 1055, NULL);

-- ----------------------------
-- Table structure for cd_content
-- ----------------------------
DROP TABLE IF EXISTS `cd_content`;
CREATE TABLE `cd_content`  (
  `content_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_id` tinyint(4) NULL DEFAULT NULL,
  `pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `position` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jumpurl` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(10) NULL DEFAULT NULL,
  `keyword` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `views` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `sortid` int(11) NULL DEFAULT NULL,
  `author` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`content_id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_content
-- ----------------------------
INSERT INTO `cd_content` VALUES (16, 'Emulex第五代FC HBA实现230万IOPS！', 20, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1552822476, '', '', '51', 16, '');
INSERT INTO `cd_content` VALUES (17, 'Emulex为戴尔PowerEdge提供高性能虚拟化和可扩展性', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427442, '', '', '26', 17, '');
INSERT INTO `cd_content` VALUES (18, 'Emulex为惠普ProLiant交付16GFC夹层HBA', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427432, '', '', '24', 18, '');
INSERT INTO `cd_content` VALUES (19, 'Emulex宣布最新产品将支持OCP开放计算项目', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427423, '', '', '34', 19, '');
INSERT INTO `cd_content` VALUES (20, 'PMC亮相IDF 展示12G SAS分层存储方案', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427413, '', '', '72', 20, '');
INSERT INTO `cd_content` VALUES (21, 'LSI增强MgaRAID闪存卡更贴近超大规模环境', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427402, '', '', '117', 21, '');
INSERT INTO `cd_content` VALUES (22, '英特尔收购QLogic旗下InfiniBand业务', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427394, '', '', '286', 22, '');
INSERT INTO `cd_content` VALUES (23, '概论高清、网络化视频存储要求', 9, '', '<p>对于视频监控而言，图像清晰度无疑是最关键的特性。图像越清晰，细节越明显，观看 体验越好，智能等应用业务的准确度也越高。所以图像清晰度是视频监控永恒的追求。然而作为高清的视频，动辄几G到几十G的文件大小，这么大的视频文件，而 且有如潮水般的涌现，不仅对存储容量，对读写性能、可靠性等都提出了更高要求。因此，选择什么样的存储系统和方案，往往成为影响视频读写速度的关键。</p><p>高清、网络化视频存储要求</p><p><br/></p><p>1、在了解高清存储系统之前，必须知道什么是高清?</p><p><br/></p><p>在高清视频标准中，视频从最低标准到较高标准依次为720线非交错式，即720p逐行扫描;1080线交错式，即1080i隔行扫描;1080线非交错式，即1080p逐行扫描，屏幕纵横比为16:9，如果是视音频同步的HDTV，标准输出为杜比5.1声道数字格式。</p><p><br/></p><p>高 清视频有常见的三种分辨率，分别是：720P(1280×720P)逐行，美国的部分高清电视台主要采用这种格式;1080i(1920×1080i)隔 行;1080P(1920×1080P)逐行。网络视频高清资源以720P和1080i最为常见，其中作为视频监控系统的高清部分，已产品化的设备标准普 遍采用720P和1080P的拍摄标准。</p><p><br/></p><p>2、视频存储要求之大容量，即高清的文件到底有多大?</p><p><br/></p><p>高 清视频在经过不同的编码处理以后，依据码率不同，而有不同的要求。一般码率在6-20Mb之间，压缩效率、压缩方式不同，所获得的最终文件大小约 为：3-10GB/小时，因此便产生了对于存储大容量的要求。当然一般意义上的视频，压缩模式不同，占用的存储空间非常小，这里主要讨论一下高清视频的存 储容量。</p><p><br/></p><p>高 清视频的一种应用是提供这些高清网络视频资源下载的高清网站，规模比较小的站点片库中也会有成百上千部电影，这一类的网站在互联网上多如牛毛，而每个站点 存储系统的净容量要求至少在几十T，加上某些站点要建立多个文件映射和下载种子以提高综合流量，容量就不仅仅是几十个T了。</p><p><br/></p><p>另 一种应用是高清视频监控，虽然出于经济性考虑，此种应用中高清监控视频压缩率会比较高。目前720P高清视频摄像资料每小时视频录像可压缩到3GB左右容 量，但由于采集的是高清视频，而一般的监控系统摄像路数都是几百乃至上千路，所以这种应用将需要更多的存储设备和更大的存储容量。以此为例，按一个月保存 时间要求计算，可以得到这样一个数据：</p><p><br/></p><p>3GB/小时×24小时×30天×1路=2.16T</p><p><br/></p><p>每存储一路视频需要2T以上的净容量，那么计算一个拥有500路高清视频摄像，需要保存30天的监控系统所需的最少存储容量是1PB。</p><p><br/></p><p>3、视频存储要求之高性能</p><p><br/></p><p>众 所周知，除了BT分布式下载结构的网站，支持高清视频的效果大多是以服务端大数据流量为代价的。以每路数据流为20Mb的高清视频为例，在千兆单点服务模 式，最多可以容纳50路高清视频同时播放。当然这个是理论值，实际上还要考虑网络在处理数据撞包等任务时，消耗网络带宽资源之类的因素。因此，在高清视频 网站考虑服务时，首先要考虑向服务器提供高清视频数据的存储系统，扩大存储系统的带宽，速度才能得到有效的提升。在高清视频监控系统中，存储的传输速率要 求会随着监控系统的规模呈正比增长。</p><p><br/></p><p>4、视频存储要求之可靠性</p><p><br/></p><p>从 高清视频文件对用户的重要性来讲有几个不同的层次：一般安全性用户、中度安全性用户、重要视频数据用户。作为一般安全性用户，主要是指一些以分布式下载的 高清电影网站，他们对于高清数据安全性要求相对不高。偶尔存储系统离线，并不会对整个体系造成太大影响，但是对于数据的完整性要求比较高。</p><p><br/></p><p>中度安全性用户，如一些大型高清视频在线网站、交互网站等，要求高清视频数据具有实时性、交互性特点的，以及关键性的高清视频数据存储，都属于中度安全要求的用户。他们对于高清视频存储安全性的要求，是实时性和可恢复性。</p><p><br/></p><p>重要视频数据用户，比如高清视频监控图像、媒体资讯制作内容等都属于重要视频数据类型，这类用户对高清视频存储安全的要求是实时性、冗余性和不间断性。</p>', 1, '', '', 1628427387, '', '', '648', 23, '');
INSERT INTO `cd_content` VALUES (24, '人才招聘', 10, '', '内容建设中', 1, '', '', 1552823087, '', '', '', 24, '');
INSERT INTO `cd_content` VALUES (25, '联系我们', 12, '', '<p><strong>深圳市XXX有限公司</strong></p><p>地址：深圳市福田区深南中路南光捷佳大厦</p><p>电话：0755-83X94383</p><p>传真：0755-830x1099</p><p>邮箱：40527XX79@qq.com</p><p><br/></p>', 1, '', '', 1552823105, '', '', '', 25, '');
INSERT INTO `cd_content` VALUES (29, 'LSI 9380-8i8e 阵列卡', 13, '/uploads/admin/1552831685383.jpg', '<p>fdffgf</p>', 1, '1', '', 1552831666, '', '', '7', 29, '');
INSERT INTO `cd_content` VALUES (30, 'LSI 9361-24i 阵列卡', 13, '/uploads/admin/15528317119183.jpg', '', 1, '', '', 1552831689, '', '', '6', 30, '');
INSERT INTO `cd_content` VALUES (31, 'LSI 9361-16i 阵列卡', 13, '/uploads/admin/15528317381629.jpg', '', 1, '', '', 1552831720, '', '', '11', 31, '');
INSERT INTO `cd_content` VALUES (33, 'LSI 9286-8e 外接阵列卡', 13, '/uploads/admin/15528317842911.jpg', '', 1, '', '', 1552831766, '', '', '6', 33, '');
INSERT INTO `cd_content` VALUES (34, '3Ware 9750-8i 阵列卡', 13, '/uploads/admin/15528318038134.jpg', '', 1, '', '', 1552831792, '', '', '13', 34, '');
INSERT INTO `cd_content` VALUES (35, 'LSI 9380-4i4e 内外接卡', 13, '/uploads/admin/202110/6171265ee846b.jpg', '', 1, '', '', 1552831812, '', '', '4', 35, '');
INSERT INTO `cd_content` VALUES (36, 'LSI 9271-8i 阵列卡', 13, '/uploads/admin/202110/617126559c0b1.jpg', '', 1, '', '', 1552831842, '', '', '19', 36, '');
INSERT INTO `cd_content` VALUES (57, '产品标题', 13, '/uploads/admin/202110/6171262a6c418.jpg', '', 1, '', '', 1555993345, '', '', '10', 57, '');
INSERT INTO `cd_content` VALUES (58, '产品标题', 13, '/uploads/admin/202110/61712623f27a7.jpg', '', 1, '', '', 1555997683, '', '', '10', 58, '');
INSERT INTO `cd_content` VALUES (60, '产品标题', 13, '/uploads/admin/202110/6171260da550e.jpg', '', 1, '', '', 1555997860, '', '', '6', 60, '');
INSERT INTO `cd_content` VALUES (61, '产品标题', 13, '/uploads/admin/202110/6171260615257.jpg', '', 1, '', '', 1555997903, '', '', '9', 61, '');
INSERT INTO `cd_content` VALUES (62, '产品标题', 13, '/uploads/admin/202110/617125fed958d.jpg', '', 1, '', '', 1555997926, '', '', '22', 62, '');
INSERT INTO `cd_content` VALUES (64, '产品标题', 13, '/uploads/admin/202110/617125ec3fa76.jpg', '', 1, '1', '', 1555997987, '', '', '41', 64, '');
INSERT INTO `cd_content` VALUES (65, '产品标题', 13, '/uploads/admin/202110/617125e3d6b57.jpg', '', 1, '1', '', 1555998191, '', '', '36', 65, '');
INSERT INTO `cd_content` VALUES (66, '产品标题', 13, '/uploads/admin/202110/617125dd86b5f.jpg', '', 1, '1,2', '', 1555998214, '', '', '122', 66, '');
INSERT INTO `cd_content` VALUES (68, '测试信息1', 13, '/uploads/admin/202110/617125d78c10d.jpg', '<p>当时都是多所</p>', 1, '2', '', 1514766819, '', '', '128', 68, '');
INSERT INTO `cd_content` VALUES (72, '测试标题', 13, '/uploads/admin/202110/617125c9dc3be.jpg', '<p>测试内容</p>', 1, '1', '', 1556683144, '', '', '219', 72, 'admin');
INSERT INTO `cd_content` VALUES (73, '一款基于Intel I350AM4芯片的POE网卡', 9, '', '<p>&nbsp; &nbsp; &nbsp; &nbsp;深圳市XXXX有限公司办公室地址位于中国个经济特区，鹏城深圳，深圳 深圳市福华强花园，于2014年03月03日在深圳市市场监督管理局注册成立，注册资本为100万元，在公司发展壮大的5年里，我们始终为客户提供好的产品和技术支持、健全的售后服务，我公司主要经营计算机软硬件、安防设备、五金制品、网络通讯产品、电子产品及配件、电子元器件和集成电路的技术开发与销售，国内贸易（不含专营、专控、专卖商品）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们有好的产品和专业的销售和技术团队，我公司属于深圳电子加工公司行业，如果您对我公司的产品服务有兴趣，期待您在线留言或者来电咨询</p>', 1, '', '', 1628427378, '', '', '62', 73, '');
INSERT INTO `cd_content` VALUES (74, '公司简介', 7, '/uploads/admin/201912/5df20c64cc022.jpg', '<p>&nbsp; &nbsp; &nbsp; &nbsp;深圳市XXXX有限公司办公室地址位于中国个经济特区，鹏城深圳，深圳 深圳市福华强花园，于2014年03月03日在深圳市市场监督管理局注册成立，注册资本为100万元，在公司发展壮大的5年里，我们始终为客户提供好的产品和技术支持、健全的售后服务，我公司主要经营计算机软硬件、安防设备、五金制品、网络通讯产品、电子产品及配件、电子元器件和集成电路的技术开发与销售，国内贸易（不含专营、专控、专卖商品）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们有好的产品和专业的销售和技术团队，我公司属于深圳电子加工公司行业，如果您对我公司的产品服务有兴趣，期待您在线留言或者来电咨询<br/></p>', 1, '', '', 1572330298, '', '', '', 74, '');
INSERT INTO `cd_content` VALUES (75, '带内容模型的文章测试', 22, 'http://vue.whpj.vip/uploads/admin/202105/60af8d85f101d.jpg', '<p>内容模型<img src=\"http://vue.whpj.vip/uploads/admin/202105/60af8d85f101d.jpg\" style=\"max-width: 100%;\"/></p>', 1, '2,1', '', 1634808233, '', '', '7', 75, '');

-- ----------------------------
-- Table structure for cd_editor
-- ----------------------------
DROP TABLE IF EXISTS `cd_editor`;
CREATE TABLE `cd_editor`  (
  `editor_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `wangeditor` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'wangeditor编辑器',
  `tinymce` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'tinymce编辑器',
  `markdown` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'markdown编辑器',
  `ueditor` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'tinymce编辑器',
  PRIMARY KEY (`editor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_editor
-- ----------------------------
INSERT INTO `cd_editor` VALUES (1, '这是系统生成的编辑器组件', '<p>测试<img src=\"http://vue.whpj.vip/uploads/admin/202105/60af9043e29d0.jpg\" style=\"max-width: 100%;\"/></p>', '<p>在测试<img src=\"http://vue.whpj.vip/uploads/admin/202105/60af904d14069.jpg\" alt=\"\" width=\"200\" height=\"200\" /></p>', '![Deion](http://vue.whpj.vip/uploads/admin/202105/60af906eb84d6.jpg)', '<p><img src=\"http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg\" alt=\"\" width=\"200\" height=\"200\" />测试额呢绒</p>');

-- ----------------------------
-- Table structure for cd_field
-- ----------------------------
DROP TABLE IF EXISTS `cd_field`;
CREATE TABLE `cd_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(9) NOT NULL COMMENT '模块ID',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名称',
  `field` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` smallint(4) NOT NULL COMMENT '表单类型1输入框 2下拉框 3单选框 4多选框 5上传图片 6编辑器 7时间',
  `list_show` tinyint(4) NULL DEFAULT NULL COMMENT '列表显示',
  `search_type` tinyint(4) NULL DEFAULT NULL COMMENT '1精确匹配 2模糊搜索',
  `post_status` tinyint(4) NULL DEFAULT NULL COMMENT '是否前台录入',
  `create_table_field` tinyint(4) NULL DEFAULT NULL,
  `validate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证方式',
  `rule` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '验证规则',
  `sortid` mediumint(9) NULL DEFAULT 0 COMMENT '排序号',
  `sql` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段配置数据源sql',
  `default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datatype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段数据类型',
  `length` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段长度',
  `indexdata` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引',
  `show_condition` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单元格宽度',
  `datetime_config` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他配置',
  `other_config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `belong_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '虚拟字段所属表 用户多表关联',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4499 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_field
-- ----------------------------
INSERT INTO `cd_field` VALUES (4495, 1055, '腾讯地图', 'txdt', 28, 2, 0, 1, 1, '', NULL, 4495, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4496, 1055, 'wangeditor', 'wangeditor', 25, 2, 0, 1, 1, '', NULL, 4496, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4497, 1055, 'tinymce', 'tinymce', 26, 2, 0, 1, 1, '', NULL, 4497, NULL, '', 'longtext', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4498, 1055, '多图', 'images', 14, 2, 0, 1, 1, '', NULL, 4485, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '{\"address_type\":\"1\"}', '');
INSERT INTO `cd_field` VALUES (4493, 1055, '百度地图', 'dddt', 23, 2, 0, 1, 1, '', NULL, 4493, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4494, 1055, '高德地图', 'gddt', 24, 2, 0, 1, 1, '', NULL, 4494, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4489, 1055, '滑块', 'hk', 19, 2, 0, 1, 1, '', NULL, 4489, NULL, '', 'smallint', '6', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4490, 1055, '颜色选择器', 'color', 20, 2, 0, 1, 1, '', NULL, 4490, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4491, 1055, '键值对', 'jzd', 21, 2, 0, 1, 1, '', NULL, 4491, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4492, 1055, '省市区', 'ssq', 22, 2, 0, 1, 1, '', NULL, 4492, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4487, 1055, '计数器', 'jsq', 17, 2, 0, 1, 1, '', NULL, 4487, NULL, '', 'decimal', '10,2', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4488, 1055, '标签', 'bq', 18, 2, 1, 1, 1, '', NULL, 4488, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4486, 1055, '多文件', 'files', 16, 2, 0, 1, 1, '', NULL, 4486, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4481, 1055, '日期框', 'rqk', 9, 2, 0, 1, 1, '', NULL, 4481, NULL, '', 'int', '11', NULL, NULL, '', NULL, 'datetime', '[]', '');
INSERT INTO `cd_field` VALUES (4482, 1055, '日期范围', 'rqfw', 10, 2, 0, 1, 1, '', NULL, 4482, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4483, 1055, '单图上传', 'dt', 13, 2, 0, 1, 1, '', NULL, 4483, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '{\"upload_type\":\"1\"}', '');
INSERT INTO `cd_field` VALUES (4484, 1055, '单图2', 'dt2', 13, 2, 0, 1, 1, '', NULL, 4484, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '{\"upload_type\":\"2\"}', '');
INSERT INTO `cd_field` VALUES (4485, 1055, '单文件', 'file', 15, 2, 0, 1, 1, '', NULL, 4485, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4479, 1055, '开关按钮', 'kg', 6, 2, 1, 1, 1, '', NULL, 4479, NULL, '', 'tinyint', '4', NULL, NULL, '[{\"key\":\"开启\",\"val\":\"1\"},{\"key\":\"关闭\",\"val\":\"0\"}]', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4480, 1055, '文本域', 'wby', 8, 2, 1, 1, 1, '', NULL, 4480, NULL, '', 'text', '0', NULL, NULL, '', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4477, 1055, '单选框', 'dxk', 4, 2, 1, 1, 1, '', NULL, 4477, NULL, '', 'smallint', '6', NULL, NULL, '[{\"key\":\"男\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"女\",\"val\":\"2\",\"label_color\":\"warning\"}]', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4478, 1055, '多选框', 'dxka', 5, 2, 1, 1, 1, '', NULL, 4478, NULL, '', 'varchar', '250', NULL, NULL, '[{\"key\":\"男\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"女\",\"val\":\"2\",\"label_color\":\"warning\"}]', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4474, 1055, '文本框', 'wbk', 1, 2, 1, 1, 1, '', NULL, 4474, NULL, '', 'varchar', '250', NULL, NULL, '', NULL, NULL, '{\"address_type\":\"1\"}', '');
INSERT INTO `cd_field` VALUES (4475, 1055, '下拉框', 'xlk', 2, 2, 1, 1, 1, '', NULL, 4475, NULL, '', 'smallint', '6', NULL, NULL, '[{\"key\":\"男\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"女\",\"val\":\"2\",\"label_color\":\"warning\"}]', NULL, NULL, '[]', '');
INSERT INTO `cd_field` VALUES (4476, 1055, '下拉多选', 'xldx', 3, 2, 1, 1, 1, '', NULL, 4476, NULL, '', 'varchar', '250', NULL, NULL, '[{\"key\":\"男\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"女\",\"val\":\"2\",\"label_color\":\"warning\"}]', NULL, NULL, '[]', '');

-- ----------------------------
-- Table structure for cd_file
-- ----------------------------
DROP TABLE IF EXISTS `cd_file`;
CREATE TABLE `cd_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `hash` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件hash值',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hash`(`hash`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 333 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_file
-- ----------------------------
INSERT INTO `cd_file` VALUES (284, 'http://vue.whpj.vip/uploads/admin/202105/60af8d752fe38.jpg', '9b6adf5c5f23ff87b3d9873809052831', 1622117749, NULL);
INSERT INTO `cd_file` VALUES (285, 'http://vue.whpj.vip/uploads/admin/202105/60af8d7d47a10.jpg', '3c00f0f466522fbd0ef442917a71f55f', 1622117757, NULL);
INSERT INTO `cd_file` VALUES (286, 'http://vue.whpj.vip/uploads/admin/202105/60af8d85f101d.jpg', '4523359ec4ba32f807b1de8f213cf188', 1622117765, NULL);
INSERT INTO `cd_file` VALUES (287, 'http://vue.whpj.vip/uploads/admin/202105/60af8d8de9d0f.jpg', '4990787de11666d9d94edbc718ddf071', 1622117773, NULL);
INSERT INTO `cd_file` VALUES (299, 'http://vue.whpj.vip/uploads/admin/202105/60afbe5f64890.jpg', 'f9f491385463e7ffa95af8f8c17aea2a', 1622130271, NULL);
INSERT INTO `cd_file` VALUES (289, 'http://vue.whpj.vip/uploads/admin/202105/60af9043e29d0.jpg', '22508d7389277290584be5a09c16853e', 1622118467, NULL);
INSERT INTO `cd_file` VALUES (290, 'http://vue.whpj.vip/uploads/admin/202105/60af904d14069.jpg', 'bd835163b61fa2dd11579b2de70023fc', 1622118477, NULL);
INSERT INTO `cd_file` VALUES (298, 'http://vue.whpj.vip/uploads/admin/202105/60afb66d3ae5a.jpg', '43c338754928ee7ed34b33b9e7c82dff', 1622128237, NULL);
INSERT INTO `cd_file` VALUES (297, 'http://vue.whpj.vip/uploads/admin/202105/60af94bfae6d2.jpg', 'c435098ccf06e4248d918f91ed0992c8', 1622119615, NULL);
INSERT INTO `cd_file` VALUES (293, 'http://vue.whpj.vip/uploads/admin/202105/60af91ffbd6f8.jpg', '9053bb860fb23722497df4bc2c25eaa3', 1622118911, NULL);
INSERT INTO `cd_file` VALUES (296, 'http://vue.whpj.vip/uploads/admin/202105/60af94abc6d3a.jpg', 'c7f148b2a45d68e1f2baba730dca2c78', 1622119595, NULL);
INSERT INTO `cd_file` VALUES (295, 'http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg', 'cc608c637bec9117018cef0e4cc9c6dd', 1622118912, NULL);
INSERT INTO `cd_file` VALUES (318, '/uploads/admin/202110/61627c797917c.png', '246d9da289a46afd91bbb2d862d60641', 1633844345, NULL);
INSERT INTO `cd_file` VALUES (319, '/uploads/admin/202110/61711f28cc755.jpg', 'fe2441f957f709687414c12382f88209', 1634803496, NULL);
INSERT INTO `cd_file` VALUES (320, '/uploads/admin/202110/61711f3fd4789.jpg', 'c810a337cfb41b21e756015279b14bc9', 1634803519, NULL);
INSERT INTO `cd_file` VALUES (321, '/uploads/admin/202110/617125c9dc3be.jpg', 'a290fa61758e03ad1ebae92f63a7880f', 1634805193, NULL);
INSERT INTO `cd_file` VALUES (322, '/uploads/admin/202110/617125d78c10d.jpg', 'bb298672db0201eb04ecafb04ab21b88', 1634805207, NULL);
INSERT INTO `cd_file` VALUES (323, '/uploads/admin/202110/617125dd86b5f.jpg', '21fa612a25dcbdc13b0553cf8263c677', 1634805213, NULL);
INSERT INTO `cd_file` VALUES (324, '/uploads/admin/202110/617125e3d6b57.jpg', '59da1e40bb5bc5a1ab1c3ade41bfa0a3', 1634805219, NULL);
INSERT INTO `cd_file` VALUES (325, '/uploads/admin/202110/617125ec3fa76.jpg', '5bf66471d16f5ade4a2f7ad0ea0c9bc4', 1634805228, NULL);
INSERT INTO `cd_file` VALUES (326, '/uploads/admin/202110/617125fed958d.jpg', '4a06e33e292f2cd1d737c776487ef9c1', 1634805246, NULL);
INSERT INTO `cd_file` VALUES (327, '/uploads/admin/202110/6171260615257.jpg', 'a4679ae38070b33763fc4d233e299753', 1634805254, NULL);
INSERT INTO `cd_file` VALUES (328, '/uploads/admin/202110/6171260da550e.jpg', '2f206a97dac94cc4c130326518a31b5e', 1634805261, NULL);
INSERT INTO `cd_file` VALUES (329, '/uploads/admin/202110/61712623f27a7.jpg', 'e5bea01f693ee1d96c1aa758eab22110', 1634805283, NULL);
INSERT INTO `cd_file` VALUES (330, '/uploads/admin/202110/6171262a6c418.jpg', '8c0465437a90c30df73cfc723792d30d', 1634805290, NULL);
INSERT INTO `cd_file` VALUES (331, '/uploads/admin/202110/617126559c0b1.jpg', '7f8e12a92130a366ef7d6be95f4ff027', 1634805333, NULL);
INSERT INTO `cd_file` VALUES (332, '/uploads/admin/202110/6171265ee846b.jpg', '52e793094ee4f330eb1090853e01fc79', 1634805342, NULL);

-- ----------------------------
-- Table structure for cd_frament
-- ----------------------------
DROP TABLE IF EXISTS `cd_frament`;
CREATE TABLE `cd_frament`  (
  `frament_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`frament_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_frament
-- ----------------------------
INSERT INTO `cd_frament` VALUES (1, '首页简介', NULL, '<p>深圳市XXXX电子有限公司办公室地址位于中国个经济特区，鹏城深圳，深圳深圳市福田区福虹路华强花园11栋602，于2014年03月03日在深圳市市场监督管理局注册...<a href=\"http://www.szykfx.com/html/gongsijianjie\">详细&gt;&gt;</a><br/></p>');
INSERT INTO `cd_frament` VALUES (2, '底部版权', NULL, '<p>Copyright 2005-2021 深圳XXX飞讯电子有限公司&nbsp; All rights reserved&nbsp;<a href=\"/admin\" target=\"_blank\">后台管理</a><br/></p>');
INSERT INTO `cd_frament` VALUES (3, '首页联系我们', NULL, '<p>深圳市XXX电子有限公司</p><p>地址：深圳市福田区深南中路南光捷佳大厦</p><p>电话：0755-8394383</p><p>传真：0755-8300099</p><p>邮箱：40529079@qq.com</p>');

-- ----------------------------
-- Table structure for cd_goods
-- ----------------------------
DROP TABLE IF EXISTS `cd_goods`;
CREATE TABLE `cd_goods`  (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `class_id` smallint(6) NULL DEFAULT NULL COMMENT '所属分类',
  `pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售价',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图集',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `cd` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产地',
  `store` int(11) NULL DEFAULT NULL COMMENT '库存',
  `sortid` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '发布时间',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容详情',
  `supplier_id` smallint(6) NULL DEFAULT NULL COMMENT '供应商',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_goods
-- ----------------------------
INSERT INTO `cd_goods` VALUES (1, '黑鲨游戏手机2 8GB+128GB 暗龙855 Magic', 2, 'http://vue.whpj.vip/uploads/admin/202105/60af8d752fe38.jpg', 210.00, '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d7d47a10.jpg\",\"name\":\"60af8d7d47a10.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d8de9d0f.jpg\",\"name\":\"60af8d8de9d0f.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af9043e29d0.jpg\",\"name\":\"60af9043e29d0.jpg\"}]', 1, '湖北', 999, 1, 1620044343, '<p>详细内容<img src=\"http://vue.whpj.vip/uploads/admin/202105/60af91ffbd6f8.jpg\" style=\"max-width: 100%;\"/></p>', 1, 1);
INSERT INTO `cd_goods` VALUES (2, '华为 HUAWEI 畅享10 极4800万超清夜景', 3, 'http://vue.whpj.vip/uploads/admin/202105/60af904d14069.jpg', 2345.00, '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d7d47a10.jpg\",\"name\":\"60af8d7d47a10.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d752fe38.jpg\",\"name\":\"60af8d752fe38.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af9043e29d0.jpg\",\"name\":\"60af9043e29d0.jpg\"}]', 1, '中国', 111, 2, 1620044702, '<p>测试刚刚好</p>', 2, NULL);
INSERT INTO `cd_goods` VALUES (3, 'ivo U1 3GB+32GB夜水滴全面屏 AI拍照手机	', 5, 'http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg', 4554.00, '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d7d47a10.jpg\",\"name\":\"60af8d7d47a10.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d8de9d0f.jpg\",\"name\":\"60af8d8de9d0f.jpg\"}]', 1, '武汉', 999, 100, 1620044929, '<p>测试跪求</p>', 1, 1);
INSERT INTO `cd_goods` VALUES (4, '这是三张表关联测试信息，列表方法多表配置查看如何配置的', 2, 'http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg', 2234.00, '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"60af8d85f101d.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d7d47a10.jpg\",\"name\":\"60af8d7d47a10.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d8de9d0f.jpg\",\"name\":\"60af8d8de9d0f.jpg\"}]', 1, '', 0, 23, 1622120983, '<p>测试内哦让</p>', 1, 1);
INSERT INTO `cd_goods` VALUES (5, '九牧 JOMOO 不锈钢上水头编织软管 花洒喷头耐热防爆淋浴软管 H2BE2', 2, 'http://vue.whpj.vip/uploads/admin/202105/60af8d7d47a10.jpg', 445.00, '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af9200b555c.jpg\",\"name\":\"5ff40b8d7fbd2.jpg\"},{\"url\":\"\\/uploads\\/admin\\/202110\\/61627c797917c.png\",\"name\":\"5ff5dfbd5b60a.png\"}]', 1, '', 0, 5, 1633853113, '<p>fdfdfdfdfdfd</p>', 1, 1);

-- ----------------------------
-- Table structure for cd_goods_cata
-- ----------------------------
DROP TABLE IF EXISTS `cd_goods_cata`;
CREATE TABLE `cd_goods_cata`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `pid` smallint(6) NULL DEFAULT NULL COMMENT '所属父类',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `sortid` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_goods_cata
-- ----------------------------
INSERT INTO `cd_goods_cata` VALUES (1, '手机', NULL, 1, 1);
INSERT INTO `cd_goods_cata` VALUES (2, '小米', 1, 1, 2);
INSERT INTO `cd_goods_cata` VALUES (3, '华为', 1, 1, 3);
INSERT INTO `cd_goods_cata` VALUES (4, '苹果', 1, 1, 4);
INSERT INTO `cd_goods_cata` VALUES (5, '三星', 1, 1, 5);
INSERT INTO `cd_goods_cata` VALUES (6, '电视', NULL, 1, 6);
INSERT INTO `cd_goods_cata` VALUES (7, '小米', 6, 1, 7);
INSERT INTO `cd_goods_cata` VALUES (8, 'htc', 6, 1, 8);
INSERT INTO `cd_goods_cata` VALUES (9, 'LG', 6, 1, 9);
INSERT INTO `cd_goods_cata` VALUES (10, '海信', 6, 1, 10);
INSERT INTO `cd_goods_cata` VALUES (11, '三星', 1, 1, 11);

-- ----------------------------
-- Table structure for cd_liandong
-- ----------------------------
DROP TABLE IF EXISTS `cd_liandong`;
CREATE TABLE `cd_liandong`  (
  `liandong_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`liandong_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_liandong
-- ----------------------------
INSERT INTO `cd_liandong` VALUES (1, 'oss_type', '1');
INSERT INTO `cd_liandong` VALUES (2, 'keyid', 'T0g7eZLYoe');
INSERT INTO `cd_liandong` VALUES (3, 'secret', 'Wy5isYVqtT0g7eZLYoePK6m2QjZ8Dc ');
INSERT INTO `cd_liandong` VALUES (4, 'endpoint', 'http://i.whpj.vip dd');
INSERT INTO `cd_liandong` VALUES (5, 'bucket', 'xhadmin333 ');

-- ----------------------------
-- Table structure for cd_link
-- ----------------------------
DROP TABLE IF EXISTS `cd_link`;
CREATE TABLE `cd_link`  (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接名称',
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `logo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `sortid` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `linkcata_id` smallint(6) NULL DEFAULT NULL COMMENT '所属分类',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_link
-- ----------------------------
INSERT INTO `cd_link` VALUES (1, 'banner1', 'http://taobao.com', '/uploads/admin/202110/61711f3fd4789.jpg', 1, 1, 1622121464, 4);
INSERT INTO `cd_link` VALUES (2, 'banner2', 'http://souhu.com', '/uploads/admin/202110/61711f28cc755.jpg', 1, 2, 1622121586, 4);
INSERT INTO `cd_link` VALUES (3, '简书', 'http://jianshu.com', 'http://vue.whpj.vip/uploads/admin/202105/60af94abc6d3a.jpg', 1, 3, 1622121601, 2);
INSERT INTO `cd_link` VALUES (4, '网易', 'http://16311.com', 'http://vue.whpj.vip/uploads/admin/202105/60af8d7d47a10.jpg', 1, 4, 1622121615, 2);
INSERT INTO `cd_link` VALUES (5, '测试啊啊啊', 'http://baidu.com', 'http://vue.whpj.vip/uploads/admin/202105/60af8d7d47a10.jpg', 1, 1, 1632841268, 2);

-- ----------------------------
-- Table structure for cd_linkcata
-- ----------------------------
DROP TABLE IF EXISTS `cd_linkcata`;
CREATE TABLE `cd_linkcata`  (
  `linkcata_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `jdt` smallint(6) NULL DEFAULT NULL COMMENT '进度条',
  PRIMARY KEY (`linkcata_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_linkcata
-- ----------------------------
INSERT INTO `cd_linkcata` VALUES (2, '底部链接', 1, 41);
INSERT INTO `cd_linkcata` VALUES (3, '首页分类', 1, 18);
INSERT INTO `cd_linkcata` VALUES (4, '首页banner', 1, 48);
INSERT INTO `cd_linkcata` VALUES (5, '测试分类a', 1, 24);
INSERT INTO `cd_linkcata` VALUES (6, '默认分类', 1, 45);

-- ----------------------------
-- Table structure for cd_log
-- ----------------------------
DROP TABLE IF EXISTS `cd_log`;
CREATE TABLE `cd_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求url',
  `ip` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `useragent` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'useragent',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求内容',
  `errmsg` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '类型',
  `times` int(11) NULL DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 309830 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_log
-- ----------------------------
INSERT INTO `cd_log` VALUES (309425, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633856537, 1, NULL);
INSERT INTO `cd_log` VALUES (309426, 'admin', NULL, 'http://vue2.whpj.vip/admin/Extjob/index', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[HY000] [1045] Access denied for user \'root\'@\'localhost\' (using password: YES)', 1633856544, 3, NULL);
INSERT INTO `cd_log` VALUES (309427, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633856698, 1, NULL);
INSERT INTO `cd_log` VALUES (309428, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.196.210.26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1633856793, 1, NULL);
INSERT INTO `cd_log` VALUES (309429, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633856837, 1, NULL);
INSERT INTO `cd_log` VALUES (309430, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633856903, 1, NULL);
INSERT INTO `cd_log` VALUES (309431, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Test/add', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"测试内容\",\"status\":1}', NULL, 1633857194, 2, NULL);
INSERT INTO `cd_log` VALUES (309432, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Test/add', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"在测试\",\"status\":1}', NULL, 1633857199, 2, NULL);
INSERT INTO `cd_log` VALUES (309433, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633857469, 1, NULL);
INSERT INTO `cd_log` VALUES (309434, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Membe/update', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"membe_id\":30,\"username\":\"赵莎莎\",\"sex\":2,\"mobile\":\"13546985741\",\"pic\":\"\\/uploads\\/admin\\/202110\\/61627c797917c.png\",\"email\":\"784411414@qq.com\",\"status\":1,\"amount\":\"90.00\",\"ssq\":[\"天津市\",\"市辖区\",\"河东区\"],\"create_time\":\"2021-10-07 10:23:32\"}', NULL, 1633857473, 2, NULL);
INSERT INTO `cd_log` VALUES (309435, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.206.11.147', 'Mozilla/5.0 (Linux; Android 9; SM-G9550 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1633857783, 1, NULL);
INSERT INTO `cd_log` VALUES (309436, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.14.230.91', 'Mozilla/5.0 (Linux; Android 11; Redmi K30 Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WI', NULL, NULL, 1633857788, 1, NULL);
INSERT INTO `cd_log` VALUES (309437, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633857808, 1, NULL);
INSERT INTO `cd_log` VALUES (309438, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.14.230.91', 'Mozilla/5.0 (Linux; Android 11; Redmi K30 Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WI', NULL, NULL, 1633857819, 1, NULL);
INSERT INTO `cd_log` VALUES (309439, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.239.55.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633857972, 1, NULL);
INSERT INTO `cd_log` VALUES (309440, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.190.120.51', 'Mozilla/5.0 (Linux; Android 11; JLH-AN00 Build/HONORJLH-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI ', NULL, NULL, 1633857975, 1, NULL);
INSERT INTO `cd_log` VALUES (309441, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '118.113.201.105', 'Mozilla/5.0 (Linux; Android 10; EVR-AL00 Build/HUAWEIEVR-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1633857983, 1, NULL);
INSERT INTO `cd_log` VALUES (309442, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '118.113.201.105', 'Mozilla/5.0 (Linux; Android 10; EVR-AL00 Build/HUAWEIEVR-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1633857997, 1, NULL);
INSERT INTO `cd_log` VALUES (309443, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '219.155.115.135', 'Mozilla/5.0 (Linux; Android 10; VOG-AL10 Build/HUAWEIVOG-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1633858258, 1, NULL);
INSERT INTO `cd_log` VALUES (309444, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; BMH-AN20; HMSCore 6.1.0.314) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.93 HuaweiBrowser/11.1.5.310 Mobile Safari/537.36', NULL, NULL, 1633858276, 1, NULL);
INSERT INTO `cd_log` VALUES (309445, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '121.31.246.25', 'Mozilla/5.0 (Linux; Android 10; NOH-AN00 Build/HUAWEINOH-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045810 Mobile Safari/537.36 V1_AND_SQ_8.8.12_1900_YYB_D A_8080500 QQ/8.8.12.5675 NetType/4G W', NULL, NULL, 1633859261, 1, NULL);
INSERT INTO `cd_log` VALUES (309446, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.168.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633859950, 1, NULL);
INSERT INTO `cd_log` VALUES (309447, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.75.188.224', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1633860171, 1, NULL);
INSERT INTO `cd_log` VALUES (309448, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.201.0.252', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1633860645, 1, NULL);
INSERT INTO `cd_log` VALUES (309449, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '120.201.0.252', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1633860673, 1, NULL);
INSERT INTO `cd_log` VALUES (309450, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '106.39.151.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', NULL, NULL, 1633861160, 1, NULL);
INSERT INTO `cd_log` VALUES (309451, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.51.115.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633863076, 1, NULL);
INSERT INTO `cd_log` VALUES (309452, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.36.16.43', 'Mozilla/5.0 (Linux; Android 11; M2011K2C Build/RKQ1.200928.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIF', NULL, NULL, 1633863615, 1, NULL);
INSERT INTO `cd_log` VALUES (309453, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633863692, 1, NULL);
INSERT INTO `cd_log` VALUES (309454, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '49.114.177.32', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/18H17 QQ/8.8.33.634 V1_IPH_SQ_8.8.33_1_APP_A Pixel/1080 MiniAppEnable SimpleUISwitch/0 StudyMode/0 CurrentMode/0 CurrentFontScale/1.000000 QQTheme/', NULL, NULL, 1633863697, 1, NULL);
INSERT INTO `cd_log` VALUES (309455, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '112.254.179.131', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', NULL, NULL, 1633869045, 1, NULL);
INSERT INTO `cd_log` VALUES (309456, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633869372, 1, NULL);
INSERT INTO `cd_log` VALUES (309457, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '59.42.110.17', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1633870288, 1, NULL);
INSERT INTO `cd_log` VALUES (309458, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '61.144.101.217', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1633871035, 1, NULL);
INSERT INTO `cd_log` VALUES (309459, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.220.251.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633874439, 1, NULL);
INSERT INTO `cd_log` VALUES (309460, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '119.131.39.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1633874837, 1, NULL);
INSERT INTO `cd_log` VALUES (309461, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '139.205.61.15', 'Mozilla/5.0 (Linux; Android 11; M2012K11AC Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/W', NULL, NULL, 1633875631, 1, NULL);
INSERT INTO `cd_log` VALUES (309462, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '27.189.43.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633876086, 1, NULL);
INSERT INTO `cd_log` VALUES (309463, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.32.105.9', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1633876124, 1, NULL);
INSERT INTO `cd_log` VALUES (309464, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.189.161.227', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633876257, 1, NULL);
INSERT INTO `cd_log` VALUES (309465, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '49.119.180.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633880001, 1, NULL);
INSERT INTO `cd_log` VALUES (309466, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '121.226.159.208', 'Mozilla/5.0 (Linux; Android 11; SM-N9760 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIF', NULL, NULL, 1633908862, 1, NULL);
INSERT INTO `cd_log` VALUES (309467, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '218.90.150.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 Edg/94.0.992.38', NULL, NULL, 1633912843, 1, NULL);
INSERT INTO `cd_log` VALUES (309468, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.20.67.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633912933, 1, NULL);
INSERT INTO `cd_log` VALUES (309469, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '14.28.20.229', 'Mozilla/5.0 (Linux; U; Android 11; zh-cn; RMX3366 Build/RKQ1.201105.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 HeyTapBrowser/40.7.22.9', NULL, NULL, 1633914343, 1, NULL);
INSERT INTO `cd_log` VALUES (309470, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.25.36.3', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633914571, 1, NULL);
INSERT INTO `cd_log` VALUES (309471, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '42.234.83.214', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', NULL, NULL, 1633914982, 1, NULL);
INSERT INTO `cd_log` VALUES (309472, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.232.16.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1633915284, 1, NULL);
INSERT INTO `cd_log` VALUES (309473, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '116.20.67.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633915354, 1, NULL);
INSERT INTO `cd_log` VALUES (309474, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.161.202.44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36', NULL, NULL, 1633915637, 1, NULL);
INSERT INTO `cd_log` VALUES (309475, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '219.135.206.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', NULL, NULL, 1633915826, 1, NULL);
INSERT INTO `cd_log` VALUES (309476, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '59.46.159.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1633916824, 1, NULL);
INSERT INTO `cd_log` VALUES (309477, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.126.139.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', NULL, NULL, 1633918252, 1, NULL);
INSERT INTO `cd_log` VALUES (309478, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '220.173.27.27', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633918527, 1, NULL);
INSERT INTO `cd_log` VALUES (309479, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.207.82.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36', NULL, NULL, 1633919275, 1, NULL);
INSERT INTO `cd_log` VALUES (309480, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '121.231.14.48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', NULL, NULL, 1633920024, 1, NULL);
INSERT INTO `cd_log` VALUES (309481, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '119.98.225.208', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1633920158, 1, NULL);
INSERT INTO `cd_log` VALUES (309482, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.7.98.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63030532)', NULL, NULL, 1633920952, 1, NULL);
INSERT INTO `cd_log` VALUES (309483, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '112.233.119.25', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1633921069, 1, NULL);
INSERT INTO `cd_log` VALUES (309484, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '182.200.21.95', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x6304001f)', NULL, NULL, 1633921429, 1, NULL);
INSERT INTO `cd_log` VALUES (309485, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '160.16.150.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633921754, 1, NULL);
INSERT INTO `cd_log` VALUES (309486, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.205.161.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, NULL, 1633921970, 1, NULL);
INSERT INTO `cd_log` VALUES (309487, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.149.20.244', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633922078, 1, NULL);
INSERT INTO `cd_log` VALUES (309488, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.87.247.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, 1633922874, 1, NULL);
INSERT INTO `cd_log` VALUES (309489, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.0.192.8', 'Mozilla/5.0 (Linux; Android 10; OCE-AN10 Build/HUAWEIOCE-AN10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1633923195, 1, NULL);
INSERT INTO `cd_log` VALUES (309490, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.232.16.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1633923875, 1, NULL);
INSERT INTO `cd_log` VALUES (309491, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.57.117.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633924985, 1, NULL);
INSERT INTO `cd_log` VALUES (309492, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.22.111.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', NULL, NULL, 1633925419, 1, NULL);
INSERT INTO `cd_log` VALUES (309493, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.163.219.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 Edg/94.0.992.38', NULL, NULL, 1633925438, 1, NULL);
INSERT INTO `cd_log` VALUES (309494, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '119.137.55.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633933580, 1, NULL);
INSERT INTO `cd_log` VALUES (309495, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.60.186.108', 'Mozilla/5.0 (Linux; Android 11; M2007J17C Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WI', NULL, NULL, 1633935669, 1, NULL);
INSERT INTO `cd_log` VALUES (309496, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.60.186.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633935733, 1, NULL);
INSERT INTO `cd_log` VALUES (309497, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.224.75.191', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633936158, 1, NULL);
INSERT INTO `cd_log` VALUES (309498, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.185.17.103', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', NULL, NULL, 1633936209, 1, NULL);
INSERT INTO `cd_log` VALUES (309499, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.80.117.247', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.18 Safari/537.36 Edg/93.0.961.11', NULL, NULL, 1633936228, 1, NULL);
INSERT INTO `cd_log` VALUES (309500, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '219.133.64.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633936277, 1, NULL);
INSERT INTO `cd_log` VALUES (309501, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '106.124.35.153', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1633936467, 1, NULL);
INSERT INTO `cd_log` VALUES (309502, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.141.126.127', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633937070, 1, NULL);
INSERT INTO `cd_log` VALUES (309503, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.52.123.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633937335, 1, NULL);
INSERT INTO `cd_log` VALUES (309504, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '118.250.89.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1633937472, 1, NULL);
INSERT INTO `cd_log` VALUES (309505, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.94.95.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, 1633937750, 1, NULL);
INSERT INTO `cd_log` VALUES (309506, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.144.95.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.14(0x18000e2a) NetType/4G Language/zh_CN', NULL, NULL, 1633937848, 1, NULL);
INSERT INTO `cd_log` VALUES (309507, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.238.138.234', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63030532)', NULL, NULL, 1633938875, 1, NULL);
INSERT INTO `cd_log` VALUES (309508, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.238.138.234', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1633938945, 1, NULL);
INSERT INTO `cd_log` VALUES (309509, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.20.27.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4662.6 Safari/537.36', NULL, NULL, 1633940841, 1, NULL);
INSERT INTO `cd_log` VALUES (309510, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.27.51.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633941363, 1, NULL);
INSERT INTO `cd_log` VALUES (309511, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.60.187.10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3870.400 QQBrowser/10.8.4405.400', NULL, NULL, 1633941438, 1, NULL);
INSERT INTO `cd_log` VALUES (309512, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.131.143.154', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1633942332, 1, NULL);
INSERT INTO `cd_log` VALUES (309513, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.89.247.44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1633950275, 1, NULL);
INSERT INTO `cd_log` VALUES (309514, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '112.224.69.182', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 QQ/8.7.8.635 V1_IPH_SQ_8.7.8_1_APP_A Pixel/1170 MiniAppEnable SimpleUISwitch/0 StudyMode/0 QQTheme/1102 Core/WKWebView Device/Apple(iPhone', NULL, NULL, 1633950639, 1, NULL);
INSERT INTO `cd_log` VALUES (309515, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1633954867, 1, NULL);
INSERT INTO `cd_log` VALUES (309516, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.51.116.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633958402, 1, NULL);
INSERT INTO `cd_log` VALUES (309517, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '115.51.116.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1633958436, 1, NULL);
INSERT INTO `cd_log` VALUES (309518, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.137.201.20', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/19A348 QQ/103.3 TIM/3.3.8.604 V1_IPH_SQ_8.4.8_338_TIM_D Pixel/1170 MiniAppEnable SimpleUISwitch/1 QQTheme/1015712 Core/WKWebView Device/Apple(iPh', NULL, NULL, 1633970186, 1, NULL);
INSERT INTO `cd_log` VALUES (309519, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.163.219.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 Edg/94.0.992.38', NULL, NULL, 1633970616, 1, NULL);
INSERT INTO `cd_log` VALUES (309520, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '27.149.108.195', 'Mozilla/5.0 (Linux; Android 10; TAS-AN00 Build/HUAWEITAS-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G W', NULL, NULL, 1633972033, 1, NULL);
INSERT INTO `cd_log` VALUES (309521, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.22.98.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', NULL, NULL, 1633998936, 1, NULL);
INSERT INTO `cd_log` VALUES (309522, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.207.82.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36', NULL, NULL, 1634001713, 1, NULL);
INSERT INTO `cd_log` VALUES (309523, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.232.16.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634003121, 1, NULL);
INSERT INTO `cd_log` VALUES (309524, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.163.219.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 Edg/94.0.992.38', NULL, NULL, 1634004477, 1, NULL);
INSERT INTO `cd_log` VALUES (309525, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.137.201.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1634005613, 1, NULL);
INSERT INTO `cd_log` VALUES (309526, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.126.139.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', NULL, NULL, 1634005621, 1, NULL);
INSERT INTO `cd_log` VALUES (309527, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '112.93.0.154', 'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14', NULL, NULL, 1634009871, 1, NULL);
INSERT INTO `cd_log` VALUES (309528, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.89.208.107', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634016773, 1, NULL);
INSERT INTO `cd_log` VALUES (309529, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.36.249.213', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634017598, 1, NULL);
INSERT INTO `cd_log` VALUES (309530, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '59.57.155.227', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', NULL, NULL, 1634019116, 1, NULL);
INSERT INTO `cd_log` VALUES (309531, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.31.255.3', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634020739, 1, NULL);
INSERT INTO `cd_log` VALUES (309532, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '125.86.184.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.47', NULL, NULL, 1634022127, 1, NULL);
INSERT INTO `cd_log` VALUES (309533, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.80.67.229', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1634023634, 1, NULL);
INSERT INTO `cd_log` VALUES (309534, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.136.79.92', 'Mozilla/5.0 (Linux; Android 10; vivo NEX S Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.28_2092_YYB_D A_8082800 QQ/8.8.28.6155 NetType/4', NULL, NULL, 1634025664, 1, NULL);
INSERT INTO `cd_log` VALUES (309535, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.152.203.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1634028888, 1, NULL);
INSERT INTO `cd_log` VALUES (309536, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634040292, 1, NULL);
INSERT INTO `cd_log` VALUES (309537, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634049069, 1, NULL);
INSERT INTO `cd_log` VALUES (309538, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '59.40.142.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634088762, 1, NULL);
INSERT INTO `cd_log` VALUES (309539, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.187.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634089247, 1, NULL);
INSERT INTO `cd_log` VALUES (309540, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '219.157.147.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634089442, 1, NULL);
INSERT INTO `cd_log` VALUES (309541, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.62.227.32', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1634093231, 1, NULL);
INSERT INTO `cd_log` VALUES (309542, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.41.247.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634096309, 1, NULL);
INSERT INTO `cd_log` VALUES (309543, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '211.97.7.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1634097082, 1, NULL);
INSERT INTO `cd_log` VALUES (309544, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.82.126.57', 'Mozilla/5.0 (Linux; Android 10; VOG-AL00 Build/HUAWEIVOG-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1634100374, 1, NULL);
INSERT INTO `cd_log` VALUES (309545, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '60.173.201.27', 'Mozilla/5.0 (Linux; Android 11; GM1910 Build/RKQ1.201022.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI ', NULL, NULL, 1634102148, 1, NULL);
INSERT INTO `cd_log` VALUES (309546, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '36.96.67.183', 'Mozilla/5.0 (Linux; U; Android 9; zh-cn; VKY-AL00 Build/HUAWEIVKY-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/12.0 Mobile Safari/537.36 COVC/045817', NULL, NULL, 1634105459, 1, NULL);
INSERT INTO `cd_log` VALUES (309547, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.14.231.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634111991, 1, NULL);
INSERT INTO `cd_log` VALUES (309548, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.14.231.142', 'Mozilla/5.0 (Linux; Android 11; Redmi K30 Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WI', NULL, NULL, 1634112077, 1, NULL);
INSERT INTO `cd_log` VALUES (309549, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.14.231.142', 'Mozilla/5.0 (Linux; Android 11; Redmi K30 Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WI', NULL, NULL, 1634112089, 1, NULL);
INSERT INTO `cd_log` VALUES (309550, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.202.132.155', 'Mozilla/5.0 (Linux; Android 10; AKA-AL10 Build/HONORAKA-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045410 Mobile Safari/537.36 V1_AND_SQ_8.0.8_9_RDM_B QQ/8.0.8.1075 NetType/WIFI WebP/0.3.0 Pix', NULL, NULL, 1634113958, 1, NULL);
INSERT INTO `cd_log` VALUES (309551, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.236.29.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 Edg/94.0.992.38', NULL, NULL, 1634114226, 1, NULL);
INSERT INTO `cd_log` VALUES (309552, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.85.17.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/18G82 QQ/8.8.33.634 V1_IPH_SQ_8.8.33_1_APP_A Pixel/828 MiniAppEnable SimpleUISwitch/0 StudyMode/0 CurrentMode/0 CurrentFontScale/1.000000 QQTheme', NULL, NULL, 1634114828, 1, NULL);
INSERT INTO `cd_log` VALUES (309553, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '60.13.131.22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634124928, 1, NULL);
INSERT INTO `cd_log` VALUES (309554, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '60.13.131.22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634124986, 1, NULL);
INSERT INTO `cd_log` VALUES (309555, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.196.210.26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634127495, 1, NULL);
INSERT INTO `cd_log` VALUES (309556, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634136530, 1, NULL);
INSERT INTO `cd_log` VALUES (309557, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.22.109.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', NULL, NULL, 1634171435, 1, NULL);
INSERT INTO `cd_log` VALUES (309558, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.129.36.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.47', NULL, NULL, 1634171621, 1, NULL);
INSERT INTO `cd_log` VALUES (309559, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.214.164.243', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', NULL, NULL, 1634173594, 1, NULL);
INSERT INTO `cd_log` VALUES (309560, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.175.86.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634175195, 1, NULL);
INSERT INTO `cd_log` VALUES (309561, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.225.16.43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634178854, 1, NULL);
INSERT INTO `cd_log` VALUES (309562, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '221.4.169.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.47', NULL, NULL, 1634180529, 1, NULL);
INSERT INTO `cd_log` VALUES (309563, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '220.173.38.60', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 Edg/94.0.992.38', NULL, NULL, 1634182818, 1, NULL);
INSERT INTO `cd_log` VALUES (309564, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '185.212.59.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.47', NULL, NULL, 1634184253, 1, NULL);
INSERT INTO `cd_log` VALUES (309565, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '58.215.219.118', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', NULL, NULL, 1634190465, 1, NULL);
INSERT INTO `cd_log` VALUES (309566, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '140.207.154.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634193671, 1, NULL);
INSERT INTO `cd_log` VALUES (309567, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.48.20.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634205622, 1, NULL);
INSERT INTO `cd_log` VALUES (309568, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '223.104.20.100', 'Mozilla/5.0 (Linux; Android 10; BMH-AN20 Build/HUAWEIBMH-AN20; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045710 Mobile Safari/537.36 V1_AND_SQ_8.3.9_341_TIM_D QQ/3.4.1.3028 NetType/4G WebP/0.3.0 Pi', NULL, NULL, 1634205625, 1, NULL);
INSERT INTO `cd_log` VALUES (309569, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.36.17.251', 'Mozilla/5.0 (Linux; Android 11; M2011K2C Build/RKQ1.200928.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIF', NULL, NULL, 1634206203, 1, NULL);
INSERT INTO `cd_log` VALUES (309570, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '61.242.58.162', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1634206278, 1, NULL);
INSERT INTO `cd_log` VALUES (309571, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.86.105.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', NULL, NULL, 1634206316, 1, NULL);
INSERT INTO `cd_log` VALUES (309572, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.190.120.51', 'Mozilla/5.0 (Linux; Android 11; JLH-AN00 Build/HONORJLH-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI ', NULL, NULL, 1634206526, 1, NULL);
INSERT INTO `cd_log` VALUES (309573, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.190.120.51', 'Mozilla/5.0 (Linux; Android 11; JLH-AN00 Build/HONORJLH-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI ', NULL, NULL, 1634206543, 1, NULL);
INSERT INTO `cd_log` VALUES (309574, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.136.40.191', 'Mozilla/5.0 (Linux; Android 10; VOG-AL10 Build/HUAWEIVOG-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G W', NULL, NULL, 1634206817, 1, NULL);
INSERT INTO `cd_log` VALUES (309575, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '112.96.58.159', 'Mozilla/5.0 (Linux; Android 11; M2012K10C Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G', NULL, NULL, 1634206871, 1, NULL);
INSERT INTO `cd_log` VALUES (309576, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.143.209.73', 'Mozilla/5.0 (Linux; Android 11; V2141A Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G We', NULL, NULL, 1634207284, 1, NULL);
INSERT INTO `cd_log` VALUES (309577, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634211652, 1, NULL);
INSERT INTO `cd_log` VALUES (309578, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '58.62.164.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1634213126, 1, NULL);
INSERT INTO `cd_log` VALUES (309579, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '114.87.111.86', 'Mozilla/5.0 (Linux; Android 11; M2007J1SC Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G', NULL, NULL, 1634213313, 1, NULL);
INSERT INTO `cd_log` VALUES (309580, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '223.89.10.250', 'Mozilla/5.0 (Linux; Android 11; Mi 10 Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045818 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI W', NULL, NULL, 1634214605, 1, NULL);
INSERT INTO `cd_log` VALUES (309581, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.196.210.26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634219182, 1, NULL);
INSERT INTO `cd_log` VALUES (309582, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '223.166.104.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634219676, 1, NULL);
INSERT INTO `cd_log` VALUES (309583, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.154.211.190', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634220860, 1, NULL);
INSERT INTO `cd_log` VALUES (309584, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.180.19.221', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634255886, 1, NULL);
INSERT INTO `cd_log` VALUES (309585, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.61.31.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634257812, 1, NULL);
INSERT INTO `cd_log` VALUES (309586, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.31.255.3', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.0.8793 Safari/537.36', NULL, NULL, 1634261729, 1, NULL);
INSERT INTO `cd_log` VALUES (309587, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.149.51.249', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634262529, 1, NULL);
INSERT INTO `cd_log` VALUES (309588, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.240.44.179', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, 1634263204, 1, NULL);
INSERT INTO `cd_log` VALUES (309589, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.175.86.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634263805, 1, NULL);
INSERT INTO `cd_log` VALUES (309590, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '125.41.175.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, 1634264392, 1, NULL);
INSERT INTO `cd_log` VALUES (309591, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.92.194.141', 'Mozilla/5.0 (Linux; Android 10; M2006J10C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G', NULL, NULL, 1634268505, 1, NULL);
INSERT INTO `cd_log` VALUES (309592, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.92.194.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634268560, 1, NULL);
INSERT INTO `cd_log` VALUES (309593, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.231.188.161', 'Mozilla/5.0 (Linux; Android 11; RMX2173 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1634268668, 1, NULL);
INSERT INTO `cd_log` VALUES (309594, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.235.118.50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634275516, 1, NULL);
INSERT INTO `cd_log` VALUES (309595, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.20.66.66', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634279801, 1, NULL);
INSERT INTO `cd_log` VALUES (309596, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.6.114.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, NULL, 1634282666, 1, NULL);
INSERT INTO `cd_log` VALUES (309597, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.204.112.38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63030532)', NULL, NULL, 1634283264, 1, NULL);
INSERT INTO `cd_log` VALUES (309598, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.204.112.38', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Mobile Safari/537.36', NULL, NULL, 1634283979, 1, NULL);
INSERT INTO `cd_log` VALUES (309599, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '182.148.58.51', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634285243, 1, NULL);
INSERT INTO `cd_log` VALUES (309600, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.152.203.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1634285313, 1, NULL);
INSERT INTO `cd_log` VALUES (309601, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '14.25.170.70', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634290599, 1, NULL);
INSERT INTO `cd_log` VALUES (309602, 'supplier', 'qianji', 'http://vue2.whpj.vip/supplier/Login/index.html', '14.25.170.70', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634291253, 1, NULL);
INSERT INTO `cd_log` VALUES (309603, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.175.86.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634292135, 1, NULL);
INSERT INTO `cd_log` VALUES (309604, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.154.211.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', NULL, NULL, 1634292208, 1, NULL);
INSERT INTO `cd_log` VALUES (309605, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '222.211.25.156', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634301384, 1, NULL);
INSERT INTO `cd_log` VALUES (309606, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634305547, 1, NULL);
INSERT INTO `cd_log` VALUES (309607, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.32.91.179', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', NULL, NULL, 1634306286, 1, NULL);
INSERT INTO `cd_log` VALUES (309608, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.189.121.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', NULL, NULL, 1634307245, 1, NULL);
INSERT INTO `cd_log` VALUES (309609, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.80.106.220', 'Mozilla/5.0 (Linux; Android 10; VOG-AL10 Build/HUAWEIVOG-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1634309523, 1, NULL);
INSERT INTO `cd_log` VALUES (309610, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Linux; Android 10; BMH-AN20 Build/HUAWEIBMH-AN20; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045710 Mobile Safari/537.36 V1_AND_SQ_8.3.9_341_TIM_D QQ/3.4.1.3028 NetType/WIFI WebP/0.3.0 ', NULL, NULL, 1634310836, 1, NULL);
INSERT INTO `cd_log` VALUES (309611, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Linux; Android 10; BMH-AN20 Build/HUAWEIBMH-AN20; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045710 Mobile Safari/537.36 V1_AND_SQ_8.3.9_341_TIM_D QQ/3.4.1.3028 NetType/WIFI WebP/0.3.0 ', NULL, NULL, 1634310851, 1, NULL);
INSERT INTO `cd_log` VALUES (309612, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.11.21.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634312068, 1, NULL);
INSERT INTO `cd_log` VALUES (309613, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '114.87.111.86', 'Mozilla/5.0 (Linux; Android 11; M2007J1SC Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G', NULL, NULL, 1634313633, 1, NULL);
INSERT INTO `cd_log` VALUES (309614, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.230.51.142', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634314908, 1, NULL);
INSERT INTO `cd_log` VALUES (309615, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '59.42.108.186', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 MQQBrowser/12.0.1 Mobile/15E148 Safari/604.1 QBWebViewUA/2 QBWebViewType/1 WKType/1', NULL, NULL, 1634322582, 1, NULL);
INSERT INTO `cd_log` VALUES (309616, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '223.104.39.157', 'Mozilla/5.0 (Linux; Android 11; V1824A Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36 V1_AND_SQ_8.3.9_341_TIM_D QQ/3.4.1.3028 NetType/4G WebP/0.4.1 Pixel/1080 StatusBarHeight/84', NULL, NULL, 1634340081, 1, NULL);
INSERT INTO `cd_log` VALUES (309617, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.204.201.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/18G82 QQ/8.8.23.636 V1_IPH_SQ_8.8.23_1_APP_A Pixel/1080 MiniAppEnable SimpleUISwitch/0 StudyMode/0 CurrentMode/0 CurrentFontScale/1.000000 QQThem', NULL, NULL, 1634340312, 1, NULL);
INSERT INTO `cd_log` VALUES (309618, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.53.154.127', 'Mozilla/5.0 (Linux; Android 10; YOK-AN10 Build/HONORYOR-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI ', NULL, NULL, 1634343179, 1, NULL);
INSERT INTO `cd_log` VALUES (309619, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '103.238.35.14', 'Mozilla/5.0 (Linux; Android 10; M2007J22C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.28_2092_YYB_D A_8082800 QQ/8.8.28.6155 NetType/WI', NULL, NULL, 1634343952, 1, NULL);
INSERT INTO `cd_log` VALUES (309620, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '103.238.35.14', 'Mozilla/5.0 (Linux; Android 10; M2007J22C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.28_2092_YYB_D A_8082800 QQ/8.8.28.6155 NetType/WI', NULL, NULL, 1634343963, 1, NULL);
INSERT INTO `cd_log` VALUES (309621, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '106.39.151.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', NULL, NULL, 1634352867, 1, NULL);
INSERT INTO `cd_log` VALUES (309622, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '182.141.81.28', 'Mozilla/5.0 (Linux; Android 10; JEF-AN20 Build/HUAWEIJEF-AN20; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1634353031, 1, NULL);
INSERT INTO `cd_log` VALUES (309623, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.235.235.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, 1634353520, 1, NULL);
INSERT INTO `cd_log` VALUES (309624, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.139.238.242', 'Mozilla/5.0 (Linux; Android 11; Mi 10 Pro Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WI', NULL, NULL, 1634356894, 1, NULL);
INSERT INTO `cd_log` VALUES (309625, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.230.51.81', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634364485, 1, NULL);
INSERT INTO `cd_log` VALUES (309626, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.22.110.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', NULL, NULL, 1634364577, 1, NULL);
INSERT INTO `cd_log` VALUES (309627, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '58.100.105.75', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/19A348 QQ/8.8.34.622 V1_IPH_SQ_8.8.34_1_APP_A Pixel/1170 MiniAppEnable SimpleUISwitch/1 StudyMode/0 CurrentMode/1 CurrentFontScale/1.000000 QQThe', NULL, NULL, 1634365813, 1, NULL);
INSERT INTO `cd_log` VALUES (309628, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.225.16.43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634365985, 1, NULL);
INSERT INTO `cd_log` VALUES (309629, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.152.203.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1634366806, 1, NULL);
INSERT INTO `cd_log` VALUES (309630, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '175.160.157.146', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', NULL, NULL, 1634367491, 1, NULL);
INSERT INTO `cd_log` VALUES (309631, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.36.17.196', 'Mozilla/5.0 (Linux; Android 11; M2011K2C Build/RKQ1.200928.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045818 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIF', NULL, NULL, 1634368532, 1, NULL);
INSERT INTO `cd_log` VALUES (309632, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.22.110.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', NULL, NULL, 1634370256, 1, NULL);
INSERT INTO `cd_log` VALUES (309633, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '36.4.103.6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50', NULL, NULL, 1634370976, 1, NULL);
INSERT INTO `cd_log` VALUES (309634, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.115.63.89', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634375710, 1, NULL);
INSERT INTO `cd_log` VALUES (309635, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.10.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634384635, 1, NULL);
INSERT INTO `cd_log` VALUES (309636, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.180.19.221', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634385141, 1, NULL);
INSERT INTO `cd_log` VALUES (309637, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '120.230.203.239', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634393030, 1, NULL);
INSERT INTO `cd_log` VALUES (309638, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.232.32.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634398868, 1, NULL);
INSERT INTO `cd_log` VALUES (309639, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.196.210.26', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634438007, 1, NULL);
INSERT INTO `cd_log` VALUES (309640, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '61.159.124.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634441848, 1, NULL);
INSERT INTO `cd_log` VALUES (309641, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.215.222.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634442461, 1, NULL);
INSERT INTO `cd_log` VALUES (309642, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.209.63.186', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634447559, 1, NULL);
INSERT INTO `cd_log` VALUES (309643, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Selectpage/add', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"这是测试下拉框分页\",\"field_id\":3801}', NULL, 1634462993, 2, NULL);
INSERT INTO `cd_log` VALUES (309644, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Selectpage/add', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"测试2\",\"field_id\":3620}', NULL, 1634463002, 2, NULL);
INSERT INTO `cd_log` VALUES (309645, 'admin', NULL, 'http://vue2.whpj.vip/admin/Selectpage/getMember_id', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vue2.cd_member\' doesn\'t exist', 1634463337, 3, NULL);
INSERT INTO `cd_log` VALUES (309646, 'admin', NULL, 'http://vue2.whpj.vip/admin/Selectpage/getMember_id', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vue2.cd_member\' doesn\'t exist', 1634463339, 3, NULL);
INSERT INTO `cd_log` VALUES (309647, 'admin', NULL, 'http://vue2.whpj.vip/admin/Selectpage/getMember_id', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vue2.cd_member\' doesn\'t exist', 1634463349, 3, NULL);
INSERT INTO `cd_log` VALUES (309648, 'admin', NULL, 'http://vue2.whpj.vip/admin/Selectpage/getMember_id', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'member_id\' in \'field list\'', 1634463378, 3, NULL);
INSERT INTO `cd_log` VALUES (309649, 'admin', NULL, 'http://vue2.whpj.vip/admin/Selectpage/getMember_id', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'member_id\' in \'field list\'', 1634463379, 3, NULL);
INSERT INTO `cd_log` VALUES (309650, 'admin', NULL, 'http://vue2.whpj.vip/admin/Selectpage/getMember_id', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"limit\":20,\"page\":1}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'member_id\' in \'field list\'', 1634463385, 3, NULL);
INSERT INTO `cd_log` VALUES (309651, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Selectpage/update', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"selectpage_id\":2,\"title\":\"测试2\",\"member_id\":26}', NULL, 1634463419, 2, NULL);
INSERT INTO `cd_log` VALUES (309652, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Selectpage/update', '171.113.180.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"selectpage_id\":1,\"title\":\"这是测试下拉框分页\",\"member_id\":28}', NULL, 1634463422, 2, NULL);
INSERT INTO `cd_log` VALUES (309653, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '117.136.52.193', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; BMH-AN20; HMSCore 6.1.0.314) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.93 HuaweiBrowser/11.1.5.310 Mobile Safari/537.36', NULL, NULL, 1634464846, 1, NULL);
INSERT INTO `cd_log` VALUES (309654, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '103.63.155.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36', NULL, NULL, 1634466378, 1, NULL);
INSERT INTO `cd_log` VALUES (309655, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.48.47.254', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634471413, 1, NULL);
INSERT INTO `cd_log` VALUES (309656, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '106.39.151.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', NULL, NULL, 1634471672, 1, NULL);
INSERT INTO `cd_log` VALUES (309657, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '61.159.124.83', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1634485170, 1, NULL);
INSERT INTO `cd_log` VALUES (309658, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '61.159.124.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634485289, 1, NULL);
INSERT INTO `cd_log` VALUES (309659, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.235.202.254', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634495818, 1, NULL);
INSERT INTO `cd_log` VALUES (309660, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '116.20.65.233', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634518557, 1, NULL);
INSERT INTO `cd_log` VALUES (309661, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.175.86.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634519995, 1, NULL);
INSERT INTO `cd_log` VALUES (309662, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.193.80.227', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', NULL, NULL, 1634522342, 1, NULL);
INSERT INTO `cd_log` VALUES (309663, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '59.46.230.170', 'Mozilla/5.0 (Linux; Android 10; ANG-AN00 Build/HUAWEIANG-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/WIFI', NULL, NULL, 1634525657, 1, NULL);
INSERT INTO `cd_log` VALUES (309664, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.144.137.80', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', NULL, NULL, 1634541714, 1, NULL);
INSERT INTO `cd_log` VALUES (309665, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '113.108.127.22', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3877.400 QQBrowser/10.8.4506.400', NULL, NULL, 1634542007, 1, NULL);
INSERT INTO `cd_log` VALUES (309666, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '39.152.203.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1634545595, 1, NULL);
INSERT INTO `cd_log` VALUES (309667, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '182.87.83.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634546168, 1, NULL);
INSERT INTO `cd_log` VALUES (309668, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '14.28.164.211', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634546755, 1, NULL);
INSERT INTO `cd_log` VALUES (309669, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '121.34.33.26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634552445, 1, NULL);
INSERT INTO `cd_log` VALUES (309670, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '123.123.220.25', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, NULL, 1634569808, 1, NULL);
INSERT INTO `cd_log` VALUES (309671, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.113.180.81', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; BMH-AN20; HMSCore 6.1.0.314) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.93 HuaweiBrowser/11.1.5.310 Mobile Safari/537.36', NULL, NULL, 1634570933, 1, NULL);
INSERT INTO `cd_log` VALUES (309672, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '115.60.130.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634603350, 1, NULL);
INSERT INTO `cd_log` VALUES (309673, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '125.41.230.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', NULL, NULL, 1634609417, 1, NULL);
INSERT INTO `cd_log` VALUES (309674, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.183.61.132', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, NULL, 1634611192, 1, NULL);
INSERT INTO `cd_log` VALUES (309675, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '36.249.111.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50', NULL, NULL, 1634611698, 1, NULL);
INSERT INTO `cd_log` VALUES (309676, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '124.126.138.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', NULL, NULL, 1634614225, 1, NULL);
INSERT INTO `cd_log` VALUES (309677, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '183.67.56.160', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 QQ/8.8.29.603 V1_IPH_SQ_8.8.29_1_APP_A Pixel/1284 MiniAppEnable SimpleUISwitch/1 StudyMode/0 CurrentMode/1 CurrentFontScale/1.000000 QQThe', NULL, NULL, 1634617916, 1, NULL);
INSERT INTO `cd_log` VALUES (309678, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '58.247.101.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, 1634623989, 1, NULL);
INSERT INTO `cd_log` VALUES (309679, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '171.218.32.226', 'Mozilla/5.0 (Linux; Android 11; M2011K2C Build/RKQ1.200928.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/045814 Mobile Safari/537.36 V1_AND_SQ_8.8.33_2150_YYB_D A_8083300 QQ/8.8.33.6300 NetType/4G ', NULL, NULL, 1634632812, 1, NULL);
INSERT INTO `cd_log` VALUES (309680, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '111.181.45.190', 'Mozilla/5.0 (Linux; Android 10; BMH-AN20 Build/HUAWEIBMH-AN20; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045713 Mobile Safari/537.36 MMWEBID/3257 MicroMessenger/8.0.11.1980(0x28000B59) Process/tool', NULL, NULL, 1634633593, 1, NULL);
INSERT INTO `cd_log` VALUES (309681, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '101.204.7.180', 'Mozilla/5.0 (Linux; U; Android 11; zh-cn; M2011K2C Build/RKQ1.200928.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.116 Mobile Safari/537.36 XiaoMi/MiuiBrowser/15.3.10', NULL, NULL, 1634635387, 1, NULL);
INSERT INTO `cd_log` VALUES (309682, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '101.204.7.180', 'Mozilla/5.0 (Linux; Android 11; M2011K2C Build/RKQ1.200928.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045735 Mobile Safari/537.36 wxwork/3.1.18 ColorScheme/Light MicroMessenger/7.0.1 NetType/WI', NULL, NULL, 1634635462, 1, NULL);
INSERT INTO `cd_log` VALUES (309683, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '101.204.7.180', 'Mozilla/5.0 (Linux; U; Android 11; zh-cn; M2011K2C Build/RKQ1.200928.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.116 Mobile Safari/537.36 XiaoMi/MiuiBrowser/15.3.10', NULL, NULL, 1634635701, 1, NULL);
INSERT INTO `cd_log` VALUES (309684, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '118.249.140.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634640212, 1, NULL);
INSERT INTO `cd_log` VALUES (309685, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '1.80.117.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X -1_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, NULL, 1634640216, 1, NULL);
INSERT INTO `cd_log` VALUES (309686, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '42.92.86.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', NULL, NULL, 1634640223, 1, NULL);
INSERT INTO `cd_log` VALUES (309687, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '110.184.71.98', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.15(0x18000f28) NetType/WIFI Language/zh_CN', NULL, NULL, 1634640364, 1, NULL);
INSERT INTO `cd_log` VALUES (309688, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '61.140.196.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', NULL, NULL, 1634649269, 1, NULL);
INSERT INTO `cd_log` VALUES (309689, 'admin', 'admin', 'http://vue2.whpj.vip/admin/Login/index.html', '106.39.151.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', NULL, NULL, 1634652480, 1, NULL);
INSERT INTO `cd_log` VALUES (309690, 'admin', 'admin', 'http://vuecms.me/admin/Goods/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"goods_id\":5,\"goods_name\":\"九牧 JOMOO 不锈钢上水头编织软管 花洒喷头耐热防爆淋浴软管 H2BE2\",\"class_id\":2,\"supplier_id\":1,\"pic\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d7d47a10.jpg\",\"sale_price\":\"445.00\",\"images\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af9200b555c.jpg\",\"name\":\"5ff40b8d7fbd2.jpg\"},{\"url\":\"\\/uploads\\/admin\\/202110\\/61627c797917c.png\",\"name\":\"5ff5dfbd5b60a.png\"}],\"status\":1,\"cd\":\"\",\"store\":0,\"sortid\":5,\"create_time\":\"2021-10-10 16:05:13\",\"detail\":\"<p>fdfdfdfdfdfd<\\/p>\",\"user_id\":null}', NULL, 1634654284, 2, NULL);
INSERT INTO `cd_log` VALUES (309691, 'admin', 'admin', 'http://vuecms.me/admin/Node/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":\"1,5,4,3,23,24,25,7,8,9,27,6,11,12,13,10,15,16,14,18,19,20,21,26,17\"}', NULL, 1634657847, 2, NULL);
INSERT INTO `cd_log` VALUES (309692, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":22,\"title\":\"首页\",\"type\":1,\"component_path\":\"\\/admin\\/Index\\/main.html\",\"status\":1,\"icon\":\"el-icon-s-home\",\"sortid\":0}', NULL, 1634657959, 2, NULL);
INSERT INTO `cd_log` VALUES (309693, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"会员管理\",\"type\":1,\"component_path\":\"\\/admin\\/Membe\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634657994, 2, NULL);
INSERT INTO `cd_log` VALUES (309694, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"表单输入框\",\"type\":1,\"component_path\":\"\\/admin\\/Form\",\"status\":1,\"icon\":\"\"}', NULL, 1634658074, 2, NULL);
INSERT INTO `cd_log` VALUES (309695, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"编辑器\",\"type\":1,\"component_path\":\"\\/admin\\/Editor\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":29}', NULL, 1634658169, 2, NULL);
INSERT INTO `cd_log` VALUES (309696, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"地图组件\",\"type\":1,\"component_path\":\"\\/admin\\/Map\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":29}', NULL, 1634658194, 2, NULL);
INSERT INTO `cd_log` VALUES (309697, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"上传组件\",\"type\":1,\"component_path\":\"\\/admin\\/Uploadfile\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":29}', NULL, 1634658217, 2, NULL);
INSERT INTO `cd_log` VALUES (309698, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"其他组件\",\"type\":1,\"component_path\":\"\\/admin\\/Other\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":29}', NULL, 1634658244, 2, NULL);
INSERT INTO `cd_log` VALUES (309699, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"时间格式\",\"type\":1,\"component_path\":\"\\/admin\\/Time\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":29}', NULL, 1634658270, 2, NULL);
INSERT INTO `cd_log` VALUES (309700, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"下拉框分页\",\"type\":1,\"component_path\":\"\\/admin\\/Selectpage\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":29}', NULL, 1634658291, 2, NULL);
INSERT INTO `cd_log` VALUES (309701, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"商品管理\",\"type\":1,\"component_path\":\"\\/admin\\/Goods\",\"status\":1,\"icon\":\"\"}', NULL, 1634658320, 2, NULL);
INSERT INTO `cd_log` VALUES (309702, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"商品分类\",\"type\":1,\"component_path\":\"\\/admin\\/Goodscata\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":36}', NULL, 1634658346, 2, NULL);
INSERT INTO `cd_log` VALUES (309703, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"供应商管理\",\"type\":1,\"component_path\":\"\\/admin\\/Supplier\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":36}', NULL, 1634658370, 2, NULL);
INSERT INTO `cd_log` VALUES (309704, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"商品管理\",\"type\":1,\"component_path\":\"\\/admin\\/Goods\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":36}', NULL, 1634658393, 2, NULL);
INSERT INTO `cd_log` VALUES (309705, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"侧栏效果演示\",\"type\":1,\"component_path\":\"\\/admin\\/Celan\",\"status\":1,\"icon\":\"\",\"pid\":36}', NULL, 1634658428, 2, NULL);
INSERT INTO `cd_log` VALUES (309706, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":40,\"title\":\"侧栏效果演示\",\"type\":1,\"component_path\":\"\\/admin\\/Celan\",\"status\":1,\"icon\":\"\",\"sortid\":40}', NULL, 1634658439, 2, NULL);
INSERT INTO `cd_log` VALUES (309707, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":40,\"title\":\"侧栏效果演示\",\"type\":1,\"component_path\":\"\\/admin\\/Celan\",\"status\":1,\"icon\":\"\",\"sortid\":40}', NULL, 1634658445, 2, NULL);
INSERT INTO `cd_log` VALUES (309708, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":40,\"title\":\"侧栏效果演示\",\"type\":1,\"component_path\":\"\\/admin\\/Celan\",\"status\":1,\"icon\":\"\",\"sortid\":40}', NULL, 1634658456, 2, NULL);
INSERT INTO `cd_log` VALUES (309709, 'admin', 'admin', 'http://vuecms.me/admin/Node/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":40}', NULL, 1634658469, 2, NULL);
INSERT INTO `cd_log` VALUES (309710, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"侧栏效果演示\",\"type\":1,\"component_path\":\"\\/admin\\/Celan\",\"status\":1,\"icon\":\"\"}', NULL, 1634658485, 2, NULL);
INSERT INTO `cd_log` VALUES (309711, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"友情链接分类\",\"type\":1,\"component_path\":\"\\/admin\\/Link.Linkcata\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":41}', NULL, 1634658538, 2, NULL);
INSERT INTO `cd_log` VALUES (309712, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"友情链接\",\"type\":1,\"component_path\":\"\\/admin\\/Link.Link\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":41}', NULL, 1634658570, 2, NULL);
INSERT INTO `cd_log` VALUES (309713, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"批量操作演示\",\"type\":1,\"component_path\":\"\\/admin\\/Batch\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658597, 2, NULL);
INSERT INTO `cd_log` VALUES (309714, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"字段联动演示\",\"type\":1,\"component_path\":\"\\/admin\\/Liandong\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658629, 2, NULL);
INSERT INTO `cd_log` VALUES (309715, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"CMS管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Catagory\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658708, 2, NULL);
INSERT INTO `cd_log` VALUES (309716, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"栏目管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Catagory\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658724, 2, NULL);
INSERT INTO `cd_log` VALUES (309717, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":47,\"pid\":46,\"title\":\"栏目管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Catagory\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":47}', NULL, 1634658729, 2, NULL);
INSERT INTO `cd_log` VALUES (309718, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":46,\"pid\":null,\"title\":\"CMS管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms\",\"status\":1,\"icon\":\"\",\"sortid\":46}', NULL, 1634658735, 2, NULL);
INSERT INTO `cd_log` VALUES (309719, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"文章管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Content\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658768, 2, NULL);
INSERT INTO `cd_log` VALUES (309720, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":48,\"pid\":46,\"title\":\"文章管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Content\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":48}', NULL, 1634658774, 2, NULL);
INSERT INTO `cd_log` VALUES (309721, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"碎片管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Frament\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":46}', NULL, 1634658795, 2, NULL);
INSERT INTO `cd_log` VALUES (309722, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"推荐位管理\",\"type\":1,\"component_path\":\"\\/admin\\/Cms.Position\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":46}', NULL, 1634658832, 2, NULL);
INSERT INTO `cd_log` VALUES (309723, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"配置管理\",\"type\":1,\"component_path\":\"\\/admin\\/Sys\",\"status\":1,\"icon\":\"\"}', NULL, 1634658864, 2, NULL);
INSERT INTO `cd_log` VALUES (309724, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"基本配置\",\"type\":1,\"component_path\":\"\\/admin\\/Baseconfig\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658889, 2, NULL);
INSERT INTO `cd_log` VALUES (309725, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":52,\"pid\":51,\"title\":\"基本配置\",\"type\":1,\"component_path\":\"\\/admin\\/Baseconfig\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":52}', NULL, 1634658898, 2, NULL);
INSERT INTO `cd_log` VALUES (309726, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"缩略图配置\",\"type\":1,\"component_path\":\"\\/admin\\/Uploadconfig\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634658925, 2, NULL);
INSERT INTO `cd_log` VALUES (309727, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":53,\"pid\":51,\"title\":\"缩略图配置\",\"type\":1,\"component_path\":\"\\/admin\\/Uploadconfig\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":53}', NULL, 1634658949, 2, NULL);
INSERT INTO `cd_log` VALUES (309728, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"节点管理\",\"type\":1,\"component_path\":\"\\/admin\\/Node\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634659019, 2, NULL);
INSERT INTO `cd_log` VALUES (309729, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":51,\"pid\":null,\"title\":\"配置管理\",\"type\":1,\"component_path\":\"\\/admin\\/Config\",\"status\":1,\"icon\":\"\",\"sortid\":51}', NULL, 1634659033, 2, NULL);
INSERT INTO `cd_log` VALUES (309730, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"系统管理\",\"type\":1,\"component_path\":\"\\/admin\\/Sys\",\"status\":1,\"icon\":\"\"}', NULL, 1634659081, 2, NULL);
INSERT INTO `cd_log` VALUES (309731, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"用户管理\",\"type\":1,\"component_path\":\"\\/admin\\/Adminuser\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634659104, 2, NULL);
INSERT INTO `cd_log` VALUES (309732, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":56,\"pid\":55,\"title\":\"用户管理\",\"type\":1,\"component_path\":\"\\/admin\\/Adminuser\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":56}', NULL, 1634659110, 2, NULL);
INSERT INTO `cd_log` VALUES (309733, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"角色管理\",\"type\":1,\"component_path\":\"\\/admin\\/Role\\/index.html\",\"status\":1,\"icon\":\"\"}', NULL, 1634659137, 2, NULL);
INSERT INTO `cd_log` VALUES (309734, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":57,\"pid\":55,\"title\":\"角色管理\",\"type\":1,\"component_path\":\"\\/admin\\/Role\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":57}', NULL, 1634659143, 2, NULL);
INSERT INTO `cd_log` VALUES (309735, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"title\":\"日志管理\",\"type\":1,\"component_path\":\"\\/admin\\/Log\\/index.html\",\"status\":1,\"icon\":\"\",\"pid\":55}', NULL, 1634659163, 2, NULL);
INSERT INTO `cd_log` VALUES (309736, 'admin', 'admin', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634782640, 1, NULL);
INSERT INTO `cd_log` VALUES (309737, 'admin', NULL, 'http://vuecms.me/admin/Sys.Base/updateField', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"id\":4440,\"menu_id\":1051,\"title\":\"\\u8282\\u70b9\\u8def\\u5f84\",\"field\":\"path\",\"type\":1,\"list_show\":3,\"search_type\":1,\"post_status\":1,\"create_table_field\":1,\"validate\":[\"\"],\"rule\":null,\"sortid\":5,\"sql\":null,\"default_value\":null,\"datatype\":\"varchar\",\"length\":\"250\",\"indexdata\":null,\"show_condition\":null,\"item_config\":[],\"width\":null,\"datetime_config\":null,\"other_config\":[],\"belong_table\":null}', 'SQLSTATE[42S21]: Column already exists: 1060 Duplicate column name \'path\'', 1634784563, 3, NULL);
INSERT INTO `cd_log` VALUES (309738, 'admin', NULL, 'http://vuecms.me/admin/Base/getMenu', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'id\' in \'field list\'', 1634785739, 3, NULL);
INSERT INTO `cd_log` VALUES (309739, 'admin', NULL, 'http://vuecms.me/admin/Base/getMenu', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'id\' in \'field list\'', 1634785748, 3, NULL);
INSERT INTO `cd_log` VALUES (309740, 'admin', NULL, 'http://vuecms.me/admin/Base/getMenu', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'node_id\' in \'field list\'', 1634785789, 3, NULL);
INSERT INTO `cd_log` VALUES (309741, 'admin', NULL, 'http://vuecms.me/admin/Base/getMenu', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'url\' in \'field list\'', 1634785810, 3, NULL);
INSERT INTO `cd_log` VALUES (309742, 'admin', NULL, 'http://vuecms.me/admin/Base/getRoleMenus', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'url\' in \'field list\'', 1634793901, 3, NULL);
INSERT INTO `cd_log` VALUES (309743, 'admin', NULL, 'http://vuecms.me/admin/Base/getRoleMenus', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'url\' in \'field list\'', 1634793922, 3, NULL);
INSERT INTO `cd_log` VALUES (309744, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"title\":\"\\/admin\\/Membe\\/add.html\",\"type\":2,\"path\":\"\",\"status\":1,\"icon\":\"\",\"pid\":28}', NULL, 1634794452, 2, NULL);
INSERT INTO `cd_log` VALUES (309745, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"node_id\":59,\"pid\":28,\"title\":\"添加\",\"type\":2,\"path\":\"\\/admin\\/Membe\\/add.html\",\"status\":1,\"icon\":\"\",\"sortid\":59}', NULL, 1634794464, 2, NULL);
INSERT INTO `cd_log` VALUES (309746, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"title\":\"修改\",\"type\":1,\"path\":\"\\/admin\\/Membe\\/update.html\",\"status\":1,\"icon\":\"\",\"pid\":28}', NULL, 1634794476, 2, NULL);
INSERT INTO `cd_log` VALUES (309747, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"node_id\":60,\"pid\":28,\"title\":\"修改\",\"type\":2,\"path\":\"\\/admin\\/Membe\\/update.html\",\"status\":1,\"icon\":\"\",\"sortid\":60}', NULL, 1634794481, 2, NULL);
INSERT INTO `cd_log` VALUES (309748, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"title\":\"删除\",\"type\":2,\"path\":\"\\/admin\\/Membe\\/delete.html\",\"status\":1,\"icon\":\"\",\"pid\":28}', NULL, 1634794510, 2, NULL);
INSERT INTO `cd_log` VALUES (309749, 'admin', 'admin', 'http://vuecms.me/admin/Role/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"role_id\":50,\"name\":\"运营\",\"status\":1,\"description\":\"\",\"access\":[\"\\/admin\\/Index\\/main.html\",\"\\/admin\\/Membe\\/index.html\",\"\\/admin\\/Membe\\/add.html\",\"\\/admin\\/Membe\\/update.html\",\"\\/admin\\/Membe\\/delete.html\"]}', NULL, 1634794668, 2, NULL);
INSERT INTO `cd_log` VALUES (309750, 'admin', 'test01', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634794701, 1, NULL);
INSERT INTO `cd_log` VALUES (309751, 'admin', 'admin', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634795751, 1, NULL);
INSERT INTO `cd_log` VALUES (309752, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"node_id\":54,\"title\":\"节点管理\",\"type\":1,\"path\":\"\\/admin\\/Node\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":54,\"pid\":55}', NULL, 1634795943, 2, NULL);
INSERT INTO `cd_log` VALUES (309753, 'admin', 'admin', 'http://vuecms.me/admin/Node/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"title\":\"内容模型\",\"type\":1,\"path\":\"\\/admin\\/Sys.Base\\/menu\",\"status\":1,\"icon\":\"\",\"pid\":46}', NULL, 1634796759, 2, NULL);
INSERT INTO `cd_log` VALUES (309754, 'admin', NULL, 'http://vuecms.me/admin/Car/index', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"limit\":20,\"page\":1,\"membe_id\":\"30\",\"jumpstate\":\"1\"}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_car\' doesn\'t exist', 1634799832, 3, NULL);
INSERT INTO `cd_log` VALUES (309755, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"node_id\":34,\"pid\":29,\"title\":\"时间格式\",\"type\":1,\"path\":\"\\/admin\\/Times\\/index.html\",\"status\":1,\"icon\":\"\",\"sortid\":34}', NULL, 1634800111, 2, NULL);
INSERT INTO `cd_log` VALUES (309756, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Catagory/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":21}', NULL, 1634801582, 2, NULL);
INSERT INTO `cd_log` VALUES (309757, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Catagory/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":20}', NULL, 1634801587, 2, NULL);
INSERT INTO `cd_log` VALUES (309758, 'index', NULL, 'http://vuecms.me/index', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_banner\' doesn\'t exist', 1634802397, 3, NULL);
INSERT INTO `cd_log` VALUES (309759, 'admin', 'admin', 'http://vuecms.me/admin/Link.Linkcata/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"linkcata_id\":4,\"class_name\":\"首页banner\",\"status\":1,\"jdt\":48}', NULL, 1634802794, 2, NULL);
INSERT INTO `cd_log` VALUES (309760, 'admin', 'admin', 'http://vuecms.me/admin/Link.Link/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"link_id\":1,\"title\":\"banner1\",\"url\":\"http:\\/\\/taobao.com\",\"linkcata_id\":4,\"logo\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af904d14069.jpg\",\"status\":1,\"sortid\":1,\"create_time\":\"2021-05-27 21:17:44\"}', NULL, 1634802850, 2, NULL);
INSERT INTO `cd_log` VALUES (309761, 'admin', 'admin', 'http://vuecms.me/admin/Link.Link/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"link_id\":1,\"title\":\"banner1\",\"url\":\"http:\\/\\/taobao.com\",\"linkcata_id\":4,\"logo\":\"\\/uploads\\/admin\\/202110\\/61711f28cc755.jpg\",\"status\":1,\"sortid\":1,\"create_time\":\"2021-05-27 21:17:44\"}', NULL, 1634803498, 2, NULL);
INSERT INTO `cd_log` VALUES (309762, 'admin', 'admin', 'http://vuecms.me/admin/Link.Link/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"link_id\":2,\"title\":\"banner2\",\"url\":\"http:\\/\\/souhu.com\",\"linkcata_id\":2,\"logo\":\"\\/uploads\\/admin\\/202110\\/61711f28cc755.jpg\",\"status\":1,\"sortid\":2,\"create_time\":\"2021-05-27 21:19:46\"}', NULL, 1634803513, 2, NULL);
INSERT INTO `cd_log` VALUES (309763, 'admin', 'admin', 'http://vuecms.me/admin/Link.Link/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"link_id\":1,\"title\":\"banner1\",\"url\":\"http:\\/\\/taobao.com\",\"linkcata_id\":4,\"logo\":\"\\/uploads\\/admin\\/202110\\/61711f3fd4789.jpg\",\"status\":1,\"sortid\":1,\"create_time\":\"2021-05-27 21:17:44\"}', NULL, 1634803520, 2, NULL);
INSERT INTO `cd_log` VALUES (309764, 'admin', 'admin', 'http://vuecms.me/admin/Link.Link/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"link_id\":2,\"title\":\"banner2\",\"url\":\"http:\\/\\/souhu.com\",\"linkcata_id\":4,\"logo\":\"\\/uploads\\/admin\\/202110\\/61711f28cc755.jpg\",\"status\":1,\"sortid\":2,\"create_time\":\"2021-05-27 21:19:46\"}', NULL, 1634803807, 2, NULL);
INSERT INTO `cd_log` VALUES (309765, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Frament/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"frament_id\":3,\"title\":\"首页联系我们\",\"content\":\"<p>深圳市XXX电子有限公司<\\/p><p>地址：深圳市福田区深南中路南光捷佳大厦<\\/p><p>电话：0755-8394383<\\/p><p>传真：0755-8300099<\\/p><p>邮箱：40529079@qq.com<\\/p>\"}', NULL, 1634803905, 2, NULL);
INSERT INTO `cd_log` VALUES (309766, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Frament/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"frament_id\":2,\"title\":\"底部版权\",\"content\":\"<p>Copyright 2005-2021 深圳XXX飞讯电子有限公司&nbsp; All rights reserved<br\\/><\\/p>\"}', NULL, 1634804057, 2, NULL);
INSERT INTO `cd_log` VALUES (309767, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Frament/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"frament_id\":1,\"title\":\"首页简介\"}', NULL, 1634804122, 2, NULL);
INSERT INTO `cd_log` VALUES (309768, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":74,\"title\":\"公司简介（自定义的内容模型）\",\"class_id\":7,\"pic\":\"\\/uploads\\/admin\\/201912\\/5df20c64cc022.jpg\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-10-29 14:24:58\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":74,\"views\":\"\"}', NULL, 1634804188, 2, NULL);
INSERT INTO `cd_log` VALUES (309769, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":25,\"title\":\"联系我们\",\"class_id\":12,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-03-17 19:45:05\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":25,\"views\":\"\"}', NULL, 1634804243, 2, NULL);
INSERT INTO `cd_log` VALUES (309770, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":23,\"title\":\"概论高清、网络化视频存储要求\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:56:27\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":23,\"views\":648}', NULL, 1634804492, 2, NULL);
INSERT INTO `cd_log` VALUES (309771, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":22,\"title\":\"英特尔收购QLogic旗下InfiniBand业务\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:56:34\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":22,\"views\":286}', NULL, 1634804496, 2, NULL);
INSERT INTO `cd_log` VALUES (309772, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":21,\"title\":\"LSI增强MgaRAID闪存卡更贴近超大规模环境\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:56:42\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":21,\"views\":117}', NULL, 1634804501, 2, NULL);
INSERT INTO `cd_log` VALUES (309773, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":20,\"title\":\"PMC亮相IDF 展示12G SAS分层存储方案\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:56:53\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":20,\"views\":72}', NULL, 1634804506, 2, NULL);
INSERT INTO `cd_log` VALUES (309774, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":19,\"title\":\"Emulex宣布最新产品将支持OCP开放计算项目\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:57:03\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":19,\"views\":33}', NULL, 1634804510, 2, NULL);
INSERT INTO `cd_log` VALUES (309775, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":18,\"title\":\"Emulex为惠普ProLiant交付16GFC夹层HBA\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:57:12\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":18,\"views\":24}', NULL, 1634804515, 2, NULL);
INSERT INTO `cd_log` VALUES (309776, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":17,\"title\":\"Emulex为戴尔PowerEdge提供高性能虚拟化和可扩展性\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:57:22\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":17,\"views\":26}', NULL, 1634804520, 2, NULL);
INSERT INTO `cd_log` VALUES (309777, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":16,\"title\":\"Emulex第五代FC HBA实现230万IOPS！\",\"class_id\":20,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-03-17 19:34:36\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":16,\"views\":51}', NULL, 1634804525, 2, NULL);
INSERT INTO `cd_log` VALUES (309778, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":27}', NULL, 1634804529, 2, NULL);
INSERT INTO `cd_log` VALUES (309779, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":28}', NULL, 1634804534, 2, NULL);
INSERT INTO `cd_log` VALUES (309780, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":72,\"title\":\"测试标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617125c9dc3be.jpg\",\"detail\":\"<p>测试内容<\\/p>\",\"status\":1,\"position\":[\"1\"],\"jumpurl\":\"\",\"create_time\":\"2019-05-01 11:59:04\",\"author\":\"admin\",\"keyword\":[],\"description\":\"\",\"sortid\":72,\"views\":218}', NULL, 1634805201, 2, NULL);
INSERT INTO `cd_log` VALUES (309781, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":68,\"title\":\"测试信息1\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617125d78c10d.jpg\",\"detail\":\"<p>当时都是多所<\\/p>\",\"status\":1,\"position\":[\"2\"],\"jumpurl\":\"\",\"create_time\":\"2018-01-01 08:33:39\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":68,\"views\":128}', NULL, 1634805208, 2, NULL);
INSERT INTO `cd_log` VALUES (309782, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":66,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617125dd86b5f.jpg\",\"detail\":\"\",\"status\":1,\"position\":[\"1\",\"2\"],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:43:34\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":66,\"views\":122}', NULL, 1634805214, 2, NULL);
INSERT INTO `cd_log` VALUES (309783, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":65,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617125e3d6b57.jpg\",\"detail\":\"\",\"status\":1,\"position\":[\"1\"],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:43:11\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":65,\"views\":36}', NULL, 1634805221, 2, NULL);
INSERT INTO `cd_log` VALUES (309784, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":64,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617125ec3fa76.jpg\",\"detail\":\"\",\"status\":1,\"position\":[\"1\"],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:39:47\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":64,\"views\":41}', NULL, 1634805229, 2, NULL);
INSERT INTO `cd_log` VALUES (309785, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":62,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617125fed958d.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:38:46\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":62,\"views\":22}', NULL, 1634805248, 2, NULL);
INSERT INTO `cd_log` VALUES (309786, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":61,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/6171260615257.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:38:23\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":61,\"views\":9}', NULL, 1634805255, 2, NULL);
INSERT INTO `cd_log` VALUES (309787, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":60,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/6171260da550e.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:37:40\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":60,\"views\":6}', NULL, 1634805262, 2, NULL);
INSERT INTO `cd_log` VALUES (309788, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":58,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/61712623f27a7.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 13:34:43\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":58,\"views\":10}', NULL, 1634805285, 2, NULL);
INSERT INTO `cd_log` VALUES (309789, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":57,\"title\":\"产品标题\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/6171262a6c418.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-04-23 12:22:25\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":57,\"views\":10}', NULL, 1634805291, 2, NULL);
INSERT INTO `cd_log` VALUES (309790, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":36,\"title\":\"LSI 9271-8i 阵列卡\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/617126559c0b1.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-03-17 22:10:42\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":36,\"views\":19}', NULL, 1634805334, 2, NULL);
INSERT INTO `cd_log` VALUES (309791, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":35,\"title\":\"LSI 9380-4i4e 内外接卡\",\"class_id\":13,\"pic\":\"\\/uploads\\/admin\\/202110\\/6171265ee846b.jpg\",\"detail\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-03-17 22:10:12\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":35,\"views\":4}', NULL, 1634805343, 2, NULL);
INSERT INTO `cd_log` VALUES (309792, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":74,\"title\":\"公司简介（自定义的内容模型）\",\"class_id\":7,\"pic\":\"\\/uploads\\/admin\\/201912\\/5df20c64cc022.jpg\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-10-29 14:24:58\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":74,\"views\":\"\"}', NULL, 1634805422, 2, NULL);
INSERT INTO `cd_log` VALUES (309793, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":74,\"title\":\"公司简介\",\"class_id\":7,\"pic\":\"\\/uploads\\/admin\\/201912\\/5df20c64cc022.jpg\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2019-10-29 14:24:58\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":74,\"views\":\"\"}', NULL, 1634805869, 2, NULL);
INSERT INTO `cd_log` VALUES (309794, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":0,\"type\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_application\' doesn\'t exist', 1634806347, 3, NULL);
INSERT INTO `cd_log` VALUES (309795, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":0,\"type\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_application\' doesn\'t exist', 1634806348, 3, NULL);
INSERT INTO `cd_log` VALUES (309796, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":0,\"type\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_application\' doesn\'t exist', 1634806349, 3, NULL);
INSERT INTO `cd_log` VALUES (309797, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":0,\"type\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_application\' doesn\'t exist', 1634806349, 3, NULL);
INSERT INTO `cd_log` VALUES (309798, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":0,\"type\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_application\' doesn\'t exist', 1634806357, 3, NULL);
INSERT INTO `cd_log` VALUES (309799, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":0,\"type\":1}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'vuecms.cd_application\' doesn\'t exist', 1634806423, 3, NULL);
INSERT INTO `cd_log` VALUES (309800, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Catagory/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":1,\"status\":1,\"filename\":\"index.html\",\"list_tpl\":\"list\",\"detail_tpl\":\"\",\"keyword\":[],\"class_name\":\"内容模型测试\",\"module_id\":1054}', NULL, 1634806567, 2, NULL);
INSERT INTO `cd_log` VALUES (309801, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":22,\"type\":2}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'upload_config_id\' in \'field list\'', 1634806616, 3, NULL);
INSERT INTO `cd_log` VALUES (309802, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":22,\"type\":2}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'upload_config_id\' in \'field list\'', 1634806617, 3, NULL);
INSERT INTO `cd_log` VALUES (309803, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":22,\"type\":2}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'upload_config_id\' in \'field list\'', 1634806721, 3, NULL);
INSERT INTO `cd_log` VALUES (309804, 'admin', NULL, 'http://vuecms.me/admin/Cms.Catagory/getInfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":22,\"type\":2}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'upload_config_id\' in \'field list\'', 1634806727, 3, NULL);
INSERT INTO `cd_log` VALUES (309805, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Catagory/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":22,\"pid\":null,\"class_name\":\"内容模型测试\",\"subtitle\":null,\"type\":1,\"list_tpl\":\"list\",\"detail_tpl\":\"view\",\"pic\":null,\"keyword\":[],\"description\":null,\"jumpurl\":null,\"status\":null,\"sortid\":22,\"filepath\":null,\"filename\":\"index.html\",\"module_id\":1054,\"upload_config_id\":null}', NULL, 1634806782, 2, NULL);
INSERT INTO `cd_log` VALUES (309806, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"title\":\"带内容模型的文章测试\",\"pic\":\"\",\"detail\":\"<p>内容模型<\\/p>\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"\",\"keyword\":[],\"description\":\"\",\"views\":0,\"author\":\"\",\"subtitle\":\"\",\"class_id\":22,\"jzd\":[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"美国\"},{\"key\":\"C\",\"val\":\"法国\"}],\"xldx\":[\"1\",\"2\"],\"kg\":1,\"jsq\":3223,\"hk\":9,\"titlea\":\"文本框\",\"xld\":1,\"dxk\":1,\"wby\":\"测试内容\",\"rqk\":\"2021-10-20T16:00:00.000Z\",\"rqfw\":[\"2021-10-20T16:00:00.000Z\",\"2021-10-21T16:00:00.000Z\"],\"dt\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"dt2\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"images\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"}],\"file\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"files\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"}],\"bq\":[\"vueamdin\",\"快速生成\",\"不写一行代码\"],\"color\":\"rgba(186, 93, 93, 1)\",\"ssq\":[\"河北省\",\"秦皇岛市\",\"北戴河区\"],\"bddt\":\"{\\\"address\\\":\\\"武汉市江岸区中国光大银行(武汉分行)\\\",\\\"lng\\\":114.306226,\\\"lat\\\":30.586742}\",\"gddt\":\"{\\\"address\\\":\\\"湖北省武汉市江岸区一元街街道顺丰洋行旧址时代广场(兰陵路)\\\",\\\"lng\\\":114.301876,\\\"lat\\\":30.586189}\",\"txdt\":\"{\\\"address\\\":\\\"湖北省武汉市洪山区珞狮路特1号丽岛花园\\\",\\\"lng\\\":114.347031,\\\"lat\\\":30.501236}\",\"wangeditor\":\"<p>编辑器内容<\\/p>\",\"tinymce\":\"<p>编辑器内容2<\\/p>\"}', NULL, 1634808233, 2, NULL);
INSERT INTO `cd_log` VALUES (309807, 'admin', NULL, 'http://vuecms.me/admin/Cms.Content/add', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"title\":\"\\u5e26\\u5185\\u5bb9\\u6a21\\u578b\\u7684\\u6587\\u7ae0\\u6d4b\\u8bd5\",\"pic\":\"\",\"detail\":\"<p>\\u5185\\u5bb9\\u6a21\\u578b<\\/p>\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"\",\"keyword\":[],\"description\":\"\",\"views\":0,\"author\":\"\",\"subtitle\":\"\",\"class_id\":22,\"jzd\":[{\"key\":\"A\",\"val\":\"\\u4e2d\\u56fd\"},{\"key\":\"B\",\"val\":\"\\u7f8e\\u56fd\"},{\"key\":\"C\",\"val\":\"\\u6cd5\\u56fd\"}],\"xldx\":[\"1\",\"2\"],\"kg\":1,\"jsq\":3223,\"hk\":9,\"titlea\":\"\\u6587\\u672c\\u6846\",\"xld\":1,\"dxk\":1,\"wby\":\"\\u6d4b\\u8bd5\\u5185\\u5bb9\",\"rqk\":\"2021-10-20T16:00:00.000Z\",\"rqfw\":[\"2021-10-20T16:00:00.000Z\",\"2021-10-21T16:00:00.000Z\"],\"dt\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"dt2\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"images\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - \\u526f\\u672c (2).jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - \\u526f\\u672c.jpg\"}],\"file\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"files\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - \\u526f\\u672c (2).jpg\"}],\"bq\":[\"vueamdin\",\"\\u5feb\\u901f\\u751f\\u6210\",\"\\u4e0d\\u5199\\u4e00\\u884c\\u4ee3\\u7801\"],\"color\":\"rgba(186, 93, 93, 1)\",\"ssq\":[\"\\u6cb3\\u5317\\u7701\",\"\\u79e6\\u7687\\u5c9b\\u5e02\",\"\\u5317\\u6234\\u6cb3\\u533a\"],\"bddt\":\"{\\\"address\\\":\\\"\\u6b66\\u6c49\\u5e02\\u6c5f\\u5cb8\\u533a\\u4e2d\\u56fd\\u5149\\u5927\\u94f6\\u884c(\\u6b66\\u6c49\\u5206\\u884c)\\\",\\\"lng\\\":114.306226,\\\"lat\\\":30.586742}\",\"gddt\":\"{\\\"address\\\":\\\"\\u6e56\\u5317\\u7701\\u6b66\\u6c49\\u5e02\\u6c5f\\u5cb8\\u533a\\u4e00\\u5143\\u8857\\u8857\\u9053\\u987a\\u4e30\\u6d0b\\u884c\\u65e7\\u5740\\u65f6\\u4ee3\\u5e7f\\u573a(\\u5170\\u9675\\u8def)\\\",\\\"lng\\\":114.301876,\\\"lat\\\":30.586189}\",\"txdt\":\"{\\\"address\\\":\\\"\\u6e56\\u5317\\u7701\\u6b66\\u6c49\\u5e02\\u6d2a\\u5c71\\u533a\\u73de\\u72ee\\u8def\\u72791\\u53f7\\u4e3d\\u5c9b\\u82b1\\u56ed\\\",\\\"lng\\\":114.347031,\\\"lat\\\":30.501236}\",\"wangeditor\":\"<p>\\u7f16\\u8f91\\u5668\\u5185\\u5bb9<\\/p>\",\"tinymce\":\"<p>\\u7f16\\u8f91\\u5668\\u5185\\u5bb92<\\/p>\"}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'content_id\' in \'where clause\'', 1634808233, 3, NULL);
INSERT INTO `cd_log` VALUES (309808, 'admin', NULL, 'http://vuecms.me/admin/Sys.Base/createField', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"post_status\":1,\"create_table_field\":1,\"list_show\":2,\"validate\":[],\"item_config\":[{\"key\":\"\\u7537\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"\\u5973\",\"val\":\"2\",\"label_color\":\"warning\"}],\"other_config\":[],\"datatype\":\"varchar\",\"length\":250,\"belong_table\":\"\",\"default_value\":\"\",\"menu_id\":\"1055\",\"title\":\"\\u591a\\u9009\\u6846\",\"field\":\"dxk\",\"type\":5}', 'SQLSTATE[42S21]: Column already exists: 1060 Duplicate column name \'dxk\'', 1634809861, 3, NULL);
INSERT INTO `cd_log` VALUES (309809, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Catagory/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"class_id\":22,\"pid\":null,\"class_name\":\"内容模型测试\",\"subtitle\":null,\"type\":1,\"list_tpl\":\"list\",\"detail_tpl\":\"view\",\"pic\":null,\"keyword\":[],\"description\":null,\"jumpurl\":null,\"status\":1,\"sortid\":22,\"filepath\":null,\"filename\":\"index.html\",\"module_id\":1055,\"upload_config_id\":null}', NULL, 1634810148, 2, NULL);
INSERT INTO `cd_log` VALUES (309810, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":75,\"title\":\"带内容模型的文章测试\",\"class_id\":22,\"pic\":\"\",\"detail\":\"<p>内容模型<\\/p>\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-10-21 17:23:53\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":75,\"views\":0,\"jzd\":[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"美国\"},{\"key\":\"C\",\"val\":\"法国\"}],\"ssq\":[\"天津市\",\"市辖区\",\"河东区\"],\"bq\":[\"vueamdin\",\"快速生成\",\"不写代码\"],\"files\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"}],\"rqfw\":[\"2021-10-20T16:00:00.000Z\",\"2021-10-29T16:00:00.000Z\"],\"dxka\":[],\"xldx\":[\"1\",\"2\"],\"kg\":1,\"jsq\":23,\"hk\":22,\"wbk\":\"文本框\",\"xlk\":1,\"dxk\":1,\"wby\":\"文本与测试\",\"rqk\":\"2021-10-19T16:00:00.000Z\",\"dt\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"dt2\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60afbe5f64890.jpg\",\"file\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"color\":\"rgba(193, 57, 57, 1)\",\"dddt\":\"{\\\"address\\\":\\\"武汉市江岸区沿江大道兰陵路-公交车站\\\",\\\"lng\\\":114.307996,\\\"lat\\\":30.589417}\",\"gddt\":\"{\\\"address\\\":\\\"湖北省武汉市江岸区一元街街道诚昌里\\\",\\\"lng\\\":114.2978,\\\"lat\\\":30.585191}\",\"txdt\":\"{\\\"address\\\":\\\"湖北省武汉市洪山区珞狮路北港村公交站珞狮路北港村公交站\\\",\\\"lng\\\":114.343628,\\\"lat\\\":30.498732}\",\"wangeditor\":\"<p>测试1<\\/p>\",\"tinymce\":\"<p>测试2<img src=\\\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\\\" alt=\\\"\\\" width=\\\"200\\\" height=\\\"200\\\" \\/><\\/p>\"}', NULL, 1634810278, 2, NULL);
INSERT INTO `cd_log` VALUES (309811, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":75,\"title\":\"带内容模型的文章测试\",\"class_id\":22,\"pic\":\"\",\"detail\":\"<p>内容模型<\\/p>\",\"status\":1,\"position\":[\"2\",\"1\"],\"jumpurl\":\"\",\"create_time\":\"2021-10-21 17:23:53\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":75,\"views\":0,\"id\":1,\"wbk\":\"文本框\",\"xlk\":1,\"xldx\":[\"1\",\"2\"],\"dxk\":1,\"dxka\":[],\"kg\":1,\"wby\":\"文本与测试\",\"rqk\":\"2021-10-20\",\"rqfw\":[\"2021-10-20T16:00:00.000Z\",\"2021-10-29T16:00:00.000Z\"],\"dt\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"dt2\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60afbe5f64890.jpg\",\"file\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"files\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"}],\"jsq\":23,\"bq\":[\"vueamdin\",\"快速生成\",\"不写代码\"],\"hk\":22,\"color\":\"rgba(193, 57, 57, 1)\",\"jzd\":[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"美国\"},{\"key\":\"C\",\"val\":\"法国\"}],\"ssq\":[\"天津市\",\"市辖区\",\"河东区\"],\"dddt\":\"{\\\"address\\\":\\\"武汉市江岸区沿江大道兰陵路-公交车站\\\",\\\"lng\\\":114.307996,\\\"lat\\\":30.589417}\",\"gddt\":\"{\\\"address\\\":\\\"湖北省武汉市江岸区一元街街道诚昌里\\\",\\\"lng\\\":114.2978,\\\"lat\\\":30.585191}\",\"txdt\":\"{\\\"address\\\":\\\"湖北省武汉市洪山区珞狮路北港村公交站珞狮路北港村公交站\\\",\\\"lng\\\":114.343628,\\\"lat\\\":30.498732}\",\"wangeditor\":\"<p>测试1<\\/p>\",\"tinymce\":\"<p>测试2<img src=\\\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\\\" alt=\\\"\\\" width=\\\"200\\\" height=\\\"200\\\" \\/><\\/p>\"}', NULL, 1634810297, 2, NULL);
INSERT INTO `cd_log` VALUES (309812, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":75,\"title\":\"带内容模型的文章测试\",\"class_id\":22,\"pic\":\"\",\"detail\":\"<p>内容模型<\\/p>\",\"status\":1,\"position\":[\"2\",\"1\"],\"jumpurl\":\"\",\"create_time\":\"2021-10-21 17:23:53\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":75,\"views\":0,\"id\":1,\"wbk\":\"文本框\",\"xlk\":1,\"xldx\":[\"1\",\"2\"],\"dxk\":1,\"dxka\":[],\"kg\":1,\"wby\":\"文本与测试\",\"rqk\":\"2021-10-20\",\"rqfw\":[\"2021-10-20T16:00:00.000Z\",\"2021-10-29T16:00:00.000Z\"],\"dt\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"dt2\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60afbe5f64890.jpg\",\"file\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"files\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"}],\"jsq\":23,\"bq\":[\"vueamdin\",\"快速生成\",\"不写代码\"],\"hk\":22,\"color\":\"rgba(193, 57, 57, 1)\",\"jzd\":[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"美国\"},{\"key\":\"C\",\"val\":\"法国\"}],\"ssq\":[\"天津市\",\"市辖区\",\"河东区\"],\"dddt\":\"{\\\"address\\\":\\\"武汉市江岸区沿江大道兰陵路-公交车站\\\",\\\"lng\\\":114.307996,\\\"lat\\\":30.589417}\",\"gddt\":\"{\\\"address\\\":\\\"湖北省武汉市江岸区一元街街道诚昌里\\\",\\\"lng\\\":114.2978,\\\"lat\\\":30.585191}\",\"txdt\":\"{\\\"address\\\":\\\"湖北省武汉市洪山区珞狮路北港村公交站珞狮路北港村公交站\\\",\\\"lng\\\":114.343628,\\\"lat\\\":30.498732}\",\"wangeditor\":\"<p>测试1<\\/p>\",\"tinymce\":\"<p>测试2<img src=\\\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\\\" alt=\\\"\\\" width=\\\"200\\\" height=\\\"200\\\" \\/><\\/p>\",\"images\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d752fe38.jpg\",\"name\":\"a3 - 副本 (2).jpg\"}]}', NULL, 1634810383, 2, NULL);
INSERT INTO `cd_log` VALUES (309813, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":75,\"title\":\"带内容模型的文章测试\",\"class_id\":22,\"pic\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"detail\":\"<p>内容模型<img src=\\\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\\\" style=\\\"max-width: 100%;\\\"\\/><\\/p>\",\"status\":1,\"position\":[\"2\",\"1\"],\"jumpurl\":\"\",\"create_time\":\"2021-10-21 17:23:53\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":75,\"views\":0,\"id\":1,\"wbk\":\"文本框\",\"xlk\":1,\"xldx\":[\"1\",\"2\"],\"dxk\":1,\"dxka\":[],\"kg\":1,\"wby\":\"文本与测试\",\"rqk\":\"2021-10-20\",\"rqfw\":[\"2021-10-20T16:00:00.000Z\",\"2021-10-29T16:00:00.000Z\"],\"dt\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af91ffbd6f8.jpg\",\"dt2\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60afbe5f64890.jpg\",\"file\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"files\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"}],\"jsq\":23,\"bq\":[\"vueamdin\",\"快速生成\",\"不写代码\"],\"hk\":22,\"color\":\"rgba(193, 57, 57, 1)\",\"jzd\":[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"美国\"},{\"key\":\"C\",\"val\":\"法国\"}],\"ssq\":[\"天津市\",\"市辖区\",\"河东区\"],\"dddt\":\"{\\\"address\\\":\\\"武汉市江岸区沿江大道兰陵路-公交车站\\\",\\\"lng\\\":114.307996,\\\"lat\\\":30.589417}\",\"gddt\":\"{\\\"address\\\":\\\"湖北省武汉市江岸区一元街街道诚昌里\\\",\\\"lng\\\":114.2978,\\\"lat\\\":30.585191}\",\"txdt\":\"{\\\"address\\\":\\\"湖北省武汉市洪山区珞狮路北港村公交站珞狮路北港村公交站\\\",\\\"lng\\\":114.343628,\\\"lat\\\":30.498732}\",\"wangeditor\":\"<p>测试1<\\/p>\",\"tinymce\":\"<p>测试2<img src=\\\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\\\" alt=\\\"\\\" width=\\\"200\\\" height=\\\"200\\\" \\/><\\/p>\",\"images\":[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d752fe38.jpg\",\"name\":\"a3 - 副本 (2).jpg\"}]}', NULL, 1634810401, 2, NULL);
INSERT INTO `cd_log` VALUES (309814, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Content/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"content_id\":73,\"title\":\"一款基于Intel I350AM4芯片的POE网卡\",\"class_id\":9,\"pic\":\"\",\"status\":1,\"position\":[],\"jumpurl\":\"\",\"create_time\":\"2021-08-08 20:56:18\",\"author\":\"\",\"keyword\":[],\"description\":\"\",\"sortid\":73,\"views\":58}', NULL, 1634810531, 2, NULL);
INSERT INTO `cd_log` VALUES (309815, 'admin', 'admin', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', NULL, NULL, 1634824631, 1, NULL);
INSERT INTO `cd_log` VALUES (309816, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":28,\"title\":\"会员管理\",\"type\":1,\"path\":\"\\/admin\\/Membe\\/index.html\",\"status\":1,\"icon\":\"el-icon-user-solid\",\"sortid\":28}', NULL, 1634825219, 2, NULL);
INSERT INTO `cd_log` VALUES (309817, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":29,\"title\":\"表单输入框\",\"type\":1,\"path\":\"\\/admin\\/Form\",\"status\":1,\"icon\":\"el-icon-s-cooperation\",\"sortid\":29}', NULL, 1634825257, 2, NULL);
INSERT INTO `cd_log` VALUES (309818, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":36,\"title\":\"商品管理\",\"type\":1,\"path\":\"\\/admin\\/Goods\",\"status\":1,\"icon\":\"el-icon-s-goods\",\"sortid\":36}', NULL, 1634825275, 2, NULL);
INSERT INTO `cd_log` VALUES (309819, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":41,\"title\":\"侧栏效果演示\",\"type\":1,\"path\":\"\\/admin\\/Celan\",\"status\":1,\"icon\":\"el-icon-link\",\"sortid\":41}', NULL, 1634825289, 2, NULL);
INSERT INTO `cd_log` VALUES (309820, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":51,\"title\":\"配置管理\",\"type\":1,\"path\":\"\\/admin\\/Config\",\"status\":1,\"icon\":\"el-icon-s-data\",\"sortid\":51}', NULL, 1634825319, 2, NULL);
INSERT INTO `cd_log` VALUES (309821, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":55,\"title\":\"系统管理\",\"type\":1,\"path\":\"\\/admin\\/Sys\",\"status\":1,\"icon\":\"el-icon-s-data\",\"sortid\":55}', NULL, 1634825333, 2, NULL);
INSERT INTO `cd_log` VALUES (309822, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":44,\"title\":\"批量操作演示\",\"type\":1,\"path\":\"\\/admin\\/Batch\\/index.html\",\"status\":1,\"icon\":\"dripicons-wallet\",\"sortid\":44}', NULL, 1634825408, 2, NULL);
INSERT INTO `cd_log` VALUES (309823, 'admin', 'admin', 'http://vuecms.me/admin/Node/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"node_id\":45,\"title\":\"字段联动演示\",\"type\":1,\"path\":\"\\/admin\\/Liandong\\/index.html\",\"status\":1,\"icon\":\"el-icon-s-order\",\"sortid\":45}', NULL, 1634825448, 2, NULL);
INSERT INTO `cd_log` VALUES (309824, 'admin', 'admin', 'http://vuecms.me/admin/Membe/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"membe_id\":30,\"username\":\"赵莎莎\",\"sex\":2,\"mobile\":\"13546985741\",\"pic\":\"\\/uploads\\/admin\\/202110\\/61627c797917c.png\",\"email\":\"784411414@qq.com\",\"status\":1,\"amount\":\"90.00\",\"ssq\":[\"天津市\",\"市辖区\",\"河东区\"],\"create_time\":\"2021-10-07 10:23:32\"}', NULL, 1634827245, 2, NULL);
INSERT INTO `cd_log` VALUES (309825, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Catagory/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '{\"class_id\":22,\"pid\":null,\"class_name\":\"内容模型测试\",\"subtitle\":null,\"type\":1,\"list_tpl\":\"list\",\"detail_tpl\":\"view2\",\"pic\":null,\"keyword\":[],\"description\":null,\"jumpurl\":null,\"status\":1,\"sortid\":22,\"filepath\":null,\"filename\":\"index.html\",\"module_id\":1055,\"upload_config_id\":null}', NULL, 1634827459, 2, NULL);
INSERT INTO `cd_log` VALUES (309826, 'admin', 'admin', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634886009, 1, NULL);
INSERT INTO `cd_log` VALUES (309827, 'admin', 'admin', 'http://vuecms.me/admin/Cms.Frament/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"frament_id\":2,\"title\":\"底部版权\",\"content\":\"<p>Copyright 2005-2021 深圳XXX飞讯电子有限公司&nbsp; All rights reserved&nbsp;<a href=\\\"\\/admin\\\" target=\\\"_blank\\\">后台管理<\\/a><br\\/><\\/p>\"}', NULL, 1634886043, 2, NULL);
INSERT INTO `cd_log` VALUES (309828, 'admin', 'admin', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634886209, 1, NULL);
INSERT INTO `cd_log` VALUES (309829, 'admin', 'admin', 'http://vuecms.me/admin/Login/index.html', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', NULL, NULL, 1634886241, 1, NULL);

-- ----------------------------
-- Table structure for cd_map
-- ----------------------------
DROP TABLE IF EXISTS `cd_map`;
CREATE TABLE `cd_map`  (
  `map_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `bddt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '百度地图',
  `gddt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '高德地图',
  `txdt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '腾讯地图',
  PRIMARY KEY (`map_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_map
-- ----------------------------
INSERT INTO `cd_map` VALUES (1, '这是生成的地图组件', '{\"address\":\"武汉市武昌区梅园一路/梅园二路(路口)\",\"lng\":114.37015,\"lat\":30.540872}', '{\"address\":\"湖北省武汉市洪山区洪山街道保利中央公馆4期\",\"lng\":114.319124,\"lat\":30.494455}', '{\"address\":\"湖北省武汉市武昌区珞珈山16号武汉大学武汉大学-鉴湖\",\"lng\":114.363274,\"lat\":30.537601}');

-- ----------------------------
-- Table structure for cd_membe
-- ----------------------------
DROP TABLE IF EXISTS `cd_membe`;
CREATE TABLE `cd_membe`  (
  `membe_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `sex` smallint(6) NULL DEFAULT NULL COMMENT '性别',
  `pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `mobile` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '积分',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `ssq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省市区',
  PRIMARY KEY (`membe_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_membe
-- ----------------------------
INSERT INTO `cd_membe` VALUES (25, '韩梅梅', 1, 'http://vue.whpj.vip/uploads/admin/202105/60af8d8de9d0f.jpg', '13545028657', '274363574@qq.com', '978655f0ed9a6c3a33f104d64a2481a9', 22.00, 1, 1620211664, '山西省-大同市-城区');
INSERT INTO `cd_membe` VALUES (26, '李磊', 2, 'http://vue.whpj.vip/uploads/admin/202105/60af8d85f101d.jpg', '13545098761', '36732767@qq.com', '', 99.00, 1, 1620211664, '山东省-青岛市-市南区');
INSERT INTO `cd_membe` VALUES (27, '王五', 2, 'http://vue.whpj.vip/uploads/admin/202105/60af8d7d47a10.jpg', '13545098761', '36732767@qq.com', 'dfb32a9216356c14d12f162bfce8b35b', 102.00, 1, 1620211677, '山东省-青岛市-市南区');
INSERT INTO `cd_membe` VALUES (28, '李四a', 2, 'http://vue.whpj.vip/uploads/admin/202105/60af8d752fe38.jpg', '13545028657', '274363574@qq.com', 'f588c178d94d0bd418ba8ddfbff84184', 20.00, 1, 1620211677, '山西省-大同市-城区');
INSERT INTO `cd_membe` VALUES (29, '赵六', 1, 'http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg', '13545026847', '454512@qq.com', '6a5888d05ceb8033ebf0a3dfbf2b416e', 25.00, 1, 1633573323, '河北省-秦皇岛市-北戴河区');
INSERT INTO `cd_membe` VALUES (30, '赵莎莎', 2, '/uploads/admin/202110/61627c797917c.png', '13546985741', '784411414@qq.com', '6a5888d05ceb8033ebf0a3dfbf2b416e', 90.00, 1, 1633573412, '天津市-市辖区-河东区');

-- ----------------------------
-- Table structure for cd_menu
-- ----------------------------
DROP TABLE IF EXISTS `cd_menu`;
CREATE TABLE `cd_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(9) NULL DEFAULT 0 COMMENT '父级id',
  `controller_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块标题',
  `pk` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键名',
  `table_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块数据库表',
  `create_code` tinyint(4) NULL DEFAULT NULL COMMENT '是否允许生成模块',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '0隐藏 1显示',
  `sortid` mediumint(9) NULL DEFAULT 0 COMMENT '排序号',
  `create_table` tinyint(4) NULL DEFAULT NULL COMMENT '是否生成数据库表',
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'icon字体图标',
  `tab_config` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'tab选项卡菜单配置',
  `app_id` int(11) NULL DEFAULT NULL COMMENT '所属模块',
  `is_post` tinyint(4) NULL DEFAULT NULL COMMENT '是否允许投稿',
  `upload_config_id` smallint(5) NULL DEFAULT NULL COMMENT '上传配置id',
  `connect` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库连接',
  `page_type` tinyint(4) NULL DEFAULT NULL COMMENT '页面类型',
  `home_show` tinyint(4) NULL DEFAULT 0 COMMENT '首页快捷导航显示状态',
  `menu_pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快捷导航的图片',
  PRIMARY KEY (`menu_id`) USING BTREE,
  INDEX `controller_name`(`controller_name`) USING BTREE,
  INDEX `module_id`(`app_id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1056 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_menu
-- ----------------------------
INSERT INTO `cd_menu` VALUES (1055, 0, NULL, '产品', 'id', 'pro', NULL, 1, 1055, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, NULL);

-- ----------------------------
-- Table structure for cd_node
-- ----------------------------
DROP TABLE IF EXISTS `cd_node`;
CREATE TABLE `cd_node`  (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点名称',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '类型',
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点路径',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `icon` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `pid` smallint(6) NULL DEFAULT 0 COMMENT '所属父类',
  `sortid` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`node_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_node
-- ----------------------------
INSERT INTO `cd_node` VALUES (22, '首页', 1, '/admin/Index/main.html', 1, 'el-icon-s-home', 0, 0);
INSERT INTO `cd_node` VALUES (28, '会员管理', 1, '/admin/Membe/index.html', 1, 'el-icon-user-solid', 0, 28);
INSERT INTO `cd_node` VALUES (29, '表单输入框', 1, '/admin/Form', 1, 'el-icon-s-cooperation', 0, 29);
INSERT INTO `cd_node` VALUES (30, '编辑器', 1, '/admin/Editor/index.html', 1, '', 29, 30);
INSERT INTO `cd_node` VALUES (31, '地图组件', 1, '/admin/Map/index.html', 1, '', 29, 31);
INSERT INTO `cd_node` VALUES (32, '上传组件', 1, '/admin/Uploadfile/index.html', 1, '', 29, 32);
INSERT INTO `cd_node` VALUES (33, '其他组件', 1, '/admin/Other/index.html', 1, '', 29, 33);
INSERT INTO `cd_node` VALUES (34, '时间格式', 1, '/admin/Times/index.html', 1, '', 29, 34);
INSERT INTO `cd_node` VALUES (35, '下拉框分页', 1, '/admin/Selectpage/index.html', 1, '', 29, 35);
INSERT INTO `cd_node` VALUES (36, '商品管理', 1, '/admin/Goods', 1, 'el-icon-s-goods', 0, 36);
INSERT INTO `cd_node` VALUES (37, '商品分类', 1, '/admin/Goodscata/index.html', 1, '', 36, 37);
INSERT INTO `cd_node` VALUES (38, '供应商管理', 1, '/admin/Supplier/index.html', 1, '', 36, 38);
INSERT INTO `cd_node` VALUES (39, '商品管理', 1, '/admin/Goods/index.html', 1, '', 36, 39);
INSERT INTO `cd_node` VALUES (41, '侧栏效果演示', 1, '/admin/Celan', 1, 'el-icon-link', 0, 41);
INSERT INTO `cd_node` VALUES (42, '友情链接分类', 1, '/admin/Link.Linkcata/index.html', 1, '', 41, 42);
INSERT INTO `cd_node` VALUES (43, '友情链接', 1, '/admin/Link.Link/index.html', 1, '', 41, 43);
INSERT INTO `cd_node` VALUES (44, '批量操作演示', 1, '/admin/Batch/index.html', 1, 'dripicons-wallet', 0, 44);
INSERT INTO `cd_node` VALUES (45, '字段联动演示', 1, '/admin/Liandong/index.html', 1, 'el-icon-s-order', 0, 45);
INSERT INTO `cd_node` VALUES (46, 'CMS管理', 1, '/admin/Cms', 1, '', 0, 46);
INSERT INTO `cd_node` VALUES (47, '栏目管理', 1, '/admin/Cms.Catagory/index.html', 1, '', 46, 47);
INSERT INTO `cd_node` VALUES (48, '文章管理', 1, '/admin/Cms.Content/index.html', 1, '', 46, 48);
INSERT INTO `cd_node` VALUES (49, '碎片管理', 1, '/admin/Cms.Frament/index.html', 1, '', 46, 49);
INSERT INTO `cd_node` VALUES (50, '推荐位管理', 1, '/admin/Cms.Position/index.html', 1, '', 46, 50);
INSERT INTO `cd_node` VALUES (51, '配置管理', 1, '/admin/Config', 1, 'el-icon-s-data', 0, 51);
INSERT INTO `cd_node` VALUES (52, '基本配置', 1, '/admin/Baseconfig/index.html', 1, '', 51, 52);
INSERT INTO `cd_node` VALUES (53, '缩略图配置', 1, '/admin/Uploadconfig/index.html', 1, '', 51, 53);
INSERT INTO `cd_node` VALUES (54, '节点管理', 1, '/admin/Node/index.html', 1, '', 55, 59);
INSERT INTO `cd_node` VALUES (55, '系统管理', 1, '/admin/Sys', 1, 'el-icon-s-data', 0, 55);
INSERT INTO `cd_node` VALUES (56, '用户管理', 1, '/admin/Adminuser/index.html', 1, '', 55, 56);
INSERT INTO `cd_node` VALUES (57, '角色管理', 1, '/admin/Role/index.html', 1, '', 55, 57);
INSERT INTO `cd_node` VALUES (58, '日志管理', 1, '/admin/Log/index.html', 1, '', 55, 58);
INSERT INTO `cd_node` VALUES (59, '添加', 2, '/admin/Membe/add.html', 1, '', 28, 59);
INSERT INTO `cd_node` VALUES (60, '修改', 2, '/admin/Membe/update.html', 1, '', 28, 60);
INSERT INTO `cd_node` VALUES (61, '删除', 2, '/admin/Membe/delete.html', 1, '', 28, 61);
INSERT INTO `cd_node` VALUES (62, '内容模型', 1, '/admin/Sys.Base/menu', 1, '', 46, 62);

-- ----------------------------
-- Table structure for cd_other
-- ----------------------------
DROP TABLE IF EXISTS `cd_other`;
CREATE TABLE `cd_other`  (
  `other_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `jsq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计数器',
  `tags` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `hk` smallint(6) NULL DEFAULT NULL COMMENT '滑块',
  `color` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色选择器',
  `jzd` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '键值对',
  `ssq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省市区联动',
  PRIMARY KEY (`other_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_other
-- ----------------------------
INSERT INTO `cd_other` VALUES (1, '这是系统生成的常用组件测试', '11', 'xhadmin,快速生成,低代码平台', 14, 'rgba(82, 57, 57, 1)', '[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"法国\"}]', '河北省-石家庄市-长安区');
INSERT INTO `cd_other` VALUES (2, '测试西悉尼', '11', 'xhadmin,xhcms,vue', 28, 'rgba(188, 63, 63, 1)', '[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"发过\"},{\"key\":\"C\",\"val\":\"德国\"}]', '天津市-市辖区-和平区');
INSERT INTO `cd_other` VALUES (4, '测试', '11', 'vue,git', 11, 'rgba(102, 83, 83, 1)', '[{\"key\":\"A\",\"val\":\"测试\"}]', '天津市-市辖区-河西区');
INSERT INTO `cd_other` VALUES (5, '地方的', '100', 'heyingm ', 44, 'rgba(79, 146, 188, 1)', '[{\"key\":\"1\",\"val\":\"12\"}]', '山西省-阳泉市-郊区');

-- ----------------------------
-- Table structure for cd_position
-- ----------------------------
DROP TABLE IF EXISTS `cd_position`;
CREATE TABLE `cd_position`  (
  `position_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `sortid` int(10) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_position
-- ----------------------------
INSERT INTO `cd_position` VALUES (1, '推荐', 100);
INSERT INTO `cd_position` VALUES (2, '置顶', 100);

-- ----------------------------
-- Table structure for cd_pro
-- ----------------------------
DROP TABLE IF EXISTS `cd_pro`;
CREATE TABLE `cd_pro`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `content_id` int(11) NOT NULL,
  `wbk` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文本框',
  `xlk` smallint(6) NULL DEFAULT NULL COMMENT '下拉框',
  `xldx` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下拉多选',
  `dxk` smallint(6) NULL DEFAULT NULL COMMENT '单选框',
  `dxka` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '多选框',
  `kg` tinyint(4) NULL DEFAULT NULL COMMENT '开关按钮',
  `wby` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文本域',
  `rqk` int(11) NULL DEFAULT NULL COMMENT '日期框',
  `rqfw` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期范围',
  `dt` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单图上传',
  `dt2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单图2',
  `file` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单文件',
  `files` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '多文件',
  `jsq` decimal(10, 2) NULL DEFAULT NULL COMMENT '计数器',
  `bq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `hk` smallint(6) NULL DEFAULT NULL COMMENT '滑块',
  `color` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色选择器',
  `jzd` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '键值对',
  `ssq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省市区',
  `dddt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '百度地图',
  `gddt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '高德地图',
  `txdt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '腾讯地图',
  `wangeditor` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'wangeditor',
  `tinymce` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'tinymce',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '多图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_pro
-- ----------------------------
INSERT INTO `cd_pro` VALUES (1, 75, '文本框', 1, '1,2', 1, '', 1, '文本与测试', 1634659200, '2021-10-20T16:00:00.000Z,2021-10-29T16:00:00.000Z', 'http://vue.whpj.vip/uploads/admin/202105/60af91ffbd6f8.jpg', 'http://vue.whpj.vip/uploads/admin/202105/60afbe5f64890.jpg', 'http://vue.whpj.vip/uploads/admin/202105/60af94abc6d3a.jpg', '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"}]', 23.00, 'vueamdin,快速生成,不写代码', 22, 'rgba(193, 57, 57, 1)', '[{\"key\":\"A\",\"val\":\"中国\"},{\"key\":\"B\",\"val\":\"美国\"},{\"key\":\"C\",\"val\":\"法国\"}]', '天津市,市辖区,河东区', '{\"address\":\"武汉市江岸区沿江大道兰陵路-公交车站\",\"lng\":114.307996,\"lat\":30.589417}', '{\"address\":\"湖北省武汉市江岸区一元街街道诚昌里\",\"lng\":114.2978,\"lat\":30.585191}', '{\"address\":\"湖北省武汉市洪山区珞狮路北港村公交站珞狮路北港村公交站\",\"lng\":114.343628,\"lat\":30.498732}', '<p>测试1</p>', '<p>测试2<img src=\"http://vue.whpj.vip/uploads/admin/202105/60af8d85f101d.jpg\" alt=\"\" width=\"200\" height=\"200\" /></p>', '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"a5 - 副本 (2).jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af94abc6d3a.jpg\",\"name\":\"a4 - 副本.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d752fe38.jpg\",\"name\":\"a3 - 副本 (2).jpg\"}]');

-- ----------------------------
-- Table structure for cd_role
-- ----------------------------
DROP TABLE IF EXISTS `cd_role`;
CREATE TABLE `cd_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组名称',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `pid` smallint(6) NULL DEFAULT NULL COMMENT '所属父类',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `access` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限节点',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_role
-- ----------------------------
INSERT INTO `cd_role` VALUES (1, '超级管理员', 1, 0, '超级管理员', '');
INSERT INTO `cd_role` VALUES (50, '运营', 1, NULL, '', '/admin/Index/main.html,/admin/Membe/index.html,/admin/Membe/add.html,/admin/Membe/update.html,/admin/Membe/delete.html,Home');

-- ----------------------------
-- Table structure for cd_selectpage
-- ----------------------------
DROP TABLE IF EXISTS `cd_selectpage`;
CREATE TABLE `cd_selectpage`  (
  `selectpage_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `member_id` smallint(6) NULL DEFAULT NULL COMMENT '下拉分页',
  PRIMARY KEY (`selectpage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cd_selectpage
-- ----------------------------
INSERT INTO `cd_selectpage` VALUES (1, '这是测试下拉框分页', 28);
INSERT INTO `cd_selectpage` VALUES (2, '测试2', 26);

-- ----------------------------
-- Table structure for cd_supplier
-- ----------------------------
DROP TABLE IF EXISTS `cd_supplier`;
CREATE TABLE `cd_supplier`  (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_supplier
-- ----------------------------
INSERT INTO `cd_supplier` VALUES (1, '仟吉', 1, 1622120604, 'qianji', '6a5888d05ceb8033ebf0a3dfbf2b416e');
INSERT INTO `cd_supplier` VALUES (2, '周黑鸭', 1, 1622120611, 'zhouheiya', '6a5888d05ceb8033ebf0a3dfbf2b416e');
INSERT INTO `cd_supplier` VALUES (3, '皇冠蛋糕', 1, 1622120618, 'huangguan', '6a5888d05ceb8033ebf0a3dfbf2b416e');
INSERT INTO `cd_supplier` VALUES (4, '精武鸭脖', 1, 1622120630, 'jingwu', '6a5888d05ceb8033ebf0a3dfbf2b416e');

-- ----------------------------
-- Table structure for cd_times
-- ----------------------------
DROP TABLE IF EXISTS `cd_times`;
CREATE TABLE `cd_times`  (
  `times_id` int(11) NOT NULL AUTO_INCREMENT,
  `a` int(10) NULL DEFAULT NULL COMMENT '普通',
  `b` int(10) NULL DEFAULT NULL COMMENT '年月日',
  `year` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年',
  `month` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月',
  `sfm` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时分秒',
  `d` datetime(0) NULL DEFAULT NULL COMMENT 'datetime格式',
  PRIMARY KEY (`times_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_times
-- ----------------------------
INSERT INTO `cd_times` VALUES (1, 1622520000, 1624550400, '2022', '06', '10:19:16', '2021-10-01 00:00:00');

-- ----------------------------
-- Table structure for cd_upload_config
-- ----------------------------
DROP TABLE IF EXISTS `cd_upload_config`;
CREATE TABLE `cd_upload_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置名称',
  `upload_replace` tinyint(4) NULL DEFAULT NULL COMMENT '覆盖同名文件',
  `thumb_status` tinyint(4) NULL DEFAULT NULL COMMENT '缩图开关',
  `thumb_width` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩放宽度',
  `thumb_height` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩放高度',
  `thumb_type` smallint(6) NULL DEFAULT NULL COMMENT '缩图方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_upload_config
-- ----------------------------
INSERT INTO `cd_upload_config` VALUES (1, '默认配置', 1, 1, '600', '400', 1);

-- ----------------------------
-- Table structure for cd_uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `cd_uploadfile`;
CREATE TABLE `cd_uploadfile`  (
  `uploadfile_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `pic` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单图上传',
  `pic_2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单图2',
  `pics` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '多图上传',
  `file` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单文件',
  `files` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '多文件',
  PRIMARY KEY (`uploadfile_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_uploadfile
-- ----------------------------
INSERT INTO `cd_uploadfile` VALUES (1, '这是系统生成的上传组件测试', 'http://vue.whpj.vip/uploads/admin/202105/60af91ed8763f.jpg', 'http://vue.whpj.vip/uploads/admin/202105/60af9200b555c.jpg', '[{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d8de9d0f.jpg\",\"name\":\"60af8d8de9d0f.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d752fe38.jpg\",\"name\":\"60af8d752fe38.jpg\"},{\"url\":\"http:\\/\\/vue.whpj.vip\\/uploads\\/admin\\/202105\\/60af8d85f101d.jpg\",\"name\":\"60af8d85f101d.jpg\"}]', '/uploads/admin/202104/607e911312e48.jpg', '[{\"url\":\"http:\\/\\/zhangling.me\\/uploads\\/admin\\/202104\\/607e91189159c.jpg\",\"name\":\"607e910dc5e7b.jpg\"},{\"url\":\"http:\\/\\/zhangling.me\\/uploads\\/admin\\/202104\\/607e911896d47.jpg\",\"name\":\"607e9106a0212.jpg\"}]');

SET FOREIGN_KEY_CHECKS = 1;
