/*
Navicat MySQL Data Transfer

Source Server         : KD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : car_home

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-05-11 03:26:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agree
-- ----------------------------
DROP TABLE IF EXISTS `agree`;
CREATE TABLE `agree` (
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '点赞用户id',
  `create_time` varchar(255) NOT NULL COMMENT '点赞时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for agree_pl
-- ----------------------------
DROP TABLE IF EXISTS `agree_pl`;
CREATE TABLE `agree_pl` (
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `user_id` bigint(20) NOT NULL COMMENT '点赞用户id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `that_id` bigint(20) unsigned NOT NULL COMMENT '关注id',
  `this_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `create_time` varchar(255) NOT NULL COMMENT '关注时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车唯一id',
  `car_name` varchar(255) DEFAULT NULL COMMENT '车名称',
  `style_id` int(11) DEFAULT NULL COMMENT '所属车型',
  `cszdj` varchar(11) DEFAULT NULL COMMENT '厂商指导价(万)',
  `zdnj` varchar(11) DEFAULT NULL COMMENT '最大扭矩',
  `cc` varchar(11) DEFAULT NULL COMMENT '车长',
  `ck` varchar(11) DEFAULT NULL COMMENT '车宽',
  `cg` varchar(11) DEFAULT NULL COMMENT '车高',
  `zj` varchar(11) DEFAULT NULL COMMENT '轴距',
  `yxrj` varchar(11) DEFAULT NULL COMMENT '油箱容积',
  `fdjxh` varchar(35) DEFAULT NULL COMMENT '发动机型号',
  `pl` varchar(35) DEFAULT NULL COMMENT '排量',
  `jqfs` int(11) DEFAULT NULL COMMENT '进气方式-Map',
  `zdml` varchar(35) DEFAULT NULL COMMENT '最大马力',
  `zdgl` varchar(35) DEFAULT NULL COMMENT '最大功率',
  `qdfs` int(2) DEFAULT NULL COMMENT '驱动方式-Map',
  `zdlx` int(2) DEFAULT NULL COMMENT '制动类型-Map',
  `bgljs` varchar(20) DEFAULT NULL COMMENT '百公里加速时间',
  `bglyh` varchar(30) DEFAULT NULL COMMENT '百公里油耗',
  `zgcs` varchar(30) DEFAULT NULL COMMENT '最高车速',
  `rybh` int(2) DEFAULT NULL COMMENT '燃油标号',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `style_id` int(10) unsigned NOT NULL COMMENT '车款式id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `create_time` varchar(255) NOT NULL COMMENT '收藏时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(150) NOT NULL COMMENT '评论正文',
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '评论者id',
  `create_time` varchar(255) NOT NULL COMMENT '评论时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `fjd` int(11) NOT NULL COMMENT '父节点',
  `index` varchar(35) DEFAULT NULL COMMENT '索引',
  `data` varchar(200) NOT NULL COMMENT '内容',
  `update_time` varchar(255) NOT NULL COMMENT '编辑时间',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for data_type
-- ----------------------------
DROP TABLE IF EXISTS `data_type`;
CREATE TABLE `data_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type_name` varchar(35) NOT NULL COMMENT '类型名称',
  `create_time` varchar(225) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '编辑时间',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑禁用',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay` (
  `essay_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态id',
  `essay_title` varchar(150) NOT NULL COMMENT '动态标题',
  `essay_label` varchar(150) DEFAULT NULL COMMENT '动态标签',
  `essay_text` longtext NOT NULL COMMENT '动态正文',
  `create_time` varchar(255) NOT NULL COMMENT '发布时间',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `video` varchar(255) DEFAULT NULL COMMENT '视频路径',
  `wybs` varchar(255) NOT NULL COMMENT '唯一标识',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`essay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for fold
-- ----------------------------
DROP TABLE IF EXISTS `fold`;
CREATE TABLE `fold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style_id` int(11) NOT NULL COMMENT 'id',
  `style_photo` varchar(255) NOT NULL,
  `title1` varchar(255) NOT NULL,
  `text1` varchar(255) NOT NULL,
  `text2` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `text3` varchar(255) NOT NULL,
  `text4` varchar(255) NOT NULL,
  `title3` varchar(255) NOT NULL,
  `text5` varchar(255) NOT NULL,
  `text6` varchar(255) NOT NULL,
  `title4` varchar(255) NOT NULL,
  `text7` varchar(255) NOT NULL,
  `text8` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for forward
-- ----------------------------
DROP TABLE IF EXISTS `forward`;
CREATE TABLE `forward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `essay_id` bigint(20) unsigned NOT NULL COMMENT '动态id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '转发用户id',
  `forward_title` varchar(150) DEFAULT NULL COMMENT '转发标题',
  `create_time` varchar(255) NOT NULL COMMENT '转发时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `style_id` int(11) NOT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `label_text` varchar(18) NOT NULL COMMENT '标签内容',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `message_title` varchar(150) NOT NULL COMMENT '消息标题',
  `message_text` varchar(1024) NOT NULL COMMENT '消息正文',
  `that_id` bigint(20) unsigned NOT NULL COMMENT '发送者id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '点赞者id',
  `this_id` bigint(20) unsigned NOT NULL COMMENT '接收者id',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `comment_id` int(11) DEFAULT NULL,
  `message_type` int(1) unsigned NOT NULL COMMENT '消息类型 0系统 1动态 2私信 3点赞评论',
  `create_time` varchar(255) NOT NULL COMMENT '发送时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_photo` varchar(255) DEFAULT NULL COMMENT '封面(可为空)',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `text1` varchar(1024) NOT NULL COMMENT '正文',
  `text2` varchar(1024) DEFAULT NULL,
  `text3` varchar(1024) DEFAULT NULL,
  `text4` varchar(1024) DEFAULT NULL,
  `text5` varchar(1024) DEFAULT NULL,
  `text6` varchar(1024) DEFAULT NULL,
  `text7` varchar(1024) DEFAULT NULL,
  `style_id` int(11) NOT NULL DEFAULT '1' COMMENT '相关车系id',
  `user_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '公众号id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `count` bigint(20) NOT NULL DEFAULT '0' COMMENT '点击量',
  `wybs` varchar(255) DEFAULT NULL COMMENT '唯一标识',
  `zt` int(10) NOT NULL DEFAULT '0' COMMENT '状态 0审核中 1已发布',
  `sscmc` varchar(255) DEFAULT NULL COMMENT '上市车名称',
  `sssj` varchar(255) DEFAULT NULL COMMENT '上市时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `news_id` int(11) DEFAULT NULL,
  `photo_url` varchar(1024) NOT NULL COMMENT '图片路径',
  `essay_id` bigint(20) unsigned DEFAULT NULL COMMENT '动态id',
  `style_id` int(11) unsigned DEFAULT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `nr` varchar(255) DEFAULT NULL COMMENT '内容',
  `object_id` varchar(255) DEFAULT NULL COMMENT '对象id',
  `object_name` varchar(255) DEFAULT NULL COMMENT '对象名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1513 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for record_admin
-- ----------------------------
DROP TABLE IF EXISTS `record_admin`;
CREATE TABLE `record_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `text` varchar(255) NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for reputation
-- ----------------------------
DROP TABLE IF EXISTS `reputation`;
CREATE TABLE `reputation` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `style_id` int(11) NOT NULL COMMENT '车型id',
  `fs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for style
-- ----------------------------
DROP TABLE IF EXISTS `style`;
CREATE TABLE `style` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '车型id',
  `jgqj` varchar(255) DEFAULT NULL COMMENT '价格区间',
  `cs` int(10) NOT NULL COMMENT '数据字典-厂商',
  `style_name` varchar(35) NOT NULL COMMENT '车型名称',
  `img_lbt` varchar(255) DEFAULT NULL COMMENT '轮播图',
  `style_photo` varchar(150) NOT NULL COMMENT '车型头像',
  `gb` int(10) NOT NULL COMMENT '国别',
  `jb` int(10) NOT NULL COMMENT '数据字典-级别-头部筛选',
  `sssj` varchar(35) NOT NULL COMMENT '上市时间',
  `hbbz` int(11) NOT NULL COMMENT '环保标准-Map 0国V  1国VI',
  `nylx` int(11) NOT NULL COMMENT '数据字典-能源类型',
  `pfrs` int(255) DEFAULT '0' COMMENT '评分人数',
  `zpf` int(255) DEFAULT '0' COMMENT '总评分',
  `djl` bigint(255) DEFAULT '0' COMMENT '点击量',
  `xl` int(255) DEFAULT '0' COMMENT '销量',
  `wybs` varchar(255) DEFAULT NULL COMMENT '唯一标识',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `dlh` varchar(255) DEFAULT NULL COMMENT '登录号',
  `user_name` varchar(18) NOT NULL COMMENT '用户名',
  `password` varchar(72) NOT NULL COMMENT '密码',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `photo` varchar(1024) DEFAULT NULL COMMENT '头像',
  `sign` varchar(150) DEFAULT '这家伙很懒，什么都没有留下。' COMMENT '签名',
  `gender` int(4) unsigned DEFAULT '1' COMMENT '1男0女',
  `date_birth` varchar(35) DEFAULT NULL COMMENT '出生日期',
  `create_time` varchar(255) NOT NULL COMMENT '注册时间',
  `update_time` varchar(255) NOT NULL COMMENT '修改时间',
  `grade` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户等级',
  `graded` int(10) NOT NULL DEFAULT '0' COMMENT '是否已签到',
  `sxts` int(10) NOT NULL DEFAULT '0' COMMENT '私信条数 用户新消息提醒',
  `sfrz` int(10) NOT NULL DEFAULT '0' COMMENT '是否为公众号',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `video_id` varchar(1024) NOT NULL COMMENT '视频ID',
  `video_url` varchar(1024) NOT NULL COMMENT '视频地址',
  `style_id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '车型id',
  `video_title` varchar(255) NOT NULL COMMENT '视频标题',
  `video_text` varchar(255) DEFAULT NULL COMMENT '视频内容',
  `user_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '发布id',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `zt` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `count` bigint(20) NOT NULL DEFAULT '0' COMMENT '点击量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
