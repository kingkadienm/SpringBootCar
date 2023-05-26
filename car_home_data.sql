/*
Navicat MySQL Data Transfer

Source Server         : KD
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : car_home

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-05-11 03:26:48
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
-- Records of agree
-- ----------------------------
INSERT INTO `agree` VALUES ('2', '3', '2020-11-17 19:57:26');
INSERT INTO `agree` VALUES ('3', '3', '2020-11-17 19:57:47');
INSERT INTO `agree` VALUES ('23', '3', '2021-03-19 19:08:21');
INSERT INTO `agree` VALUES ('20', '35', '2021-03-19 19:08:24');
INSERT INTO `agree` VALUES ('10', '3', '2021-03-22 11:22:37');
INSERT INTO `agree` VALUES ('11', '3', '2021-03-22 11:23:11');
INSERT INTO `agree` VALUES ('13', '35', '2021-03-22 11:27:06');
INSERT INTO `agree` VALUES ('17', '3', '2021-03-22 11:27:47');
INSERT INTO `agree` VALUES ('14', '3', '2021-03-22 11:28:22');
INSERT INTO `agree` VALUES ('30', '3', '2021-03-22 15:42:33');
INSERT INTO `agree` VALUES ('28', '2', '2021-03-22 21:11:53');
INSERT INTO `agree` VALUES ('33', '6', '2021-03-23 16:53:58');
INSERT INTO `agree` VALUES ('14', '35', '2021-03-30 18:34:50');
INSERT INTO `agree` VALUES ('34', '1', '2021-03-30 18:35:53');
INSERT INTO `agree` VALUES ('35', '35', '2021-03-31 16:36:15');
INSERT INTO `agree` VALUES ('36', '35', '2021-03-31 18:59:24');
INSERT INTO `agree` VALUES ('34', '35', '2021-04-01 20:31:50');
INSERT INTO `agree` VALUES ('38', '35', '2021-04-02 11:08:27');
INSERT INTO `agree` VALUES ('41', '35', '2021-04-02 15:00:59');
INSERT INTO `agree` VALUES ('30', '35', '2021-04-02 15:02:26');
INSERT INTO `agree` VALUES ('37', '35', '2021-04-02 21:41:36');
INSERT INTO `agree` VALUES ('43', '35', '2021-04-04 12:00:13');
INSERT INTO `agree` VALUES ('1', '35', '2021-04-23 09:39:28');
INSERT INTO `agree` VALUES ('45', '2', '2021-04-23 09:47:31');
INSERT INTO `agree` VALUES ('45', '35', '2021-04-23 20:20:59');

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
-- Records of agree_pl
-- ----------------------------
INSERT INTO `agree_pl` VALUES ('1', '1', '2020-12-15 12:13:15');
INSERT INTO `agree_pl` VALUES ('2', '35', '2021-03-30 11:32:23');
INSERT INTO `agree_pl` VALUES ('1', '35', '2021-03-30 11:32:30');
INSERT INTO `agree_pl` VALUES ('4', '2', '2021-03-30 12:01:49');
INSERT INTO `agree_pl` VALUES ('11', '35', '2021-03-30 18:59:19');
INSERT INTO `agree_pl` VALUES ('10', '35', '2021-04-01 20:38:13');
INSERT INTO `agree_pl` VALUES ('19', '35', '2021-04-01 20:39:47');
INSERT INTO `agree_pl` VALUES ('18', '35', '2021-04-01 20:39:48');
INSERT INTO `agree_pl` VALUES ('24', '35', '2021-04-02 14:55:40');
INSERT INTO `agree_pl` VALUES ('34', '35', '2021-04-03 13:40:19');
INSERT INTO `agree_pl` VALUES ('6', '35', '2021-04-21 13:52:21');
INSERT INTO `agree_pl` VALUES ('31', '35', '2021-04-23 09:39:21');
INSERT INTO `agree_pl` VALUES ('36', '2', '2021-04-23 09:47:04');
INSERT INTO `agree_pl` VALUES ('37', '2', '2021-04-23 09:47:38');
INSERT INTO `agree_pl` VALUES ('37', '4', '2021-04-23 20:42:27');
INSERT INTO `agree_pl` VALUES ('41', '2', '2021-04-28 11:40:51');

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
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('1', '3', '2021-03-23 13:55:03');
INSERT INTO `attention` VALUES ('1', '5', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '6', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '7', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '8', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '9', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('1', '11', '2021-02-08 12:15:12');
INSERT INTO `attention` VALUES ('5', '3', '2021-03-23 14:14:30');
INSERT INTO `attention` VALUES ('35', '1', '2021-03-23 14:40:43');
INSERT INTO `attention` VALUES ('1', '2', '2021-03-30 14:02:00');
INSERT INTO `attention` VALUES ('35', '3', '2021-04-03 13:44:06');
INSERT INTO `attention` VALUES ('1', '10', '2021-04-03 20:21:32');
INSERT INTO `attention` VALUES ('3', '35', '2021-04-04 13:05:07');
INSERT INTO `attention` VALUES ('4', '35', '2021-04-18 18:16:32');
INSERT INTO `attention` VALUES ('7', '35', '2021-04-21 13:52:49');
INSERT INTO `attention` VALUES ('5', '35', '2021-04-23 09:44:14');
INSERT INTO `attention` VALUES ('2', '35', '2021-04-23 09:44:22');
INSERT INTO `attention` VALUES ('35', '2', '2021-04-23 20:36:16');
INSERT INTO `attention` VALUES ('1', '35', '2021-04-25 21:14:00');

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
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '2021款 宝马3系 改款 320i 运动套装', '1', '29.39', '250', '4720', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '140', '148', '9.0', '6.2', '226', '153', '2021-04-19 14:59:59', '2021-05-10 14:00:36', '0');
INSERT INTO `car` VALUES ('2', '2021款 宝马3系 改款 320Li M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '141', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-20 15:41:58', '1');
INSERT INTO `car` VALUES ('3', '2021款 宝马3系 改款 325i M运动套装', '1', '29.38', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '142', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('4', '2021款 宝马3系 改款 325i M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '143', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('5', '2021款 宝马3系 改款 325Li M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '144', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('6', '2021款 宝马3系 改款 325Li xDrive M运动套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '145', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-05-10 13:44:14', '0');
INSERT INTO `car` VALUES ('7', '2021款 宝马3系 改款 325Li M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '146', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '1');
INSERT INTO `car` VALUES ('8', '2021款 宝马3系 330i M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '144', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('9', '2021款 宝马3系 330Li xDrive M运动曜夜套装', '1', '29.39', '250', '4719', '1827', '1459', '2851', '59', 'B48B20C', '2.0', '137', '156', '115', '146', '148', '9.0', '6.2', '226', '152', '2021-04-19 14:59:59', '2021-04-19 14:59:59', '0');
INSERT INTO `car` VALUES ('10', '谢耳朵23333', '17', '11', '11', '11', '11', '11', '11', '11', '11', '11', '138', '11', '11', '141', '148', '11', '11', '11', '152', '2021-04-21 11:10:01', '2021-04-28 09:39:47', '0');
INSERT INTO `car` VALUES ('11', '谢耳朵2333', '17', '27.5', '275', '4950', '2800', '1800', '2800', '58', 'SCSCS8151', '2.0', '137', '280', '1500', '141', '148', '6.7', '6.9', '330', '151', '2021-04-21 11:27:04', '2021-04-28 09:39:32', '1');
INSERT INTO `car` VALUES ('12', '谢耳朵233', '17', '33', '333', '3333', '3333', '3333', '5822', '33', '33333', '33', '137', '333', '333', '140', '147', '33', '333', '333', '151', '2021-04-21 13:44:29', '2021-04-28 09:39:25', '1');

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
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '2', '2020-11-17 20:02:13');
INSERT INTO `collection` VALUES ('1', '3', '2020-11-17 20:02:31');
INSERT INTO `collection` VALUES ('9', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('2', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('3', '2', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('4', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('5', '2', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('6', '35', '2020-11-17 20:02:50');
INSERT INTO `collection` VALUES ('7', '2', '2020-11-17 20:02:50');

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
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '宝马三系满足我对汽车的所有需求', '1', '35', '2020-11-17 21:20:21', '0');
INSERT INTO `comment` VALUES ('2', '大奔满足我对汽车的所有需求', '1', '3', '2020-11-20 20:45:35', '0');
INSERT INTO `comment` VALUES ('3', '123', '7', '35', '2021-03-30 11:39:32', '0');
INSERT INTO `comment` VALUES ('4', '分为非第三方表达式', '6', '35', '2021-03-30 11:40:06', '1');
INSERT INTO `comment` VALUES ('5', '123', '34', '35', '2021-03-30 15:05:32', '0');
INSERT INTO `comment` VALUES ('6', '123', '1', '7', '2021-03-30 16:33:12', '0');
INSERT INTO `comment` VALUES ('7', '147', '5', '35', '2021-03-30 16:34:09', '0');
INSERT INTO `comment` VALUES ('8', '擦擦是的', '8', '35', '2021-03-30 16:34:11', '0');
INSERT INTO `comment` VALUES ('9', '175157157', '3', '35', '2021-03-30 16:34:13', '0');
INSERT INTO `comment` VALUES ('10', '15727517', '2', '35', '2021-03-30 16:34:15', '0');
INSERT INTO `comment` VALUES ('11', '561515', '34', '35', '2021-03-30 18:59:09', '0');
INSERT INTO `comment` VALUES ('12', 'IC奇偶按大门口', '36', '35', '2021-03-31 16:36:19', '1');
INSERT INTO `comment` VALUES ('13', '123', '36', '35', '2021-03-31 20:30:29', '0');
INSERT INTO `comment` VALUES ('14', 'MVP@KevinDurant', '37', '35', '2021-04-01 11:59:34', '0');
INSERT INTO `comment` VALUES ('15', '789', '37', '35', '2021-04-01 11:59:57', '0');
INSERT INTO `comment` VALUES ('16', 'yugfudshfidshfchdsjbhdsbhjbsd', '2', '35', '2021-04-01 20:38:29', '0');
INSERT INTO `comment` VALUES ('17', 'rgdfhgdfhd', '2', '35', '2021-04-01 20:38:48', '0');
INSERT INTO `comment` VALUES ('18', 'sgdfgbfdbfd', '38', '35', '2021-04-01 20:39:31', '0');
INSERT INTO `comment` VALUES ('19', 'jbdfkjbdsjbn\njcbdsvkbdsbv', '38', '35', '2021-04-01 20:39:39', '0');
INSERT INTO `comment` VALUES ('20', '752572', '40', '35', '2021-04-02 14:20:07', '0');
INSERT INTO `comment` VALUES ('21', '按时擦擦', '40', '35', '2021-04-02 14:22:01', '0');
INSERT INTO `comment` VALUES ('22', '阿砂石厂', '39', '35', '2021-04-02 14:22:09', '0');
INSERT INTO `comment` VALUES ('23', '耗子尾汁', '40', '35', '2021-04-02 14:54:26', '0');
INSERT INTO `comment` VALUES ('24', '阿斯顿撒多', '30', '35', '2021-04-02 14:55:09', '1');
INSERT INTO `comment` VALUES ('25', '48448', '30', '35', '2021-04-02 14:55:54', '0');
INSERT INTO `comment` VALUES ('26', '阿萨德', '41', '35', '2021-04-02 14:59:09', '1');
INSERT INTO `comment` VALUES ('27', '147', '30', '35', '2021-04-02 15:01:57', '0');
INSERT INTO `comment` VALUES ('28', '789', '30', '35', '2021-04-02 15:02:21', '0');
INSERT INTO `comment` VALUES ('29', '258741369', '30', '35', '2021-04-02 15:05:49', '0');
INSERT INTO `comment` VALUES ('30', '114冬季几年级', '30', '35', '2021-04-02 15:06:10', '1');
INSERT INTO `comment` VALUES ('31', '123更不能借口了', '1', '35', '2021-04-02 15:06:30', '0');
INSERT INTO `comment` VALUES ('32', '固化房合法化会更好', '37', '35', '2021-04-02 21:41:42', '0');
INSERT INTO `comment` VALUES ('33', '111', '43', '35', '2021-04-03 13:39:53', '1');
INSERT INTO `comment` VALUES ('34', '你导剪版报价单', '43', '35', '2021-04-03 13:40:13', '1');
INSERT INTO `comment` VALUES ('35', '擦挫伤', '42', '35', '2021-04-04 12:00:36', '0');
INSERT INTO `comment` VALUES ('36', 'dascac', '45', '2', '2021-04-23 09:47:01', '1');
INSERT INTO `comment` VALUES ('37', 'wgsdgvfd', '45', '2', '2021-04-23 09:47:34', '0');
INSERT INTO `comment` VALUES ('38', '543354345', '44', '35', '2021-04-23 20:23:22', '0');
INSERT INTO `comment` VALUES ('39', '5254', '44', '35', '2021-04-23 20:23:29', '0');
INSERT INTO `comment` VALUES ('40', '部分被处罚', '34', '35', '2021-04-23 20:37:49', '0');
INSERT INTO `comment` VALUES ('41', '哈哈哈', '48', '2', '2021-04-28 11:40:47', '0');

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
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('1', '1', null, '前排宽敞', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('2', '1', null, '后排空间大', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('3', '1', null, '储物空间多', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('4', '1', null, '后备厢大', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('5', '2', null, '起步加速快', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('6', '2', null, '动力响应快', '2020-11-17 19:56:28', '0');
INSERT INTO `data_dictionary` VALUES ('7', '2', null, '多种动力模式', '2020-11-17 19:56:28', '0');
INSERT INTO `data_dictionary` VALUES ('8', '2', null, '换挡平顺', '2020-11-17 19:56:28', '0');
INSERT INTO `data_dictionary` VALUES ('9', '2', null, '发动机输出平顺', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('10', '3', null, '城市路段省油', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('11', '3', null, '高速油耗低', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('12', '3', null, '启停节能', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('13', '3', null, '电耗', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('14', '4', null, '转向精准灵活', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('15', '4', null, '行驶稳定', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('16', '4', null, '过弯稳定', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('17', '4', null, '悬挂调教好', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('18', '4', null, '通过性强', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('19', '4', null, '刹车性能好', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('20', '4', null, '换挡速度快', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('21', '5', null, '驾驶舒适抖动少', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('22', '5', null, '前排座椅舒适', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('23', '5', null, '后排座椅舒适', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('24', '5', null, '车内噪音小', '2020-11-17 19:15:15', '0');
INSERT INTO `data_dictionary` VALUES ('25', '5', null, '带座椅通风/加热/按摩', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('26', '6', null, '外观回头率高', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('27', '6', null, '车身用料做工细致', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('28', '7', null, '车内灯效多样', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('29', '7', null, '内饰用料做工好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('30', '7', null, '车内配件丰富', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('31', '7', null, '中控仪表功能实用', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('32', '7', null, '屏幕显示效果好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('33', '7', null, '方向盘手感好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('34', '7', null, '座椅做工材质好', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('35', '8', null, '辅助配置齐全（倒车影像/主动刹车/自动泊车/抬头显示等）', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('36', '8', null, '多媒体功能（音响效果好/互联驾驶系统等）', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('37', '8', null, '安全配置多（ESP/ABS/ASR/并线辅助等', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('38', '9', null, '维修保养满意度高', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('39', '9', null, '故障率较低', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('40', '10', null, '中国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('41', '10', null, '德国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('42', '10', null, '日本', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('43', '10', null, '美国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('44', '10', null, '韩国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('45', '10', null, '法国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('46', '10', null, '英国', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('47', '10', null, '意大利', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('48', '10', null, '瑞典', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('50', '10', null, '捷克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('52', '11', null, '汽油', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('53', '11', null, '柴油', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('54', '11', null, '油电混合', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('55', '11', null, '电动', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('56', '12', null, '轿车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('57', '12', null, 'SUV', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('58', '12', null, 'MPV', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('59', '12', null, '跑车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('60', '12', null, '皮卡', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('61', '12', null, '微面', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('62', '12', null, '微卡', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('63', '12', null, '轻客', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('66', '13', 'a', '奥迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('67', '13', 'a', '阿斯顿·马丁', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('68', '13', 'a', '阿尔法·罗密', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('69', '13', 'b', '奔驰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('70', '13', 'b', '宝马', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('71', '13', 'b', '本田', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('72', '13', 'b', '别克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('73', '13', 'b', '比亚迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('74', '13', 'b', '保时捷', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('75', '13', 'b', '宝骏', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('76', '13', 'b', '标致', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('77', '13', 'b', '宾利', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('78', '13', 'b', '宝沃', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('79', '13', 'b', '布加迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('80', '13', 'c', '长安', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('81', '13', 'c', '长城', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('82', '13', 'd', '大众', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('83', '13', 'd', '东风风行', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('84', '13', 'd', '东风风神', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('85', '13', 'f', '丰田', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('86', '13', 'f', '福特', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('87', '13', 'f', '法拉利', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('88', '13', 'g', '广汽传祺', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('89', '13', 'g', '广汽集团', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('90', '13', 'h', '哈弗', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('91', '13', 'h', '红旗', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('92', '13', 'h', '海马', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('93', '13', 'j', '吉利汽车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('94', '13', 'j', 'Jeep', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('95', '13', 'j', '捷豹', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('96', '13', 'j', '江淮', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('97', '13', 'j', '捷达', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('98', '13', 'j', '金杯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('99', '13', 'k', '凯迪拉克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('100', '13', 'k', '科尼赛克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('101', '13', 'l', '雷克萨斯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('102', '13', 'l', '路虎', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('103', '13', 'l', '领克', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('104', '13', 'l', '林肯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('105', '13', 'l', '劳斯莱斯', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('106', '13', 'l', '兰博基尼', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('107', '13', 'l', '铃木', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('108', '13', 'm', '马自达', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('109', '13', 'm', '名爵', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('110', '13', 'm', '玛莎拉蒂', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('111', '13', 'm', 'MINI', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('112', '13', 'm', '迈凯伦', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('113', '13', 'o', '讴歌', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('114', '13', 'q', '起亚', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('115', '13', 'q', '奇瑞', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('116', '13', 'r', '日产', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('117', '13', 'r', '荣威', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('118', '13', 's', '斯柯达', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('119', '13', 's', '上汽大通', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('120', '13', 's', '三菱', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('121', '13', 's', 'SONY', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('122', '13', 't', '特斯拉', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('123', '13', 'w', '沃尔沃', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('124', '13', 'w', '五菱汽车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('125', '13', 'w', 'WEY', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('126', '13', 'w', '蔚来', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('127', '13', 'x', '雪佛兰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('128', '13', 'x', '现代', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('129', '13', 'x', '雪铁龙', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('130', '13', 'x', '小鹏汽车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('131', '13', 'y', '英菲尼迪', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('132', '13', 'y', '一汽', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('133', '13', 'y', '宇通客车', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('134', '13', 'z', '众泰', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('135', '13', 'z', '中华', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('136', '13', 'z', '中兴', '2020-11-17 19:15:12', '0');
INSERT INTO `data_dictionary` VALUES ('137', '14', null, '涡轮增压', '2021-04-19 13:34:59', '0');
INSERT INTO `data_dictionary` VALUES ('138', '14', null, '自然吸气', '2021-04-19 13:34:59', '0');
INSERT INTO `data_dictionary` VALUES ('139', '14', null, '机械增压', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('140', '15', null, '前置后驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('141', '15', null, '前置前驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('142', '15', null, '后置后驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('143', '15', null, '中置后驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('144', '15', null, '适时四驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('145', '15', null, '全时四驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('146', '15', null, '分时四驱', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('147', '16', null, '机械制动', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('148', '16', null, '电子制动', '2021-04-19 14:59:59', '0');
INSERT INTO `data_dictionary` VALUES ('149', '17', null, '国V', '2021-04-20 09:47:59', '0');
INSERT INTO `data_dictionary` VALUES ('150', '17', null, '国VI', '2021-04-20 09:47:59', '0');
INSERT INTO `data_dictionary` VALUES ('151', '18', null, '92#', '2021-04-21 10:50:12', '0');
INSERT INTO `data_dictionary` VALUES ('152', '18', null, '95#', '2021-04-21 10:50:12', '0');
INSERT INTO `data_dictionary` VALUES ('153', '18', null, '98#', '2021-04-21 10:50:12', '0');

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
-- Records of data_type
-- ----------------------------
INSERT INTO `data_type` VALUES ('1', '空间', '2020-11-17 19:56:28', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('2', '动力', '2020-11-17 19:56:28', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('3', '能耗', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('4', '操控', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('5', '舒适性', '2020-11-17 19:56:28', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('6', '外观', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('7', '内饰', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('8', '配置', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('9', '用车', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('10', '国别', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('11', '能源类型', '2020-11-17 19:56:28', '2020-11-17 19:15:15', '0');
INSERT INTO `data_type` VALUES ('12', '级别', '2020-11-17 19:56:28', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('13', '厂商', '2020-11-17 19:56:28', '2020-11-17 19:15:12', '0');
INSERT INTO `data_type` VALUES ('14', '进气方式', '2020-11-17 19:56:28', '2021-04-19 13:32:11', '0');
INSERT INTO `data_type` VALUES ('15', '驱动方式', '2020-11-17 19:56:28', '2021-04-19 14:59:59', '0');
INSERT INTO `data_type` VALUES ('16', '制动类型', '2020-11-17 19:56:28', '2021-04-19 14:59:59', '0');
INSERT INTO `data_type` VALUES ('17', '环保标准', '2020-11-17 19:56:28', '2020-11-17 19:56:28', '0');
INSERT INTO `data_type` VALUES ('18', '燃油标号', '2021-11-17 19:58:59', '2021-11-17 19:58:59', '0');

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
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES ('1', 'Web前后端分离开发中解决跨域问题', '1,2', '> **在前后端分离的场景下，遇到跨域问题最直观的原因是，前端与后端分开部署在两个机器上或者使用了不同的端口号，当前端访问后端服务时得不到数据或者没有达到预期的效果。**\n\n**使用`SpringBoot` + `Vue`进行前后端分离开发时，需解决跨域的问题，使前后端能够独立运行**\n\n> CORS是一个W3C标准，全称是\"跨域资源共享\"（Cross-origin resource sharing）。\n> 它允许浏览器向跨源服务器，发出XMLHttpRequest请求，从而克服了AJAX只能同源使用的限制。\n\n在SpringBoot中配置CorsConfig 类\n```java\npackage com.superb.config;\n\nimport org.springframework.context.annotation.Configuration;\nimport org.springframework.web.servlet.config.annotation.CorsRegistry;\nimport org.springframework.web.servlet.config.annotation.WebMvcConfigurer;\n/**\n * 解决跨域问题\n */\n@Configuration\npublic class CorsConfig implements WebMvcConfigurer {\n    @Override\n    public void addCorsMappings(CorsRegistry registry) {\n        registry.addMapping(\"/**\")\n                .allowedOrigins(\"*\")\n                .allowedMethods(\"GET\", \"HEAD\", \"POST\", \"PUT\", \"DELETE\", \"OPTIONS\")\n                .allowCredentials(true)\n                .maxAge(3600)\n                .allowedHeaders(\"*\");\n    }\n}\n```\n\n**Vue默认使用8080端口\n后端在application.yml文件配置中修改端口号以防冲突**\n\n```yaml\nserver:\n  port: 8081\n```\n', '2020-11-17 18:56:40', '35', null, '', '0');
INSERT INTO `essay` VALUES ('2', 'MyBatis：ResultMap中＜association/＞与＜collection/＞的区别', '1,2', '## 区别\n\n**`<association></association>` 标签通常多用于多表查询关系映射中的一对一和多对一，生成的是外部对象**\n\n**`<collection></collection>` 标签通常多用于多表查询关系映射中的一对多，生成的是集合**\n\n\n## 用法\n\n**多个员工对应一个部门，且每个员工隶属一个部门。站在员工角度而言，其就是一个典型的多对一关系，可以使用`association`标签进行映射，相当于一个部门，里面存放该员工所属部门**\n\n**两表连接查询方式**\n```xml\n<resultMap id=\"empMap\" type=\"com.mybatis.bean.Employee\">\n        <id column=\"emp_id\" property=\"empId\"></id>\n        <result column=\"emp_name\" property=\"empName\"></result>\n        <!--association映射员工表里的部门属性Department dept-->\n        <association column=\"d_id\" property=\"dept\" javaType=\"com.mybatis.bean.Department\">\n            <id column=\"dept_id\" property=\"deptId\"></id>\n            <result column=\"dept_name\" property=\"deptName\"></result>\n        </association>\n</resultMap>\n```\n对应SQL语句：\n\n```\nselect e.* from employee e left join dept d on e.d_id = d.dept_id\n```\n\n**SQL语句嵌套方式**\n```xml\n<resultMap id=\"empMap\" type=\"com.mybatis.bean.Employee\">\n        <id column=\"emp_id\" property=\"empId\"></id>\n        <result column=\"emp_name\" property=\"empName\"></result>\n        <!--association映射员工表里的部门属性Department dept-->\n        <association column=\"d_id\"\n        			 property=\"dept\"\n        			 javaType=\"com.mybatis.bean.Department\" \n        			 select=\"com.mybatis.mapper.DepartmentMapper.getDept\">\n        <!--select属性指定连接查询的方法地址-->\n        </association>\n</resultMap>\n```\n对应分离SQL语句：\n\n```\nselect * from employee\nselect * from dept where dept_id = #{d_id}\n```\n\n**一个部门对应多个员工，且每个员工隶属一个部门。站在部门角度而言，其就是一个典型的一对多关系，可使用`collection`标签进行映射，相当于一个List集合，里面存放所有隶属于此部门的员工**\n\n**两表连接查询方式**\n```xml\n<!--映射关系，column表示数据库字段，property表示JavaBean字段-->\n    <resultMap id=\"deptMap\" type=\"com.mybatis.bean.Department\">\n        <id column=\"dept_id\" property=\"deptId\"></id>\n        <result column=\"dept_name\" property=\"deptName\"></result>\n        <!--特别的，外部对象属性：private List<Employee> emps-->\n        <collection property=\"emps\" javaType=\"java.util.ArrayList\"  ofType=\"com.mybatis.bean.Employee\">\n            <id column=\"emp_id\" property=\"empId\"></id>\n            <result column=\"emp_name\" property=\"empName\"></result>\n        </collection>\n    </resultMap>\n```\n\n```\nselect d.* from dept d left join employee e on e.d_id = d.dept_id\n```\n\n**SQL语句嵌套方式**\n```xml\n<!--映射关系，column表示数据库字段，property表示JavaBean字段-->\n<resultMap id=\"deptMap\" type=\"com.mybatis.bean.Department\">\n    <id column=\"dept_id\" property=\"deptId\"></id>\n    <result column=\"dept_name\" property=\"deptName\"></result>\n    <!--映射外部对象属性：private List<Employee> emps-->\n    <collection property=\"emps\" column=\"dept_id\" \n                javaType=\"java.util.ArrayList\"\n                ofType=\"com.mybatis.bean.Employee\" \n                select=\"com.mybatis.mapper.EmployeeMapper.getEmpsByDeptId\">\n                <!--通过select标签引入外部查询方法-->\n    </collection>\n</resultMap>\n```\n对应分离SQL语句：\n```\nselect * from employee where d_id = #{dept_id}\nselect * from dept \n```\n**详细使用方法请转至** [https://blog.csdn.net/weixin_46002478/article/details/108545775](https://blog.csdn.net/weixin_46002478/article/details/108545775)', '2020-11-17 18:58:08', '35', null, '', '0');
INSERT INTO `essay` VALUES ('3', 'MySQL如何创建索引优化索引', '2,3', '@[TOC](目录)\n**索引是帮助数据库高效获取数据的一种数据结构**\n\n - **优势** \n\n> 提高数据检索的效率，降低数据库的IO成本\n\n - **劣势**\n\n> 降低了更新表的速度\n\n## 索引分类\n\n 1. 单值索引\n\n> 一个索引包含单个列，一张表可以有多个单列索引\n\n 2. 唯一索引\n\n>   索引列的值必须唯一，但允许有空值\n\n 3. 复合索引\n\n>   一个索引包含多个列\n\n\n## 创建索引\nindexName ：索引名称\ntableName ：表名\ncolumnName : 列名（可包含多个）\n\n`方式一`\n```sql\ncreate index indexName on tableName(columnName,...);\n```\n`方式二`\n\n```sql\nalter table tableName add [UNIQUE] index indexName(columnName,...);\n```\n\n\n## 删除索引\n\n```sql\ndrop index indexName on tableName;\n```\n\n## 查看索引\n\n```sql\nshow index from tableName;\n```\n\n\n## 哪些情况适合创建索引\n- `主键自动建立唯一索引`\n- `频繁查询字段`\n- `查询中与其它表关联的字段，外键关系建立索引`\n- `频繁更新的字段不适合创建索引`\n- `where条件里用到的建议建索引`\n- `单键、组合键索引的选择问题，在高并发下倾向于组合索引`\n- `查询中排序的字段适合做索引，将大大提高排序速度`\n- `查询中统计或者分组的字段`\n\n\n\n## 哪些情况不建议创索引\n- `数据少`\n- `经常增删改的表`\n- `数据重复且分布平均的表字段`\n\n## 关于索引优化\n\n\n- **两表连接**\n  - **左连接 索引加右表外键**\n  - **右连接 索引加左表外键**\n- **组合索引(where)**\n  - **全值匹配 查询或筛选的多列或一列与创建索引相同**\n  - **最佳左前缀法则（位置顺序不一致也会导致索引失效，但MySQL会根据实际情况自动优化成位置顺序一致，所以有时候也不会失效,例如where a = 1 and c = 2 and b = 3 `MySQL`可以自动调整位置）**\n  - **中间不能断 组合索引的使用中间列不能失去**\n  - **范围之后全失效 遇到查询范围的条件 之后的索引会失效**\n- **不在索引字段上做任何操作(类型转换)，否则索引失效**\n- **尽量使用索引覆盖(`select`)**\n\n\n## 关于索引失效\n\n- **使用`!=`或者`<>`的时候索引失效**\n- **`is null`或者`is not null`也会失效**\n- **`like`后配合`%`或是`_`最好加字段右边，否则失效，如果非要用，可以用覆盖索引解决。**\n- **字符串不加单引号索引失效，因为使用了隐式类型转换。**\n- **少用`or`，索引会失效**\n- **类型转换，或者在索引字段上进行操作**\n\n\n\n\n## order by与索引\n\n> 排序字段跟索引一致可以避免filesort \n> 对于组合索引使用排序，顺序、升降要一致，否则产生filesort\n\n\n**`示例`：**\n\n索引情况：`KEY a_b_c(a,b,c)`\n\n- **order by可以使用索引情况**\n  - order by a\n  - order by a,b\n  - order by a,b,c\n  - order by a DESC,b DESC,c DESC\n  - where a = const order by b,c(带头大哥是常量，所以排序不是从a开始也可以)\n  - where a = const and b = const order by c\n  - where a = const and b > const order by b,c(同上)\n- **order by索引失效情况**\n  - order by a ASC,b DESC,c DESC （升降不一致）\n  - order by b,c (索引头丢失)\n  - where a = const order by c （中间断了）\n  - where a = const order by c,d （d不是索引一部分）\n  - where a in (...) order by b,c (范围之后全失效)', '2020-11-17 18:59:05', '35', null, '', '0');
INSERT INTO `essay` VALUES ('8', 'MySQL开启关闭自动提交', '1,3', '**MySQL在使用事务或进行大量更新操作时会涉及到手动提交问题。**\n\n\n\n- **查看自动提交**\n  - `show variables like \'autocommit\';`\n- **设置开启自动提交**\n  - `set autocommit = 1;`\n- **设置关闭自动提交**\n  - `set autocommit = 0;`', '2020-11-20 19:45:45', '35', null, '', '0');
INSERT INTO `essay` VALUES ('9', '异常：No converter found for return value of type: class java.util.ArrayList', '2,3', '![在这里插入图片描述](https://img-blog.csdnimg.cn/20201102173558232.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\norg.springframework.http.converter.HttpMessageNotWritableException: No converter found for return value of type: class java.util.ArrayList\n	org.springframework.web.servlet.mvc.method.annotation.AbstractMessageConverterMethodProcessor.writeWithMessageConverters(AbstractMessageConverterMethodProcessor.java:230)\n	org.springframework.web.servlet.mvc.method.annotation.RequestResponseBodyMethodProcessor.handleReturnValue(RequestResponseBodyMethodProcessor.java:181)\n	org.springframework.web.method.support.HandlerMethodReturnValueHandlerComposite.handleReturnValue(HandlerMethodReturnValueHandlerComposite.java:82)\n	org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:123)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\n	org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\n	org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\n	org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\n	org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\n	org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\n	org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\n\n\n## 尝试解决：\n在spring-mvc配置文件中添加\n\n```xml\n<mvc:annotation-driven/>\n```\n', '2020-11-20 19:45:45', '35', null, '', '0');
INSERT INTO `essay` VALUES ('11', 'MySQL：七种join表连接方式（全）', '2,3', '![join](https://img-blog.csdnimg.cn/2020103014283957.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n## 内连接 (inner join)\n\n```sql\nselect * from a inner join b on a.id = b.id\n```\n\n## 左连接 (left join)\n\n```sql\nselect * from a left join b on a.id = b.id\n```\n\n**左连接去重叠部分**\n\n```sql\nselect * from a left join b on a.id = b.id where b.id is null\n```\n\n## 右连接 (right join)\n\n```sql\nselect * from a right join b on a.id = b.id\n```\n\n**右连接去重叠部分**\n\n```sql\nselect * from a right join b on a.id = b.id where a.id is null\n```\n\n## 外连接 union(自动去重)\n\n```sql\nselect * from a left join b on a.id = b.id  \n\nunion\n\nselect * from a right join b on a.id = b.id\n```\n\n**外连接去除公共部分**\n\n```sql\nselect * from a right join b on a.id = b.id where a.id is null \n\nunion \n\nselect * from a left join b on a.id = b.id where b.id is null;\n```\n\n\n> 注意，MySQL不支持一般的外连接，可以用`union`代替实现外连接。\n', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('12', 'MySQL中函数、存储过程的创建、删除与查看', '1,3', '@[TOC](目录标题)\n\n## 创建函数\n```sql\nDELIMITER $   //设置$为结束标识\nCREATE FUNCTION 方法名() 返回值类型\nBEGIN\n	//函数体...\nEND $\n```\n \n示例1：**无参返回**，返回emp表中数据的个数\n\n```sql\nDELIMITER $\nCREATE FUNCTION getCount() RETURNS INT\nBEGIN\n	SET @a = 0;    #定义变量\n	SELECT COUNT(*) INTO @a #查询结果值给到变量\n	FROM emp;\n	RETURN @a;   #返回变量值\nEND $\n```\n示例2：**有参返回**，输入部门编号，返回部门平均工资\n\n```sql\nDELIMITER $\nCREATE FUNCTION avgSalary(id INT) RETURNS DOUBLE\nBEGIN\n	SET @x = 0; #定义变量\n	SELECT AVG(salary) INTO @x #查询结果值给到变量\n	FROM emp\n	GROUP BY deparid\n	HAVING deparid = id;\n	RETURN @x;  #返回变量值\nEND $\n```\n\n## 使用函数\n\n```sql\nSELECT 函数名(参数列表);\n```\n示例\n\n```sql\nshow getCount();\nshow avgSalary(1);\n```\n\n## 查看函数\n\n```sql\n//查看所有函数\nSHOW FUNCTION STATUS; \n//查看指定\nSHOW CREATE FUNCTION 函数名;\n```\n示例\n\n```sql\nshow CREATE FUNCTION getCount;\nshow CREATE FUNCTION avgSalary;\n```\n\n## 删除函数\n\n```sql\nDROP FUNCTION 函数名;\n```\n示例\n```sql\nDROP FUNCTION getCount;\nDROP FUNCTION avgSalary;\n```\n\n## 创建存储过程\n\n```sql\nDELIMITER $\nCREATE PROCEDURE 名称(参数)\nBEGIN\n	//存储过程体...\nEND $\n```\n示例1：**无参无返回值**，批量插入数据\n\n```sql\nDELIMITER $\nCREATE PROCEDURE insertAdmin()\nBEGIN\n	INSERT INTO admin VALUES\n	(1,\'Tom\',15,160),\n	(2,\'Tom\',15,1580),\n	(3,\'Tom\',19,1586),\n	(4,\'Tom\',15,15860);\nEND $\n```\n\n示例2：**有参无返回值**，通过女孩的名字查询`id`对应的男孩\n```sql\nDELIMITER $\nCREATE PROCEDURE selectBoyGirl(IN `name` VARCHAR(8))\nBEGIN\n	SELECT boys.*\n	FROM girls\n	JOIN boys\n	ON girls.`id`=boys.`id`\n	WHERE `name`=girls.`name`;\nEND $\n```\n\n示例3：**有参有返回值**，通过女孩的名字查询`id`对应的男孩，并返回男孩名字。\n\n> IN：代表输入参数\n> OUT：代表返回值\n\n```sql\nCREATE PROCEDURE selectBoyGirl2(IN `name` VARCHAR(8),OUT boyName VARCHAR(8))\nBEGIN\n	SELECT boys.`name` INTO boyName\n	FROM boys\n	INNER JOIN girls\n	ON boys.`id`=girls.`id`\n	WHERE `name`=girls.`name`;\nEND $\n```\n\n## 调用存储过程\n\n```sql\nCALL 存储过程名称(参数);\n```\n示例\n\n```sql\nCALL insertAdmin();\n\nCALL selectBoyGirl(\'苍老师\');\n\nSET @bName; //先定义变量\nCALL selectBoyGirl2(\'苍老师\',@bName);\n```\n\n## 删除存储过程\n\n```sql\nDROP PROCEDURE 名称;\n```\n示例\n\n```sql\nDROP PROCEDURE insertAdmin;\nDROP PROCEDURE selectBoyGirl;\nDROP PROCEDURE selectBoyGirl2;\n```\n\n## 查看存储过程\n\n```sql\n//查看所有存储过程\nSHOW PROCEDURE STATUS;\n//查看指定\nSHOW CREATE PROCEDURE 名称;\n```\n示例\n```sql\nSHOW CREATE PROCEDURE insertAdmin;\nSHOW CREATE PROCEDURE selectBoyGirl;\nSHOW CREATE PROCEDURE selectBoyGirl2;\n```\n\n## 函数与存储过程的对比\n\n> 存储过程：返回0个或多个，适合做批量插入，更新。\n>  调用使用`CALL`\n\n> 函数：有且仅有一个返回，适合做数据处理返回一个结果\n> 调用使用`SELECT`\n\n**都使用DELIMITER设置结尾$**', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('13', 'MySQL中视图的创建、修改、删除与查看', '1,3', '@[TOC](目录标题)\n\n## 创建视图\n```sql\nCREATE VIEW [视图名] AS [视图体]\n```\n示例\n```sql\nCREATE VIEW smz\nAS\nSELECT firstname,employee_id,deparid\nFROM myemployees;\n```\n\n## 使用视图\n```sql\nSELECT *\nFROM smz\nWHERE deparid IN(20,60);\n```\n\n## 修改视图\n\n 1. 如果存在就修改，不存在就创建\n```sql\nCREATE OR REPLACE VIEW 视图名\nAS\n视图体;\n```\n 2. 修改\n\n```sql\nALTER VIEW 视图名\nAS\n视图体;\n```\n\n## 删除视图\n\n```sql\nDROP VIEW 视图名;\n```\n\n## 查看视图\n```sql\nSHOW CREATE VIEW 视图名;\n```\n或者\n```sql\nDESC 视图名;\n```\n', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('14', 'MySQL高级建表语句', '1,3', '@[TOC](视频目录)\n\n## P13\n\n - tbl_emp\n - tbl_dept\n\n```sql\nCREATE TABLE `tbl_emp` (\n`id` int(11) NOT NULL AUTO_INCREMENT,\n`name` varchar(20) DEFAULT NULL,\n`deptId` int(11) DEFAULT NULL,\nPRIMARY KEY (`id`) ,\nKEY `fk_dept_id`(`deptId`)\n)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8;\n\nCREATE TABLE `tbl_dept` (\n`id` int(11) NOT NULL AUTO_INCREMENT,\n`deptName` varchar(30) DEFAULT NULL,\n`locAdd` varchar(40) DEFAULT NULL,\nPRIMARY KEY (`id`)\n) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8;\n\ninsert into tbl_dept(deptName,locAdd) values(\'RD\',11);\ninsert into tbl_dept(deptName,locAdd) values(\'HR\',12);\ninsert into tbl_dept(deptName,locAdd) values(\'MK\',13);\ninsert into tbl_dept(deptName,locAdd) values(\'MIS\',14);\ninsert into tbl_dept(deptName,locAdd) values(\'FD\',15);\n\ninsert into tbl_emp(NAME,deptId) values(\'z3\',1);\ninsert into tbl_emp(NAME,deptId) values(\'z4\',1);\ninsert into tbl_emp(NAME,deptId) values(\'z5\',1);\ninsert into tbl_emp(NAME,deptId) values(\'w5\',2);\ninsert into tbl_emp(NAME,deptId) values(\'w6\',2);\ninsert into tbl_emp(NAME,deptId) values(\'s7\',3);\ninsert into tbl_emp(NAME,deptId) values(\'s8\',4);\ninsert into tbl_emp(NAME,deptId) values(\'s9\',51);\n```\n\n## P31\n\n - article\n\n```sql\nCREATE TABLE IF NOT EXISTS `article`(\n`id` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,\n`author_id` INT (10) UNSIGNED NOT NULL,\n`category_id` INT(10) UNSIGNED NOT NULL , \n`views` INT(10) UNSIGNED NOT NULL , \n`comments` INT(10) UNSIGNED NOT NULL,\n`title` VARBINARY(255) NOT NULL,\n`content` TEXT NOT NULL\n);\n\ninsert into `article`(author_id,category_id,views,comments,title,content) values\n(1,1,1,1,\'1\',\'1\'),\n(2,2,2,2,\'2\',\'2\'),\n(1,1,3,3,\'3\',\'3\');\n```\n\n## P32\n\n - class\n - book\n\n```sql\nCREATE TABLE IF NOT EXISTS `class`(\n`id` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,\n`card` INT (10) UNSIGNED NOT NULL\n);\nCREATE TABLE IF NOT EXISTS `book`(\n`bookid` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,\n`card` INT (10) UNSIGNED NOT NULL\n);\n\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\ninsert into class(card) values(floor(1+(rand()*20)));\n\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\ninsert into book(card) values(floor(1+(rand()*20)));\n```\n\n## P33\n\n - phone\n\n```sql\nCREATE TABLE IF NOT EXISTS `phone`(\n`phoneid` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,\n`card` INT (10) UNSIGNED NOT NULL\n)ENGINE = INNODB;\n\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\ninsert into phone(card) values(floor(1+(rand()*20)));\n```\n\n## P34\n\n - staffs\n\n```sql\nCREATE TABLE staffs(\nid INT PRIMARY KEY AUTO_INCREMENT,\n`name` VARCHAR(24)NOT NULL DEFAULT\'\' COMMENT\'姓名\',\n`age` INT NOT NULL DEFAULT 0 COMMENT\'年龄\',\n`pos` VARCHAR(20) NOT NULL DEFAULT\'\' COMMENT\'职位\',\n`add_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT\'入职时间\'\n)CHARSET utf8 COMMENT\'员工记录表\';\n\ninsert into staffs(NAME,age,pos,add_time) values(\'z3\',22,\'manager\',NOW());\ninsert into staffs(NAME,age,pos,add_time) values(\'July\',23,\'dev\',NOW());\ninsert into staffs(NAME,age,pos,add_time) values(\'2000\',23,\'dev\',NOW());\n```\n\n## P40\n\n - tbl_user\n\n```sql\nCREATE TABLE tbl_user(\n`id` INT(11) NOT NULL AUTO_INCREMENT,\n`name` VARCHAR(20) DEFAULT NULL,\n`age`INT(11) DEFAULT NULL,\n`email` VARCHAR(20) DEFAULT NULL,\nPRIMARY KEY(`id`)\n)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;\n\ninsert into tbl_user(NAME,age,email) values(\'1aa1\',21,\'b@163.com\');\ninsert into tbl_user(NAME,age,email) values(\'2aa2\',222,\'a@163.com\');\ninsert into tbl_user(NAME,age,email) values(\'3aa3\',265,\'c@163.com\');\ninsert into tbl_user(NAME,age,email) values(\'4aa4\',21,\'d@163.com\');\n```\n\n## P44\n\n - test03\n\n```sql\ncreate table test03(\nid int primary key not null auto_increment,\nc1 char(10),\nc2 char(10),\nc3 char(10),\nc4 char(10),\nc5 char(10)\n);\n\ninsert into test03(c1,c2,c3,c4,c5) values(\'a1\',\'a2\',\'a3\',\'a4\',\'a5\');\ninsert into test03(c1,c2,c3,c4,c5) values(\'b1\',\'b2\',\'b3\',\'b4\',\'b5\');\ninsert into test03(c1,c2,c3,c4,c5) values(\'c1\',\'c2\',\'c3\',\'c4\',\'c5\');\ninsert into test03(c1,c2,c3,c4,c5) values(\'d1\',\'d2\',\'d3\',\'d4\',\'d5\');\ninsert into test03(c1,c2,c3,c4,c5) values(\'e1\',\'e2\',\'e3\',\'e4\',\'e5\');\n```\n\n## P48\n\n - tblA\n\n```sql\ncreate table tblA(\nage int,\nbirth timestamp not null\n);\n\ninsert into tblA(age,birth) values(22,now());\ninsert into tblA(age,birth) values(23,now());\ninsert into tblA(age,birth) values(24,now());\n```\n\n## P50\n\n```sql\ncreate table dept(\nid int unsigned primary key auto_increment,\ndeptno mediumint unsigned not null default 0,\ndname varchar(20) not null default \"\",\nloc varchar(13) not null default \"\"\n)engine=innodb default charset=GBK;\n\nCREATE TABLE emp(\nid int unsigned primary key auto_increment,\nempno mediumint unsigned not null default 0,\nename varchar(20) not null default \"\",\njob varchar(9) not null default \"\",\nmgr mediumint unsigned not null default 0,\nhiredate date not null,\nsal decimal(7,2) not null,\ncomm decimal(7,2) not null,\ndeptno mediumint unsigned not null default 0\n)ENGINE=INNODB DEFAULT CHARSET=GBK;\n//函数\ndelimiter $$\ncreate function ran_string(n int) returns varchar(255)\nbegin\ndeclare chars_str varchar(100) default \'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\';\ndeclare return_str varchar(255) default \'\';\ndeclare i int default 0;\nwhile i < n do\nset return_str = concat(return_str,substring(chars_str,floor(1+rand()*52),1));\nset i=i+1;\nend while;\nreturn return_str;\nend $$\n//函数\ndelimiter $$\ncreate function rand_num() returns int(5)\nbegin\ndeclare i int default 0;\nset i=floor(100+rand()*10);\nreturn i;\nend $$\n//存储过程\ndelimiter $$ \ncreate procedure insert_emp(in start int(10),in max_num int(10))\nbegin\ndeclare i int default 0;\nset autocommit = 0;\nrepeat\nset i = i+1;\ninsert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) values((start+i),ran_string(6),\'salesman\',0001,curdate(),2000,400,rand_num());\nuntil i=max_num\nend repeat;\ncommit;\nend $$\n//存储过程\ndelimiter $$ \ncreate procedure insert_dept(in start int(10),in max_num int(10))\nbegin\ndeclare i int default 0;\nset autocommit = 0;\nrepeat\nset i = i+1;\ninsert into dept(deptno,dname,loc) values((start+i),ran_string(10),ran_string(8));\nuntil i=max_num\nend repeat;\ncommit;\nend $$\n```\n\n\n## P54\n\n - mylock\n\n```sql\ncreate table mylock (\nid int not null primary key auto_increment,\nname varchar(20) default \'\'\n) engine myisam;\n\ninsert into mylock(name) values(\'a\');\ninsert into mylock(name) values(\'b\');\ninsert into mylock(name) values(\'c\');\ninsert into mylock(name) values(\'d\');\ninsert into mylock(name) values(\'e\');\n```\n\n## P57\n\n - test_innodb_lock\n\n```sql\nCREATE TABLE test_innodb_lock (\na INT(11),\nb VARCHAR(16)\n)ENGINE=INNODB;\n```\n', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('15', 'Vue入门教程常用指令总结', '1,3', '## 关于Vue\n@[TOC](目录)\n\n> 它是一套用于构建用户界面的`渐进式框架`。\n> 与其它大型框架不同的是，`Vue` 被设计为可以自底向上逐层应用。`Vue`的核心库只关注`视图层`，不仅易于上手，还便于与第三方库或既有项目整合。\n> 另一方面，当与`现代化的工具链`以及各种`支持类库`结合使用时，`Vue`也完全能够为复杂的单页应用提供驱动。\n\n## 快速上手\n引入 Vue：有`开发环境版本`和`生成环境版本`，选其中一个即可。\n\n```html\n<!-- 开发环境版本，包含了有帮助的命令行警告 -->\n<script src=\"https://cdn.jsdelivr.net/npm/vue/dist/vue.js\"></script>\n```\n\n```html\n<!-- 生产环境版本，优化了尺寸和速度 -->\n<script src=\"https://cdn.jsdelivr.net/npm/vue\"></script>\n```\n## 第一个Vue程序\n\n```html\n<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>Title</title>\n    <!--引入Vue.js-->\n    <script src=\"https://cdn.jsdelivr.net/npm/vue/dist/vue.js\"></script>\n</head>\n<body>\n<!--View层-->\n<div id=\"app\">\n    {{message}}\n</div>\n\n<script>\n    new Vue({\n    	//挂载点\n        el: \"#app\",\n        //数据\n        data:{\n            message: \"Hello Vue\"\n        }\n    });\n</script>\n</body>\n</html>\n```\n## 常用指令\n 1. **el** 挂载点 通常绑定`id`\n   `el: \"#app\"`\n---\n 2. **data** 数据\n\n```javascript\n		data: {\n            message: \"Hello 尤玉溪\"\n        }\n```\n\n---\n 3. **methods** 方法区\n```javascript\n		methods: {\n			//方法名\n            method: function () {\n            	//方法体\n                alert(this.message);\n            }\n        }\n```\n---\n 4. **v-text** 纯文本\n   `v-text=\"Hello\"`\n   ---\n 5. **v-html** 加结构\n    `v-html=\"<b>Hello</b>\"`\n    \n`v-text`与`v-html`对比\n```html\n<div id=\"app\">\n\n    <h1 v-text=\"message\"></h1>\n    <h1 v-html=\"message\"></h1>\n    \n</div>\n<script>\n    let vue = new Vue({\n        el: \"#app\",\n        data: {\n            message: \"<b>Hello</b>\"\n        }\n    })\n</script>\n```\n对比结果\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016200521250.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n---\n 6. **v-if** 判断\n`v-if=\"true\"`\n`v-else-if=\"1>2\"`\n`v-else`\n\n```html\n<div id=\"app\">\n\n    <h1 v-if=\"type===\'A\'\">A</h1>\n    <h1 v-else-if=\"type===\'B\'\">B</h1>\n    <h1 v-else>C</h1>\n    \n</div>\n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            type: \'A\'\n        }\n    })\n</script>\n```\n\n---\n 7. **v-for** 循环\n  `v-for=\"(item,index) in items\"` 遍历元素带索引\n  `v-for=\"arr in arrs\"` 遍历`arrs`数组到`arr`\n\n```html\n<div id=\"app\">\n<li v-for=\"(item,index) in items\">\n    索引：{{index}}\n    数据：{{item}}\n</li>\n<hr>\n<li v-for=\"arr in arrs\">\n    姓名：{{arr.name}}\n    年龄：{{arr.age}}\n</li>\n\n</div>\n<script>\n    new Vue({\n        el: \"#app\",\n        data:{\n            items: [\"Java\",\"C++\",\"Python\"],\n            arrs: [{name: \"卢本伟\",age: 35},{name: \"茄子\",age: 48}]\n        }\n    })\n</script>\n```\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016202203656.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n---\n 8. **v-on** 绑定事件\n  `v-on:click=\"方法名\"`吧不方便\n  `@click=\"方法名\"` 单击简写\n  `@keyup.enter=\"方法名\"` 回车键监听简写\n\n```html\n<div id=\"app\">\n\n    <button v-on:click=\"click\">单击</button>\n	<!--简写-->\n    <button @click=\"click()\">单击</button>\n\n    <button @keyup.enter=\"click\">回车</button>\n</div>\n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            message: \"Hello\"\n        },\n        methods: {\n            click : function () {\n                alert(this.message);\n            }\n        }\n    });\n</script>\n```\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016202651366.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n---\n 9. **v-show** 判断是否显示，布尔值，本质是切换元素的display。\n\n```html\n<div id=\"app\">\n\n    <h1 v-show=\"flag >= 0\">Hello 尤玉溪</h1>\n    \n</div>\n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            flag: 0\n        }\n    })\n</script>\n```\n---\n 10. **v-model** 双向数据绑定，前后端数据实时同步。\n\n```html\n<div id=\"app\">\n\n    输入文本：<input type=\"text\" v-model=\"message\">{{message}}\n</div>\n\n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            message: \"Hello\"\n        }\n    })\n</script>\n```\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016203850623.png#pic_center)\n\n---\n 11. **v-bind** 设置属性\n`v-bind:title=\"百度\"` 设置标题，前缀`v-bind`可省略\n`:class=\"flag?\'active\':\'\'\"` 简写，三元运算，如果`flag`为`true`，则设置属性`class`为`active`，否则为空串。\n`:class=\"{active:flag}\"`  简写，对象判断，如果`flag`为`true` 就设置属性`class`为`active`。\n\n```html\n<style>\n    .active{\n        color: #297;\n    }\n</style>\n<div id=\"app\">\n    <a href=\"https://www.baidu.com\" v-bind:title=\"src\">百度一下</a>\n    \n    <!--三元运算-->\n    <h1 :class=\"flag?\'active\':\'\'\">Hello World</h1>\n    <!--对象-->\n    <h1 :class=\"{active:flag}\">Hello World</h1>\n</div>\n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            src: \"百度\",\n            flag: true\n        }\n    })\n</script>\n```\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016204513873.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n---\n↓↓↓↓↓↓↓↓↓↓关于axios异步通信↓↓↓↓↓↓↓↓↓↓\n\n[https://blog.csdn.net/weixin_46002478/article/details/109124880](https://blog.csdn.net/weixin_46002478/article/details/109124880)\n\n', '2021-03-18 05:28:49', '3', null, '', '0');
INSERT INTO `essay` VALUES ('16', 'axios基本用法——简单的异步get、post通信示例', '1,3', '## axios异步通信\n\n> - **`axios`必须先导入才可以使用**\n> - **使用`get`或`post`方法即可发送对应请求**\n> - **`then`方法中的回调函数会在请求成功或失败是触发**\n> - **通过回调函数的形参可以获取响应内容或错误信息**\n\n导入`<script src=\"https://unpkg.com/axios/dist/axios.min.js\"></script>`\n\n\n 1. **`get`方式**\n请求格式`axios(\"请求链接?key=value&key2=value2\").then(function(response{},function(error){})`\n\n> 1.`?`后跟路径传递的`变量键值对`，可跟多个，用`&`隔开\n> 2.`then`中有两个回调函数，前者是`响应`，内容在参数`response`中，后者是`错误`，错误信息在参数`error`中\n\n```html\n<div id=\"app\">\n    <input type=\"button\" value=\"get请求\" @click=\"get\">\n    {{msg}}\n</div>  \n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            msg: \"冷笑话\"\n        },\n        methods: {\n            get: function(){\n            	//this进入axios会丢失，先存储起来。\n                var that = this;\n                axios.get(\"https://autumnfish.cn/api/joke/list?num=3\")\n                //链式编程\n                .then(function(response){\n                	//赋值操作\n                    that.msg = response.data.jokes;\n                },\n                //异常回调方法\n                function(error){\n                    console.log(error);\n                })\n            }\n        }\n    })\n</script>\n```\n请求结果\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2020101620532656.png#pic_center)\n\n 2. **`post`方式**\n请求格式`axios(\"请求链接\",{key:value,key2:value2}).then(function(response{},function(error){})`\n\n> 1.请求路径与传递键值对分开写，用逗号隔开，键值对用花括号以`对象的方式存储`，多个参数之间用逗号隔开\n> 2.`then`中有两个回调函数，前者是`响应`，内容在参数`response`中，后者是`错误`，错误信息在参数`error`中\n\n```html\n<div id=\"app\">\n    <input type=\"button\" value=\"post请求\" @click=\"post()\">\n    {{msg}}\n</div>\n    \n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            msg: \"注册信息\"\n        },\n        methods: {\n            post: function(){\n                var that = this;\n                axios.post(\"https://autumnfish.cn/api/user/reg\",{username:\"smz\"})\n                .then(function(data){\n                    that.msg = data;\n                },function(error){\n                    console.log(error);\n                })\n            }\n        }\n    })\n</script>\n```\n请求结果\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016211943854.png#pic_center)\n\n---\n特别的，如果请求路径有误，错误回调函数会返回`error`信息，这里以`get`方式举例\n\n```html\n<div id=\"app\">\n    <input type=\"button\" value=\"get请求\" @click=\"get\">\n    {{msg}}\n</div>\n    \n<script>\n    new Vue({\n        el: \"#app\",\n        data: {\n            msg: \"错误信息\"\n        },\n        methods: {\n            get: function(){\n                var that = this;\n                //错误路径\n                axios.get(\"https://www.superb12580.com\")\n                .then(function(response){\n                    that.msg = response;\n                },\n                //错误回调函数\n                function(error){\n                    that.msg = error;\n                })\n            }\n        }\n    })\n</script>\n```\n请求结果\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016213347593.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n', '2021-03-18 05:48:03', '3', null, '', '0');
INSERT INTO `essay` VALUES ('17', '极简操作——Linux下安装部署JDK环境', '1,3', '## 前期准备\n\n 1. 已部署好Linux环境\n如果没有，推荐食用尚硅谷老韩的教学视频[https://www.bilibili.com/video/BV1dW411M7xL](https://www.bilibili.com/video/BV1dW411M7xL)\n 2. 拿到JDK压缩包 \n链接：[https://pan.baidu.com/s/1tGcheOzGJyhmxRO9Ev4rLQ](https://pan.baidu.com/s/1tGcheOzGJyhmxRO9Ev4rLQ)\n提取码：9icn \n 3. 使用Xftp 5将压缩包传输到Linux系统上\n如果没有安装Xfrp 5，参考[https://blog.csdn.net/weixin_46002478/article/details/109095277](https://blog.csdn.net/weixin_46002478/article/details/109095277)\n\n将安装包从左边拖拽至右边即可。\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015120548637.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n## 安装部署\n 1. **上述工作完成之后，开始安装部署，在Linux上打开终端。**\n\n> 输入命令切入到opt目录下：\n> cd /opt  \n\n> 输入命令查看所有文件目录：\n>  ll\n\n切入到opt目录下，并查看所有文件，发现安装包。\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015120945832.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 2. **解压JDK文件**\n\n> 输入命令进行解压：\n> tar -zxvf jdk-7u79-linux-x64.gz\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015121648154.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 3. **配置环境变量**\n在Windows系统上一样，为了使其在任何文件目录下都能使用`javac`、`java`等命令。\n\n> 输入命令编辑`etc`目录下的`profile`文件:\n> `vim /etc/profile`\n\n步骤\n\n> 1.打开之后按下大写字母`G`切到文件最底部\n> 2.按下 `i` 键进入编辑模式\n\n> 3.输入  `JAVA_HOME=/opt/jdk1.7.0_79`\n> 4.另起一行输入 `PATH=/opt/jdk1.7.0_79/bin:$PATH`\n> 5.再起一行输入 `export JAVA_HOME PATH`\n\n> 6.按下 `esc`键退出到编辑模式，在按下`:`进入命令行模式\n> 7.命令行模式下输入`wq`，回车键即可保存退出页面\n\n图示\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015123611857.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n测试命令`javac`\n\n> 在根目录 / 下测试\n> `javac`\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015123915736.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n出现以上信息说明环境变量配置成功！\n\n 4. **编写Hello World程序进行测试**\n尝试在Linux系统下进行编程，首先要进行最简单的程序测试。\n\n在`/home`目录下创建`Hello.java`文件\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015125125474.png#pic_center)\n\n\n输入`i`进入编辑模式编写`main`方法\n\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015125333550.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n> `esc`键切回到标准模式\n> 再输入`:`进入命令行模式\n> 输入`wq`报存并退出\n\n编译`Hello.java`\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015125607314.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n运行\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015125719436.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n至此，Linux系统部署JDK环境完成。\n\n---\nLinux常用指令大全------------------↓↓↓↓↓↓↓↓↓↓↓------------------\n\n[https://blog.csdn.net/weixin_46002478/article/details/109083509](https://blog.csdn.net/weixin_46002478/article/details/109083509)', '2021-03-18 08:45:59', '3', null, '', '0');
INSERT INTO `essay` VALUES ('18', 'Xftp 5连接Linux实现远程文件上传与下载', '2,3', '## 前期准备\n\n - 已搭建好Linux环境\n - 下载Xftp 5安装包\n\n链接：[https://pan.baidu.com/s/1vWUrsgBpzUnlm_mVomFL1Q](https://pan.baidu.com/s/1vWUrsgBpzUnlm_mVomFL1Q)\n提取码：vonj \n\n## 建立连接\n下载完毕之后进行傻瓜式下一步安装即可。\n\n 1. **打开软件，新建连接**\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015131531193.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n这里需要提供远程Linux系统的IP地址，那就需要去`Linux`上查询`IP`地址。\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2020101513181657.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n\n\n依次填入`IP`，`端口号`，及`用户名密码`\n\n\n\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015132222305.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n点击确定\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015132336327.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n连接成功\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015132434746.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n发现有乱码，需要设置\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015132635992.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n完美解决\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201015132709773.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n**Windows与LInux之间进行拖拽文件就可以进行传输**\n\n---\nLinux常用指令大全------------------↓↓↓↓↓↓↓↓↓↓↓------------------\n\n[https://blog.csdn.net/weixin_46002478/article/details/109083509](https://blog.csdn.net/weixin_46002478/article/details/109083509)', '2021-03-18 08:46:58', '3', null, '', '0');
INSERT INTO `essay` VALUES ('19', '干货——Linux常用指令命令大全', '3,4', '\n@[TOC](Linux目录)\n> **Linux世界里一切皆文件，且只有一个根目录 \"/\"**\n\n## 文件目录类常用指令\n\n```java\n pwd \n 显示当前工作目录绝对路径\n\n ls或ll(-l,-a) \n 显示当前目录下的所有文件详细信息\n\n cd~或cd \n 回到此用户家目录\n\n cd .. 回到上一级\n   绝对路径加 /，从根目录开始 ，相对路径就从本目录开始。\n\n mkdir 创建目录\n   mkdir -p  一次性创建多级目录\n\n rmdir 删除空目录\n   rm -rf 删除非空目录\n\n touch \n 创建空文件，可以一次性创建多个\n\n cp 文件 新目录  --> 复制文件到新目录\n   cp -r 目录 新目录 --> 递归拷贝 整个文件夹复制\n   \\cp -r 目录 新目录 --> 强制覆盖\n\n rm 删除文件或目录\n   rm -r 递归删除整个文件夹\n   rm -f 强制删除不提示\n\n mv 移动文件或重命名\n   mv 旧文件名 新文件名 -->重命名\n   mv 文件名 路径(/新文件名) -->移动并重命名\n\n cat 查看文件内容，只读。\n   cat -n 显示行号\n   cat  文件名| more 分页显示\n\n less 查看大型文件内容，只读。\n   空格 翻页\n\n > 重定向\n   ls > a.txt 把ls指令显示的内容覆盖到a.txt中 如果不在就创建\n   cat b.txt > a.txt 将b.txt文件内容覆盖到a.txt中\n   echo \"内容\" > a.txt 将内容直接覆盖到a.txt中\n\n >> 追加\n   ls > a.txt 把ls指令显示的内容追加到a.txt中 如果不在就创建\n   cat b.txt > a.txt 将b.txt文件内容追加到a.txt中\n   echo \"内容\" > a.txt 将内容直接追加到a.txt中\n\n echo 输出内容到控制台\n   echo \"你好\"\n   echo $PATH 输出当前环境变量\n\n head 显示开头部分\n   head c.txt 默认显示前十行\n   head -n 5 c.txt 显示前五行\n\n tail 显示末尾\n   tail c.txt 默认后十行\n   tail -n 5 c.txt\n   tail -f 实时追踪文档的所有更新\n\n ln\n   ln -s /root linkToRoot 在当前目录创建软连接指向root 相当于快捷方式\n\n history 查看历史命令\n   history 10 查看最近10条\n   !12 查看第12条\n```\n---\n---\n## 目录结构分析\n\n> - /bin  \n> Binary缩写，存放常用的指令\n> - /sbin\n> 存放系统管理员使用的系统管理程序\n> - /home \n> 存放普通用户的主目录，Linux中每个用户都有一个自己的目录，通常为用户名命名的。\n> - /root \n> 系统管理员root的主目录，拥有最高权限。\n> - /boot \n> 存放启动Linux是使用的核心文件，包括连接文件和镜像文件。\n> - /proc \n> 一个虚拟目录，是系统内存的映射，访问这个目录获取系统信息。\n> - /srv \n> sercive缩写，该目录存放一些服务启动之后需要提取的数据。\n> - /sys \n> 这是Linux2.6内核的一个很大的变化，该目录下安装了2.6内核中新出现的文件系统。\n> - /tmp \n> 存放临时文件的。\n> - /dev \n> 类似Windows的设备管理器，把所有的硬件以文件的形式存储。\n> - /media \n> Linux系统会自动识别一些设备，例如U盘等，识别后把设备挂载到这个目录。\n\n\n\n**远程登录监听22号端口**\n\n**操作界面**\n\nctrl + g 光标从外部切入\n\nctrl + alt 光标切出 \n\n\n---\n---\n## vi和vim的三种常见模式\n\n- 标准模式 \n- 编辑模式\n- 命令行模式\n\n1. 按下i 从标准模式切入到编辑模式\n\n2. 按下:或/ 从标准模式切入到命令行模式\n\n3. ESC键从其它两种模式退出到标准模式\n\n\n**命令行模式下**\n\n - wq ==》保存并退出\n - q ==》查看未修改退出\n - q! ==》修改不保存退出\n\n**编辑模式下**\n\n - yy  ==》复制  \n - 行数yy ==》多行复制  \n - p ==》粘贴\n - dd ==》删除当前行 \n - set nu ==》标序号  \n - set nonu ==》取消标号  \n - **移动光标**   先标号，再输入行号，回车\n\n**标准模式下**\n\nG ==》去底部\n\ngg ==》顶部\n\nu ==》撤销输入\n\n\n## 关机重启指令\n\n**shutdown**\n\n - shutdown -h now 立即关机\n - shutdown -h 1 一分钟后关机\n - shutdown -r now 立即重启\n\n**halt** 关机\n\n**reboot** 重启系统\n\n**syn** 把内存数据同步到磁盘\n\n---\n---\n\n## 用户管理\n\n 1. **创建用户**\n\nuseradd xm   ==》 创建xm用户 默认组与用户同名\n\nuseradd -g 用户组 用户名    ==》创建用户并指定组\n\npasswd xm ==》设置密码为xm\n\n 2. **删除用户**\n\nuserdel ==》用户名\n\nuserdel -r 用户名 ==》并删除目录\n\n3. **查询切换用户**\n\nid root ==》查询root用户\n\nsu - root ==》切换到root  低权限到高权限需要密码\n\nexit ==》返回原先用户\n\n4. **用户组管理**\n\ngroupadd ==》创建组\n\ngroupdel ==》删除组\n\nusermod -g 新组 用户名  ==》   用户切换组\n\n---\n---\n## Linux运行级别\n\n- 0 关机\n- 1 单用户（找回密码）\n- 2 多用户无网络\n- 3 多用户有网络\n- 4 保留\n- 5 图形化界面\n- 6 重启\n\n**切换级别  init [0123456]**\n\n---\n---\n## 时间日期类常用指令\n\n- date 显示时间\n  - date \"+%Y-%m-%d\" 显示年月日\n  - date \"+%Y-%m-%d-%H-%M-%S\" 显示年月日时分秒\n  - date -s \"1998-05-08 20:07:35\" 设置系统时间\n- cal 显示日历\n  - cal 2020 显示一整年时间\n\n---\n---\n## 搜索查找类指令\n\n- find 递归查找指定文件\n  - find /home -name a.txt 查找/home目录下所有a.txt的文件\n  - find /home -name *.txt 查找/home目录下所有.txt结尾的文件\n  - find /home -user root 查找/home目录下所有root用户的文件\n  - find / -size +20M 查找/中大于20M的文件\n  - find /home -size -10k 查找/home中小于10k的文件\n- locate 步骤\n  1. updatedb\n  2. locate rili.txt   查找rili.txt文件\n- | grep\n  - cat a.txt | grep -n yes 在a.txt中查找yes字段并显示行号\n  - cat a.txt | grep -ni yes 在a.txt中查找yes字段并显示行号忽略大小写\n\n---\n---\n## 压缩&解压\n\n- gzip\n\n  - gzip a.txt 压缩a.txt文件\n\n- gunzip\n\n  - gunzip a.txt.gz 解压\n\n- zip\n\n  - zip -r mypackage /home/ 递归压缩home下所有\n\n- unzip\n\n  - unzip -d sss mypackage.zip  解压到sss目录下\n\n- **tar（常用）**\n\n  - tar -zcvf myhome.tar.gz /home/ 压缩home目录下所有到myhome.tar.gz中\n\n  - tar -zxvf myhome.tar.gz /home/ 解压myhome.tar.gz到home目录下\n\n  - tar -zcvf myhome.tar.gz 默认解压在当前目录\n\n    | 选项 | 功能             |\n      | ---- | ---------------- |\n      | -c   | 产生.tar打包文件 |\n      | -v   | 显示详细信息     |\n      | -f   | 指定压缩后的文件 |\n      | -z   | 打包同时压缩     |\n      | -x   | 解压.tar文件     |', '2021-03-18 08:48:44', '3', null, '', '0');
INSERT INTO `essay` VALUES ('20', '通俗易懂——Java对象的序列化Serializable', '1,3', '## Java中的序列化机制\n\n> Java 提供了一种对象序列化的机制，该机制中，一个对象可以被表示为一个字节序列，该字节序列包括该对象的数据、有关对象的类型的信息和存储在对象中数据的类型。\n\n将序列化对象写入文件之后，可以从文件中读取出来，并且对它进行反序列化，也就是说，对象的类型信息、对象的数据，还有对象中的数据类型可以用来在内存中新建对象。\n\n**序列化**\n\n> 类 ObjectInputStream 和 ObjectOutputStream 是高层次的数据流，它们包含反序列化和序列化对象的方法。\n\n\n\n\n特别的，一个类的对象要想序列化成功，必须满足两个条件：\n\n 1. 该类必须实现 java.io.Serializable 接口。\n 2. 该类的所有属性必须是可序列化的。如果有一个属性(包括自定义类)不是可序列化的，则该属性必须注明是短暂的。\n\n\n**测试**\n\n*Person测试基类*\n```java\nimport java.io.Serializable;\npublic class Person implements Serializable {\n    //UID 唯一\n    public static final long serialVersionUID = 454346844564654L;\n    private String name;\n    private int id;\n\n    public Person(String name, int id) {\n        this.name = name;\n        this.id = id;\n    }\n    public String getName() {\n        return name;\n    }\n    public void setName(String name) {\n        this.name = name;\n    }\n    public int getId() {\n        return id;\n    }\n    public void setId(int id) {\n        this.id = id;\n    }\n\n    @Override\n    public String toString() {\n        return \"Person{\" +\n                \"name=\'\" + name + \'\\\'\' +\n                \", id=\" + id +\n                \'}\';\n    }\n}\n```\n***进行序列化***\n\n序列化之后，会生成一个文件，序列化之前的对象信息就以**字节**的形式存储在里面。\n```java\n    //对象序列化\n    public void test() throws IOException {\n        //写出到Object.dat文件中\n        OutputStream os = new FileOutputStream(\"Object.dat\");\n        //转为对象输出流\n        ObjectOutputStream oos = new ObjectOutputStream(os);\n        //将对象写出到指定文件中\n        oos.writeObject(new String(\"湖人总冠军\"));\n        //刷新\n        oos.flush();\n        //继续写出\n        oos.writeObject(new Person(\"Tom\",13));\n        //再次刷新\n        oos.flush();\n        //关闭资源\n        oos.close();\n    }\n```\n\n\n***进行反序列化***\n\n反序列化就会读取文件中的信息，在内存中还原对象信息。\n```java\n    //对象反序列化\n    public void teat() throws IOException, ClassNotFoundException {\n        //读入Object.dat文件\n        InputStream is = new FileInputStream(\"Object.dat\");\n        //转为对象输入流\n        ObjectInputStream ois = new ObjectInputStream(is);\n        //读入到o中\n        Object o1 = ois.readObject();\n        //向下转型\n        String str = (String) o1;\n        //输出验证\n        System.out.println(str);\n        //继续读入\n        Object o2 = ois.readObject();\n        //向下转型\n        Person p = (Person) o2;\n        //输出验证\n        System.out.println(p);\n        //关闭资源\n        ois.close();\n    }\n```\n', '2021-03-18 09:11:58', '3', null, '', '0');
INSERT INTO `essay` VALUES ('21', 'Java SE系列笔记——反射', '1,3', '\n## 前言\n\n> JAVA反射机制是在运行状态中，对于任意一个实体类，都能够知道这个类的所有属性和方法；对于任意一个对象，都能够调用它的任意方法和属性；这种动态获取信息以及动态调用对象方法的功能称为Java语言的反射机制。\n\n\n> Java的反射机制允许编程人员在对类未知的情况下，获取类相关信息的方式变得更加多样灵活，调用类中相应方法，是Java增加其灵活性与动态性的一种机制。\n\n\n![摘自C语言中文网](https://img-blog.csdnimg.cn/20201014140404351.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n> [图片摘自C语言中文网](http://c.biancheng.net/java/120/)\n\n## 关于Class\n**众所周知Java有个`Object` 类，是所有Java 类的继承根源，其内声明了数个应该在所有Java 类中被改写的方法：`hashCode()、equals()、clone()、toString()、getClass()`等。其中`getClass()`返回一个`Class` 对象。**\n\n> Class类十分特殊。它和一般类一样继承自Object，其实体用以表达Java程序运行时的classes和interfaces，也用来表达enum、array、primitive Java types（boolean, byte, char, short, int, long, float,double）以及关键词void。当一个class被加载，或当加载器（classloader）的defineClass()被JVM调用，JVM 便自动产生一个Class对象。\n> 如果您想借由“修改Java标准库源码”来观察Class对象的实际生成时机（例如在Class的constructor内添加一个println()），这样是行不通的！因为Class并没有public constructor。\n> \n\n> Class是Reflection故事起源。针对任何您想探勘的类，唯有先为它产生一个Class对象，接下来才能经由后者唤起为数十多个的Reflection APIs。这些APIs将在稍后的探险活动中一一亮相。\n\n**上述为Class class片段。注意它的private Class() {}，意指不允许任何人经由编程方式产生Class object。是的，其object 只能由JVM 产生。**\n\n## 反射机制\n\n**Java 反射机制主要提供了以下功能，这些功能都位于java.lang.reflect包。**\n\n 1. 在运行时判断任意一个对象所属的类。\n 2. 在运行时构造任意一个类的对象。  \n 3. 在运行时判断任意一个类所具有的成员变量和方法。\n 4. 在运行时调用任意一个对象的方法。\n 5. 生成动态代理。\n\n## 示例\n**Person类**\n```java\npublic class Person {\n	//私有属性\n    private String name;\n    public int age;\n    //私有静态属性\n    private static int id;\n\n	public Person() {\n    }\n    public Person(String name, int age) {\n        this.name = name;\n        this.age = age;\n    }\n    //私有构造器\n	private Person(String name) {\n        this.name = name;\n    }\n	//私有静态有参方法\n    private static void pri(int i){\n        System.out.println(\"你好\"+i);\n    }\n	//set()get()toString()略\n	\n    public void show(){\n        System.out.println(\"你好 我是一个人\");\n    }\n	//私有有返回值有参方法\n    private int prt(String str){\n        System.out.println(\"我的国籍是：\"+str);\n        return 5;\n    }\n}\n```\n\n - 反射之前new对象\n通过`new`关键字调用公开构造器造对象，且无法调用静态非静态私有属性和私有方法。\n\n```java\n	//反射之前\n    public void test(){\n        Person p1 = new Person();\n        //属性赋值\n        p1.age = 10;\n        System.out.println(p1);\n        //调方法\n        p1.show();\n    }\n```\n\n - 利用反射之后\n\n```java\n	//获取Class实例方式\n    public void test() throws ClassNotFoundException {\n        //方式一 调用运行时类的属性:class\n        Class c1 = Person.class;\n        System.out.println(c1);\n        //方式二 调用运行时类对象的属性:getClass\n        Person p1 = new Person();\n        Class c2 = p1.getClass();\n        System.out.println(c2);\n        //方式三 调用Class静态方法 forName(String classPath)(常用)\n        Class c3 = Class.forName(\"com.landlord.project.Person\");\n        System.out.println(c3);\n        //方式四 使用类的加载器\n        ClassLoader classLoader = ReflectionTest.class.getClassLoader();\n        Class c4 = classLoader.loadClass(\"com.landlord.project.Person\");\n        System.out.println(c4);\n    }\n```\n**反射的强大！访问私有结构！**\n\n```java\n	//调用运行时类指定结构\n    public void test() throws Exception {\n        Class c = Class.forName(\"com.landlord.project.Person\");\n        //创建运行时类对象\n        //空参构造器 权限要够 一般为public\n        Person p = (Person)c.newInstance();\n        \n        //获取指定属性(不常用)\n        Field age = c.getField(\"age\");\n        //获取修改之前当前属性值\n        System.out.println(age.get(p));\n        //设置当前属性值\n        age.set(p,1001);\n        //获取修改之后当前属性值\n        System.out.println(age.get(p));\n\n        //获取指定属性(常用)\n        Field name = c.getDeclaredField(\"name\");\n        //保证当前属性可访问，关闭安全检查。\n        name.setAccessible(true);\n        //获取修改之前当前属性值\n        System.out.println(name.get(p));\n        //设置当前属性值\n        name.set(p,\"Kevin\");\n        //获取修改之后当前属性值\n        System.out.println(name.get(p));\n\n        //获取指定方法(常用)\n        Method prt = c.getDeclaredMethod(\"prt\",String.class);\n        //保证当前方法可访问\n        prt.setAccessible(true);\n        System.out.println(prt.invoke(p, \"李雷\"));\n\n        Method pri = c.getDeclaredMethod(\"pri\",int.class);\n        pri.setAccessible(true);\n        //都可以，因为方法是静态的，不依附于对象\n        pri.invoke(null, 4);\n        pri.invoke(c, 4);\n        pri.invoke(Person.class, 4);\n        //任意对象\n        pri.invoke(String.class, 4);\n\n        //调任意指定构造器\n        Constructor tom = c.getDeclaredConstructor(String.class);\n        tom.setAccessible(true);\n        Person person = (Person)tom.newInstance(\"Tom\");\n        System.out.println(person);\n    }\n```\n\n - 获取类的任意结构\n\n```java\npublic void test5() throws ClassNotFoundException {\n        Class clazz = Class.forName(\"com.landlord.project.Person\");\n        Class[] interfaces = clazz.getInterfaces();\n        //获取该类所有实现的接口\n        for (Class c : interfaces){\n            System.out.println(c);\n        }\n\n        //获取类的所有属性字段 包括私有\n        Field[] fields = clazz.getDeclaredFields();\n        for (Field field : fields){\n            System.out.println(field);\n        }\n        //获取该类所有构造器 包括私有\n        Constructor[] constructors = clazz.getDeclaredConstructors();\n        for (Constructor constructor : constructors){\n            System.out.println(constructor);\n        }\n        //获取类的所有方法 包括私有\n        Method[] methods = clazz.getDeclaredMethods();\n        for (Method method : methods) {\n            System.out.println(method);\n        }\n        //获取注解信息\n        Annotation[] annotations = clazz.getAnnotations();\n        for (Annotation annotation : annotations) {\n            System.out.println(annotation);\n        }\n        //获取类所在包路径\n        Package aPackage = clazz.getPackage();\n        System.out.println(aPackage);\n\n    }\n```\n', '2021-03-18 09:16:42', '3', null, '', '0');
INSERT INTO `essay` VALUES ('22', 'Java SE系列笔记——集合', '1,3', '## 集合框架\n\n@[TOC](目录)\n\n![引用自菜鸟教程](https://img-blog.csdnimg.cn/20201013193304956.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n - Collection接口：单列集合，用来存储对象\n\n	List接口：存储有序可重复的数据。\n包括：**ArrayList、LinkedList、Voctor**\n\n	Set接口：存储无序的，不可重复的数据。\n	包括：**HashSet、LinkedHashSet、TreeSet**\n\n\n- Map接口：键值对存储（Key-Value）\n包括：**HashMap、LinkedHashMap、TreeMap、HashTable、Properties**\n\n## ArrayList\n\n```java\nCollection coll = new ArrayList();\n```\n***常用增删改方法***\n\n```java\nadd()//添加\nsize()//元素个数\ncoll.addAll(coll2)//添加到coll集合中 coll2的所有元素\ncoll.clear()//清空集合\ncoll.isEmpty()//判断是否为空 判断依据是长度为0（非null）\ncoll.contains(Object o)//通过调用类的equals方法，判断coll中是否有o，自定义类需重写equals方法\ncoll.containsAll(Collection coll2);//判断coll中是否有coll2中的所有元素\ncoll.remove(Object o)//移除cool中的元素o，不存在则返回false\ncoll.removeAll(Collection coll2)//移除cool中所有与coll2相同的元素\ncoll.retainAll(Collection coll2)//移除cool中所有与coll2不同的元素\ncoll.equals(cool)//判断中元素是否相同 判断顺序与否跟具体实现类有关 \ncoll.hashCode()//返回coll哈希值\nObject o = coll.toArray()//集合转数组(Object)\ncoll.toArray(T[] t)//(T[])\n\nString[] str = {\"aa\",\"bb\",\"cc\"};\nList<String> list = Arrays.asList(str)//数组转集合 对应List  size：3\n**特别注意**\nList list = Arrays.asList(new int[]{123,456});//会认为是一个元素 size：1\nList list = Arrays.asList(new Integer[]{123,456});//包装类可以 size：2\n```\n***示例***\n```java\npublic void test2(){\n        Collection coll1 = new ArrayList();\n        Collection coll2 = new ArrayList();\n        //添加元素\n        coll1.add(123);\n        coll1.add(\"abc\");\n        coll1.add(new Date());\n        coll2.add(\"abc\");\n        //删除\n        coll1.remove(123);\n        //删除coll1中所有与coll2中相同的元素\n        coll1.removeAll(coll2);\n        //通过调用类的equals方法，判断coll中是否有\"abc\"，自定义类需重写equals方法\n        coll1.contains(\"abc\");\n        //判断coll中是否有coll2中的所有元素\n        coll1.containsAll(coll2);\n        //将coll2中所有元素添加到coll1中\n        coll1.addAll(coll2);\n        //移除coll1中所有与coll2不同的元素\n        coll1.retainAll(coll2);\n        //长度\n        coll1.size();\n        //是否存在此元素\n        coll1.contains(\"abc\");\n        //判空\n        coll1.isEmpty();\n        //清空\n        coll1.clear();\n    }\n```\n\n***ArrayList通过equals()方法判断是否存在***\n```java\n@Test\n    public void test1(){\n        Collection coll = new ArrayList();\n        //new一个Xr对象\n        Xr xr = new Xr(8);\n        //添加到集合中\n        coll.add(xr);\n        //判断是否存在 如果重写了equals方法 返回true 否则返回false\n        System.out.println(coll.contains(new Xr(8)));\n    }\n```\n***Xr类***\n```java\nclass Xr{\n    private int count;\n    public Xr(int count){\n        this.count = count;\n    }\n    //重写的equals方法\n    @Override\n    public boolean equals(Object o) {\n        if (this == o) return true;\n        if (o == null || getClass() != o.getClass()) return false;\n        Xr xr = (Xr) o;\n        return count == xr.count;\n    }\n}\n```\n\n***迭代器遍历***\n\n```java\n迭代器 遍历集合\nIterator iterator = coll1.iterator();\n\nwhile (iterator.hasNext()){//判断下一个是否为空\n    System.out.println(iterator.next());//先下移 再返回\n}\n\n错误写法\nwhile (coll1.iterator.hasNext()){//判断下一个是否为空\n    System.out.println(iterator.next());//先下移 再返回\n}\nwhile (iterator.next()!=null){//判断下一个是否为空\n    System.out.println(iterator.next());//先下移 再返回\n}\n删除指定元素\nIterator iterator = coll1.iterator();\nwhile (iterator.hasNext()){//判断下一个是否为空\n	Object o = iterator.next();\n    if(\"Tom\".equals(o)){\n	iterator.remove();	\n	}\n}\nIterator iterator = coll1.iterator(); //再次遍历时需要新造迭代器 因为指针此时在最低端\n```\n\n\n***For Each遍历***\n\n```java\nCollection coll = new ArrayList();\nfor (Object obj :list){\n    System.out.println(obj);\n}\nfor (int i = 0;i < list.size(); i++){\n    System.out.println(list.get(i));\n}\n```\n\n\n---\n—————————————————**分割线**———————————————————\n\n## HashSet\n**HashSet底层是数组加链表，判断元素是否相同是通过哈希值和equals方法。**\n\n> 先判断哈希值，如果位置上没元素，直接放，如果有，在调用equals方法，如果与位置上的所有元素（链表存储）都不等，再放。\n\n**自定义类需要重写equals方法**\nJDK7版本：新增元素放在链表的头部。\nJDK8版本：新增元素放在链表的尾部。\n\n**LinkedHashSet作为HashSet的子类，在HashSet的基础上按加入顺序加上双向链。**\n\n> 优点：便于频繁的遍历\n> 需要重写`equals()`方法和`hashCode()`方法\n\n**Set和List的区别**\n\n> 1. Set 接口实例存储的是无序的，不重复的数据。List 接口实例存储的是有序的，可以重复的元素。\n> \n> 2. Set检索效率低下，删除和插入效率高，插入和删除不会引起元素位置改变 <实现类有HashSet,TreeSet>。\n> \n> 3. List和数组类似，可以动态增长，根据实际存储的数据的长度自动增长List的长度。查找元素效率高，插入删除效率低，因为会引起其他元素位置改变\n> <实现类有ArrayList,LinkedList,Vector> 。\n\n**TreeSet**\n\n> TreeSet判断元素是否相同是通过自然排序`Comparable`重写方法`compareTo`，不再是哈希值和equals方法\n> 亦或是通过自定义排序`Comparator`重写`compsre`，`TreeSet`直接调`Comparator`为参数的构造器即可\n\n***常用方法示例***\n\n```java\npublic void test3(){\n        Set set1 = new HashSet();\n        Set set2 = new HashSet();\n        //添加\n        set1.add(123);\n        set1.add(\"abc\");\n        //不会添加重复元素\n        set1.add(123);\n        //判空\n        set1.isEmpty();\n        //清空\n        set1.clear();\n        //长度\n        set1.size();\n        //将set2中的所欲元素添加到set1中\n        set1.addAll(set2);\n        //删除\n        set1.remove(123);\n        //删除所有相同元素\n        set1.removeAll(set2);\n    }\n```\n\n**面试题**\n\n```java\n@Test\npublic void test(){\n    HashSet set = new HashSet();\n    Person p1 = new Person(\"aa\",12);\n    Person p2 = new Person(\"bb\",24);\n    set.add(p1);\n    set.add(p2);\n    p1.age = 13;\n    set.remove(p1);\n    //age被修改 哈希值已变 但地址没变 所以删除的是改变之后的地址 所以删不掉\n    System.out.println(set);\n    set.add(new Person(\"aa\",13));\n    //添加至指定哈希值位置处 可以添加 虽与p1相同 但p1在哈希值改变前的地址 所以不会形成链表\n    System.out.println(set);\n    set.add(new Person(\"aa\",12));\n    //也可以添加 哈希值与p1相同 但equals之后 不同 可以添加至p1链后\n    System.out.println(set);\n }\n```\n**Person类**\n重写了`equals()`方法和`hashCode()`方法\n```java\nclass Person{\n    String str;\n    int age;\n    public Person(String str, int age) {\n        this.str = str;\n        this.age = age;\n    }\n    @Override\n    public boolean equals(Object o) {\n        if (this == o) return true;\n        if (o == null || getClass() != o.getClass()) return false;\n\n        Person person = (Person) o;\n\n        if (age != person.age) return false;\n        return str != null ? str.equals(person.str) : person.str == null;\n    }\n    @Override\n    public int hashCode() {\n        int result = str != null ? str.hashCode() : 0;\n        result = 31 * result + age;\n        return result;\n    }\n    @Override\n    public String toString() {\n        return \"Person{\" +\n                \"str=\'\" + str + \'\\\'\' +\n                \", age=\" + age +\n                \'}\';\n    }\n}\n```\n\n**测试结果**\n\n```java\n[Person2{name=\'bb\', age=24}, Person2{name=\'aa\', age=13}]\n[Person2{name=\'bb\', age=24}, Person2{name=\'aa\', age=13}, Person2{name=\'aa\', age=13}]\n[Person2{name=\'bb\', age=24}, Person2{name=\'aa\', age=13}, Person2{name=\'aa\', age=13}, Person2{name=\'aa\', age=12}]\n```\n\n如果注释掉`equals()`方法和`hashCode()`方法\n则测试结果为\n\n```java\n[Person2{name=\'bb\', age=24}]\n[Person2{name=\'aa\', age=13}, Person2{name=\'bb\', age=24}]\n[Person2{name=\'aa\', age=13}, Person2{name=\'bb\', age=24}, Person2{name=\'aa\', age=12}]\n```\n\n**可以利用HashSet给List去重（如果是自定义类 则要重写equals和hashCode）\n`set.addAll(list)`将list中所有元素加入到set中，此时已经去重。\n`new List(set)`转换回来即可**\n\n---\n\n## Collections工具类\n**[Collections工具类系列笔记 https://blog.csdn.net/weixin_46002478/article/details/109059635](https://blog.csdn.net/weixin_46002478/article/details/109059635)**\n## HashMap\n\n**[HashMap系列笔记 https://blog.csdn.net/weixin_46002478/article/details/109057051](https://blog.csdn.net/weixin_46002478/article/details/109057051)**', '2021-03-18 10:03:43', '3', null, '', '0');
INSERT INTO `essay` VALUES ('23', 'Java SE系列笔记——HashMap', '3,4', '## HashMap\n\n> HashMap 是一个散列表，它存储的内容是键值对(key-value)映射。\n> \n> HashMap 实现了 Map 接口，根据键的 HashCode 值存储数据，具有很快的访问速度，最多允许一条记录的键为\n> null，不支持线程同步。\n> \n> HashMap 是无序的，即不会记录插入的顺序。\n> \n> HashMap 继承于AbstractMap，实现了 Map、Cloneable、java.io.Serializable 接口。\n\nHashMap 中的元素实际上是对象，一些常见的基本类型可以使用它的包装类。\n\n|基本类型|引用类型  |\n|--|--|\n| boolean	 | Boolean |\n| byte| Byte |\n| int| Integer|\n| short	| Short|\n| long| Long|\n| float	| Float|\n| double	| Double|\n| char	| Character|\n\n\n\n\n\n***常用增删改方法***\n\n```java\nput(Object key,Object value)	添加\nputAll(map)	添加map所有元素到this\nremove(Object key)	删除 \nput(Object key，Object value)	修改 \nget(Object key)	查询 \nsize()	长度 \n遍历\nkeySet()	获取key返回Set \n        values()	获取value返回Collection\n        entrySet()	获取Map\nclear()		清空 \nisEmpty()	判断是否为空 \nclone()		复制一份 hashMap\nputIfAbsent()	如果 hashMap 中不存在指定的键，则将指定的键/值对插入到 hashMap 中。\ncontainsKey()	检查 hashMap 中是否存在指定的 key 对应的映射关系。\ncontainsValue()	检查 hashMap 中是否存在指定的 value 对应的映射关系。\nreplace()	替换 hashMap 中是指定的 key 对应的 value。\nreplaceAll()	将 hashMap 中的所有映射关系替换成给定的函数所执行的结果。\ngetOrDefault()	获取指定 key 对应对 value，如果找不到 key ，则返回设置的默认值\nforEach()	对 hashMap 中的每个映射执行指定的操作。\nentrySet()	返回 hashMap 中所有映射项的集合集合视图。\nvalues()	返回 hashMap 中存在的所有 value 值。\nmerge()	添加键值对到 hashMap 中\ncompute()	对 hashMap 中指定 key 的值进行重新计算\ncomputeIfAbsent()	对 hashMap 中指定 key 的值进行重新计算，如果不存在这个 key，则添加到 hasMap 中\ncomputeIfPresent()	对 hashMap 中指定 key 的值进行重新计算，前提是该 key 存在于 hashMap 中。\n```\n\n\n**添加**\n```java\npublic void test3(){\n    Map<String,Integer> map = new HashMap();\n    map.put(\"1\",123);\n    map.put(\"2\",147);\n    map.put(\"3\",456);\n    map.put(\"4\",159);\n}\n```\n\n\n**删除**\n```java\n public void test4(){\n        Map<String,Integer> map = new HashMap();\n        map.put(\"1\",123);\n        map.put(\"2\",147);\n        map.put(\"3\",456);\n        //删除key值为\"1\"元素\n        map.remove(\"1\");\n        //清空 删除所有元素\n        map.clear();\n    }\n```\n\n**修改覆盖**\n```java\npublic void test5(){\n    Map<String,Integer> map = new HashMap();\n    map.put(\"1\",123);\n    map.put(\"2\",147);\n    map.put(\"3\",456);\n\n    //修改 key值为\"1\"的元素value为456\n    map.put(\"1\",456);\n}\n```\n**返回指定元素**\n```java\n    public void test(){\n        Map<String,Integer> map = new HashMap();\n        map.put(\"1\",123);\n        map.put(\"2\",147);\n        map.put(\"3\",456);\n        //通过主键返回指定元素value\n        Integer integer2 = map.get(\"1\");\n\n        System.out.println(integer2);\n    }\n```\n\n```java\npublic void test(){\n        Map<String,Integer> map = new HashMap();\n        map.put(\"1\",123);\n        map.put(\"2\",147);\n        map.put(\"3\",456);\n        //返回所有键值对\n        Set<Map.Entry<String, Integer>> entries = map.entrySet();\n        //返回所有key键\n        Set<String> strings = map.keySet();\n        //返回所有value\n        Collection<Integer> values = map.values();\n    }\n```\n\n\n```java\npublic void test8(){\n        Map<String,Integer> map = new HashMap();\n        map.put(\"1\",123);\n        map.put(\"2\",147);\n        map.put(\"3\",456);\n        //长度大小\n        map.size();\n        //判空 依据是size()是否为0\n        map.isEmpty();\n    }\n```\n\n\n***遍历***\n\n```java\n@Test\n    public void test3(){\n        HashMap map = new HashMap();\n        map.put(\"TOM\",\"3\");\n        map.put(\"SEt\",1);\n        map.put(\"12\",1);\n        map.put(\"3\",1);\n        map.put(\"rr4\",1);\n        //for each\n        Set set = map.keySet();获取key Set\n        for (Object obj : set){\n            System.out.println(obj);\n        }\n        //输出value值\n        Collection list = map.values();//获取value列表\n        for (Object obj : list){\n            System.out.println(obj);\n        }\n		//通过Entry遍历\n        Set set1 = map.entrySet();//获取Map中的Entry\n        Iterator iterator = set1.iterator();\n        while (iterator.hasNext()){\n            System.out.println(iterator.next());\n        }\n		//迭代器遍历\n        Set set2 = map.keySet();\n        Iterator iterator1 = set2.iterator();\n        while (iterator1.hasNext()){\n            Object next = iterator1.next();\n            Object value = map.get(next);\n            System.out.println(next +\"=\"+value);\n        }\n    }\n```\n\n***特别的***\n\n> HashMap线程不安全，但效率高 。\n> JDK7及之前使用**数组+链表**形式存储数据。\n> JDK8之后为**数组+链表+红黑树**\n> linkedHashMap用于频繁的遍历，使用此结构比HashMap多一个指针\n\n\n—————————————————**分割线**———————————————————\n\n\n\n\n## HashMap底层原理&源码分析\n[面试高频——HashMap底层实现原理与源码剖析（JDK7、8对比）](https://blog.csdn.net/weixin_46002478/article/details/108754890)', '2021-03-18 10:05:27', '3', null, '', '0');
INSERT INTO `essay` VALUES ('24', 'Java SE系列笔记——Collections工具类', '3,4', '## Collections工具类\nCollections是操作List&Map&Set的静态工具类。与Collection不同不可被实例化。\n\n**Collections静态类常用方法**\n```java\nreverse(List)反转数据\n\nshuffle(List)随机排序\n\nsort(List)自然排序，实现Comparable接口，重写comparTo方法\n\nsort(List,Comparator)自定义排序\n\nswap(List,int,int)交换指定\n\nObject max(Collection)返回最大元素\n\nObject max(Collection,Comparator)根据指定排序返回最大元素\n\nObject min(Collection)\n\nObject min(Collection,Comparator)\n\nint frequency(Collection,Object)返回指定元素出现的次数\n\nvoid copy(List dest,List list)将list复制给dest\nList dest = Arrays.asList(new Object[list.size()]);\nCollection.copy(dest,list)\n\nboolean replaceAll(List,Object old,Object new)新值替换旧值\n```\n\n\n\n\n**自然排序**\n\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //自然排序\n        Collections.sort(list);\n		System.out.println(list);\n    }\n```\n**自定义排序**\n\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //自定义排序\n        Collections.sort(list, new Comparator<Integer>() {\n            @Override\n            public int compare(Integer o1, Integer o2) {\n                return o2 - o1;\n            }\n        });\n        System.out.println(list);\n    }\n```\n\n**随机排序**\n\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //随机排序\n        Collections.shuffle(list);\n		System.out.println(list);\n    }\n```\n**交换元素**\n\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //交换指定位置元素\n        Collections.swap(list,0,1);\n		System.out.println(list);\n    }\n```\n\n**自然排序下返回最大值**\n\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //自然排序返回最大元素\n        Comparable max = Collections.max(list);\n        System.out.println(max);\n    }\n```\n\n**自定义排序下返回最大值**\n\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //自定义\n        Comparable max = Collections.max(list, new Comparator<Integer>() {\n            @Override\n            public int compare(Integer o1, Integer o2) {\n                return o1 - o2;\n            }\n        });\n        System.out.println(max);\n    }\n```\n\n**复制list到desk**\n```java\npublic void test3(){\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        list.add(96);\n        list.add(96);\n		//需要通过数组转集合创建\n        List desk = Arrays.asList(new Object[list.size()]);\n        Collections.copy(desk,list);\n\n        System.out.println(desk);\n    }\n```\n\n**返回指定对象在集合中出现的次数**\n```java\npublic void test(){\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        list.add(96);\n        list.add(96);\n\n        int frequency = Collections.frequency(list, 96);\n        System.out.println(frequency);\n    }\n```\n\n**数组转集合**\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //数组转集合\n        List dest = Arrays.asList(new Object[]{1,2,3});\n        System.out.println(dest );\n    }\n```\n\n**反转集合**\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n        //反转数据\n        Collections.reverse(list);\n        System.out.println(list);\n    }\n```\n\n**线程安全**\n```java\npublic void test() {\n        List list = new ArrayList();\n        list.add(58);\n        list.add(45);\n        list.add(96);\n\n        //线程安全的List\n        List list =  Collections.synchronizedList(list);\n\n       	//线程安全的Map\n        Map map = Collections.synchronizedMap(new HashMap());\n    }\n```\n\nJava SE系列笔记——集合\n[https://blog.csdn.net/weixin_46002478/article/details/109055133](https://blog.csdn.net/weixin_46002478/article/details/109055133)\n', '2021-03-19 09:57:06', '35', null, '', '0');
INSERT INTO `essay` VALUES ('25', 'Java SE系列笔记——多线程', '1,3', '## 多线程\n\n**Java线程生命周期**\n\n> 新建状态（`New`）：当线程对象对创建后，即进入了新建状态，如：`Thread t = new MyThread()`;\n\n> 就绪状态（`Runnable`）：当调用线程对象的start()方法（t.start();），线程即进入就绪状态。处于就绪状态的线程，只是说明此线程已经做好了准备，随时等待CPU调度执行，并不是说执行了t.start()此线程立即就会执行；\n\n> 运行状态（`Running`）：当CPU开始调度处于就绪状态的线程时，此时线程才得以真正执行，即进入到运行状态。注：就绪状态是进入到运行状态的唯一入口，也就是说，线程要想进入运行状态执行，首先必须处于就绪状态中；\n\n\n> 阻塞状态（`Blocked`）：处于运行状态中的线程由于某种原因，暂时放弃对CPU的使用权，停止执行，此时进入阻塞状态，直到其进入到就绪状态，才有机会再次被CPU调用以进入到运行状态。根据阻塞产生的原因不同，阻塞状态又可以分为三种：\n> 1.等待阻塞：运行状态中的线程执行wait()方法，使本线程进入到等待阻塞状态；\n> 2.同步阻塞 -- 线程在获取synchronized同步锁失败(因为锁被其它线程所占用)，它会进入同步阻塞状态；\n> 3.其他阻塞 -- 通过调用线程的sleep()或join()或发出了I/O请求时，线程会进入到阻塞状态。当sleep()状态超时、join()等待线程终止或者超时、或者I/O处理完毕时，线程重新转入就绪状态。\n\n\n\n> 死亡状态（`Dead`）：线程执行完了或者因异常退出了run()方法，该线程结束生命周期。\n\n> 每个线程拥有自己独立的栈、程序计数器\n多个线程共享同一个方法区、堆\n\n**多线程常用方法**\n\n```java\nstart()--->启动当前线程，并调用run()\nrun()--->通常重写父类方法 将要执行的操作写进此方法\ncurrentThread()--->静态方法 返回线程\ngetName()--->返回线程名\nsetName()--->设置线程名\nyield()--->释放当前cpu执行权 重新分配也可能继续此线程\njoin()--->在线程a中调用b的join() a线程堵塞 直到b线程完全执行以后 线程a才结束堵塞 优先级高于yield()\nstop()--->已过时 强行结束当前线程\nsleep(long millitime)--->让当前线程阻塞指定时间\nisAlive()--->判断线程是否存活\n```\n\n\n**wait()与sleep()异同**\n\n> 相同：都能使线程阻塞\n> 不同：声明位置不同，sleep()在`Thread`类中，wait()在`Object`类中，sleep可以在任何场景下使用 wait只能在同步代码块中。\n> sleep()不会释放监视器，wait()释放监视器`synchronized`。\n\n## 创建多线程方法\n\n**多线程方法一**\n\n> 继承`Thread`类，重写`run()` ，然后`new`对象`t1`，调用`t1.strat()`，执行子类重写的`run()`。\n\n\n```java\n/**\n * 多线程创建：方法一 继承Thread类\n */\nclass MyThread extends Thread{\n    public MyThread(String name){\n        setName(name);\n    }\n    @Override\n    public void run() {\n        for (int i=0;i<100;i=i+2){\n            System.out.println(currentThread().getName() + \":\" + i);\n        }\n    }\n}\npublic class ThreadTest {\n    public static void main(String[] args) {\n        MyThread t1 = new MyThread(\"线程一\");\n        \n        t1.start();\n        //匿名子类\n        new Thread(){\n            @Override\n            public void run() {\n                for (int i=1;i<100;i=i+2){\n                    System.out.println(currentThread().getName() + \":\" + i);\n                }\n            }\n        }.start();\n\n        Thread.currentThread().setName(\"主线程\");\n        for (int i=1;i<100;i++){\n            System.out.println(Thread.currentThread().getName() + \":\" + i);\n        }\n    }\n}\n```\n\n**多线程方法二**\n\n> 实现Runnable接口，重写`run()`，然后new对象target，再`new Thread(target)`（传参接口）对象t1 调用`t1.strat()`，执行Thread类的run()。\n> Thread类的`run()` 先判断target是否为空，如果不为空就调用`target.run()`，target.run()被子类MyTgread重写，所以执行子类重写的`run()`。\n\n```java\n/**\n * 创建多线程方式二 实现Runnable接口\n */\nclass MThread implements Runnable{\n    @Override\n    public void run() {\n        for (int i=0;i<100;i=i+2){\n            System.out.println(Thread.currentThread().getName() + \":\" + i);\n        }\n    }\n}\npublic class ThreadTest2 {\n    public static void main(String[] args) {\n    \n        MThread m1 = new MThread();\n        Thread t1 = new Thread(m1);\n        Thread t2 = new Thread(m1);\n\n        t1.start();\n        t2.start();\n    }\n}\n```\n\n\n**多线程方法三**\n\n> MyTgread类实现Callable接口 重写`call()`，然后new对象target，再`new FutureTask(target)`对象futuretask，调用`futuretask.get()`方法返回值。\n> 在newThread(futuretask)并调用`start()`方法。\n\n\n```java\nimport java.util.concurrent.Callable;\nimport java.util.concurrent.ExecutionException;\nimport java.util.concurrent.FutureTask;\n/**\n * 创建多线程三 实现Callable接口\n */\nclass NumThread implements Callable{\n    @Override\n    public Object call() throws Exception {\n        int sum = 0;\n        for (int i = 1; i <=100 ; i++) {\n            System.out.println(Thread.currentThread().getName() + \"\\t\" + i);\n            sum+=i;\n        }\n        return sum;\n    }\n}\npublic class ThreadTest3 {\n    public static void main(String[] args) {\n        //创建Callable接口实现类对象\n        NumThread numthread = new NumThread();\n        //将对象作为实参传FutureTask构造器中，创建FutureTask对象\n        FutureTask futuretask = new FutureTask(numthread);\n        FutureTask futuretask2 = new FutureTask(numthread);\n\n        //将FutureTask对象作为实参传到Thread构造器中并调用start方法\n        new Thread(futuretask).start();\n        new Thread(futuretask2).start();\n        Object sum;\n        {\n            try {\n                //get方法返回即为FutureTask构造器中参数Callable接口实现类对象重写的call方法\n                sum = futuretask.get();\n                System.out.println(\"总和为\" + sum);\n            } catch (InterruptedException e) {\n                e.printStackTrace();\n            } catch (ExecutionException e) {\n                e.printStackTrace();\n            }\n        }\n    }\n}\n```\n\n*三比二强大\n`call()`相比 `run()`有返回值 可以抛异常`Callable`支持泛型*\n\n**多线程方法四**(推荐）\n\n> 使用线程池，提高响应速度，降低资源消耗，便于管理。\n> corePoolSize 设置核心池大小 \n> maxinumPoolSize 最大线程数\n> keepAliveTime 设置线程没有任务时多长时间后会终止\n\n```java\nimport java.util.concurrent.ExecutorService;\nimport java.util.concurrent.Executors;\nimport java.util.concurrent.ThreadPoolExecutor;\n/**\n * 创建多线程方法四 使用线程池\n */\nclass Run implements Runnable{\n    @Override\n    public void run() {\n        for (int i = 1; i < 100; i=i+2) {\n            System.out.println(Thread.currentThread().getName() + \"\\t\" + i);\n        }\n    }\n}\npublic class ThreadTest4 {\n    public static void main(String[] args) {\n        //提供指定线程数量的线程池，ExecutorService是抽象类，service此时不能进行\".\"\n        ExecutorService service = Executors.newFixedThreadPool(10);\n\n        //service对象是ThreadPoolExecutor类\n        System.out.println(service.getClass());\n        //强转之后就可以进行设置\n        ThreadPoolExecutor service2 = (ThreadPoolExecutor)service;\n        //执行指定的线程操作 需要实现Runnable接口或Callable接口\n        service2.execute(new Run());\n        service2.execute(new Run());\n        service2.execute(new Run());\n\n        //关闭连接池\n        service.shutdown();\n\n    }\n}\n```\n\n*开发中通常选择实现接口，解决单继承的局限性，更适合处理多个线程共享数据的情况。*\n\n\n## 解决多线程安全问题\n\n> `synchronize`（有代码块锁和方法锁）与`ReentrantLock`（JDK5.0之后，需要new对象，只有代码块锁，配合`try finally`使用）。\n> 异同：前者在执行完相应代码块以后，自动释放同步监视器，后者需要手动，启动同步`lock()`，结束`unlock()`\n\n```java\n                唯一本类     本对象\nsynchronized (Window.class||this) {\n	//代码块\n}\n\n//非静态同步方法 监视器是this本对象的 多个对象时慎用\npublic synchronized void methon(){\n	//方法体\n}\n//静态同步方法 随着类的加载而加载 所以监视器是本类的\npublic static synchronized void methon(){\n	//方法体\n}\n```\n**关于同步方法的使用**\n\n```java\n//同步方法处理继承Thread线程安全问题\nclass Window_ extends Thread{\n	//三个窗口同时售100张票\n    private static int ticket = 100;\n	//是否有余票\n    private static boolean isFlag = true;\n    //构造方法设置线程名字\n    public Window_(String name){\n        super(name);\n    }\n    @Override\n    public void run() {\n        while (isFlag) {\n            methon();\n        }\n    }\n    //static静态方法，所有线程对象共用\n    private static synchronized void methon(){\n        if (ticket>0)\n            System.out.println(Thread.currentThread().getName() + \"：卖票，票号为：\" + ticket--);\n        else\n            isFlag = false;\n    }\n}\npublic class WindowMethon {\n    public static void main(String[] args) {\n        Window_ t1 = new Window_(\"窗口一\");\n        Window_ t2 = new Window_(\"窗口二\");\n        Window_ t3 = new Window_(\"窗口三\");\n\n        t1.start();\n        t2.start();\n        t3.start();\n    }\n}\n```\n**关于同步代码块的使用**\n\n```java\n//同步代码块处理继承Thread线程安全问题\nclass Window extends Thread{\n	//三个窗口同时售100张票\n    private static int ticket = 100;\n    public Window(String name){\n        super(name);\n    }\n    @Override\n    public void run() {\n        while (true) {\n        	//代码块 这里传参不能为对象，否则会形成每个对象都独立拥有一个锁\n            synchronized (Window.class) {\n                if (ticket>0)\n                    System.out.println(Thread.currentThread().getName() + \"：卖票，票号为：\" + ticket--);\n                else\n                    break;\n            }\n        }\n    }\n}\npublic class WindowTest {\n    public static void main(String[] args) {\n        Window t1 = new Window(\"窗口一\");\n        Window t2 = new Window(\"窗口二\");\n        Window t3 = new Window(\"窗口三\");\n\n        t1.start();\n        t2.start();\n        t3.start();\n    }\n}\n```\n\n**关于Lock锁的使用**\n```java\n//Lock处理继承Thread线程安全问题\nclass Window3 extends Thread{\n    private static int ticket = 100;\n\n    static ReentrantLock lock = new ReentrantLock();\n    public Window3(String name){\n        super(name);\n    }\n    @Override\n    public void run() {\n        while (true) {\n            try{\n            	//lock锁\n                lock.lock();\n                if (ticket>0)\n                    System.out.println(Thread.currentThread().getName() + \"：卖票，票号为：\" + ticket--);\n                else\n                    break;\n            }finally {\n            	//手动释放\n                lock.unlock();\n            }\n        }\n    }\n\n}\n\npublic class WindowLock {\n    public static void main(String[] args) {\n        Window3 t1 = new Window3(\"窗口一\");\n        Window3 t2 = new Window3(\"窗口二\");\n        Window3 t3 = new Window3(\"窗口三\");\n\n        t1.start();\n        t2.start();\n        t3.start();\n    }\n}\n```\n\n\n**注意：**\n*继承Thread类慎用 `public synchronized void methon()；`\nnew多个对象就会有多个`public synchronized void methon()` 通常加 `static`*\n\n\n\n\n**关于死锁**\n\n> 指在执行并发计算时，一组进程中的每个进程都在等待包括自身在内的其他进程释放资源的一种现象。\n\n示例\n\n```java\n//死锁问题\npublic class Sisuo {\n    public static void main(String[] args) {\n        StringBuffer a = new StringBuffer();\n        StringBuffer b = new StringBuffer();\n\n        new Thread(){\n            @Override\n            public void run() {\n                synchronized (a){\n                    try {\n                    	//睡眠1s，增大死锁概率\n                        Thread.sleep(1000);\n                    } catch (InterruptedException e) {\n                        e.printStackTrace();\n                    }\n                    //此时双方都在等待对方释放自己所需要的资源\n                    synchronized (b){\n\n                    }\n                }\n\n            }\n        }.start();\n\n\n        new Thread(new Runnable() {\n            @Override\n            public void run() {\n                synchronized (b){\n                    try {\n                    	//睡眠1s，增大死锁概率\n                        Thread.sleep(1000);\n                    } catch (InterruptedException e) {\n                        e.printStackTrace();\n                    }\n                    //此时双方都在等待对方释放自己所需要的资源\n                    synchronized (a){\n\n                    }\n                }\n            }\n        }).start();\n    }\n}\n```\n\n\n\n', '2021-03-19 01:06:51', '2', null, '', '0');
INSERT INTO `essay` VALUES ('26', 'Java基础——Comparable与Comparator两种比较器的使用', '3,4', '## 前言\n在Java中，如Integer、Double等基本数据类型之间可以直接进行比较大小，而Java是一门面向对象语言，一组对象之间进行排序比较显得尤为重要，那对象之间又该如何进行比较呢？\n\nComparable与Comparator都是Java提供的对象间进行比较的接口，只不过用法上会有差异。\n本质是根据类中的属性进行排序，这里的属性通常指基本数据类型，当然也可以是引入数据类型，如String、自定义类，在这里自定义类比较的也是类中的属性。\n\n## Comparable接口\n使用Comparable给对象进行排序，目标对象只需要实现接口并重写comparTo方法即可。\n\n其中Comparable接口需要传入泛型，一般传入本类，也可以不传或传入Object，再重写方法的时候进行instanceof判断进行强转即可。\n```java\npublic class ComparableTest implements Comparable<ComparableTest>{\n\n	//两个基本属性\n    private Integer id;\n    private String name;\n\n    public ComparableTest(Integer id, String name) {\n        this.id = id;\n        this.name = name;\n    }\n\n    @Override\n    public String toString() {\n        return \"ComparableTest{\" +\n                \"id=\" + id +\n                \", name=\'\" + name + \'\\\'\' +\n                \'}\';\n    }\n\n    //重写的compareTo方法\n    @Override\n    //传入的参数时与this比较的对象\n    public int compareTo(ComparableTest o) {\n    	//先进行id属性的比较，如果this大返回1表示升序排列，相反返回-1表示降序。\n        if (this.id > o.id) {\n            return 1;\n        }else if (this.id < o.id) {\n            return -1;\n        }\n        //如果id属性值相等，那么就根据第二个属性String进行比较\n        else {\n        	//这里直接返回是因为String类已经实现的Comparable接口\n            return this.name.compareTo(o.name);\n        }\n    }\n}\n```\n\n\nString类实现的comparTo方法\n\n```java\npublic int compareTo(String anotherString) {\n        int len1 = value.length;\n        int len2 = anotherString.value.length;\n        int lim = Math.min(len1, len2);\n        char v1[] = value;\n        char v2[] = anotherString.value;\n\n        int k = 0;\n        while (k < lim) {\n            char c1 = v1[k];\n            char c2 = v2[k];\n            if (c1 != c2) {\n                return c1 - c2;\n            }\n            k++;\n        }\n        return len1 - len2;\n    }\n```\n\n测试\n\n```java\npublic static void main(String[] args) {\n        ComparableTest[] comparableTests = new ComparableTest[5];\n        comparableTests[0] = new ComparableTest(1,\"孙悟空\");\n        //其中id属性相等，这里就会比较String属性。\n        comparableTests[1] = new ComparableTest(25,\"猪八戒\");\n        comparableTests[2] = new ComparableTest(25,\"鲁班\");\n        comparableTests[3] = new ComparableTest(89,\"孙尚香\");\n        comparableTests[4] = new ComparableTest(74,\"百里守约\");\n\n        //重写时候调用Arrays工具类sort方法直接进行排序\n        Arrays.sort(comparableTests);\n        //输出验证\n        System.out.println(Arrays.toString(comparableTests));\n    }\n```\n测试结果\n```java\n[ComparableTest{id=1, name=\'孙悟空\'},\n ComparableTest{id=25, name=\'猪八戒\'},\n ComparableTest{id=25, name=\'鲁班\'},\n ComparableTest{id=74, name=\'百里守约\'}, \n ComparableTest{id=89, name=\'孙尚香\'}]\n```\n**Comparable总结**\n\n通过Comparable接口实现比较大小，实际上就是通过compareTo方法进行本对象与传入对象进行属性的逐个比较，如果第一个属性相等，那么就比较第二个，以此类推。\n\n> 特别的，如果类中含有引用数据（如String或自定义类），那么想要通过引用数据进行比较大小，则引用数据属性也必须实现Comparable接口，如本例中的String类型属性，String就已经实现的Comparable接口。\n\n\n## Comparator接口\n\n相比于Comparable接口更加灵活，所以被称为自定义排序，本类可以不直接实现此接口，而是在调用Arrays.sort()方法时传入实现此接口的对象即可。\n\n\n基础待比较类\n```java\npublic class ComparatorTest {\n\n    private Integer id;\n    private String name;\n\n    public ComparatorTest(Integer id, String name) {\n        this.id = id;\n        this.name = name;\n    }\n\n    public Integer getId() {\n        return id;\n    }\n\n    public void setId(Integer id) {\n        this.id = id;\n    }\n\n    public String getName() {\n        return name;\n    }\n\n    public void setName(String name) {\n        this.name = name;\n    }\n\n    @Override\n    public String toString() {\n        return \"ComparableTest{\" +\n                \"id=\" + id +\n                \", name=\'\" + name + \'\\\'\' +\n                \'}\';\n    }\n}\n```\n测试\n```java\npublic static void main(String[] args) {\n        ComparatorTest[] ComparatorTests = new ComparatorTest[5];\n        ComparatorTests[0] = new ComparatorTest(1,\"孙悟空\");\n        ComparatorTests[1] = new ComparatorTest(25,\"猪八戒\");\n        ComparatorTests[2] = new ComparatorTest(25,\"鲁班\");\n        ComparatorTests[3] = new ComparatorTest(89,\"孙尚香\");\n        ComparatorTests[4] = new ComparatorTest(74,\"百里守约\");\n\n        //重写时候调用Arrays工具类sort方法直接进行排序\n        //这里直接采用匿名内部类写法重写compare方法\n        Arrays.sort(ComparatorTests, new Comparator<ComparatorTest>() {\n            @Override\n            public int compare(ComparatorTest o1, ComparatorTest o2) {\n                //Integer等基本数据类型包装类已经实现了Comparator接口\n                //直接调用即可\n                int compare = Integer.compare(o1.getId(), o2.getId());\n                //如果返回值不等于0，说明两属性不相等，直接返回对应值即可。\n                if (compare != 0){\n                    return compare;\n                }\n                //如果相等，那就比较第二个属性String\n                //这里仍然调用String已经重写的compareTo方法\n                return o1.getName().compareTo(o2.getName());\n            }\n        });\n        //输出验证\n        System.out.println(Arrays.toString(ComparatorTests));\n    }\n```\n\nInteger包装类重写的compare方法\n```java\npublic static int compare(int x, int y) {\n        return (x < y) ? -1 : ((x == y) ? 0 : 1);\n    }\n```\n测试结果\n\n```java\n[ComparableTest{id=1, name=\'孙悟空\'},\n ComparableTest{id=25, name=\'猪八戒\'},\n ComparableTest{id=25, name=\'鲁班\'},\n ComparableTest{id=74, name=\'百里守约\'},\n ComparableTest{id=89, name=\'孙尚香\'}]\n```\n**Comparator总结**\n相比Comparable接口，Comparator降低了耦合性，不需要本类直接实现接口，而是在调用比较时，直接传入实现接口的匿名类，重写compare方法。', '2021-03-19 01:07:30', '35', null, '', '0');
INSERT INTO `essay` VALUES ('27', 'Java中被final修饰的变量的几种赋值方式', '3,4', '## 关于final\n\n> final 表示\"最后的、最终的\"含义，变量一旦赋值后，不能被重新赋值。被 final 修饰的实例变量必须显式指定初始值。\n> final 修饰符通常和 static 修饰符一起使用来创建类常量。\n\n关于final，首先想到的是一旦赋值后不可变，那么就有相关问题了，对于final修饰的变量属性都有哪些赋值的方式呢？\n## 非静态使用final\n非静态final赋值有三种：**定义初始化、非静态代码块、构造方法。**\n 1. 定义初始化时进行赋值\n \n在声明对象时直接赋值，赋值后就不可变了，这种是最容易想到的。\n```java\npublic class FinalTest {\n    \n    private final Integer num = 10;\n    \n}\n```\n 2. 代码块中赋值\n这种是在定义之初不进行赋值操作，而是在代码块中进行赋值，也是可以的。\n```java\npublic class FinalTest {\n    private final Integer num;\n\n    {\n        num = 10;\n    }\n    \n}\n```\n\n 3. 构造器中赋值\n这种也容易想到，在创建对象时进行赋值，一旦对象创建完成，就不可变了，**所以在创建完对象后set()方法是不能进行赋值的。**\n```java\npublic class FinalTest {\n\n    private final Integer num;\n    \n    public FinalTest(Integer num) {\n        this.num = num;\n    }\n    \n}\n```\n## 静态使用final\n静态final赋值有两种：**定义初始化、非静态代码块。**\nfinal关键字一般都是配合static进行使用的\n此时与上述有所不同，静态的变量是随着类的加载而加载，所以在构造器中是不能够进行初始化赋值操作的。\n\n 1. 定义初始化\n\n```java\npublic class FinalTest {\n    \n    private static final Integer num = 10 ;\n    \n}\n```\n\n 2. 静态代码块\n\n```java\npublic class FinalTest {\n\n    private static final Integer num;\n    \n    static {\n        num = 10;\n    }\n\n}\n```\n\n## 关于fianl的补充说明\n\n> 父类中的 final 方法可以被子类继承，但是不能被子类重写。\n> \n> 声明 final 方法的主要目的是防止该方法的内容被修改。\n> \n\n```java\nclass Father{\n    public final void methodTest(){\n        return;\n    }\n}\nclass Son extends Father{\n    //调用父类final方法\n    public void test(){\n        this.methodTest();\n    }\n}\n```\n\n> final 类不能被继承，没有类能够继承 final 类的任何特性。\n', '2021-03-19 01:08:37', '35', null, '', '0');
INSERT INTO `essay` VALUES ('28', '面试高频——HashMap底层实现原理与源码剖析（JDK7、8对比）', '3,4', '## 前言\nHashMap是基于哈希表的Map接口的实现，在数据结构中十分重要，用途十分广泛，与HashTable相比，它是线程不安全的，这就注定了HashMap的高效率和常用性。\n@[TOC](目录)\n## 待解决的问题\n\n> 如果有一个长度为15的数组，存储着5个数据，我们现在要向数组中添加一个新的元素，要求数组中所有元素的值不能重复，该如何有效解决？\n\n*这个问题相对简单，我们可以对数组进行遍历，判断数组中每个元素的值与当前元素是否相等，如果相等就不添加，不等就添加进数组，问题迎刃热解。*\n\n> 如果这个数组长度非常长，数据非常多，还能使用上述方法解决吗？\n\n*显然是行不通的，使用这么低效率的方法处理成千上万的数据我们是无法接受的，那么有没有什么更好的方法呢？*\n\n> HashMap是一种数组加链表形式的数据存储结构，根据哈希值特性的加持，能有效降低查找元素所花费的时间以及空间复杂度。\n\n**原理**\n\n> **数组加链表，存储大量元素时，通过哈希值的特性，计算出每个元素的哈希值，在进行某种运算，计算出该元素在数组的存放位置，大量元素存储时，查重和添加就会大大提高效率，先按规定（哈希值）计算该元素在数组中应该存放的位置，此时已经排除其他数组位置，每个数组位置上又以链表的形式存储数据，极大的提高了效率。**\n\n\n## Java SE系列笔记——HashMap\n[https://editor.csdn.net/md?not_checkout=1&articleId=109057051](https://editor.csdn.net/md?not_checkout=1&articleId=109057051)\n## 底层原理分析\n 1. JDK7中\n \n	创建HashMap对象之后\n    首先底层创建一个长度为16的数组 Entry[] table （Entry类）\n    \n    进行多次put(key,value)时\n    	计算key的哈希值，然后经过某种计算得到其在数组中下标的位置\n\n        \n> 情况一：如果数组此位置上没有元素，那么直接添加成功\n\n\n> 情况二：位置上已存在元素（元素可能不止一个，以链表形式存储），则遍历进行哈希值的比较。\n>                     1.如果哈希值不同，则将新元素添加在链表的头部位置\n>                     2.如果哈希值相同，则通过equals方法继续比较。\n>                     										2.1如果相等，就覆盖之前的元素\n>                                                          2.2如果不等，就添加成功\n\n 2. JDK8中\n \n    **创建HashMap对象时不会立即创建长度为16的数组**\n    当进行第一次put时，此时才创建一个长度为16的Note[]（Note类）数组\n    与JDK7大致相同，不同点在于：\n\n   \n> 加入了红黑树，**当单个链表长度大于8且数组长度大于64时启用红黑树存储**，数组长度小于64时继续扩容即可，扩容后把之前的数据复制到新的数组中。\n\n> JDK7中添加新元素是在链表的头部，而JDK8中则是直接加到链表的尾部（七上八下）\n\n> JDK7中使用的是Entry类。JDK8则使用的是Node类\n\n**红黑树**\n\n> 红黑树是一种特定类型的二叉树，是在计算机科学中用到的一种数据结构，典型的用途是实现关联数组。它是在1972年由RudolfBayer发明的，他称之为\"对称二叉B树\"，它现代的名字是在LeoJ.Guibas和RobertSedgewick于1978年写的一篇论文中获得的。它是复杂的，但它的操作有着良好的最坏情况运行时间，并且在实践中是高效的，它可以在O(logn)时间内做查找，插入和删除，这里的n是树中元素的数目。\n\n\n\n\n## 源码分析（JDK8）\n**HashMap常用属性**\n\n```java\n	默认加载因子（就是当数组已添加元素的位置个数占数组总长度的0.75时，开始进行扩容操作）\n    static final float DEFAULT_LOAD_FACTOR = 0.75f;\n    默认初始数组长度（默认数组长度为16）\n    static final int DEFAULT_INITIAL_CAPACITY = 1 << 4;\n    扩容临界值 16 * 0.75 = 12（当数组已添加元素的位置个数为12时开始扩容）\n    int threshold\n    转红黑树最小数组长度（当数组长度大于64时，才考虑进行转红黑树存储）\n    static final int MIN_TREEIFY_CAPACITY = 64;\n    单个链表长度大于该值时，且数组长度大于64时，转化为红黑树。\n    static final int TREEIFY_THRESHOLD = 8;\n```\n\n 1. 创建HashMap对象\n```java\n	public HashMap() {\n        this.loadFactor = DEFAULT_LOAD_FACTOR; // all other fields defaulted\n    }\n```\n空参构造器中对属性loadFactor（加载因子）进行了赋值操作，初始值为16。\n**注意：JDK8中创建完HashMap对象后并没有立即创建长度为16的数组。**\n\n 2. 进行添加操作时\n \n```java\n	public V put(K key, V value) {\n        return putVal(hash(key), key, value, false, true);\n    }\n```\n传入Key与Value值，并返回putVal()方法，此时还是没有创建长度为16的Note[]数组。\n\n```java\nfinal V putVal(int hash, K key, V value, boolean onlyIfAbsent,\n                   boolean evict) {\n        1.创建一个Node数组，以及Node对象 n：数组长度 i：下标\n        Node<K,V>[] tab; Node<K,V> p; int n, i;\n        2.如果table为null 或是table表长度为0时 因为我们是第一次添加 所以要进入判断中\n        if ((tab = table) == null || (n = tab.length) == 0)\n        	3.进入resize方法，并返回长度给n\n            n = (tab = resize()).length;\n        if ((p = tab[i = (n - 1) & hash]) == null)\n            tab[i] = newNode(hash, key, value, null);\n        else {\n            Node<K,V> e; K k;\n            4.进入resize方法出来以后，数组已创建完毕，下面就是添加时进行的判断了。\n            if (p.hash == hash &&\n            	5.当新添加元素与之前链表头元素的哈希值，key值都相等时，说明已存在。\n                ((k = p.key) == key || (key != null && key.equals(k))))\n                6.直接进行覆盖即可。\n                e = p;\n            7.这一步是判断Note[]是否已转为红黑树，先不用管\n            else if (p instanceof TreeNode)\n                e = ((TreeNode<K,V>)p).putTreeVal(this, tab, hash, key, value);\n            8.如果不满足上述所有条件\n            else {\n            	9.遍历此链表，从p.next开始，因为第5步已经对表头进行了判断\n                for (int binCount = 0; ; ++binCount) {\n                	10.如果下一节点为空\n                    if ((e = p.next) == null) {\n                    	11.直接添加至链表尾，这也是与JDK7不一样的地方，传入哈希值，key，value，并结束循环\n                        p.next = newNode(hash, key, value, null);\n                        如果链表长度超过8，则进入treeifyBin方法判断进行扩容还是转成红黑树\n                        if (binCount >= TREEIFY_THRESHOLD - 1) // -1 for 1st\n                            treeifyBin(tab, hash);\n                        break;\n                    }\n                    12.如果哈希值相等，key也相等，说明两个元素一样，此时需要覆盖，直接break种植循环\n                    if (e.hash == hash &&\n                        ((k = e.key) == key || (key != null && key.equals(k))))\n                        break;\n                    如果有匹配到，继续next循环\n                    p = e;\n                }\n            }\n            13.对哈希值相等并且key值一样，进行替换操作。\n            if (e != null) { // existing mapping for key\n                V oldValue = e.value;\n                if (!onlyIfAbsent || oldValue == null)\n                    e.value = value;\n                afterNodeAccess(e);\n                return oldValue;\n            }\n        }\n        ++modCount;\n        if (++size > threshold)\n            resize();\n        afterNodeInsertion(evict);\n        return null;\n    }\n```\n初次添加，进入resize方法，\n\n```java\nfinal Node<K,V>[] resize() {\n		1.定义数组\n        Node<K,V>[] oldTab = table;\n        int oldCap = (oldTab == null) ? 0 : oldTab.length;\n        int oldThr = threshold;\n        int newCap, newThr = 0;\n        if (oldCap > 0) {\n            if (oldCap >= MAXIMUM_CAPACITY) {\n                threshold = Integer.MAX_VALUE;\n                return oldTab;\n            }\n            else if ((newCap = oldCap << 1) < MAXIMUM_CAPACITY &&\n                     oldCap >= DEFAULT_INITIAL_CAPACITY)\n                newThr = oldThr << 1; // double threshold\n        }\n        else if (oldThr > 0) // initial capacity was placed in threshold\n            newCap = oldThr;\n        2.我们是第一次添加，所以上面的判断都不会进入\n        else {               // zero initial threshold signifies using defaults\n        	3.初次添加进入到这里，对newCap（初始数组长度16）和newThr（扩容临界值0.75 * 16 = 12）进行赋值\n            newCap = DEFAULT_INITIAL_CAPACITY;\n            newThr = (int)(DEFAULT_LOAD_FACTOR * DEFAULT_INITIAL_CAPACITY);\n        }\n        if (newThr == 0) {\n            float ft = (float)newCap * loadFactor;\n            newThr = (newCap < MAXIMUM_CAPACITY && ft < (float)MAXIMUM_CAPACITY ?\n                      (int)ft : Integer.MAX_VALUE);\n        }\n        threshold = newThr;\n        @SuppressWarnings({\"rawtypes\",\"unchecked\"})\n        4.到这里，才进行Note数组的创建\n        Node<K,V>[] newTab = (Node<K,V>[])new Node[newCap];\n        5.创建完毕赋给table，我们是第一次添加，所以下面的逻辑先不用看\n        table = newTab;\n        if (oldTab != null) {\n            for (int j = 0; j < oldCap; ++j) {\n                Node<K,V> e;\n                if ((e = oldTab[j]) != null) {\n                    oldTab[j] = null;\n                    if (e.next == null)\n                        newTab[e.hash & (newCap - 1)] = e;\n                    else if (e instanceof TreeNode)\n                        ((TreeNode<K,V>)e).split(this, newTab, j, oldCap);\n                    else { // preserve order\n                        Node<K,V> loHead = null, loTail = null;\n                        Node<K,V> hiHead = null, hiTail = null;\n                        Node<K,V> next;\n                        do {\n                            next = e.next;\n                            if ((e.hash & oldCap) == 0) {\n                                if (loTail == null)\n                                    loHead = e;\n                                else\n                                    loTail.next = e;\n                                loTail = e;\n                            }\n                            else {\n                                if (hiTail == null)\n                                    hiHead = e;\n                                else\n                                    hiTail.next = e;\n                                hiTail = e;\n                            }\n                        } while ((e = next) != null);\n                        if (loTail != null) {\n                            loTail.next = null;\n                            newTab[j] = loHead;\n                        }\n                        if (hiTail != null) {\n                            hiTail.next = null;\n                            newTab[j + oldCap] = hiHead;\n                        }\n                    }\n                }\n            }\n        }\n        6.返回\n        return newTab;\n    }\n```\n**红黑树与扩容**\n\n```java\nfinal void treeifyBin(Node<K,V>[] tab, int hash) {\n        int n, index; Node<K,V> e;\n        如果数组长度小于64 只需要扩容就行了\n        if (tab == null || (n = tab.length) < MIN_TREEIFY_CAPACITY)\n            resize();\n        否则才进行红黑树转换\n        else if ((e = tab[index = (n - 1) & hash]) != null) {\n            TreeNode<K,V> hd = null, tl = null;\n            do {\n                TreeNode<K,V> p = replacementTreeNode(e, null);\n                if (tl == null)\n                    hd = p;\n                else {\n                    p.prev = tl;\n                    tl.next = p;\n                }\n                tl = p;\n            } while ((e = e.next) != null);\n            if ((tab[index] = hd) != null)\n                hd.treeify(tab);\n        }\n    }\n```\n## 写在最后\n**关于红黑树**\n\n> **当链表长度大于8且数组长度大于64时，此时再使用链表结构效率就会大大降低，若采用红黑树进行存储，往树上进行添加时，大于根结点的挂右边，小于根结点的挂左边，一次类推，这样每次查找一旦锁定数组上哪个红黑树之后，理想状态下每次就能排除一半，比链表结构一个一个遍历查找效率快很多，从而降低时间复杂度。**\n\n\n**关于加载因子与临界值**\n\n为什么会有加载因子？加载因子是干嘛的？\n\n> 加载因子是衡量什么情况下进行扩容操作的重要指标，当已占用数组下标数量占比数组长度的0.75时，例如数组长度16，达到12时就要进行扩容了。\n\n为什么不是在数组占满时再扩容，而是达到临界值时？\n\n> 数组一定会满吗？首先考虑这个问题，数组分配的下标位置是根据元素哈希值经过&运算得出的数组下标，这样一来就会形成一种可能，就是有的数组下标形成了很长的链表，而也有的数组下标没有一个元素存放，这样的话如果是在数组占满时再扩容（这时候可能个别链表已经很长了，已经不利于查找了），效率会很低。所以经过计算，加载因子为0.75上下时，进行数组扩容是比较合理的。\n', '2021-03-19 02:02:35', '2', null, '', '0');
INSERT INTO `essay` VALUES ('29', '学习Java基础的个人总结与笔记', '1,3', '## 学习的思维方式\n\n> **1.大处着眼，小处着手\n> 2.逆向思维、反证法\n> 3.透过问题看本质**\n## 编码习惯\n类名尽量首字母要大写 类名不分大小写 会报错\n\n```java\n 1. 如果大括号代码为空直接\'{}\',大括号内有代码则：左大括号左侧不换行，右侧换行；右大括号右侧换行，左侧如果不跟else等代码换行，否则不换行\n 2. 小括号和字符之间不能有空格，括号内字符和运算符之间有空格 如：if (a == b)\n 3. if、for、while、do、switch与括号之间必须有空格\n 4. 任何二目、三目运算符前后必须有空格\n 5. 采用4个空格，禁止使用tab\n 6. 注释的双斜线和内容要有空格\n 7. 强制类型转换时，右括号与强制转换值之间不用空格\n 8. 单行字符不超过120个，超过要换行\n 9. 方法在定义和传参时，必须要加空格\n 10. IDE的text file encoding 设置为UTF-8；IDE中 文件的换行符使用Unix格式\n 11. 单个方法尽量不超过80行\n 12. 不同逻辑、不同语义、不同业务之间的代码插入一个空行分隔符\n```\n> 尽量避免写既有返回值，又有操作的方法，在调用进行判断时易造成二次操作\n\n## 地址传递与值传递\n基本数据类型：值传递\n```java\n//定义\nint a = 100; int b = a; b = 10;\n//结果\na:100   b:10\n```\n引用数据类型：地址传递\n\n```java\n//定义\nclass student{\n	int a;\n}\nstudent stu = new student();\nstu.a = 100;\nstudent stu2 = stu;\nstu2.a = 10;\n//结果\nstu.a:10  stu2.a:10\n```\n\n## 特殊的String\n> String类型相对特殊，虽是引用数据类型，但其数据存数在常量池中\n\n```java\n//定义\nString str1 = (\"123\");\nString str2 = new String(\"123\");\n```\n前者存在常量池，后者在堆中（堆中有value地址指向常量池），而且常量池中会匹配相同的（去重）\n例如：\n> String a=\"123\";和String b = \"123\"; 都存在于常量池中，去重，两者地址值相同，所以a==b，继而a.equals(b)为true \n> \n反例：\n>  而String a = new String(\"123\");与String b = new String(\"123\");不同对象地址值不同\n> 即a!=b 但a,equals(b)为true （String类重写了equals方法）\n> 特别的，String a = new String(\"123\");与String a = \"123\";不同，但前者堆中的values地址仍指向后者\n\n## next()与nextLine()区别\n > 首先，next（）一定要读取到有效字符后才可以结束输入。\n >  对输入有效字符之前遇到的空格键、Tab键或Enter键等结束符，next（）方法会自动将其去掉，只有在输入有效字符之后， next（）方法才将其后输入的空格键、Tab键或Enter键等视为分隔符或结束符。\n> 简单地说，next（）查找并返回来自此扫描器的下一个完整标记。 完整标记的前后是与分隔模式匹配的输入信息，所以next方法不能得到带空格的字符串而nextLine（）方法的结束符只是Enter键， 即nextLine（）方法返回的是Enter键之前的所有字符，它是可以得到带空格的字符串的。\n\nnextLine();  输入可以为null，以回车为结束   未避免输入前略过，需要前置一个匿名input.nextLine();（字符串任意位置都可以有空格）\nnext()： 必须有输入，以输入的第一个有效字符(不包括空格)为开始，直到空格键或回车键结束。（连续的字符串）\nnull与\"\"不同，null未初始化 \n\n## 封装\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20201016215849593.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n## 继承\n\n> 继承父类：可以获取父类private属性和方法，但不能直接调用 重载和重写都是早绑定，静态绑定\n> 方法重载：方法名一致，参数列表不一致，返回值类型任意即可，重载可以在同一类中，也可在继承类中 \n> 方法重写：方法名一致，参数列表一致，返回值类型除引用类型外必须一致（void，基本数据类型），引用数据类型还可以是此类的子类 例：父Object——>子String ，权限修饰要大于等于，异常要小于等于\n\n对属性赋值的先后顺序\n\n> 1 默认初始化 \n> 2 显式赋值//代码块中赋值（看实际先后）\n> 3 构造器赋值 \n> 4 new对象之后 通过属性方法赋值\n\n```java\nclass c{\n	static {\n		System.out.println(\"static c\");//11111111111111\n	}\n	{\n		System.out.println(\"非static c\");//4444444444444\n	}\n	public c() {\n		System.out.println(\"c\");//55555555555555555\n	}\n}\nclass b extends c{\n	static {\n		System.out.println(\"static b\");//2222222222222222\n	}\n	{\n		System.out.println(\"非static b\");//66666666666666666\n	}\n	public b() {\n		System.out.println(\"b\");//777777777777777777\n	}\n}\npublic class a extends b{\n	static {\n		System.out.println(\"static a\");//3333333333333\n	}\n	{\n		System.out.println(\"非static a\");//888888888888888\n	}\n	public a() {\n		System.out.println(\"a\");//99999999999999999\n	}\n	\n	public static void main(String[] args) {\n		System.out.println(\"main()\");\n		new a();\n	}\n}\n```\n\n## 多态\n> 多态：运行时行为，只有运行时才知道调用的时子类还是父类的方法 ，动态绑定，晚绑定，**编译看左边**，**运行看右边** Person p = new Man();\n\n> 向下转型：在向上转型（多态）的基础上向下，且必须是向上转之前类或其父类 Person per = new Man();\n> 向下转必须是小于Person大于等于Man\n\n**向上转型（多态）**\n转型后只能访问父类方法和子类重写的方法，不能调用子类特有的方法。\n此时利用向下转型，a instanceof A判断a是否是A的一个实例，a也可以是A的子类实例，也可以是向上转型（B继承于A）\n```java\nA a = new B();\nSystem.out.println(a instanceof B);true\n```\n## 关于equals()\n**Object类中equals**\n\n```java\npublic boolean equals(Object obj) {\n	return (this == obj);\n}\n```\n**String重写了此方法**\n\n```java\n	public boolean equals(Object anObject) {\n        if (this == anObject) {\n            return true;\n        }\n        if (anObject instanceof String) {\n            String anotherString = (String) anObject;\n            int n = value.length;\n            if (n == anotherString.value.length) {\n                char v1[] = value;\n                char v2[] = anotherString.value;\n                int i = 0;\n                while (n-- != 0) {\n                    if (v1[i] != v2[i])\n                        return false;\n                    i++;\n                }\n                return true;\n            }\n        }\n        return false;\n    }\n```\n所以在自写类中调用equals方法需要重写来覆盖Object类中的方法。\n\n> == 只能比较基本数据类型 除boolean外 返回值为boolean\n## 基本数据类型与包装类\n基本数据类型转包装类：\n> int in1 = 3;  Integer in2 = new Integer(in1);   float double 等等\n\n包装类转基本数据类型：\n\n> Ieteger in3 = new Integer(\"123\"); int in4 = in3.intValue();\n\n**JDK5.0之后 自动装箱\n\n> int in1 = 3; Integer in2 = in1;\n\n 自动拆箱\n\n>  Integer in3 = new Integer(\"3\"); int in4 = in3;\n\n面试题\n```java\nInteger i = new Integer(1);\nInteger j = new Integer(1);\nSystem.out.println(i==j);//false   new出来的地址不同\n		\nInteger m = 1;\nInteger n = 1;\nSystem.out.println(m==n);//true  static提前造好常用的[-128，127]，不用再去new，节省内存，所以m和n地址一样\n		\nInteger x = 128;\nInteger y = 128;\nSystem.out.println(x==y);//false 128超出范围 所以为false\n```\n\n**包装类其实就是把基本数据类型封装成类的属性 所以可以“.”**\n\n> 基本数据类型和包装类转String   String.valueOf(); String转基本数据类型和包装类\n> Integer.parseXxx(); 除Boolean外前提时必须能转 Boolean类是除了true（不分大小写）外全是false\n\n## 三元运算\n```java\nObject obj = true ? new Integer(1) : new Double(2.0);\nSystem.out.println(obj);//1.0\n```\n**三元运算必须是同类型 所以int自动提升为double 而if else不会**\n```java\nObject obj;\nif(true) {\n	obj = new Integer(1);\n}else {\n	obj = new Double(2.0);\n}\nSystem.out.println(obj);//1\n```\n## 工具类\n\n> 工具类：Math Arrays等都是静态类 无需new对象 直接调用\n\nCollections工具类\n[https://blog.csdn.net/weixin_46002478/article/details/109059635](https://blog.csdn.net/weixin_46002478/article/details/109059635)\n## static与final\n**static方法里不能使用this super关键字**\n> \n> main方法之前先加载其父类、本类、子类中的static代码块 由父及子 new（）之前先加载其父类、本类、子类中的static代码块\n> 然后加载父类、本类（不含子类）的非static代码块、进而加载父类、本类（不含子类）的构造器 且static从头至尾只加载一次\n> static代码块随类加载 非static代码块随对象加载，但在构造器之前 static代码块随类的加载而执行\n> 非static代码块随对象的创建而执行\n> \n\n> final最终 final属性不可以初始化赋值\n> 可以显示赋值和代码块赋值构造器赋值，构造器结束后属性就加载完毕，属性必须都有值，所以不可以方法赋值。\n> final修饰形参时，在方法调用时赋值，之后不可更改。 final修饰对象时 对象属性依然可以变 但对象本身不能变\n## 接口与抽象类\n抽象类：把一部分不确定的方法抽象起来 交给子类去具体实现\n> abstract抽象类可以修饰类和方法 不能修饰属性 构造器 也不能修饰私有方法 因为子类必须要重写 不能私有化 也不能修饰静态方法\n> 因为static方法不算重写 也不能修饰final方法 因为不能重写 抽象类有构造器 供子类继承调用\n> 抽象类可以没有抽象方法（通常有）但抽象方法所属的类必须为抽象类\n> 抽象类的子类必须重写所有父类（父类的父类）的所有抽象方法，如果不，则子类也必须是抽象类，也不能实例化\n\n抽象类：\n> methon(new Person()); 匿名对象new Person(); 匿名类new\n> Person(）{重写父类（Person）的抽象方法}；此时Person是抽象类，不能new 这里是省略了子类的名\n> 用父类代替，只需把子类所需要重写的方法写上即可 匿名的作用是方便于只用一次\n\n```java\npublic class PersonTest {\n	static void prt(Person per) {}\n	public static void main(String[] args) {\n		//非匿名对象非匿名类\n		Man per = new Man();\n		prt(per);\n		\n		//匿名对象非匿名类\n		prt(new Man());\n		\n		//非匿名对象匿名类\n		Person man = new Person() {\n			@Override\n			public void work() {}\n		};\n		prt(man);\n		//匿名对象匿名类\n		prt(new Person() {\n			@Override\n			public void work() {}\n		});\n	}\n}\n```', '2021-03-19 02:54:21', '35', null, '', '0');
INSERT INTO `essay` VALUES ('30', 'Java开发中的23种设计模式——单例模式', '2,3', '## 前言\n\n> 设计模式（Design Pattern）\n> 是一套被反复使用、多数人知晓的、经过分类编目的、代码设计经验的总结。使用设计模式是为了可重用代码、让代码更容易被他人理解、保证代码可靠性。\n\n**开发中的最高境界便是没有设计模式，因为你所编写的每一行代码都自发的趋于最优解。**\n\n## 单例模式\n\n> 是一种常用的软件设计模式。在它的核心结构中只包含一个被称为单例的特殊类。通过单例模式可以保证系统中，应用该模式的类一个类只有一个实例。即一个类只有一个对象实例。\n\n 1. 饿汉式\n *之所以称为饿汉式，是因为对象随着类的加载已经创建的，凸显的比较“饥饿”，仅此而已。*\n**优点：避免了线程安全问题，它是绝对线程安全的。\n缺点：很明显，可能容易造成内存浪费，因为对象在类加载时就已经被创建，这是如果暂时用不到，就会造成资源浪费。**\n```java\n//一般方式\nclass Singleton{\n	//创建对象（new一次）\n    private final static Singleton instance = new Singleton();\n    //私有化构造器\n    private Singleton(){}\n    //静态返回\n    public static Singleton getInstance(){\n        return instance;\n    }\n}\n//静态代码块方式\nclass Singleton{\n	//定义但未初始化\n    private final static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //静态代码块赋值\n    static {\n        instance = new Singleton();\n    }\n    public static Singleton getInstance(){\n        return instance;\n    }\n}\n```\n 2. 懒汉式\n*见名知意，相比饿汉式，它的特点便是，使用时才开始创建，所以比较“懒”。*\n**优点：与饿汉式形成对比，节省内存。**\n**缺点：一般线程不安全，改进扩展后可以。**\n\n```java\n//懒汉式（线程不安全）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //多个线程同时调用的话就会new出多个对象\n    public static Singleton getInstance(){\n    	//多个线程同时进入会判断对象为null\n        if(instance==null){\n        	//从而创建对个对象 不再是单例\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}\n```\n改进：加入同步锁之后，线程安全问题解决，但效率极低\n```java\n//懒汉式（线程安全 效率低）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    //同步方法 每次只能有一个线程进入\n    public static synchronized Singleton getInstance(){\n    	//每个线程依次进入进行判断是否为null，效率极低\n        if(instance==null){\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}\n//懒汉式（线程安全 效率低）\nclass Singleton{\n    private static Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    \n    public static Singleton getInstance(){\n    	//同步代码块方式(左右与上述一致 写法不同) 每次只能有一个线程进入\n    	//每个线程依次进入进行判断是否为null，效率极低\n        synchronized (Singleton.class){\n            if(instance==null){\n                instance = new Singleton();\n            }\n        }\n        return instance;\n    }\n}\n```\n上述问题：线程安全问题是解决了，但是效率十分低，因为只需要第一个线程进入之后判断是否为null，然后new一个对象，后面的线程进入只需要return返回就行了，如果继续等待同步锁，一次进入，就会造成效率问题。\n**继续改进：进行双重检验，在第二种的基础上再嵌套一层判空，这样的话除了前几个线程（跟随第一个线程同时进入）需要进入等待之外，其他线程在对象创建完成之后，只在最外层判空就行了（这一步骤是所有之后线程可以同时进行的，故效率高）。**\n```java\n//懒汉式（线程安全 推荐）\nclass Singleton{\n    private static volatile Singleton instance;\n    //私有化构造器\n    private Singleton(){}\n    public static Singleton getInstance(){\n        //同步代码块（双重检查）\n        if (instance==null){\n        	//这一层只有前几个线程同时进入\n        	//待第一个线程创建对象完成之后，之后的所有线程不会再进入等待\n            synchronized (Singleton.class){\n                if(instance==null){\n                    instance = new Singleton();\n                }\n            }\n        }\n        return instance;\n    }\n}\n```\n 1. 静态内部类\n \n//静态内部类（线程安全 省内存）\n*利用静态内部类的特殊机制（外层类加载时，内部类即便是静态的，也不会随之加载，这样一来，就不会造成内存浪费，只在调用时创建完成，并且线程是绝对安全的）。*\n```java\nclass Singleton{\n    //私有化构造器\n    private Singleton(){}\n    //静态内部类\n    private static class SingletonInstance{\n        private static final Singleton instance = new Singleton();\n    }\n    //return方法\n    public static Singleton getInstance(){\n        return SingletonInstance.instance;\n    }\n}\n```\n 2. 枚举\n简单粗暴枚举法\n*绝对单例，绝对线程安全，绝对不内存浪费*\n```java\n//枚举\nenum Singleton{\n    instance;//属性\n}\n```\n> 以上便是我学习过程中总结的一些思想和笔记，大家可以在学习过程中多交流，共同进步。——一个从入门到入土的程序小白。', '2021-03-19 18:39:18', '4', null, '', '0');
INSERT INTO `essay` VALUES ('31', '数据结构——赫夫曼编码实现数据压缩与解压原理剖析，附源码（下）', '3,2', '## 赫夫曼编码解压原理（接上篇）\n - 解压原理解析\n**上篇已经分析了赫夫曼编码的压缩原理，相反解压就会清晰许多，无非是拿到压缩后的文件先转成字节数组，然后拿到对应的赫夫曼编码表，对照着表来解压还原字节数组，最后再输出到文件即可完成。**\n - 现在要考虑的问题是如何处理压缩后生成的byte数组和对应赫夫曼编码表，首先想到的是将字符数组中的每个字节转化成字符串形式的**二进制**，这点非常重要，它对应的是赫夫曼编码表里面的每个字符的编码，根据这个字符串形式的二进制，**比对着赫夫曼编码表就能还原压缩前的数据**。\n - 下述方法就是如何将压缩后生成的字符数组根据二进制转成字符串。\n```java\n/**\n	 * byte转二进制字符串\n	 * @param flag 判断是否不是最后一个byte 不是：true 是：false\n	 * @param b 单个字节\n	 * @return\n	 */\n	private static String byteToBitString(boolean flag,byte b) {\n		int temp = b;\n		//如果不是最后一个byte\n		//正数需要补高位 负数不需要但补也没影响\n		if(flag&&b>=0) {\n			temp |= 256;\n		}\n		String str = Integer.toBinaryString(temp);\n		//如果是最后一位且字节>=0 直接返回即可\n		if(!flag&&b>=0) {\n			return str;\n		}\n		//否则需要截取后八位返回\n		return str.substring(str.length()-8);\n	}\n```\n - 然后进行数据解压，需要传入压缩后的字节数组与对应赫夫曼编码表。\n将字节数组转化成字符串形式的二进制之后，对应编码表还原数据的**真实字节**。\n```java\n/**\n	 * 数据解压\n	 * @param bytes 压缩后的byte数组\n	 * @param huffmanCodes 对应赫夫曼编码表\n	 * @return\n	 */\n	public static byte[] huffmanDecod(byte[] bytes,Map<Byte,String> huffmanCodes) {\n		StringBuilder sb = new StringBuilder();\n		//遍历压缩后的byte[] 逐个将字节转成二进制字符串顺序添加到sb中\n		for (int i = 0; i < bytes.length; i++) {\n			sb.append(byteToBitString(i!=bytes.length-1,bytes[i]));\n		}\n		//这一步尤为重要 我们需要根据编码值反向找对应字节(与压缩恰好相反)\n		//所以需要反转Map的Key和Value，因为通过Key找Value方便，Value找Key效率极低。\n		Map<String,Byte> huffmanCodex = new HashMap<>();\n		for(Entry<Byte,String> entry : huffmanCodes.entrySet()) {\n			huffmanCodex.put(entry.getValue(), entry.getKey());\n		}\n		//定义集合listByte ，存储根据编码值还原后的byte\n		List<Byte> listByte = new ArrayList<>();\n		//定义标志量\n		int flag;\n		//遍历二进制字符串 这里需要注意 由于赫夫曼编码为不定长编码\n		//所以在比对过程中并不确定 每个字节对应的二进制字符串位数\n		//所以定义flag标志量，每次从最小一位开始尝试匹配 匹配结果 有且只有一种\n		//因为前面章节已经提到 谁也不是谁的前缀 也不是谁的后缀 所以存在且唯一\n		for (int i = 0; i < sb.length();) {\n			flag = 1;\n			while(true) {\n				//如果匹配到\n				if(huffmanCodex.get(sb.substring(i, i+flag))!=null) {\n					//就从二进制字符串sb中截取并get到对应字节存储到集合listByte中\n					listByte.add(huffmanCodex.get(sb.substring(i, i+flag)));\n					break;\n				}\n				//如果本轮没有匹配到 就+1继续匹配\n				else {\n					flag++;\n				}\n			}\n			//每匹配到一个字节，就把它对应的赫夫曼编码长度加到i上\n			//目的在于跳过已匹配的编码继续循环\n			i += flag;\n		}\n		//循环结束 所有还原后的字节都存储在了集合listByte中\n		byte[] by = new byte[listByte.size()];\n		//复制到byte数组中\n		for (int i = 0; i < by.length; i++) {\n			by[i] = listByte.get(i);\n		}\n		//返回\n		return by;\n	}\n```\n - 解压工作基本完成，接下来封装一层，因为实际应用中都是解压目标路径下的文件\n\n```java\n/**\n	 * 文件解压 将压缩包解压至目标路径\n	 * @param srcFile 解压路径\n	 * @param dstFile 压缩包路径\n	 * @throws IOException\n	 * @throws ClassNotFoundException\n	 */\n	public static void decodFile(String srcFile,String dstFile) throws IOException, ClassNotFoundException {\n		//读取\n		FileInputStream fis = new FileInputStream(dstFile);\n		//嵌套缓冲流\n		BufferedInputStream bis = new BufferedInputStream(fis);\n		//转对象流\n		ObjectInputStream ois = new ObjectInputStream(bis);\n		//读入\n		Object objBytes = ois.readObject();\n		//强转\n		byte[] bytesZip = (byte[])objBytes;\n		//读入\n		Object objHuffmanCodes = ois.readObject();\n		//抢转\n		Map<Byte,String> huffmanCodes = (Map<Byte,String>)objHuffmanCodes;\n		//关键一步 传入压缩后的字节数组与对应编码表解压\n		byte[] bytes = huffmanDecod(bytesZip,huffmanCodes);\n		\n		FileOutputStream fos = new FileOutputStream(srcFile);\n		\n		BufferedOutputStream bos = new BufferedOutputStream(fos);\n		//解压后写出到文件\n		bos.write(bytes);\n		//资源关闭\n		ois.close();\n		\n		bis.close();\n		\n		bos.close();\n		\n	}\n```\n\n - 测试\n解压G盘Huffman目录下的一个zip\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200919134253584.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n测试代码\n```java\n	//解压测试\n	@Test\n	public void test2() {\n		String srcFile = \"G://Huffman/爪哇.zip\";\n		String zipFile = \"G://Huffman/Java.txt\";\n		try {\n			decodFile(srcFile,zipFile);\n			System.out.println(\"解压成功\");\n		} catch (IOException e) {\n			e.printStackTrace();\n		} catch (ClassNotFoundException e) {\n			e.printStackTrace();\n		}\n	}\n```\n测试结果\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200919134620333.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n大小对比\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200919134744839.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n↓↓↓↓↓↓ 基于赫夫曼编码的数据解压部分完结，下面是前半部分压缩链接 ↓↓↓↓↓↓\n\n[数据结构——赫夫曼编码实现数据压缩与解压原理剖析，附源码（上）](http://blog.csdn.net/weixin_46002478/article/details/108666876)\n\n- 源码百度网盘链接\n [链接：https://pan.baidu.com/s/1B5RcQ2orBCJR7IZL2X36NA \n提取码：ox28](https://pan.baidu.com/s/1B5RcQ2orBCJR7IZL2X36NA)\n- 源码Gitee码云仓库链接\n[https://gitee.com/superb12580/huffman-code-zip.git](https://gitee.com/superb12580/huffman-code-zip.git)\n- 源码线上整理CSDN链接\n[https://blog.csdn.net/weixin_46002478/article/details/108672847](https://blog.csdn.net/weixin_46002478/article/details/108672847)', '2021-03-22 21:22:39', '2', null, '', '0');
INSERT INTO `essay` VALUES ('32', '数据结构——赫夫曼编码实现数据压缩与解压原理剖析，附源码（上）', '1,3', '## 前言\n\n> 赫夫曼编码是可变字长编码(VLC)的一种。 Huffman于1952年提出一种编码方法，该方法完全依据字符出现概率来构造异字头的平均长\n> 度最短的码字，有时称之为最佳编码，一般就称Huffman编码。下面引证一个定理，该定理保证了按字符出现概率分配码长，可使平均码长最短。\n\n本期分析非常重要的赫夫曼编码实际应用，在数据压缩与解压方面十分重要！从底层原理入手，切合编码实现。\n\n - 涉及知识点\nJava编程基础 Comparable类Java比较器\n数据结构中简单二叉树和**赫夫曼树的构造原理**\n\n由于篇幅过长，本篇先着重分析压缩原理，进而解压反向操作就会简单明了很多。\n\n - 原理解析\n**之于赫夫曼编码，就是以字节为基本单位(一个字节byte为8位bit)，表示范围为0-255，所有的字符或是文件都可以转化成字节数组byte[]，然后统计每个字节出现的次数(权重)，生成对应的赫夫曼树，不定长编码，出现次数多的都在赫夫曼树相对较高的节点上，进而它的赫夫曼编码就会相对较短，相反出现次数少的那些字节都处在赫夫曼树较低的节点上，进而它的赫夫曼编码就会相对较长(出现次数少，没关系)，并且只有叶子结点来表示每个字节(有左右子树的不是)，这样一来就不会有解析冲突(谁也不是谁的前缀，也不是谁的后缀)，这样一来，一个字符串或一个文件的字节就会被压缩至比原来字节数更少，从而达到压缩的目的，接下来就实际操作一番**\n\n\n - 前期准备\n前期需要先创建赫夫曼树结点基类。\n\n```java\n/**\n * Note类(一个字节对应一个Note对象)\n * 实现Comparable接口根据权重大小进行排序\n * @author Superb\n */\nclass Note implements Comparable<Note>{\n	//存储的字节数据\n	Byte data;\n	//权重(该字节数据出现的次数)非常重要\n	int weight;\n	//左节点\n	Note left;\n	//右节点\n	Note right;\n	//构造器 每创建一个Node节点就要传入其字节数据以及权重\n	public Note(Byte data, int weight) {\n		super();\n		this.data = data;\n		this.weight = weight;\n	}\n	@Override\n	public String toString() {\n		return \"Node [data=\" + data + \", weight=\" + weight + \"]\";\n	}\n	//重写compareTo方法\n	@Override\n	public int compareTo(Note o) {\n		//根据权重属性值 升序排列\n		return this.weight-o.weight;\n	}\n}\n```\n * 统计每个字节出现的次数\n每个文件或是字符串都是由一个个字节组成，这里先对字节数组进行处理，减少耦合度。通过HashMap的特性统计每个字符出现的次数。\n```java\n	//成员变量 存每个byte出现的次数\n	private static Map<Byte,Integer> map = new HashMap<>();\n	/**\n	 * 通过Map统计各byte出现的次数生成Note对象返回List<Note>\n	 * @param bytes\n	 * @return List<Note>\n	 */\n	private static List<Note> getNotes(byte[] bytes){\n		//存储每个字节生成的Node结点对象\n		List<Note> list = new ArrayList<>();\n		//遍历byte数组\n		for (byte b : bytes) {\n			//如果map中还没有此字节，就设次数为1\n			if(map.get(b)==null) {\n				map.put(b, 1);\n			}\n			//如果map中已出现此字节，就+1\n			else {\n				map.put(b, map.get(b)+1);\n			}\n		}\n		//遍历整个map\n		for(Entry<Byte, Integer> entry : map.entrySet()) {\n			//为map中每个的字节创建Note结点，并传入字节数据和权重（出现次数），\n			list.add(new Note(entry.getKey(),entry.getValue()));\n		}\n		//返回，此时已包含所有结点对象\n        return list;\n	}\n```\n * 根据权重值生成对应的赫夫曼树\n赫夫曼树的生成法：每次把权值最小的两个二叉树合并，选择两个权值最小的a和b作为最底层节点，然后从List集合中移除a、b，但需要再添加一个a和b权值相加后的结点(此节点有左右子树，非叶子结点)，一直循环到最后生成赫夫曼树。\n示例：\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200918164534145.gif#pic_center)\n```java\n	/**\n	 * 传入集合生成赫夫曼树返回根结点\n	 * @param list\n	 * @return Note\n	 */\n	private static Note huffmanTree(List<Note> list) {\n		Note left = null;\n		Note right = null;\n		Note parent = null;\n		//循环遍历List集合中的结点，只要不为空就继续\n		while(list.size()>1) {\n			//对所有结点进行排序，前面已实现Comparable接口，调用Collections工具类即可排序。\n			Collections.sort(list);\n			//0和1位置的结点权值最小，分别赋值给左右结点\n			left = list.get(0);\n			right = list.get(1);\n			//并生成它们的父结点，(权值相加，字节数据为空，因为最后不是叶子结点)\n			parent = new Note(null,left.weight+right.weight);\n			//连接左右孩子\n			parent.left = left;\n			parent.right = right;\n			//从集合中移除已经生成的结点\n			list.remove(left);\n			list.remove(right);\n			//添加新的父类结点\n			list.add(parent);\n		}\n		//遍历结束 返回根结点 此时已生成带权路径长度最优的赫夫曼树\n		return parent;\n	}\n```\n * 根据赫夫曼树生成对应赫夫曼编码表\n每个叶子结点对应一个Note对象，从根节点出发，往左为0，往右为1，深入遍历生成每个叶子结点的对应赫夫曼编码。\n编码表非常重要，压缩之后要跟压缩文件一同保存，因为它是还原解压的唯一依照！\n```java\n	//成员变量 各byte对应的字符串二进制码\n	private static Map<Byte,String> huffmanCodes = new HashMap<>();\n	/**\n	 * 递归生成各Byte对应的字符串二进制码\n	 * @param note 根结点\n	 * @param str 0代表往左子树遍历 1代表往右子树遍历\n	 * @param sb\n	 */\n	private static void getCodes(Note note,String str,StringBuilder sb) {\n		//额外定义sb2接收每次递归生成的上层编码sb，不直接对sb进行操作，从而不影响全局变量sb\n		StringBuilder sb2 = new StringBuilder(sb);\n		//每次递归深入下一层先加上每一层的编码(左0右1)\n		sb2.append(str);\n		//先判不为空 再继续\n		if(note!=null) {\n			//如果数据为空，说明不是叶子结点，不是byte字节结点\n			if(note.data==null) {\n				//继续左右递归遍历 往左走+0 往右走+1\n				getCodes(note.left, \"0\",sb2);\n				getCodes(note.right, \"1\",sb2);\n			}\n			//如果不为空，说明是叶子结点，已递归生成其赫夫曼编码\n			else {\n				//存到map中 key=结点byte值 value=对应赫夫曼编码\n				huffmanCodes.put(note.data, sb2.toString());\n			}\n		}\n	}\n	/**\n	 * 赫夫曼树转赫夫曼编码表(重载)\n	 * 调用上述方法，并返回生成的赫夫曼编码表(每个字节byte对应一个编码)\n	 * @param note\n	 * @return\n	 */\n	private static Map<Byte,String> getCodes(Note note) {\n		getCodes(note,\"\",new StringBuilder());\n		//返回每个字节byte对应的赫夫曼编码：0110010(由0和1排列组合形成)\n		return huffmanCodes;\n	}\n```\n * 根据赫夫曼编码表对元数据进行压缩\n\n```java\n	/**\n	 * 传入压缩前byte[]和对应Huffman编码表生成压缩后的byte[]\n	 * @param bytes 对应的就是需要压缩的文件或字符串\n	 * @param huffmanCodes 赫夫曼编码表\n	 * @return byte[] 返回压缩后的byte数组\n	 */\n	private static byte[] zip(byte[] bytes,Map<Byte,String> huffmanCodes) {\n		StringBuilder sb = new StringBuilder();\n		//遍历元byte数组\n		for(byte b : bytes) {\n			//去编码表中匹配每个字节，并将其编码连接一起到sb\n			sb.append(huffmanCodes.get(b));\n		}\n		//此时sb里面存储的就是压缩后的二进制数据(全部由01组成)，但此时仍是用字符串进行存储，一个字符两个字节。\n		//此时的sb字符串比元数据要大得多，所以不能用字符串存二进制数据，还是要以byte数组(sb中每八个字符转化为一个字节)的形式。\n		//创建一个长度适宜的byte数组\n		byte[] byteZip = new byte[(sb.length()+7)/8];//绝对够用\n		int count = 0;\n		//遍历 每八个字符一循环\n		for (int i = 0; i < sb.length(); i+=8) {\n			//如果是最后一次循环，字符串长度很可能不是八的整数倍，从而不足八位，额外处理。\n			if(count==byteZip.length-1) {\n				byteZip[count] = (byte)Integer.parseInt(sb.substring(i),2);\n				break;\n			}\n			//如果不是最后一次循环 就每八个字符生成一个byte\n			byteZip[count++] = (byte)Integer.parseInt(sb.substring(i,i+8),2);\n		}\n		//返回生成byte[] 此时已经是压缩完毕的byte数组，字节远小于压缩前。\n		return byteZip;\n	}\n```\n\n文件解压专用，将文件转换成byte数组，再将压缩后的byte转换成文件\n```java\n	/**\n	 * 传入压缩后的byte[]和生成的huffman编码表生成指定路径下的压缩文件\n	 * @param bytesZip\n	 * @return void\n	 * @throws IOException \n	 */\n	private static void bytesZipDstFile(byte[] bytesZip,Map<Byte,String> huffmanCodes,String dstFile) throws IOException {\n		//读取文件\n		FileOutputStream fos = new FileOutputStream(dstFile);\n		//加缓冲流\n		BufferedOutputStream bos = new BufferedOutputStream(fos);\n		//转对象流\n		ObjectOutputStream oos = new ObjectOutputStream(bos);\n		//将压缩后的数据写出到byte数组\n		oos.writeObject(bytesZip);\n		//刷新\n		oos.flush();\n		//将赫夫曼编码表也写出到指定路径下\n		oos.writeObject(huffmanCodes);\n		//刷新\n		oos.flush();\n		//关闭流\n		oos.close();\n		\n		bos.close();\n	}\n	\n	/**\n	 * 传入文件路径返回此文件的byte[] 压缩调用\n	 * @param srcFile\n	 * @return byte[]\n	 * @throws IOException\n	 */\n	private static byte[] srcFileBytes(String srcFile) throws IOException {\n        \n        FileInputStream fis = new FileInputStream(srcFile);\n\n        BufferedInputStream bis = new BufferedInputStream(fis);\n        //创建适宜长度数组\n        byte[] bytes = new byte[bis.available()];\n        //读取目标路径文件到byte数组\n        bis.read(bytes);\n        //关闭流\n        bis.close();\n        \n        return bytes;\n	}\n```\n\n - 整合代码\n压缩字节数组byte[]\n```java\n	/**\n	 * 数据压缩 传入需要解压的字节数组\n	 * @param bytes\n	 * @return byte[] 压缩并返回压缩后的字节数组\n	 */\n	public static byte[] huffmanZip(byte[] bytes) {\n		//统计每个字符出现的次数返回list\n		List<Note> listNote = getNotes(bytes);\n		//生成对应Huffman树返回根结点\n		Note note = huffmanTree(listNote);\n		//根据Huffman树生成对应Huffman编码表\n		Map<Byte,String> huffmanCodes = getCodes(note);\n		//压缩并返回\n		return zip(bytes,huffmanCodes);\n	}\n```\n压缩指定路径文件\n\n```java\n	/**\n	 * 文件压缩\n	 * @param srcFile 目标文件\n	 * @param zipFile 压缩文件\n	 * @throws IOException\n	 */\n	public static void zipFile(String srcFile,String zipFile) throws IOException {\n		//读入目标文件返回byte[]\n		byte[] bytes = srcFileBytes(srcFile);\n		//传入压缩前的byte[]返回压缩后的byte[]\n		byte[] bytesZip = huffmanZip(bytes);\n		//传入压缩后的byte[]和生成的huffman编码表生成指定路径下的压缩文件\n		bytesZipDstFile(bytesZip,huffmanCodes,zipFile);\n	}\n```\n## 测试\n压缩G盘Huffman目录下的一个文本\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200918203034262.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n测试代码\n```java\n	//压缩测试\n	@Test\n	public void test1() {\n		String srcFile = \"G://Huffman/Java.txt\";\n		String zipFile = \"G://Huffman/爪哇.zip\";\n		try {\n			zipFile(srcFile,zipFile);\n			System.out.println(\"压缩成功\");\n		} catch (IOException e) {\n			e.printStackTrace();\n		}\n	}\n```\n测试结果\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200918203140541.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n大小对比\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200918203349321.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n \n\n↓↓↓↓↓↓ 基于赫夫曼编码的数据压缩部分完结，下面是解压部分链接 ↓↓↓↓↓↓\n\n[数据结构——赫夫曼编码实现数据压缩与解压原理剖析，附源码（下）](https://blog.csdn.net/weixin_46002478/article/details/108672585)\n\n- 源码百度网盘链接\n [链接：https://pan.baidu.com/s/1B5RcQ2orBCJR7IZL2X36NA \n提取码：ox28](https://pan.baidu.com/s/1B5RcQ2orBCJR7IZL2X36NA)\n- 源码Gitee码云仓库链接\n[https://gitee.com/superb12580/huffman-code-zip.git](https://gitee.com/superb12580/huffman-code-zip.git)\n- 源码线上整理CSDN链接\n[https://blog.csdn.net/weixin_46002478/article/details/108672847](https://blog.csdn.net/weixin_46002478/article/details/108672847)\n', '2021-03-22 21:23:42', '2', null, '', '0');
INSERT INTO `essay` VALUES ('33', '数据结构——HuffmanCode实现数据压缩与解压源代码', '1,3', '## 源代码\n```java\npackage org.superb.huffman;\n\nimport java.io.BufferedInputStream;\nimport java.io.BufferedOutputStream;\nimport java.io.FileInputStream;\nimport java.io.FileOutputStream;\nimport java.io.IOException;\nimport java.io.ObjectInputStream;\nimport java.io.ObjectOutputStream;\nimport java.util.ArrayList;\nimport java.util.Collections;\nimport java.util.HashMap;\nimport java.util.List;\nimport java.util.Map;\nimport java.util.Map.Entry;\n\n/**\n * @author Superb\n * @date 2020/9/18 - 20:41\n * @E_mail superb12580@163.com\n */\npublic class HuffmanCode {\n    public static void main(String[] args) {\n\n    }\n\n    /**\n     * 文件压缩\n     * @param srcFile 目标文件\n     * @param zipFile 压缩文件\n     * @throws IOException\n     */\n    public static void zipFile(String srcFile, String zipFile) throws IOException {\n        //读入目标文件返回byte[]\n        byte[] bytes = srcFileBytes(srcFile);\n        //传入压缩前的byte[]返回压缩后的byte[]\n        byte[] bytesZip = huffmanZip(bytes);\n        //传入压缩后的byte[]和生成的huffman编码表生成指定路径下的压缩文件\n        bytesZipDstFile(bytesZip, huffmanCodes, zipFile);\n    }\n    \n    /**\n     * 文件解压\n     * @param srcFile 解压路径\n     * @param dstFile 压缩包路径\n     * @throws IOException\n     * @throws ClassNotFoundException\n     */\n    public static void decodFile(String srcFile, String dstFile) throws IOException, ClassNotFoundException {\n        FileInputStream fis = new FileInputStream(dstFile);\n\n        BufferedInputStream bis = new BufferedInputStream(fis);\n\n        ObjectInputStream ois = new ObjectInputStream(bis);\n\n        Object objBytes = ois.readObject();\n\n        byte[] bytesZip = (byte[]) objBytes;\n\n        Object objHuffmanCodes = ois.readObject();\n\n        Map<Byte, String> huffmanCodes = (Map<Byte, String>) objHuffmanCodes;\n\n        byte[] bytes = huffmanDecod(bytesZip, huffmanCodes);\n\n        FileOutputStream fos = new FileOutputStream(srcFile);\n\n        BufferedOutputStream bos = new BufferedOutputStream(fos);\n\n        bos.write(bytes);\n\n        ois.close();\n\n        bis.close();\n\n        bos.close();\n\n    }\n    \n    /**\n     * 数据压缩\n     * @param bytes\n     * @return byte[]\n     */\n    public static byte[] huffmanZip(byte[] bytes) {\n        //统计每个字符出现的次数返回list\n        List<Note> listNote = getNotes(bytes);\n        //生成对应Huffman树返回根结点\n        Note note = huffmanTree(listNote);\n        //根据Huffman树生成对应Huffman编码表\n        Map<Byte, String> huffmanCodes = getCodes(note);\n        //压缩并返回\n        return zip(bytes, huffmanCodes);\n    }\n\n    /**\n     * 数据解压\n     * @param bytes\n     * @param huffmanCodes\n     * @return\n     */\n    public static byte[] huffmanDecod(byte[] bytes, Map<Byte, String> huffmanCodes) {\n        StringBuilder sb = new StringBuilder();\n        //压缩后的byte[]转成二进制字符串\n        for (int i = 0; i < bytes.length; i++) {\n            sb.append(byteToBitString(i != bytes.length - 1, bytes[i]));\n        }\n        //反转Map表\n        Map<String, Byte> huffmanCodex = new HashMap<>();\n        for (Entry<Byte, String> entry : huffmanCodes.entrySet()) {\n            huffmanCodex.put(entry.getValue(), entry.getKey());\n        }\n        List<Byte> listByte = new ArrayList<>();\n        int flag;\n        for (int i = 0; i < sb.length(); ) {\n            flag = 1;\n            while (true) {\n                if (huffmanCodex.get(sb.substring(i, i + flag)) != null) {\n                    listByte.add(huffmanCodex.get(sb.substring(i, i + flag)));\n                    break;\n                } else {\n                    flag++;\n                }\n            }\n            i += flag;\n        }\n        byte[] by = new byte[listByte.size()];\n        for (int i = 0; i < by.length; i++) {\n            by[i] = listByte.get(i);\n        }\n        return by;\n    }\n    \n\n\n    /****************************以下内容为工具方法**********************************/\n    \n\n    /**\n     * 传入压缩后的byte[]和生成的huffman编码表生成指定路径下的压缩文件\n     * @param bytesZip\n     * @return void\n     * @throws IOException\n     */\n    private static void bytesZipDstFile(byte[] bytesZip,Map<Byte,String> huffmanCodes,String dstFile) throws IOException {\n        //读取文件\n        FileOutputStream fos = new FileOutputStream(dstFile);\n        //加缓冲流\n        BufferedOutputStream bos = new BufferedOutputStream(fos);\n        //转对象流\n        ObjectOutputStream oos = new ObjectOutputStream(bos);\n        //将压缩后的数据写出到byte数组\n        oos.writeObject(bytesZip);\n        //刷新\n        oos.flush();\n        //将赫夫曼编码表也写出到指定路径下\n        oos.writeObject(huffmanCodes);\n        //刷新\n        oos.flush();\n        //关闭流\n        oos.close();\n        bos.close();\n    }\n\n    /**\n     * 传入文件路径返回此文件的byte[] 压缩调用\n     * @param srcFile\n     * @return byte[]\n     * @throws IOException\n     */\n    private static byte[] srcFileBytes(String srcFile) throws IOException {\n\n        FileInputStream fis = new FileInputStream(srcFile);\n\n        BufferedInputStream bis = new BufferedInputStream(fis);\n        //创建适宜长度数组\n        byte[] bytes = new byte[bis.available()];\n        //读取目标路径文件到byte数组\n        bis.read(bytes);\n        //关闭流\n        bis.close();\n\n        return bytes;\n    }\n', '2021-03-23 16:52:19', '6', null, '', '0');
INSERT INTO `essay` VALUES ('34', 'Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.22.2:test SSM整合测试报错', '3,2,4', 'Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.22.2:test (default-test) on project SSM: There are test failures.\n\nPlease refer to E:\\IntelliJ IDEA 2020.1\\workspace\\SSM\\target\\surefire-reports for the individual test results.\nPlease refer to dump files (if any exist) [date].dump, [date]-jvmRun[N].dump and [date].dumpstream.\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916205913550.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n**此错误困扰我整个暑期，不管怎么配，网上教程如何搜，都匹配不了我的错误（首先出现这种报错面特别广，并不能锁定到底是因为什么才导致报错的，所以一旦出现此错误，一定要仔细检查自己的配置是否有误，一定一定。）今天终于痛击异常，成功解决，瞬间有种畅快淋漓的感觉。**\n\n - 解决\n基于Maven我一直引入的test依赖都是4.11版本，正是因为这个细节导致我测试报错困扰我好久。\n```xml\n<dependency>\n	<groupId>junit</groupId>\n    <artifactId>junit</artifactId>\n    <version>4.11</version>\n    <scope>test</scope>\n</dependency>\n```\n**将test依赖版本调至4.12及以上即可！！！**\n```xml\n<dependency>\n	<groupId>junit</groupId>\n    <artifactId>junit</artifactId>\n    <version>4.13</version>\n    <scope>test</scope>\n</dependency>\n```\n成功解决\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916210026962.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)', '2021-03-25 22:06:40', '7', null, '', '0');
INSERT INTO `essay` VALUES ('35', 'Git连接远程仓库并上传部署项目——Gitee码云', '3,4', '## 前言\n项目在本地基于各种版本原因维护起来十分繁琐，我们基于Git进行版本控制，并远程连接到云仓库，对我们的项目维护起来就十分方便，下面就分享一个本地项目上传到码云和克隆码云上的项目到本地的笔记。\n\n## 前期准备\n\n 1. 环境搭建\n	首先安装Git，可以去[Git官网](https://git-scm.com)，但速度极慢，这时我们可以去[淘宝镜像下载](http://npm.taobao.org/mirrors/git-for-windows)\n	![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916094743308.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n选择对应版本无脑下一步进行安装即可。\n 2. 环境配置\n 3. 常用命令\n*1）、cd +目录名 : 跳转目录。\n2）、cd . . ：回退到上一个目录，直接cd进入默认目录\n3）、pwd : 显示当前所在目录全路径。\n4）、ls(ll):  显示当前目录中的所有文件，ll列出的内容更为详细。\n5）、touch + 文件名 : 新建一个文件。\n6）、rm + 文件名 :  删除一个文件。\n7）、mkdir + 文件目录名 :  新建一个目录,就是新建一个文件夹。\n8）、rm -r  + 文件目录名:  删除一个文件夹。\nrm -rf / 删除电脑中全部文件！（不常用）\n9）、mv + 移动文件名称 + 移动路径：这样写,必须保证文件和目标文件夹在同一目录下。\n10）、reset 重新初始化终端/清屏。\n11）、clear 清屏。\n12）、history 查看命令历史。\n13）、help 帮助。\n14）、exit 退出。\n15）、#注释*\n 5. 设置本机绑定SSH公钥\n	安装Git后首先要做的事情是设置你的用户名称和e-mail地址。这是非常重要的，因为每次Git提交都会使用该信息。它被永远的嵌入到了你的提交中：\n\ngit config --global user.name \"Superb\"  #你的名称\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2020091609592635.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\ngit config --global user.email  \"superb12580@163.com\"  #你的邮箱\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916100019821.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n添加SSH公钥\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916100346976.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n鼠标右键进入Git Bash\n键入ssh-keygen -t rsa 无脑回车即可生成\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916100631593.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n生成的公钥一般在C盘用户目录下\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916100845659.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n点击pub版打开，复制全部粘贴到码云SSH公钥上即可。到此，前期工作准备完毕。\n## 本地项目部署到码云\n我所采用的是万能法，简单粗暴。\n原理是现在码云端创建一个仓库，然后在本地克隆，把克隆的文件全部拷到你所在的项目中去（IDEA），让后直接三部曲带走。\n						1 git add .\n						2 git commit -m \"这里加项目描述\"\n						3 git push\n 如此操作，刷新码云仓库，大功告成！\n 目的在于绕过上传需要的路径匹配，逆向思维反其道而行之。先从远程码云仓库下载，此时已经建立连接的路径匹配，之间拷贝到需要上传的idea项目中去，然后就能直接上传了。\n \n\n \n\n **具体操作**\n		\n 1. 在码云上新建仓库\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916103551947.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n2.进入仓库复制链接\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916103812180.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n3.在本地创建临时文件夹接收\n键入命令 git clone [链接地址]\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916103937217.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n4.复制所有文件至你的项目中\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916104056116.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n复制到项目中\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916104228979.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n最后一步，打开IDEA进行上传部署。\n在Terminal中依次键入命令\n				git  add .\n				git commit -m \"SSM1.0第一次commit\"\n				git push\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916105008612.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n\n\n刷新码云仓库，已上传成功。\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200916104944537.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n', '2021-03-31 15:30:35', '35', null, '', '0');
INSERT INTO `essay` VALUES ('36', 'Mybatis基于XML方式的一对多、多对一关系映射（下）', '3,2,4', '## 前言\n许多人对Myabtis持久层框架的一对多、多对一映射很模糊，本篇幅将通讲一下它们的映射关系。\n\n## 数据库设计\n其中d_id为外键，连接部门表dept_id。\n![Employee员工表](https://img-blog.csdnimg.cn/20200911194334968.png#pic_center)\n![Department部门表](https://img-blog.csdnimg.cn/20200911194416203.png#pic_center)\n## 多对一\n示例：多个员工对应一个部门，且每个员工隶属一个部门。\n**站在员工角度而言，其就是一个典型的多对一关系**\n\n \n - **员工Bean(Employee)**\n\n```java\npackage com.mybatis.bean;\n/**\n * @author Superb\n * @date 2020/9/11 - 15:11\n * @E_mail superb12580@163.com\n */\npublic class Employee {\n    private Integer empId;\n\n    private String empName;\n	//每个员工的部门类，典型多对一映射\n	private Department dept;\n	\n    //get()set()以及toString方法已省略\n}\n```\n - **部门Bean(Department)**\n*对于一对多的映射，即一个部门对应多个员工，则应在在部门类中定义一个员工集合属性*\n```java\npackage com.mybatis.bean;\n\nimport java.util.List;\n/**\n - @author Superb\n - @date 2020/9/11 - 15:13\n - @E_mail superb12580@163.com\n */\npublic class Department {\n    private Integer deptId;\n\n    private String deptName;\n    \n	//get()set()以及toString方法已省略\n}\n```\n## 使用连接查询方式（两表连接查询）\n ## 耦合度高 不推荐\n * 员工接口Mapper(EmployeeMapper)\n\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Employee;\nimport org.apache.ibatis.annotations.*;\n\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:09\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface EmployeeMapper {\n\n    /**\n     * 根据员工id查询单个员工并附带部门信息\n     * @param emp_id\n     * @return\n     */\n    Employee getEmp(int emp_id);\n\n    /**\n     * 查询所有员工并附带每个员工的部门信息\n     * @return\n     */\n    List<Employee> getEmps();\n}\n\n```\n\n - 员工XML(Employee.xml)\n \n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\" >\n<mapper namespace=\"com.mybatis.mapper.EmployeeMapper\">\n    <resultMap id=\"empMap\" type=\"com.mybatis.bean.Employee\">\n        <id column=\"emp_id\" property=\"empId\"></id>\n        <result column=\"emp_name\" property=\"empName\"></result>\n        <!--级联属性映射员工表里的部门属性private Department dept-->\n        <association column=\"d_id\" property=\"dept\" javaType=\"com.mybatis.bean.Department\">\n            <id column=\"dept_id\" property=\"deptId\"></id>\n            <result column=\"dept_name\" property=\"deptName\"></result>\n        </association>\n    </resultMap>\n\n    <sql id=\"empSql\">\n        e.emp_id,e.emp_name,d.dept_id,d.dept_name\n    </sql>\n\n    <select id=\"getEmps\" resultMap=\"empMap\">\n        select\n        <include refid=\"empSql\"></include>\n        from emp e left join dept d on e.d_id = d.dept_id\n    </select>\n\n    <select id=\"getEmp\" parameterType=\"int\" resultMap=\"empMap\">\n        select\n        <include refid=\"empSql\"></include>\n        from emp e left join dept d on e.d_id = d.dept_id\n        where e.emp_id = #{emp_id}\n    </select>\n</mapper>\n```\n\n - 测试实例\n\n```java\n	/**\n     * 查询一号员工并附带其部门信息\n     */\n    @Test\n    public void test1() {\n        Employee emp = employeeMapper.getEmp(1);\n        System.out.println(emp);\n    }\n\n    /**\n     * 查询所有员工并附带其部门信息\n     */\n    @Test\n    public void test2() {\n        List<Employee> emps = employeeMapper.getEmps();\n        for (Employee emp : emps){\n            System.out.println(emp);\n        }\n    }\n```\n\n - 测试结果\n*查询一号员工并填充部门信息*\n```java\nEmployee{empId=1, empName=\'卢本伟\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\n```\n*查询所有员工并填充部门信息*\n```java\nEmployee{empId=1, empName=\'卢本伟\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=2, empName=\'大司马\', dept=Department{deptId=2, deptName=\'销售部\'}}\nEmployee{empId=3, empName=\'Uzi\', dept=Department{deptId=1, deptName=\'人事部\'}}\nEmployee{empId=4, empName=\'PDD\', dept=Department{deptId=2, deptName=\'销售部\'}}\nEmployee{empId=5, empName=\'茄子\', dept=Department{deptId=3, deptName=\'后勤部\'}}\nEmployee{empId=6, empName=\'药水哥\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=7, empName=\'旭旭宝宝\', dept=Department{deptId=4, deptName=\'市场部\'}}\nEmployee{empId=8, empName=\'小智\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=9, empName=\'化腾\', dept=Department{deptId=4, deptName=\'市场部\'}}\n```\n## 使用SQL语句嵌套方式（部门和员工单独查询之后整合）\n## 耦合度低 推荐使用\n - JavaBean已在上面给出，两种嵌套方式共用\n - 员工接口Mapper(EmployeeMapper)\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Employee;\nimport org.apache.ibatis.annotations.*;\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:09\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface EmployeeMapper {\n    /**\n     * 根据员工id查询单个员工并附带部门信息\n     * @param emp_id\n     * @return\n     */\n    Employee getEmp(int emp_id);\n    /**\n     * 查询所有员工并附带每个员工的部门信息\n     * @return\n     */\n    List<Employee> getEmps();\n}\n\n```\n- 部门接口Mapper(DeptmentMapper)\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Department;\nimport org.apache.ibatis.annotations.*;\n/**\n * @author Superb\n * @date 2020/9/11 - 15:17\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface DepartmentMapper {\n    /**\n     * 根据员工id查询单个部门信息\n     * @param dept_id\n     * @return\n     */\n    Department getDept(int dept_id);\n}\n\n```\n\n * 员工XML(Employee.xml)\n\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\" >\n<mapper namespace=\"com.mybatis.mapper.EmployeeMapper\">\n    <resultMap id=\"empMap\" type=\"com.mybatis.bean.Employee\">\n        <id column=\"emp_id\" property=\"empId\"></id>\n        <result column=\"emp_name\" property=\"empName\"></result>\n        <!--级联属性映射员工表里的部门属性private Department dept-->\n        <association column=\"d_id\" property=\"dept\" javaType=\"com.mybatis.bean.Department\" select=\"com.mybatis.mapper.DepartmentMapper.getDept\">\n        <!--select属性指定连接查询的方法地址-->\n        </association>\n    </resultMap>\n    <sql id=\"empSql\">\n        emp_id,emp_name,d_id\n    </sql>\n    <select id=\"getEmps\" resultMap=\"empMap\">\n        select\n        <include refid=\"empSql\"></include>\n        from emp\n    </select>\n    <select id=\"getEmp\" parameterType=\"int\" resultMap=\"empMap\">\n        select\n        <include refid=\"empSql\"></include>\n        from emp where emp_id = #{emp_id}\n    </select>\n\n    <!--JavaType和ofType都是用来指定对象类型的\n\n    JavaType是用来指定部门类中员工集合属性的类型List\n\n    ofType指定的是映射到list集合属性中员工Employee的类型，配合collection使用。-->\n\n    <!--collection标签用于映射一对多关系中的属性，通常是集合-->\n    <!--association标签用于映射一对一、多对一关系中的属性，例：private Department dept-->\n</mapper>\n```\n * 部门XML(Department.xml)\n\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\" >\n<mapper namespace=\"com.mybatis.mapper.DepartmentMapper\">\n    <resultMap id=\"deptMap\" type=\"com.mybatis.bean.Department\">\n        <id column=\"dept_id\" property=\"deptId\"></id>\n        <result column=\"dept_name\" property=\"deptName\"></result>\n    </resultMap>\n\n    <select id=\"getDept\" resultMap=\"deptMap\" parameterType=\"int\">\n        select * from dept where dept_id = #{dept_id}\n    </select>\n</mapper>\n```\n- 测试实例\n\n```java\n	/**\n     * 查询一号员工并附带其部门信息\n     */\n    @Test\n    public void test1() {\n        Employee emp = employeeMapper.getEmp(1);\n        System.out.println(emp);\n    }\n\n    /**\n     * 查询所有员工并附带其部门信息\n     */\n    @Test\n    public void test2() {\n        List<Employee> emps = employeeMapper.getEmps();\n        for (Employee emp : emps){\n            System.out.println(emp);\n        }\n    }\n```\n\n - 测试结果\n*查询一号员工并填充部门信息*\n```java\nEmployee{empId=1, empName=\'卢本伟\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\n```\n*查询所有员工并填充部门信息*\n\n```java\nEmployee{empId=1, empName=\'卢本伟\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=2, empName=\'大司马\', dept=Department{deptId=2, deptName=\'销售部\'}}\nEmployee{empId=3, empName=\'Uzi\', dept=Department{deptId=1, deptName=\'人事部\'}}\nEmployee{empId=4, empName=\'PDD\', dept=Department{deptId=2, deptName=\'销售部\'}}\nEmployee{empId=5, empName=\'茄子\', dept=Department{deptId=3, deptName=\'后勤部\'}}\nEmployee{empId=6, empName=\'药水哥\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=7, empName=\'旭旭宝宝\', dept=Department{deptId=4, deptName=\'市场部\'}}\nEmployee{empId=8, empName=\'小智\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=9, empName=\'化腾\', dept=Department{deptId=4, deptName=\'市场部\'}}\n```\n本篇描述了xml方式的多对一关系，其中多对一关系也有两种嵌套方式，一种是大家平常所熟悉的两表连接查询，通过ResultMap映射，还有一种就是sql语句分离查询，部门和员工分别查询，然后通过ResultMap映射。上篇内容整合Mybatis基于XML方式的一对多关系映射。\n[Mybatis基于XML方式的一对多、多对一关系映射（上）](https://blog.csdn.net/weixin_46002478/article/details/108545775)\n\n[(Spring-SpringMVC-MyBatis)超详细SSM整合环境搭建，看这篇就够了](https://blog.csdn.net/weixin_46002478/article/details/108643847)', '2021-03-31 18:59:15', '35', null, '', '0');
INSERT INTO `essay` VALUES ('37', 'Caught exception while allowing TestExecutionListener异常日志', '2,3', '严重: Caught exception while allowing TestExecutionListener [org.springframework.test.context.support.DependencyInjectionTestExecutionListener@5315b42e] to prepare test instance [com.atguigu.test.MapperTest@7d94beb9]\norg.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name \'com.atguigu.test.MapperTest\': Unsatisfied dependency expressed through field \'employeeMapper\'; nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type \'com.atguigu.dao.EmployeeMapper\' available: expected at least 1 bean which qualifies as autowire candidate. Dependency annotations: {@org.springframework.beans.factory.annotation.Autowired(required=true)}\n	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredFieldElement.inject(AutowiredAnnotationBeanPostProcessor.java:588)\n	at org.springframework.beans.factory.annotation.InjectionMetadata.inject(InjectionMetadata.java:88)\n	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:366)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.populateBean(AbstractAutowireCapableBeanFactory.java:1264)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.autowireBeanProperties(AbstractAutowireCapableBeanFactory.java:386)\n	at org.springframework.test.context.support.DependencyInjectionTestExecutionListener.injectDependencies(DependencyInjectionTestExecutionListener.java:118)\n	at org.springframework.test.context.support.DependencyInjectionTestExecutionListener.prepareTestInstance(DependencyInjectionTestExecutionListener.java:83)\n	at org.springframework.test.context.TestContextManager.prepareTestInstance(TestContextManager.java:230)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.createTest(SpringJUnit4ClassRunner.java:228)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner$1.runReflectiveCall(SpringJUnit4ClassRunner.java:287)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.methodBlock(SpringJUnit4ClassRunner.java:289)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.runChild(SpringJUnit4ClassRunner.java:247)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.runChild(SpringJUnit4ClassRunner.java:94)\n	at org.junit.runners.ParentRunner$4.run(ParentRunner.java:331)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:79)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:329)\n	at org.junit.runners.ParentRunner.access$100(ParentRunner.java:66)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:293)\n	at org.springframework.test.context.junit4.statements.RunBeforeTestClassCallbacks.evaluate(RunBeforeTestClassCallbacks.java:61)\n	at org.springframework.test.context.junit4.statements.RunAfterTestClassCallbacks.evaluate(RunAfterTestClassCallbacks.java:70)\n	at org.junit.runners.ParentRunner$3.evaluate(ParentRunner.java:306)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:413)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.run(SpringJUnit4ClassRunner.java:191)\n	at org.junit.runner.JUnitCore.run(JUnitCore.java:137)\n	at com.intellij.junit4.JUnit4IdeaTestRunner.startRunnerWithArgs(JUnit4IdeaTestRunner.java:68)\n	at com.intellij.rt.junit.IdeaTestRunner$Repeater.startRunnerWithArgs(IdeaTestRunner.java:33)\n	at com.intellij.rt.junit.JUnitStarter.prepareStreamsAndStart(JUnitStarter.java:230)\n	at com.intellij.rt.junit.JUnitStarter.main(JUnitStarter.java:58)\nCaused by: org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type \'com.atguigu.dao.EmployeeMapper\' available: expected at least 1 bean which qualifies as autowire candidate. Dependency annotations: {@org.springframework.beans.factory.annotation.Autowired(required=true)}\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.raiseNoMatchingBeanFound(DefaultListableBeanFactory.java:1486)\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.doResolveDependency(DefaultListableBeanFactory.java:1104)\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.resolveDependency(DefaultListableBeanFactory.java:1066)\n	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredFieldElement.inject(AutowiredAnnotationBeanPostProcessor.java:585)\n	... 28 more\n\n\norg.springframework.beans.factory.UnsatisfiedDependencyException: Error creating bean with name \'com.atguigu.test.MapperTest\': Unsatisfied dependency expressed through field \'employeeMapper\'; nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type \'com.atguigu.dao.EmployeeMapper\' available: expected at least 1 bean which qualifies as autowire candidate. Dependency annotations: {@org.springframework.beans.factory.annotation.Autowired(required=true)}\n\n	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredFieldElement.inject(AutowiredAnnotationBeanPostProcessor.java:588)\n	at org.springframework.beans.factory.annotation.InjectionMetadata.inject(InjectionMetadata.java:88)\n	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:366)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.populateBean(AbstractAutowireCapableBeanFactory.java:1264)\n	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.autowireBeanProperties(AbstractAutowireCapableBeanFactory.java:386)\n	at org.springframework.test.context.support.DependencyInjectionTestExecutionListener.injectDependencies(DependencyInjectionTestExecutionListener.java:118)\n	at org.springframework.test.context.support.DependencyInjectionTestExecutionListener.prepareTestInstance(DependencyInjectionTestExecutionListener.java:83)\n	at org.springframework.test.context.TestContextManager.prepareTestInstance(TestContextManager.java:230)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.createTest(SpringJUnit4ClassRunner.java:228)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner$1.runReflectiveCall(SpringJUnit4ClassRunner.java:287)\n	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.methodBlock(SpringJUnit4ClassRunner.java:289)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.runChild(SpringJUnit4ClassRunner.java:247)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.runChild(SpringJUnit4ClassRunner.java:94)\n	at org.junit.runners.ParentRunner$4.run(ParentRunner.java:331)\n	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:79)\n	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:329)\n	at org.junit.runners.ParentRunner.access$100(ParentRunner.java:66)\n	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:293)\n	at org.springframework.test.context.junit4.statements.RunBeforeTestClassCallbacks.evaluate(RunBeforeTestClassCallbacks.java:61)\n	at org.springframework.test.context.junit4.statements.RunAfterTestClassCallbacks.evaluate(RunAfterTestClassCallbacks.java:70)\n	at org.junit.runners.ParentRunner$3.evaluate(ParentRunner.java:306)\n	at org.junit.runners.ParentRunner.run(ParentRunner.java:413)\n	at org.springframework.test.context.junit4.SpringJUnit4ClassRunner.run(SpringJUnit4ClassRunner.java:191)\n	at org.junit.runner.JUnitCore.run(JUnitCore.java:137)\n	at com.intellij.junit4.JUnit4IdeaTestRunner.startRunnerWithArgs(JUnit4IdeaTestRunner.java:68)\n	at com.intellij.rt.junit.IdeaTestRunner$Repeater.startRunnerWithArgs(IdeaTestRunner.java:33)\n	at com.intellij.rt.junit.JUnitStarter.prepareStreamsAndStart(JUnitStarter.java:230)\n	at com.intellij.rt.junit.JUnitStarter.main(JUnitStarter.java:58)\nCaused by: org.springframework.beans.factory.NoSuchBeanDefinitionException: No qualifying bean of type \'com.atguigu.dao.EmployeeMapper\' available: expected at least 1 bean which qualifies as autowire candidate. Dependency annotations: {@org.springframework.beans.factory.annotation.Autowired(required=true)}\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.raiseNoMatchingBeanFound(DefaultListableBeanFactory.java:1486)\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.doResolveDependency(DefaultListableBeanFactory.java:1104)\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.resolveDependency(DefaultListableBeanFactory.java:1066)\n	at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor$AutowiredFieldElement.inject(AutowiredAnnotationBeanPostProcessor.java:585)\n	... 28 more\n\n\nProcess finished with exit code -1\n**\n\n## 解决：配置扫描器 查看是否将MyBatis接口的实现加入到Spring容器中\n\n**\n\n```\n<bean class=\"org.mybatis.spring.mapper.MapperScannerConfigurer\">\n        <property name=\"basePackage\" value=\"Package...\"/>\n</bean>\n```\n', '2021-04-01 11:58:02', '35', null, '', '0');
INSERT INTO `essay` VALUES ('38', 'Mybatis基于注解方式的一对多、多对一关系映射', '2,3,4', '## 前言\n许多人对Myabtis持久层框架的一对多、多对一映射很模糊，本篇幅将通讲一下它们的映射关系。对谁就以谁为中心，例如：一对多中，对多，那么就是部门对员工，多对一，对一个，就是多个员工对一个部门。\n## 数据库设计\n其中d_id为外键，连接部门表dept_id。\n![Employee员工表](https://img-blog.csdnimg.cn/20200911194334968.png#pic_center)\n![Department部门表](https://img-blog.csdnimg.cn/20200911194416203.png#pic_center)\n\n## 多对一\n示例：多个员工有且仅有一个部门，一个部门则是对应多个员工。\n**站在员工角度而言，其就是一个典型的多对一关系**\n\n \n - **员工Bean(Employee)**\n\n```java\npackage com.mybatis.bean;\n/**\n * @author Superb\n * @date 2020/9/11 - 15:11\n * @E_mail superb12580@163.com\n */\npublic class Employee {\n    private Integer empId;\n\n    private String empName;\n    //员工部门（每个员工有且仅有一个部门，典型的多对一）\n    private Department dept;\n\n	//set()get()及toString方法已省略\n}\n```\n - **部门Bean(Department)**\n\n```java\npackage com.mybatis.bean;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:13\n * @E_mail superb12580@163.com\n */\npublic class Department {\n    private Integer deptId;\n    \n    private String deptName;\n\n    //set()get()及toString方法已省略\n}\n```\n\n * 员工接口Mapper(EmployeeMapper)\n*查询单个员工并连接部门表Department查询其所在部门信息\n通过@Results进行字段映射，column属性代表数据库字段，property属性代表JavaBean字段，特别的：如d_id映射dept（员工类部门属性），通过@One注解（一对一，多对一）进行关联查询，其中select属性指向DepartmentMapper中查询的方法名，方法参数为d_id的值，方法返回Department对象赋值给dept属性，从而达到查询单个员工并填充其部门信息的目的，即为多对一关系映射。*\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Employee;\nimport org.apache.ibatis.annotations.*;\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:09\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface EmployeeMapper {\n    /**\n     * 查询所有员工并附带每个员工所在部门\n     * @return\n     */\n    @Results(id = \"empMap\",value = {\n            @Result(column = \"emp_id\",property = \"empId\",id = true),\n            @Result(column = \"emp_name\",property = \"empName\"),\n            @Result(column = \"d_id\",property = \"dept\",one = @One(select = \"com.mybatis.mapper.DepartmentMapper.getDept\"))\n    })\n    @Select(\"select * from tbl_emp\")\n    List<Employee> getEmps();\n    \n    /**\n     * 查询单个员工并且附带其所在部门部门\n     * @param id\n     * @return\n     */\n    @ResultMap(\"empMap\")//引入id为”empMap“的resultMap\n    @Select(\"select * from tbl_emp where emp_id = #{id}\")\n    Employee getEmp(int id);\n}\n```\n\n * 部门接口Mapper(DepartmentMapper)\n普通ResultMap映射\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Department;\nimport org.apache.ibatis.annotations.Mapper;\nimport org.apache.ibatis.annotations.Result;\nimport org.apache.ibatis.annotations.Results;\nimport org.apache.ibatis.annotations.Select;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:17\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface DepartmentMapper {\n	/**\n     * 根据id查询部门，此id为员工表外键\n     */\n    @Results({\n            @Result(id = true,column = \"dept_id\",property = \"deptId\"),\n            @Result(column = \"dept_name\",property = \"deptName\")\n    })\n    @Select(\"select * from tbl_dept where dept_id = #{id}\")\n    Department getDept(int id);\n}\n```\n * 测试实例\n\n```java\n/**\n     * 测试\n     * 查询单个员工的信息并填充部门信息\n     */\n    @Test\n    void test1() {\n    	//查询一号员工卢本伟\n        Employee emp = employeeMapper.getEmp(1);\n        System.out.println(emp);\n    }\n\n    /**\n     * 测试\n     * 查询所有员工的信息并填充部门信息\n     */\n    @Test\n    void test2() {\n    	//查询所有员工\n        List<Employee> emps = employeeMapper.getEmps();\n        for (Employee emp : emps){\n            System.out.println(emp);\n        }\n    }\n```\n\n - 测试结果\n*查询一号员工并填充部门信息*\n```java\nEmployee{empId=1, empName=\'卢本伟\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\n```\n*查询所有员工并填充部门信息*\n```java\nEmployee{empId=1, empName=\'卢本伟\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=2, empName=\'大司马\', dept=Department{deptId=2, deptName=\'销售部\'}}\nEmployee{empId=3, empName=\'Uzi\', dept=Department{deptId=1, deptName=\'人事部\'}}\nEmployee{empId=4, empName=\'PDD\', dept=Department{deptId=2, deptName=\'销售部\'}}\nEmployee{empId=5, empName=\'茄子\', dept=Department{deptId=3, deptName=\'后勤部\'}}\nEmployee{empId=6, empName=\'药水哥\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=7, empName=\'旭旭宝宝\', dept=Department{deptId=4, deptName=\'市场部\'}}\nEmployee{empId=8, empName=\'小智\', dept=Department{deptId=5, deptName=\'吃干饭\'}}\nEmployee{empId=9, empName=\'化腾\', dept=Department{deptId=4, deptName=\'市场部\'}}\n```\n\n## 一对多\n示例：一个部门对应多个员工，且每个员工隶属一个部门。\n**站在部门角度而言，其就是一个典型的一对多关系**\n- **员工Bean(Employee)**\n\n```java\npackage com.mybatis.bean;\n/**\n * @author Superb\n * @date 2020/9/11 - 15:11\n * @E_mail superb12580@163.com\n */\npublic class Employee {\n    private Integer empId;\n\n    private String empName;\n\n    //set()get()及toString方法已省略\n}\n```\n - **部门Bean(Department)**\n\n```java\npackage com.mybatis.bean;\n\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:13\n * @E_mail superb12580@163.com\n */\npublic class Department {\n    private Integer deptId;\n\n    private String deptName;\n\n    private List<Employee> emps;\n\n    //set()get()及toString方法已省略\n}\n```\n\n * 员工接口Mapper(EmployeeMapper)\n\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Employee;\nimport org.apache.ibatis.annotations.*;\n\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:09\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface EmployeeMapper {\n	/**\n     * 根据部门id查询所有此部门的员工集合，此id为部门表dept_id\n     */\n    @Results({\n            @Result(column = \"emp_id\",property = \"empId\",id = true),\n            @Result(column = \"emp_name\",property = \"empName\")\n    })\n    @Select(\"select * from emp where d_id = #{id}\")\n    List<Employee> getEmps(int id);\n\n}\n\n```\n\n * 部门接口Mapper(DepartmentMapper)\n普通ResultMap映射\n*查询单个部门并填充此部门中所有员工信息\n通过@Results进行字段映射，column属性代表数据库字段，property属性代表JavaBean字段，特别的：如dept_id映射emps（当前部门所有员工的集合）属性，通过@Many注解进行关联查询，其中select属性指向EmployeeMapper中查询的方法名，方法参数为dept_id的值，方法返回的List值赋值给emps属性，从而达到查询单个部门并填充其所有部门员工的目的，即为一对多关系映射。*\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Department;\nimport org.apache.ibatis.annotations.*;\n\nimport java.util.List;\n\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:17\n * @E_mail superb12580@163.com\n */\n@Mapper\npublic interface DepartmentMapper {\n    /**\n     * 查询所有部门信息并附带部门下所有员工\n     * @return\n     */\n    @Results(id = \"deptMap\",value = {\n            @Result(id = true,column = \"dept_id\",property = \"deptId\"),\n            @Result(column = \"dept_name\",property = \"deptName\"),\n            @Result(column = \"dept_id\",property = \"emps\",many = @Many(select = \"com.mybatis.mapper.EmployeeMapper.getEmps\"))\n    })\n    @Select(\"select * from dept\")\n    List<Department> getDepts();\n\n\n    /**\n     * 根据id查询单个部门信息并附带部门下所有员工\n     * @param id\n     * @return\n     */\n    @ResultMap(\"deptMap\")\n    @Select(\"select * from dept where dept_id = #{id}\")\n    Department getDept(int id);\n    \n}\n\n```\n * 测试实例\n\n```java\n/**\n     * 测试\n     * 查询单个部门并填充旗下所有员工信息\n     */\n    @Test\n    void test1() {\n        //查询一号部门\n        Department dept = departmentMapper.getDept(1);\n        System.out.println(dept);\n    }\n\n    /**\n     * 测试\n     * 查询所有部门并填充旗下所有员工信息\n     */\n    @Test\n    void test2() {\n        //查询所有部门\n        List<Department> depts = departmentMapper.getDepts();\n        for (Department dept : depts){\n            System.out.println(dept);\n        }\n    }\n```\n\n - 测试结果\n*查询一号员工并填充部门信息*\n```java\nDepartment{deptId=1, deptName=\'人事部\', emps=[Employee{empId=3, empName=\'Uzi\'}]}\n```\n*查询所有员工并填充部门信息*\n```java\nDepartment{deptId=1, deptName=\'人事部\', emps=[Employee{empId=3, empName=\'Uzi\'}]}\nDepartment{deptId=2, deptName=\'销售部\', emps=[Employee{empId=2, empName=\'大司马\'}, Employee{empId=4, empName=\'PDD\'}]}\nDepartment{deptId=3, deptName=\'后勤部\', emps=[Employee{empId=5, empName=\'茄子\'}]}\nDepartment{deptId=4, deptName=\'市场部\', emps=[Employee{empId=7, empName=\'旭旭宝宝\'}, Employee{empId=9, empName=\'化腾\'}]}\nDepartment{deptId=5, deptName=\'吃干饭\', emps=[Employee{empId=1, empName=\'卢本伟\'}, Employee{empId=6, empName=\'药水哥\'}, Employee{empId=8, empName=\'小智\'}]}\n```\n\n\n[(Spring-SpringMVC-MyBatis)超详细SSM整合环境搭建，看这篇就够了](https://blog.csdn.net/weixin_46002478/article/details/108643847)', '2021-04-01 20:32:48', '35', null, '', '0');
INSERT INTO `essay` VALUES ('47', 'Mybatis基于XML方式的一对多、多对一关系映射（上）', '3,1', '## 前言\nSSM（Spring+SpringMVC+MyBatis）框架集由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。常作为数据源较简单的web项目的框架。\n\n```xml\nSpring\n　　Spring就像是整个项目中装配bean的大工厂，在配置文件中可以指定使用特定的参数去调用实体类的构造方法来实例化对象。也可以称之为项目中的粘合剂。\n　　Spring的核心思想是IoC（控制反转），即不再需要程序员去显式地`new`一个对象，而是让Spring框架帮你来完成这一切。\nSpringMVC\n　　SpringMVC在项目中拦截用户请求，它的核心Servlet即DispatcherServlet承担中介或是前台这样的职责，将用户请求通过HandlerMapping去匹配Controller，Controller就是具体对应请求所执行的操作。SpringMVC相当于SSH框架中struts。\nmybatis\n　　mybatis是对jdbc的封装，它让数据库底层操作变的透明。mybatis的操作都是围绕一个sqlSessionFactory实例展开的。mybatis通过配置文件关联到各实体类的Mapper文件，Mapper文件中配置了每个类对数据库所需进行的sql语句映射。在每次与数据库交互时，通过sqlSessionFactory拿到一个sqlSession，再执行sql命令。\n```\n\n> 页面发送请求给控制器，控制器调用业务层处理逻辑，逻辑层向持久层发送请求，持久层与数据库交互，后将结果返回给业务层，业务层将处理逻辑发送给控制器，控制器再调用视图展现数据。\n\n## 前期准备\n\n - 编译器 ：idea\n - JDK ：1.8及以上\n - 项目构建 ： Maven\n - 本次演示MyBatis采用xml方式，这也是官方推荐的方式，如想了解更多或基于注解方式，可参考\n[Mybatis基于注解方式的一对多、多对一关系映射](http://blog.csdn.net/weixin_46002478/article/details/108539325)\n [Mybatis基于XML方式的一对多、多对一关系映射（上）](http://blog.csdn.net/weixin_46002478/article/details/108545775)\n[Mybatis基于XML方式的一对多、多对一关系映射（下）](http://blog.csdn.net/weixin_46002478/article/details/108549768)\n## 整合\n\n 1. 创建基于Maven管理的Web项目。\n 默认本地的JDK环境，这里选择Create from archetype 使用Web骨架，点击Next\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917151636554.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n 2. 给项目起个名字，我这里就叫ssm_superb，点击下一步继续\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917151953916.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 3. 这里一定要使用本地的Maven仓库！！！\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152051667.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 4. 创建完成，发现目录结构并不是完整的（缺少java目录和Resource目录以及测试部分），我们手动补充即可\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152315278.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 5. 选中src，右键之后一次选择new，Directory。\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152605416.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n 6. 不得不说现在的idea真的贴心（手动狗头），我们缺少的目录结构，都在提示中，按住Shift全部选中即可添加所有目录。\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152649381.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 7. 到此，前期工作基本完成\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152924806.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n 1. 首先引入项目所需要的依赖。pom.xml\n\n其中junit包的版本一定要是4.12及以上，切记！[血的教训http://blog.csdn.net/weixin_46002478/article/details/108630322](http://blog.csdn.net/weixin_46002478/article/details/108630322)\n```xml\n<properties>\n        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\n        <maven.compiler.source>1.8</maven.compiler.source>\n        <maven.compiler.target>1.8</maven.compiler.target>\n        <!--统一spring版本-->\n        <spring.verison>5.2.8.RELEASE</spring.verison>\n    </properties>\n\n    <dependencies>\n        <!--spring web核心依赖-->\n        <dependency>\n            <groupId>org.springframework</groupId>\n            <artifactId>spring-webmvc</artifactId>\n            <version>${spring.verison}</version>\n        </dependency>\n        <!--spring jdbc依赖 用于事务配置-->\n        <dependency>\n            <groupId>org.springframework</groupId>\n            <artifactId>spring-jdbc</artifactId>\n            <version>${spring.verison}</version>\n        </dependency>\n        <!--spring 测试包-->\n        <dependency>\n            <groupId>org.springframework</groupId>\n            <artifactId>spring-test</artifactId>\n            <version>${spring.verison}</version>\n        </dependency>\n        <!--mysql 驱动包-->\n        <dependency>\n            <groupId>mysql</groupId>\n            <artifactId>mysql-connector-java</artifactId>\n            <version>5.1.41</version>\n        </dependency>\n        <!--druid 阿里连接池-->\n        <dependency>\n            <groupId>com.alibaba</groupId>\n            <artifactId>druid</artifactId>\n            <version>1.1.21</version>\n        </dependency>\n        <!--mybatis 持久层框架-->\n        <dependency>\n            <groupId>org.mybatis</groupId>\n            <artifactId>mybatis</artifactId>\n            <version>3.5.5</version>\n        </dependency>\n        <!--mybatis spring 整合包 现在都有mybatis提供-->\n        <dependency>\n            <groupId>org.mybatis</groupId>\n            <artifactId>mybatis-spring</artifactId>\n            <version>2.0.5</version>\n        </dependency>\n        <!--json 解析json数据包-->\n        <dependency>\n            <groupId>com.fasterxml.jackson.core</groupId>\n            <artifactId>jackson-databind</artifactId>\n            <version>2.11.2</version>\n        </dependency>\n        <!--junit 测试包-->\n        <dependency>\n            <groupId>junit</groupId>\n            <artifactId>junit</artifactId>\n            <version>4.13</version>\n            <scope>test</scope>\n        </dependency>\n    </dependencies>\n```\n\n 2. 创建Package\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917161429321.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n创建数据库连接配置properties\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917161544800.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 3. 创建Spring以及SpringMVC配置文件\n    application.xml\n    spring-mvc.xml\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917154416984.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n 4. 接下来就是配置各种xml时间\n    web.xml\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<web-app xmlns=\"http://xmlns.jcp.org/xml/ns/javaee\"\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n         xsi:schemaLocation=\"http://xmlns.jcp.org/xml/ns/javaee\nhttp://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd\"\n         version=\"3.1\">\n    <!--  指定错误显示页面-->\n    <error-page>\n        <error-code>404</error-code>\n        <location>/WEB-INF/error/404.jsp</location>\n    </error-page>\n    <error-page>\n        <error-code>500</error-code>\n        <location>/WEB-INF/error/500.jsp</location>\n    </error-page>\n\n    <!--  加载Spring-->\n    <context-param>\n        <param-name>contextConfigLocation</param-name>\n        <param-value>classpath:application.xml</param-value>\n    </context-param>\n    <!--  监听器-->\n    <listener>\n        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>\n    </listener>\n    <!--  前端控制器-->\n    <servlet>\n        <servlet-name>dispatcherServlet</servlet-name>\n        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>\n        <!--    加载spring mvc配置-->\n        <init-param>\n            <param-name>contextConfigLocation</param-name>\n            <param-value>classpath:spring-mvc.xml</param-value>\n        </init-param>\n    </servlet>\n    <!--  /表示拦截所有请求-->\n    <servlet-mapping>\n        <servlet-name>dispatcherServlet</servlet-name>\n        <url-pattern>/</url-pattern>\n    </servlet-mapping>\n\n    <!--  过滤器 字符编码-->\n    <filter>\n        <filter-name>characterEncodingFilter</filter-name>\n        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>\n        <init-param>\n            <param-name>encoding</param-name>\n            <param-value>utf-8</param-value>\n        </init-param>\n        <init-param>\n            <param-name>forceRequestEncoding</param-name>\n            <param-value>true</param-value>\n        </init-param>\n        <init-param>\n            <param-name>forceResponseEncoding</param-name>\n            <param-value>true</param-value>\n        </init-param>\n    </filter>\n    <filter-mapping>\n        <filter-name>characterEncodingFilter</filter-name>\n        <url-pattern>/*</url-pattern>\n    </filter-mapping>\n</web-app>\n```\nspring-mvc.xml\n\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\n       xmlns:context=\"http://www.springframework.org/schema/context\"\n       xmlns:mvc=\"http://www.springframework.org/schema/mvc\"\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd\n                           http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd\n                           http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd\">\n    <!--    开启注解扫描 关闭默认扫描方式-->\n    <context:component-scan base-package=\"com.superb\" use-default-filters=\"false\">\n        <!--        只扫描Controller层 因为spring mvc只负责Controller层-->\n        <context:include-filter type=\"annotation\" expression=\"org.springframework.stereotype.Controller\"/>\n    </context:component-scan>\n\n    <!--    配置视图解析器 方便前后端跳转-->\n    <bean id=\"viewResolver\" class=\"org.springframework.web.servlet.view.InternalResourceViewResolver\">\n        <!--        前缀-->\n        <property name=\"prefix\" value=\"/WEB-INF/\"/>\n        <!--        后缀-->\n        <property name=\"suffix\" value=\".jsp\"/>\n    </bean>\n    <!--    开启mvc注解扫描的支持-->\n    <mvc:annotation-driven/>\n</beans>\n```\napplication.xml\n\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\n       xmlns:context=\"http://www.springframework.org/schema/context\"\n       xmlns:tx=\"http://www.springframework.org/schema/tx\"\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd\n                           http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd\n                           http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx.xsd\">\n\n    <!--    开启注解扫描-->\n    <context:component-scan base-package=\"com.superb\">\n        <!--        不扫描Controller 各司其职-->\n        <context:exclude-filter type=\"annotation\" expression=\"org.springframework.stereotype.Controller\"/>\n    </context:component-scan>\n\n    <!--    引入外部properties资源文件-->\n    <context:property-placeholder location=\"classpath:jdbc.properties\"/>\n\n    <!--    整合MyBatis-->\n    <!--    引入数据源 使用德鲁伊数据库连接池-->\n    <bean id=\"dataSource\" class=\"com.alibaba.druid.pool.DruidDataSource\">\n        <property name=\"driverClassName\" value=\"${jdbc.driver}\"/>\n        <property name=\"url\" value=\"${jdbc.url}\"/>\n        <property name=\"username\" value=\"${jdbc.username}\"/>\n        <property name=\"password\" value=\"${jdbc.password}\"/>\n    </bean>\n\n    <!--    配置mybatis工厂Bean-->\n    <bean id=\"sqlSessionFactory\" class=\"org.mybatis.spring.SqlSessionFactoryBean\">\n        <!--        数据源填充-->\n        <property name=\"dataSource\" ref=\"dataSource\"/>\n        <!--        指定mybatis配置文件-->\n        <property name=\"configLocation\" value=\"classpath:mybatis-config.xml\"/>\n        <!--        指定mapper文件 *.xml 指定所有xml文件-->\n        <property name=\"mapperLocations\" value=\"classpath:mapper/*.xml\"/>\n    </bean>\n    <!--    将mapper接口添加到spring容器中-->\n    <bean class=\"org.mybatis.spring.mapper.MapperScannerConfigurer\">\n        <property name=\"sqlSessionFactoryBeanName\" value=\"sqlSessionFactory\"/>\n        <!--        指定mapper接口所在包 自动扫描-->\n        <property name=\"basePackage\" value=\"com.superb.mapper\"/>\n    </bean>\n\n    <!--    配置事务(目前非必要）-->\n    <bean id=\"dataSourceTransactionManager\" class=\"org.springframework.jdbc.datasource.DataSourceTransactionManager\">\n        <!--        传入数据源-->\n        <property name=\"dataSource\" ref=\"dataSource\"/>\n    </bean>\n    <tx:annotation-driven transaction-manager=\"dataSourceTransactionManager\"/>\n\n</beans>\n```\n数据库方面\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917161832354.png#pic_center)\n\n**配置完成**\n接下来编写实体类以及mapper接口进行测试(当然也可以选择MyBatis逆向工程)\n\n```java\npackage com.mybatis.bean;\n/**\n * @author Superb\n * @date 2020/9/11 - 15:11\n * @E_mail superb12580@163.com\n */\npublic class Employee {\n    private Integer empId;\n\n    private String empName;\n    \n    private Integer d_id;\n\n	//set()get()及toString方法已省略\n}\n```\nMapper接口\n```java\npackage com.mybatis.mapper;\n\nimport com.mybatis.bean.Employee;\nimport org.apache.ibatis.annotations.*;\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/11 - 15:09\n * @E_mail superb12580@163.com\n */\npublic interface EmployeeMapper {\n    /**\n     * 查询所有员工\n     * @return\n     */\n    List<Employee> getEmps();\n    \n    /**\n     * 查询单个员工\n     * @param id\n     * @return\n     */\n    Employee getEmp(int id);\n}\n```\nmapper.xml文件\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<!DOCTYPE mapper\n        PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\"\n        \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\n<mapper namespace=\"com.superb.mapper.EmployeeMapper\">\n\n    <resultMap id=\"empMap\" type=\"com.superb.entity.Employee\">\n        <id property=\"empId\" column=\"emp_id\"/>\n        <result column=\"emp_name\" property=\"empName\"/>\n        <result column=\"d_id\" property=\"dId\"/>\n    </resultMap>\n    \n    <select id=\"getEmp\" parameterType=\"java.lang.Integer\" resultMap=\"empMap\">\n        select * from emp where emp_id = #{empId}\n    </select>\n\n    <select id=\"getEmps\" resultMap=\"empMap\">\n        select * from emp\n    </select>\n</mapper>\n```\n生成测试 选中Mapper接口类 快捷键 ctrl+shift+t 生成测试代码\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2020091716271036.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n将两个测试方法全部勾选\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917162823396.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n生成如下\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917162843892.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n添加测试环境\n\n```java\npackage com.superb.mapper;\n\nimport com.superb.entity.Employee;\nimport org.junit.Test;\nimport org.junit.runner.RunWith;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.test.context.ContextConfiguration;\nimport org.springframework.test.context.junit4.SpringRunner;\n\nimport java.util.List;\n\nimport static org.junit.Assert.*;\n\n/**\n * @author Superb\n * @date 2020/9/17 - 16:28\n * @E_mail superb12580@163.com\n */\n@RunWith(SpringRunner.class)\n@ContextConfiguration({\"classpath:application.xml\"})\npublic class EmployeeMapperTest {\n\n    @Autowired\n    private EmployeeMapper mapper;\n    @Test\n    public void getEmp() {\n        Employee emp = mapper.getEmp(1);\n        System.out.println(emp);\n    }\n\n    @Test\n    public void getEmps() {\n        List<Employee> emps = mapper.getEmps();\n        for (Employee e : emps){\n            System.out.println(e);\n        }\n    }\n}\n```\n进行测试\n\n```java\nEmployee{empId=1, empName=\'卢本伟\', dId=5}\n```\n```java\nEmployee{empId=1, empName=\'卢本伟\', dId=5}\nEmployee{empId=2, empName=\'大司马\', dId=2}\nEmployee{empId=3, empName=\'Uzi\', dId=1}\nEmployee{empId=4, empName=\'PDD\', dId=2}\nEmployee{empId=5, empName=\'茄子\', dId=3}\nEmployee{empId=6, empName=\'药水哥\', dId=5}\nEmployee{empId=7, empName=\'旭旭宝宝\', dId=4}\nEmployee{empId=8, empName=\'小智\', dId=5}\nEmployee{empId=9, empName=\'化腾\', dId=4}\n```\n后端测试成功！\n配置tomcat服务器\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164645856.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164754287.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164805306.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n\n编辑Controller层\n返回Json数据给前端\n\n```java\npackage com.superb.controller;\n\nimport com.superb.entity.Employee;\nimport com.superb.mapper.EmployeeMapper;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.web.bind.annotation.RequestMapping;\nimport org.springframework.web.bind.annotation.RestController;\n\nimport java.util.List;\n\n/**\n * @author Superb\n * @date 2020/9/12 - 17:47\n * @E_mail superb12580@163.com\n */\n@RestController\npublic class EmpController {\n\n    @Autowired\n    private EmployeeMapper mapper;\n\n    @RequestMapping(\"/emp\")\n    public List<Employee> getEmp(){\n        return mapper.getEmps();\n    }\n}\n```\n点击运行服务器\n访问http://localhost:8080/ssm_superb/emp\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164923386.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\n**完成**\n\nMybatis基于注解方式的一对多、多对一关系映射\n[https://blog.csdn.net/weixin_46002478/article/details/108539325](https://blog.csdn.net/weixin_46002478/article/details/108539325)\n\nMybatis基于XML方式的一对多、多对一关系映射\n[https://blog.csdn.net/weixin_46002478/article/details/108545775](https://blog.csdn.net/weixin_46002478/article/details/108545775)', '2021-04-27 17:07:27', '2', null, '68711ea862a6490bbd926e07b1e2c433', '0');
INSERT INTO `essay` VALUES ('48', '(Spring-SpringMVC-MyBatis)超详细SSM整合环境搭建，看这篇就够了', '5', '## 前言\r\n\r\nSSM（Spring+SpringMVC+MyBatis）框架集由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。常作为数据源较简单的web项目的框架。\r\n\r\n> 页面发送请求给控制器，控制器调用业务层处理逻辑，逻辑层向持久层发送请求，持久层与数据库交互，后将结果返回给业务层，业务层将处理逻辑发送给控制器，控制器再调用视图展现数据。\r\n\r\n## 前期准备\r\n\r\n - 编译器 ：idea\r\n - JDK ：1.8及以上\r\n - 项目构建 ： Maven\r\n - 本次演示MyBatis采用xml方式，这也是官方推荐的方式，如想了解更多或基于注解方式，可参考\r\n   [Mybatis基于注解方式的一对多、多对一关系映射](http://blog.csdn.net/weixin_46002478/article/details/108539325)\r\n    [Mybatis基于XML方式的一对多、多对一关系映射（上）](http://blog.csdn.net/weixin_46002478/article/details/108545775)\r\n   [Mybatis基于XML方式的一对多、多对一关系映射（下）](http://blog.csdn.net/weixin_46002478/article/details/108549768)\r\n\r\n## 整合\r\n\r\n  1. 创建基于Maven管理的Web项目。\r\n     默认本地的JDK环境，这里选择Create from archetype 使用Web骨架，点击Next\r\n     ![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917151636554.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n  2. 给项目起个名字，我这里就叫ssm_superb，点击下一步继续\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917151953916.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n  3. 这里一定要使用本地的Maven仓库！！！\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152051667.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n  4. 创建完成，发现目录结构并不是完整的（缺少java目录和Resource目录以及测试部分），我们手动补充即可\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152315278.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n  5. 选中src，右键之后一次选择new，Directory。\r\n     ![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152605416.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n  6. 不得不说现在的idea真的贴心（手动狗头），我们缺少的目录结构，都在提示中，按住Shift全部选中即可添加所有目录。\r\n\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152649381.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n  7. 到此，前期工作基本完成\r\n     ![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917152924806.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n  8. 首先引入项目所需要的依赖。pom.xml\r\n\r\n其中junit包的版本一定要是4.12及以上，切记！[血的教训http://blog.csdn.net/weixin_46002478/article/details/108630322](http://blog.csdn.net/weixin_46002478/article/details/108630322)\r\n\r\n```xml\r\n<properties>\r\n        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\r\n        <maven.compiler.source>1.8</maven.compiler.source>\r\n        <maven.compiler.target>1.8</maven.compiler.target>\r\n        <!--统一spring版本-->\r\n        <spring.verison>5.2.8.RELEASE</spring.verison>\r\n    </properties>\r\n\r\n    <dependencies>\r\n        <!--spring web核心依赖-->\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-webmvc</artifactId>\r\n            <version>${spring.verison}</version>\r\n        </dependency>\r\n        <!--spring jdbc依赖 用于事务配置-->\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-jdbc</artifactId>\r\n            <version>${spring.verison}</version>\r\n        </dependency>\r\n        <!--spring 测试包-->\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-test</artifactId>\r\n            <version>${spring.verison}</version>\r\n        </dependency>\r\n        <!--mysql 驱动包-->\r\n        <dependency>\r\n            <groupId>mysql</groupId>\r\n            <artifactId>mysql-connector-java</artifactId>\r\n            <version>5.1.41</version>\r\n        </dependency>\r\n        <!--druid 阿里连接池-->\r\n        <dependency>\r\n            <groupId>com.alibaba</groupId>\r\n            <artifactId>druid</artifactId>\r\n            <version>1.1.21</version>\r\n        </dependency>\r\n        <!--mybatis 持久层框架-->\r\n        <dependency>\r\n            <groupId>org.mybatis</groupId>\r\n            <artifactId>mybatis</artifactId>\r\n            <version>3.5.5</version>\r\n        </dependency>\r\n        <!--mybatis spring 整合包 现在都有mybatis提供-->\r\n        <dependency>\r\n            <groupId>org.mybatis</groupId>\r\n            <artifactId>mybatis-spring</artifactId>\r\n            <version>2.0.5</version>\r\n        </dependency>\r\n        <!--json 解析json数据包-->\r\n        <dependency>\r\n            <groupId>com.fasterxml.jackson.core</groupId>\r\n            <artifactId>jackson-databind</artifactId>\r\n            <version>2.11.2</version>\r\n        </dependency>\r\n        <!--junit 测试包-->\r\n        <dependency>\r\n            <groupId>junit</groupId>\r\n            <artifactId>junit</artifactId>\r\n            <version>4.13</version>\r\n            <scope>test</scope>\r\n        </dependency>\r\n    </dependencies>\r\n```\r\n\r\n  2. 创建Package\r\n     ![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917161429321.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n     创建数据库连接配置properties\r\n     ![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917161544800.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n  3. 创建Spring以及SpringMVC配置文件\r\n     application.xml\r\n     spring-mvc.xml\r\n     ![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917154416984.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n  4. 接下来就是配置各种xml时间\r\n     web.xml\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<web-app xmlns=\"http://xmlns.jcp.org/xml/ns/javaee\"\r\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n         xsi:schemaLocation=\"http://xmlns.jcp.org/xml/ns/javaee\r\nhttp://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd\"\r\n         version=\"3.1\">\r\n    <!--  指定错误显示页面-->\r\n    <error-page>\r\n        <error-code>404</error-code>\r\n        <location>/WEB-INF/error/404.jsp</location>\r\n    </error-page>\r\n    <error-page>\r\n        <error-code>500</error-code>\r\n        <location>/WEB-INF/error/500.jsp</location>\r\n    </error-page>\r\n\r\n    <!--  加载Spring-->\r\n    <context-param>\r\n        <param-name>contextConfigLocation</param-name>\r\n        <param-value>classpath:application.xml</param-value>\r\n    </context-param>\r\n    <!--  监听器-->\r\n    <listener>\r\n        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>\r\n    </listener>\r\n    <!--  前端控制器-->\r\n    <servlet>\r\n        <servlet-name>dispatcherServlet</servlet-name>\r\n        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>\r\n        <!--    加载spring mvc配置-->\r\n        <init-param>\r\n            <param-name>contextConfigLocation</param-name>\r\n            <param-value>classpath:spring-mvc.xml</param-value>\r\n        </init-param>\r\n    </servlet>\r\n    <!--  /表示拦截所有请求-->\r\n    <servlet-mapping>\r\n        <servlet-name>dispatcherServlet</servlet-name>\r\n        <url-pattern>/</url-pattern>\r\n    </servlet-mapping>\r\n\r\n    <!--  过滤器 字符编码-->\r\n    <filter>\r\n        <filter-name>characterEncodingFilter</filter-name>\r\n        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>\r\n        <init-param>\r\n            <param-name>encoding</param-name>\r\n            <param-value>utf-8</param-value>\r\n        </init-param>\r\n        <init-param>\r\n            <param-name>forceRequestEncoding</param-name>\r\n            <param-value>true</param-value>\r\n        </init-param>\r\n        <init-param>\r\n            <param-name>forceResponseEncoding</param-name>\r\n            <param-value>true</param-value>\r\n        </init-param>\r\n    </filter>\r\n    <filter-mapping>\r\n        <filter-name>characterEncodingFilter</filter-name>\r\n        <url-pattern>/*</url-pattern>\r\n    </filter-mapping>\r\n</web-app>\r\n```\r\n\r\nspring-mvc.xml\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xmlns:mvc=\"http://www.springframework.org/schema/mvc\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd\r\n                           http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd\r\n                           http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd\">\r\n    <!--    开启注解扫描 关闭默认扫描方式-->\r\n    <context:component-scan base-package=\"com.superb\" use-default-filters=\"false\">\r\n        <!--        只扫描Controller层 因为spring mvc只负责Controller层-->\r\n        <context:include-filter type=\"annotation\" expression=\"org.springframework.stereotype.Controller\"/>\r\n    </context:component-scan>\r\n\r\n    <!--    配置视图解析器 方便前后端跳转-->\r\n    <bean id=\"viewResolver\" class=\"org.springframework.web.servlet.view.InternalResourceViewResolver\">\r\n        <!--        前缀-->\r\n        <property name=\"prefix\" value=\"/WEB-INF/\"/>\r\n        <!--        后缀-->\r\n        <property name=\"suffix\" value=\".jsp\"/>\r\n    </bean>\r\n    <!--    开启mvc注解扫描的支持-->\r\n    <mvc:annotation-driven/>\r\n</beans>\r\n```\r\n\r\napplication.xml\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xmlns:tx=\"http://www.springframework.org/schema/tx\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd\r\n                           http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd\r\n                           http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx.xsd\">\r\n\r\n    <!--    开启注解扫描-->\r\n    <context:component-scan base-package=\"com.superb\">\r\n        <!--        不扫描Controller 各司其职-->\r\n        <context:exclude-filter type=\"annotation\" expression=\"org.springframework.stereotype.Controller\"/>\r\n    </context:component-scan>\r\n\r\n    <!--    引入外部properties资源文件-->\r\n    <context:property-placeholder location=\"classpath:jdbc.properties\"/>\r\n\r\n    <!--    整合MyBatis-->\r\n    <!--    引入数据源 使用德鲁伊数据库连接池-->\r\n    <bean id=\"dataSource\" class=\"com.alibaba.druid.pool.DruidDataSource\">\r\n        <property name=\"driverClassName\" value=\"${jdbc.driver}\"/>\r\n        <property name=\"url\" value=\"${jdbc.url}\"/>\r\n        <property name=\"username\" value=\"${jdbc.username}\"/>\r\n        <property name=\"password\" value=\"${jdbc.password}\"/>\r\n    </bean>\r\n\r\n    <!--    配置mybatis工厂Bean-->\r\n    <bean id=\"sqlSessionFactory\" class=\"org.mybatis.spring.SqlSessionFactoryBean\">\r\n        <!--        数据源填充-->\r\n        <property name=\"dataSource\" ref=\"dataSource\"/>\r\n        <!--        指定mybatis配置文件-->\r\n        <property name=\"configLocation\" value=\"classpath:mybatis-config.xml\"/>\r\n        <!--        指定mapper文件 *.xml 指定所有xml文件-->\r\n        <property name=\"mapperLocations\" value=\"classpath:mapper/*.xml\"/>\r\n    </bean>\r\n    <!--    将mapper接口添加到spring容器中-->\r\n    <bean class=\"org.mybatis.spring.mapper.MapperScannerConfigurer\">\r\n        <property name=\"sqlSessionFactoryBeanName\" value=\"sqlSessionFactory\"/>\r\n        <!--        指定mapper接口所在包 自动扫描-->\r\n        <property name=\"basePackage\" value=\"com.superb.mapper\"/>\r\n    </bean>\r\n\r\n    <!--    配置事务(目前非必要）-->\r\n    <bean id=\"dataSourceTransactionManager\" class=\"org.springframework.jdbc.datasource.DataSourceTransactionManager\">\r\n        <!--        传入数据源-->\r\n        <property name=\"dataSource\" ref=\"dataSource\"/>\r\n    </bean>\r\n    <tx:annotation-driven transaction-manager=\"dataSourceTransactionManager\"/>\r\n\r\n</beans>\r\n```\r\n\r\n数据库方面\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917161832354.png#pic_center)\r\n\r\n**配置完成**\r\n接下来编写实体类以及mapper接口进行测试(当然也可以选择MyBatis逆向工程)\r\n\r\n```java\r\npackage com.mybatis.bean;\r\n/**\r\n * @author Superb\r\n * @date 2020/9/11 - 15:11\r\n * @E_mail superb12580@163.com\r\n */\r\npublic class Employee {\r\n    private Integer empId;\r\n\r\n    private String empName;\r\n    \r\n    private Integer d_id;\r\n\r\n	//set()get()及toString方法已省略\r\n}\r\n```\r\n\r\nMapper接口\r\n\r\n```java\r\npackage com.mybatis.mapper;\r\n\r\nimport com.mybatis.bean.Employee;\r\nimport org.apache.ibatis.annotations.*;\r\nimport java.util.List;\r\n\r\n/**\r\n * @author Superb\r\n * @date 2020/9/11 - 15:09\r\n * @E_mail superb12580@163.com\r\n */\r\npublic interface EmployeeMapper {\r\n    /**\r\n     * 查询所有员工\r\n     * @return\r\n     */\r\n    List<Employee> getEmps();\r\n    \r\n    /**\r\n     * 查询单个员工\r\n     * @param id\r\n     * @return\r\n     */\r\n    Employee getEmp(int id);\r\n}\r\n```\r\n\r\nmapper.xml文件\r\n\r\n```xml\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE mapper\r\n        PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\"\r\n        \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\r\n<mapper namespace=\"com.superb.mapper.EmployeeMapper\">\r\n\r\n    <resultMap id=\"empMap\" type=\"com.superb.entity.Employee\">\r\n        <id property=\"empId\" column=\"emp_id\"/>\r\n        <result column=\"emp_name\" property=\"empName\"/>\r\n        <result column=\"d_id\" property=\"dId\"/>\r\n    </resultMap>\r\n    \r\n    <select id=\"getEmp\" parameterType=\"java.lang.Integer\" resultMap=\"empMap\">\r\n        select * from emp where emp_id = #{empId}\r\n    </select>\r\n\r\n    <select id=\"getEmps\" resultMap=\"empMap\">\r\n        select * from emp\r\n    </select>\r\n</mapper>\r\n```\r\n\r\n生成测试 选中Mapper接口类 快捷键 ctrl+shift+t 生成测试代码\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2020091716271036.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n将两个测试方法全部勾选\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917162823396.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n生成如下\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917162843892.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n添加测试环境\r\n\r\n```java\r\npackage com.superb.mapper;\r\n\r\nimport com.superb.entity.Employee;\r\nimport org.junit.Test;\r\nimport org.junit.runner.RunWith;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.test.context.ContextConfiguration;\r\nimport org.springframework.test.context.junit4.SpringRunner;\r\n\r\nimport java.util.List;\r\n\r\nimport static org.junit.Assert.*;\r\n\r\n/**\r\n * @author Superb\r\n * @date 2020/9/17 - 16:28\r\n * @E_mail superb12580@163.com\r\n */\r\n@RunWith(SpringRunner.class)\r\n@ContextConfiguration({\"classpath:application.xml\"})\r\npublic class EmployeeMapperTest {\r\n\r\n    @Autowired\r\n    private EmployeeMapper mapper;\r\n    @Test\r\n    public void getEmp() {\r\n        Employee emp = mapper.getEmp(1);\r\n        System.out.println(emp);\r\n    }\r\n\r\n    @Test\r\n    public void getEmps() {\r\n        List<Employee> emps = mapper.getEmps();\r\n        for (Employee e : emps){\r\n            System.out.println(e);\r\n        }\r\n    }\r\n}\r\n```\r\n\r\n进行测试\r\n\r\n```java\r\nEmployee{empId=1, empName=\'卢本伟\', dId=5}\r\n```\r\n\r\n```java\r\nEmployee{empId=1, empName=\'卢本伟\', dId=5}\r\nEmployee{empId=2, empName=\'大司马\', dId=2}\r\nEmployee{empId=3, empName=\'Uzi\', dId=1}\r\nEmployee{empId=4, empName=\'PDD\', dId=2}\r\nEmployee{empId=5, empName=\'茄子\', dId=3}\r\nEmployee{empId=6, empName=\'药水哥\', dId=5}\r\nEmployee{empId=7, empName=\'旭旭宝宝\', dId=4}\r\nEmployee{empId=8, empName=\'小智\', dId=5}\r\nEmployee{empId=9, empName=\'化腾\', dId=4}\r\n```\r\n\r\n后端测试成功！\r\n配置tomcat服务器\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164645856.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164754287.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164805306.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n\r\n编辑Controller层\r\n返回Json数据给前端\r\n\r\n```java\r\npackage com.superb.controller;\r\n\r\nimport com.superb.entity.Employee;\r\nimport com.superb.mapper.EmployeeMapper;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.web.bind.annotation.RequestMapping;\r\nimport org.springframework.web.bind.annotation.RestController;\r\n\r\nimport java.util.List;\r\n\r\n/**\r\n * @author Superb\r\n * @date 2020/9/12 - 17:47\r\n * @E_mail superb12580@163.com\r\n */\r\n@RestController\r\npublic class EmpController {\r\n\r\n    @Autowired\r\n    private EmployeeMapper mapper;\r\n\r\n    @RequestMapping(\"/emp\")\r\n    public List<Employee> getEmp(){\r\n        return mapper.getEmps();\r\n    }\r\n}\r\n```\r\n\r\n点击运行服务器\r\n访问http://localhost:8080/ssm_superb/emp\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200917164923386.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NjAwMjQ3OA==,size_16,color_FFFFFF,t_70#pic_center)\r\n**完成**\r\n\r\nMybatis基于注解方式的一对多、多对一关系映射\r\n[https://blog.csdn.net/weixin_46002478/article/details/108539325](https://blog.csdn.net/weixin_46002478/article/details/108539325)\r\n\r\nMybatis基于XML方式的一对多、多对一关系映射\r\n[https://blog.csdn.net/weixin_46002478/article/details/108545775](https://blog.csdn.net/weixin_46002478/article/details/108545775)', '2021-04-27 17:10:42', '35', null, '6fd649fd677a4ec7be0cb29481e7a599', '0');

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
-- Records of fold
-- ----------------------------
INSERT INTO `fold` VALUES ('1', '2', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/fold/2021/04/03/1cec5c95780d474fbe87626dd164d1ae.jpg', '国潮版提供2', '并且新老三代车型同堂销售的策略也让其覆盖到了更多的消费', '新车共推出7款车型，官方指导价格为9.89-12.89万元', '哈弗H6', '并在原有基础上进行了升级，未来新老三代同堂销售的局面也将随着H6国', '同时新车还提供了包括瑞雪白、锦鲤红、墨玉黑、景泰蓝、青瓦灰', '动力方面', 'H6国潮版车型采用了时下流行的贯穿式尾灯，下方后包围造型也搭配', '饰部分的设计在第二代H6的基础上进行了一些升级，全新的悬', '官方指导价格', '新车还配备了全新的全液晶仪表，经过优化的UI设计让消息显示更为直观便捷', '高功率1.5升涡轮增压发动机最大功率124千瓦，峰值扭矩285牛·米。');
INSERT INTO `fold` VALUES ('2', '1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/fold/2021/04/19/10405be973a349989dc7bf7fdde4ddf2.jpg', '北京BJ80探月', '北京BJ80 3.0T车型定制，外观、内饰上面进行了整体优化设计', '全新的侧面专属拉花，体现出强烈的中国与探月元素。', '全新的黑色主题', '通过部分金色氛围灯作为星光般的点缀。', '除此之外，新车的中控屏还增加了专属的星空背景。', '动力方面', '新车将搭载3.0T V6汽油发动机最大功率280马力', '匹配分时四驱系统，并提供雪地、运动、舒适、经济四种驾驶模式选择。', '硬派SUV车型', '北京BJ80探月版在原有基础上采用了全新的前后包围设计', '新车还在前门板上增加了中国探月工程的专属LOGO');

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
-- Records of forward
-- ----------------------------
INSERT INTO `forward` VALUES ('1', '1', '35', '宝马三系真香', '2020-11-17 20:07:39', '0');
INSERT INTO `forward` VALUES ('2', '1', '3', 'nice', '2020-11-17 20:08:11', '0');
INSERT INTO `forward` VALUES ('3', '9', '35', '宝马三系真香', '2020-11-20 19:45:45', '0');
INSERT INTO `forward` VALUES ('4', '4', '35', '宝马三系真香', '2021-03-19 01:53:33', '1');
INSERT INTO `forward` VALUES ('5', '3', '35', '489461416', '2021-03-19 01:54:55', '0');
INSERT INTO `forward` VALUES ('6', '3', '2', '宝马三系真香', '2021-03-19 01:55:20', '1');
INSERT INTO `forward` VALUES ('7', '8', '35', '宝马三系真香', '2021-03-19 01:56:27', '0');
INSERT INTO `forward` VALUES ('8', '27', '2', 'sadas1', '2021-03-19 01:56:35', '1');
INSERT INTO `forward` VALUES ('9', '27', '2', '宝马三系真香', '2021-03-19 01:57:08', '0');
INSERT INTO `forward` VALUES ('10', '27', '35', '宝马三系真香', '2021-03-19 01:57:47', '1');
INSERT INTO `forward` VALUES ('11', '3', '2', 'asdsad', '2021-03-19 01:57:55', '0');
INSERT INTO `forward` VALUES ('12', '29', '35', 'xr', '2021-03-19 02:54:31', '1');
INSERT INTO `forward` VALUES ('13', '1', '3', '111', '2021-03-19 03:11:40', '0');
INSERT INTO `forward` VALUES ('14', '6', '35', '555555555555555555555', '2021-03-19 03:13:03', '1');
INSERT INTO `forward` VALUES ('15', '1', '3', '1234567890', '2021-03-19 15:16:05', '0');
INSERT INTO `forward` VALUES ('16', '24', '35', '1234567890', '2021-03-19 03:17:11', '1');
INSERT INTO `forward` VALUES ('17', '1', '3', 'fdscdsvcdsvcdsv   cdscds', '2021-03-19 16:13:58', '0');
INSERT INTO `forward` VALUES ('18', '1', '3', '1234567890', '2021-03-19 16:14:16', '1');
INSERT INTO `forward` VALUES ('19', '23', '35', '1234567890', '2021-03-19 16:59:01', '0');
INSERT INTO `forward` VALUES ('20', '23', '3', '1111', '2021-03-19 16:59:09', '1');
INSERT INTO `forward` VALUES ('21', '30', '4', '我要吃肉蟹煲', '2021-03-19 18:44:07', '0');
INSERT INTO `forward` VALUES ('22', '30', '4', '1234567890', '2021-03-19 18:50:39', '0');
INSERT INTO `forward` VALUES ('23', '30', '4', '1234567890', '2021-03-19 18:54:44', '0');
INSERT INTO `forward` VALUES ('24', '30', '4', '1234567890', '2021-03-19 19:00:13', '0');
INSERT INTO `forward` VALUES ('25', '30', '4', '1234567890', '2021-03-19 19:01:07', '0');
INSERT INTO `forward` VALUES ('26', '30', '4', '1234567890', '2021-03-19 19:01:22', '0');
INSERT INTO `forward` VALUES ('27', '30', '4', '1234567890', '2021-03-19 19:02:46', '0');
INSERT INTO `forward` VALUES ('28', '30', '4', '1234567890', '2021-03-19 19:02:52', '0');
INSERT INTO `forward` VALUES ('29', '30', '4', '1234567890', '2021-03-19 19:03:04', '0');
INSERT INTO `forward` VALUES ('30', '28', '2', '1234567890', '2021-03-19 19:03:37', '0');
INSERT INTO `forward` VALUES ('31', '28', '2', '1234567890', '2021-03-19 19:03:52', '0');
INSERT INTO `forward` VALUES ('32', '23', '3', '1234567890', '2021-03-19 19:05:09', '0');
INSERT INTO `forward` VALUES ('33', '23', '3', '1234567890', '2021-03-19 19:05:16', '0');
INSERT INTO `forward` VALUES ('34', '23', '3', '1234567890', '2021-03-19 19:05:20', '0');
INSERT INTO `forward` VALUES ('35', '1', '3', '1234567890', '2021-03-19 19:05:44', '0');
INSERT INTO `forward` VALUES ('36', '1', '3', '1234567890', '2021-03-19 19:06:50', '0');
INSERT INTO `forward` VALUES ('37', '1', '3', '1234567890', '2021-03-19 19:06:58', '0');
INSERT INTO `forward` VALUES ('38', '23', '3', '1234567890', '2021-03-19 19:09:39', '0');
INSERT INTO `forward` VALUES ('39', '30', '3', '1234567890', '2021-03-22 11:19:25', '0');
INSERT INTO `forward` VALUES ('40', '30', '2', '321', '2021-03-22 21:22:15', '0');
INSERT INTO `forward` VALUES ('41', '30', '2', '', '2021-03-22 21:23:48', '0');
INSERT INTO `forward` VALUES ('42', '30', '2', '', '2021-03-22 21:24:22', '0');
INSERT INTO `forward` VALUES ('43', '32', '2', '', '2021-03-22 21:24:28', '0');
INSERT INTO `forward` VALUES ('44', '32', '2', '', '2021-03-22 21:26:06', '0');
INSERT INTO `forward` VALUES ('45', '32', '2', '666', '2021-03-22 21:26:29', '0');
INSERT INTO `forward` VALUES ('46', '34', '7', '蜂屯蚁附应付过', '2021-03-25 22:07:09', '0');
INSERT INTO `forward` VALUES ('47', '21', '35', 'wanan', '2021-03-30 15:06:06', '1');
INSERT INTO `forward` VALUES ('48', '34', '35', '我要吃肉蟹煲', '2021-03-31 10:52:45', '0');
INSERT INTO `forward` VALUES ('49', '37', '35', '我大哥天下无敌...', '2021-04-01 11:58:36', '0');
INSERT INTO `forward` VALUES ('50', '37', '35', '我三弟无人能挡！！！', '2021-04-01 11:59:04', '0');
INSERT INTO `forward` VALUES ('51', '38', '35', null, '2021-04-01 20:39:54', '0');
INSERT INTO `forward` VALUES ('52', '38', '35', '哈哈哈哈哈哈哈', '2021-04-01 20:40:54', '0');
INSERT INTO `forward` VALUES ('53', '37', '35', null, '2021-04-01 20:41:16', '0');
INSERT INTO `forward` VALUES ('54', '38', '35', null, '2021-04-02 11:08:32', '0');
INSERT INTO `forward` VALUES ('55', '39', '35', null, '2021-04-02 11:08:56', '0');
INSERT INTO `forward` VALUES ('56', '40', '35', null, '2021-04-02 14:19:38', '0');
INSERT INTO `forward` VALUES ('57', '30', '35', null, '2021-04-02 14:56:00', '0');
INSERT INTO `forward` VALUES ('58', '30', '35', null, '2021-04-02 14:56:17', '0');
INSERT INTO `forward` VALUES ('59', '42', '35', null, '2021-04-02 16:13:39', '0');
INSERT INTO `forward` VALUES ('60', '43', '4', '123', '2021-04-04 11:56:17', '0');
INSERT INTO `forward` VALUES ('61', '1', '4', '123123213', '2021-04-04 11:56:31', '0');
INSERT INTO `forward` VALUES ('62', '43', '4', '案发时发出', '2021-04-04 11:58:32', '1');
INSERT INTO `forward` VALUES ('63', '43', '35', '佛挡杀佛', '2021-04-04 11:59:24', '1');
INSERT INTO `forward` VALUES ('64', '43', '35', '带我去多群', '2021-04-04 11:59:35', '1');
INSERT INTO `forward` VALUES ('65', '43', '35', '气得我群多无', '2021-04-04 11:59:49', '0');
INSERT INTO `forward` VALUES ('66', '45', '2', 'bhfdzbfdz b', '2021-04-23 09:47:17', '0');
INSERT INTO `forward` VALUES ('67', '46', '35', null, '2021-04-25 21:14:33', '0');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `style_id` int(11) NOT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of grade
-- ----------------------------

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
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('1', '汽车之家', '2020-11-17 19:01:11', '2021-04-16 10:57:48', '0');
INSERT INTO `label` VALUES ('2', '宝马三系', '2020-11-17 19:01:11', '2021-04-13 13:29:50', '0');
INSERT INTO `label` VALUES ('3', '汽车保养', '2020-11-17 19:01:37', '2021-04-21 14:01:08', '0');
INSERT INTO `label` VALUES ('4', '路虎揽胜极光', '2020-11-17 19:01:37', '2021-04-20 13:44:55', '1');
INSERT INTO `label` VALUES ('5', '谢耳朵', '2021-04-23 20:40:08', '2021-04-23 20:40:19', '0');

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
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '系统通知', '欢迎注册成功', '1', null, '35', null, null, '0', '2020-11-17 20:15:35', '0');
INSERT INTO `message` VALUES ('2', '系统通知', '欢迎注册成功', '1', null, '35', null, null, '0', '2020-11-17 20:16:08', '0');
INSERT INTO `message` VALUES ('3', '点赞通知', '用户点赞了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 20:47:56', '0');
INSERT INTO `message` VALUES ('4', '点赞通知', '用户点赞了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 20:49:51', '0');
INSERT INTO `message` VALUES ('5', '点赞通知', '用户点赞了你的动态', '1', null, '35', '2', null, '1', '2020-11-17 21:02:14', '0');
INSERT INTO `message` VALUES ('6', '点赞通知', '用户点赞了你的动态', '1', null, '35', '3', null, '1', '2020-11-17 21:03:10', '0');
INSERT INTO `message` VALUES ('7', '关注通知', '用户关注了你', '1', null, '35', null, null, '0', '2020-11-17 21:08:04', '0');
INSERT INTO `message` VALUES ('8', '关注通知', '用户关注了你', '1', null, '35', null, null, '0', '2020-11-17 21:08:28', '0');
INSERT INTO `message` VALUES ('9', '关注通知', '用户关注了你', '1', null, '35', null, null, '0', '2020-11-17 21:09:00', '0');
INSERT INTO `message` VALUES ('10', '转发通知', '用户转发了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 21:14:30', '0');
INSERT INTO `message` VALUES ('11', '转发通知', '用户转发了你的动态', '1', null, '35', '1', null, '1', '2020-11-17 21:15:28', '0');
INSERT INTO `message` VALUES ('12', '评论通知', '用户转发了你的动态', '1', null, '35', '2', null, '1', '2020-11-17 21:20:21', '0');
INSERT INTO `message` VALUES ('13', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('14', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('15', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('16', '系统通知', '欢迎注册汽车之家', '1', null, '35', null, null, '0', '2020-11-20 20:14:31', '0');
INSERT INTO `message` VALUES ('17', '系统通知', '欢迎注册汽车之家', '1', null, '6', null, null, '0', '2021-03-22 16:34:44', '0');
INSERT INTO `message` VALUES ('18', '你好', 'hello，我是刘德华', '3', null, '35', null, null, '2', '2021-03-02 16:36:59', '0');
INSERT INTO `message` VALUES ('19', '系统通知', '欢迎注册汽车之家', '1', null, '7', null, null, '0', '2021-03-25 22:03:49', '0');
INSERT INTO `message` VALUES ('20', '系统通知', '用户关注了你', '1', '35', '1', null, null, '0', '2021-03-30 16:17:57', '0');
INSERT INTO `message` VALUES ('21', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:32:55', '0');
INSERT INTO `message` VALUES ('22', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:33:12', '0');
INSERT INTO `message` VALUES ('23', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:09', '0');
INSERT INTO `message` VALUES ('24', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:11', '0');
INSERT INTO `message` VALUES ('25', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:13', '0');
INSERT INTO `message` VALUES ('26', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:34:15', '0');
INSERT INTO `message` VALUES ('27', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 16:42:56', '0');
INSERT INTO `message` VALUES ('28', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-03-30 16:43:10', '0');
INSERT INTO `message` VALUES ('29', '系统通知', '用户关注了你', '1', '2', '35', null, null, '1', '2021-03-30 17:27:52', '0');
INSERT INTO `message` VALUES ('30', '关注通知', '用户关注了你', '1', '3', '35', null, null, '1', '2021-03-30 17:32:41', '0');
INSERT INTO `message` VALUES ('31', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-03-30 17:48:07', '0');
INSERT INTO `message` VALUES ('32', '动态通知', '用户点赞了你的动态', '1', '35', '3', '14', null, '1', '2021-03-30 18:34:50', '0');
INSERT INTO `message` VALUES ('33', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 18:34:54', '0');
INSERT INTO `message` VALUES ('34', '动态通知', '用户点赞了你的动态', '1', '1', '7', '34', null, '1', '2021-03-30 18:35:53', '0');
INSERT INTO `message` VALUES ('35', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 18:59:06', '0');
INSERT INTO `message` VALUES ('36', '动态通知', '用户评论了你的动态', '1', '35', '7', '34', null, '1', '2021-03-30 18:59:09', '0');
INSERT INTO `message` VALUES ('37', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '11', '3', '2021-03-30 18:59:19', '0');
INSERT INTO `message` VALUES ('38', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-03-31 10:44:39', '0');
INSERT INTO `message` VALUES ('39', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-03-31 10:44:46', '0');
INSERT INTO `message` VALUES ('40', '关注通知', '用户关注了你', '1', '35', '10', null, null, '1', '2021-03-31 10:50:45', '0');
INSERT INTO `message` VALUES ('41', '动态通知', '用户转发了你的动态', '1', '35', '7', '34', null, '1', '2021-03-31 10:52:45', '0');
INSERT INTO `message` VALUES ('42', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-03-31 11:58:30', '0');
INSERT INTO `message` VALUES ('43', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-03-31 12:01:21', '0');
INSERT INTO `message` VALUES ('44', '动态通知', '用户点赞了你的动态', '1', '35', '35', '35', null, '1', '2021-03-31 16:36:15', '0');
INSERT INTO `message` VALUES ('45', '动态通知', '用户评论了你的动态', '1', '35', '35', '35', null, '1', '2021-03-31 16:36:19', '0');
INSERT INTO `message` VALUES ('46', '动态通知', '用户点赞了你的动态', '1', '35', '35', '36', null, '1', '2021-03-31 18:59:24', '0');
INSERT INTO `message` VALUES ('47', '动态通知', '用户评论了你的动态', '1', '35', '35', '36', null, '1', '2021-03-31 20:30:29', '0');
INSERT INTO `message` VALUES ('48', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-01 09:28:34', '0');
INSERT INTO `message` VALUES ('49', '动态通知', '用户转发了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:58:36', '0');
INSERT INTO `message` VALUES ('50', '动态通知', '用户转发了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:59:04', '0');
INSERT INTO `message` VALUES ('51', '动态通知', '用户评论了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:59:34', '0');
INSERT INTO `message` VALUES ('52', '动态通知', '用户评论了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 11:59:57', '0');
INSERT INTO `message` VALUES ('53', '动态通知', '用户点赞了你的动态', '1', '35', '7', '34', null, '1', '2021-04-01 20:31:50', '0');
INSERT INTO `message` VALUES ('54', '动态通知', '用户点赞了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 20:32:01', '0');
INSERT INTO `message` VALUES ('55', '动态通知', '用户点赞了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 20:32:09', '0');
INSERT INTO `message` VALUES ('56', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '10', '3', '2021-04-01 20:38:13', '0');
INSERT INTO `message` VALUES ('57', '动态通知', '用户点赞了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:23', '0');
INSERT INTO `message` VALUES ('58', '动态通知', '用户评论了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:28', '0');
INSERT INTO `message` VALUES ('59', '动态通知', '用户评论了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:48', '0');
INSERT INTO `message` VALUES ('60', '动态通知', '用户点赞了你的动态', '1', '35', '35', '2', null, '1', '2021-04-01 20:38:52', '0');
INSERT INTO `message` VALUES ('61', '动态通知', '用户评论了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:31', '0');
INSERT INTO `message` VALUES ('62', '动态通知', '用户评论了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:39', '0');
INSERT INTO `message` VALUES ('63', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '19', '3', '2021-04-01 20:39:47', '0');
INSERT INTO `message` VALUES ('64', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '18', '3', '2021-04-01 20:39:48', '0');
INSERT INTO `message` VALUES ('65', '动态通知', '用户点赞了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:52', '0');
INSERT INTO `message` VALUES ('66', '动态通知', '用户转发了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:39:54', '0');
INSERT INTO `message` VALUES ('67', '动态通知', '用户转发了你的动态', '1', '35', '35', '38', null, '1', '2021-04-01 20:40:54', '0');
INSERT INTO `message` VALUES ('68', '动态通知', '用户转发了你的动态', '1', '35', '35', '37', null, '1', '2021-04-01 20:41:16', '0');
INSERT INTO `message` VALUES ('69', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-01 21:14:37', '0');
INSERT INTO `message` VALUES ('70', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-01 21:14:40', '0');
INSERT INTO `message` VALUES ('71', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-01 21:15:54', '0');
INSERT INTO `message` VALUES ('72', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-01 21:16:28', '0');
INSERT INTO `message` VALUES ('73', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:18:38', '0');
INSERT INTO `message` VALUES ('74', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:18:56', '0');
INSERT INTO `message` VALUES ('75', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:20:33', '0');
INSERT INTO `message` VALUES ('76', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:20:37', '0');
INSERT INTO `message` VALUES ('77', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:23:45', '0');
INSERT INTO `message` VALUES ('78', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:24:16', '0');
INSERT INTO `message` VALUES ('79', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:24:44', '0');
INSERT INTO `message` VALUES ('80', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:24:46', '0');
INSERT INTO `message` VALUES ('81', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:27:59', '0');
INSERT INTO `message` VALUES ('82', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:28:05', '0');
INSERT INTO `message` VALUES ('83', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:28:20', '0');
INSERT INTO `message` VALUES ('84', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:28:26', '0');
INSERT INTO `message` VALUES ('85', '147', '123', '35', null, '7', null, null, '2', '2021-04-02 10:50:28', '0');
INSERT INTO `message` VALUES ('86', '', '122232', '7', null, '35', null, null, '2', '2021-04-02 10:51:04', '1');
INSERT INTO `message` VALUES ('87', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:53:32', '0');
INSERT INTO `message` VALUES ('88', '颐和园', '和一塌糊涂氧化亚铜', '35', null, '7', null, null, '2', '2021-04-02 10:53:53', '0');
INSERT INTO `message` VALUES ('89', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-02 10:58:30', '0');
INSERT INTO `message` VALUES ('90', '动态通知', '用户点赞了你的动态', '1', '35', '35', '38', null, '1', '2021-04-02 11:08:27', '0');
INSERT INTO `message` VALUES ('91', '动态通知', '用户转发了你的动态', '1', '35', '35', '38', null, '1', '2021-04-02 11:08:32', '0');
INSERT INTO `message` VALUES ('92', '动态通知', '用户转发了你的动态', '1', '35', '35', '39', null, '1', '2021-04-02 11:08:56', '0');
INSERT INTO `message` VALUES ('93', '111', '222', '3', null, '35', null, null, '2', '2021-04-02 11:37:39', '1');
INSERT INTO `message` VALUES ('94', 'cdscdscdsvc', 'sdvdsvdsvs', '3', null, '35', null, null, '2', '2021-04-02 11:38:12', '0');
INSERT INTO `message` VALUES ('95', 'Pdd', 'ddd', '4', null, '35', null, null, '2', '2021-04-02 11:42:34', '0');
INSERT INTO `message` VALUES ('96', '大马猴', '1111', '5', null, '35', null, null, '2', '2021-04-02 11:43:10', '0');
INSERT INTO `message` VALUES ('97', '更新通知', '你的关注更新了动态', '1', '35', '1', '40', null, '1', '2021-04-02 13:51:11', '0');
INSERT INTO `message` VALUES ('98', '更新通知', '你的关注更新了动态', '1', '35', '2', '40', null, '1', '2021-04-02 13:51:11', '0');
INSERT INTO `message` VALUES ('99', '更新通知', '你的关注更新了动态', '1', '35', '3', '40', null, '1', '2021-04-02 13:51:11', '0');
INSERT INTO `message` VALUES ('100', '麻瓜藤', '1111', '35', null, '2', null, null, '2', '2021-04-02 13:58:57', '1');
INSERT INTO `message` VALUES ('101', '动态通知', '用户点赞了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:18:59', '0');
INSERT INTO `message` VALUES ('102', '动态通知', '用户转发了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:19:38', '0');
INSERT INTO `message` VALUES ('103', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:20:07', '0');
INSERT INTO `message` VALUES ('104', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:22:01', '0');
INSERT INTO `message` VALUES ('105', '动态通知', '用户评论了你的动态', '1', '35', '35', '39', null, '1', '2021-04-02 14:22:09', '0');
INSERT INTO `message` VALUES ('106', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:31:17', '0');
INSERT INTO `message` VALUES ('107', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:33:42', '0');
INSERT INTO `message` VALUES ('108', '动态通知', '用户评论了你的动态', '1', '35', '35', '40', null, '1', '2021-04-02 14:54:26', '0');
INSERT INTO `message` VALUES ('109', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:55:09', '0');
INSERT INTO `message` VALUES ('110', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '24', '3', '2021-04-02 14:55:40', '0');
INSERT INTO `message` VALUES ('111', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:55:54', '0');
INSERT INTO `message` VALUES ('112', '动态通知', '用户点赞了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:55:58', '0');
INSERT INTO `message` VALUES ('113', '动态通知', '用户转发了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:56:00', '0');
INSERT INTO `message` VALUES ('114', '动态通知', '用户转发了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 14:56:17', '0');
INSERT INTO `message` VALUES ('115', '更新通知', '你的关注更新了动态', '1', '35', '1', '41', null, '1', '2021-04-02 14:56:42', '0');
INSERT INTO `message` VALUES ('116', '更新通知', '你的关注更新了动态', '1', '35', '2', '41', null, '1', '2021-04-02 14:56:42', '0');
INSERT INTO `message` VALUES ('117', '更新通知', '你的关注更新了动态', '1', '35', '3', '41', null, '1', '2021-04-02 14:56:42', '0');
INSERT INTO `message` VALUES ('118', '动态通知', '用户点赞了你的动态', '1', '35', '35', '41', null, '1', '2021-04-02 14:57:00', '0');
INSERT INTO `message` VALUES ('119', '动态通知', '用户评论了你的动态', '1', '35', '35', '41', null, '1', '2021-04-02 14:59:09', '0');
INSERT INTO `message` VALUES ('120', '动态通知', '用户点赞了你的动态', '1', '35', '35', '41', null, '1', '2021-04-02 15:00:59', '0');
INSERT INTO `message` VALUES ('121', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:01:57', '0');
INSERT INTO `message` VALUES ('122', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:02:21', '0');
INSERT INTO `message` VALUES ('123', '动态通知', '用户点赞了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:02:26', '0');
INSERT INTO `message` VALUES ('124', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:05:49', '0');
INSERT INTO `message` VALUES ('125', '动态通知', '用户评论了你的动态', '1', '35', '4', '30', null, '1', '2021-04-02 15:06:10', '0');
INSERT INTO `message` VALUES ('126', '动态通知', '用户评论了你的动态', '1', '35', '35', '1', null, '1', '2021-04-02 15:06:30', '0');
INSERT INTO `message` VALUES ('127', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-04-02 15:06:41', '0');
INSERT INTO `message` VALUES ('128', '更新通知', '你的关注更新了动态', '1', '35', '1', '42', null, '1', '2021-04-02 15:14:00', '0');
INSERT INTO `message` VALUES ('129', '更新通知', '你的关注更新了动态', '1', '35', '2', '42', null, '1', '2021-04-02 15:14:00', '0');
INSERT INTO `message` VALUES ('130', '更新通知', '你的关注更新了动态', '1', '35', '3', '42', null, '1', '2021-04-02 15:14:00', '0');
INSERT INTO `message` VALUES ('131', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-04-02 16:10:39', '0');
INSERT INTO `message` VALUES ('132', '动态通知', '用户转发了你的动态', '1', '35', '35', '42', null, '1', '2021-04-02 16:13:39', '0');
INSERT INTO `message` VALUES ('133', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-02 17:34:09', '0');
INSERT INTO `message` VALUES ('134', '动态通知', '用户点赞了你的动态', '1', '35', '35', '37', null, '1', '2021-04-02 21:41:36', '0');
INSERT INTO `message` VALUES ('135', '动态通知', '用户评论了你的动态', '1', '35', '35', '37', null, '1', '2021-04-02 21:41:42', '0');
INSERT INTO `message` VALUES ('136', '更新通知', '你的关注更新了动态', '1', '35', '1', '43', null, '1', '2021-04-02 21:42:01', '0');
INSERT INTO `message` VALUES ('137', '更新通知', '你的关注更新了动态', '1', '35', '2', '43', null, '1', '2021-04-02 21:42:01', '0');
INSERT INTO `message` VALUES ('138', '更新通知', '你的关注更新了动态', '1', '35', '3', '43', null, '1', '2021-04-02 21:42:01', '0');
INSERT INTO `message` VALUES ('139', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-02 21:46:10', '0');
INSERT INTO `message` VALUES ('140', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-02 21:47:01', '0');
INSERT INTO `message` VALUES ('141', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-02 21:47:35', '0');
INSERT INTO `message` VALUES ('142', '动态通知', '用户评论了你的动态', '1', '35', '35', '43', null, '1', '2021-04-03 13:39:53', '0');
INSERT INTO `message` VALUES ('143', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '33', '3', '2021-04-03 13:40:01', '0');
INSERT INTO `message` VALUES ('144', '动态通知', '用户评论了你的动态', '1', '35', '35', '43', null, '1', '2021-04-03 13:40:13', '0');
INSERT INTO `message` VALUES ('145', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '34', '3', '2021-04-03 13:40:19', '0');
INSERT INTO `message` VALUES ('146', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-03 13:40:40', '0');
INSERT INTO `message` VALUES ('147', '关注通知', '用户关注了你', '1', '3', '35', null, null, '1', '2021-04-03 13:44:06', '0');
INSERT INTO `message` VALUES ('148', '', '从不是是发DVD发表v', '2', null, '35', null, null, '2', '2021-04-03 13:49:40', '1');
INSERT INTO `message` VALUES ('149', '潇洒下是', '阿萨德心爱的三厢车', '35', null, '2', null, null, '2', '2021-04-03 13:52:32', '0');
INSERT INTO `message` VALUES ('150', '你刚发你', '辜负你', '35', null, '2', null, null, '2', '2021-04-03 13:53:32', '0');
INSERT INTO `message` VALUES ('151', '按时擦拭擦是', '按时擦拭擦是从', '35', null, '2', null, null, '2', '2021-04-03 13:54:03', '0');
INSERT INTO `message` VALUES ('152', '擦擦撒擦擦是', '按时擦擦从', '35', null, '2', null, null, '2', '2021-04-03 13:54:11', '0');
INSERT INTO `message` VALUES ('153', '西安市西安市', '按顺序三', '35', null, '2', null, null, '2', '2021-04-03 13:54:44', '0');
INSERT INTO `message` VALUES ('154', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:54:59', '0');
INSERT INTO `message` VALUES ('155', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:55:04', '0');
INSERT INTO `message` VALUES ('156', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:55:10', '0');
INSERT INTO `message` VALUES ('157', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:56:18', '0');
INSERT INTO `message` VALUES ('158', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:56:39', '0');
INSERT INTO `message` VALUES ('159', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:57:51', '0');
INSERT INTO `message` VALUES ('160', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:58:21', '0');
INSERT INTO `message` VALUES ('161', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-03 13:59:32', '0');
INSERT INTO `message` VALUES ('162', 'ascasc', '吃的是草的SV', '35', null, '2', null, null, '2', '2021-04-03 14:08:03', '0');
INSERT INTO `message` VALUES ('163', '擦擦删除', '按时西安市西安市', '35', null, '2', null, null, '2', '2021-04-03 14:08:23', '0');
INSERT INTO `message` VALUES ('164', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-03 14:10:40', '0');
INSERT INTO `message` VALUES ('165', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-03 14:12:05', '0');
INSERT INTO `message` VALUES ('166', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-03 14:25:36', '0');
INSERT INTO `message` VALUES ('167', '关注通知', '用户关注了你', '1', '10', '1', null, null, '1', '2021-04-03 20:21:32', '0');
INSERT INTO `message` VALUES ('168', '动态通知', '用户转发了你的动态', '1', '4', '35', '43', null, '1', '2021-04-04 11:56:17', '0');
INSERT INTO `message` VALUES ('169', '动态通知', '用户转发了你的动态', '1', '4', '35', '1', null, '1', '2021-04-04 11:56:31', '0');
INSERT INTO `message` VALUES ('170', '动态通知', '用户转发了你的动态', '1', '4', '35', '43', null, '1', '2021-04-04 11:58:32', '0');
INSERT INTO `message` VALUES ('171', '动态通知', '用户转发了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 11:59:24', '0');
INSERT INTO `message` VALUES ('172', '动态通知', '用户转发了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 11:59:35', '0');
INSERT INTO `message` VALUES ('173', '动态通知', '用户转发了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 11:59:49', '0');
INSERT INTO `message` VALUES ('174', '动态通知', '用户点赞了你的动态', '1', '35', '35', '43', null, '1', '2021-04-04 12:00:13', '0');
INSERT INTO `message` VALUES ('175', '动态通知', '用户评论了你的动态', '1', '35', '35', '42', null, '1', '2021-04-04 12:00:36', '0');
INSERT INTO `message` VALUES ('176', '关注通知', '用户关注了你', '1', '35', '3', null, null, '1', '2021-04-04 13:05:07', '0');
INSERT INTO `message` VALUES ('177', '关注通知', '用户关注了你', '1', '1', '2', null, null, '1', '2021-04-06 22:27:56', '0');
INSERT INTO `message` VALUES ('178', '关注通知', '用户关注了你', '1', '1', '2', null, null, '1', '2021-04-06 22:27:58', '0');
INSERT INTO `message` VALUES ('179', '关注通知', '用户关注了你', '1', '1', '2', null, null, '1', '2021-04-06 22:29:46', '0');
INSERT INTO `message` VALUES ('180', '更新通知', '你的关注更新了动态', '1', '35', '1', '44', null, '1', '2021-04-13 13:34:06', '0');
INSERT INTO `message` VALUES ('181', '更新通知', '你的关注更新了动态', '1', '35', '2', '44', null, '1', '2021-04-13 13:34:06', '0');
INSERT INTO `message` VALUES ('182', '更新通知', '你的关注更新了动态', '1', '35', '3', '44', null, '1', '2021-04-13 13:34:06', '0');
INSERT INTO `message` VALUES ('183', '系统通知', '你的文章已被驳回', '1', null, '1', null, null, '0', '2021-04-13 16:45:27', '0');
INSERT INTO `message` VALUES ('184', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:49:03', '0');
INSERT INTO `message` VALUES ('185', '系统通知', '你的文章已通过审核', '1', null, '2', null, null, '0', '2021-04-13 16:50:06', '0');
INSERT INTO `message` VALUES ('186', '系统通知', '你的文章已通过审核', '1', null, '2', null, null, '0', '2021-04-13 16:50:13', '0');
INSERT INTO `message` VALUES ('187', '系统通知', '你的文章已通过审核', '1', null, '9', null, null, '0', '2021-04-13 16:51:34', '0');
INSERT INTO `message` VALUES ('188', '系统通知', '你的文章已被驳回', '1', null, '2', null, null, '0', '2021-04-13 16:51:41', '0');
INSERT INTO `message` VALUES ('189', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:53:45', '0');
INSERT INTO `message` VALUES ('190', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:54:06', '0');
INSERT INTO `message` VALUES ('191', '系统通知', '你的文章已通过审核', '1', null, '1', null, null, '0', '2021-04-13 16:55:40', '0');
INSERT INTO `message` VALUES ('192', '系统通知', '你的文章《中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座》已通过审核', '1', null, '9', null, null, '0', '2021-04-13 17:02:34', '0');
INSERT INTO `message` VALUES ('193', '系统通知', '你的文章《待审核测试》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:03:11', '0');
INSERT INTO `message` VALUES ('194', '系统通知', '你的文章《3333333333333》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:03:22', '0');
INSERT INTO `message` VALUES ('195', '系统通知', '你的文章《实拍沃尔沃S90 美观的优先级是要大于实用性的吗？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:03:34', '0');
INSERT INTO `message` VALUES ('196', '系统通知', '你的文章《22222222222222222》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:04:17', '0');
INSERT INTO `message` VALUES ('197', '系统通知', '你的文章《已驳回测试》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:04:27', '0');
INSERT INTO `message` VALUES ('198', '系统通知', '你的文章《第一试驾丨福特领裕，能否叫板汉兰达？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:04:29', '0');
INSERT INTO `message` VALUES ('199', '系统通知', '你的文章《试驾宝马6系GT：2.0T+8AT，踩下油门，推背感喷涌而出》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:06:13', '0');
INSERT INTO `message` VALUES ('200', '系统通知', '你的文章《中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座》已通过审核', '1', null, '9', null, null, '0', '2021-04-13 17:06:29', '0');
INSERT INTO `message` VALUES ('201', '系统通知', '你的文章《实拍沃尔沃S90 美观的优先级是要大于实用性的吗？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:07:20', '0');
INSERT INTO `message` VALUES ('202', '系统通知', '你的文章《3333333333333》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:14:01', '0');
INSERT INTO `message` VALUES ('203', '系统通知', '你的文章《待审核测试》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:14:09', '0');
INSERT INTO `message` VALUES ('204', '系统通知', '你的文章《国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:14:28', '0');
INSERT INTO `message` VALUES ('205', '系统通知', '你的文章《买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:15:51', '0');
INSERT INTO `message` VALUES ('206', '系统通知', '你的文章《实拍沃尔沃S90 美观的优先级是要大于实用性的吗？》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:16:04', '0');
INSERT INTO `message` VALUES ('207', '系统通知', '你的文章《国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡》已被驳回', '1', null, '1', null, null, '0', '2021-04-13 17:17:06', '0');
INSERT INTO `message` VALUES ('208', '系统通知', '你的文章《买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜》已被驳回', '1', null, '1', null, null, '0', '2021-04-13 17:19:12', '0');
INSERT INTO `message` VALUES ('209', '系统通知', '你的文章《国产SUV的智能辅助驾驶值得信赖吗？抢新体验WEY摩卡》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:19:16', '0');
INSERT INTO `message` VALUES ('210', '系统通知', '你的文章《买发动机送车还送牌照 东风本田CR-V PHEV给我太多惊喜》已通过审核', '1', null, '1', null, null, '0', '2021-04-13 17:19:17', '0');
INSERT INTO `message` VALUES ('211', '系统通知', '你的文章《22222222222222222》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:19:23', '0');
INSERT INTO `message` VALUES ('212', '系统通知', '你的文章《3333333333333》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:38:44', '0');
INSERT INTO `message` VALUES ('213', '系统通知', '你的文章《3333333333333》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:38:46', '0');
INSERT INTO `message` VALUES ('214', '系统通知', '你的文章《555555555555555555》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:38:49', '0');
INSERT INTO `message` VALUES ('215', '系统通知', '你的文章《已驳回测试》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:47:09', '0');
INSERT INTO `message` VALUES ('216', '系统通知', '你的文章《555555555555555555》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:47:21', '0');
INSERT INTO `message` VALUES ('217', '系统通知', '你的文章《555555555555555555》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:53:39', '0');
INSERT INTO `message` VALUES ('218', '系统通知', '你的文章《555555555555555555》已通过审核', '1', null, '2', null, null, '0', '2021-04-13 17:53:46', '0');
INSERT INTO `message` VALUES ('219', '系统通知', '你的文章《4444》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:53:59', '0');
INSERT INTO `message` VALUES ('220', '系统通知', '你的文章《待审核测试》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:54:18', '0');
INSERT INTO `message` VALUES ('221', '系统通知', '你的文章《555555555555555555》已被驳回', '1', null, '2', null, null, '0', '2021-04-13 17:54:20', '0');
INSERT INTO `message` VALUES ('222', '系统通知', '你的文章《RS 6首先是一款非常舒适的车型》已被驳回', '1', null, '2', null, null, '0', '2021-04-14 15:35:25', '0');
INSERT INTO `message` VALUES ('223', '系统通知', '你的文章《4444》已通过审核', '1', null, '2', null, null, '0', '2021-04-14 15:35:47', '0');
INSERT INTO `message` VALUES ('224', '系统通知', '你的文章《3333333333333》已被驳回', '1', null, '2', null, null, '0', '2021-04-14 15:35:50', '0');
INSERT INTO `message` VALUES ('225', '系统通知', '你的文章《RS 6首先是一款非常舒适的车型》已通过审核', '1', null, '2', null, null, '0', '2021-04-14 15:36:02', '0');
INSERT INTO `message` VALUES ('226', '系统通知', '你的文章《或于3月上市 新款4008/5008内饰实车图》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:48', '0');
INSERT INTO `message` VALUES ('227', '系统通知', '你的文章《比亚迪唐DM-i将于4月19日上海车展上市》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:50', '0');
INSERT INTO `message` VALUES ('228', '系统通知', '你的文章《CX-5黑骑士版等 马自达上海车展阵容》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:52', '0');
INSERT INTO `message` VALUES ('229', '系统通知', '你的文章《两种续航可选 威马W6将于4月16日上市》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:53', '0');
INSERT INTO `message` VALUES ('230', '系统通知', '你的文章《加速4秒内 极氪001将于4月15日首发上市》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:11:55', '0');
INSERT INTO `message` VALUES ('231', '系统通知', '你的文章《将于4月19日正式亮相 荣威鲸官图发布》已通过审核', '1', null, '3', null, null, '0', '2021-04-15 10:15:31', '0');
INSERT INTO `message` VALUES ('232', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-04-18 18:16:26', '0');
INSERT INTO `message` VALUES ('233', '关注通知', '用户关注了你', '1', '35', '4', null, null, '1', '2021-04-18 18:16:32', '0');
INSERT INTO `message` VALUES ('234', '动态通知', '用户点赞了你的评论', '1', '35', '7', null, '6', '3', '2021-04-21 13:52:21', '0');
INSERT INTO `message` VALUES ('235', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-04-21 13:52:29', '0');
INSERT INTO `message` VALUES ('236', '关注通知', '用户关注了你', '1', '35', '7', null, null, '1', '2021-04-21 13:52:49', '0');
INSERT INTO `message` VALUES ('237', '动态通知', '用户点赞了你的评论', '1', '35', '35', null, '31', '3', '2021-04-23 09:39:21', '0');
INSERT INTO `message` VALUES ('238', '动态通知', '用户点赞了你的动态', '1', '35', '35', '1', null, '1', '2021-04-23 09:39:28', '0');
INSERT INTO `message` VALUES ('239', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-04-23 09:42:21', '0');
INSERT INTO `message` VALUES ('240', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-23 09:43:51', '0');
INSERT INTO `message` VALUES ('241', '关注通知', '用户关注了你', '1', '35', '5', null, null, '1', '2021-04-23 09:44:14', '0');
INSERT INTO `message` VALUES ('242', '关注通知', '用户关注了你', '1', '35', '2', null, null, '1', '2021-04-23 09:44:22', '0');
INSERT INTO `message` VALUES ('243', 'shidjsa', '待上传的SV的SV', '35', null, '2', null, null, '2', '2021-04-23 09:44:34', '0');
INSERT INTO `message` VALUES ('244', '更新通知', '你的关注更新了动态', '1', '2', '35', '45', null, '1', '2021-04-23 09:46:48', '0');
INSERT INTO `message` VALUES ('245', '动态通知', '用户评论了你的动态', '1', '2', '2', '45', null, '1', '2021-04-23 09:47:01', '0');
INSERT INTO `message` VALUES ('246', '动态通知', '用户点赞了你的评论', '1', '2', '2', null, '36', '3', '2021-04-23 09:47:04', '0');
INSERT INTO `message` VALUES ('247', '动态通知', '用户点赞了你的动态', '1', '2', '2', '45', null, '1', '2021-04-23 09:47:11', '0');
INSERT INTO `message` VALUES ('248', '动态通知', '用户转发了你的动态', '1', '2', '2', '45', null, '1', '2021-04-23 09:47:17', '0');
INSERT INTO `message` VALUES ('249', '动态通知', '用户点赞了你的动态', '1', '2', '2', '45', null, '1', '2021-04-23 09:47:31', '0');
INSERT INTO `message` VALUES ('250', '动态通知', '用户评论了你的动态', '1', '2', '2', '45', null, '1', '2021-04-23 09:47:34', '0');
INSERT INTO `message` VALUES ('251', '动态通知', '用户点赞了你的评论', '1', '2', '2', null, '37', '3', '2021-04-23 09:47:38', '0');
INSERT INTO `message` VALUES ('252', '系统通知', '你的文章《新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展》已通过审核', '1', null, '2', null, null, '0', '2021-04-23 10:03:36', '0');
INSERT INTO `message` VALUES ('253', '系统通知', '你的文章《新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展》已被驳回', '1', null, '2', null, null, '0', '2021-04-23 10:04:29', '0');
INSERT INTO `message` VALUES ('254', '222', '回复谢耳朵', '2', null, '35', null, null, '2', '2021-04-23 10:14:14', '0');
INSERT INTO `message` VALUES ('255', '111', '收到', '35', null, '2', null, null, '2', '2021-04-23 10:14:41', '0');
INSERT INTO `message` VALUES ('256', '动态通知', '用户点赞了你的动态', '1', '35', '2', '45', null, '1', '2021-04-23 20:20:59', '0');
INSERT INTO `message` VALUES ('257', '动态通知', '用户评论了你的动态', '1', '35', '35', '44', null, '1', '2021-04-23 20:23:22', '0');
INSERT INTO `message` VALUES ('258', '动态通知', '用户评论了你的动态', '1', '35', '35', '44', null, '1', '2021-04-23 20:23:29', '0');
INSERT INTO `message` VALUES ('259', '动态通知', '用户点赞了你的动态', '1', '35', '35', '44', null, '1', '2021-04-23 20:23:36', '0');
INSERT INTO `message` VALUES ('260', '系统通知', '你的文章《新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展》已通过审核', '1', null, '2', null, null, '0', '2021-04-23 20:34:32', '0');
INSERT INTO `message` VALUES ('261', '关注通知', '用户关注了你', '1', '2', '35', null, null, '1', '2021-04-23 20:35:20', '0');
INSERT INTO `message` VALUES ('262', '关注通知', '用户关注了你', '1', '2', '35', null, null, '1', '2021-04-23 20:36:07', '0');
INSERT INTO `message` VALUES ('263', '关注通知', '用户关注了你', '1', '2', '35', null, null, '1', '2021-04-23 20:36:16', '0');
INSERT INTO `message` VALUES ('264', '', '46441651', '2', null, '35', null, null, '2', '2021-04-23 20:36:24', '0');
INSERT INTO `message` VALUES ('265', '动态通知', '用户评论了你的动态', '1', '35', '7', '34', null, '1', '2021-04-23 20:37:49', '0');
INSERT INTO `message` VALUES ('266', '关注通知', '用户关注了你', '1', '4', '1', null, null, '1', '2021-04-23 20:38:38', '0');
INSERT INTO `message` VALUES ('267', '动态通知', '用户点赞了你的评论', '1', '4', '2', null, '37', '3', '2021-04-23 20:42:27', '0');
INSERT INTO `message` VALUES ('268', '更新通知', '你的关注更新了动态', '1', '35', '1', '46', null, '1', '2021-04-25 17:27:01', '0');
INSERT INTO `message` VALUES ('269', '更新通知', '你的关注更新了动态', '1', '35', '3', '46', null, '1', '2021-04-25 17:27:01', '0');
INSERT INTO `message` VALUES ('270', '更新通知', '你的关注更新了动态', '1', '35', '2', '46', null, '1', '2021-04-25 17:27:01', '0');
INSERT INTO `message` VALUES ('271', '动态通知', '用户点赞了你的动态', '1', '35', '35', '46', null, '1', '2021-04-25 17:27:04', '0');
INSERT INTO `message` VALUES ('272', '关注通知', '用户关注了你', '1', '35', '1', null, null, '1', '2021-04-25 21:14:00', '0');
INSERT INTO `message` VALUES ('273', '动态通知', '用户点赞了你的动态', '1', '35', '35', '46', null, '1', '2021-04-25 21:14:25', '0');
INSERT INTO `message` VALUES ('274', '动态通知', '用户转发了你的动态', '1', '35', '35', '46', null, '1', '2021-04-25 21:14:33', '0');
INSERT INTO `message` VALUES ('275', '系统通知', '你的视频《null》已被驳回', '1', null, '2', null, null, '0', '2021-04-26 17:46:36', '0');
INSERT INTO `message` VALUES ('276', '系统通知', '你的视频《123456》已通过审核', '1', null, '2', null, null, '0', '2021-04-26 17:48:52', '0');
INSERT INTO `message` VALUES ('277', '系统通知', '你的视频《123456》已被驳回', '1', null, '2', null, null, '0', '2021-04-26 17:49:40', '0');
INSERT INTO `message` VALUES ('278', '系统通知', '你的视频《123456》已通过审核', '1', null, '2', null, null, '0', '2021-04-26 17:49:57', '0');
INSERT INTO `message` VALUES ('279', '系统通知', '你的视频《回头率百分之百的纯电动超跑-前途K50，除了帅就一无是处了吗》已通过审核', '1', null, '2', null, null, '0', '2021-04-27 16:22:37', '0');
INSERT INTO `message` VALUES ('280', '更新通知', '你的关注更新了动态', '1', '2', '35', '47', null, '1', '2021-04-27 17:07:27', '0');
INSERT INTO `message` VALUES ('281', '更新通知', '你的关注更新了动态', '1', '35', '1', '48', null, '1', '2021-04-27 17:10:42', '0');
INSERT INTO `message` VALUES ('282', '更新通知', '你的关注更新了动态', '1', '35', '3', '48', null, '1', '2021-04-27 17:10:42', '0');
INSERT INTO `message` VALUES ('283', '更新通知', '你的关注更新了动态', '1', '35', '2', '48', null, '1', '2021-04-27 17:10:42', '0');
INSERT INTO `message` VALUES ('284', '动态通知', '用户评论了你的动态', '1', '2', '35', '48', null, '1', '2021-04-28 11:40:47', '0');
INSERT INTO `message` VALUES ('285', '动态通知', '用户点赞了你的评论', '1', '2', '2', null, '41', '3', '2021-04-28 11:40:51', '0');

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
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/3901a59ce4624e76bc7f87e653c0e929.jpg', '试驾北京现代第五代途胜L 是荣放和CR-V的对手吗？', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '3月22日北京现代公布了第五代途胜L的预售价17-21万元，而在这个价位中的丰田荣放、本田CR-V以及大众途观L等都是销量前茅的车型，如果最终上市价格不变的话，途胜L的前路并不算乐观，除非你更看重设计和车内用料等方面。前不久，我也对这款车有过很深入的静态体验，所以本期内容中就不对外观、内饰过多赘述了，我只讲讲优缺点。如果您关注这款车，错过了之前的节目，可以在58汽车平台上搜索途胜L，就可以找到上次的静态体验视频了，本次我将针对驾驶感受和大家分享，1.5T的动力够不够用？双离合变速箱的反映怎么样？底盘行驶质感怎样？悬架反馈如何？等等，当然也欢迎何为小伙伴在评论区与我分享，你是怎么看待这款新车的。', '1', '1', '2020-12-14 12:12:15', '369', null, '4', null, null);
INSERT INTO `news` VALUES ('2', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/59061726528e433385b0a1a79c62cdb0.jpg', '纯电模式续航里程85km 皓影PHEV车型将于4月上市', '外观方面，新车基本延续了燃油版车型的造型，前脸大块镀铬饰条一直延伸到了前大灯，整体非常霸气。侧面造型比较修长，车身下方的黑色饰条围绕全车，增加运动感。车尾部分整体呈梯形设计，增加了e+ PHEV标识，表明了其插电混动车型的身份，细长型的尾灯造型非常动感，点亮后辨识度很高。新车长宽高为4718*1861*1679mm，轴距为2660mm。\r\n\r\n\r\n\r\n内饰设计和配置预计都将沿用燃油版车型，搭载Honda CONNECT 2.0智导互联系统、Honda_link手机APP、Honda SENSING 安全超感等应该都会出现在皓影PHEV车型上。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '2', '2020-12-13 12:01:02', '29', null, '4', null, null);
INSERT INTO `news` VALUES ('3', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/09fb74d1d8b84d1bacc2f200ecfe5150.jpg', '年轻人的大玩具 广汽传祺EMPOW55将于上海车展亮相', '平心而论，即便广汽传祺的产品研发技术并不能算是国产顶尖水准，但在多年努力之下，似乎让广汽传祺变得更加纯熟，也有了相对稳定的销量和口碑。如果您想入手一款价格实惠，外观抢眼的轿跑车，不妨再等等广汽传祺EMPOW55，看他还能带来哪些惊喜。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '1', '2020-12-13 12:01:02', '40', null, '4', null, null);
INSERT INTO `news` VALUES ('4', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/046a0533f2df40b4816818f67bfc7fa1.jpg', '3·15曝光后续、现代汽车或用刀片电池、恒大腾讯合作', '韩国媒体最新报道，预计现代汽车将在中国销售的电动汽车中使用比亚迪生产的驱动电池，北京现代正在与比亚迪就刀片电池的供应进行谈判。\r\n\r\n据悉，比亚迪目前已经成立了一个负责与现代汽车合作的业务部门，并提出从2022年起向现代提供电池。据内部人士透露，如果现代方面愿意，比亚迪计划将重庆的部分电池装配线用于现代汽车的供货。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '1', '2020-12-13 12:01:02', '132', null, '4', null, null);
INSERT INTO `news` VALUES ('5', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/a02ecafb635243b1b5eec675dbe1e18c.jpg', 'RS 6首先是一款非常舒适的车型', '近日，东风日产全新奇骏的实车图曝光，新车将延续海外造型设计，并搭载最新开发的1.5T三缸可变压缩比发动机，发动机压缩比能在8:1至14:1之间智能切换，最大输出204匹马力，匹配模拟8速挡位的CVT变速箱。在此之前，新车已于2020年率先在北美市场发布。 相较于现款，新车的外观尺寸有所增加，轴距则保持不变。内饰方面，新车采用最新的设计语言，12.3英寸液晶仪表和9.0英寸悬浮式中控屏的组合，有效提升科技感。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '2', '2021-02-13 12:01:02', '60', null, '4', null, null);
INSERT INTO `news` VALUES ('6', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/351a704103b64ba3bbd503b779e631a8.jpg', '第一试驾丨福特领裕，能否叫板汉兰达？', '领裕的出现不仅仅是福特加码在中大型SUV的布局，更是江铃福特填补领界和撼路者两者之间的市场空白。作为继领界和撼路者之后的国产第三款SUV，主打6座布局的领裕能否在一众竞品当中脱颖而出，获得国人的喜爱呢？\r\n\r\n01 全新家族式设计，\r\n\r\n浓浓的美系大气之风\r\n\r\n在我们的印象中，说到美系的7座SUV一般都会联想到大气硬朗，且十分魁梧。这点在福特领裕上也有所体现，首先是车身比较魁梧，4米9的车身长度和2865mm的轴距要比汉兰达的车身大一圈。其次，领裕没有完全采用美系SUV那种肌肉感十足的线条设计，而是用一些凌厉线条来凸显其干练的外观，整体而言是大气而不臃肿。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '1', '2020-12-13 12:01:02', '257', null, '4', null, null);
INSERT INTO `news` VALUES ('7', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/7308f1fb368242e794ea7e79a16020cc.jpg', '试驾宝马6系GT：2.0T+8AT，踩下油门，推背感喷涌而出', '手握60万买宝马，我想绝大多数消费者都会选择一辆有着巨额优惠的730Li，虽然四缸发动机马力小了点，但毕竟是一辆宝马轿车序列里的旗舰车型，无论是出门见客户、还是回家看父母，都显得非常得体。不过对于一部分不愿意随大流的消费者，7系显得有些太过平淡，而且商务属性有些偏重，不太适合作为家庭用车。那么这个时候6系GT或许可以满足这部分消费者的用车需求。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '1', '2020-12-13 12:01:02', '16', null, '4', null, null);
INSERT INTO `news` VALUES ('8', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/03/4c3e07fafafd4cacbfd46f5eee3f96ce.jpg', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座', '2021年1月，星途品牌正式宣布旗下旗舰7座SUV正式定名为了 星途揽月 ( 参数 | 询价 ) 。3月18日，新车正式上市了，星途揽月共推出6款车型，290T车型搭载1.6T涡轮增压发动机，390T搭载2.0T涡轮增压发动机，全系售价区间为16.89-22.99万元。Lion 4.0雄狮智云系统、AR虚拟现实导航、人脸识别功能等都是它的特色配置，2.0T+7挡双离合变速箱+四驱系统也吊足了消费者的胃口，下面我们一起来看它的表现如何。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', null, '1', '9', '2020-12-13 12:01:02', '2556', null, '4', null, null);
INSERT INTO `news` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/762223b179eb4a7c883020ae0ced0a52.jpg', '加速4秒内 极氪001将于4月15日首发上市', '[汽车之家 新能源]  日前我们从极氪汽车官方获悉，其首款纯电动车极氪001(参数|询价)将于4月15日首发并上市。据了解，该车型搭载永磁双子电驱系统，官方数据显示其最大功率为400kW（约544Ps），峰值扭矩768N·m，0-100km/h加速时间为3.8秒，0-100km/h制动距离为34.5m，风阻系数Cd为0.23。据悉，极氪001性能版将搭配空气悬架和后轮转向系统，定位或将伸向运动豪华市场。', '外观方面，量产版车型与概念版区别不大，依旧是分体式大灯结构，前进气格栅与下半部分的远近光融为一体，形成贯穿式设计，提升了新车横向视觉宽度；上半部分为纵向布局的LED日间行车灯。新车前包围采用了较为运动化的设计，前唇的尺寸非常可观，为新车的运动感增加了强烈的视觉效果。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '车身侧面来看，新车整体造型较为平滑，并没有采用过多的线条刻画肌肉感，但前后突出车身的翼子板设计、门板上隆起的筋线，再搭配密条辐大尺寸轮圈，让整车的力量感得以展现。此外，新车还使用了无边框的车门，整体装饰条均为镀铬设计，让新车看上去非常霸气。值得一提的是，新车整体造型是有点类似Shooting Brake的设计理念，姿态非常优雅。', '内饰部分，新车采用8.8英寸的全液晶显示屏，搭配15.4英寸的中控多媒体触摸屏；三辐式多功能方向盘与短小的电子换挡机构相互配合，让新车看起来非常精致。 配置方面，新车配备了感应式无框车门、全自动空气悬架装置（150-220mm）、W-HUD超宽全色抬头显示系统、ECONYL环保赛车座椅、镭射真铝饰条、极光氛围灯等。车身尺寸方面，新车车长4950mm，轴距为2999mm。', '动力方面，新车基于SEA浩瀚架构打造，此前官方曾公布概念版的NEDC续航里程超过700公里。值得一提的是，该车型搭载永磁双子电驱系统，官方数据显示其最大功率为400kW（约544Ps），峰值扭矩768N·m，0-100km/h加速时间为3.8秒，0-100km/h制动距离为34.5m，风阻系数Cd为0.23。（文/汽车之家 姚嘉）', '', '1', '3', '2021-04-15 10:00:40', '0', 'b6ccdd59c2c64919bbb8e8626a1b4d2d', '4', '极氪001', '2021年04月15日');
INSERT INTO `news` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/5cb958d4adb64e9aa1702084dfac5159.jpg', '两种续航可选 威马W6将于4月16日上市', '[汽车之家 资讯] 日前，汽车之家从威马汽车官方获悉，威马W6(参数|询价)将于4月16日正式上市并开启交付。此前，新车已经开启预售，消费者只需支付6.6元购车意向金即可成为预约客户。据悉，该车有520km/620km两种续航里程可选，“无人自主泊车系统”是新车的亮点。', '回顾一下这款新车，威马W6最早在百度“2020 Apollo生态大会”上亮相。外观方面，新车继承了威马家族式设计语言，并有所创新，前脸竖状的灯带让新车显得十分犀利。', '侧面，威马W6的线条十分流畅，整体造型更显稳重；车身长宽高分别为4620/1847/1730mm，轴距为2715mm，定位为中型SUV。', '威马W6的尾部采用简约的设计风格，没有过多花哨的设计，配合造型精致的贯穿式尾灯，十分耐看。', '内饰方面，新车采用双联屏设计，搭载12.3英寸全液晶数字仪表屏和12.3英寸悬浮智能屏幕，再搭配出风口下方的控制面板，科技感十足。', '动力方面，申报信息显示，威马W6搭载最大功率为160kW的电机，并提供520km/620km两种续航里程可选。\n\n　　威马W6采用了全新电子电气架构，并搭载首款7纳米制程车规级高通8155芯片、5G基带以及威马汽车自研的自动驾驶域控制器，借助百度Apollo平台的百万级云算力，实现高阶辅助驾驶能力。', '新车最大的亮点自然是“无人自主泊车系统”，该系统分为HAVP（自主学习泊车）和PAVP（高精地图泊车）两种无人驾驶泊车场景。可让车主在地库实现通过手机操作车辆无人驾驶泊入/泊出车位；而PAVP可实现在公共场所停车时自动寻找车位，无固定路线场景的无人驾驶，包括自动上下停车楼等复杂寻车位路线。（文/汽车之家 邢月阳）', '1', '3', '2021-04-15 10:03:38', '1', '8cb6aeaf515b4f3fa856b8b5180f3f3d', '4', '威马W6', '2021年04月16日');
INSERT INTO `news` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/d8570ce3a7e8410c93d019e5375575d4.jpg', 'CX-5黑骑士版等 马自达上海车展阵容', '[汽车之家 资讯]  日前，马自达公布了2021上海车展的新车阵容。其中，马自达CX-5(参数|询价)黑骑士版及耀夜特装版将于4月17日上海车展前夕正式上市，其中黑骑士版的外观、内饰将全面焕新，安全、舒适、智能科技等配置也将进行升级。', '外观方面，新车基本延续在售车型设计风格，盾型进气格栅及细长的大灯组造型，凸显新车的动感。在细节方面，这款黑骑士版多处进行了黑化处理，如前脸熏黑亮面的进气格栅、黑亮色后视镜罩、19英寸铝合金黑色金属色泽轮圈、黑色皮质座椅等。', '除此之外，新车还将在安全、舒适、科技等配置方面进行升级，将把配置提升至同级别车型领先水平。目前具体的升级内容尚未公布，我们也将持续关注新车动态。\n\n　　动力方面，新车或将继续搭载2.0L和2.5L两款创驰蓝天发动机，最大功率分别为155马力和196马力，传动方面将匹配6速手自一体变速箱。另据官方介绍，CX-5黑骑士版即将投放中国市场，将在长安马自达南京工厂进行生产。', ' 马自达还将在本届上海车展亮相其首款新能源车型，以展示其在电动化领域的成果。据我们猜测，首款新能源车型很可能是一款纯电动小型SUV，内部代号为J59E，是基于J59Y（CX-30）在中国市场国产化后的技术改造的产品。车身尺寸方面，新车长宽高分别为4409/1835/1667mm，轴距为2672mm。相比CX-30来看，其车身尺寸有小幅增加。', '动力方面，J59E将搭载最大功率160kW的电动机，最大扭矩或为300N·m。此外，J59E的百公里耗电量以及电池组容量和长安CS55纯电动版相近，续航里程为400km，0-100km/h加速时间8.3秒。\n\n　　 CX-5耀夜特装版是马自达另一款即将展出的新车，目前官方未对新车进行更多信息露出。我们将持续保持关注。（文/汽车之家 宋爱菊）', '', '', '1', '3', '2021-04-15 10:05:58', '3', 'f0ddb8e92b1846a3bd8dc35cdef434a6', '4', 'CX-5黑骑士版', '2021年04月17日');
INSERT INTO `news` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/2c57f6d57faa4a928a9c636ccd7794e6.jpg', '比亚迪唐DM-i将于4月19日上海车展上市', '[汽车之家 资讯]  日前，我们从相关渠道获悉，比亚迪唐(参数|询价)DM-i将于4月19日开幕的2021上海车展正式上市，新车基于比亚迪DM-i平台进行打造，动力更换为全新的1.5T插电式混动动力总成。新车目前已经开启预售，预售价19.78-22.48万元。', '作为比亚迪打造的中型SUV，比亚迪唐DM-i延续了家族风格的Dragon Face设计语言，整体我们无法看出与在售的唐DM有明显区别，内饰方面，我们也相信二者将保持高度的一致。配置方面，新车将提供DiLink 3.0智能网联系统和DiPilot智能驾驶辅助系统，包含15.6英寸大屏、全速自适应巡航、前碰撞预警系统、自动紧急制动系统、行人识别/保护系统、车道偏离预警系统等。', '作为唐旗下最新车型，唐DM-i最大的特点来自于动力系统，搭载1.5T发动机和电动机组成的插电混动系统，并且采用了磷酸铁锂“刀片电池”，根据配置不同，该车有纯电续航52km和112km两种车型，亏电工况下的油耗分别为5.3L/100km和5.5L/100km，其0-100km/h加速时间为8.5s。（文/汽车之家 耿源）', '', '', '', '', '1', '3', '2021-04-15 10:08:14', '4', '1c3b86f37afd4c02a7e864168e6c98e0', '4', '唐DM-i', '2021年04月19日');
INSERT INTO `news` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/fb6ad9e0d3c24dd18a2175e966d5882e.jpg', '或于3月上市 新款4008/5008内饰实车图', '[汽车之家 资讯]  近日，我们拍摄到了新款标致4008(参数|询价)/5008的内饰实车图。这两款车中控设计继续保持一致，并均延续了此前设计，最大的特点是两款新车的中控屏尺寸更大，进一步凸显科技感。据悉，这两款新车或将于2021年3月份正式上市。', '此外，两款新车的座椅均升级为浅棕色皮质座椅，搭配大面积的Alcantara装饰，以期进一步提升了新车的质感和高级感。', '外观方面，新款5008与新款4008一样，均采用标致品牌全新锋锐设计语言，搭载散射状点阵式造型的前进气格栅，以及标致品牌全新狮徽LOGO。', '动力方面，新款标致4008/5008均提供1.6T及1.8T涡轮增压发动机两种选择，其中1.6T发动机最大功率170马力，最大扭矩250牛·米；1.8T发动机最大功率211马力，最大扭矩300牛·米。传动系统方面，原来的1.6T+6AT组合也有望升级为1.6T+8AT，这意味着全系车型将搭配8AT变速箱。', '极具设计感的内饰造型一直是标致4008及5008的一大特点，此次在继续保持年轻时尚的内饰设计基础上，增加了中控屏的尺寸，算是迎合了当前的趋势。此外，更加时尚的外观造型也是加分项，这些提升或助力新款标致4008/5008取得更好的销量成绩。（文/汽车之家 才丽媛）', '', '', '1', '3', '2021-04-15 10:10:13', '9', 'c8c96d4f26f64b92b5c78981ac2e5668', '4', '新款标致4008', '2021年04月19日');
INSERT INTO `news` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/15/7b544aabd405442e883e5d08d01d0849.jpg', '将于4月19日正式亮相 荣威鲸官图发布', '　[汽车之家 新车官图]  4月15日，我们从上汽荣威官方获取到了旗下全新SUV——鲸(参数|询价)的官图。新车采用“律动唤醒”设计，整体视觉效果更加科幻、时尚，同时，作为荣威全新系列的首款产品，荣威鲸将承担起加速品牌年轻化/个性化进程、推动品牌升级向上任务。此外，新车将在4月19日开幕的上海车展中亮相（3.1号馆上汽荣威展台）。', '外观方面，作为“律动唤醒”设计理念的首款车型，新车整体脱离了现有荣威车型的设计语言，视觉效果更加犀利、时尚。具体来看，该车配备类似封闭式直瀑进气格栅造型，凌厉的线条设计，搭配犀利的分体式大灯组（官方称为“能量立方”灯组），以及梯形进气口，让新车看上去十分大气且科幻。', '车身侧面来看，该车采用溜背造型，和前冲的发动机舱盖前后呼应，营造超强运动感。同时，悬浮式车车顶的采用搭配双五辐式轮圈造型，让新车十分年轻、运动。同时，该车还配备了当下十分流行的隐藏式车门把手，从而提升科技感。', '尾部方面，新车整体采用了类似横平竖直的造型风格，其尾灯则采用了“星际隧道”设计，灵感来源于时空隧道。同时，多边形的拍照区域搭配双边共两出的排气布局以及车顶上方的较大尺寸的扰流板，带来了强烈的视觉冲击，极具个性。关于新车更多消息，我们也将持续关注。（文/汽车之家 周易）', '', '', '', '1', '3', '2021-04-15 10:14:58', '25', 'd95bcdca4e154a76928813265a615743', '4', '荣威鲸', '2021年04月19日');
INSERT INTO `news` VALUES ('62', '', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座\n', '8', '2', '2021-04-20 17:14:02', '4', '4f355cdbec424b24927afcb934cda753', '3', '', '');
INSERT INTO `news` VALUES ('64', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/23/1b4653a0076c4d79a5b6dc6d3dee6e1b.jpg', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '', '', '3', '2', '2021-04-23 10:02:28', '2', 'f308396b47dd458d966a89f0bd387542', '5', '', '');
INSERT INTO `news` VALUES ('65', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tx/2021/04/23/454e094518634453a74873364f5af9a0.jpg', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '基于全新设计语言打造，第四代汉兰达在外观上有非常明显的改善。在流行大尺寸进气格栅的今天，新车反而缩小了格栅尺寸，转而通过与前包围的设计搭配，进一步丰富前脸的层次感。同时，新车将搭载全新设计后的大灯组，内部采用三颗并列排布的灯源。', '', '', '9', '2', '2021-04-23 20:32:58', '29', 'c10047ead2224160913b7ba085e095ee', '4', '', '');

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
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/558fc7fdfd15471ba11fd913e79c8f11.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/1f3a6f054da1413bb8c7c5c83319a7c9.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/16fb33207c0b4c828bc1dce94b8af3fa.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/419e9a1228ee4ae99584fdc256713adb.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/0f9eddaa997a42d388b47bd6ef186fe2.jpg', null, null);
INSERT INTO `photo` VALUES ('1', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/03/f5908ab89edd46d9ac819a407584e9c2.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/edf5e827c3a14550a316390048e66ba5.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/2ac9c1d59abd41a092e61c785af55a30.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/e7ec5b68e5aa406b987a00a898254c39.jpg', null, null);
INSERT INTO `photo` VALUES ('56', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/931236ba930d401f8d4d1b16713f0b8e.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/cd512e90f1b44de68ffc06d94856530b.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/7896fd2d05b64e5cade744bece6e03b7.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/90fe0026abee4c08aec09cea145d82ff.jpg', null, null);
INSERT INTO `photo` VALUES ('57', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/4ff7112f6f404f9ca36a1668f1a4b94a.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/81c715b019244c0da880e0ba120dad9e.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/5a2fc1a0fce2428083db2732a7fdddbe.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/e16e748a90394938b9bd3b2cdcfca09c.jpg', null, null);
INSERT INTO `photo` VALUES ('58', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/5d734521de634c0a904d8b43399519c0.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/44ab3384a7b347839a9649d7c92d9e4c.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/aa7226dd549a4e1f8e240c74a966798c.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/b16b88c7e13045d1b9a67c0b266f24b6.jpg', null, null);
INSERT INTO `photo` VALUES ('59', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/60b270a2bf7a44669b22d3f556ed95ec.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/b6fc8367cd69491cb412c4d392700159.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/bf86c0fdb6b64360af0c6ef7ee2c7b6b.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/9c76507acdd94f5a98f3fd8898edaaaf.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/d208cfde503a4d18aa30bb4b8249a2cd.jpg', null, null);
INSERT INTO `photo` VALUES ('60', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/2a09652b861f4c72ad22f364ab8d57fb.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/257ef4b26fef416987d71c85053efd4c.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/2b0ed8c88a6c463dafec10f1b7df6b4a.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/e17529c74f914f7a8e347cb335c9c21f.jpg', null, null);
INSERT INTO `photo` VALUES ('61', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/15/5a41342365b8411790d4e65908820f8c.jpg', null, null);
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/e767bdb0f65f48c5afa26b2b1fe5f2de.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/66abd694aa9b4e31abc101da0199bbfb.jpg', null, '1');
INSERT INTO `photo` VALUES ('64', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/70704a1c102b4e54b945993263c63bd5.jpg', null, null);
INSERT INTO `photo` VALUES ('64', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/559f9f891873427183499e51686834cb.jpg', null, null);
INSERT INTO `photo` VALUES ('64', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/31acb265e95a4611b5385c5a2b8a6536.jpg', null, null);
INSERT INTO `photo` VALUES ('65', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/f6d555229771468a92a442fff07680ee.jpg', null, null);
INSERT INTO `photo` VALUES ('65', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/89b856be05ee4e999e65f63f1dae582b.jpg', null, null);
INSERT INTO `photo` VALUES ('65', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/027ef92747a148b2a61c6e7cefe0106c.jpg', null, null);
INSERT INTO `photo` VALUES ('65', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/news/tj/2021/04/23/4c0c976c1c544d4e96138466cd98f893.png', null, null);
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');
INSERT INTO `photo` VALUES (null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tj/2021/04/20/52b2f5e74b37409b9a70b5b5597a0f16.jpg', null, '1');

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
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('18', '1', '汽车之家', '2021-03-17 14:42:40', '密码错误，登陆失败', '', '');
INSERT INTO `record` VALUES ('19', '1', '汽车之家', '2021-03-17 14:43:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('20', '1', '汽车之家', '2021-03-17 14:43:13', '注销成功', '', '');
INSERT INTO `record` VALUES ('21', '1', '汽车之家', '2021-03-17 15:24:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('22', '1', '汽车之家', '2021-03-17 15:24:08', '注销成功', '', '');
INSERT INTO `record` VALUES ('23', '1', '汽车之家', '2021-03-17 15:25:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('24', '1', '汽车之家', '2021-03-17 15:25:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('25', '1', '汽车之家', '2021-03-17 15:58:54', '登录成功', '', '');
INSERT INTO `record` VALUES ('26', '1', '汽车之家', '2021-03-17 16:34:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('27', '1', '汽车之家', '2021-03-17 16:37:48', '登录成功', '', '');
INSERT INTO `record` VALUES ('28', '1', '汽车之家', '2021-03-17 16:41:34', '登录成功', '', '');
INSERT INTO `record` VALUES ('29', '1', '汽车之家', '2021-03-17 17:19:13', '登录成功', '', '');
INSERT INTO `record` VALUES ('30', '1', '汽车之家', '2021-03-17 20:42:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('31', '1', '汽车之家', '2021-03-17 20:42:39', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('32', '1', '汽车之家', '2021-03-17 20:42:55', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('33', '1', '汽车之家', '2021-03-17 20:49:10', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('34', '1', '汽车之家', '2021-03-17 20:49:57', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('35', '1', '汽车之家', '2021-03-17 21:11:11', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('36', '1', '汽车之家', '2021-03-17 21:11:12', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('37', '1', '汽车之家', '2021-03-17 21:14:54', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('38', '1', '汽车之家', '2021-03-17 21:14:56', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('39', '1', '汽车之家', '2021-03-17 21:18:44', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('40', '1', '汽车之家', '2021-03-17 21:18:46', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('41', '1', '汽车之家', '2021-03-17 21:22:21', '登录成功', '', '');
INSERT INTO `record` VALUES ('42', '1', '汽车之家', '2021-03-17 21:28:36', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('43', '1', '汽车之家', '2021-03-17 21:28:37', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('44', '1', '汽车之家', '2021-03-17 21:29:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('45', '1', '汽车之家', '2021-03-17 21:30:09', '删除消息：关注通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('46', '1', '汽车之家', '2021-03-18 09:13:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('47', '1', '汽车之家', '2021-03-18 09:40:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('48', '0:0:0:0:0:0:0:1', '', '2021-03-18 09:40:03', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('49', '1', '汽车之家', '2021-03-18 09:40:03', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('50', '1', '汽车之家', '2021-03-18 09:40:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('51', '1', '汽车之家', '2021-03-18 09:40:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('52', '773601602@qq.com', '', '2021-03-18 09:40:03', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('53', '773601602@qq.com', '1', '2021-03-18 09:40:03', '注册成功', '', '');
INSERT INTO `record` VALUES ('54', '18', '1', '2021-03-18 09:40:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('55', '18', '1', '2021-03-18 09:40:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('56', '3', '1', '2021-03-18 09:40:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('57', '3', '1', '2021-03-18 10:22:40', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('58', '3', '1', '2021-03-18 10:30:36', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('59', '3', '1', '2021-03-18 10:49:58', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('60', '3', '1', '2021-03-18 11:44:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('61', '2', 'Superb', '2021-03-18 11:44:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('62', '2', 'Superb', '2021-03-18 11:44:52', '删除消息：点赞通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('63', '2', 'Superb', '2021-03-18 11:44:52', '删除消息：评论通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('64', '2', 'Superb', '2021-03-18 11:44:52', '删除消息：转发通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('65', '2', 'Superb', '2021-03-18 03:32:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('66', '2', 'Superb', '2021-03-18 03:32:51', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('67', '2', 'Superb', '2021-03-18 03:32:51', '登录成功', '', '');
INSERT INTO `record` VALUES ('68', '3', '1', '2021-03-18 04:41:28', '登录成功', '', '');
INSERT INTO `record` VALUES ('69', '3', '1', '2021-03-18 04:41:28', '注销成功', '', '');
INSERT INTO `record` VALUES ('70', '2', 'Superb', '2021-03-18 04:41:28', '登录成功', '', '');
INSERT INTO `record` VALUES ('71', '3', '1', '2021-03-18 05:01:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('72', '3', '1', '2021-03-18 05:28:49', '发表动态', '', '111');
INSERT INTO `record` VALUES ('73', '3', '1', '2021-03-18 05:28:49', '发表动态', '', '111');
INSERT INTO `record` VALUES ('74', '3', '1', '2021-03-18 05:28:49', '注销成功', '', '');
INSERT INTO `record` VALUES ('75', '1', '汽车之家', '2021-03-18 05:28:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('76', '1', '汽车之家', '2021-03-18 05:28:49', '注销成功', '', '');
INSERT INTO `record` VALUES ('77', '2', 'Superb', '2021-03-18 05:28:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('78', '2', 'Superb', '2021-03-18 05:28:49', '注销成功', '', '');
INSERT INTO `record` VALUES ('79', '3', '1', '2021-03-18 05:28:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('80', '3', '1', '2021-03-18 05:28:49', '发表动态', '', '2222');
INSERT INTO `record` VALUES ('81', '3', '1', '2021-03-18 05:28:49', '发表动态', '', 'aaaa');
INSERT INTO `record` VALUES ('82', '3', '1', '2021-03-18 05:28:49', '发表动态', '', 'aaaa');
INSERT INTO `record` VALUES ('83', '3', '1', '2021-03-18 05:48:03', '发表动态', '', 'fff');
INSERT INTO `record` VALUES ('84', '3', '1', '2021-03-18 05:50:01', '注销成功', '', '');
INSERT INTO `record` VALUES ('85', '2', 'Superb', '2021-03-18 05:50:22', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('86', '2', 'Superb', '2021-03-18 05:50:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('87', '3', '1', '2021-03-18 08:01:19', '登录成功', '', '');
INSERT INTO `record` VALUES ('88', '3', '1', '2021-03-18 08:45:59', '发表动态', '', '111');
INSERT INTO `record` VALUES ('89', '3', '1', '2021-03-18 08:46:58', '发表动态', '', '1111');
INSERT INTO `record` VALUES ('90', '3', '1', '2021-03-18 08:48:44', '发表动态', '', '汽车保养');
INSERT INTO `record` VALUES ('91', '3', '1', '2021-03-18 09:11:58', '发表动态', '', '谢耳朵');
INSERT INTO `record` VALUES ('92', '3', '1', '2021-03-18 09:16:42', '发表动态', '', '1234213123213123');
INSERT INTO `record` VALUES ('93', '3', '1', '2021-03-18 10:03:43', '发表动态', '', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('94', '3', '1', '2021-03-18 10:05:27', '发表动态', '', '22222');
INSERT INTO `record` VALUES ('95', '2', 'Superb', '2021-03-19 09:52:00', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('96', '2', 'Superb', '2021-03-19 09:52:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('97', '2', 'Superb', '2021-03-19 09:57:06', '发表动态', '', '123');
INSERT INTO `record` VALUES ('98', '2', 'Superb', '2021-03-19 09:59:06', '注销成功', '', '');
INSERT INTO `record` VALUES ('99', '2', 'Superb', '2021-03-19 09:59:26', '登录成功', '', '');
INSERT INTO `record` VALUES ('100', '2', 'Superb', '2021-03-19 10:11:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('101', '2', 'Superb', '2021-03-19 11:58:55', '删除动态', '8', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('102', '2', 'Superb', '2021-03-19 12:00:29', '删除动态', '24', '123');
INSERT INTO `record` VALUES ('103', '2', 'Superb', '2021-03-19 01:02:33', '删除动态', '9', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('104', '2', 'Superb', '2021-03-19 01:02:53', '删除动态', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('105', '2', 'Superb', '2021-03-19 01:06:51', '发表动态', '', 'fdsvfdsvsfdv');
INSERT INTO `record` VALUES ('106', '2', 'Superb', '2021-03-19 01:07:22', '删除动态', '25', 'fdsvfdsvsfdv');
INSERT INTO `record` VALUES ('107', '2', 'Superb', '2021-03-19 01:07:30', '发表动态', '', 'dsafcdscds');
INSERT INTO `record` VALUES ('108', '2', 'Superb', '2021-03-19 01:08:30', '删除动态', '26', 'dsafcdscds');
INSERT INTO `record` VALUES ('109', '2', 'Superb', '2021-03-19 01:08:37', '发表动态', '', 'asdsasa');
INSERT INTO `record` VALUES ('110', '2', 'Superb', '2021-03-19 01:53:33', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('111', '2', 'Superb', '2021-03-19 01:54:55', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('112', '2', 'Superb', '2021-03-19 01:55:20', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('113', '2', 'Superb', '2021-03-19 01:56:27', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('114', '2', 'Superb', '2021-03-19 01:56:35', '转发动态', '27', 'asdsasa');
INSERT INTO `record` VALUES ('115', '2', 'Superb', '2021-03-19 01:57:08', '转发动态', '27', 'asdsasa');
INSERT INTO `record` VALUES ('116', '2', 'Superb', '2021-03-19 01:57:47', '转发动态', '27', 'asdsasa');
INSERT INTO `record` VALUES ('117', '2', 'Superb', '2021-03-19 01:57:55', '转发动态', '3', '换刹车盘也要磨合？刹车维保两三事');
INSERT INTO `record` VALUES ('118', '2', 'Superb', '2021-03-19 02:00:15', '发表动态', '', '111');
INSERT INTO `record` VALUES ('119', '2', 'Superb', '2021-03-19 02:02:35', '发表动态', '', '111');
INSERT INTO `record` VALUES ('120', '2', 'Superb', '2021-03-19 02:54:21', '发表动态', '', 'smz');
INSERT INTO `record` VALUES ('121', '2', 'Superb', '2021-03-19 02:54:31', '转发动态', '29', 'smz');
INSERT INTO `record` VALUES ('122', '2', 'Superb', '2021-03-19 02:55:00', '删除动态', '29', 'smz');
INSERT INTO `record` VALUES ('123', '2', 'Superb', '2021-03-19 03:09:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('124', '3', '1', '2021-03-19 03:10:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('125', '3', '1', '2021-03-19 03:11:40', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('126', '3', '1', '2021-03-19 03:13:03', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('127', '3', '1', '2021-03-19 15:16:05', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('128', '3', '1', '2021-03-19 03:17:11', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('129', '3', '1', '2021-03-19 15:28:13', '登录成功', '', '');
INSERT INTO `record` VALUES ('130', '3', '1', '2021-03-19 16:13:58', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('131', '3', '1', '2021-03-19 16:14:16', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('132', '3', '1', '2021-03-19 16:21:11', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('133', '3', '1', '2021-03-19 16:24:20', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('134', '3', '1', '2021-03-19 16:24:58', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('135', '3', '1', '2021-03-19 16:26:37', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('136', '3', '1', '2021-03-19 16:26:41', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('137', '3', '1', '2021-03-19 16:27:52', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('138', '3', '1', '2021-03-19 16:27:54', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('139', '3', '1', '2021-03-19 16:28:11', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('140', '3', '1', '2021-03-19 16:36:06', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('141', '3', '1', '2021-03-19 16:36:07', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('142', '3', '1', '2021-03-19 16:57:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('143', '3', '1', '2021-03-19 16:58:32', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('144', '3', '1', '2021-03-19 16:58:33', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('145', '3', '1', '2021-03-19 16:58:44', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('146', '3', '1', '2021-03-19 16:58:45', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('147', '3', '1', '2021-03-19 16:59:01', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('148', '3', '1', '2021-03-19 16:59:09', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('149', '3', '123456789', '2021-03-19 17:28:54', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('150', '3', '123456789', '2021-03-19 17:29:01', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('151', '3', '123456789', '2021-03-19 17:40:12', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('152', '3', '123456789', '2021-03-19 17:42:07', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('153', '3', '123456789', '2021-03-19 17:42:09', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('154', '3', '1', '2021-03-19 18:20:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('155', '1287414986@qq.com', '2', '2021-03-19 18:21:11', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('156', '1287414986@qq.com', 'smz', '2021-03-19 18:21:52', '注册成功', '', '');
INSERT INTO `record` VALUES ('157', '4', 'smz', '2021-03-19 18:21:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('158', '4', 'smz', '2021-03-19 18:28:42', '注销成功', '', '');
INSERT INTO `record` VALUES ('159', '2', 'Superb', '2021-03-19 18:28:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('160', '2', 'Superb', '2021-03-19 18:29:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('161', '4', 'smz', '2021-03-19 18:29:55', '登录成功', '', '');
INSERT INTO `record` VALUES ('162', '4', 'smz', '2021-03-19 18:39:18', '发表动态', '', '汽车之家');
INSERT INTO `record` VALUES ('163', '4', 'smz', '2021-03-19 18:40:41', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('164', '4', 'smz', '2021-03-19 18:40:44', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('165', '4', 'smz', '2021-03-19 18:43:22', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('166', '4', 'smz', '2021-03-19 18:43:31', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('167', '4', 'smz', '2021-03-19 18:43:46', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('168', '4', 'smz', '2021-03-19 18:44:07', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('169', '4', 'smz', '2021-03-19 18:44:26', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('170', '4', 'smz', '2021-03-19 18:44:26', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('171', '4', 'smz', '2021-03-19 18:45:30', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('172', '4', 'smz', '2021-03-19 18:45:31', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('173', '4', 'smz', '2021-03-19 18:50:39', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('174', '4', 'smz', '2021-03-19 18:50:47', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('175', '4', 'smz', '2021-03-19 18:50:50', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('176', '4', 'smz', '2021-03-19 18:50:53', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('177', '4', 'smz', '2021-03-19 18:53:46', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('178', '4', 'smz', '2021-03-19 18:53:47', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('179', '4', 'smz', '2021-03-19 18:53:49', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('180', '4', 'smz', '2021-03-19 18:53:50', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('181', '4', 'smz', '2021-03-19 18:53:50', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('182', '4', 'smz', '2021-03-19 18:54:44', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('183', '4', 'smz', '2021-03-19 18:54:49', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('184', '4', 'smz', '2021-03-19 18:54:53', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('185', '4', 'smz', '2021-03-19 18:55:03', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('186', '4', 'smz', '2021-03-19 18:55:09', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('187', '4', 'smz', '2021-03-19 18:56:25', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('188', '4', 'smz', '2021-03-19 18:56:27', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('189', '4', 'smz', '2021-03-19 18:56:29', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('190', '4', 'smz', '2021-03-19 18:57:00', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('191', '4', 'smz', '2021-03-19 18:57:02', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('192', '4', 'smz', '2021-03-19 19:00:13', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('193', '4', 'smz', '2021-03-19 19:01:07', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('194', '4', 'smz', '2021-03-19 19:01:22', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('195', '4', 'smz', '2021-03-19 19:01:26', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('196', '4', 'smz', '2021-03-19 19:01:32', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('197', '4', 'smz', '2021-03-19 19:02:46', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('198', '4', 'smz', '2021-03-19 19:02:52', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('199', '4', 'smz', '2021-03-19 19:02:55', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('200', '4', 'smz', '2021-03-19 19:02:56', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('201', '4', 'smz', '2021-03-19 19:03:04', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('202', '4', 'smz', '2021-03-19 19:03:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('203', '2', 'Superb', '2021-03-19 19:03:29', '登录成功', '', '');
INSERT INTO `record` VALUES ('204', '2', 'Superb', '2021-03-19 19:03:37', '转发动态', '28', '111');
INSERT INTO `record` VALUES ('205', '2', 'Superb', '2021-03-19 19:03:43', '点赞', '28', '111');
INSERT INTO `record` VALUES ('206', '2', 'Superb', '2021-03-19 19:03:46', '取消点赞', '28', '111');
INSERT INTO `record` VALUES ('207', '2', 'Superb', '2021-03-19 19:03:47', '点赞', '28', '111');
INSERT INTO `record` VALUES ('208', '2', 'Superb', '2021-03-19 19:03:52', '转发动态', '28', '111');
INSERT INTO `record` VALUES ('209', '2', 'Superb', '2021-03-19 19:04:02', '注销成功', '', '');
INSERT INTO `record` VALUES ('210', '0:0:0:0:0:0:0:1', '', '2021-03-19 19:04:05', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('211', '0:0:0:0:0:0:0:1', '', '2021-03-19 19:04:09', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('212', '1', '汽车之家', '2021-03-19 19:04:18', '登录成功', '', '');
INSERT INTO `record` VALUES ('213', '1', '汽车之家', '2021-03-19 19:04:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('214', '3', '123456789', '2021-03-19 19:04:55', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('215', '3', '123456789', '2021-03-19 19:05:01', '登录成功', '', '');
INSERT INTO `record` VALUES ('216', '3', '123456789', '2021-03-19 19:05:06', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('217', '3', '123456789', '2021-03-19 19:05:08', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('218', '3', '123456789', '2021-03-19 19:05:09', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('219', '3', '123456789', '2021-03-19 19:05:13', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('220', '3', '123456789', '2021-03-19 19:05:14', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('221', '3', '123456789', '2021-03-19 19:05:16', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('222', '3', '123456789', '2021-03-19 19:05:18', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('223', '3', '123456789', '2021-03-19 19:05:19', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('224', '3', '123456789', '2021-03-19 19:05:20', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('225', '3', '123456789', '2021-03-19 19:05:24', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('226', '3', '123456789', '2021-03-19 19:05:25', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('227', '3', '123456789', '2021-03-19 19:05:27', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('228', '3', '123456789', '2021-03-19 19:06:47', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('229', '3', '123456789', '2021-03-19 19:06:47', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('230', '3', '123456789', '2021-03-19 19:06:50', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('231', '3', '123456789', '2021-03-19 19:06:58', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('232', '3', '123456789', '2021-03-19 19:07:03', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('233', '3', '123456789', '2021-03-19 19:07:04', '点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('234', '3', '123456789', '2021-03-19 19:08:19', '取消点赞', '23', '22222');
INSERT INTO `record` VALUES ('235', '3', '123456789', '2021-03-19 19:08:21', '点赞', '23', '22222');
INSERT INTO `record` VALUES ('236', '3', '123456789', '2021-03-19 19:08:23', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('237', '3', '123456789', '2021-03-19 19:08:24', '点赞', '20', '777');
INSERT INTO `record` VALUES ('238', '3', '123456789', '2021-03-19 19:09:10', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('239', '3', '123456789', '2021-03-19 19:09:39', '转发动态', '23', '22222');
INSERT INTO `record` VALUES ('240', '3', '123456789', '2021-03-19 19:09:43', '删除动态', '23', '22222');
INSERT INTO `record` VALUES ('241', '0:0:0:0:0:0:0:1', '', '2021-03-22 10:10:13', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('242', '3', '123456789', '2021-03-22 10:10:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('243', '3', '1', '2021-03-22 10:10:59', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('244', '3', '1', '2021-03-22 10:11:00', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('245', '3', '1', '2021-03-22 10:11:04', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('246', '3', '1', '2021-03-22 10:11:05', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('247', '3', '1', '2021-03-22 10:15:26', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('248', '3', '1', '2021-03-22 10:15:27', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('249', '3', '1', '2021-03-22 10:17:25', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('250', '3', '1', '2021-03-22 10:17:26', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('251', '3', '1', '2021-03-22 11:19:18', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('252', '3', '1', '2021-03-22 11:19:20', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('253', '3', '1', '2021-03-22 11:19:25', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('254', '3', '1', '2021-03-22 11:22:37', '点赞', '10', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('255', '3', '1', '2021-03-22 11:23:11', '点赞', '11', '111');
INSERT INTO `record` VALUES ('256', '3', '1', '2021-03-22 11:24:37', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('257', '3', '1', '2021-03-22 11:26:59', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('258', '3', '1', '2021-03-22 11:27:00', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('259', '3', '1', '2021-03-22 11:27:06', '点赞', '13', '2222');
INSERT INTO `record` VALUES ('260', '3', '1', '2021-03-22 11:27:47', '点赞', '17', '111');
INSERT INTO `record` VALUES ('261', '3', '1', '2021-03-22 11:28:22', '点赞', '14', 'aaaa');
INSERT INTO `record` VALUES ('262', '3', '1', '2021-03-22 14:38:37', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('263', '3', '1', '2021-03-22 14:38:39', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('264', '3', '1', '2021-03-22 15:21:40', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('265', '3', '1', '2021-03-22 15:42:32', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('266', '3', '1', '2021-03-22 15:42:33', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('267', '3', '123456789', '2021-03-22 16:13:21', '注销成功', '', '');
INSERT INTO `record` VALUES ('268', '773601602@qq.com', '', '2021-03-22 16:14:05', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('269', '773601602@qq.com', '', '2021-03-22 16:14:46', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('270', '773601602@qq.com', '', '2021-03-22 16:14:59', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('271', '773601602@qq.com', '李天然', '2021-03-22 16:16:23', '注册成功', '', '');
INSERT INTO `record` VALUES ('272', '5', '李天然', '2021-03-22 16:16:35', '登录成功', '', '');
INSERT INTO `record` VALUES ('273', '5', '李天然', '2021-03-22 16:16:39', '注销成功', '', '');
INSERT INTO `record` VALUES ('274', '5', '李天然', '2021-03-22 16:16:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('275', '5', '李天然', '2021-03-22 16:16:54', '注销成功', '', '');
INSERT INTO `record` VALUES ('276', '5', '李天然', '2021-03-22 16:16:56', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('277', '0:0:0:0:0:0:0:1', '', '2021-03-22 16:16:59', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('278', '5', '李天然', '2021-03-22 16:17:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('279', '5', '李天然', '2021-03-22 16:33:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('280', '773601602@qq.com', '', '2021-03-22 16:34:13', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('281', '773601602@qq.com', '李白', '2021-03-22 16:34:44', '注册成功', '', '');
INSERT INTO `record` VALUES ('282', '6', '李白', '2021-03-22 16:35:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('283', '6', '李白', '2021-03-22 18:35:13', '注销成功', '', '');
INSERT INTO `record` VALUES ('284', '2', '1', '2021-03-22 18:35:29', '登录成功', '', '');
INSERT INTO `record` VALUES ('285', '2', '1', '2021-03-22 18:37:29', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('286', '2', '1', '2021-03-22 18:37:57', '删除消息：点赞通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('287', '2', '1', '2021-03-22 18:38:18', '删除消息：系统通知', '1', '汽车之家');
INSERT INTO `record` VALUES ('288', '2', '1', '2021-03-22 20:56:22', '关注', '3', '2');
INSERT INTO `record` VALUES ('289', '2', '1', '2021-03-22 20:57:38', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('290', '2', '1', '2021-03-22 20:57:39', '关注', '3', '2');
INSERT INTO `record` VALUES ('291', '2', '1', '2021-03-22 20:57:46', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('292', '2', '1', '2021-03-22 20:57:54', '关注', '3', '2');
INSERT INTO `record` VALUES ('293', '2', '1', '2021-03-22 20:58:19', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('294', '2', '1', '2021-03-22 20:58:23', '关注', '3', '2');
INSERT INTO `record` VALUES ('295', '2', '1', '2021-03-22 20:58:25', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('296', '2', '1', '2021-03-22 20:59:37', '关注', '3', '2');
INSERT INTO `record` VALUES ('297', '2', '1', '2021-03-22 20:59:42', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('298', '2', '1', '2021-03-22 21:00:02', '关注', '3', '2');
INSERT INTO `record` VALUES ('299', '2', '1', '2021-03-22 21:00:03', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('300', '2', '1', '2021-03-22 21:00:21', '关注', '3', '2');
INSERT INTO `record` VALUES ('301', '2', '1', '2021-03-22 21:00:25', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('302', '2', '1', '2021-03-22 21:00:30', '关注', '3', '2');
INSERT INTO `record` VALUES ('303', '2', '1', '2021-03-22 21:00:32', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('304', '2', '1', '2021-03-22 21:00:41', '关注', '3', '2');
INSERT INTO `record` VALUES ('305', '2', '1', '2021-03-22 21:00:43', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('306', '2', '1', '2021-03-22 21:11:18', '点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('307', '2', '1', '2021-03-22 21:11:19', '取消点赞', '22', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO `record` VALUES ('308', '2', '1', '2021-03-22 21:11:39', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('309', '2', '1', '2021-03-22 21:11:40', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('310', '2', '1', '2021-03-22 21:11:52', '取消点赞', '28', '111');
INSERT INTO `record` VALUES ('311', '2', '1', '2021-03-22 21:11:53', '点赞', '28', '111');
INSERT INTO `record` VALUES ('312', '2', '1', '2021-03-22 21:15:05', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('313', '2', '1', '2021-03-22 21:15:06', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('314', '2', '1', '2021-03-22 21:21:28', '登录成功', '', '');
INSERT INTO `record` VALUES ('315', '2', '1', '2021-03-22 21:21:52', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('316', '2', '1', '2021-03-22 21:21:53', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('317', '2', '1', '2021-03-22 21:22:15', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('318', '2', '1', '2021-03-22 21:22:39', '发表动态', '', '111');
INSERT INTO `record` VALUES ('319', '2', '1', '2021-03-22 21:23:42', '发表动态', '', '777');
INSERT INTO `record` VALUES ('320', '2', '1', '2021-03-22 21:23:48', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('321', '2', '1', '2021-03-22 21:24:22', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('322', '2', '1', '2021-03-22 21:24:28', '转发动态', '32', '777');
INSERT INTO `record` VALUES ('323', '2', '1', '2021-03-22 21:26:06', '转发动态', '32', '777');
INSERT INTO `record` VALUES ('324', '2', '1', '2021-03-22 21:26:29', '转发动态', '32', '777');
INSERT INTO `record` VALUES ('325', '2', '1', '2021-03-22 21:27:11', '点赞', '32', '777');
INSERT INTO `record` VALUES ('326', '2', '1', '2021-03-22 21:27:11', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('327', '2', '1', '2021-03-22 21:27:15', '点赞', '32', '777');
INSERT INTO `record` VALUES ('328', '2', '1', '2021-03-22 21:27:16', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('329', '2', '1', '2021-03-22 21:27:19', '点赞', '32', '777');
INSERT INTO `record` VALUES ('330', '2', '1', '2021-03-22 21:27:20', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('331', '2', '1', '2021-03-22 21:27:24', '点赞', '32', '777');
INSERT INTO `record` VALUES ('332', '2', '1', '2021-03-22 21:27:26', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('333', '2', '1', '2021-03-23 11:27:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('334', '2', '1', '2021-03-23 11:31:28', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('335', '2', '1', '2021-03-23 11:31:30', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('336', '2', '1', '2021-03-23 13:09:08', '注销成功', '', '');
INSERT INTO `record` VALUES ('337', '3', '2', '2021-03-23 13:09:10', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('338', '3', '2', '2021-03-23 13:09:12', '登录成功', '', '');
INSERT INTO `record` VALUES ('339', '3', '2', '2021-03-23 13:18:33', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('340', '3', '2', '2021-03-23 13:18:34', '关注', '2', '1');
INSERT INTO `record` VALUES ('341', '3', '2', '2021-03-23 13:23:02', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('342', '3', '2', '2021-03-23 13:28:40', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('343', '3', '2', '2021-03-23 13:28:42', '关注', '2', '1');
INSERT INTO `record` VALUES ('344', '3', '2', '2021-03-23 13:28:44', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('345', '3', '2', '2021-03-23 13:29:49', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('346', '3', '2', '2021-03-23 13:31:08', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('347', '3', '2', '2021-03-23 13:31:11', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('348', '3', '2', '2021-03-23 13:31:14', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('349', '3', '2', '2021-03-23 13:42:00', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('350', '3', '2', '2021-03-23 13:42:02', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('351', '3', '2', '2021-03-23 13:42:03', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('352', '3', '2', '2021-03-23 13:46:00', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('353', '3', '2', '2021-03-23 13:46:07', '关注', '2', '1');
INSERT INTO `record` VALUES ('354', '3', '2', '2021-03-23 13:46:09', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('355', '3', '2', '2021-03-23 13:46:11', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('356', '3', '2', '2021-03-23 13:46:20', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('357', '3', '2', '2021-03-23 13:47:30', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('358', '3', '2', '2021-03-23 13:47:46', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('359', '3', '2', '2021-03-23 13:48:48', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('360', '3', '2', '2021-03-23 13:48:58', '关注', '2', '1');
INSERT INTO `record` VALUES ('361', '3', '2', '2021-03-23 13:49:13', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('362', '3', '2', '2021-03-23 13:49:14', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('363', '3', '2', '2021-03-23 13:49:24', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('364', '3', '2', '2021-03-23 13:49:26', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('365', '3', '2', '2021-03-23 13:54:56', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('366', '3', '2', '2021-03-23 13:54:57', '取消关注', '5', '李天然');
INSERT INTO `record` VALUES ('367', '3', '2', '2021-03-23 13:54:58', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('368', '3', '2', '2021-03-23 13:54:59', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('369', '3', '2', '2021-03-23 13:55:00', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('370', '3', '2', '2021-03-23 13:55:01', '关注', '5', '李天然');
INSERT INTO `record` VALUES ('371', '3', '2', '2021-03-23 13:55:02', '关注', '2', '1');
INSERT INTO `record` VALUES ('372', '3', '2', '2021-03-23 13:55:03', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('373', '3', '2', '2021-03-23 13:55:32', '取消关注', '5', '李天然');
INSERT INTO `record` VALUES ('374', '3', '2', '2021-03-23 13:55:33', '关注', '5', '李天然');
INSERT INTO `record` VALUES ('375', '3', '2', '2021-03-23 14:12:59', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('376', '3', '2', '2021-03-23 14:13:00', '关注', '2', '1');
INSERT INTO `record` VALUES ('377', '3', '2', '2021-03-23 14:13:04', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('378', '3', '2', '2021-03-23 14:13:13', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('379', '3', '2', '2021-03-23 14:13:19', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('380', '3', '2', '2021-03-23 14:13:25', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('381', '3', '2', '2021-03-23 14:13:33', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('382', '3', '2', '2021-03-23 14:13:34', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('383', '3', '2', '2021-03-23 14:13:38', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('384', '3', '2', '2021-03-23 14:14:09', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('385', '3', '2', '2021-03-23 14:14:10', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('386', '3', '2', '2021-03-23 14:14:23', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('387', '3', '2', '2021-03-23 14:14:28', '取消关注', '5', '李天然');
INSERT INTO `record` VALUES ('388', '3', '2', '2021-03-23 14:14:30', '关注', '5', '李天然');
INSERT INTO `record` VALUES ('389', '3', '2', '2021-03-23 14:14:36', '取消关注', '6', '李白');
INSERT INTO `record` VALUES ('390', '3', '2', '2021-03-23 14:17:16', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('391', '3', '2', '2021-03-23 14:17:17', '关注', '2', '1');
INSERT INTO `record` VALUES ('392', '3', '2', '2021-03-23 14:17:28', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('393', '3', '2', '2021-03-23 14:17:30', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('394', '3', '2', '2021-03-23 14:22:42', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('395', '3', '2', '2021-03-23 14:22:50', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('396', '3', '2', '2021-03-23 14:22:52', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('397', '3', '2', '2021-03-23 14:23:00', '取消关注', '4', '乔峰');
INSERT INTO `record` VALUES ('398', '3', '2', '2021-03-23 14:25:19', '取消关注', '6', '李白');
INSERT INTO `record` VALUES ('399', '3', '2', '2021-03-23 14:25:20', '关注', '6', '李白');
INSERT INTO `record` VALUES ('400', '3', '2', '2021-03-23 14:29:46', '取消关注', '6', '李白');
INSERT INTO `record` VALUES ('401', '3', '2', '2021-03-23 14:29:47', '关注', '6', '李白');
INSERT INTO `record` VALUES ('402', '3', '2', '2021-03-23 14:32:07', '注销成功', '', '');
INSERT INTO `record` VALUES ('403', '1', '汽车之家', '2021-03-23 14:32:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('404', '1', '汽车之家', '2021-03-23 14:40:19', '关注', '2', '1');
INSERT INTO `record` VALUES ('405', '1', '汽车之家', '2021-03-23 14:40:30', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('406', '1', '汽车之家', '2021-03-23 14:40:31', '关注', '2', '1');
INSERT INTO `record` VALUES ('407', '1', '汽车之家', '2021-03-23 14:40:34', '取消关注', '2', '1');
INSERT INTO `record` VALUES ('408', '1', '汽车之家', '2021-03-23 14:40:43', '关注', '2', '1');
INSERT INTO `record` VALUES ('409', '1', '汽车之家', '2021-03-23 14:41:11', '注销成功', '', '');
INSERT INTO `record` VALUES ('410', '2', '1', '2021-03-23 14:41:15', '登录成功', '', '');
INSERT INTO `record` VALUES ('411', '2', '1', '2021-03-23 15:07:54', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('412', '2', '1', '2021-03-23 15:08:47', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('413', '2', '1', '2021-03-23 15:25:58', '关注', '3', '2');
INSERT INTO `record` VALUES ('414', '2', '1', '2021-03-23 15:26:01', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('415', '2', '1', '2021-03-23 15:26:42', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('416', '2', '1', '2021-03-23 15:26:52', '关注', '3', '2');
INSERT INTO `record` VALUES ('417', '2', '1', '2021-03-23 15:27:02', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('418', '2', '1', '2021-03-23 15:27:03', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('419', '2', '1', '2021-03-23 15:27:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('420', '6', '李白', '2021-03-23 15:27:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('421', '6', '李白', '2021-03-23 15:31:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('422', '2', '1', '2021-03-23 15:31:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('423', '2', '1', '2021-03-23 15:41:17', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('424', '2', '1', '2021-03-23 15:41:31', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('425', '2', '1', '2021-03-23 16:28:57', '点赞', '32', '777');
INSERT INTO `record` VALUES ('426', '2', '1', '2021-03-23 16:39:55', '注销成功', '', '');
INSERT INTO `record` VALUES ('427', '6', '李白', '2021-03-23 16:40:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('428', '6', '李白', '2021-03-23 16:49:30', '注销成功', '', '');
INSERT INTO `record` VALUES ('429', '2', '1', '2021-03-23 16:49:31', '登录成功', '', '');
INSERT INTO `record` VALUES ('430', '2', '1', '2021-03-23 16:50:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('431', '6', '李白', '2021-03-23 16:50:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('432', '6', '李白', '2021-03-23 16:52:19', '发表动态', '', '11111');
INSERT INTO `record` VALUES ('433', '6', '李白', '2021-03-23 16:53:58', '点赞', '33', '11111');
INSERT INTO `record` VALUES ('434', '6', '李白', '2021-03-23 16:54:35', '删除动态', '33', '11111');
INSERT INTO `record` VALUES ('435', '6', '李白', '2021-03-23 16:56:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('436', '2', '1', '2021-03-23 16:56:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('437', '2', '1', '2021-03-23 16:56:10', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('438', '2', '1', '2021-03-23 16:56:11', '关注', '3', '2');
INSERT INTO `record` VALUES ('439', '2', '1', '2021-03-23 16:56:16', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('440', '2', '1', '2021-03-23 16:56:17', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('441', '2', '1', '2021-03-23 17:18:00', '注销成功', '', '');
INSERT INTO `record` VALUES ('442', '2', '1', '2021-03-23 17:38:01', '登录成功', '', '');
INSERT INTO `record` VALUES ('443', '2', '1', '2021-03-23 18:02:09', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('444', '2', '1', '2021-03-23 18:02:10', '关注', '3', '2');
INSERT INTO `record` VALUES ('445', '2', '1', '2021-03-23 18:02:16', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('446', '2', '1', '2021-03-23 18:02:18', '关注', '3', '2');
INSERT INTO `record` VALUES ('447', '2', '1', '2021-03-23 18:02:30', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('448', '2', '1', '2021-03-23 18:02:31', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('449', '2', '1', '2021-03-23 18:02:48', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('450', '2', '1', '2021-03-23 18:02:53', '点赞', '32', '777');
INSERT INTO `record` VALUES ('451', '2', '1', '2021-03-23 18:02:58', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('452', '2', '1', '2021-03-23 18:03:00', '关注', '3', '2');
INSERT INTO `record` VALUES ('453', '2', '1', '2021-03-23 18:54:10', '登录成功', '', '');
INSERT INTO `record` VALUES ('454', '2', '1', '2021-03-24 12:36:10', '登录成功', '', '');
INSERT INTO `record` VALUES ('455', '2', '1', '2021-03-24 12:36:20', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('456', '2', '1', '2021-03-24 12:36:20', '关注', '3', '2');
INSERT INTO `record` VALUES ('457', '2', '1', '2021-03-24 12:36:49', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('458', '2', '1', '2021-03-24 12:36:51', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('459', '2', '1', '2021-03-25 15:24:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('460', '2', '1', '2021-03-25 15:24:55', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('461', '2', '1', '2021-03-25 15:24:56', '关注', '3', '2');
INSERT INTO `record` VALUES ('462', '2', '1', '2021-03-25 15:26:52', '关注', '4', '乔峰');
INSERT INTO `record` VALUES ('463', '2', '1', '2021-03-25 15:27:11', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('464', '2', '1', '2021-03-25 15:42:26', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('465', '2', '1', '2021-03-25 15:42:27', '点赞', '32', '777');
INSERT INTO `record` VALUES ('466', '2', '1', '2021-03-25 15:43:04', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('467', '2', '1', '2021-03-25 15:43:04', '点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('468', '1140193437@qq.com', '', '2021-03-25 22:03:15', '注册接收验证码', '', '');
INSERT INTO `record` VALUES ('469', '1140193437@qq.com', 'xr', '2021-03-25 22:03:49', '注册成功', '', '');
INSERT INTO `record` VALUES ('470', '7', 'xr', '2021-03-25 22:04:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('471', '7', 'xr', '2021-03-25 22:06:40', '发表动态', '', '4654564165165');
INSERT INTO `record` VALUES ('472', '7', 'xr', '2021-03-25 22:06:58', '点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('473', '7', 'xr', '2021-03-25 22:07:01', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('474', '7', 'xr', '2021-03-25 22:07:09', '转发动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('475', '7', 'xr', '2021-03-25 22:09:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('476', '2', '1', '2021-03-25 22:09:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('477', '2', '1', '2021-03-25 22:10:35', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('478', '2', '1', '2021-03-25 22:10:35', '点赞', '32', '777');
INSERT INTO `record` VALUES ('479', '2', '1', '2021-03-25 22:11:17', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('480', '2', '1', '2021-03-25 22:11:23', '关注', '3', '2');
INSERT INTO `record` VALUES ('481', '2', '1', '2021-03-25 22:11:29', '取消关注', '3', '2');
INSERT INTO `record` VALUES ('482', '2', '1', '2021-03-25 22:12:07', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('483', '2', '1', '2021-03-26 14:02:36', '登录成功', '', '');
INSERT INTO `record` VALUES ('484', '2', '1', '2021-03-26 14:05:44', '注销成功', '', '');
INSERT INTO `record` VALUES ('485', '2', '1', '2021-03-26 14:27:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('486', '2', '1', '2021-03-26 15:29:13', '注销成功', '', '');
INSERT INTO `record` VALUES ('487', '1', '汽车之家', '2021-03-26 15:29:17', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('488', '1', '汽车之家', '2021-03-26 15:29:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('489', '1', '汽车之家', '2021-03-26 15:30:44', '注销成功', '', '');
INSERT INTO `record` VALUES ('490', '2', '1', '2021-03-26 15:30:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('491', '2', '1', '2021-03-26 15:31:48', '注销成功', '', '');
INSERT INTO `record` VALUES ('492', '1', '汽车之家', '2021-03-26 15:31:52', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('493', '1', '汽车之家', '2021-03-26 15:31:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('494', '1', '汽车之家', '2021-03-26 15:32:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('495', '2', '1', '2021-03-26 15:32:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('496', '2', '1', '2021-03-26 15:32:11', '注销成功', '', '');
INSERT INTO `record` VALUES ('497', '2', '1', '2021-03-26 15:33:03', '登录成功', '', '');
INSERT INTO `record` VALUES ('498', '2', '1', '2021-03-26 15:39:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('499', '2', '1', '2021-03-26 15:41:42', '登录成功', '', '');
INSERT INTO `record` VALUES ('500', '0:0:0:0:0:0:0:1', '', '2021-03-29 11:19:17', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('501', '0:0:0:0:0:0:0:1', '', '2021-03-29 11:19:20', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('502', '2', '化腾', '2021-03-29 11:19:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('503', '2', '化腾', '2021-03-29 11:55:10', '注销成功', '', '');
INSERT INTO `record` VALUES ('504', '2', '化腾', '2021-03-29 14:15:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('505', '2', '化腾', '2021-03-29 14:15:07', '注销成功', '', '');
INSERT INTO `record` VALUES ('506', '2', '化腾', '2021-03-29 14:15:47', '登录成功', '', '');
INSERT INTO `record` VALUES ('507', '2', '化腾', '2021-03-29 15:48:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('508', '2', '1', '2021-03-29 15:49:51', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('509', '2', '1', '2021-03-29 15:51:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('510', '2', '1', '2021-03-29 22:01:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('511', '2', '1', '2021-03-29 22:02:01', '注销成功', '', '');
INSERT INTO `record` VALUES ('512', '2', '1', '2021-03-30 09:21:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('513', '2', '1', '2021-03-30 09:22:58', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('514', '2', '1', '2021-03-30 09:22:59', '点赞', '32', '777');
INSERT INTO `record` VALUES ('515', '2', '1', '2021-03-30 09:23:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('516', '3', '卢本伟', '2021-03-30 09:23:48', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('517', '3', '卢本伟', '2021-03-30 09:23:59', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('518', '3', '卢本伟', '2021-03-30 09:24:03', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('519', '3', '卢本伟', '2021-03-30 09:24:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('520', '3', '卢本伟', '2021-03-30 09:49:30', '注销成功', '', '');
INSERT INTO `record` VALUES ('521', '2', '1', '2021-03-30 11:21:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('522', '2', '1', '2021-03-30 11:32:06', '取消点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('523', '2', '1', '2021-03-30 11:32:19', '点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('524', '2', '1', '2021-03-30 11:32:22', '取消点赞', '2', '大奔满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('525', '2', '1', '2021-03-30 11:32:23', '点赞', '2', '大奔满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('526', '2', '1', '2021-03-30 11:32:28', '取消点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('527', '2', '1', '2021-03-30 11:32:30', '点赞', '1', '宝马三系满足我对汽车的所有需求');
INSERT INTO `record` VALUES ('528', '2', '1', '2021-03-30 11:39:32', '评论：123', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('529', '2', '1', '2021-03-30 11:39:39', '点赞', '3', '123');
INSERT INTO `record` VALUES ('530', '2', '1', '2021-03-30 11:39:40', '取消点赞', '3', '123');
INSERT INTO `record` VALUES ('531', '2', '1', '2021-03-30 11:40:06', '评论：分为非第三方表达式', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('532', '2', '1', '2021-03-30 11:53:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('533', '2', '1', '2021-03-30 11:54:15', '登录成功', '', '');
INSERT INTO `record` VALUES ('534', '2', '1', '2021-03-30 11:57:26', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('535', '2', '1', '2021-03-30 11:59:02', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('536', '2', '1', '2021-03-30 11:59:04', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('537', '2', '1', '2021-03-30 12:00:52', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('538', '2', '1', '2021-03-30 12:01:42', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('539', '2', '1', '2021-03-30 12:01:49', '点赞', '4', '分为非第三方表达式');
INSERT INTO `record` VALUES ('540', '2', '1', '2021-03-30 13:14:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('541', '2', '1', '2021-03-30 13:14:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('542', '2', '1', '2021-03-30 13:20:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('543', '2', '1', '2021-03-30 13:20:24', '登录成功', '', '');
INSERT INTO `record` VALUES ('544', '2', '1', '2021-03-30 13:23:11', '注销成功', '', '');
INSERT INTO `record` VALUES ('545', '2', '1', '2021-03-30 13:23:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('546', '2', '1', '2021-03-30 13:36:51', '注销成功', '', '');
INSERT INTO `record` VALUES ('547', '2', '1', '2021-03-30 13:37:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('548', '2', '1', '2021-03-30 13:41:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('549', '2', '1', '2021-03-30 13:42:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('550', '2', '1', '2021-03-30 13:45:43', '注销成功', '', '');
INSERT INTO `record` VALUES ('551', '2', '1', '2021-03-30 13:45:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('552', '2', '1', '2021-03-30 14:01:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('553', '2', '1', '2021-03-30 14:01:59', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('554', '2', '1', '2021-03-30 14:02:00', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('555', '2', '1', '2021-03-30 14:02:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('556', '35', 'xr', '2021-03-30 14:42:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('557', '35', 'xr', '2021-03-30 14:58:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('558', '35', 'xr', '2021-03-30 15:05:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('559', '35', 'xr', '2021-03-30 15:05:32', '评论：123', '34', '4654564165165');
INSERT INTO `record` VALUES ('560', '35', 'xr', '2021-03-30 15:05:50', '点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('561', '35', 'xr', '2021-03-30 15:06:06', '转发动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('562', '35', 'xr', '2021-03-30 15:06:34', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('563', '35', 'xr', '2021-03-30 15:06:35', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('564', '35', 'xr', '2021-03-30 15:06:37', '注销成功', '', '');
INSERT INTO `record` VALUES ('565', '35', '1', '2021-03-30 15:07:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('566', '35', '1', '2021-03-30 15:07:57', '取消关注', '4', 'PDD');
INSERT INTO `record` VALUES ('567', '35', '1', '2021-03-30 15:07:58', '关注', '4', 'PDD');
INSERT INTO `record` VALUES ('568', '35', '1', '2021-03-30 15:08:00', '注销成功', '', '');
INSERT INTO `record` VALUES ('569', '0:0:0:0:0:0:0:1', '', '2021-03-30 15:55:19', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('570', '0:0:0:0:0:0:0:1', '', '2021-03-30 15:55:23', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('571', '35', '1', '2021-03-30 15:55:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('572', '35', '1', '2021-03-30 16:16:28', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('573', '35', '1', '2021-03-30 16:17:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('574', '0:0:0:0:0:0:0:1', '', '2021-03-30 16:17:30', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('575', '35', '1', '2021-03-30 16:17:35', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('576', '35', '1', '2021-03-30 16:17:37', '登录成功', '', '');
INSERT INTO `record` VALUES ('577', '35', '1', '2021-03-30 16:17:57', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('578', '35', '1', '2021-03-30 16:24:36', '删除转发', '34', '4654564165165');
INSERT INTO `record` VALUES ('579', '35', '1', '2021-03-30 16:25:58', '删除转发', '34', '4654564165165');
INSERT INTO `record` VALUES ('580', '35', '1', '2021-03-30 16:32:26', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('581', '35', '1', '2021-03-30 16:32:54', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('582', '35', '1', '2021-03-30 16:32:55', '点赞动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('583', '35', '1', '2021-03-30 16:33:12', '评论：11', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('584', '35', '1', '2021-03-30 16:33:19', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('585', '35', '1', '2021-03-30 16:34:09', '评论：147', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('586', '35', '1', '2021-03-30 16:34:11', '评论：1471', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('587', '35', '1', '2021-03-30 16:34:13', '评论：175157157', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('588', '35', '1', '2021-03-30 16:34:15', '评论：15727517', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('589', '35', '1', '2021-03-30 16:42:54', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('590', '35', '1', '2021-03-30 16:42:56', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('591', '35', '1', '2021-03-30 16:43:10', '点赞评论', '5', '123');
INSERT INTO `record` VALUES ('592', '35', '1', '2021-03-30 17:27:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('593', '2', '化腾', '2021-03-30 17:27:34', '登录成功', '', '');
INSERT INTO `record` VALUES ('594', '2', '化腾', '2021-03-30 17:27:52', '关注', '35', '1');
INSERT INTO `record` VALUES ('595', '2', '化腾', '2021-03-30 17:27:55', '注销成功', '', '');
INSERT INTO `record` VALUES ('596', '0:0:0:0:0:0:0:1', '', '2021-03-30 17:27:57', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('597', '35', '1', '2021-03-30 17:27:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('598', '35', '1', '2021-03-30 17:32:12', '注销成功', '', '');
INSERT INTO `record` VALUES ('599', '3', '卢本伟', '2021-03-30 17:32:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('600', '3', '卢本伟', '2021-03-30 17:32:37', '取消关注', '35', '1');
INSERT INTO `record` VALUES ('601', '3', '卢本伟', '2021-03-30 17:32:41', '关注', '35', '1');
INSERT INTO `record` VALUES ('602', '3', '卢本伟', '2021-03-30 17:35:59', '注销成功', '', '');
INSERT INTO `record` VALUES ('603', '35', '1', '2021-03-30 17:36:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('604', '35', 'xr', '2021-03-30 17:48:07', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('605', '35', 'xr', '2021-03-30 17:48:08', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('606', '35', 'xr', '2021-03-30 18:28:31', '登录成功', '', '');
INSERT INTO `record` VALUES ('607', '35', 'xr', '2021-03-30 18:34:50', '点赞动态', '14', 'aaaa');
INSERT INTO `record` VALUES ('608', '35', 'xr', '2021-03-30 18:34:53', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('609', '35', 'xr', '2021-03-30 18:34:54', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('610', '35', 'xr', '2021-03-30 18:35:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('611', '0:0:0:0:0:0:0:1', '', '2021-03-30 18:35:24', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('612', '0:0:0:0:0:0:0:1', '', '2021-03-30 18:35:30', '用户不存在，登录失败', '', '');
INSERT INTO `record` VALUES ('613', '1', '汽车之家', '2021-03-30 18:35:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('614', '1', '汽车之家', '2021-03-30 18:35:53', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('615', '1', '汽车之家', '2021-03-30 18:43:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('616', '35', 'xr', '2021-03-30 18:43:19', '登录成功', '', '');
INSERT INTO `record` VALUES ('617', '35', 'xr', '2021-03-30 18:59:05', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('618', '35', 'xr', '2021-03-30 18:59:06', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('619', '35', 'xr', '2021-03-30 18:59:09', '评论：561515', '34', '4654564165165');
INSERT INTO `record` VALUES ('620', '35', 'xr', '2021-03-30 18:59:19', '点赞评论', '11', '561515');
INSERT INTO `record` VALUES ('621', '35', 'xr', '2021-03-30 18:59:21', '取消点赞', '5', '123');
INSERT INTO `record` VALUES ('622', '35', '谢耳朵', '2021-03-30 22:34:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('623', '35', '谢耳朵', '2021-03-30 22:37:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('624', '7', '小阿Giao', '2021-03-30 22:37:54', '登录成功', '', '');
INSERT INTO `record` VALUES ('625', '7', '小阿Giao', '2021-03-30 22:37:59', '注销成功', '', '');
INSERT INTO `record` VALUES ('626', '2', '化腾', '2021-03-30 22:38:02', '登录成功', '', '');
INSERT INTO `record` VALUES ('627', '2', '化腾', '2021-03-30 22:38:59', '注销成功', '', '');
INSERT INTO `record` VALUES ('628', '35', '谢耳朵', '2021-03-30 22:39:01', '登录成功', '', '');
INSERT INTO `record` VALUES ('629', '35', '谢耳朵', '2021-03-30 22:39:30', '取消点赞', '32', '777');
INSERT INTO `record` VALUES ('630', '35', '谢耳朵', '2021-03-30 22:39:33', '注销成功', '', '');
INSERT INTO `record` VALUES ('631', '35', '谢耳朵', '2021-03-30 22:40:16', '登录成功', '', '');
INSERT INTO `record` VALUES ('632', '35', '谢耳朵', '2021-03-31 09:10:54', '登录成功', '', '');
INSERT INTO `record` VALUES ('633', '35', '谢耳朵', '2021-03-31 09:15:50', '登录成功', '', '');
INSERT INTO `record` VALUES ('634', '35', '谢耳朵', '2021-03-31 09:18:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('635', '35', '谢耳朵', '2021-03-31 09:26:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('636', '35', '谢耳朵', '2021-03-31 10:11:40', '注销成功', '', '');
INSERT INTO `record` VALUES ('637', '35', '谢耳朵', '2021-03-31 10:11:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('638', '35', '谢耳朵', '2021-03-31 10:44:39', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('639', '35', '谢耳朵', '2021-03-31 10:44:39', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('640', '35', '谢耳朵', '2021-03-31 10:44:46', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('641', '35', '谢耳朵', '2021-03-31 10:44:47', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('642', '35', '谢耳朵', '2021-03-31 10:50:45', '关注', '10', '碧萝奶奶');
INSERT INTO `record` VALUES ('643', '35', '谢耳朵', '2021-03-31 10:50:47', '取消关注', '10', '碧萝奶奶');
INSERT INTO `record` VALUES ('644', '35', '谢耳朵', '2021-03-31 10:52:45', '转发动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('645', '35', '谢耳朵', '2021-03-31 11:58:30', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('646', '35', '谢耳朵', '2021-03-31 11:58:30', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('647', '35', '谢耳朵', '2021-03-31 12:01:21', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('648', '35', '谢耳朵', '2021-03-31 12:01:22', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('649', '35', '谢耳朵', '2021-03-31 15:05:48', '登录成功', '', '');
INSERT INTO `record` VALUES ('650', '35', '谢耳朵', '2021-03-31 15:30:35', '发表动态', '', '1111');
INSERT INTO `record` VALUES ('651', '35', '谢耳朵', '2021-03-31 16:36:15', '点赞动态', '35', '1111');
INSERT INTO `record` VALUES ('652', '35', '谢耳朵', '2021-03-31 16:36:19', '评论：1', '35', '1111');
INSERT INTO `record` VALUES ('653', '35', '谢耳朵', '2021-03-31 17:37:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('654', '35', '谢耳朵', '2021-03-31 17:37:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('655', '35', '谢耳朵', '2021-03-31 18:19:21', '注销成功', '', '');
INSERT INTO `record` VALUES ('656', '35', '谢耳朵', '2021-03-31 18:19:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('657', '35', '谢耳朵', '2021-03-31 18:19:57', '注销成功', '', '');
INSERT INTO `record` VALUES ('658', '35', '谢耳朵', '2021-03-31 18:19:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('659', '35', '谢耳朵', '2021-03-31 18:28:43', '注销成功', '', '');
INSERT INTO `record` VALUES ('660', '35', '谢耳朵', '2021-03-31 18:28:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('661', '35', '谢耳朵', '2021-03-31 18:35:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('662', '35', '谢耳朵', '2021-03-31 18:35:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('663', '35', '谢耳朵', '2021-03-31 18:59:15', '发表动态', '', '1234567890');
INSERT INTO `record` VALUES ('664', '35', '谢耳朵', '2021-03-31 18:59:24', '点赞动态', '36', '1234567890');
INSERT INTO `record` VALUES ('665', '35', '谢耳朵', '2021-03-31 18:59:30', '删除动态', '36', '1234567890');
INSERT INTO `record` VALUES ('666', '35', '谢耳朵', '2021-03-31 20:30:29', '评论：123', '36', '1234567890');
INSERT INTO `record` VALUES ('667', '35', '谢耳朵', '2021-03-31 21:27:53', '登录成功', '', '');
INSERT INTO `record` VALUES ('668', '35', '谢耳朵', '2021-04-01 09:27:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('669', '35', '谢耳朵', '2021-04-01 09:28:34', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('670', '35', '谢耳朵', '2021-04-01 09:28:37', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('671', '35', '谢耳朵', '2021-04-01 09:58:13', '删除评论：null', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('672', '35', '谢耳朵', '2021-04-01 10:01:01', '注销成功', '', '');
INSERT INTO `record` VALUES ('673', '35', '谢耳朵', '2021-04-01 10:04:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('674', '35', '谢耳朵', '2021-04-01 10:05:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('675', '35', '谢耳朵', '2021-04-01 10:06:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('676', '35', '谢耳朵', '2021-04-01 11:56:46', '登录成功', '', '');
INSERT INTO `record` VALUES ('677', '35', '谢耳朵', '2021-04-01 11:58:02', '发表动态', '', '杜兰特FMVP');
INSERT INTO `record` VALUES ('678', '35', '谢耳朵', '2021-04-01 11:58:36', '转发动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('679', '35', '谢耳朵', '2021-04-01 11:59:04', '转发动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('680', '35', '谢耳朵', '2021-04-01 11:59:34', '评论：MVP@KevinDurant', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('681', '35', '谢耳朵', '2021-04-01 11:59:57', '评论：789', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('682', '35', '谢耳朵', '2021-04-01 12:51:12', '注销成功', '', '');
INSERT INTO `record` VALUES ('683', '35', '谢耳朵', '2021-04-01 16:06:41', '登录成功', '', '');
INSERT INTO `record` VALUES ('684', '35', '谢耳朵', '2021-04-01 16:07:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('685', '35', '谢耳朵', '2021-04-01 16:08:11', '登录成功', '', '');
INSERT INTO `record` VALUES ('686', '35', '谢耳朵', '2021-04-01 17:49:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('687', '2', '化腾', '2021-04-01 17:49:21', '登录成功', '', '');
INSERT INTO `record` VALUES ('688', '2', '化腾', '2021-04-01 17:50:03', '注销成功', '', '');
INSERT INTO `record` VALUES ('689', '3', '卢本伟', '2021-04-01 17:50:07', '登录成功', '', '');
INSERT INTO `record` VALUES ('690', '3', '卢本伟', '2021-04-01 17:51:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('691', '4', 'PDD', '2021-04-01 17:51:37', '登录成功', '', '');
INSERT INTO `record` VALUES ('692', '4', 'PDD', '2021-04-01 17:52:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('693', '5', '大马猴', '2021-04-01 17:52:40', '登录成功', '', '');
INSERT INTO `record` VALUES ('694', '5', '大马猴', '2021-04-01 17:53:29', '注销成功', '', '');
INSERT INTO `record` VALUES ('695', '6', '药水哥', '2021-04-01 17:53:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('696', '6', '药水哥', '2021-04-01 17:58:16', '注销成功', '', '');
INSERT INTO `record` VALUES ('697', '35', '谢耳朵', '2021-04-01 17:58:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('698', '35', '谢耳朵', '2021-04-01 17:58:20', '注销成功', '', '');
INSERT INTO `record` VALUES ('699', '2', '化腾', '2021-04-01 17:58:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('700', '2', '化腾', '2021-04-01 17:59:47', '注销成功', '', '');
INSERT INTO `record` VALUES ('701', '4', 'PDD', '2021-04-01 17:59:50', '登录成功', '', '');
INSERT INTO `record` VALUES ('702', '4', 'PDD', '2021-04-01 18:00:30', '注销成功', '', '');
INSERT INTO `record` VALUES ('703', '6', '药水哥', '2021-04-01 18:00:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('704', '6', '药水哥', '2021-04-01 18:00:37', '注销成功', '', '');
INSERT INTO `record` VALUES ('705', '8', '混元功法保国', '2021-04-01 18:00:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('706', '8', '混元功法保国', '2021-04-01 18:01:41', '注销成功', '', '');
INSERT INTO `record` VALUES ('707', '7', '小阿Giao', '2021-04-01 18:01:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('708', '35', '谢耳朵', '2021-04-01 18:42:36', '登录成功', '', '');
INSERT INTO `record` VALUES ('709', '35', '谢耳朵', '2021-04-01 18:49:50', '注销成功', '', '');
INSERT INTO `record` VALUES ('710', '35', '谢耳朵', '2021-04-01 18:49:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('711', '35', '谢耳朵', '2021-04-01 18:55:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('712', '35', '谢耳朵', '2021-04-01 18:55:47', '登录成功', '', '');
INSERT INTO `record` VALUES ('713', '35', '谢耳朵', '2021-04-01 19:02:47', '注销成功', '', '');
INSERT INTO `record` VALUES ('714', '1', '汽车之家', '2021-04-01 19:02:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('715', '1', '汽车之家', '2021-04-01 19:03:17', '注销成功', '', '');
INSERT INTO `record` VALUES ('716', '1', '汽车之家', '2021-04-01 19:04:45', '登录成功', '', '');
INSERT INTO `record` VALUES ('717', '1', '汽车之家', '2021-04-01 19:05:56', '注销成功', '', '');
INSERT INTO `record` VALUES ('718', '2', '化腾', '2021-04-01 19:05:58', '登录成功', '', '');
INSERT INTO `record` VALUES ('719', '2', '化腾', '2021-04-01 19:06:08', '注销成功', '', '');
INSERT INTO `record` VALUES ('720', '3', '卢本伟', '2021-04-01 19:06:10', '登录成功', '', '');
INSERT INTO `record` VALUES ('721', '3', '卢本伟', '2021-04-01 19:06:18', '注销成功', '', '');
INSERT INTO `record` VALUES ('722', '4', 'PDD', '2021-04-01 19:06:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('723', '4', 'PDD', '2021-04-01 19:06:31', '注销成功', '', '');
INSERT INTO `record` VALUES ('724', '5', '大马猴', '2021-04-01 19:06:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('725', '5', '大马猴', '2021-04-01 19:06:40', '注销成功', '', '');
INSERT INTO `record` VALUES ('726', '5', '大马猴', '2021-04-01 19:06:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('727', '5', '大马猴', '2021-04-01 19:06:45', '注销成功', '', '');
INSERT INTO `record` VALUES ('728', '6', '药水哥', '2021-04-01 19:06:47', '登录成功', '', '');
INSERT INTO `record` VALUES ('729', '6', '药水哥', '2021-04-01 19:06:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('730', '6', '药水哥', '2021-04-01 19:06:55', '登录成功', '', '');
INSERT INTO `record` VALUES ('731', '6', '药水哥', '2021-04-01 19:06:56', '注销成功', '', '');
INSERT INTO `record` VALUES ('732', '7', '小阿Giao', '2021-04-01 19:06:58', '登录成功', '', '');
INSERT INTO `record` VALUES ('733', '7', '小阿Giao', '2021-04-01 19:07:06', '注销成功', '', '');
INSERT INTO `record` VALUES ('734', '8', '混元功法保国', '2021-04-01 19:07:09', '登录成功', '', '');
INSERT INTO `record` VALUES ('735', '8', '混元功法保国', '2021-04-01 19:07:18', '注销成功', '', '');
INSERT INTO `record` VALUES ('736', '9', '练习生蔡徐坤', '2021-04-01 19:07:20', '登录成功', '', '');
INSERT INTO `record` VALUES ('737', '9', '练习生蔡徐坤', '2021-04-01 19:07:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('738', '10', '碧萝奶奶', '2021-04-01 19:07:30', '登录成功', '', '');
INSERT INTO `record` VALUES ('739', '10', '碧萝奶奶', '2021-04-01 19:14:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('740', '35', '谢耳朵', '2021-04-01 19:14:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('741', '35', '谢耳朵', '2021-04-01 19:15:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('742', '35', '谢耳朵', '2021-04-01 19:15:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('743', '35', '谢耳朵', '2021-04-01 19:50:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('744', '35', '谢耳朵', '2021-04-01 19:50:06', '登录成功', '', '');
INSERT INTO `record` VALUES ('745', '35', '谢耳朵', '2021-04-01 20:31:48', '取消点赞', '34', '4654564165165');
INSERT INTO `record` VALUES ('746', '35', '谢耳朵', '2021-04-01 20:31:50', '点赞动态', '34', '4654564165165');
INSERT INTO `record` VALUES ('747', '35', '谢耳朵', '2021-04-01 20:32:01', '点赞动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('748', '35', '谢耳朵', '2021-04-01 20:32:02', '取消点赞', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('749', '35', '谢耳朵', '2021-04-01 20:32:09', '点赞动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('750', '35', '谢耳朵', '2021-04-01 20:32:30', '取消点赞', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('751', '35', '谢耳朵', '2021-04-01 20:32:48', '发表动态', '', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('752', '35', '谢耳朵', '2021-04-01 20:38:13', '点赞评论', '10', '15727517');
INSERT INTO `record` VALUES ('753', '35', '谢耳朵', '2021-04-01 20:38:23', '点赞动态', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('754', '35', '谢耳朵', '2021-04-01 20:38:28', '评论：yugfudshfidshfchdsjbhdsbhjbsd', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('755', '35', '谢耳朵', '2021-04-01 20:38:48', '评论：rgdfhgdfhd', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('756', '35', '谢耳朵', '2021-04-01 20:38:51', '取消点赞', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('757', '35', '谢耳朵', '2021-04-01 20:38:52', '点赞动态', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('758', '35', '谢耳朵', '2021-04-01 20:39:31', '评论：sgdfgbfdbfd', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('759', '35', '谢耳朵', '2021-04-01 20:39:39', '评论：jbdfkjbdsjbn\njcbdsvkbdsbv', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('760', '35', '谢耳朵', '2021-04-01 20:39:47', '点赞评论', '19', 'jbdfkjbdsjbn\njcbdsvkbdsbv');
INSERT INTO `record` VALUES ('761', '35', '谢耳朵', '2021-04-01 20:39:48', '点赞评论', '18', 'sgdfgbfdbfd');
INSERT INTO `record` VALUES ('762', '35', '谢耳朵', '2021-04-01 20:39:52', '点赞动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('763', '35', '谢耳朵', '2021-04-01 20:39:54', '转发动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('764', '35', '谢耳朵', '2021-04-01 20:40:54', '转发动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('765', '35', '谢耳朵', '2021-04-01 20:41:15', '转发动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('766', '35', '谢耳朵', '2021-04-01 20:51:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('767', '35', '谢耳朵', '2021-04-01 21:06:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('768', '35', '谢耳朵', '2021-04-01 21:14:37', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('769', '35', '谢耳朵', '2021-04-01 21:14:39', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('770', '35', '谢耳朵', '2021-04-01 21:14:40', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('771', '35', '谢耳朵', '2021-04-01 21:15:54', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('772', '35', '谢耳朵', '2021-04-01 21:15:58', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('773', '35', '谢耳朵', '2021-04-01 21:16:28', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('774', '35', '谢耳朵', '2021-04-01 21:16:28', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('775', '35', '谢耳朵', '2021-04-01 21:24:47', '注销成功', '', '');
INSERT INTO `record` VALUES ('776', '35', '谢耳朵', '2021-04-01 21:24:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('777', '35', '谢耳朵', '2021-04-01 22:37:38', '注销成功', '', '');
INSERT INTO `record` VALUES ('778', '35', '谢耳朵', '2021-04-02 09:12:44', '登录成功', '', '');
INSERT INTO `record` VALUES ('779', '35', '谢耳朵', '2021-04-02 09:21:35', '注销成功', '', '');
INSERT INTO `record` VALUES ('780', '35', '谢耳朵', '2021-04-02 09:21:37', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('781', '35', '谢耳朵', '2021-04-02 09:21:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('782', '35', '谢耳朵', '2021-04-02 09:21:41', '注销成功', '', '');
INSERT INTO `record` VALUES ('783', '35', '谢耳朵', '2021-04-02 09:21:49', '登录成功', '', '');
INSERT INTO `record` VALUES ('784', '35', '谢耳朵', '2021-04-02 10:18:38', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('785', '35', '谢耳朵', '2021-04-02 10:18:40', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('786', '35', '谢耳朵', '2021-04-02 10:18:56', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('787', '35', '谢耳朵', '2021-04-02 10:18:57', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('788', '35', '谢耳朵', '2021-04-02 10:20:33', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('789', '35', '谢耳朵', '2021-04-02 10:20:35', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('790', '35', '谢耳朵', '2021-04-02 10:20:37', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('791', '35', '谢耳朵', '2021-04-02 10:23:41', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('792', '35', '谢耳朵', '2021-04-02 10:23:45', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('793', '35', '谢耳朵', '2021-04-02 10:24:10', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('794', '35', '谢耳朵', '2021-04-02 10:24:16', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('795', '35', '谢耳朵', '2021-04-02 10:24:18', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('796', '35', '谢耳朵', '2021-04-02 10:24:44', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('797', '35', '谢耳朵', '2021-04-02 10:24:45', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('798', '35', '谢耳朵', '2021-04-02 10:24:46', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('799', '35', '谢耳朵', '2021-04-02 10:24:49', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('800', '35', '谢耳朵', '2021-04-02 10:27:59', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('801', '35', '谢耳朵', '2021-04-02 10:28:04', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('802', '35', '谢耳朵', '2021-04-02 10:28:05', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('803', '35', '谢耳朵', '2021-04-02 10:28:07', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('804', '35', '谢耳朵', '2021-04-02 10:28:20', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('805', '35', '谢耳朵', '2021-04-02 10:28:21', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('806', '35', '谢耳朵', '2021-04-02 10:28:26', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('807', '35', '谢耳朵', '2021-04-02 10:28:27', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('808', '35', '谢耳朵', '2021-04-02 10:50:28', '发送消息：147', '7', '小阿Giao');
INSERT INTO `record` VALUES ('809', '35', '谢耳朵', '2021-04-02 10:50:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('810', '7', '小阿Giao', '2021-04-02 10:50:39', '登录成功', '', '');
INSERT INTO `record` VALUES ('811', '7', '小阿Giao', '2021-04-02 10:51:04', '发送消息：', '35', '谢耳朵');
INSERT INTO `record` VALUES ('812', '7', '小阿Giao', '2021-04-02 10:51:07', '注销成功', '', '');
INSERT INTO `record` VALUES ('813', '35', '谢耳朵', '2021-04-02 10:51:09', '登录成功', '', '');
INSERT INTO `record` VALUES ('814', '35', '谢耳朵', '2021-04-02 10:53:32', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('815', '35', '谢耳朵', '2021-04-02 10:53:53', '发送消息：颐和园', '7', '小阿Giao');
INSERT INTO `record` VALUES ('816', '35', '谢耳朵', '2021-04-02 10:58:29', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('817', '35', '谢耳朵', '2021-04-02 10:58:30', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('818', '35', '谢耳朵', '2021-04-02 11:07:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('819', '35', '谢耳朵', '2021-04-02 11:07:56', '登录成功', '', '');
INSERT INTO `record` VALUES ('820', '35', '谢耳朵', '2021-04-02 11:08:20', '取消点赞', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('821', '35', '谢耳朵', '2021-04-02 11:08:27', '点赞动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('822', '35', '谢耳朵', '2021-04-02 11:08:32', '转发动态', '38', 'kjdbscjbdsjbvjdsbjhvdbsv');
INSERT INTO `record` VALUES ('823', '35', '谢耳朵', '2021-04-02 11:08:50', '发表动态', '', '1111');
INSERT INTO `record` VALUES ('824', '35', '谢耳朵', '2021-04-02 11:08:56', '转发动态', '39', '1111');
INSERT INTO `record` VALUES ('825', '35', '谢耳朵', '2021-04-02 11:13:53', '注销成功', '', '');
INSERT INTO `record` VALUES ('826', '35', '谢耳朵', '2021-04-02 11:13:55', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('827', '35', '谢耳朵', '2021-04-02 11:13:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('828', '35', '谢耳朵', '2021-04-02 11:14:29', '注销成功', '', '');
INSERT INTO `record` VALUES ('829', '35', '谢耳朵', '2021-04-02 11:14:34', '登录成功', '', '');
INSERT INTO `record` VALUES ('830', '35', '谢耳朵', '2021-04-02 11:14:52', '注销成功', '', '');
INSERT INTO `record` VALUES ('831', '35', '谢耳朵', '2021-04-02 11:14:54', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('832', '35', '谢耳朵', '2021-04-02 11:14:57', '登录成功', '', '');
INSERT INTO `record` VALUES ('833', '35', '谢耳朵', '2021-04-02 11:15:27', '注销成功', '', '');
INSERT INTO `record` VALUES ('834', '35', '谢耳朵', '2021-04-02 11:15:30', '密码错误，登录失败', '', '');
INSERT INTO `record` VALUES ('835', '35', '谢耳朵', '2021-04-02 11:15:33', '登录成功', '', '');
INSERT INTO `record` VALUES ('836', '35', '谢耳朵', '2021-04-02 11:16:19', '注销成功', '', '');
INSERT INTO `record` VALUES ('837', '35', '谢耳朵', '2021-04-02 11:16:22', '登录成功', '', '');
INSERT INTO `record` VALUES ('838', '35', '谢耳朵', '2021-04-02 11:16:50', '注销成功', '', '');
INSERT INTO `record` VALUES ('839', '35', '谢耳朵', '2021-04-02 11:16:52', '登录成功', '', '');
INSERT INTO `record` VALUES ('840', '35', '谢耳朵', '2021-04-02 11:17:04', '注销成功', '', '');
INSERT INTO `record` VALUES ('841', '35', '谢耳朵', '2021-04-02 11:17:05', '登录成功', '', '');
INSERT INTO `record` VALUES ('842', '35', '谢耳朵', '2021-04-02 11:17:21', '注销成功', '', '');
INSERT INTO `record` VALUES ('843', '35', '谢耳朵', '2021-04-02 11:17:23', '登录成功', '', '');
INSERT INTO `record` VALUES ('844', '35', '谢耳朵', '2021-04-02 11:34:14', '注销成功', '', '');
INSERT INTO `record` VALUES ('845', '35', '谢耳朵', '2021-04-02 11:34:17', '登录成功', '', '');
INSERT INTO `record` VALUES ('846', '35', '谢耳朵', '2021-04-02 11:34:23', '注销成功', '', '');
INSERT INTO `record` VALUES ('847', '35', '谢耳朵', '2021-04-02 11:34:25', '登录成功', '', '');
INSERT INTO `record` VALUES ('848', '35', '谢耳朵', '2021-04-02 11:37:28', '注销成功', '', '');
INSERT INTO `record` VALUES ('849', '3', '卢本伟', '2021-04-02 11:37:31', '登录成功', '', '');
INSERT INTO `record` VALUES ('850', '3', '卢本伟', '2021-04-02 11:37:39', '发送消息：111', '35', '谢耳朵');
INSERT INTO `record` VALUES ('851', '3', '卢本伟', '2021-04-02 11:37:42', '注销成功', '', '');
INSERT INTO `record` VALUES ('852', '35', '谢耳朵', '2021-04-02 11:37:43', '登录成功', '', '');
INSERT INTO `record` VALUES ('853', '35', '谢耳朵', '2021-04-02 11:38:00', '删除消息：111', '3', '卢本伟');
INSERT INTO `record` VALUES ('854', '35', '谢耳朵', '2021-04-02 11:38:02', '注销成功', '', '');
INSERT INTO `record` VALUES ('855', '3', '卢本伟', '2021-04-02 11:38:04', '登录成功', '', '');
INSERT INTO `record` VALUES ('856', '3', '卢本伟', '2021-04-02 11:38:12', '发送消息：cdscdscdsvc', '35', '谢耳朵');
INSERT INTO `record` VALUES ('857', '3', '卢本伟', '2021-04-02 11:38:15', '注销成功', '', '');
INSERT INTO `record` VALUES ('858', '35', '谢耳朵', '2021-04-02 11:38:16', '登录成功', '', '');
INSERT INTO `record` VALUES ('859', '35', '谢耳朵', '2021-04-02 11:41:58', '注销成功', '', '');
INSERT INTO `record` VALUES ('860', '35', '谢耳朵', '2021-04-02 11:42:08', '登录成功', '', '');
INSERT INTO `record` VALUES ('861', '35', '谢耳朵', '2021-04-02 11:42:24', '注销成功', '', '');
INSERT INTO `record` VALUES ('862', '4', 'PDD', '2021-04-02 11:42:27', '登录成功', '', '');
INSERT INTO `record` VALUES ('863', '4', 'PDD', '2021-04-02 11:42:34', '发送消息：Pdd', '35', '谢耳朵');
INSERT INTO `record` VALUES ('864', '4', 'PDD', '2021-04-02 11:42:36', '注销成功', '', '');
INSERT INTO `record` VALUES ('865', '35', '谢耳朵', '2021-04-02 11:42:37', '登录成功', '', '');
INSERT INTO `record` VALUES ('866', '35', '谢耳朵', '2021-04-02 11:42:52', '删除消息：', '7', '小阿Giao');
INSERT INTO `record` VALUES ('867', '35', '谢耳朵', '2021-04-02 11:42:57', '注销成功', '', '');
INSERT INTO `record` VALUES ('868', '5', '大马猴', '2021-04-02 11:42:59', '登录成功', '', '');
INSERT INTO `record` VALUES ('869', '5', '大马猴', '2021-04-02 11:43:10', '发送消息：大马猴', '35', '谢耳朵');
INSERT INTO `record` VALUES ('870', '5', '大马猴', '2021-04-02 11:43:12', '注销成功', '', '');
INSERT INTO `record` VALUES ('871', '35', '谢耳朵', '2021-04-02 11:43:14', '登录成功', '', '');
INSERT INTO `record` VALUES ('872', '35', '谢耳朵', '2021-04-02 13:48:08', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('873', '35', '谢耳朵', '2021-04-02 13:51:11', '发表动态', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('874', '35', '谢耳朵', '2021-04-02 13:51:25', '注销成功', null, null);
INSERT INTO `record` VALUES ('875', '1', '汽车之家', '2021-04-02 13:51:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('876', '1', '汽车之家', '2021-04-02 13:52:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('877', '4', 'PDD', '2021-04-02 13:52:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('878', '4', 'PDD', '2021-04-02 13:52:17', '注销成功', null, null);
INSERT INTO `record` VALUES ('879', '2', '化腾', '2021-04-02 13:52:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('880', '2', '化腾', '2021-04-02 13:52:27', '注销成功', null, null);
INSERT INTO `record` VALUES ('881', '3', '卢本伟', '2021-04-02 13:52:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('882', '3', '卢本伟', '2021-04-02 13:58:02', '注销成功', null, null);
INSERT INTO `record` VALUES ('883', '35', '谢耳朵', '2021-04-02 13:58:04', '登录成功', null, null);
INSERT INTO `record` VALUES ('884', '35', '谢耳朵', '2021-04-02 13:58:57', '发送消息：麻瓜藤', '2', '化腾');
INSERT INTO `record` VALUES ('885', '35', '谢耳朵', '2021-04-02 13:58:59', '注销成功', null, null);
INSERT INTO `record` VALUES ('886', '2', '化腾', '2021-04-02 13:59:00', '登录成功', null, null);
INSERT INTO `record` VALUES ('887', '2', '化腾', '2021-04-02 13:59:18', '删除消息：麻瓜藤', '35', '谢耳朵');
INSERT INTO `record` VALUES ('888', '2', '化腾', '2021-04-02 14:05:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('889', '35', '谢耳朵', '2021-04-02 14:06:00', '登录成功', null, null);
INSERT INTO `record` VALUES ('890', '35', '谢耳朵', '2021-04-02 14:14:16', '删除评论：null', '36', '1234567890');
INSERT INTO `record` VALUES ('891', '35', '谢耳朵', '2021-04-02 14:18:59', '点赞动态', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('892', '35', '谢耳朵', '2021-04-02 14:19:38', '转发动态', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('893', '35', '谢耳朵', '2021-04-02 14:20:07', '评论：752572', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('894', '35', '谢耳朵', '2021-04-02 14:22:01', '评论：按时擦擦', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('895', '35', '谢耳朵', '2021-04-02 14:22:09', '评论：阿砂石厂', '39', '1111');
INSERT INTO `record` VALUES ('896', '35', '谢耳朵', '2021-04-02 14:30:46', '取消点赞', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('897', '35', '谢耳朵', '2021-04-02 14:31:17', '评论：null', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('898', '35', '谢耳朵', '2021-04-02 14:33:42', '评论：null', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('899', '35', '谢耳朵', '2021-04-02 14:54:26', '评论：耗子尾汁', '40', '更新动态要通知粉丝');
INSERT INTO `record` VALUES ('900', '35', '谢耳朵', '2021-04-02 14:55:09', '评论：阿斯顿撒多', '30', '汽车之家');
INSERT INTO `record` VALUES ('901', '35', '谢耳朵', '2021-04-02 14:55:40', '点赞评论', '24', '阿斯顿撒多');
INSERT INTO `record` VALUES ('902', '35', '谢耳朵', '2021-04-02 14:55:54', '评论：48448', '30', '汽车之家');
INSERT INTO `record` VALUES ('903', '35', '谢耳朵', '2021-04-02 14:55:57', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('904', '35', '谢耳朵', '2021-04-02 14:55:58', '点赞动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('905', '35', '谢耳朵', '2021-04-02 14:56:00', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('906', '35', '谢耳朵', '2021-04-02 14:56:17', '转发动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('907', '35', '谢耳朵', '2021-04-02 14:56:42', '发表动态', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('908', '35', '谢耳朵', '2021-04-02 14:57:00', '点赞动态', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('909', '35', '谢耳朵', '2021-04-02 14:59:09', '评论：阿萨德', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('910', '35', '谢耳朵', '2021-04-02 15:00:58', '取消点赞', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('911', '35', '谢耳朵', '2021-04-02 15:00:59', '点赞动态', '41', ': 啊哈哈哈哈哈哈哈');
INSERT INTO `record` VALUES ('912', '35', '谢耳朵', '2021-04-02 15:01:04', '取消点赞', '30', '汽车之家');
INSERT INTO `record` VALUES ('913', '35', '谢耳朵', '2021-04-02 15:01:57', '评论：147', '30', '汽车之家');
INSERT INTO `record` VALUES ('914', '35', '谢耳朵', '2021-04-02 15:02:21', '评论：789', '30', '汽车之家');
INSERT INTO `record` VALUES ('915', '35', '谢耳朵', '2021-04-02 15:02:26', '点赞动态', '30', '汽车之家');
INSERT INTO `record` VALUES ('916', '35', '谢耳朵', '2021-04-02 15:05:49', '评论：258741369', '30', '汽车之家');
INSERT INTO `record` VALUES ('917', '35', '谢耳朵', '2021-04-02 15:06:10', '评论：114冬季几年级', '30', '汽车之家');
INSERT INTO `record` VALUES ('918', '35', '谢耳朵', '2021-04-02 15:06:30', '评论：123更不能借口了', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('919', '35', '谢耳朵', '2021-04-02 15:06:40', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('920', '35', '谢耳朵', '2021-04-02 15:06:41', '点赞动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('921', '35', '谢耳朵', '2021-04-02 15:14:00', '发表动态', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('922', '35', '谢耳朵', '2021-04-02 15:25:54', '登录成功', null, null);
INSERT INTO `record` VALUES ('923', '35', '谢耳朵', '2021-04-02 16:10:38', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('924', '35', '谢耳朵', '2021-04-02 16:10:39', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('925', '35', '谢耳朵', '2021-04-02 16:13:39', '转发动态', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('926', '35', '谢耳朵', '2021-04-02 17:25:33', '登录成功', null, null);
INSERT INTO `record` VALUES ('927', '35', '谢耳朵', '2021-04-02 17:29:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('928', '35', '谢耳朵', '2021-04-02 17:33:58', '登录成功', null, null);
INSERT INTO `record` VALUES ('929', '35', '谢耳朵', '2021-04-02 17:34:09', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('930', '35', '谢耳朵', '2021-04-02 17:34:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('931', '7', '小阿Giao', '2021-04-02 21:40:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('932', '7', '小阿Giao', '2021-04-02 21:40:59', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('933', '7', '小阿Giao', '2021-04-02 21:41:15', '注销成功', null, null);
INSERT INTO `record` VALUES ('934', '35', '谢耳朵', '2021-04-02 21:41:17', '登录成功', null, null);
INSERT INTO `record` VALUES ('935', '35', '谢耳朵', '2021-04-02 21:41:36', '点赞动态', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('936', '35', '谢耳朵', '2021-04-02 21:41:42', '评论：固化房合法化会更好', '37', '杜兰特FMVP');
INSERT INTO `record` VALUES ('937', '35', '谢耳朵', '2021-04-02 21:42:01', '发表动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('938', '35', '谢耳朵', '2021-04-02 21:46:10', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('939', '35', '谢耳朵', '2021-04-02 21:46:12', '取消点赞', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('940', '35', '谢耳朵', '2021-04-02 21:47:01', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('941', '35', '谢耳朵', '2021-04-02 21:47:32', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('942', '35', '谢耳朵', '2021-04-02 21:47:35', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('943', '35', '谢耳朵', '2021-04-03 13:39:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('944', '35', '谢耳朵', '2021-04-03 13:39:53', '评论：111', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('945', '35', '谢耳朵', '2021-04-03 13:40:01', '点赞评论', '33', '111');
INSERT INTO `record` VALUES ('946', '35', '谢耳朵', '2021-04-03 13:40:04', '取消点赞', '33', '111');
INSERT INTO `record` VALUES ('947', '35', '谢耳朵', '2021-04-03 13:40:13', '评论：你导剪版报价单', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('948', '35', '谢耳朵', '2021-04-03 13:40:19', '点赞评论', '34', '你导剪版报价单');
INSERT INTO `record` VALUES ('949', '35', '谢耳朵', '2021-04-03 13:40:39', '取消点赞', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('950', '35', '谢耳朵', '2021-04-03 13:40:40', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('951', '35', '谢耳朵', '2021-04-03 13:42:29', '注销成功', null, null);
INSERT INTO `record` VALUES ('952', '3', '卢本伟', '2021-04-03 13:43:55', '登录成功', null, null);
INSERT INTO `record` VALUES ('953', '3', '卢本伟', '2021-04-03 13:44:05', '取消关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('954', '3', '卢本伟', '2021-04-03 13:44:06', '关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('955', '3', '卢本伟', '2021-04-03 13:46:13', '注销成功', null, null);
INSERT INTO `record` VALUES ('956', '2', '化腾', '2021-04-03 13:46:25', '登录成功', null, null);
INSERT INTO `record` VALUES ('957', '2', '化腾', '2021-04-03 13:49:11', '注销成功', null, null);
INSERT INTO `record` VALUES ('958', '2', '化腾', '2021-04-03 13:49:22', '登录成功', null, null);
INSERT INTO `record` VALUES ('959', '2', '化腾', '2021-04-03 13:49:40', '发送消息：', '35', '谢耳朵');
INSERT INTO `record` VALUES ('960', '2', '化腾', '2021-04-03 13:49:52', '注销成功', null, null);
INSERT INTO `record` VALUES ('961', '7', '小阿Giao', '2021-04-03 13:49:57', '登录成功', null, null);
INSERT INTO `record` VALUES ('962', '7', '小阿Giao', '2021-04-03 13:49:59', '注销成功', null, null);
INSERT INTO `record` VALUES ('963', '35', '谢耳朵', '2021-04-03 13:50:02', '登录成功', null, null);
INSERT INTO `record` VALUES ('964', '35', '谢耳朵', '2021-04-03 13:52:32', '发送消息：潇洒下是', '2', '化腾');
INSERT INTO `record` VALUES ('965', '35', '谢耳朵', '2021-04-03 13:53:32', '发送消息：你刚发你', '2', '化腾');
INSERT INTO `record` VALUES ('966', '35', '谢耳朵', '2021-04-03 13:54:03', '发送消息：按时擦拭擦是', '2', '化腾');
INSERT INTO `record` VALUES ('967', '35', '谢耳朵', '2021-04-03 13:54:11', '发送消息：擦擦撒擦擦是', '2', '化腾');
INSERT INTO `record` VALUES ('968', '35', '谢耳朵', '2021-04-03 13:54:44', '发送消息：西安市西安市', '2', '化腾');
INSERT INTO `record` VALUES ('969', '35', '谢耳朵', '2021-04-03 13:54:59', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('970', '35', '谢耳朵', '2021-04-03 13:55:00', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('971', '35', '谢耳朵', '2021-04-03 13:55:04', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('972', '35', '谢耳朵', '2021-04-03 13:55:06', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('973', '35', '谢耳朵', '2021-04-03 13:55:10', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('974', '35', '谢耳朵', '2021-04-03 13:55:11', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('975', '35', '谢耳朵', '2021-04-03 13:56:18', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('976', '35', '谢耳朵', '2021-04-03 13:56:18', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('977', '35', '谢耳朵', '2021-04-03 13:56:39', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('978', '35', '谢耳朵', '2021-04-03 13:56:40', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('979', '35', '谢耳朵', '2021-04-03 13:57:51', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('980', '35', '谢耳朵', '2021-04-03 13:57:52', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('981', '35', '谢耳朵', '2021-04-03 13:58:21', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('982', '35', '谢耳朵', '2021-04-03 13:58:22', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('983', '35', '谢耳朵', '2021-04-03 13:58:40', '注销成功', null, null);
INSERT INTO `record` VALUES ('984', '35', '谢耳朵', '2021-04-03 13:58:51', '登录成功', null, null);
INSERT INTO `record` VALUES ('985', '35', '谢耳朵', '2021-04-03 13:58:52', '注销成功', null, null);
INSERT INTO `record` VALUES ('986', '2', '化腾', '2021-04-03 13:58:54', '登录成功', null, null);
INSERT INTO `record` VALUES ('987', '2', '化腾', '2021-04-03 13:59:19', '注销成功', null, null);
INSERT INTO `record` VALUES ('988', '35', '谢耳朵', '2021-04-03 13:59:21', '登录成功', null, null);
INSERT INTO `record` VALUES ('989', '35', '谢耳朵', '2021-04-03 13:59:32', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('990', '35', '谢耳朵', '2021-04-03 14:08:03', '发送消息：ascasc', '2', '化腾');
INSERT INTO `record` VALUES ('991', '35', '谢耳朵', '2021-04-03 14:08:23', '发送消息：擦擦删除', '2', '化腾');
INSERT INTO `record` VALUES ('992', '35', '谢耳朵', '2021-04-03 14:10:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('993', '35', '谢耳朵', '2021-04-03 14:10:40', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('994', '35', '谢耳朵', '2021-04-03 14:10:40', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('995', '35', '谢耳朵', '2021-04-03 14:11:47', '注销成功', null, null);
INSERT INTO `record` VALUES ('996', '35', '谢耳朵', '2021-04-03 14:11:57', '登录成功', null, null);
INSERT INTO `record` VALUES ('997', '35', '谢耳朵', '2021-04-03 14:12:05', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('998', '35', '谢耳朵', '2021-04-03 14:12:05', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('999', '35', '谢耳朵', '2021-04-03 14:25:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1000', '35', '谢耳朵', '2021-04-03 14:25:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('1001', '35', '谢耳朵', '2021-04-03 14:25:36', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1002', '35', '谢耳朵', '2021-04-03 14:25:36', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1003', '1', '汽车之家', '2021-04-03 19:08:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1004', '1', '汽车之家', '2021-04-03 19:09:06', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1005', '1', '汽车之家', '2021-04-03 19:22:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1006', '1', '汽车之家', '2021-04-03 19:22:26', '登录成功', null, null);
INSERT INTO `record` VALUES ('1007', '1', '汽车之家', '2021-04-03 19:23:03', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1008', '1', '汽车之家', '2021-04-03 19:23:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1009', '35', '谢耳朵', '2021-04-03 19:23:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1010', '35', '谢耳朵', '2021-04-03 19:23:39', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1011', '35', '谢耳朵', '2021-04-03 19:24:10', '注销成功', null, null);
INSERT INTO `record` VALUES ('1012', '2', '化腾', '2021-04-03 19:24:13', '登录成功', null, null);
INSERT INTO `record` VALUES ('1013', '2', '化腾', '2021-04-03 19:24:19', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1014', '2', '化腾', '2021-04-03 19:24:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1015', '3', '卢本伟', '2021-04-03 19:24:25', '登录成功', null, null);
INSERT INTO `record` VALUES ('1016', '3', '卢本伟', '2021-04-03 19:24:29', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1017', '3', '卢本伟', '2021-04-03 19:24:33', '注销成功', null, null);
INSERT INTO `record` VALUES ('1018', '4', 'PDD', '2021-04-03 19:24:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1019', '4', 'PDD', '2021-04-03 19:24:41', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1020', '4', 'PDD', '2021-04-03 19:24:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1021', '5', '大马猴', '2021-04-03 19:24:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1022', '5', '大马猴', '2021-04-03 19:24:52', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1023', '5', '大马猴', '2021-04-03 19:24:54', '注销成功', null, null);
INSERT INTO `record` VALUES ('1024', '6', '药水哥', '2021-04-03 19:24:56', '登录成功', null, null);
INSERT INTO `record` VALUES ('1025', '6', '药水哥', '2021-04-03 19:25:01', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1026', '6', '药水哥', '2021-04-03 19:25:03', '注销成功', null, null);
INSERT INTO `record` VALUES ('1027', '7', '小阿Giao', '2021-04-03 19:25:07', '登录成功', null, null);
INSERT INTO `record` VALUES ('1028', '7', '小阿Giao', '2021-04-03 19:25:12', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1029', '7', '小阿Giao', '2021-04-03 19:25:15', '注销成功', null, null);
INSERT INTO `record` VALUES ('1030', '8', '混元功法保国', '2021-04-03 19:25:18', '登录成功', null, null);
INSERT INTO `record` VALUES ('1031', '8', '混元功法保国', '2021-04-03 19:25:24', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1032', '8', '混元功法保国', '2021-04-03 19:25:25', '注销成功', null, null);
INSERT INTO `record` VALUES ('1033', '9', '练习生蔡徐坤', '2021-04-03 19:25:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('1034', '9', '练习生蔡徐坤', '2021-04-03 19:25:34', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1035', '9', '练习生蔡徐坤', '2021-04-03 19:25:34', '注销成功', null, null);
INSERT INTO `record` VALUES ('1036', '10', '碧萝奶奶', '2021-04-03 19:25:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1037', '10', '碧萝奶奶', '2021-04-03 19:25:42', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1038', '10', '碧萝奶奶', '2021-04-03 20:21:32', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1039', '10', '碧萝奶奶', '2021-04-03 20:21:32', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1040', '10', '碧萝奶奶', '2021-04-03 20:21:38', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1041', '10', '碧萝奶奶', '2021-04-03 20:21:47', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1042', '10', '碧萝奶奶', '2021-04-03 20:21:55', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1043', '10', '碧萝奶奶', '2021-04-03 20:34:06', '注销成功', null, null);
INSERT INTO `record` VALUES ('1044', '35', '谢耳朵', '2021-04-03 20:34:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1045', '35', '谢耳朵', '2021-04-03 20:51:30', '注销成功', null, null);
INSERT INTO `record` VALUES ('1046', '35', '谢耳朵', '2021-04-03 20:51:33', '登录成功', null, null);
INSERT INTO `record` VALUES ('1047', '35', '谢耳朵', '2021-04-03 20:52:31', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1048', '35', '谢耳朵', '2021-04-03 21:31:41', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1049', '35', '谢耳朵', '2021-04-03 21:33:29', '注销成功', null, null);
INSERT INTO `record` VALUES ('1050', '35', '谢耳朵', '2021-04-03 21:33:31', '登录成功', null, null);
INSERT INTO `record` VALUES ('1051', '35', '谢耳朵', '2021-04-03 21:33:35', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1052', '35', '谢耳朵', '2021-04-03 21:34:35', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1053', '35', '谢耳朵', '2021-04-03 21:37:11', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1054', '35', '谢耳朵', '2021-04-03 21:39:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('1055', '35', '谢耳朵', '2021-04-03 21:39:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('1056', '35', '谢耳朵', '2021-04-03 21:39:19', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1057', '35', '谢耳朵', '2021-04-03 21:40:30', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1058', '35', '谢耳朵', '2021-04-03 21:42:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1059', '35', '谢耳朵', '2021-04-03 21:42:44', '登录成功', null, null);
INSERT INTO `record` VALUES ('1060', '35', '谢耳朵', '2021-04-03 21:43:43', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1061', '35', '谢耳朵', '2021-04-03 21:45:37', '注销成功', null, null);
INSERT INTO `record` VALUES ('1062', '35', '谢耳朵', '2021-04-03 21:45:39', '登录成功', null, null);
INSERT INTO `record` VALUES ('1063', '35', '谢耳朵', '2021-04-03 21:46:13', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1064', '35', '谢耳朵', '2021-04-03 21:46:51', '注销成功', null, null);
INSERT INTO `record` VALUES ('1065', '35', '谢耳朵', '2021-04-03 21:46:56', '登录成功', null, null);
INSERT INTO `record` VALUES ('1066', '35', '谢耳朵', '2021-04-03 21:47:50', '注销成功', null, null);
INSERT INTO `record` VALUES ('1067', '35', '谢耳朵', '2021-04-03 21:47:52', '登录成功', null, null);
INSERT INTO `record` VALUES ('1068', '35', '谢耳朵', '2021-04-03 21:48:28', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1069', '35', '谢耳朵', '2021-04-03 21:50:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1070', '35', '谢耳朵', '2021-04-03 21:50:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1071', '35', '谢耳朵', '2021-04-03 21:50:56', '注销成功', null, null);
INSERT INTO `record` VALUES ('1072', '35', '谢耳朵', '2021-04-03 21:51:03', '登录成功', null, null);
INSERT INTO `record` VALUES ('1073', '35', '谢耳朵', '2021-04-03 21:51:24', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1074', '35', '谢耳朵', '2021-04-03 22:13:15', '登录成功', null, null);
INSERT INTO `record` VALUES ('1075', '35', '谢耳朵', '2021-04-04 11:52:06', '登录成功', null, null);
INSERT INTO `record` VALUES ('1076', '35', '谢耳朵', '2021-04-04 11:52:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1077', '4', 'PDD', '2021-04-04 11:56:02', '登录成功', null, null);
INSERT INTO `record` VALUES ('1078', '4', 'PDD', '2021-04-04 11:56:17', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1079', '4', 'PDD', '2021-04-04 11:56:31', '转发动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('1080', '4', 'PDD', '2021-04-04 11:58:32', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1081', '4', 'PDD', '2021-04-04 11:59:10', '注销成功', null, null);
INSERT INTO `record` VALUES ('1082', '35', '谢耳朵', '2021-04-04 11:59:12', '登录成功', null, null);
INSERT INTO `record` VALUES ('1083', '35', '谢耳朵', '2021-04-04 11:59:24', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1084', '35', '谢耳朵', '2021-04-04 11:59:35', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1085', '35', '谢耳朵', '2021-04-04 11:59:48', '转发动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1086', '35', '谢耳朵', '2021-04-04 12:00:12', '取消点赞', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1087', '35', '谢耳朵', '2021-04-04 12:00:13', '点赞动态', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1088', '35', '谢耳朵', '2021-04-04 12:00:18', '取消点赞', '2', '4月至5月成绩汇总 麋鹿测试半月报Vol.5');
INSERT INTO `record` VALUES ('1089', '35', '谢耳朵', '2021-04-04 12:00:36', '评论：擦挫伤', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('1090', '35', '谢耳朵', '2021-04-04 13:05:07', '取消关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1091', '35', '谢耳朵', '2021-04-04 13:05:07', '关注', '3', '卢本伟');
INSERT INTO `record` VALUES ('1092', '35', '谢耳朵', '2021-04-06 09:04:14', '登录成功', null, null);
INSERT INTO `record` VALUES ('1093', '35', '谢耳朵', '2021-04-06 09:04:32', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1094', '35', '谢耳朵', '2021-04-06 09:07:10', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1095', '35', '谢耳朵', '2021-04-06 09:08:06', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1096', '35', '谢耳朵', '2021-04-06 09:08:50', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1097', '35', '谢耳朵', '2021-04-06 09:58:45', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1098', '0:0:0:0:0:0:0:1', '', '2021-04-06 09:58:48', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1099', '35', '谢耳朵', '2021-04-06 09:58:50', '登录成功', null, null);
INSERT INTO `record` VALUES ('1100', '35', '谢耳朵', '2021-04-06 10:29:00', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1101', '0:0:0:0:0:0:0:1', '', '2021-04-06 10:29:02', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1102', '35', '谢耳朵', '2021-04-06 10:29:04', '登录成功', null, null);
INSERT INTO `record` VALUES ('1103', '35', '谢耳朵', '2021-04-06 10:54:13', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1104', '35', '谢耳朵', '2021-04-06 10:54:15', '登录成功', null, null);
INSERT INTO `record` VALUES ('1105', '35', '谢耳朵', '2021-04-06 10:57:47', '登录成功', null, null);
INSERT INTO `record` VALUES ('1106', '35', '谢耳朵', '2021-04-06 13:05:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1107', '35', '谢耳朵', '2021-04-06 13:13:49', '注销成功', null, null);
INSERT INTO `record` VALUES ('1108', '2', '化腾', '2021-04-06 13:13:51', '登录成功', null, null);
INSERT INTO `record` VALUES ('1109', '2', '化腾', '2021-04-06 13:13:57', '注销成功', null, null);
INSERT INTO `record` VALUES ('1110', '35', '谢耳朵', '2021-04-06 13:13:59', '登录成功', null, null);
INSERT INTO `record` VALUES ('1111', '35', '谢耳朵', '2021-04-06 13:21:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1112', '2', '化腾', '2021-04-06 13:21:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('1113', '2', '化腾', '2021-04-06 13:21:45', '注销成功', null, null);
INSERT INTO `record` VALUES ('1114', '35', '谢耳朵', '2021-04-06 13:21:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1115', '35', '谢耳朵', '2021-04-06 13:22:06', '注销成功', null, null);
INSERT INTO `record` VALUES ('1116', '2', '化腾', '2021-04-06 13:22:08', '登录成功', null, null);
INSERT INTO `record` VALUES ('1117', '2', '化腾', '2021-04-06 13:22:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1118', '35', '谢耳朵', '2021-04-06 13:22:43', '登录成功', null, null);
INSERT INTO `record` VALUES ('1119', '35', '谢耳朵', '2021-04-06 13:22:48', '注销成功', null, null);
INSERT INTO `record` VALUES ('1120', '35', '谢耳朵', '2021-04-06 13:22:49', '登录成功', null, null);
INSERT INTO `record` VALUES ('1121', '35', '谢耳朵', '2021-04-06 13:22:54', '注销成功', null, null);
INSERT INTO `record` VALUES ('1122', '2', '化腾', '2021-04-06 13:22:55', '登录成功', null, null);
INSERT INTO `record` VALUES ('1123', '2', '化腾', '2021-04-06 13:23:11', '注销成功', null, null);
INSERT INTO `record` VALUES ('1124', '35', '谢耳朵', '2021-04-06 13:23:12', '登录成功', null, null);
INSERT INTO `record` VALUES ('1125', '35', '谢耳朵', '2021-04-06 13:23:16', '注销成功', null, null);
INSERT INTO `record` VALUES ('1126', '2', '化腾', '2021-04-06 13:23:18', '登录成功', null, null);
INSERT INTO `record` VALUES ('1127', '2', '化腾', '2021-04-06 13:37:34', '注销成功', null, null);
INSERT INTO `record` VALUES ('1128', '35', '谢耳朵', '2021-04-06 13:37:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1129', '35', '谢耳朵', '2021-04-06 13:37:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1130', '2', '化腾', '2021-04-06 13:37:44', '登录成功', null, null);
INSERT INTO `record` VALUES ('1131', '2', '化腾', '2021-04-06 15:03:01', '注销成功', null, null);
INSERT INTO `record` VALUES ('1132', '2', '化腾', '2021-04-06 15:03:03', '登录成功', null, null);
INSERT INTO `record` VALUES ('1133', '2', '化腾', '2021-04-06 16:14:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1134', '1', '汽车之家', '2021-04-06 16:14:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('1135', '1', '汽车之家', '2021-04-06 16:22:07', '发布文章', '13', 'sad撒多撒');
INSERT INTO `record` VALUES ('1136', '1', '汽车之家', '2021-04-06 16:26:03', '发布文章', '14', '迪士尼弗兰克你打算快乐风男都可老实能看出你打算老奶擦拭的内存卡技能大赛科技城那绝对是你');
INSERT INTO `record` VALUES ('1137', '1', '汽车之家', '2021-04-06 16:31:19', '发布文章', '15', '1111');
INSERT INTO `record` VALUES ('1138', '1', '汽车之家', '2021-04-06 16:33:32', '发布文章', '16', '1111111');
INSERT INTO `record` VALUES ('1139', '1', '汽车之家', '2021-04-06 17:06:08', '发布文章', '17', 'vvv');
INSERT INTO `record` VALUES ('1140', '1', '汽车之家', '2021-04-06 17:19:24', '发布文章', '18', '哈哈哈');
INSERT INTO `record` VALUES ('1141', '1', '汽车之家', '2021-04-06 17:34:56', '发布文章', '19', '三国杀电饭锅范德萨GV方式');
INSERT INTO `record` VALUES ('1142', '1', '汽车之家', '2021-04-06 17:36:39', '发布文章', '20', '1');
INSERT INTO `record` VALUES ('1143', '1', '汽车之家', '2021-04-06 17:40:44', '发布文章', '21', '111');
INSERT INTO `record` VALUES ('1144', '1', '汽车之家', '2021-04-06 17:41:16', '发布文章', '22', '1');
INSERT INTO `record` VALUES ('1145', '1', '汽车之家', '2021-04-06 17:42:00', '发布文章', '23', '1');
INSERT INTO `record` VALUES ('1146', '1', '汽车之家', '2021-04-06 17:44:50', '发布文章', '24', '1');
INSERT INTO `record` VALUES ('1147', '1', '汽车之家', '2021-04-06 18:43:00', '发布文章', '25', '111');
INSERT INTO `record` VALUES ('1148', '1', '汽车之家', '2021-04-06 18:44:31', '发布文章', '26', '111333');
INSERT INTO `record` VALUES ('1149', '1', '汽车之家', '2021-04-06 18:45:27', '发布文章', '27', 'e');
INSERT INTO `record` VALUES ('1150', '1', '汽车之家', '2021-04-06 18:46:06', '发布文章', '28', 'd');
INSERT INTO `record` VALUES ('1151', '1', '汽车之家', '2021-04-06 18:49:34', '发布文章', '29', 'vvv');
INSERT INTO `record` VALUES ('1152', '1', '汽车之家', '2021-04-06 18:50:20', '发布文章', '30', 'ddd');
INSERT INTO `record` VALUES ('1153', '1', '汽车之家', '2021-04-06 18:51:32', '发布文章', '31', 't');
INSERT INTO `record` VALUES ('1154', '1', '汽车之家', '2021-04-06 18:52:23', '发布文章', '32', 'p');
INSERT INTO `record` VALUES ('1155', '1', '汽车之家', '2021-04-06 18:53:04', '发布文章', '33', 'gc');
INSERT INTO `record` VALUES ('1156', '1', '汽车之家', '2021-04-06 19:23:59', '发布文章', '34', 'xxr');
INSERT INTO `record` VALUES ('1157', '1', '汽车之家', '2021-04-06 19:25:18', '发布文章', '35', '245354254');
INSERT INTO `record` VALUES ('1158', '1', '汽车之家', '2021-04-06 19:30:15', '发布文章', '36', 'vcxzz');
INSERT INTO `record` VALUES ('1159', '1', '汽车之家', '2021-04-06 19:31:01', '发布文章', '37', '233');
INSERT INTO `record` VALUES ('1160', '1', '汽车之家', '2021-04-06 19:31:16', '上传图集', '37', '233');
INSERT INTO `record` VALUES ('1161', '1', '汽车之家', '2021-04-06 19:31:29', '上传图集', '37', '233');
INSERT INTO `record` VALUES ('1162', '1', '汽车之家', '2021-04-06 19:38:59', '发布文章', '38', '测试去');
INSERT INTO `record` VALUES ('1163', '35', '谢耳朵', '2021-04-06 20:19:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1164', '35', '谢耳朵', '2021-04-06 20:19:40', '注销成功', null, null);
INSERT INTO `record` VALUES ('1165', '2', '化腾', '2021-04-06 20:19:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('1166', '2', '化腾', '2021-04-06 20:19:49', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1167', '2', '化腾', '2021-04-06 20:20:57', '发布文章', '39', '111');
INSERT INTO `record` VALUES ('1168', '2', '化腾', '2021-04-06 20:21:09', '上传图集', '39', '111');
INSERT INTO `record` VALUES ('1169', '2', '化腾', '2021-04-06 20:21:13', '上传图集', '39', '111');
INSERT INTO `record` VALUES ('1170', '2', '化腾', '2021-04-06 20:35:09', '发布文章', '40', '测试1');
INSERT INTO `record` VALUES ('1171', '2', '化腾', '2021-04-06 20:35:17', '上传图集', '40', '测试1');
INSERT INTO `record` VALUES ('1172', '2', '化腾', '2021-04-06 20:35:22', '上传图集', '40', '测试1');
INSERT INTO `record` VALUES ('1173', '2', '化腾', '2021-04-06 20:36:40', '发布文章', '41', '测试2');
INSERT INTO `record` VALUES ('1174', '2', '化腾', '2021-04-06 20:37:49', '发布文章', '42', '测试3');
INSERT INTO `record` VALUES ('1175', '2', '化腾', '2021-04-06 20:37:58', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1176', '2', '化腾', '2021-04-06 20:38:10', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1177', '2', '化腾', '2021-04-06 20:38:12', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1178', '2', '化腾', '2021-04-06 20:38:14', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1179', '2', '化腾', '2021-04-06 20:38:16', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1180', '2', '化腾', '2021-04-06 20:38:21', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1181', '2', '化腾', '2021-04-06 20:38:25', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1182', '2', '化腾', '2021-04-06 20:38:27', '上传图集', '42', '测试3');
INSERT INTO `record` VALUES ('1183', '2', '化腾', '2021-04-06 20:44:13', '注销成功', null, null);
INSERT INTO `record` VALUES ('1184', '35', '谢耳朵', '2021-04-06 20:44:14', '登录成功', null, null);
INSERT INTO `record` VALUES ('1185', '35', '谢耳朵', '2021-04-06 20:47:30', '注销成功', null, null);
INSERT INTO `record` VALUES ('1186', '2', '化腾', '2021-04-06 20:47:31', '登录成功', null, null);
INSERT INTO `record` VALUES ('1187', '2', '化腾', '2021-04-06 20:51:24', '注销成功', null, null);
INSERT INTO `record` VALUES ('1188', '1', '汽车之家', '2021-04-06 20:51:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1189', '1', '汽车之家', '2021-04-06 21:43:53', '发布文章', '43', 'xr222');
INSERT INTO `record` VALUES ('1190', '1', '汽车之家', '2021-04-06 21:47:40', '发布文章', '44', '杜兰特FMVP');
INSERT INTO `record` VALUES ('1191', '1', '汽车之家', '2021-04-06 22:03:20', '发布文章', '45', '哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或或');
INSERT INTO `record` VALUES ('1192', '1', '汽车之家', '2021-04-06 22:08:13', '发布文章', '46', '按收盘价都暗示你看了从那时快两年查看兰窗口按错空空');
INSERT INTO `record` VALUES ('1193', '1', '汽车之家', '2021-04-06 22:08:31', '上传图集', '46', '按收盘价都暗示你看了从那时快两年查看兰窗口按错空空');
INSERT INTO `record` VALUES ('1194', '1', '汽车之家', '2021-04-06 22:27:56', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1195', '1', '汽车之家', '2021-04-06 22:27:57', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1196', '1', '汽车之家', '2021-04-06 22:27:58', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1197', '1', '汽车之家', '2021-04-06 22:27:59', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1198', '1', '汽车之家', '2021-04-06 22:29:46', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1199', '1', '汽车之家', '2021-04-06 22:29:47', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1200', '1', '汽车之家', '2021-04-06 22:30:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1201', '2', '化腾', '2021-04-06 22:30:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('1202', '2', '化腾', '2021-04-06 22:44:33', '发布文章', '47', '新一篇');
INSERT INTO `record` VALUES ('1203', '0:0:0:0:0:0:0:1', '', '2021-04-07 10:13:18', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1204', '0:0:0:0:0:0:0:1', '', '2021-04-07 10:18:40', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1205', '35', '谢耳朵', '2021-04-07 10:23:18', '登录成功', null, null);
INSERT INTO `record` VALUES ('1206', '35', '谢耳朵', '2021-04-07 18:57:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1207', '35', '谢耳朵', '2021-04-07 19:07:23', '登录成功', null, null);
INSERT INTO `record` VALUES ('1208', '35', '谢耳朵', '2021-04-07 19:09:30', '删除转发', '43', '发的时候空间宝石可单肩包VB');
INSERT INTO `record` VALUES ('1209', '35', '谢耳朵', '2021-04-07 19:10:12', '删除评论：null', '42', '清明时节雨纷纷');
INSERT INTO `record` VALUES ('1210', '35', '谢耳朵', '2021-04-07 20:16:28', '注销成功', null, null);
INSERT INTO `record` VALUES ('1211', '35', '谢耳朵', '2021-04-07 20:17:38', '登录成功', null, null);
INSERT INTO `record` VALUES ('1212', '35', '谢耳朵', '2021-04-07 20:17:40', '注销成功', null, null);
INSERT INTO `record` VALUES ('1213', '35', '谢耳朵', '2021-04-07 20:18:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1214', '35', '谢耳朵', '2021-04-07 20:18:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1215', '2', '化腾', '2021-04-07 20:18:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1216', '35', '谢耳朵', '2021-04-08 15:32:58', '登录成功', null, null);
INSERT INTO `record` VALUES ('1217', '35', '谢耳朵', '2021-04-08 15:33:23', '注销成功', null, null);
INSERT INTO `record` VALUES ('1218', '2', '化腾', '2021-04-08 15:33:25', '登录成功', null, null);
INSERT INTO `record` VALUES ('1219', '2', '化腾', '2021-04-08 15:46:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('1220', '35', '谢耳朵', '2021-04-08 15:47:01', '登录成功', null, null);
INSERT INTO `record` VALUES ('1221', '35', '谢耳朵', '2021-04-08 15:47:08', '注销成功', null, null);
INSERT INTO `record` VALUES ('1222', '3', '卢本伟', '2021-04-08 15:47:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('1223', '3', '卢本伟', '2021-04-08 15:47:17', '注销成功', null, null);
INSERT INTO `record` VALUES ('1224', '2', '化腾', '2021-04-08 15:47:19', '登录成功', null, null);
INSERT INTO `record` VALUES ('1225', '2', '化腾', '2021-04-08 16:12:47', '发布文章', '48', '待上传图集');
INSERT INTO `record` VALUES ('1226', '2', '化腾', '2021-04-08 16:13:06', '发布文章', '49', '待审核测试');
INSERT INTO `record` VALUES ('1227', '2', '化腾', '2021-04-08 16:13:29', '发布文章', '50', '已驳回测试');
INSERT INTO `record` VALUES ('1228', '35', '谢耳朵', '2021-04-08 16:19:53', '登录成功', null, null);
INSERT INTO `record` VALUES ('1229', '35', '谢耳朵', '2021-04-09 15:42:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1230', '35', '谢耳朵', '2021-04-09 15:43:50', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1231', '35', '谢耳朵', '2021-04-09 15:44:25', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1232', '35', '谢耳朵', '2021-04-09 15:44:41', '登录成功', null, null);
INSERT INTO `record` VALUES ('1233', '35', '谢耳朵', '2021-04-09 17:03:27', '注销成功', null, null);
INSERT INTO `record` VALUES ('1234', '35', '谢耳朵', '2021-04-09 17:03:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1235', '35', '谢耳朵', '2021-04-12 09:19:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('1236', '2', '化腾', '2021-04-12 10:27:02', '登录成功', null, null);
INSERT INTO `record` VALUES ('1237', '2', '化腾', '2021-04-12 10:42:33', '发布文章', '51', '111111111111111111111111111');
INSERT INTO `record` VALUES ('1238', '2', '化腾', '2021-04-12 10:47:11', '发布文章', '52', '22222222222222222');
INSERT INTO `record` VALUES ('1239', '2', '化腾', '2021-04-12 10:47:42', '发布文章', '53', '3333333333333');
INSERT INTO `record` VALUES ('1240', '2', '化腾', '2021-04-12 10:53:24', '发布文章', '54', '4444');
INSERT INTO `record` VALUES ('1242', '35', '谢耳朵', '2021-04-12 11:40:27', '注销成功', null, null);
INSERT INTO `record` VALUES ('1243', '35', '谢耳朵', '2021-04-12 11:40:32', '登录成功', null, null);
INSERT INTO `record` VALUES ('1244', '35', '谢耳朵', '2021-04-12 13:10:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1245', '35', '谢耳朵', '2021-04-12 13:10:45', '登录成功', null, null);
INSERT INTO `record` VALUES ('1246', '35', '谢耳朵', '2021-04-12 20:24:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('1247', '35', '谢耳朵', '2021-04-12 20:25:38', '注销成功', null, null);
INSERT INTO `record` VALUES ('1248', '35', '谢耳朵', '2021-04-12 20:26:16', '登录成功', null, null);
INSERT INTO `record` VALUES ('1249', '35', '谢耳朵', '2021-04-12 21:17:35', '注销成功', null, null);
INSERT INTO `record` VALUES ('1250', '1', '汽车之家', '2021-04-12 21:22:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1251', '35', '谢耳朵', '2021-04-13 13:27:32', '登录成功', null, null);
INSERT INTO `record` VALUES ('1252', '35', '谢耳朵', '2021-04-13 13:27:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1253', '2', '化腾', '2021-04-13 13:27:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1254', '35', '谢耳朵', '2021-04-13 13:32:11', '登录成功', null, null);
INSERT INTO `record` VALUES ('1255', '35', '谢耳朵', '2021-04-13 13:34:06', '发表动态', '44', '111111111111111');
INSERT INTO `record` VALUES ('1256', '1', '汽车之家', '2021-04-13 15:41:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('1257', '1', '汽车之家', '2021-04-13 15:51:49', '注销成功', null, null);
INSERT INTO `record` VALUES ('1258', '1', '汽车之家', '2021-04-13 16:00:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1259', '1', '汽车之家', '2021-04-13 16:02:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1260', '1', '汽车之家', '2021-04-13 16:06:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1261', '1', '汽车之家', '2021-04-13 16:07:21', '注销成功', null, null);
INSERT INTO `record` VALUES ('1262', '1', '汽车之家', '2021-04-13 16:07:47', '注销成功', null, null);
INSERT INTO `record` VALUES ('1263', '1', '汽车之家', '2021-04-13 16:14:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1264', '1', '汽车之家', '2021-04-13 16:18:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1265', '1', '汽车之家', '2021-04-13 16:22:56', '注销成功', null, null);
INSERT INTO `record` VALUES ('1266', '1', '汽车之家', '2021-04-13 16:28:33', '注销成功', null, null);
INSERT INTO `record` VALUES ('1267', '1', '汽车之家', '2021-04-13 16:46:21', '登录成功', null, null);
INSERT INTO `record` VALUES ('1268', '1', '汽车之家', '2021-04-13 16:49:45', '注销成功', null, null);
INSERT INTO `record` VALUES ('1269', '1', '汽车之家', '2021-04-13 16:49:50', '登录成功', null, null);
INSERT INTO `record` VALUES ('1271', '1', '汽车之家', '2021-04-13 21:19:10', '注销成功', null, null);
INSERT INTO `record` VALUES ('1272', '1', '汽车之家', '2021-04-14 11:12:58', '注销成功', null, null);
INSERT INTO `record` VALUES ('1273', '35', '谢耳朵', '2021-04-14 11:49:39', '登录成功', null, null);
INSERT INTO `record` VALUES ('1274', '35', '谢耳朵', '2021-04-14 11:49:41', '注销成功', null, null);
INSERT INTO `record` VALUES ('1275', '35', '谢耳朵', '2021-04-14 11:50:31', '登录成功', null, null);
INSERT INTO `record` VALUES ('1276', '35', '谢耳朵', '2021-04-14 11:50:34', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1277', '35', '谢耳朵', '2021-04-14 11:53:05', '注销成功', null, null);
INSERT INTO `record` VALUES ('1278', '1', '汽车之家', '2021-04-14 13:32:38', '注销成功', null, null);
INSERT INTO `record` VALUES ('1279', '1', '汽车之家', '2021-04-14 16:04:03', '注销成功', null, null);
INSERT INTO `record` VALUES ('1280', '1', '汽车之家', '2021-04-14 22:17:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1281', '2', '化腾', '2021-04-15 09:57:42', '登录成功', null, null);
INSERT INTO `record` VALUES ('1282', '3', '卢本伟', '2021-04-15 09:58:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1283', '3', '卢本伟', '2021-04-15 10:00:40', '发布文章', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1284', '3', '卢本伟', '2021-04-15 10:00:54', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1285', '3', '卢本伟', '2021-04-15 10:00:58', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1286', '3', '卢本伟', '2021-04-15 10:01:02', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1287', '3', '卢本伟', '2021-04-15 10:01:06', '上传图集', '56', '加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record` VALUES ('1288', '3', '卢本伟', '2021-04-15 10:03:38', '发布文章', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1289', '3', '卢本伟', '2021-04-15 10:03:45', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1290', '3', '卢本伟', '2021-04-15 10:03:50', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1291', '3', '卢本伟', '2021-04-15 10:03:53', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1292', '3', '卢本伟', '2021-04-15 10:03:57', '上传图集', '57', '两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record` VALUES ('1293', '3', '卢本伟', '2021-04-15 10:05:58', '发布文章', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1294', '3', '卢本伟', '2021-04-15 10:06:03', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1295', '3', '卢本伟', '2021-04-15 10:06:07', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1296', '3', '卢本伟', '2021-04-15 10:06:10', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1297', '3', '卢本伟', '2021-04-15 10:06:21', '上传图集', '58', 'CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record` VALUES ('1298', '3', '卢本伟', '2021-04-15 10:08:14', '发布文章', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1299', '3', '卢本伟', '2021-04-15 10:08:19', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1300', '3', '卢本伟', '2021-04-15 10:08:22', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1301', '3', '卢本伟', '2021-04-15 10:08:25', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1302', '3', '卢本伟', '2021-04-15 10:08:28', '上传图集', '59', '比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record` VALUES ('1303', '3', '卢本伟', '2021-04-15 10:10:13', '发布文章', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1304', '3', '卢本伟', '2021-04-15 10:10:17', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1305', '3', '卢本伟', '2021-04-15 10:10:20', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1306', '3', '卢本伟', '2021-04-15 10:10:23', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1307', '3', '卢本伟', '2021-04-15 10:10:26', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1308', '3', '卢本伟', '2021-04-15 10:10:30', '上传图集', '60', '或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record` VALUES ('1309', '3', '卢本伟', '2021-04-15 10:14:58', '发布文章', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1310', '3', '卢本伟', '2021-04-15 10:15:02', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1312', '3', '卢本伟', '2021-04-15 10:15:10', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1313', '3', '卢本伟', '2021-04-15 10:15:15', '上传图集', '61', '将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record` VALUES ('1314', '2', '化腾', '2021-04-15 13:28:21', '登录成功', null, null);
INSERT INTO `record` VALUES ('1315', '35', '谢耳朵', '2021-04-18 18:13:19', '登录成功', null, null);
INSERT INTO `record` VALUES ('1316', '35', '谢耳朵', '2021-04-18 18:15:47', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1317', '35', '谢耳朵', '2021-04-18 18:16:25', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1318', '35', '谢耳朵', '2021-04-18 18:16:26', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1319', '35', '谢耳朵', '2021-04-18 18:16:31', '取消关注', '4', 'PDD');
INSERT INTO `record` VALUES ('1320', '35', '谢耳朵', '2021-04-18 18:16:32', '关注', '4', 'PDD');
INSERT INTO `record` VALUES ('1321', '35', '谢耳朵', '2021-04-20 10:05:28', '登录成功', null, null);
INSERT INTO `record` VALUES ('1322', '35', '谢耳朵', '2021-04-20 10:05:32', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1323', '35', '谢耳朵2', '2021-04-20 10:09:53', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1324', '35', '谢耳朵2', '2021-04-20 10:10:58', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1325', '35', '谢耳朵2', '2021-04-20 10:11:50', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1326', '1', '汽车之家', '2021-04-20 10:15:15', '注销成功', null, null);
INSERT INTO `record` VALUES ('1327', '1', '汽车之家', '2021-04-20 11:39:25', '注销成功', null, null);
INSERT INTO `record` VALUES ('1328', '2', '化腾', '2021-04-20 17:13:22', '登录成功', null, null);
INSERT INTO `record` VALUES ('1329', '2', '化腾', '2021-04-20 17:14:02', '发布文章', '62', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座');
INSERT INTO `record` VALUES ('1330', '2', '化腾', '2021-04-20 17:14:07', '上传图集', '62', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座');
INSERT INTO `record` VALUES ('1331', '2', '化腾', '2021-04-20 17:14:11', '上传图集', '62', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座');
INSERT INTO `record` VALUES ('1332', '2', '化腾', '2021-04-20 17:14:13', '上传图集', '62', '中国品牌豪华SUV，2.0T+两驱/四驱，全系都是大七座');
INSERT INTO `record` VALUES ('1333', '35', '谢耳朵2', '2021-04-21 13:50:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('1334', '35', '谢耳朵', '2021-04-21 13:50:41', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1335', '35', '谢耳朵', '2021-04-21 13:51:57', '删除消息：', '2', '化腾');
INSERT INTO `record` VALUES ('1336', '35', '谢耳朵', '2021-04-21 13:52:21', '点赞评论', '6', '123');
INSERT INTO `record` VALUES ('1337', '35', '谢耳朵', '2021-04-21 13:52:27', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('1338', '35', '谢耳朵', '2021-04-21 13:52:29', '点赞动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('1339', '35', '谢耳朵', '2021-04-21 13:52:45', '取消关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('1340', '35', '谢耳朵', '2021-04-21 13:52:49', '关注', '7', '小阿Giao');
INSERT INTO `record` VALUES ('1341', '35', '谢耳朵', '2021-04-21 13:54:36', '注销成功', null, null);
INSERT INTO `record` VALUES ('1342', '2', '化腾', '2021-04-21 13:54:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1343', '2', '化腾', '2021-04-22 16:54:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1344', '2', '化腾', '2021-04-22 16:54:39', '注销成功', null, null);
INSERT INTO `record` VALUES ('1345', '35', '谢耳朵', '2021-04-22 16:54:41', '登录成功', null, null);
INSERT INTO `record` VALUES ('1346', '1', '汽车之家', '2021-04-22 16:55:51', '注销成功', null, null);
INSERT INTO `record` VALUES ('1347', '2', '化腾', '2021-04-22 16:59:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1348', '2', '化腾', '2021-04-22 17:01:44', '注销成功', null, null);
INSERT INTO `record` VALUES ('1349', '35', '谢耳朵', '2021-04-22 17:25:23', '登录成功', null, null);
INSERT INTO `record` VALUES ('1350', '35', '谢耳朵', '2021-04-23 09:38:43', '登录成功', null, null);
INSERT INTO `record` VALUES ('1351', '35', '谢耳朵', '2021-04-23 09:39:21', '点赞评论', '31', '123更不能借口了');
INSERT INTO `record` VALUES ('1352', '35', '谢耳朵', '2021-04-23 09:39:27', '取消点赞', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('1353', '35', '谢耳朵', '2021-04-23 09:39:28', '点赞动态', '1', '对宝马三系的热爱');
INSERT INTO `record` VALUES ('1354', '35', '谢耳朵33', '2021-04-23 09:40:05', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1355', '35', '谢耳朵33', '2021-04-23 09:40:17', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1356', '35', '谢耳朵', '2021-04-23 09:40:30', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1357', '35', '谢耳朵', '2021-04-23 09:40:47', '用户修改了个人密码', null, null);
INSERT INTO `record` VALUES ('1358', '35', '谢耳朵', '2021-04-23 09:40:59', '用户修改了个人密码', null, null);
INSERT INTO `record` VALUES ('1359', '35', '谢耳朵', '2021-04-23 09:41:04', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1360', '35', '谢耳朵', '2021-04-23 09:42:19', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1361', '35', '谢耳朵', '2021-04-23 09:42:21', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1362', '35', '谢耳朵', '2021-04-23 09:43:50', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('1363', '35', '谢耳朵', '2021-04-23 09:43:51', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('1364', '35', '谢耳朵', '2021-04-23 09:44:02', '取消关注', '5', '大马猴');
INSERT INTO `record` VALUES ('1365', '35', '谢耳朵', '2021-04-23 09:44:14', '关注', '5', '大马猴');
INSERT INTO `record` VALUES ('1366', '35', '谢耳朵', '2021-04-23 09:44:21', '取消关注', '2', '化腾');
INSERT INTO `record` VALUES ('1367', '35', '谢耳朵', '2021-04-23 09:44:22', '关注', '2', '化腾');
INSERT INTO `record` VALUES ('1368', '35', '谢耳朵', '2021-04-23 09:44:34', '发送消息：shidjsa', '2', '化腾');
INSERT INTO `record` VALUES ('1369', '35', '谢耳朵', '2021-04-23 09:44:38', '注销成功', null, null);
INSERT INTO `record` VALUES ('1370', '2', '化腾', '2021-04-23 09:44:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1371', '2', '化腾', '2021-04-23 09:46:48', '发表动态', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1372', '2', '化腾', '2021-04-23 09:47:01', '评论：dascac', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1373', '2', '化腾', '2021-04-23 09:47:04', '点赞评论', '36', 'dascac');
INSERT INTO `record` VALUES ('1374', '2', '化腾', '2021-04-23 09:47:06', '删除评论：null', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1375', '2', '化腾', '2021-04-23 09:47:11', '点赞动态', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1376', '2', '化腾', '2021-04-23 09:47:17', '转发动态', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1377', '2', '化腾', '2021-04-23 09:47:31', '取消点赞', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1378', '2', '化腾', '2021-04-23 09:47:31', '点赞动态', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1379', '2', '化腾', '2021-04-23 09:47:34', '评论：wgsdgvfd', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1380', '2', '化腾', '2021-04-23 09:47:38', '点赞评论', '37', 'wgsdgvfd');
INSERT INTO `record` VALUES ('1381', '2', '化腾', '2021-04-23 09:50:34', '发布文章', '63', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1382', '2', '化腾', '2021-04-23 10:02:28', '发布文章', '64', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1383', '2', '化腾', '2021-04-23 10:02:36', '上传图集', '64', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1384', '2', '化腾', '2021-04-23 10:02:41', '上传图集', '64', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1385', '2', '化腾', '2021-04-23 10:02:46', '上传图集', '64', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1386', '2', '化腾', '2021-04-23 10:03:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1387', '2', '化腾', '2021-04-23 10:03:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1388', '2', '化腾', '2021-04-23 10:04:32', '注销成功', null, null);
INSERT INTO `record` VALUES ('1389', '2', '化腾', '2021-04-23 10:04:34', '登录成功', null, null);
INSERT INTO `record` VALUES ('1390', '2', '化腾', '2021-04-23 10:06:25', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1391', '2', '化腾', '2021-04-23 10:07:12', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1392', '2', '化腾', '2021-04-23 10:07:14', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1393', '2', '化腾', '2021-04-23 10:14:14', '发送消息：222', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1394', '2', '化腾', '2021-04-23 10:14:18', '注销成功', null, null);
INSERT INTO `record` VALUES ('1395', '35', '谢耳朵', '2021-04-23 10:14:20', '登录成功', null, null);
INSERT INTO `record` VALUES ('1396', '35', '谢耳朵', '2021-04-23 10:14:41', '发送消息：111', '2', '化腾');
INSERT INTO `record` VALUES ('1397', '35', '谢耳朵', '2021-04-23 10:14:43', '注销成功', null, null);
INSERT INTO `record` VALUES ('1398', '2', '化腾', '2021-04-23 10:14:46', '登录成功', null, null);
INSERT INTO `record` VALUES ('1399', '35', '谢耳朵', '2021-04-23 20:16:51', '登录成功', null, null);
INSERT INTO `record` VALUES ('1400', '35', '谢耳朵', '2021-04-23 20:20:59', '点赞动态', '45', '非常水电费是dsv');
INSERT INTO `record` VALUES ('1401', '35', '谢耳朵', '2021-04-23 20:21:28', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1402', '35', '谢耳朵', '2021-04-23 20:23:22', '评论：543354345', '44', '111111111111111');
INSERT INTO `record` VALUES ('1403', '35', '谢耳朵', '2021-04-23 20:23:29', '评论：5254', '44', '111111111111111');
INSERT INTO `record` VALUES ('1404', '35', '谢耳朵', '2021-04-23 20:23:36', '点赞动态', '44', '111111111111111');
INSERT INTO `record` VALUES ('1405', '35', '谢耳朵', '2021-04-23 20:23:39', '取消点赞', '44', '111111111111111');
INSERT INTO `record` VALUES ('1406', '35', '谢耳朵', '2021-04-23 20:29:59', '注销成功', null, null);
INSERT INTO `record` VALUES ('1407', '2', '化腾', '2021-04-23 20:30:01', '登录成功', null, null);
INSERT INTO `record` VALUES ('1408', '2', '化腾', '2021-04-23 20:32:58', '发布文章', '65', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1409', '2', '化腾', '2021-04-23 20:33:10', '上传图集', '65', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1410', '2', '化腾', '2021-04-23 20:33:13', '上传图集', '65', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1411', '2', '化腾', '2021-04-23 20:33:16', '上传图集', '65', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1412', '2', '化腾', '2021-04-23 20:33:20', '上传图集', '65', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record` VALUES ('1413', '1', '汽车之家', '2021-04-23 20:34:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1414', '2', '化腾', '2021-04-23 20:35:20', '取消关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1415', '2', '化腾', '2021-04-23 20:35:20', '关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1416', '2', '化腾', '2021-04-23 20:36:05', '取消关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1417', '2', '化腾', '2021-04-23 20:36:07', '关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1418', '2', '化腾', '2021-04-23 20:36:15', '取消关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1419', '2', '化腾', '2021-04-23 20:36:16', '关注', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1420', '2', '化腾', '2021-04-23 20:36:24', '发送消息：', '35', '谢耳朵');
INSERT INTO `record` VALUES ('1421', '2', '化腾', '2021-04-23 20:36:26', '注销成功', null, null);
INSERT INTO `record` VALUES ('1422', '7', '小阿Giao', '2021-04-23 20:36:29', '登录成功', null, null);
INSERT INTO `record` VALUES ('1423', '7', '小阿Giao', '2021-04-23 20:36:53', '注销成功', null, null);
INSERT INTO `record` VALUES ('1424', '35', '谢耳朵', '2021-04-23 20:36:55', '登录成功', null, null);
INSERT INTO `record` VALUES ('1425', '35', '谢耳朵', '2021-04-23 20:37:49', '评论：部分被处罚', '34', '4654564165165');
INSERT INTO `record` VALUES ('1426', '35', '谢耳朵', '2021-04-23 20:38:12', '注销成功', null, null);
INSERT INTO `record` VALUES ('1427', '4', 'PDD', '2021-04-23 20:38:14', '登录成功', null, null);
INSERT INTO `record` VALUES ('1428', '4', 'PDD', '2021-04-23 20:38:37', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1429', '4', 'PDD', '2021-04-23 20:38:38', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1430', '4', 'PDD', '2021-04-23 20:38:43', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1431', '4', 'PDD', '2021-04-23 20:42:27', '点赞评论', '37', 'wgsdgvfd');
INSERT INTO `record` VALUES ('1432', '4', 'PDD', '2021-04-23 20:42:33', '注销成功', null, null);
INSERT INTO `record` VALUES ('1433', '2', '化腾', '2021-04-23 20:42:35', '登录成功', null, null);
INSERT INTO `record` VALUES ('1434', '35', '谢耳朵', '2021-04-25 17:26:41', '登录成功', null, null);
INSERT INTO `record` VALUES ('1435', '35', '谢耳朵', '2021-04-25 17:27:01', '发表动态', '46', 'xsacasc成都市吃的啥');
INSERT INTO `record` VALUES ('1436', '35', '谢耳朵', '2021-04-25 17:27:04', '点赞动态', '46', 'xsacasc成都市吃的啥');
INSERT INTO `record` VALUES ('1437', '35', '谢耳朵', '2021-04-25 21:13:50', '登录成功', null, null);
INSERT INTO `record` VALUES ('1438', '35', '谢耳朵', '2021-04-25 21:13:59', '取消关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1439', '35', '谢耳朵', '2021-04-25 21:14:00', '关注', '1', '汽车之家');
INSERT INTO `record` VALUES ('1440', '35', '谢耳朵', '2021-04-25 21:14:24', '取消点赞', '46', 'xsacasc成都市吃的啥');
INSERT INTO `record` VALUES ('1441', '35', '谢耳朵', '2021-04-25 21:14:25', '点赞动态', '46', 'xsacasc成都市吃的啥');
INSERT INTO `record` VALUES ('1442', '35', '谢耳朵', '2021-04-25 21:14:33', '转发动态', '46', 'xsacasc成都市吃的啥');
INSERT INTO `record` VALUES ('1443', '35', '谢耳朵', '2021-04-25 21:16:04', '取消点赞', '46', 'xsacasc成都市吃的啥');
INSERT INTO `record` VALUES ('1444', '35', '谢耳朵', '2021-04-26 11:53:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1445', '35', '谢耳朵', '2021-04-26 11:54:10', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1446', '35', '谢耳朵', '2021-04-26 11:54:46', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1447', '35', '谢耳朵', '2021-04-26 13:42:04', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1448', '35', '谢耳朵', '2021-04-26 13:42:15', '用户上传了头像', null, null);
INSERT INTO `record` VALUES ('1449', '35', '谢耳朵', '2021-04-26 14:06:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1450', '35', '谢耳朵', '2021-04-26 14:25:11', '注销成功', null, null);
INSERT INTO `record` VALUES ('1451', '2', '化腾', '2021-04-26 14:25:13', '登录成功', null, null);
INSERT INTO `record` VALUES ('1452', '35', '谢耳朵', '2021-04-26 14:37:09', '登录成功', null, null);
INSERT INTO `record` VALUES ('1453', '35', '谢耳朵', '2021-04-26 16:06:22', '注销成功', null, null);
INSERT INTO `record` VALUES ('1454', '2', '化腾', '2021-04-26 16:06:24', '登录成功', null, null);
INSERT INTO `record` VALUES ('1455', '2', '化腾', '2021-04-26 21:04:57', '登录成功', null, null);
INSERT INTO `record` VALUES ('1456', '2', '化腾', '2021-04-26 21:49:11', '注销成功', null, null);
INSERT INTO `record` VALUES ('1457', '2', '化腾', '2021-04-26 21:49:13', '登录成功', null, null);
INSERT INTO `record` VALUES ('1458', '2', '化腾', '2021-04-26 22:00:04', '注销成功', null, null);
INSERT INTO `record` VALUES ('1459', '35', '谢耳朵', '2021-04-26 22:00:06', '登录成功', null, null);
INSERT INTO `record` VALUES ('1460', '35', '谢耳朵', '2021-04-26 22:01:43', '用户进行了签到', null, null);
INSERT INTO `record` VALUES ('1461', '35', '谢耳朵', '2021-04-26 22:01:47', '注销成功', null, null);
INSERT INTO `record` VALUES ('1462', '2', '化腾', '2021-04-26 22:01:49', '登录成功', null, null);
INSERT INTO `record` VALUES ('1463', '2', '化腾', '2021-04-27 15:15:36', '登录成功', null, null);
INSERT INTO `record` VALUES ('1464', '2', '化腾', '2021-04-27 16:23:14', '注销成功', null, null);
INSERT INTO `record` VALUES ('1465', '2', '化腾', '2021-04-27 16:23:16', '登录成功', null, null);
INSERT INTO `record` VALUES ('1466', '2', '化腾', '2021-04-27 17:07:27', '发表动态', '47', 'Mybatis基于XML方式的一对多、多对一关系映射（上）');
INSERT INTO `record` VALUES ('1467', '2', '化腾', '2021-04-27 17:09:42', '注销成功', null, null);
INSERT INTO `record` VALUES ('1468', '35', '谢耳朵', '2021-04-27 17:09:45', '登录成功', null, null);
INSERT INTO `record` VALUES ('1469', '35', '谢耳朵', '2021-04-27 17:10:42', '发表动态', '48', '(Spring-SpringMVC-MyBatis)超详细SSM整合环境搭建，看这篇就够了');
INSERT INTO `record` VALUES ('1470', '35', '谢耳朵', '2021-04-27 17:14:40', '登录成功', null, null);
INSERT INTO `record` VALUES ('1471', '35', '谢耳朵', '2021-04-27 17:51:48', '登录成功', null, null);
INSERT INTO `record` VALUES ('1472', '2', '化腾', '2021-04-28 09:34:12', '登录成功', null, null);
INSERT INTO `record` VALUES ('1473', '35', '谢耳朵', '2021-04-28 11:35:50', '登录成功', null, null);
INSERT INTO `record` VALUES ('1474', '35', '谢耳朵', '2021-04-28 11:36:05', '删除动态', '48', '(Spring-SpringMVC-MyBatis)超详细SSM整合环境搭建，看这篇就够了');
INSERT INTO `record` VALUES ('1475', '35', '谢耳朵', '2021-04-28 11:36:10', '删除动态', '38', 'Mybatis基于注解方式的一对多、多对一关系映射');
INSERT INTO `record` VALUES ('1476', '35', '谢耳朵', '2021-04-28 11:38:00', '注销成功', null, null);
INSERT INTO `record` VALUES ('1477', '2', '化腾', '2021-04-28 11:38:05', '登录成功', null, null);
INSERT INTO `record` VALUES ('1478', '2', '化腾', '2021-04-28 11:40:46', '评论：哈哈哈', '48', '(Spring-SpringMVC-MyBatis)超详细SSM整合环境搭建，看这篇就够了');
INSERT INTO `record` VALUES ('1479', '2', '化腾', '2021-04-28 11:40:51', '点赞评论', '41', '哈哈哈');
INSERT INTO `record` VALUES ('1493', '36', 'KD', '2021-04-29 11:52:02', '注销成功', null, null);
INSERT INTO `record` VALUES ('1494', '0:0:0:0:0:0:0:1', '', '2021-04-29 11:52:06', '用户不存在，登录失败', null, null);
INSERT INTO `record` VALUES ('1495', '35', '谢耳朵', '2021-04-30 16:38:37', '登录成功', null, null);
INSERT INTO `record` VALUES ('1496', '35', '谢耳朵', '2021-05-07 15:19:51', '登录成功', null, null);
INSERT INTO `record` VALUES ('1497', '35', '谢耳朵', '2021-05-07 15:20:17', '用户修改了个人信息', null, null);
INSERT INTO `record` VALUES ('1498', '2', '化腾', '2021-05-09 18:13:08', '登录成功', null, null);
INSERT INTO `record` VALUES ('1499', '2', '化腾', '2021-05-10 15:22:33', '注销成功', null, null);
INSERT INTO `record` VALUES ('1500', '35', '谢耳朵', '2021-05-10 15:24:41', '登录成功', null, null);
INSERT INTO `record` VALUES ('1501', '35', '谢耳朵', '2021-05-10 15:24:47', '注销成功', null, null);
INSERT INTO `record` VALUES ('1502', '2', '化腾', '2021-05-10 15:24:49', '登录成功', null, null);
INSERT INTO `record` VALUES ('1503', '2', '化腾', '2021-05-10 15:27:09', '注销成功', null, null);
INSERT INTO `record` VALUES ('1504', '2', '化腾', '2021-05-10 15:32:55', '登录成功', null, null);
INSERT INTO `record` VALUES ('1505', '2', '化腾', '2021-05-10 15:35:37', '注销成功', null, null);
INSERT INTO `record` VALUES ('1506', '2', '化腾', '2021-05-10 15:35:47', '登录成功', null, null);
INSERT INTO `record` VALUES ('1507', '2', '化腾', '2021-05-10 15:42:57', '注销成功', null, null);
INSERT INTO `record` VALUES ('1508', '35', '谢耳朵', '2021-05-10 15:43:12', '登录成功', null, null);
INSERT INTO `record` VALUES ('1509', '2', '化腾', '2021-05-10 23:19:03', '登录成功', null, null);
INSERT INTO `record` VALUES ('1510', '35', '谢耳朵', '2021-05-11 00:01:17', '登录成功', null, null);
INSERT INTO `record` VALUES ('1511', '35', '谢耳朵', '2021-05-11 00:02:04', '密码错误，登录失败', null, null);
INSERT INTO `record` VALUES ('1512', '773601602@qq.com', '', '2021-05-11 00:07:06', '注册接收验证码', null, null);

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
-- Records of record_admin
-- ----------------------------
INSERT INTO `record_admin` VALUES ('1', '2021-04-14 15:35:25', '驳回文章：RS 6首先是一款非常舒适的车型');
INSERT INTO `record_admin` VALUES ('2', '2021-04-14 15:35:47', '审批通过：4444');
INSERT INTO `record_admin` VALUES ('3', '2021-04-14 15:35:50', '驳回文章：3333333333333');
INSERT INTO `record_admin` VALUES ('4', '2021-04-14 15:36:02', '审批通过：RS 6首先是一款非常舒适的车型');
INSERT INTO `record_admin` VALUES ('5', '2021-04-14 15:36:12', '下架动态：清明时节雨纷纷');
INSERT INTO `record_admin` VALUES ('6', '2021-04-14 15:36:19', '重新上线动态：111111111111111');
INSERT INTO `record_admin` VALUES ('7', '2021-04-14 15:36:31', '删除转发：案发时发出');
INSERT INTO `record_admin` VALUES ('8', '2021-04-14 15:36:39', '重新上线转发：气得我群多无');
INSERT INTO `record_admin` VALUES ('9', '2021-04-14 15:36:54', '删除评论：111');
INSERT INTO `record_admin` VALUES ('10', '2021-04-14 15:37:01', '重新上线评论：擦挫伤');
INSERT INTO `record_admin` VALUES ('11', '2021-04-14 15:37:12', '取消车家号：汽车之家');
INSERT INTO `record_admin` VALUES ('12', '2021-04-14 15:37:22', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('13', '2021-04-14 15:37:31', '取消车家号：null');
INSERT INTO `record_admin` VALUES ('14', '2021-04-14 15:37:45', '添加新标签：1111');
INSERT INTO `record_admin` VALUES ('15', '2021-04-14 15:37:54', '修改标签：11112222222');
INSERT INTO `record_admin` VALUES ('16', '2021-04-14 15:38:04', '禁用标签：11112222222');
INSERT INTO `record_admin` VALUES ('17', '2021-04-14 15:38:10', '开启标签：11112222222');
INSERT INTO `record_admin` VALUES ('22', '2021-04-14 22:10:04', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('23', '2021-04-14 22:10:15', '取消车家号：null');
INSERT INTO `record_admin` VALUES ('24', '2021-04-14 22:10:20', '取消车家号：化腾');
INSERT INTO `record_admin` VALUES ('25', '2021-04-14 22:10:22', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('26', '2021-04-14 22:10:24', '认证用户：化腾为车家号');
INSERT INTO `record_admin` VALUES ('27', '2021-04-14 22:10:30', '取消车家号：汽车之家');
INSERT INTO `record_admin` VALUES ('28', '2021-04-14 22:10:33', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('29', '2021-04-14 22:22:29', '取消车家号：化腾');
INSERT INTO `record_admin` VALUES ('30', '2021-04-14 22:22:38', '认证用户：化腾为车家号');
INSERT INTO `record_admin` VALUES ('31', '2021-04-14 22:22:39', '取消车家号：化腾');
INSERT INTO `record_admin` VALUES ('32', '2021-04-14 22:23:14', '取消车家号：汽车之家');
INSERT INTO `record_admin` VALUES ('33', '2021-04-14 22:23:19', '认证用户：汽车之家为车家号');
INSERT INTO `record_admin` VALUES ('34', '2021-04-14 22:23:20', '认证用户：化腾为车家号');
INSERT INTO `record_admin` VALUES ('35', '2021-04-15 10:11:48', '审批通过：或于3月上市 新款4008/5008内饰实车图');
INSERT INTO `record_admin` VALUES ('36', '2021-04-15 10:11:50', '审批通过：比亚迪唐DM-i将于4月19日上海车展上市');
INSERT INTO `record_admin` VALUES ('37', '2021-04-15 10:11:52', '审批通过：CX-5黑骑士版等 马自达上海车展阵容');
INSERT INTO `record_admin` VALUES ('38', '2021-04-15 10:11:53', '审批通过：两种续航可选 威马W6将于4月16日上市');
INSERT INTO `record_admin` VALUES ('39', '2021-04-15 10:11:55', '审批通过：加速4秒内 极氪001将于4月15日首发上市');
INSERT INTO `record_admin` VALUES ('40', '2021-04-15 10:15:31', '审批通过：将于4月19日正式亮相 荣威鲸官图发布');
INSERT INTO `record_admin` VALUES ('41', '2021-04-16 10:56:49', '删除折叠板：33333333333');
INSERT INTO `record_admin` VALUES ('42', '2021-04-16 10:56:52', '删除折叠板：前期前期群群');
INSERT INTO `record_admin` VALUES ('43', '2021-04-16 10:56:54', '删除折叠板：吧吧吧v ');
INSERT INTO `record_admin` VALUES ('44', '2021-04-16 10:56:55', '删除折叠板：22222222222222');
INSERT INTO `record_admin` VALUES ('45', '2021-04-16 10:57:31', '禁用标签：路虎揽胜极光');
INSERT INTO `record_admin` VALUES ('46', '2021-04-16 10:57:32', '开启标签：路虎揽胜极光');
INSERT INTO `record_admin` VALUES ('47', '2021-04-16 10:57:48', '修改标签：汽车之家');
INSERT INTO `record_admin` VALUES ('48', '2021-04-19 17:15:26', '编辑折叠板：国潮版提供');
INSERT INTO `record_admin` VALUES ('49', '2021-04-19 17:15:36', '编辑折叠板：国潮版提供');
INSERT INTO `record_admin` VALUES ('50', '2021-04-19 17:15:51', '编辑折叠板：国潮版提供');
INSERT INTO `record_admin` VALUES ('51', '2021-04-19 17:20:23', '新增折叠板：北京BJ80探月');
INSERT INTO `record_admin` VALUES ('52', '2021-04-20 08:58:45', '编辑折叠板：北京BJ80探月5');
INSERT INTO `record_admin` VALUES ('53', '2021-04-20 08:58:49', '编辑折叠板：北京BJ80探月');
INSERT INTO `record_admin` VALUES ('54', '2021-04-20 10:55:45', '添加新车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('55', '2021-04-20 11:10:34', '编辑折叠板：国潮版提供2');
INSERT INTO `record_admin` VALUES ('56', '2021-04-20 11:18:18', '编辑车型：谢耳朵2');
INSERT INTO `record_admin` VALUES ('57', '2021-04-20 11:21:09', '编辑车型图片：谢耳朵2');
INSERT INTO `record_admin` VALUES ('58', '2021-04-20 11:21:17', '编辑车型：谢耳朵2');
INSERT INTO `record_admin` VALUES ('59', '2021-04-20 11:25:39', '编辑车型：谢耳朵2');
INSERT INTO `record_admin` VALUES ('60', '2021-04-20 11:25:49', '编辑车型图片：谢耳朵2');
INSERT INTO `record_admin` VALUES ('61', '2021-04-20 11:25:55', '编辑车型：谢耳朵2');
INSERT INTO `record_admin` VALUES ('62', '2021-04-20 11:27:31', '编辑车型：谢耳朵2');
INSERT INTO `record_admin` VALUES ('63', '2021-04-20 11:27:39', '编辑车型图片：谢耳朵2');
INSERT INTO `record_admin` VALUES ('64', '2021-04-20 11:27:40', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('65', '2021-04-20 13:43:48', '彻底删除日志：上传图集');
INSERT INTO `record_admin` VALUES ('66', '2021-04-20 13:44:55', '禁用标签：路虎揽胜极光');
INSERT INTO `record_admin` VALUES ('67', '2021-04-20 13:45:34', '编辑折叠板：北京BJ80探月');
INSERT INTO `record_admin` VALUES ('68', '2021-04-20 14:08:41', '编辑车型：五菱神车8');
INSERT INTO `record_admin` VALUES ('69', '2021-04-20 14:08:48', '编辑车型：五菱神车8');
INSERT INTO `record_admin` VALUES ('70', '2021-04-20 14:09:13', '编辑车型：五菱神车9');
INSERT INTO `record_admin` VALUES ('71', '2021-04-20 14:11:23', '编辑车型：奥迪A6L111');
INSERT INTO `record_admin` VALUES ('72', '2021-04-20 14:11:34', '编辑车型：谢耳朵333');
INSERT INTO `record_admin` VALUES ('73', '2021-04-20 14:11:57', '编辑车型图片：谢耳朵333');
INSERT INTO `record_admin` VALUES ('74', '2021-04-20 14:12:01', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('75', '2021-04-20 14:12:09', '编辑车型图片：谢耳朵');
INSERT INTO `record_admin` VALUES ('76', '2021-04-20 14:12:10', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('77', '2021-04-20 14:26:17', '编辑车型图片：谢耳朵');
INSERT INTO `record_admin` VALUES ('78', '2021-04-20 14:27:28', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('79', '2021-04-20 14:28:14', '编辑车型：谢耳朵222');
INSERT INTO `record_admin` VALUES ('80', '2021-04-20 14:29:10', '编辑车型：五菱神车222');
INSERT INTO `record_admin` VALUES ('81', '2021-04-20 14:29:19', '下架车型：谢耳朵222');
INSERT INTO `record_admin` VALUES ('82', '2021-04-20 14:29:27', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('83', '2021-04-20 14:29:52', '编辑车型：五菱神车');
INSERT INTO `record_admin` VALUES ('84', '2021-04-20 15:05:31', '上架车型：五菱神车');
INSERT INTO `record_admin` VALUES ('85', '2021-04-20 15:05:35', '上架车型：奥迪A8');
INSERT INTO `record_admin` VALUES ('86', '2021-04-20 15:41:58', '上架Car：2021款 宝马3系 改款 320Li M运动套装');
INSERT INTO `record_admin` VALUES ('87', '2021-04-20 15:42:06', '下架Car：2021款 宝马3系 改款 320i 运动套装');
INSERT INTO `record_admin` VALUES ('88', '2021-04-20 15:42:54', '上架Car：2021款 宝马3系 改款 320i 运动套装');
INSERT INTO `record_admin` VALUES ('89', '2021-04-20 15:43:04', '下架Car：2021款 宝马3系 改款 320i 运动套装');
INSERT INTO `record_admin` VALUES ('90', '2021-04-20 16:05:20', '上架Car：2021款 宝马3系 改款 320i 运动套装');
INSERT INTO `record_admin` VALUES ('91', '2021-04-20 16:05:25', '下架Car：2021款 宝马3系 改款 320i 运动套装');
INSERT INTO `record_admin` VALUES ('92', '2021-04-20 16:29:27', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('93', '2021-04-20 16:29:27', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('94', '2021-04-20 16:53:16', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('95', '2021-04-20 17:12:31', '上架车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('96', '2021-04-20 17:12:41', '下架车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('97', '2021-04-20 17:12:44', '上架车型：奥迪A6L');
INSERT INTO `record_admin` VALUES ('98', '2021-04-20 17:17:29', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('99', '2021-04-20 17:30:02', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('100', '2021-04-20 17:30:07', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('101', '2021-04-20 17:30:12', '宝马3系 上传图集');
INSERT INTO `record_admin` VALUES ('102', '2021-04-20 17:41:16', '编辑车型图片：谢耳朵');
INSERT INTO `record_admin` VALUES ('103', '2021-04-21 09:44:30', '编辑车型：谢耳朵2');
INSERT INTO `record_admin` VALUES ('104', '2021-04-21 09:44:41', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('105', '2021-04-21 11:10:07', '下架Car：11');
INSERT INTO `record_admin` VALUES ('106', '2021-04-21 11:10:11', '上架Car：11');
INSERT INTO `record_admin` VALUES ('107', '2021-04-21 13:08:51', '下架Car：2021款 宝马3系 改款 320Li M运动套装');
INSERT INTO `record_admin` VALUES ('108', '2021-04-21 13:22:28', '编辑Car：2');
INSERT INTO `record_admin` VALUES ('109', '2021-04-21 13:22:35', '编辑Car：222222222');
INSERT INTO `record_admin` VALUES ('110', '2021-04-21 13:27:44', '编辑Car：22222fdsfd');
INSERT INTO `record_admin` VALUES ('111', '2021-04-21 13:30:35', '编辑Car：22222fdsfd');
INSERT INTO `record_admin` VALUES ('112', '2021-04-21 13:42:53', '编辑Car：22222fdsfd');
INSERT INTO `record_admin` VALUES ('113', '2021-04-21 13:43:03', '编辑Car：22222fdsfd');
INSERT INTO `record_admin` VALUES ('114', '2021-04-21 13:43:44', '下架Car：22222fdsfd');
INSERT INTO `record_admin` VALUES ('115', '2021-04-21 13:43:48', '上架Car：22222fdsfd');
INSERT INTO `record_admin` VALUES ('116', '2021-04-21 13:44:29', '添加Car：333');
INSERT INTO `record_admin` VALUES ('117', '2021-04-21 13:44:34', '下架Car：333');
INSERT INTO `record_admin` VALUES ('118', '2021-04-21 13:44:49', '编辑Car：333888');
INSERT INTO `record_admin` VALUES ('119', '2021-04-21 13:57:02', '开启标签：汽车保养');
INSERT INTO `record_admin` VALUES ('120', '2021-04-21 13:57:23', '禁用标签：汽车保养');
INSERT INTO `record_admin` VALUES ('121', '2021-04-21 14:01:08', '开启标签：汽车保养');
INSERT INTO `record_admin` VALUES ('122', '2021-04-21 16:53:23', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('123', '2021-04-21 16:53:35', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('124', '2021-04-21 16:54:15', '添加新车型：1');
INSERT INTO `record_admin` VALUES ('125', '2021-04-21 16:55:10', '编辑车型：谢耳朵');
INSERT INTO `record_admin` VALUES ('126', '2021-04-23 09:26:56', '编辑车型：红旗H9');
INSERT INTO `record_admin` VALUES ('127', '2021-04-23 09:28:14', '编辑车型：五菱神车');
INSERT INTO `record_admin` VALUES ('128', '2021-04-23 10:03:36', '审批通过：新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record_admin` VALUES ('129', '2021-04-23 10:04:29', '驳回文章：新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record_admin` VALUES ('130', '2021-04-23 20:34:32', '审批通过：新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展');
INSERT INTO `record_admin` VALUES ('131', '2021-04-23 20:40:08', '添加新标签：4846511');
INSERT INTO `record_admin` VALUES ('132', '2021-04-23 20:40:19', '禁用标签：4846511');
INSERT INTO `record_admin` VALUES ('133', '2021-04-23 20:40:36', '禁用标签：谢耳朵');
INSERT INTO `record_admin` VALUES ('134', '2021-04-23 20:41:06', '删除标签：谢耳朵');
INSERT INTO `record_admin` VALUES ('136', '2021-04-26 17:48:52', '审批通过：123456');
INSERT INTO `record_admin` VALUES ('137', '2021-04-26 17:49:40', '驳回视频：123456');
INSERT INTO `record_admin` VALUES ('138', '2021-04-26 17:49:57', '审批通过：123456');
INSERT INTO `record_admin` VALUES ('139', '2021-04-27 16:22:36', '审批通过：回头率百分之百的纯电动超跑-前途K50，除了帅就一无是处了吗');
INSERT INTO `record_admin` VALUES ('140', '2021-04-28 09:39:25', '编辑Car：谢耳朵233');
INSERT INTO `record_admin` VALUES ('141', '2021-04-28 09:39:32', '编辑Car：谢耳朵2333');
INSERT INTO `record_admin` VALUES ('142', '2021-04-28 09:39:40', '编辑Car：谢耳朵233');
INSERT INTO `record_admin` VALUES ('143', '2021-04-28 09:39:47', '编辑Car：谢耳朵23333');
INSERT INTO `record_admin` VALUES ('144', '2021-04-29 11:46:21', '认证用户：KD为车家号');
INSERT INTO `record_admin` VALUES ('145', '2021-04-29 11:46:47', '取消车家号：KD');
INSERT INTO `record_admin` VALUES ('146', '2021-04-29 11:50:56', '彻底删除日志：登录成功');
INSERT INTO `record_admin` VALUES ('147', '2021-04-29 11:50:57', '彻底删除日志：注销成功');
INSERT INTO `record_admin` VALUES ('148', '2021-04-29 11:50:58', '彻底删除日志：登录成功');
INSERT INTO `record_admin` VALUES ('149', '2021-04-29 11:50:59', '彻底删除日志：注销成功');
INSERT INTO `record_admin` VALUES ('150', '2021-04-29 11:50:59', '彻底删除日志：登录成功');
INSERT INTO `record_admin` VALUES ('151', '2021-04-29 11:51:00', '彻底删除日志：注销成功');
INSERT INTO `record_admin` VALUES ('152', '2021-04-29 11:51:00', '彻底删除日志：用户修改了个人信息');
INSERT INTO `record_admin` VALUES ('153', '2021-04-29 11:51:03', '彻底删除日志：用户进行了签到');
INSERT INTO `record_admin` VALUES ('154', '2021-04-29 11:51:05', '彻底删除日志：用户上传了头像');
INSERT INTO `record_admin` VALUES ('155', '2021-04-29 11:51:07', '彻底删除日志：登录成功');
INSERT INTO `record_admin` VALUES ('156', '2021-04-29 11:51:08', '彻底删除日志：密码错误，登录失败');
INSERT INTO `record_admin` VALUES ('157', '2021-04-29 11:51:09', '彻底删除日志：注册成功');
INSERT INTO `record_admin` VALUES ('159', '2021-05-10 13:42:18', '下架Car：谢耳朵2333');
INSERT INTO `record_admin` VALUES ('160', '2021-05-10 13:42:32', '下架Car：2021款 宝马3系 改款 325Li M运动曜夜套装');
INSERT INTO `record_admin` VALUES ('161', '2021-05-10 13:44:14', '上架Car：2021款 宝马3系 改款 325Li xDrive M运动套装');
INSERT INTO `record_admin` VALUES ('162', '2021-05-10 14:00:15', '上架Car：2021款 宝马3系 改款 320i 运动套装');
INSERT INTO `record_admin` VALUES ('163', '2021-05-10 14:00:36', '编辑Car：2021款 宝马3系 改款 320i 运动套装');

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
-- Records of reputation
-- ----------------------------
INSERT INTO `reputation` VALUES ('2', '1', '4');
INSERT INTO `reputation` VALUES ('2', '15', '3');
INSERT INTO `reputation` VALUES ('35', '1', '5');

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
-- Records of style
-- ----------------------------
INSERT INTO `style` VALUES ('1', '30w - 45w', '70', '宝马3系', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/19/074d8d35a44d46f699a4403d6b504129.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/ee69bbb13d304f6da27e17abbebbc032.jpg', '40', '57', '2021-01-13', '149', '52', '301', '1305', '14329', '888', null, '2021-01-13 11:48:20', '2021-05-10 15:45:20', '0');
INSERT INTO `style` VALUES ('2', '42w - 60w', '69', '奔驰E级', '', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/6844073a38c844bb8196d80b389390b1.jpg', '48', '57', '2020-12-15', '150', '52', '270', '800', '14252', '754', null, '2021-01-13 11:48:22', '2021-04-19 14:14:43', '0');
INSERT INTO `style` VALUES ('3', '42w - 60w', '66', '奥迪A6L', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/16e6423816d1457ca5d51daba2e8e800.jpg', '41', '58', '2020-12-15', '149', '54', '350', '966', '1478', '9896', null, '2021-01-13 11:48:24', '2021-04-20 17:12:44', '0');
INSERT INTO `style` VALUES ('4', '3w - 5w', '124', '五菱神车', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/d02f941bca0748c6b662727154d04dde.jpg', '42', '59', '2020-12-13', '150', '52', '140', '600', '1458', '525', null, '2021-01-15 11:13:15', '2021-04-23 09:28:14', '0');
INSERT INTO `style` VALUES ('5', '19w - 24w', '85', '丰田亚洲龙', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/39fec581763d4ffcb6d6a8310158fe19.jpg', '43', '60', '2020-12-15', '149', '54', '580', '2500', '1452', '145253', null, '2020-12-14 11:35:59', '2021-04-03 19:54:55', '0');
INSERT INTO `style` VALUES ('6', '78w - 113w', '66', '奥迪A8', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/4316c11a50244362a2deae16b7bb9219.jpg', '44', '61', '2021-12-14', '150', '52', '5870', '22600', '1256', '252', null, '2020-12-14 11:35:59', '2021-04-20 15:05:35', '0');
INSERT INTO `style` VALUES ('7', '120w - 224w', '74', '帕拉梅拉', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/df04d28522514b3bb1851e3a4738a820.jpg', '45', '62', '2021-12-14', '149', '55', '2501', '7590', '1869', '1525', null, '2020-12-14 11:35:59', '2021-04-03 19:55:00', '0');
INSERT INTO `style` VALUES ('8', '1980w - 2475w', '87', '法拉利--拉法', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/db9d2f3debbe4c908997f2fd9329a43b.jpg', '46', '63', '2021-12-14', '150', '52', '586', '2000', '1478', '25245', null, '2020-12-14 11:35:59', '2021-04-03 19:55:03', '0');
INSERT INTO `style` VALUES ('9', '21w - 26w', '82', '大众探岳', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/a865afbefbbc45938b58c77ac9ff66da.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/6681f9e1c1064c979c696162ce199c3c.jpg', '47', '56', '2021-12-18', '149', '53', '250', '1000', '8571', '225', null, '2015-12-14 11:11:48', '2021-05-10 15:23:35', '0');
INSERT INTO `style` VALUES ('10', '9w - 13w', '83', '东风508', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/422634613f8f48598c199992dafdf4f7.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/3d88f4cecd2740eebe58c03e063e6eb5.jpg', '48', '56', '2017-12-14', '150', '52', '580', '1560', '7452', '572', null, '2013-12-14 11:11:48', '2021-04-03 19:55:10', '0');
INSERT INTO `style` VALUES ('11', '18w - 23w', '71', '本田雅阁', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/410670804b9e43caba6f726dc1ed0165.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/8840357273ed446dab66960ce45b1785.jpg', '45', '57', '2017-12-14', '150', '55', '142', '600', '1236', '2752', null, '2017-12-14 11:11:48', '2021-04-03 19:55:12', '0');
INSERT INTO `style` VALUES ('12', '11w - 13w', '85', '丰田卡罗拉', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/0439b43d1ff742a8b78243528d51fd10.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/234b030c15254ab1a192ee7d0dfa0130.jpg', '45', '56', '2017-12-14', '149', '55', '148', '500', '1453', '27', null, '2011-12-14 11:11:48', '2021-05-10 15:24:43', '0');
INSERT INTO `style` VALUES ('13', '16w - 21w', '91', '红旗H9', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/fad3a42468e44347ac608eddd5751fd4.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/b6d93b347c0447daa64306f90d72a45e.jpg', '41', '57', '2017-12-14', '150', '55', '140', '500', '1478', '7272', null, '2019-12-14 11:11:48', '2021-04-03 19:55:17', '0');
INSERT INTO `style` VALUES ('14', '7w - 9w', '66', '奥拓', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/87cdbe4044a64b08aa9c8f1e8923d45c.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/87f2ce47aace490ba0fe20849ddbfac8.jpg', '41', '58', '2018-12-14', '149', '53', '860', '2500', '152', '2572', null, '2018-12-14 12:15:20', '2021-04-19 14:56:17', '0');
INSERT INTO `style` VALUES ('15', '3600w - 4200w', '106', '兰博基尼', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/c8e8142ab34143f6a3156972adb0bfd2.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/55faf809b351443582c8dc5698083dc0.jpg', '42', '60', '2018-12-14', '150', '52', '472', '1603', '902', '0', null, '2016-12-14 12:15:20', '2021-05-10 15:35:34', '0');
INSERT INTO `style` VALUES ('16', '980w - 1600w', '105', '劳斯莱斯', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/lbt/2021/04/03/a4db8f3e5b3743c9b180715ce68e9745.jpg', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/03/0b10dbb70a7f450d93f098ee01f1e09e.jpg', '43', '61', '2018-12-14', '150', '55', '170', '500', '145', '752', null, '2010-12-14 12:15:20', '2021-04-03 19:55:25', '0');
INSERT INTO `style` VALUES ('17', '25w - 35w', '67', '谢耳朵', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/20/2c1c2fb6846a48049ed613e0b3394883.jpg', '40', '58', '2021-04-29', '149', '54', '0', '0', '0', '1222', null, '2021-04-20 10:55:45', '2021-04-21 16:55:10', '1');
INSERT INTO `style` VALUES ('18', '11w - 24w', '69', '红旗H9', null, 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/style/tx/2021/04/21/0d90b9087c3d492888fa2e1446ca980f.png', '40', '61', '2021-04-29', '150', '54', '0', '0', '0', '123123', null, '2021-04-21 16:54:15', '2021-04-23 09:26:56', '0');

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
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '汽车之家', 'e10adc3949ba59abbe56e057f20f883e', 'admin@qczj.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/f48c282940244b80a768f4f1339f2b1b.jpg', '这家伙很懒，什么都没有留下。', '0', '2020-11-17', '2020-11-17 16:22:07', '2021-04-14 22:23:19', '10', '0', '12', '1', '0');
INSERT INTO `user` VALUES ('2', '2', '化腾', 'c4ca4238a0b923820dcc509a6f75849b', '773@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/23/23e9d17e61dc4d168d16a6ee001dd52d.jpg', '这家伙很懒，什么都没有留下。', '1', '2021-03-27', '2020-11-17T16:38:20', '2021-05-09 18:13:08', '160', '0', '73', '1', '0');
INSERT INTO `user` VALUES ('3', '3', '卢本伟', 'c4ca4238a0b923820dcc509a6f75849b', '7736002@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/ea22e71b2b2348949242293674fd8897.jpg', '这家伙很懒，什么都没有留下。', '0', '2020-11-17', '2021-03-18 09:40:03', '2021-04-15 09:58:37', '20', '0', '12', '1', '0');
INSERT INTO `user` VALUES ('4', '4', 'PDD', 'c4ca4238a0b923820dcc509a6f75849b', '128786@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/b9ebcfb146c445c28eb656a29d43e1ad.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-03-19 18:21:52', '2021-04-23 20:38:14', '30', '0', '11', '1', '0');
INSERT INTO `user` VALUES ('5', '5', '大马猴', 'c4ca4238a0b923820dcc509a6f75849b', '7736002@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/44363507b555478ba3e4cb394a254456.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-03-22 16:16:23', '2021-04-03 19:24:52', '10', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('6', '6', '药水哥', 'c4ca4238a0b923820dcc509a6f75849b', '77360@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/bef47d94ef4c4a7f8b22fabe0060cb8e.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-15', '2021-03-22 16:34:44', '2021-04-03 19:25:01', '30', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('7', '7', '小阿Giao', 'c4ca4238a0b923820dcc509a6f75849b', '1140193437@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/a83acddcde694293b9f80ecacf59f89a.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-03-25 22:03:49', '2021-04-23 20:36:29', '30', '0', '26', '1', '0');
INSERT INTO `user` VALUES ('8', '8', '混元功法保国', 'c4ca4238a0b923820dcc509a6f75849b', '773601602@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/e40f4f27982d4741b7dc7230fe083250.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-01-12', '2021-01-12 22:12:13', '2021-04-03 19:25:24', '10', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('9', '9', '练习生蔡徐坤', 'c4ca4238a0b923820dcc509a6f75849b', '1321@123.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/a17f849dc29c4ed889ccfcc42043ace5.jpg', '这家伙很懒，什么都没有留下。', '0', '2021-12-15', '2021-12-15 15:14:15', '2021-04-03 19:25:34', '0', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('10', '10', '碧萝奶奶', 'c4ca4238a0b923820dcc509a6f75849b', '123@1234.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/03/817b3ed58dae4699b515e7b822758473.jpg', '这家伙很懒，什么都没有留下。', '0', '2018-12-15', '2018-12-15 15:12:13', '2021-04-04 12:00:00', '10', '0', '0', '1', '0');
INSERT INTO `user` VALUES ('35', '1', '谢耳朵', 'c4ca4238a0b923820dcc509a6f75849b', '1140193437@qq.com', 'https://superb-car.oss-cn-beijing.aliyuncs.com/car-home/user/2021/04/26/9f7e3c51290f4f9691bb11bbbb4b7894.jpg', '我后悔了，', '0', '1999-05-24', '2021-03-01 09:38:59', '2021-05-07 15:20:17', '120', '0', '106', '0', '0');

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

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('3', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '9', '新车 | 本田全新一代思域实车泄露，4月28日发布，造型大变样', '本田全新一代思域国内实车\r\n\r\n根据曝光的实车图来看，全新一代思域量产版造型基本延续了此前原型车的设计，相比老款思域变化较大。具体来看，新车大灯造型更细长，前脸呈现出扁平的视觉效果。同时，结合泄露的实车图来看，全新一代思域提供有白色、黑色和灰色等车身颜色选择，并且海外媒体透露，该车有望提供8种外观涂装。', '2', '2021-04-26 15:43:06', '2', '4');
INSERT INTO `video` VALUES ('4', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '2', '新车 | 又萌又拉风！宏光MINIEV敞篷版亮相上海车展', '[懂车帝原创 2021上海车展] 在4月19日开幕的2021上海车展上，五菱新能源首款敞篷车“宏光MINI(图片|配置|询价)EV CABRIO”正式亮相。在此之前，宏光MINIEV马卡龙刚上市不久，分为时尚款和臻享款，官方指导价分别为3.76万元和4.36万元，我们预计敞篷版上市价格或将超过普通版车型。', '2', '2021-04-26 16:29:57', '1', '0');
INSERT INTO `video` VALUES ('5', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '新车｜双旗舰来袭 坦克700/800亮相', '[懂车帝原创 2021上海车展] 本届上海车展，正式宣布成为独立品牌的坦克全球首发两款全新旗舰车型，分别为中大型SUV坦克700和全尺寸SUV坦克800。相比以硬派越野风格示人的坦克首款车型，这两款尺寸更为硕大的SUV则一反“常”态，改走奢豪+越野的差异化竞争路线。', '2', '2021-04-26 16:29:57', '2', '7');
INSERT INTO `video` VALUES ('6', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '新车 | 中型SUV标杆换代！第四代汉兰达正式亮相上海车展', '[懂车帝原创 2021上海车展] 每一位中型SUV消费者都绕不开一台广汽丰田汉兰达(图片|配置|询价)。即便它的第三代车型从2013年缝缝补补卖到今天，但依旧非常热销。如今，第四代车型正式在上海车展亮相，基于TNGA架构下GK-K平台打造的全新换代车型，势必将再次成为这个级别的“统治者”。', '2', '2021-04-26 16:29:57', '2', '2');
INSERT INTO `video` VALUES ('7', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '一样的技术不一样的质保，双标问题没完没了，现代索十还能买吗', '一样的技术不一样的质保，双标问题没完没了，现代索十还能买吗？欢迎收看这期懂车大爆炸[可怜][可怜]', '2', '2021-04-26 16:29:57', '2', '1');
INSERT INTO `video` VALUES ('8', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '同等价格分最高，买到就是捡了个便宜', '车门也是欧系常用的一体冲压全框式车门，别看这辆车价格不高，但门框还采用塑料进行包裹美化，一般这种设计只在一些豪华品牌上才能看到。\r\n\r\n隔音棉\r\n\r\n大面积', '2', '2021-04-26 16:29:57', '2', '14');
INSERT INTO `video` VALUES ('9', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '翻滚后气囊没爆，攀岩壁，穿无人区，重创后的长城炮完成超限挑战', '本季《非常野》迎来终章，“重生”的长城炮在完成沙漠拉力赛之后，又在贺兰山阙攀登岩壁，还在高原冰河完成试炼，验证了中国制造的实力。', '2', '2021-04-26 16:29:57', '2', '1');
INSERT INTO `video` VALUES ('10', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '新车 | 提升越野能力，增加户外装备！长城炮黑弹与旅装炮开启预售', '[懂车帝原创 2021上海车展] 在2021上海国际车展上，长城炮黑弹版与旅装炮正式开启预售，黑弹版官方预售价格区间为23万元-25万元，旅装炮官方预售价格区间为26万元-29万元。新车在长城炮的基础上进行了重度改装，黑弹版重点提升越野能力整体呈现出高大威猛的特点，旅装炮则针对户外露营这一使用场景对车辆进行了改装和提升。', '2', '2021-04-26 16:29:57', '2', '0');
INSERT INTO `video` VALUES ('11', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '新车 | CR-V、荣放地位不保？全新一代日产奇骏正式亮相', '[懂车帝原创 2021上海车展] 作为日产在中国市场的拳头产品，奇骏(图片|配置|询价)的一举一动一直牵动着不少消费者的目光。而在今日，全新一代奇骏正式登陆上海车展。新车采用全新的内外饰设计，并搭载1.5升三缸发动机。\r\n\r\n新车延续了海外版车型的设计语言，全新的V-Motion家族前脸以及分体式大灯让新车的辨识度得到显著提升。同时更加丰富的棱角设计也让新车看起来更有运动感。', '2', '2021-04-26 16:29:57', '2', '0');
INSERT INTO `video` VALUES ('12', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '新车 | 新前脸+增配！新款奥迪Q5L亮相上海车展', '[懂车帝原创 2021上海车展] 4月19日，在2021年上海国际车展现场，一汽-大众奥迪Q5L(图片|配置|询价)中期改款车型正式亮相，新车对外观、内饰设计和配置进行了升级。作为参考，现款在售奥迪Q5L的官方指导价为38.78万-49.80万元，中期改款后预计将保持老款车型的大致售价区间。', '2', '2021-04-26 16:29:57', '2', '0');
INSERT INTO `video` VALUES ('13', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '新车丨咖啡家族又一力作，WEY品牌全新车型拿铁亮相上海车展', '根据摩卡、拿铁和玛奇朵的车身尺寸（后两者数据来源与申报信息），拿铁的车身尺寸介于摩卡和玛奇朵之间；三者的关系与之前的“VV”系列类似，拿铁和玛奇朵的尺寸相对更加接近，都属于紧凑型SUV；而摩卡则是定位中型SUV。', '2', '2021-04-26 16:29:57', '1', '0');
INSERT INTO `video` VALUES ('14', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '把帝豪GL拉长，“止推杆”能带来好操控吗？', '左右滑动查看更多\r\n\r\n前副车架看似是全框式结构，但实际上前横梁非常薄弱，基本上起不到什么提高刚性的作用，充其量只能称为H形副车架。', '2', '2021-04-26 16:29:57', '2', '2');
INSERT INTO `video` VALUES ('15', '1e3a50b946994b8a9281a7807a96b2f8', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/56dbaad8-1790e786849/56dbaad8-1790e786849.mp4', '1', '回头率百分之百的纯电动超跑-前途K50，除了帅就一无是处了吗', '回头率百分之百的纯电动超跑-前途K50，除了帅就一无是处了吗', '2', '2021-04-26 16:29:57', '3', '0');
INSERT INTO `video` VALUES ('21', '\r\n51f3a7aaeba64a1a830bed44de2442ac', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/1c078742-1790d4c9fac/1c078742-1790d4c9fac.mp4', '9', '双面孔+超感交互，传祺GS4plus能否后来居上？', '“全能标杆”传祺GS4 PLUS，有颜有智，更有强劲动力，TA的到来进一步提升了传祺GS4家族的竞争实力，也给消费者带来了更大的可选择空间。“全能标杆”传祺GS4 PLUS，有颜有智，更有强劲动力，TA的到来进一步提升了传祺GS4家族的竞争实力，也给消费者带来了更大的可选择空间。', '2', '2021-04-26 21:47:00', '2', '8');
INSERT INTO `video` VALUES ('22', '\r\n0c9995f4023641d3b7a312b456ff3d4e', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/19fe9ec3-1790e6e1a7c/19fe9ec3-1790e6e1a7c.mp4', '9', '我们拆了一辆五菱宏光MINIEV，有点一言难尽……', '本期《懂车大爆炸》，我们来瞧瞧把Model 3拉下“销量神坛”的五菱宏光MINIEV到底有多神奇，便宜的车做工质量是否也能和“大厂”的产品一较高下。', '2', '2021-04-26 21:51:44', '2', '5');
INSERT INTO `video` VALUES ('26', 'c24d89a428044114bb1ca0e301a471c2', 'https://outin-c3f5519ca65411ebae3100163e1c9256.oss-cn-shanghai.aliyuncs.com/sv/38b0ea05-179126932c4/38b0ea05-179126932c4.mp4', '10', '回头率百分之百的纯电动超跑-前途K50，除了帅就一无是处了吗', '回头率百分之百的纯电动超跑-前途K50，除了帅就一无是处了吗', '2', '2021-04-27 16:19:37', '2', '11');
