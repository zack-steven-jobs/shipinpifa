/*
Navicat MySQL Data Transfer

Source Server         : 食品批发商城
Source Server Version : 50163
Source Host           : app212.51edn.com:3306
Source Database       : app212

Target Server Type    : MYSQL
Target Server Version : 50163
File Encoding         : 65001

Date: 2016-11-18 17:49:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hy_aaa
-- ----------------------------
DROP TABLE IF EXISTS `hy_aaa`;
CREATE TABLE `hy_aaa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isshow` int(11) NOT NULL,
  `title` text NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_aaa
-- ----------------------------
INSERT INTO `hy_aaa` VALUES ('1', '1', '新建表', '1475567939');

-- ----------------------------
-- Table structure for hy_account
-- ----------------------------
DROP TABLE IF EXISTS `hy_account`;
CREATE TABLE `hy_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `orderid` char(30) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `custom` varchar(200) NOT NULL,
  `payment` char(50) NOT NULL,
  `paymenttype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `paymentno` char(100) NOT NULL,
  `molds` char(30) NOT NULL,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `auser` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_account
-- ----------------------------
INSERT INTO `hy_account` VALUES ('34', '16', '3553113', '0.00', '3', '', 'admin', '1', '', '', '0', '1475052161', '');
INSERT INTO `hy_account` VALUES ('35', '16', '333333', '-3.30', '3', '', 'admin', '1', '', '', '0', '1475053950', '');

-- ----------------------------
-- Table structure for hy_address
-- ----------------------------
DROP TABLE IF EXISTS `hy_address`;
CREATE TABLE `hy_address` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `uid` int(9) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL COMMENT '用户姓名',
  `shouji` varchar(12) NOT NULL,
  `youbian` int(9) NOT NULL COMMENT '邮编',
  `suozaidi` text NOT NULL COMMENT '所在地',
  `xiangxi` text NOT NULL COMMENT '详细地址',
  `moren` int(3) NOT NULL COMMENT '默认',
  `addtime` int(20) NOT NULL,
  `flag` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_address
-- ----------------------------
INSERT INTO `hy_address` VALUES ('1', '16', '郭德纲', '15107735638', '565656', '广东省深圳市宝安区', '宝安沙井1234567', '1', '1321354', '0');
INSERT INTO `hy_address` VALUES ('3', '16', '郭麒麟', '15107735639', '123456', '北京市 北京市 朝阳区', '耍手机都觉得就觉得', '0', '1474426300', '0');
INSERT INTO `hy_address` VALUES ('6', '18', '黄家驹', '13688886666', '516464', '内蒙古 呼和浩特市 新城区', '沙井镇政府', '0', '1474508298', '0');
INSERT INTO `hy_address` VALUES ('9', '16', '返回换个', '13566668888', '565896', '河北省 石家庄市 长安区', '返回滚滚滚哈哈哈哈', '0', '1474862035', '0');
INSERT INTO `hy_address` VALUES ('8', '18', '科比', '15188886666', '456436', '北京市 北京市 朝阳区', '西北街', '0', '1474508439', '0');
INSERT INTO `hy_address` VALUES ('10', '21', '唐嫣', '18612345678', '40012345', '广东省 深圳市 宝安区', '卓越大厦', '0', '1475919457', '0');
INSERT INTO `hy_address` VALUES ('12', '30', '茉莉', '18512345678', '356678', '广东省 深圳市 宝安区', '卓越大厦', '0', '1476339026', '0');
INSERT INTO `hy_address` VALUES ('13', '16', '大神', '15155555555', '789456', '天津市 天津市 河西区', '土城新城小区53栋501', '0', '1476754146', '0');
INSERT INTO `hy_address` VALUES ('14', '16', '小明', '18945671234', '456456', '北京市 北京市 东城区', '星级酒店家', '0', '1476754243', '0');
INSERT INTO `hy_address` VALUES ('15', '34', '5566', '15107735566', '556656', '天津市 天津市 北辰区', '丰产北道2号', '0', '1476755445', '0');
INSERT INTO `hy_address` VALUES ('18', '32', '规划好', '15270020024', '666666', '江西省 南昌市 东湖区', '具有很好', '0', '1476942590', '0');
INSERT INTO `hy_address` VALUES ('19', '1', '急急急', '15107735637', '564315', '北京市 北京市 东城区', '都不会都觉得', '0', '1477017730', '0');
INSERT INTO `hy_address` VALUES ('20', '32', 'gg', '15270020025', '123456', '江西省 南昌市 东湖区', '更不回家吃饭', '0', '1477024678', '0');
INSERT INTO `hy_address` VALUES ('21', '35', '棉花糖', '18670653362', '123456', '广东省 深圳市 宝安区', '卓越大厦', '0', '1477041599', '0');

-- ----------------------------
-- Table structure for hy_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `hy_admin_group`;
CREATE TABLE `hy_admin_group` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `oneself` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paction` text NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_admin_group
-- ----------------------------
INSERT INTO `hy_admin_group` VALUES ('1', '录入员', '0', '0', ',a_html,a_article_add,a_article_edit,a_product,a_product_add,a_product_edit,a_product_del,a_product_audit,a_message,a_message_edit,a_message_del,a_message_audit,a_article_index,a_classtypes_index,a_fields_info,a_adminuser_edituser,uploads,a_label,a_sys_ecache,a_product_index,a_goods_attribute_ajax,a_channel,channel_person_index,');

-- ----------------------------
-- Table structure for hy_admin_per
-- ----------------------------
DROP TABLE IF EXISTS `hy_admin_per`;
CREATE TABLE `hy_admin_per` (
  `pid` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `action` char(50) NOT NULL,
  `name` char(20) NOT NULL,
  `up` tinyint(5) NOT NULL DEFAULT '0',
  `no` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `molds` char(30) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_admin_per
-- ----------------------------
INSERT INTO `hy_admin_per` VALUES ('1', 'a_article', '管理', '0', '0', '20', 'article');
INSERT INTO `hy_admin_per` VALUES ('2', 'a_classtypes', '栏目管理', '0', '0', '96', '');
INSERT INTO `hy_admin_per` VALUES ('3', 'a_fields', '自定义字段管理', '37', '0', '29', '');
INSERT INTO `hy_admin_per` VALUES ('4', 'a_article_index', '列表', '1', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('5', 'a_article_add', '添加', '1', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('6', 'a_article_edit', '编辑', '1', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('7', 'a_article_del', '删除', '1', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('8', 'a_article_audit', '审核', '1', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('9', 'a_classtypes_index', '栏目列表', '2', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('10', 'a_classtypes_add', '栏目添加', '2', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('11', 'a_classtypes_edit', '栏目编辑', '2', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('12', 'a_classtypes_del', '栏目删除', '2', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('13', 'a_molds', '频道设置', '37', '0', '30', '');
INSERT INTO `hy_admin_per` VALUES ('17', 'a_adminuser', '管理员管理', '36', '0', '29', '');
INSERT INTO `hy_admin_per` VALUES ('22', 'a_sys', '系统设置', '36', '0', '30', '');
INSERT INTO `hy_admin_per` VALUES ('24', 'a_fields_info', '字段列表', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('27', 'a_adminuser_edituser', '修改资料', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('28', 'uploads', '上传', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('29', 'a_traits', '推荐属性管理', '37', '0', '28', '');
INSERT INTO `hy_admin_per` VALUES ('34', 'a_dbbak', '数据备份', '36', '0', '27', '');
INSERT INTO `hy_admin_per` VALUES ('35', 'a_label', '模板调用生成器', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('36', '', '系统', '0', '0', '99', '');
INSERT INTO `hy_admin_per` VALUES ('37', '', '频道管理', '0', '0', '97', '');
INSERT INTO `hy_admin_per` VALUES ('38', 'a_sys_ecache', '更新缓存', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('40', 'a_labelcus', '自定义模板标签', '36', '0', '28', '');
INSERT INTO `hy_admin_per` VALUES ('41', 'a_funs', '插件设置', '42', '0', '30', '');
INSERT INTO `hy_admin_per` VALUES ('42', '', '其他管理', '0', '0', '98', '');
INSERT INTO `hy_admin_per` VALUES ('43', 'a_files', '清理附件', '36', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('66', 'a_message', '管理', '0', '0', '0', 'message');
INSERT INTO `hy_admin_per` VALUES ('67', 'a_message_edit', '编辑', '66', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('68', 'a_message_del', '删除', '66', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('69', 'a_message_audit', '审核', '66', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('71', 'a_comment', '评论管理', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('72', 'a_links', '友情链接管理', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('73', 'a_member', '会员管理', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('74', 'a_special', '专题管理', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('75', 'a_update', '在线升级', '36', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('76', 'a_html', '静态生成', '36', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('77', 'a_product', '管理', '0', '0', '20', 'product');
INSERT INTO `hy_admin_per` VALUES ('78', 'a_product_index', '列表', '77', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('79', 'a_product_add', '添加', '77', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('80', 'a_product_edit', '编辑', '77', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('81', 'a_product_del', '删除', '77', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('82', 'a_product_audit', '审核', '77', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('84', 'a_ads', '广告管理', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('85', 'a_pay', '支付系统', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('86', 'a_goods', '购物系统', '42', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('87', 'a_goods_attribute_ajax', '规格属性', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('104', 'a_channel', '自定义频道', '0', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('123', 'channel_person_index', '列表', '118', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('122', 'channel_person_audit', '审核', '118', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('121', 'channel_person_del', '删除', '118', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('120', 'channel_person_edit', '编辑', '118', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('119', 'channel_person_add', '添加', '118', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('118', 'channel_person', '管理', '0', '0', '0', 'person');
INSERT INTO `hy_admin_per` VALUES ('117', 'a_template', '模板管理', '36', '0', '28', '');
INSERT INTO `hy_admin_per` VALUES ('136', 'a_product_virtual', '虚拟货物', '77', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('137', 'channel_yewuyuan_num', '管理', '0', '0', '0', 'yewuyuan_num');
INSERT INTO `hy_admin_per` VALUES ('138', 'channel_yewuyuan_num_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('139', 'channel_yewuyuan_num_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('140', 'channel_yewuyuan_num_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('141', 'channel_yewuyuan_num_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('142', 'channel_yewuyuan_num_index', '列表', '127', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('184', 'channel_dingdan_index', '列表', '127', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('183', 'channel_dingdan_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('182', 'channel_dingdan_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('181', 'channel_dingdan_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('180', 'channel_dingdan_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('179', 'channel_dingdan', '管理', '0', '0', '0', 'dingdan');
INSERT INTO `hy_admin_per` VALUES ('149', 'channel_collect', '管理', '0', '0', '0', 'collect');
INSERT INTO `hy_admin_per` VALUES ('150', 'channel_collect_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('151', 'channel_collect_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('152', 'channel_collect_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('153', 'channel_collect_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('154', 'channel_collect_index', '列表', '127', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('155', 'channel_tuijianma', '管理', '0', '0', '0', 'tuijianma');
INSERT INTO `hy_admin_per` VALUES ('156', 'channel_tuijianma_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('157', 'channel_tuijianma_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('158', 'channel_tuijianma_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('159', 'channel_tuijianma_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('160', 'channel_tuijianma_index', '列表', '127', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('161', 'channel_shouye_pic', '管理', '0', '0', '0', 'shouye_pic');
INSERT INTO `hy_admin_per` VALUES ('162', 'channel_shouye_pic_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('163', 'channel_shouye_pic_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('164', 'channel_shouye_pic_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('165', 'channel_shouye_pic_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('166', 'channel_shouye_pic_index', '列表', '127', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('167', 'channel_xiangqing_lunbo', '管理', '0', '0', '0', 'xiangqing_lunbo');
INSERT INTO `hy_admin_per` VALUES ('168', 'channel_xiangqing_lunbo_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('169', 'channel_xiangqing_lunbo_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('170', 'channel_xiangqing_lunbo_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('171', 'channel_xiangqing_lunbo_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('172', 'channel_xiangqing_lunbo_index', '列表', '127', '1', '0', '');
INSERT INTO `hy_admin_per` VALUES ('185', 'channel_dianhua', '管理', '0', '0', '0', 'dianhua');
INSERT INTO `hy_admin_per` VALUES ('186', 'channel_dianhua_add', '添加', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('187', 'channel_dianhua_edit', '编辑', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('188', 'channel_dianhua_del', '删除', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('189', 'channel_dianhua_audit', '审核', '127', '0', '0', '');
INSERT INTO `hy_admin_per` VALUES ('190', 'channel_dianhua_index', '列表', '127', '1', '0', '');

-- ----------------------------
-- Table structure for hy_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `hy_admin_user`;
CREATE TABLE `hy_admin_user` (
  `auid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `auser` char(20) NOT NULL,
  `apass` char(32) NOT NULL,
  `aname` char(30) NOT NULL,
  `amail` char(100) NOT NULL,
  `atel` char(100) NOT NULL,
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pclasstype` text NOT NULL,
  PRIMARY KEY (`auid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_admin_user
-- ----------------------------
INSERT INTO `hy_admin_user` VALUES ('1', 'hyadmin', '5b351455e5f57aeb5a6d78de62d2925d', '真实姓名', '邮箱', '电话', '1', '1', '');

-- ----------------------------
-- Table structure for hy_ads
-- ----------------------------
DROP TABLE IF EXISTS `hy_ads`;
CREATE TABLE `hy_ads` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `taid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `adsw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adsh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adfile` char(200) NOT NULL,
  `body` text NOT NULL,
  `gourl` char(200) NOT NULL,
  `target` char(8) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_ads
-- ----------------------------
INSERT INTO `hy_ads` VALUES ('1', '1', '0', 'banner1', '1', '980', '300', 'skin/images/banner.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>', '#', 'self', '1');
INSERT INTO `hy_ads` VALUES ('2', '1', '0', 'banner2', '1', '980', '300', 'skin/images/banner.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>', '#', 'self', '1');
INSERT INTO `hy_ads` VALUES ('3', '1', '0', 'banner3', '1', '980', '300', 'skin/images/banner.jpg', '<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>', '#', 'self', '1');
INSERT INTO `hy_ads` VALUES ('6', '2', '0', '自定义广告', '5', '0', '0', '', '', '', 'blank', '1');

-- ----------------------------
-- Table structure for hy_adstype
-- ----------------------------
DROP TABLE IF EXISTS `hy_adstype`;
CREATE TABLE `hy_adstype` (
  `taid` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `adsw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adsh` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`taid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_adstype
-- ----------------------------
INSERT INTO `hy_adstype` VALUES ('1', '头部通栏banner', '980', '300');
INSERT INTO `hy_adstype` VALUES ('2', '自定义代码示例', '0', '0');

-- ----------------------------
-- Table structure for hy_article
-- ----------------------------
DROP TABLE IF EXISTS `hy_article`;
CREATE TABLE `hy_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `litpic` char(255) NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `article` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_article
-- ----------------------------

-- ----------------------------
-- Table structure for hy_article_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_article_field`;
CREATE TABLE `hy_article_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_article_field
-- ----------------------------

-- ----------------------------
-- Table structure for hy_attribute
-- ----------------------------
DROP TABLE IF EXISTS `hy_attribute`;
CREATE TABLE `hy_attribute` (
  `sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL,
  `name` char(100) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `attribute` (`tid`,`isshow`),
  KEY `attribute_orbye` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_attribute
-- ----------------------------
INSERT INTO `hy_attribute` VALUES ('4', '2', '红色', '1', '0');
INSERT INTO `hy_attribute` VALUES ('5', '2', '蓝色', '1', '0');
INSERT INTO `hy_attribute` VALUES ('6', '3', 'S', '1', '0');
INSERT INTO `hy_attribute` VALUES ('7', '3', 'M', '1', '0');
INSERT INTO `hy_attribute` VALUES ('8', '3', 'L', '1', '0');

-- ----------------------------
-- Table structure for hy_attribute_type
-- ----------------------------
DROP TABLE IF EXISTS `hy_attribute_type`;
CREATE TABLE `hy_attribute_type` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `classtype` text NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_attribute_type
-- ----------------------------
INSERT INTO `hy_attribute_type` VALUES ('2', '颜色', '|18|', '1', '0');
INSERT INTO `hy_attribute_type` VALUES ('3', '尺码', '|18|', '1', '0');

-- ----------------------------
-- Table structure for hy_classtype
-- ----------------------------
DROP TABLE IF EXISTS `hy_classtype`;
CREATE TABLE `hy_classtype` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `litpic` char(200) NOT NULL,
  `title` char(100) NOT NULL,
  `keywords` char(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `isindex` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listimg` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `t_content` char(50) NOT NULL,
  `listnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `htmldir` char(100) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `msubmit` smallint(5) NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  `mshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `imgw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imgh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unit` char(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_classtype
-- ----------------------------
INSERT INTO `hy_classtype` VALUES ('1', 'article', '0', '关于我们', '', 'uploads/2012/04/261014486626.jpg', '关于我们', '', '移动食品批发是一款预包装食品兼散装食品批发销售的APP，基于现有的线下交易市场，为客户提供更便捷的在线交易方式。', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '关于我们...内容建设中...', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('2', 'product', '0', '商品中心', '', '', '商品中心', '', '', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('3', 'article', '18', '服务项目', '', '', '服务项目', '', 'dfsdf', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('4', 'article', '0', '服务案例', '', '', '服务案例', '', '', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('23', 'message', '22', '在线应聘', '', '', '在线应聘', '', '', '1', 'person_message.html', 'person_message.html', 'person_message.html', 'person_message.html', 'person_message.html', '20', '', '', '0', '1', '0', '', '0', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('6', 'article', '0', '营销网络', '', '', '营销网络', '', '', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '营销网络...内容建设中...', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('7', 'article', '0', '联系我们', '', '', '联系我们', '', '', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '联系我们...内容建设中...', '0', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('8', 'article', '0', '公司动态', '', '', '公司动态', '', '', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '1', '0', '', '0', '200', '200', '');
INSERT INTO `hy_classtype` VALUES ('9', 'article', '1', '公司介绍', '', '', '公司介绍', '', '', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '公司介绍，内容完善中...', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('10', 'article', '1', '公司荣誉', '', '', '公司荣誉', '', '', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('11', 'message', '0', '在线留言', '', '', '在线留言', '', '', '1', 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', '10', '', '', '0', '1', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('18', 'product', '2', '实物商品演示', '', '', 'DOYO通用建站系统', '', '', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('19', 'product', '2', '虚拟商品演示', '', '', 'DOYO域名主机', '', '', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('22', 'person', '0', '人才招聘', '', '', 'asdfasdfasdfasdf', '', '', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('24', 'yewuyuan_num', '0', '业务员编号', '', '', 'vhfgh', '', '业务员的编号', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('26', 'tuijianma', '0', '推荐码', '', '', '推荐码', '', '推荐码', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('25', 'evaluate', '26', '用户评价', '', '', '用户评价', '', '用户评价留言等信息', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('27', 'shouye_pic', '0', '首页轮播图', '', '', '首页轮播图', '', '首页轮播图共四张，需上传四张图片，对应商品id为商品管理列表中的ID', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('28', 'xiangqing_lunbo', '0', '商品详情轮播图', '', '', '商品详情轮播图', '', '商品详情轮播图共四张，必须添加四张图片，对应好每个商品，商品管理中的ID就是商品的id', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('29', 'dingdan', '0', '订单内容', '', '', '订单内容', '', '订单内容', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `hy_classtype` VALUES ('30', 'dianhua', '0', '商品详情电话号码', '', '', '商品详情电话号码', '', '商品详情电话号码只需要添加一个，可以在原号码中修改，若添加不止一个，则会选择最新添加的号码作为拨打的号码', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');

-- ----------------------------
-- Table structure for hy_collect
-- ----------------------------
DROP TABLE IF EXISTS `hy_collect`;
CREATE TABLE `hy_collect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `collect` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_collect
-- ----------------------------
INSERT INTO `hy_collect` VALUES ('1', '0', '0', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('19', '21', '16', '0', '', '', '', '', '', '', '1476320359', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('17', '21', '18', '0', '', '', '', '', '', '', '1476263503', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('11', '16', '16', '1', '', '', '', '', '', '', '1475130993', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('18', '16', '18', '0', '', '', '', '', '', '', '1476268940', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('7', '16', '17', '1', '', '', '', '', '', '', '1475121371', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('14', '21', '22', '0', '', '', '', '', '', '', '1475919590', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('15', '16', '19', '0', '', '', '', '', '', '', '1475926610', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('20', '30', '22', '0', '', '', '', '', '', '', '1476338727', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('21', '35', '22', '0', '', '', '', '', '', '', '1476865728', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('22', '16', '20', '0', '', '', '', '', '', '', '1477017899', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('24', '35', '25', '0', '', '', '', '', '', '', '1478160682', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_collect` VALUES ('25', '32', '18', '0', '', '', '', '', '', '', '1478526259', '0', '0', '0', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for hy_collect_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_collect_field`;
CREATE TABLE `hy_collect_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_collect_field
-- ----------------------------

-- ----------------------------
-- Table structure for hy_comment
-- ----------------------------
DROP TABLE IF EXISTS `hy_comment`;
CREATE TABLE `hy_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL,
  `molds` char(20) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  `reply` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `retime` int(10) unsigned NOT NULL DEFAULT '0',
  `user` char(30) NOT NULL,
  `ruser` char(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_comment
-- ----------------------------
INSERT INTO `hy_comment` VALUES ('54', '3', 'product', '0', 'asdf', '', '1340949850', '0', '游客', '');
INSERT INTO `hy_comment` VALUES ('53', '1', 'product', '0', 'asdfasdf', '', '1340771473', '0', '游客', '');
INSERT INTO `hy_comment` VALUES ('55', '3', 'article', '0', 'fhjdfghdfh', '', '1352975201', '0', '游客', '');
INSERT INTO `hy_comment` VALUES ('58', '47', 'article', '1', '1111111111', 'asdf', '1353412302', '1353412308', '1', 'admin');
INSERT INTO `hy_comment` VALUES ('57', '50', 'article', '0', 'asdfasdfasdf', 'asdf', '1353411949', '1353412281', '1', 'admin');

-- ----------------------------
-- Table structure for hy_custom
-- ----------------------------
DROP TABLE IF EXISTS `hy_custom`;
CREATE TABLE `hy_custom` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(200) NOT NULL,
  `dir` char(100) NOT NULL,
  `template` char(100) NOT NULL,
  `file` char(200) NOT NULL,
  `html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_custom
-- ----------------------------
INSERT INTO `hy_custom` VALUES ('2', '测试', 'aa', 'index.html', '123', '0');

-- ----------------------------
-- Table structure for hy_dianhua
-- ----------------------------
DROP TABLE IF EXISTS `hy_dianhua`;
CREATE TABLE `hy_dianhua` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `dianhua` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_dianhua
-- ----------------------------
INSERT INTO `hy_dianhua` VALUES ('1', '30', '0', '1', '电话号码', '', '', '', '', '', '1476177360', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_dianhua` VALUES ('2', '30', '0', '1', '新号码', '', '', '', '', '', '1476178200', '0', '0', '0', '0', '', '', 'hyadmin', '0');

-- ----------------------------
-- Table structure for hy_dianhua_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_dianhua_field`;
CREATE TABLE `hy_dianhua_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `phone_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_dianhua_field
-- ----------------------------
INSERT INTO `hy_dianhua_field` VALUES ('1', '10010');
INSERT INTO `hy_dianhua_field` VALUES ('2', '10086');

-- ----------------------------
-- Table structure for hy_dingdan
-- ----------------------------
DROP TABLE IF EXISTS `hy_dingdan`;
CREATE TABLE `hy_dingdan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `dingdan` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=303 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_dingdan
-- ----------------------------
INSERT INTO `hy_dingdan` VALUES ('301', '29', '0', '1', '订单号 351478669850  商品id 17  业务员编号 无  订单状态 未支付', '', '', '', '', '', '1478669820', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('299', '35', '19', '1', '订单号 351478667161  商品id 19  业务员编号 无  订单状态 未支付', '', '', '', '', '', '1478667161', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('300', '35', '18', '1', '订单号 351478669830  商品id 18  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478669830', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('302', '32', '26', '1', '订单号 321479127955  商品id 26  业务员编号 无  订单状态 未支付', '', '', '', '', '', '1479127955', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('287', '16', '22', '1', '订单号 161478566599  商品id 22  业务员编号 无  订单状态 已收货', '', '', '', '', '', '1478566599', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('282', '32', '17', '1', '订单号 321478526521  商品id 17  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478526521', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('297', '35', '19', '1', '订单号 351478666954  商品id 19  业务员编号 无  订单状态 已付款', '', '', '', '', '', '1478666954', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('298', '35', '20', '1', '订单号 351478667014  商品id 20  业务员编号 无  订单状态 已收货', '', '', '', '', '', '1478667014', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('288', '16', '17', '1', '订单号 161478576345  商品id 17  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478576345', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('296', '35', '25', '1', '订单号 351478666826  商品id 25  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478666826', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('286', '16', '19', '1', '订单号 161478566386  商品id 19  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478566386', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('294', '16', '25', '1', '订单号 161478662896  商品id 25  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478662896', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('290', '16', '18', '1', '订单号 161478593033  商品id 18  业务员编号 无  订单状态 货到付款 货到付款', '', '', '', '', '', '1478593033', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `hy_dingdan` VALUES ('289', '16', '20', '1', '订单号 161478576607  商品id 20  业务员编号 100002  订单状态 货到付款 货到付款', '', '', '', '', '', '1478576607', '0', '0', '0', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for hy_dingdan_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_dingdan_field`;
CREATE TABLE `hy_dingdan_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `orderid` varchar(255) DEFAULT NULL,
  `ordertime` int(10) NOT NULL DEFAULT '0',
  `orderstate` char(30) DEFAULT NULL,
  `wuliu_com` varchar(255) DEFAULT NULL,
  `wuliu_id` varchar(255) DEFAULT NULL,
  `wuliu_style` char(30) DEFAULT NULL,
  `paytime` int(10) NOT NULL DEFAULT '0',
  `pay_id` varchar(255) DEFAULT NULL,
  `pay_money` varchar(255) DEFAULT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_num` varchar(255) DEFAULT NULL,
  `heji` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `yonghu` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sheng_shi` varchar(255) DEFAULT NULL,
  `xiangxi` varchar(255) DEFAULT NULL,
  `peisong` varchar(255) DEFAULT NULL,
  `yewuyuan_num` varchar(255) DEFAULT NULL,
  `yonghu_beizhu` varchar(300) DEFAULT NULL,
  `order_beizhu` varchar(300) DEFAULT NULL,
  `kouwei` varchar(255) DEFAULT NULL,
  `yonghuid` int(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_dingdan_field
-- ----------------------------
INSERT INTO `hy_dingdan_field` VALUES ('297', '351478666954', '1478666955', '1', null, null, null, '1478666967', '351478666954', '276.00', '19', '9.20', '30', '276.00', '18670653362', '棉花糖', '18670653362', '广东省 深圳市 宝安区', '卓越大厦', '上门提货', '无', '', null, '原味', '35');
INSERT INTO `hy_dingdan_field` VALUES ('298', '351478667014', '1478667014', '2', null, null, null, '0', null, null, '20', '14.80', '20', '296.00', '18670653362', '棉花糖', '18670653362', '广东省 深圳市 宝安区', '卓越大厦', '上门提货', '无', '', null, '还好', '35');
INSERT INTO `hy_dingdan_field` VALUES ('299', '351478667161', '1478667161', '0', null, null, null, '0', null, null, '19', '9.20', '5', '46.00', '18670653362', '棉花糖', '18670653362', '广东省 深圳市 宝安区', '卓越大厦', '上门提货', '无', '', null, '原味', '35');
INSERT INTO `hy_dingdan_field` VALUES ('300', '351478669830', '1478669830', '4', null, null, null, '0', null, null, '18', '558.00', '20', '11160.00', '18670653362', '棉花糖', '18670653362', '广东省 深圳市 宝安区', '卓越大厦', '托运', '无', '', null, '原味', '35');
INSERT INTO `hy_dingdan_field` VALUES ('301', '351478669850', '1478669820', '1', '', '', '1', '0', '', '', '17', '27.00', '30', '810.00', '18670653362', '棉花糖', '18670653362', '广东省 深圳市 宝安区', '卓越大厦', '上门提货', '无', '', '', '原味', '35');
INSERT INTO `hy_dingdan_field` VALUES ('302', '321479127955', '1479127955', '0', null, null, null, '0', null, null, '26', '30.00', '1', '30.00', '15270020024', '规划好', '15270020024', '江西省 南昌市 东湖区', '具有很好', '送货上门', '无', '', null, '原味', '32');
INSERT INTO `hy_dingdan_field` VALUES ('282', '321478526521', '1478526521', '4', null, null, null, '0', null, null, '17', '25.00', '133', '3325.00', '15270020024', '规划好', '15270020024', '江西省 南昌市 东湖区', '具有很好', '上门提货', '无', '', null, '原味', '32');
INSERT INTO `hy_dingdan_field` VALUES ('286', '161478566386', '1478566386', '4', null, null, null, '0', null, null, '19', '9.00', '81', '729.00', '15107735637', '郭德纲', '15107735638', '广东省深圳市宝安区', '宝安沙井1234567', '上门提货', '无', '', null, '原味', '16');
INSERT INTO `hy_dingdan_field` VALUES ('287', '161478566599', '1478566599', '3', null, null, null, '0', null, null, '22', '0.01', '20', '0.20', '15107735637', '郭德纲', '15107735638', '广东省深圳市宝安区', '宝安沙井1234567', '上门提货', '无', '', null, '香辣', '16');
INSERT INTO `hy_dingdan_field` VALUES ('288', '161478576345', '1478576345', '4', null, null, null, '0', null, null, '17', '25.00', '100', '2500.00', '15107735637', '郭德纲', '15107735638', '广东省深圳市宝安区', '宝安沙井1234567', '上门提货', '无', '', null, '原味', '16');
INSERT INTO `hy_dingdan_field` VALUES ('289', '161478576607', '1478576608', '4', null, null, null, '0', null, null, '20', '14.80', '20', '296.00', '15107735637', '郭德纲', '15107735638', '广东省深圳市宝安区', '宝安沙井1234567', '送货上门', '100002', '啧啧啧', null, '还好', '16');
INSERT INTO `hy_dingdan_field` VALUES ('290', '161478593033', '1478593033', '4', null, null, null, '0', null, null, '18', '558.00', '18', '10044.00', '15107735637', '郭德纲', '15107735638', '广东省深圳市宝安区', '宝安沙井1234567', '上门提货', '无', '', null, '很香', '16');
INSERT INTO `hy_dingdan_field` VALUES ('294', '161478662896', '1478662896', '4', null, null, null, '0', null, null, '25', '5.00', '150', '750.00', '15107735637', '郭德纲', '15107735638', '广东省深圳市宝安区', '宝安沙井1234567', '上门提货', '无', '', null, '原味', '16');
INSERT INTO `hy_dingdan_field` VALUES ('296', '351478666826', '1478666826', '4', null, null, null, '0', null, null, '25', '8.00', '10', '80.00', '18670653362', '棉花糖', '18670653362', '广东省 深圳市 宝安区', '卓越大厦', '上门提货', '无', '', null, '香蕉', '35');

-- ----------------------------
-- Table structure for hy_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `hy_evaluate`;
CREATE TABLE `hy_evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `spid` int(11) NOT NULL COMMENT '商品id',
  `xing` int(11) NOT NULL COMMENT '满意度',
  `neirong` text NOT NULL COMMENT '评论内容',
  `picture` varchar(400) NOT NULL COMMENT '评论图片',
  `addtime` int(11) NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_evaluate
-- ----------------------------
INSERT INTO `hy_evaluate` VALUES ('1', '16', '18', '4', '好东西都喜欢', '', '1474600260');
INSERT INTO `hy_evaluate` VALUES ('2', '17', '18', '3', '还不错', '', '1474600460');
INSERT INTO `hy_evaluate` VALUES ('25', '16', '16', '5', '大姐大姐', '\r\n/uploads/2016/10/06/57f63e7ad0a72.PNG|,|', '1475755642');
INSERT INTO `hy_evaluate` VALUES ('31', '16', '22', '4', '羊绒很好', '', '1476065759');
INSERT INTO `hy_evaluate` VALUES ('45', '21', '22', '1', '', '', '1476263599');
INSERT INTO `hy_evaluate` VALUES ('46', '21', '22', '1', 'HK啊了得得得', '', '1476263606');
INSERT INTO `hy_evaluate` VALUES ('32', '16', '19', '5', '穿越很快', '', '1476065760');
INSERT INTO `hy_evaluate` VALUES ('29', '21', '22', '3', '你好', '', '1475919780');
INSERT INTO `hy_evaluate` VALUES ('44', '21', '22', '3', '味道好', '\n/uploads/2016/10/12/57fdfdcc5df49.jpg|-|/uploads/2016/10/12/57fdfdcc5e157.png', '1476263372');
INSERT INTO `hy_evaluate` VALUES ('33', '16', '19', '5', '睡觉睡觉', '', '1476066358');
INSERT INTO `hy_evaluate` VALUES ('38', '16', '20', '4', '点击大家都好', '', '1476068838');
INSERT INTO `hy_evaluate` VALUES ('39', '16', '17', '5', '就回家', '', '1476068838');
INSERT INTO `hy_evaluate` VALUES ('37', '16', '22', '5', '再试试', '', '1476068742');
INSERT INTO `hy_evaluate` VALUES ('43', '21', '22', '5', '食物好', '\n/uploads/2016/10/12/57fdd737dbbb2.jpg', '1476253495');
INSERT INTO `hy_evaluate` VALUES ('40', '16', '20', '4', '事后世界上', '', '1476078107');
INSERT INTO `hy_evaluate` VALUES ('41', '16', '17', '5', '还不错', '', '1476078107');
INSERT INTO `hy_evaluate` VALUES ('42', '16', '22', '4', '很好', '\n/uploads/2016/10/12/57fd99681f7ab.JPG|-|/uploads/2016/10/12/57fd996821fb3.JPG', '1476237672');
INSERT INTO `hy_evaluate` VALUES ('47', '21', '22', '2', 'HK啊了得得得', '', '1476263611');
INSERT INTO `hy_evaluate` VALUES ('48', '21', '22', '3', 'HK啊了得得得', '', '1476263620');
INSERT INTO `hy_evaluate` VALUES ('49', '21', '22', '2', 'HK啊了得得得', '', '1476263625');
INSERT INTO `hy_evaluate` VALUES ('50', '21', '22', '2', '说几句话', '', '1476263637');
INSERT INTO `hy_evaluate` VALUES ('51', '21', '22', '2', '说几句话', '', '1476263646');
INSERT INTO `hy_evaluate` VALUES ('52', '21', '22', '2', '说几句话', '', '1476263660');
INSERT INTO `hy_evaluate` VALUES ('53', '21', '22', '2', '说几句话', '\n/uploads/2016/10/12/57fdff09bb44c.png', '1476263689');
INSERT INTO `hy_evaluate` VALUES ('54', '16', '22', '1', '大概好久姐姐', '', '1476263826');
INSERT INTO `hy_evaluate` VALUES ('55', '16', '22', '1', '大概好久姐姐', '\n/uploads/2016/10/12/57fdffa3dcf9f.JPG', '1476263843');
INSERT INTO `hy_evaluate` VALUES ('56', '16', '22', '4', '呵呵呵', '', '1476264022');
INSERT INTO `hy_evaluate` VALUES ('57', '16', '22', '3', '来来来', '', '1476264075');
INSERT INTO `hy_evaluate` VALUES ('58', '16', '22', '3', '也一样', '', '1476264124');
INSERT INTO `hy_evaluate` VALUES ('59', '16', '22', '3', '也一样', '', '1476264293');
INSERT INTO `hy_evaluate` VALUES ('60', '16', '22', '3', '哦哦哦哦', '', '1476265493');
INSERT INTO `hy_evaluate` VALUES ('61', '16', '22', '4', '他天天', '', '1476266038');
INSERT INTO `hy_evaluate` VALUES ('62', '16', '22', '3', '哦哦哦哦哦大道', '', '1476266095');
INSERT INTO `hy_evaluate` VALUES ('63', '16', '22', '4', '去去去凄凄切切', '', '1476266355');
INSERT INTO `hy_evaluate` VALUES ('64', '16', '17', '1', '吹牛逼呃', '\n/uploads/2016/10/12/57fe0acc6ffb3.jpg', '1476266700');
INSERT INTO `hy_evaluate` VALUES ('65', '16', '22', '4', '非常棒果然非常棒', '', '1476318881');
INSERT INTO `hy_evaluate` VALUES ('66', '21', '16', '1', '季姬击鸡记', '', '1476320428');
INSERT INTO `hy_evaluate` VALUES ('67', '21', '16', '3', '放放风', '\n/uploads/2016/10/13/57ff26a165968.jpg', '1476339361');
INSERT INTO `hy_evaluate` VALUES ('68', '16', '18', '4', '', '', '1476757971');
INSERT INTO `hy_evaluate` VALUES ('69', '35', '20', '2', '测试结果', '\n/uploads/2016/10/19/5807388b3ea47.JPG|-|/uploads/2016/10/19/5807388b4096d.jpg', '1476868235');
INSERT INTO `hy_evaluate` VALUES ('70', '32', '19', '5', '', '', '1477028420');
INSERT INTO `hy_evaluate` VALUES ('71', '35', '22', '4', '美味', '', '1478154401');
INSERT INTO `hy_evaluate` VALUES ('72', '32', '20', '5', '暖图', '', '1478247257');
INSERT INTO `hy_evaluate` VALUES ('73', '16', '19', '5', '哈哈哈刚刚', '\n/uploads/2016/11/04/581c7be69e10b.jpg', '1478261734');
INSERT INTO `hy_evaluate` VALUES ('74', '35', '25', '1', '咖喱鸡块', '', '1478502193');
INSERT INTO `hy_evaluate` VALUES ('75', '16', '22', '5', '估计还会', '\n/uploads/2016/11/08/582122e809e8d.jpg', '1478566632');

-- ----------------------------
-- Table structure for hy_fields
-- ----------------------------
DROP TABLE IF EXISTS `hy_fields`;
CREATE TABLE `hy_fields` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `fieldsname` char(20) NOT NULL,
  `fields` char(20) NOT NULL,
  `fieldstype` char(20) NOT NULL,
  `fieldslong` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selects` text NOT NULL,
  `fieldorder` int(10) NOT NULL DEFAULT '0',
  `issubmit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lists` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fieldshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `types` text NOT NULL,
  `contingency` char(20) NOT NULL,
  `imgw` smallint(6) NOT NULL DEFAULT '0',
  `imgh` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_fields
-- ----------------------------
INSERT INTO `hy_fields` VALUES ('14', 'person', '招聘岗位', 'gangwei', 'varchar', '100', '', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('15', 'person', '学历要求', 'xueli', 'select', '0', '不限=1,小学及以上=2,初中及以上=3,高中(中专)及以上=4,大专及以上=5,本科及以上=6,硕士及以上=7,博士及以上=8', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('16', 'person', '年龄要求', 'nianlin', 'varchar', '50', '', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('17', 'person', '性别要求', 'xingbie', 'select', '0', '不限=不限,男=男,女=女', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('18', 'person', '工作经验', 'jingyan', 'select', '0', '不限=1,一年以上=2,二年以上=3,三年以上=4,五年以上=5,十年以上=6', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('19', 'person', '招聘介绍', 'jieshao', 'text', '0', '', '0', '1', '0', '1', '|22|23|', '', '670', '350');
INSERT INTO `hy_fields` VALUES ('24', 'message', '学历', 'u_xueli', 'varchar', '50', '', '0', '1', '0', '1', '|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('25', 'message', '年龄', 'u_nianlin', 'varchar', '50', '', '0', '1', '0', '1', '|23|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('26', 'product', '包装规格', 'baozhuang_guige', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('27', 'yewuyuan_num', '编号', 'number', 'int', '0', '', '1', '1', '0', '1', '|24|', 'yewuyuan_num', '0', '0');
INSERT INTO `hy_fields` VALUES ('28', 'yewuyuan_num', '姓名', 'name', 'varchar', '255', '', '0', '1', '0', '1', '|24|', 'yewuyuan_num', '300', '80');
INSERT INTO `hy_fields` VALUES ('70', 'dingdan', '发货物流公司', 'wuliu_com', 'varchar', '255', '', '20', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('69', 'dingdan', '订单状态', 'orderstate', 'select', '0', '未支付=0,已支付待发货=1,已发货待确认=2,已完成=3,货到付款=4', '21', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('68', 'dingdan', '下单时间', 'ordertime', 'time', '0', '', '22', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('35', 'collect', '用户id', 'uid', 'int', '0', '', '0', '1', '0', '1', '', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('71', 'dingdan', '物流单号', 'wuliu_id', 'varchar', '255', '', '19', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('67', 'dingdan', '订单号', 'orderid', 'varchar', '255', '', '23', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('36', 'product', '包装种类', 'baozhuang_zhonglei', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('37', 'product', '零食种类', 'lingshi_zhonglei', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('38', 'product', '保质期', 'baozhiqi', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('39', 'product', '是否含糖', 'tang', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('40', 'product', '存储方法', 'cunchu', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('41', 'product', '商品说明图', 'shuoming_pic', 'files', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '640', '1344');
INSERT INTO `hy_fields` VALUES ('42', 'product', '购买量1', 'buy_one', 'int', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('43', 'product', '购买量1以内价格', 'buy_one_price', 'decimal', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('44', 'product', '购买量2', 'buy_two', 'int', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('45', 'product', '购买量2以内价格', 'buy_two_price', 'decimal', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('48', 'product', '库存', 'kucun', 'int', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('47', 'product', '购买量2以上价格', 'buy_three_price', 'decimal', '0', '', '0', '1', '1', '1', '|2|18|19|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('49', 'product', '销量', 'xiaoliang', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('50', 'product', '食品口味1', 'kouwei_1', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('51', 'product', '食品口味2', 'kouwei_2', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('52', 'product', '食品口味3', 'kouwei_3', 'varchar', '255', '', '0', '1', '1', '1', '|2|18|19|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('53', 'tuijianma', '推荐码', 'tuijianma', 'varchar', '255', '', '0', '1', '1', '1', '|26|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('54', 'shouye_pic', '图片1', 'one', 'files', '0', '', '7', '1', '1', '1', '|27|', '', '640', '316');
INSERT INTO `hy_fields` VALUES ('55', 'shouye_pic', '图片2', 'two', 'files', '0', '', '5', '1', '1', '1', '|27|', '', '640', '316');
INSERT INTO `hy_fields` VALUES ('56', 'shouye_pic', '图片3', 'three', 'files', '0', '', '3', '1', '1', '1', '|27|', '', '640', '316');
INSERT INTO `hy_fields` VALUES ('57', 'shouye_pic', '图片4', 'four', 'files', '0', '', '1', '1', '1', '1', '|27|', '', '640', '316');
INSERT INTO `hy_fields` VALUES ('58', 'shouye_pic', '图片1商品id', 'sp_id_one', 'varchar', '255', '', '8', '1', '1', '1', '|27|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('59', 'shouye_pic', '图片2商品id', 'sp_id_two', 'varchar', '255', '', '6', '1', '1', '1', '|27|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('60', 'shouye_pic', '图片3商品id', 'sp_id_three', 'varchar', '255', '', '4', '1', '1', '1', '|27|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('61', 'shouye_pic', '图片4商品id', 'sp_id_four', 'varchar', '255', '', '2', '1', '1', '1', '|27|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('62', 'xiangqing_lunbo', '商品id', 'sp_id', 'varchar', '255', '', '0', '1', '1', '1', '|28|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('63', 'xiangqing_lunbo', '图片1', 't_one', 'files', '0', '', '0', '1', '1', '1', '|28|', '', '569', '288');
INSERT INTO `hy_fields` VALUES ('64', 'xiangqing_lunbo', '图片2', 't_two', 'files', '0', '', '0', '1', '1', '1', '|28|', '', '569', '288');
INSERT INTO `hy_fields` VALUES ('65', 'xiangqing_lunbo', '图片3', 't_three', 'files', '0', '', '0', '1', '1', '1', '|28|', '', '569', '288');
INSERT INTO `hy_fields` VALUES ('66', 'xiangqing_lunbo', '图片4', 't_four', 'files', '0', '', '0', '1', '1', '1', '|28|', '', '569', '288');
INSERT INTO `hy_fields` VALUES ('72', 'dingdan', '物流类型', 'wuliu_style', 'select', '0', '快递=1,EMS=2,平邮=3,上门自提=4', '18', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('73', 'dingdan', '付款时间', 'paytime', 'time', '0', '', '17', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('74', 'dingdan', '支付平台单号', 'pay_id', 'varchar', '255', '', '16', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('75', 'dingdan', '已支付钱数', 'pay_money', 'varchar', '255', '', '15', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('76', 'dingdan', '购买商品', 'goods', 'varchar', '255', '', '14', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('77', 'dingdan', '商品单价', 'goods_price', 'varchar', '255', '', '13', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('78', 'dingdan', '商品数量', 'goods_num', 'varchar', '255', '', '12', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('79', 'dingdan', '合计需支付', 'heji', 'decimal', '0', '', '10', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('80', 'dingdan', '购买用户', 'yonghu', 'varchar', '255', '', '9', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('81', 'dingdan', '收货人姓名', 'name', 'varchar', '255', '', '8', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('82', 'dingdan', '收货人手机', 'phone', 'varchar', '255', '', '7', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('83', 'dingdan', '所在省市', 'sheng_shi', 'varchar', '255', '', '6', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('84', 'dingdan', '详细地址', 'xiangxi', 'varchar', '255', '', '5', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('85', 'dingdan', '用户需要配送方式', 'peisong', 'varchar', '255', '', '4', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('86', 'dingdan', '业务员编号', 'yewuyuan_num', 'varchar', '255', '', '3', '1', '1', '1', '|29|', '', '0', '0');
INSERT INTO `hy_fields` VALUES ('87', 'dingdan', '用户备注', 'yonghu_beizhu', 'varchar', '300', '', '2', '1', '1', '1', '|29|', '', '300', '100');
INSERT INTO `hy_fields` VALUES ('88', 'dingdan', '订单备注', 'order_beizhu', 'varchar', '300', '', '1', '1', '1', '1', '|29|', '', '300', '100');
INSERT INTO `hy_fields` VALUES ('89', 'dingdan', '食品口味', 'kouwei', 'varchar', '255', '', '11', '1', '1', '1', '|29|', '', '300', '80');
INSERT INTO `hy_fields` VALUES ('90', 'dianhua', '电话号码', 'phone_num', 'varchar', '255', '', '0', '1', '1', '1', '|30|', '', '300', '80');

-- ----------------------------
-- Table structure for hy_funs
-- ----------------------------
DROP TABLE IF EXISTS `hy_funs`;
CREATE TABLE `hy_funs` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `funs` char(20) NOT NULL,
  `fundb` char(255) NOT NULL,
  `name` char(20) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `afiles` text NOT NULL,
  `version` char(20) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_funs
-- ----------------------------
INSERT INTO `hy_funs` VALUES ('31', 'ads', 'ads,adstype', '广告', '0', '', '1.0');
INSERT INTO `hy_funs` VALUES ('32', 'comment', 'comment', '评论', '0', '', '1.0');
INSERT INTO `hy_funs` VALUES ('33', 'links', 'links,linkstype', '友情链接', '0', '', '1.0');
INSERT INTO `hy_funs` VALUES ('34', 'member', 'member,member_field,member_group,member_file', '会员', '1', '', '1.0');
INSERT INTO `hy_funs` VALUES ('35', 'special', 'special', '专题', '0', '', '1.0');
INSERT INTO `hy_funs` VALUES ('37', 'pay', 'account,order,payment', '支付系统', '1', '', '1.0');
INSERT INTO `hy_funs` VALUES ('38', 'goods', 'product_attribute,attribute,attribute_type', '购物系统', '1', '', '1.0');

-- ----------------------------
-- Table structure for hy_goodscart
-- ----------------------------
DROP TABLE IF EXISTS `hy_goodscart`;
CREATE TABLE `hy_goodscart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL,
  `kouwei` varchar(50) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `jiage` varchar(11) NOT NULL,
  `num` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `attribute` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` int(3) NOT NULL COMMENT '0 为购物车 1 为订单状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_goodscart
-- ----------------------------
INSERT INTO `hy_goodscart` VALUES ('192', '16', '0', '19', '原味', '1', '9.20', '1', '', '1477037802', '1');
INSERT INTO `hy_goodscart` VALUES ('193', '16', '0', '18', '原味', '1', '598.00', '1', '', '1477038034', '1');
INSERT INTO `hy_goodscart` VALUES ('194', '16', '0', '20', '原味', '1', '16.80', '1', '', '1477038095', '1');
INSERT INTO `hy_goodscart` VALUES ('195', '16', '0', '17', '原味', '2', '29.80', '1', '', '1477038178', '1');
INSERT INTO `hy_goodscart` VALUES ('196', '16', '0', '16', '原味', '1', '128.00', '1', '', '1477038219', '1');
INSERT INTO `hy_goodscart` VALUES ('197', '16', '0', '16', '态辣', '1', '128.00', '1', '', '1477038242', '1');
INSERT INTO `hy_goodscart` VALUES ('198', '16', '0', '16', '态辣', '1', '128.00', '1', '', '1477038259', '1');
INSERT INTO `hy_goodscart` VALUES ('199', '16', '0', '18', '一般', '1', '598.00', '1', '', '1477038322', '1');
INSERT INTO `hy_goodscart` VALUES ('200', '16', '0', '18', '一般', '1', '598.00', '1', '', '1477038345', '1');
INSERT INTO `hy_goodscart` VALUES ('201', '16', '0', '18', '一般', '1', '598.00', '1', '', '1477038418', '1');
INSERT INTO `hy_goodscart` VALUES ('102', '21', '0', '22', '香辣', '1', '135.00', '1', '', '1476002021', '0');
INSERT INTO `hy_goodscart` VALUES ('202', '16', '0', '19', '适中', '1', '9.20', '1', '', '1477038584', '1');
INSERT INTO `hy_goodscart` VALUES ('203', '16', '0', '22', '原味', '1', '0.01', '1', '', '1477038917', '1');
INSERT INTO `hy_goodscart` VALUES ('204', '16', '0', '18', '原味', '1', '598.00', '1', '', '1477038931', '1');
INSERT INTO `hy_goodscart` VALUES ('205', '16', '0', '18', '原味', '1', '598.00', '1', '', '1477039063', '1');
INSERT INTO `hy_goodscart` VALUES ('206', '16', '0', '17', '重点', '1', '29.80', '1', '', '1477039087', '1');
INSERT INTO `hy_goodscart` VALUES ('211', '32', '0', '16', '原味', '1', '128.00', '1', '', '1477452021', '1');
INSERT INTO `hy_goodscart` VALUES ('208', '35', '0', '18', '原味', '2', '598.00', '1', '', '1477041551', '1');
INSERT INTO `hy_goodscart` VALUES ('212', '16', '0', '18', '一般', '1', '598.00', '1', '', '1478137126', '0');
INSERT INTO `hy_goodscart` VALUES ('213', '16', '0', '19', '原味', '7', '9.20', '1', '', '1478137142', '1');
INSERT INTO `hy_goodscart` VALUES ('214', '16', '0', '19', '原味', '3', '9.20', '1', '', '1478145009', '1');
INSERT INTO `hy_goodscart` VALUES ('215', '16', '0', '17', '重点', '3', '29.80', '1', '', '1478145179', '1');
INSERT INTO `hy_goodscart` VALUES ('216', '16', '0', '19', '原味', '2', '9.20', '1', '', '1478149476', '1');
INSERT INTO `hy_goodscart` VALUES ('217', '16', '0', '20', '还好', '1', '16.80', '1', '', '1478150014', '1');
INSERT INTO `hy_goodscart` VALUES ('218', '16', '0', '19', '轻点', '1', '9.20', '1', '', '1478150230', '1');
INSERT INTO `hy_goodscart` VALUES ('127', '21', '0', '16', '原味', '2', '128.00', '1', '', '1476320365', '0');
INSERT INTO `hy_goodscart` VALUES ('123', '21', '0', '22', '香辣', '2', '0.01', '1', '', '1476253353', '0');
INSERT INTO `hy_goodscart` VALUES ('124', '21', '0', '22', '原味', '1', '0.01', '1', '', '1476436779', '0');
INSERT INTO `hy_goodscart` VALUES ('128', '21', '0', '16', '原味', '3', '128.00', '1', '', '1476320373', '1');
INSERT INTO `hy_goodscart` VALUES ('219', '16', '0', '17', '原味', '1', '29.80', '1', '', '1478150866', '1');
INSERT INTO `hy_goodscart` VALUES ('131', '30', '0', '22', '原味', '2', '0.01', '1', '', '1476338733', '0');
INSERT INTO `hy_goodscart` VALUES ('132', '32', '0', '22', '原味', '100', '0.01', '1', '', '1476424088', '1');
INSERT INTO `hy_goodscart` VALUES ('222', '35', '0', '19', '原味', '2', '9.20', '1', '', '1478155024', '1');
INSERT INTO `hy_goodscart` VALUES ('223', '35', '0', '25', '原味', '2', '11.90', '1', '', '1478160686', '1');
INSERT INTO `hy_goodscart` VALUES ('220', '35', '0', '22', '香辣', '2', '0.01', '1', '', '1478154275', '1');
INSERT INTO `hy_goodscart` VALUES ('225', '35', '0', '22', '麻辣', '2', '0.01', '1', '', '1478225433', '1');
INSERT INTO `hy_goodscart` VALUES ('143', '34', '0', '22', '香辣', '3', '0.01', '1', '', '1476755144', '0');
INSERT INTO `hy_goodscart` VALUES ('224', '32', '0', '25', '原味', '13', '8.00', '1', '', '1478219781', '1');
INSERT INTO `hy_goodscart` VALUES ('209', '35', '0', '19', '原味', '1', '9.20', '1', '', '1477041672', '1');
INSERT INTO `hy_goodscart` VALUES ('210', '32', '0', '19', '轻点', '17', '9.20', '1', '', '1477406908', '1');
INSERT INTO `hy_goodscart` VALUES ('148', '32', '0', '20', '原味', '100', '12.80', '1', '', '1476942530', '1');
INSERT INTO `hy_goodscart` VALUES ('149', '1', '0', '19', '轻点', '6', '9.20', '1', '', '1477016931', '0');
INSERT INTO `hy_goodscart` VALUES ('226', '35', '0', '22', '香辣', '1', '0.01', '1', '', '1478225433', '0');
INSERT INTO `hy_goodscart` VALUES ('150', '32', '0', '20', '原味', '199', '12.80', '1', '', '1477024871', '1');
INSERT INTO `hy_goodscart` VALUES ('151', '32', '0', '18', '原味', '155', '508.00', '1', '', '1477025008', '1');
INSERT INTO `hy_goodscart` VALUES ('152', '32', '0', '17', '原味', '11', '27.00', '1', '', '1477025079', '1');
INSERT INTO `hy_goodscart` VALUES ('153', '32', '0', '18', '原味', '100', '558.00', '1', '', '1477025131', '1');
INSERT INTO `hy_goodscart` VALUES ('154', '32', '0', '20', '原味', '1', '16.80', '1', '', '1477025351', '1');
INSERT INTO `hy_goodscart` VALUES ('227', '32', '0', '17', '原味', '1', '29.80', '1', '', '1478237122', '1');
INSERT INTO `hy_goodscart` VALUES ('159', '32', '0', '20', '原味', '100', '12.80', '1', '', '1477029261', '1');
INSERT INTO `hy_goodscart` VALUES ('228', '32', '0', '17', '原味', '60', '25.00', '1', '', '1478237164', '1');
INSERT INTO `hy_goodscart` VALUES ('229', '32', '0', '18', '原味', '1', '598.00', '1', '', '1478237193', '1');
INSERT INTO `hy_goodscart` VALUES ('230', '32', '0', '20', '原味', '1', '16.80', '1', '', '1478247376', '1');
INSERT INTO `hy_goodscart` VALUES ('231', '32', '0', '22', '原味', '1', '0.01', '1', '', '1478247385', '1');
INSERT INTO `hy_goodscart` VALUES ('232', '32', '0', '19', '原味', '1', '9.20', '1', '', '1478247397', '1');
INSERT INTO `hy_goodscart` VALUES ('233', '16', '0', '25', '香蕉', '2', '11.90', '1', '', '1478498257', '1');
INSERT INTO `hy_goodscart` VALUES ('234', '16', '0', '20', '原味', '1', '16.80', '1', '', '1478498982', '1');
INSERT INTO `hy_goodscart` VALUES ('235', '16', '0', '17', '原味', '1', '29.80', '1', '', '1478499335', '1');
INSERT INTO `hy_goodscart` VALUES ('236', '16', '0', '20', '原味', '1', '16.80', '1', '', '1478501719', '1');
INSERT INTO `hy_goodscart` VALUES ('237', '16', '0', '20', '一般', '5', '16.80', '1', '', '1478501826', '1');
INSERT INTO `hy_goodscart` VALUES ('238', '35', '0', '25', '香蕉', '8', '8.00', '1', '', '1478501953', '1');
INSERT INTO `hy_goodscart` VALUES ('239', '35', '0', '19', '重点', '1', '9.20', '1', '', '1478502092', '1');
INSERT INTO `hy_goodscart` VALUES ('240', '35', '0', '19', '重点', '40', '9.20', '1', '', '1478502100', '1');
INSERT INTO `hy_goodscart` VALUES ('241', '32', '0', '25', '原味', '1', '11.90', '1', '', '1478525697', '1');
INSERT INTO `hy_goodscart` VALUES ('242', '32', '0', '25', '原味', '1', '11.90', '1', '', '1478525721', '1');
INSERT INTO `hy_goodscart` VALUES ('243', '32', '0', '19', '原味', '1', '9.20', '1', '', '1478525802', '1');
INSERT INTO `hy_goodscart` VALUES ('244', '32', '0', '19', '原味', '1', '9.20', '1', '', '1478525883', '1');
INSERT INTO `hy_goodscart` VALUES ('245', '32', '0', '18', '原味', '1', '598.00', '1', '', '1478526311', '0');
INSERT INTO `hy_goodscart` VALUES ('246', '32', '0', '25', '原味', '1', '11.90', '1', '', '1478526438', '0');
INSERT INTO `hy_goodscart` VALUES ('247', '32', '0', '17', '原味', '1', '29.80', '1', '', '1478526509', '0');
INSERT INTO `hy_goodscart` VALUES ('248', '32', '0', '17', '原味', '133', '25.00', '1', '', '1478526513', '1');
INSERT INTO `hy_goodscart` VALUES ('249', '35', '0', '22', '香辣', '1', '0.01', '1', '', '1478526763', '1');
INSERT INTO `hy_goodscart` VALUES ('250', '35', '0', '20', '狠辣', '12', '14.80', '1', '', '1478526885', '1');
INSERT INTO `hy_goodscart` VALUES ('251', '32', '0', '25', '原味', '1', '11.90', '1', '', '1478529785', '1');
INSERT INTO `hy_goodscart` VALUES ('252', '32', '0', '25', '原味', '1', '11.90', '1', '', '1478529800', '1');
INSERT INTO `hy_goodscart` VALUES ('253', '32', '0', '25', '原味', '11', '8.00', '1', '', '1478529918', '1');
INSERT INTO `hy_goodscart` VALUES ('254', '32', '0', '25', '原味', '11', '8.00', '1', '', '1478529930', '1');
INSERT INTO `hy_goodscart` VALUES ('255', '32', '0', '25', '原味', '11', '8.00', '1', '', '1478529937', '1');
INSERT INTO `hy_goodscart` VALUES ('256', '32', '0', '25', '原味', '11', '8.00', '1', '', '1478529947', '1');
INSERT INTO `hy_goodscart` VALUES ('257', '32', '0', '25', '原味', '111', '5.00', '1', '', '1478529987', '1');
INSERT INTO `hy_goodscart` VALUES ('258', '32', '0', '19', '原味', '1', '9.20', '1', '', '1478530006', '1');
INSERT INTO `hy_goodscart` VALUES ('259', '32', '0', '19', '原味', '12', '9.20', '1', '', '1478530033', '1');
INSERT INTO `hy_goodscart` VALUES ('260', '32', '0', '19', '原味', '122', '8.00', '1', '', '1478530067', '1');
INSERT INTO `hy_goodscart` VALUES ('261', '32', '0', '19', '原味', '15', '9.20', '1', '', '1478530088', '1');
INSERT INTO `hy_goodscart` VALUES ('262', '35', '0', '22', '原味', '1', '0.01', '1', '', '1478565881', '1');
INSERT INTO `hy_goodscart` VALUES ('263', '35', '0', '25', '香蕉', '1', '11.90', '1', '', '1478566234', '1');
INSERT INTO `hy_goodscart` VALUES ('264', '16', '0', '20', '原味', '1', '16.80', '1', '', '1478566360', '1');
INSERT INTO `hy_goodscart` VALUES ('265', '16', '0', '19', '原味', '81', '9.00', '1', '', '1478566377', '1');
INSERT INTO `hy_goodscart` VALUES ('266', '16', '0', '22', '香辣', '20', '0.01', '1', '', '1478566462', '1');
INSERT INTO `hy_goodscart` VALUES ('267', '35', '0', '25', '香蕉', '1', '11.90', '1', '', '1478568768', '1');
INSERT INTO `hy_goodscart` VALUES ('268', '35', '0', '25', '香蕉', '50', '5.00', '1', '', '1478568798', '1');
INSERT INTO `hy_goodscart` VALUES ('269', '16', '0', '19', '原味', '10', '9.20', '1', '', '1478571910', '1');
INSERT INTO `hy_goodscart` VALUES ('270', '16', '0', '17', '原味', '100', '25.00', '1', '', '1478576297', '1');
INSERT INTO `hy_goodscart` VALUES ('271', '16', '0', '20', '还好', '20', '14.80', '1', '', '1478576577', '1');
INSERT INTO `hy_goodscart` VALUES ('272', '16', '0', '17', '原味', '10', '29.80', '1', '', '1478577333', '1');
INSERT INTO `hy_goodscart` VALUES ('273', '35', '0', '25', '香蕉', '1', '11.90', '1', '', '1478583771', '1');
INSERT INTO `hy_goodscart` VALUES ('274', '16', '0', '19', '轻点', '10', '9.20', '1', '', '1478584051', '1');
INSERT INTO `hy_goodscart` VALUES ('275', '35', '0', '25', '香蕉', '30', '8.00', '1', '', '1478584255', '1');
INSERT INTO `hy_goodscart` VALUES ('276', '16', '0', '22', '麻辣', '1', '0.01', '1', '', '1478584925', '1');
INSERT INTO `hy_goodscart` VALUES ('277', '16', '0', '22', '香辣', '5', '0.01', '1', '', '1478584962', '1');
INSERT INTO `hy_goodscart` VALUES ('278', '16', '0', '22', '香辣', '15', '0.01', '1', '', '1478585133', '1');
INSERT INTO `hy_goodscart` VALUES ('279', '16', '0', '20', '一般', '1', '16.80', '1', '', '1478585179', '1');
INSERT INTO `hy_goodscart` VALUES ('280', '16', '0', '20', '一般', '1', '16.80', '1', '', '1478585285', '1');
INSERT INTO `hy_goodscart` VALUES ('281', '35', '0', '25', '芒果', '1', '11.90', '1', '', '1478586082', '1');
INSERT INTO `hy_goodscart` VALUES ('282', '16', '0', '22', '麻辣', '4', '0.01', '1', '', '1478590788', '1');
INSERT INTO `hy_goodscart` VALUES ('283', '16', '0', '22', '麻辣', '5', '0.01', '1', '', '1478591217', '1');
INSERT INTO `hy_goodscart` VALUES ('284', '16', '0', '20', '一般', '5', '16.80', '1', '', '1478591232', '1');
INSERT INTO `hy_goodscart` VALUES ('285', '35', '0', '25', '香蕉', '1', '11.90', '1', '', '1478591908', '1');
INSERT INTO `hy_goodscart` VALUES ('286', '35', '0', '25', '香蕉', '20', '8.00', '1', '', '1478591952', '1');
INSERT INTO `hy_goodscart` VALUES ('287', '35', '0', '25', '香蕉', '20', '8.00', '1', '', '1478591962', '1');
INSERT INTO `hy_goodscart` VALUES ('288', '35', '0', '25', '香蕉', '20', '8.00', '1', '', '1478591970', '1');
INSERT INTO `hy_goodscart` VALUES ('289', '35', '0', '25', '香蕉', '20', '8.00', '1', '', '1478591978', '1');
INSERT INTO `hy_goodscart` VALUES ('290', '35', '0', '25', '香蕉', '1', '11.90', '1', '', '1478592010', '1');
INSERT INTO `hy_goodscart` VALUES ('291', '35', '0', '20', '一般', '1', '16.80', '1', '', '1478592025', '1');
INSERT INTO `hy_goodscart` VALUES ('292', '35', '0', '18', '原味', '1', '598.00', '1', '', '1478592038', '1');
INSERT INTO `hy_goodscart` VALUES ('293', '35', '0', '17', '重点', '1', '29.80', '1', '', '1478592078', '1');
INSERT INTO `hy_goodscart` VALUES ('294', '35', '0', '17', '重点', '180', '25.00', '1', '', '1478592087', '1');
INSERT INTO `hy_goodscart` VALUES ('295', '35', '0', '16', '很辣', '1', '128.00', '1', '', '1478592106', '1');
INSERT INTO `hy_goodscart` VALUES ('296', '16', '0', '25', '香蕉', '1', '11.90', '1', '', '1478592977', '1');
INSERT INTO `hy_goodscart` VALUES ('297', '16', '0', '18', '很香', '18', '558.00', '1', '', '1478593011', '1');
INSERT INTO `hy_goodscart` VALUES ('298', '16', '0', '25', '香蕉', '10', '8.00', '1', '', '1478593359', '1');
INSERT INTO `hy_goodscart` VALUES ('299', '16', '0', '25', '香蕉', '10', '8.00', '1', '', '1478593490', '1');
INSERT INTO `hy_goodscart` VALUES ('300', '16', '0', '25', '香蕉', '10', '8.00', '1', '', '1478593592', '1');
INSERT INTO `hy_goodscart` VALUES ('301', '16', '0', '25', '香蕉', '10', '8.00', '1', '', '1478593683', '1');
INSERT INTO `hy_goodscart` VALUES ('302', '35', '0', '25', '香蕉', '1', '11.90', '1', '', '1478601370', '1');
INSERT INTO `hy_goodscart` VALUES ('303', '16', '0', '19', '轻点', '4', '9.20', '1', '', '1478659254', '1');
INSERT INTO `hy_goodscart` VALUES ('304', '16', '0', '20', '原味', '10', '16.80', '1', '', '1478659267', '1');
INSERT INTO `hy_goodscart` VALUES ('305', '16', '0', '20', '原味', '1', '16.80', '1', '', '1478659306', '1');
INSERT INTO `hy_goodscart` VALUES ('306', '16', '0', '20', '原味', '10', '16.80', '1', '', '1478659344', '1');
INSERT INTO `hy_goodscart` VALUES ('307', '16', '0', '20', '原味', '11', '14.80', '1', '', '1478659790', '1');
INSERT INTO `hy_goodscart` VALUES ('308', '16', '0', '20', '原味', '0', '16.80', '1', '', '1478659896', '1');
INSERT INTO `hy_goodscart` VALUES ('309', '16', '0', '20', '原味', '120', '12.80', '1', '', '1478661968', '1');
INSERT INTO `hy_goodscart` VALUES ('310', '16', '0', '19', '原味', '101', '8.00', '1', '', '1478662286', '0');
INSERT INTO `hy_goodscart` VALUES ('311', '35', '0', '25', '原味', '10', '8.00', '1', '', '1478662669', '1');
INSERT INTO `hy_goodscart` VALUES ('312', '35', '0', '22', '香辣', '30', '0.01', '1', '', '1478662744', '1');
INSERT INTO `hy_goodscart` VALUES ('313', '35', '0', '22', '香辣', '30', '0.01', '1', '', '1478662854', '1');
INSERT INTO `hy_goodscart` VALUES ('314', '16', '0', '25', '原味', '150', '5.00', '1', '', '1478662894', '1');
INSERT INTO `hy_goodscart` VALUES ('315', '35', '0', '22', '原味', '10', '0.01', '1', '', '1478662897', '1');
INSERT INTO `hy_goodscart` VALUES ('316', '16', '0', '25', '原味', '7', '8.00', '1', '', '1478663959', '0');
INSERT INTO `hy_goodscart` VALUES ('317', '35', '0', '25', '原味', '10', '8.00', '1', '', '1478666822', '1');
INSERT INTO `hy_goodscart` VALUES ('318', '35', '0', '19', '原味', '30', '9.20', '1', '', '1478666951', '1');
INSERT INTO `hy_goodscart` VALUES ('319', '35', '0', '20', '一般', '20', '14.80', '1', '', '1478667011', '1');
INSERT INTO `hy_goodscart` VALUES ('320', '35', '0', '25', '原味', '0', '11.90', '1', '', '1478667051', '1');
INSERT INTO `hy_goodscart` VALUES ('321', '35', '0', '25', '原味', '0', '11.90', '1', '', '1478667062', '1');
INSERT INTO `hy_goodscart` VALUES ('322', '35', '0', '25', '原味', '20', '8.00', '1', '', '1478667072', '1');
INSERT INTO `hy_goodscart` VALUES ('323', '35', '0', '19', '原味', '5', '9.20', '1', '', '1478667158', '1');
INSERT INTO `hy_goodscart` VALUES ('324', '35', '0', '18', '原味', '20', '558.00', '1', '', '1478669803', '1');
INSERT INTO `hy_goodscart` VALUES ('325', '35', '0', '17', '原味', '30', '27.00', '1', '', '1478669848', '1');
INSERT INTO `hy_goodscart` VALUES ('326', '32', '0', '26', '原味', '4', '30.00', '1', '', '1479127884', '1');
INSERT INTO `hy_goodscart` VALUES ('327', '32', '0', '26', '原味', '1', '30.00', '1', '', '1479127947', '1');
INSERT INTO `hy_goodscart` VALUES ('328', '37', '0', '22', '麻辣', '5', '0.01', '1', '', '1479461447', '0');
INSERT INTO `hy_goodscart` VALUES ('329', '37', '0', '18', '香点', '4', '598.00', '1', '', '1479461481', '0');
INSERT INTO `hy_goodscart` VALUES ('330', '37', '0', '27', '巧克力味', '3', '3.20', '1', '', '1479461679', '0');

-- ----------------------------
-- Table structure for hy_labelcus
-- ----------------------------
DROP TABLE IF EXISTS `hy_labelcus`;
CREATE TABLE `hy_labelcus` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `body` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_labelcus
-- ----------------------------

-- ----------------------------
-- Table structure for hy_links
-- ----------------------------
DROP TABLE IF EXISTS `hy_links`;
CREATE TABLE `hy_links` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `taid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL,
  `image` char(200) NOT NULL,
  `gourl` char(200) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_links
-- ----------------------------
INSERT INTO `hy_links` VALUES ('1', '1', '0', 'DOYO建站', '', 'http://wdoyo.com', '1');
INSERT INTO `hy_links` VALUES ('2', '1', '0', '新浪', '', 'http://www.sina.com.cn', '1');

-- ----------------------------
-- Table structure for hy_linkstype
-- ----------------------------
DROP TABLE IF EXISTS `hy_linkstype`;
CREATE TABLE `hy_linkstype` (
  `taid` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  PRIMARY KEY (`taid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_linkstype
-- ----------------------------
INSERT INTO `hy_linkstype` VALUES ('1', '门户导航');

-- ----------------------------
-- Table structure for hy_member
-- ----------------------------
DROP TABLE IF EXISTS `hy_member`;
CREATE TABLE `hy_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL,
  `pass` char(32) NOT NULL,
  `email` char(100) NOT NULL,
  `gid` smallint(5) NOT NULL DEFAULT '1',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `token` char(35) NOT NULL,
  `tokentime` int(11) NOT NULL DEFAULT '0',
  `morendizhi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_member
-- ----------------------------
INSERT INTO `hy_member` VALUES ('16', '15107735637', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1474338237', '', '0', '1');
INSERT INTO `hy_member` VALUES ('17', '15107735638', '2c17fab1166779a7c206f2f764423d52', '517', '2', '0.00', '1478836435', '', '0', '0');
INSERT INTO `hy_member` VALUES ('18', '15222056373', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1474507310', '', '0', '0');
INSERT INTO `hy_member` VALUES ('19', '15107735666', 'f379eaf3c831b04de153469d1bec345e', '', '1', '0.00', '1474886203', '', '0', '0');
INSERT INTO `hy_member` VALUES ('20', '15107735600', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1475915664', '', '0', '0');
INSERT INTO `hy_member` VALUES ('21', '18612345678', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1475918938', '', '0', '11');
INSERT INTO `hy_member` VALUES ('34', '15107735566', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1476755108', '', '0', '0');
INSERT INTO `hy_member` VALUES ('35', '18670653362', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1476865499', '', '0', '22');
INSERT INTO `hy_member` VALUES ('36', '15768251556', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1476867190', '', '0', '0');
INSERT INTO `hy_member` VALUES ('37', '13263919118', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1479461401', '', '0', '0');
INSERT INTO `hy_member` VALUES ('30', '18512345678', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1476338651', '', '0', '12');
INSERT INTO `hy_member` VALUES ('31', '15107736666', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0.00', '1476347323', '', '0', '0');
INSERT INTO `hy_member` VALUES ('32', '15270020024', '4874f9dd183afe7673a7bc65684f17be', '', '1', '0.00', '1476424006', '', '0', '18');
INSERT INTO `hy_member` VALUES ('33', '13807089343', '25f9e794323b453885f5181f1b624d0b', '', '1', '0.00', '1476521468', '', '0', '0');

-- ----------------------------
-- Table structure for hy_member_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_member_field`;
CREATE TABLE `hy_member_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `touxiang` varchar(200) NOT NULL,
  `nicheng` varchar(20) NOT NULL,
  `xingbie` varchar(10) NOT NULL,
  `morendizhi` int(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_member_field
-- ----------------------------
INSERT INTO `hy_member_field` VALUES ('16', '\n/uploads/2016/10/12/57fdcb13efa86.JPG', '老郭子', '男', '1');
INSERT INTO `hy_member_field` VALUES ('17', '/uploads/2016/09/30/57edd44127f00.PNG', '郭大侠', '女', '0');
INSERT INTO `hy_member_field` VALUES ('21', '\n/uploads/2016/10/13/57fedc0210b83.jpg', '棉花糖', '女', '0');
INSERT INTO `hy_member_field` VALUES ('34', '', '15107735566', '', '0');
INSERT INTO `hy_member_field` VALUES ('30', '\n/uploads/2016/10/13/57ff25671b7f1.JPG', 'hdhd', '女', '0');
INSERT INTO `hy_member_field` VALUES ('31', '', '帅哥', '男', '0');
INSERT INTO `hy_member_field` VALUES ('32', '', '15270020024', '', '0');
INSERT INTO `hy_member_field` VALUES ('33', '', '13807089343', '', '0');
INSERT INTO `hy_member_field` VALUES ('35', '\n/uploads/2016/11/03/581af14e4e726.jpg', '棉花糖', '女', '0');
INSERT INTO `hy_member_field` VALUES ('36', '', '15768251556', '', '0');
INSERT INTO `hy_member_field` VALUES ('37', '', '13263919118', '', '0');

-- ----------------------------
-- Table structure for hy_member_file
-- ----------------------------
DROP TABLE IF EXISTS `hy_member_file`;
CREATE TABLE `hy_member_file` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(30) NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `size` int(11) unsigned NOT NULL DEFAULT '0',
  `fields` char(20) NOT NULL,
  `hand` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `molds` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`uid`,`url`,`size`,`fields`,`hand`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_member_file
-- ----------------------------
INSERT INTO `hy_member_file` VALUES ('73', '13', '', 'uploads/2012/12/131508249443.jpg', '16247', 'sdfg', '0', '16', 'message');
INSERT INTO `hy_member_file` VALUES ('57', '0', '192.168.1.8', 'uploads/2012/12/061735275121.jpg', '13824', 'sdfg', '1735256009', '0', '');
INSERT INTO `hy_member_file` VALUES ('55', '0', '192.168.1.8', 'uploads/2012/12/041558051712.jpg', '13824', 'sdfg', '0', '13', 'message');
INSERT INTO `hy_member_file` VALUES ('52', '0', '192.168.1.8', 'uploads/2012/12/041553486594.jpg', '13824', 'sdfg', '0', '12', 'message');
INSERT INTO `hy_member_file` VALUES ('51', '0', '192.168.1.8', 'uploads/2012/12/031244352468.jpg', '13824', 'asdf', '0', '11', 'message');

-- ----------------------------
-- Table structure for hy_member_group
-- ----------------------------
DROP TABLE IF EXISTS `hy_member_group`;
CREATE TABLE `hy_member_group` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sys` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(20) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `submit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `filetype` char(255) NOT NULL,
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileallsize` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_member_group
-- ----------------------------
INSERT INTO `hy_member_group` VALUES ('1', '1', '游客', '0', '0', '0', 'jpg,gif,jpeg,png', '0', '0', '0', '0.00');
INSERT INTO `hy_member_group` VALUES ('2', '1', '普通会员', '1', '0', '1', 'jpg,gif,jpeg,png', '200', '5000', '0', '0.00');

-- ----------------------------
-- Table structure for hy_message
-- ----------------------------
DROP TABLE IF EXISTS `hy_message`;
CREATE TABLE `hy_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fmolds` char(20) NOT NULL,
  `faid` mediumint(8) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `retime` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `user` char(30) NOT NULL,
  `body` text NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `article` (`isshow`,`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_message
-- ----------------------------

-- ----------------------------
-- Table structure for hy_message_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_message_field`;
CREATE TABLE `hy_message_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `u_xueli` varchar(50) DEFAULT NULL,
  `u_nianlin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_message_field
-- ----------------------------

-- ----------------------------
-- Table structure for hy_molds
-- ----------------------------
DROP TABLE IF EXISTS `hy_molds`;
CREATE TABLE `hy_molds` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `molddb` char(255) NOT NULL,
  `moldname` char(20) NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listimg` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `t_content` char(50) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `version` char(20) NOT NULL,
  `sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_molds
-- ----------------------------
INSERT INTO `hy_molds` VALUES ('1', 'article', '', '文章', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '0', '1.0', '1', 'N;');
INSERT INTO `hy_molds` VALUES ('6', 'message', '', '表单(留言)', '0', 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', '0', '1.0', '1', 'N;');
INSERT INTO `hy_molds` VALUES ('2', 'product', 'product', '商品', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '1', '1.0', '1', 'a:2:{s:7:\"photo_w\";a:3:{i:0;s:15:\"图集缩略宽\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略宽，0表示继承系统设置\";}s:7:\"photo_h\";a:3:{i:0;s:15:\"图集缩略高\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略高，0表示继承系统设置\";}}');
INSERT INTO `hy_molds` VALUES ('18', 'person', '', '人才招聘', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '0', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('21', 'yewuyuan_num', '', '业务员编号', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('28', 'dingdan', '', '订单管理', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('23', 'collect', '', '商品收藏表', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('24', 'tuijianma', '', '推荐码', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('25', 'shouye_pic', '', '首页轮播图', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('26', 'xiangqing_lunbo', '', '商品详情轮播图', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');
INSERT INTO `hy_molds` VALUES ('29', 'dianhua', '', '商品详情电话号码', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');

-- ----------------------------
-- Table structure for hy_order
-- ----------------------------
DROP TABLE IF EXISTS `hy_order`;
CREATE TABLE `hy_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `orderid` char(25) NOT NULL,
  `sid` int(11) NOT NULL,
  `isshow` int(11) NOT NULL,
  `favorable` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `payment` char(50) NOT NULL,
  `paymentno` char(100) NOT NULL,
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `actualpay` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `info` text NOT NULL,
  `unote` text NOT NULL,
  `rnote` text NOT NULL,
  `anote` text NOT NULL,
  `goods` text NOT NULL,
  `logistics` char(100) NOT NULL,
  `virtual` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendgoods` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_order
-- ----------------------------
INSERT INTO `hy_order` VALUES ('1', '18', '121654618', '18', '1', '1.11', '0', '1475020800', '', '', '0', '0.00', 'a:8:{s:4:\"name\";s:9:\"郭德纲\";s:5:\"phone\";s:11:\"15107735638\";s:3:\"tel\";s:10:\"022-110110\";s:5:\"email\";s:13:\"123456@qq.com\";s:7:\"zipcode\";s:6:\"541800\";s:8:\"address1\";s:6:\"广东\";s:8:\"address2\";s:6:\"深圳\";s:7:\"address\";s:39:\"宝安区沙井街道卓越时代大厦\";}', '用户备注信息', '订单通知内容', '订单备注信息', '', '', '0', 'N;');
INSERT INTO `hy_order` VALUES ('2', '16', '3553113', '22', '1', '1.10', '1', '1475030800', 'admin', '', '1475052161', '0.00', 'a:8:{s:4:\"name\";s:9:\"郭麒麟\";s:5:\"phone\";s:11:\"15107735666\";s:3:\"tel\";s:10:\"022-110110\";s:5:\"email\";s:15:\"12345612@qq.com\";s:7:\"zipcode\";s:6:\"541800\";s:8:\"address1\";s:6:\"北京\";s:8:\"address2\";s:6:\"北京\";s:7:\"address\";s:30:\"朝阳区朝阳街道朝阳楼\";}', '用户备注信息', '订单通知内容', '订单备注信息', '', '', '0', 'N;');
INSERT INTO `hy_order` VALUES ('3', '16', '333333', '23', '1', '3.30', '9', '1475010780', 'admin', '', '0', '0.00', 'a:8:{s:4:\"name\";s:9:\"老郭子\";s:5:\"phone\";s:11:\"13366668888\";s:3:\"tel\";s:12:\"022-11011000\";s:5:\"email\";s:15:\"33333333@qq.com\";s:7:\"zipcode\";s:8:\"33333333\";s:8:\"address1\";s:6:\"广东\";s:8:\"address2\";s:6:\"广州\";s:7:\"address\";s:21:\"白云机场路123号\";}', '用户备注信息', '订单通知讯息', '订单备注信息', '', '', '0', 'a:3:{s:14:\"logistics_name\";s:6:\"圆通\";s:10:\"invoice_no\";s:9:\"123456789\";s:14:\"transport_type\";s:7:\"EXPRESS\";}');
INSERT INTO `hy_order` VALUES ('101', '16', '161475488046', '0', '1', '0.00', '2', '1475488020', '', '156986454646', '1475488120', '123.00', 'a:8:{s:4:\"name\";s:6:\"王哥\";s:5:\"phone\";s:0:\"\";s:3:\"tel\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:8:\"address1\";s:0:\"\";s:8:\"address2\";s:0:\"\";s:7:\"address\";s:0:\"\";}', '快点发货', '', '', '辣条', '物流', '123', 'N;');

-- ----------------------------
-- Table structure for hy_payment
-- ----------------------------
DROP TABLE IF EXISTS `hy_payment`;
CREATE TABLE `hy_payment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pay` char(30) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL,
  `body` text NOT NULL,
  `key` text NOT NULL,
  `keyv` text NOT NULL,
  `orders` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_payment
-- ----------------------------
INSERT INTO `hy_payment` VALUES ('3', 'alipay', '0', '支付宝', '国内最大的支付平台，支持多家银行在线支付。<a href=\"https://b.alipay.com\" target=\"_blank\">需要签约支付宝商家服务，点此进入</a>，强烈建议使用“即时到帐”接口，若无法申请“即时到帐”接口，可选择申请财付通“即时到帐”接口，相比支付宝容易审核。', 'a:4:{s:7:\"service\";s:12:\"接口类型\";s:4:\"user\";s:21:\"签约支付宝账号\";s:3:\"pid\";s:18:\"合作者身份PID\";s:3:\"key\";s:18:\"安全校验码Key\";}', 'a:4:{s:7:\"service\";s:1:\"1\";s:4:\"user\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '99');
INSERT INTO `hy_payment` VALUES ('4', 'tenpay', '0', '财付通', '腾讯旗下支付平台，支持多家银行在线支付。<a href=\"https://www.tenpay.com/v2/mch/mch_intro.shtml\" target=\"_blank\">签约财付通商家服务，点此进入</a>，强烈建议使用“即时到帐”接口。', 'a:3:{s:7:\"service\";s:12:\"接口类型\";s:3:\"pid\";s:9:\"商户号\";s:3:\"key\";s:6:\"密钥\";}', 'a:3:{s:7:\"service\";s:1:\"1\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '98');
INSERT INTO `hy_payment` VALUES ('2', 'cashbalance', '1', '余额支付', '使用会员账户余额支付。', '', 'N;', '1');
INSERT INTO `hy_payment` VALUES ('1', 'offline', '1', '线下付款', '线下收款，收款后需手工在后台修改订单状态。', '', 'N;', '0');

-- ----------------------------
-- Table structure for hy_person
-- ----------------------------
DROP TABLE IF EXISTS `hy_person`;
CREATE TABLE `hy_person` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `person` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_person
-- ----------------------------
INSERT INTO `hy_person` VALUES ('1', '22', '0', '1', '招聘网站前台美工三名', '', '', '', '', '', '1354510740', '36', '0', '0', '0', '', '', 'admin', '0');

-- ----------------------------
-- Table structure for hy_person_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_person_field`;
CREATE TABLE `hy_person_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gangwei` varchar(100) DEFAULT NULL,
  `xueli` char(30) DEFAULT NULL,
  `nianlin` varchar(50) DEFAULT NULL,
  `xingbie` char(30) DEFAULT NULL,
  `jingyan` char(30) DEFAULT NULL,
  `jieshao` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_person_field
-- ----------------------------
INSERT INTO `hy_person_field` VALUES ('1', '网站美工', '1', '18岁以上', '不限', '2', '<p>因发展需要，现急聘网站前台美工三名，要求如下：</p><p>1、精通至少一款图片设计软件<br />2、精通HTML、js、flash制作设计。<br />3、有良好的色彩搭配理念，能够准确把握用户、客户需求。<br />4、熟悉团队合作流程、有较强的解决问题能力。</p>');

-- ----------------------------
-- Table structure for hy_product
-- ----------------------------
DROP TABLE IF EXISTS `hy_product`;
CREATE TABLE `hy_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `record` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `litpic` char(255) NOT NULL,
  `photo` text NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `virtual` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logistics` text NOT NULL,
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `product` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_product
-- ----------------------------
INSERT INTO `hy_product` VALUES ('17', '19', '0', '1', '豆豆真逗 真是逗', '', '', '', '', '', '1355551140', '0', '10', '/uploads/2016/09/291154534986.jpg', '', '0', '29.80', '1', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `hy_product` VALUES ('16', '18', '0', '1', '核桃真核', '', '', '', '', '', '1355550240', '0', '20', '/uploads/2016/09/291155216879.jpg', '', '0', '128.00', '0', 'a:2:{s:6:\"快递\";s:2:\"10\";s:3:\"EMS\";s:2:\"20\";}', '0', '0.00', '', '冬的厚重材质自然需要大气沉稳的色彩与之相得益彰，高贵神秘的熟果色便于这黑白灰之中跳脱出来。', 'admin', '0');
INSERT INTO `hy_product` VALUES ('25', '2', '0', '1', '沙巴哇综合蔬菜水果干', '', '', '', '', '', '1478155440', '0', '0', '/uploads/2016/11/031451078820.jpg', '', '0', '11.90', '0', '0', '0', '0.00', '', '', 'hyadmin', '0');
INSERT INTO `hy_product` VALUES ('20', '2', '0', '1', '吃过才知道好', '', '', '', '', '', '1474504380', '0', '0', '/uploads/2016/10/121625472298.jpg', '', '0', '16.80', '0', '0', '0', '0.00', '', '这是简介的东西', 'hyadmin', '0');
INSERT INTO `hy_product` VALUES ('18', '18', '0', '1', '新鲜核桃 营养价值高', '', '', '', '', '', '1355559240', '0', '72', '/uploads/2016/09/291154212516.jpg', '', '0', '598.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `hy_product` VALUES ('19', '19', '0', '1', '绝对美食', '', '', '', '', '', '1355559360', '0', '15', '/uploads/2016/10/121630361050.jpg', '', '0', '9.20', '1', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `hy_product` VALUES ('22', '18', '0', '1', '非常棒', '', '', '', '', '', '1474600200', '0', '0', '/uploads/2016/10/121629579644.jpg', '', '0', '0.01', '0', '0', '0', '0.00', '', '会根据客户感觉', 'hyadmin', '0');
INSERT INTO `hy_product` VALUES ('26', '2', '0', '1', '士力架', '', '', '', '', '', '1479095760', '0', '0', '/uploads/2016/11/141158267069.jpg', '', '0', '30.00', '0', '0', '0', '0.00', '', '', 'hyadmin', '0');
INSERT INTO `hy_product` VALUES ('27', '2', '0', '1', '美式爆米花', '', '', '', '', '', '1479101760', '0', '0', '/uploads/2016/11/141340422707.jpg', '', '0', '3.20', '0', '0', '0', '0.00', '', '', 'hyadmin', '0');

-- ----------------------------
-- Table structure for hy_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `hy_product_attribute`;
CREATE TABLE `hy_product_attribute` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  KEY `product_attribute` (`aid`,`tid`,`sid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_product_attribute
-- ----------------------------
INSERT INTO `hy_product_attribute` VALUES ('16', '3', '6', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('16', '2', '5', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('16', '2', '4', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('18', '3', '8', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('18', '3', '7', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('18', '3', '6', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('16', '3', '8', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('16', '3', '7', '0.00');
INSERT INTO `hy_product_attribute` VALUES ('18', '2', '5', '-5.00');
INSERT INTO `hy_product_attribute` VALUES ('18', '2', '4', '20.00');

-- ----------------------------
-- Table structure for hy_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `hy_product_discount`;
CREATE TABLE `hy_product_discount` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_product_discount
-- ----------------------------
INSERT INTO `hy_product_discount` VALUES ('20', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('21', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('22', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('23', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('24', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('19', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('18', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('17', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('16', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('25', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('26', '2', '0', '0.00');
INSERT INTO `hy_product_discount` VALUES ('27', '2', '0', '0.00');

-- ----------------------------
-- Table structure for hy_product_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_product_field`;
CREATE TABLE `hy_product_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  `baozhuang_guige` varchar(255) NOT NULL,
  `baozhuang_zhonglei` varchar(255) DEFAULT NULL,
  `lingshi_zhonglei` varchar(255) DEFAULT NULL,
  `baozhiqi` varchar(255) DEFAULT NULL,
  `tang` varchar(255) DEFAULT NULL,
  `cunchu` varchar(255) DEFAULT NULL,
  `shuoming_pic` char(255) DEFAULT NULL,
  `buy_one` int(10) NOT NULL DEFAULT '0',
  `buy_one_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `buy_two` int(10) NOT NULL DEFAULT '0',
  `buy_two_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `buy_three_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `kucun` int(10) NOT NULL DEFAULT '0',
  `xiaoliang` varchar(255) DEFAULT NULL,
  `kouwei_1` varchar(255) DEFAULT NULL,
  `kouwei_2` varchar(255) DEFAULT NULL,
  `kouwei_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_product_field
-- ----------------------------
INSERT INTO `hy_product_field` VALUES ('17', '<strong>1.充值方式</strong>:<br />\r\n点击购买，在线支付，支付成功后系统将自动发送充值卡号密码到您的订单信息中<br />\r\n收到卡号密码后请在http://upay.10010.com/web/Recharge/rechargeInit输入手机号及卡密码进行充值<br />\r\n<br />\r\n<strong>2:充值查询</strong>:<br />\r\n充值成功后，会收到联通充值短信通知，如未收到短信，可在联通网上营业厅查询余额<br />', '共和国', '哭', '大概', '法国队', '共和国', '个', '/uploads/2016/10/121652397028.jpg', '10', '29.80', '50', '27.00', '25.00', '1234', '2434', '猛点', '重点', '轻点');
INSERT INTO `hy_product_field` VALUES ('16', '不同于夏季的轻薄和飘逸<br />\r\n冬的厚重材质自然需要大气沉稳的色彩与之相得益彰<br />\r\n高贵神秘的熟果色便于这黑白灰之中跳脱出来<br />\r\n让人眼前为之一亮<br />\r\n这款羊绒衫很好运用到了酒红和暖卡其色<br />\r\n基本的轮廓加以口袋和袖口的设计小心思，撞色设计是亮点<br />\r\n即好搭配又不平庸<br />\r\n中长的衣长很好的修饰了身体曲线<br />\r\n无懈可击的款式<br />\r\n大加工厂生产的品质保障，<br />\r\n羊绒的材质真实是未禾的最基本要求，<br />\r\n经过国家认可的成分检测报告（假一赔一）<br />\r\n无需犹豫<br />\r\n肯定是上佳的造型必备单品，羊绒材质非常亲肤，建议亲贴身穿，您穿过羊绒就不会喜欢其他的材质哦！<br />', '法规及', '市', '还没看', '发过火', '好看', '色色', '/uploads/2016/10/121652585217.jpg', '10', '128.00', '100', '118.00', '108.00', '233', '2432', '辣点', '很辣', '态辣');
INSERT INTO `hy_product_field` VALUES ('18', '福建省索力鞋业有限公司(福建省盛辉鞋材有限公司)创办于1995年，总建筑面积30000平方米，引进国内外先进的机台设备及生产流水线，系一家专业生产和开发EVA造粒、EVA、TPR、PU等鞋底，EVA组合拖鞋、沙滩凉鞋的外商独资企业。公司拥有一支高素质的员工队伍,员工2000多人。长期以来坚持拖凉鞋设计、生产和服务，推动企业不断发展与壮大。公司严格执行ISO9001：2000质量管理体系，同时根据市场需求与国际流行趋势不断创新，向行业提供规格齐全，品质优良，款式新颖的精品，赢得了多家中国著名企业的信赖与赞语，并先后荣获“福建省著名商标”、 “福建省名牌产品”、 “泉州市政府创名牌先进企业”、“泉州市文明单位”“中国驰名商标”等称号，并通过了“ISO9001质量管理体系认证”。。<br />\r\n公司本着“品质、创新、服务、人才”的企业精神，立足国内，面向世界，积极塑造良好的品牌形象，力争为行业树立典范。公司愿以更优质的服务，优质的产品、更高的要求与国内外鞋业界通力合作，共创双赢。<br />', '丹甫股份', '换句话', '二', '很反感', '韩国', '结婚', '/uploads/2016/10/121652208362.jpg', '10', '598.00', '100', '558.00', '508.00', '5665', '13245', '香点', '很香', '一般');
INSERT INTO `hy_product_field` VALUES ('19', '<p>\r\n	【商品介绍】 本商品为手机充值卡充CF点充值方式，方便快捷。无需联系24小时都能购买！全天侯系统自动<span>发货</span>。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n【使用方法】 点击购买，在线支付，支付成功后系统将自动发送充值卡号密码到您的订单信息中<br />\r\n收到卡号密码后请在<a href=\"http://cf.qq.com/comm-htdocs/pay/?t=cf#6\">http://cf.qq.com/comm-htdocs/pay/?t=cf#6</a>输入手机号及卡密码进行充值<br />\r\n<br />\r\n【到账查询】 请登陆相关游戏官方网站查询“充值记录”。如有异议请提供未收到充值的有效凭证（官方网站充值记录截图等）并及时联系卖家，帮助提交核实。<br />\r\n<div>\r\n	<br />\r\n</div>\r\n<br />', '的服饰公司', '发给', '发给', '结婚', '就看见', '韩国', '/uploads/2016/10/121651599199.jpg', '50', '9.20', '100', '9.00', '8.00', '11223', '4324', '重点', '轻点', '适中');
INSERT INTO `hy_product_field` VALUES ('20', '这是介绍的东西', '分隔符', '大厦', '从vbn', '发给', '法国恢复', '分隔符', '/uploads/2016/10/121651369156.jpg', '10', '16.80', '50', '14.80', '12.80', '3322', '4524', '狠辣', '一般', '还好');
INSERT INTO `hy_product_field` VALUES ('21', '三法拉克是发生', '电饭锅', '风格大方', '该好好干', '法国队', '共和国', '通过引入', '../public/img/12.jpg', '5', '999.00', '15', '888.00', '777.00', '13213', '342342', '清新', '重口', '一般');
INSERT INTO `hy_product_field` VALUES ('22', '发给好你个腐女', '多发点', '更多更多', '法国风格', '100天', '的风格十分', '分隔符', '/uploads/2016/10/121651202522.jpg', '5', '0.01', '10', '0.01', '0.01', '1234', '243434', '原味', '香辣', '麻辣');
INSERT INTO `hy_product_field` VALUES ('23', '付电话费的活动符合', '100g/袋', '袋装', '衣服', '100年', '无糖', '随便', '../public/img/12.jpg', '19', '256.00', '100', '250.00', '200.00', '10012', '4534', '原味', '香辣', '麻辣');
INSERT INTO `hy_product_field` VALUES ('24', '辣条很好吃', '158g/袋', '袋装', '辣条', '半年', '无糖', '置于阴凉干燥处', '../public/img/10.jpg', '9', '25.00', '3999', '20.00', '15.00', '1000', '13545', '原味', '香辣', '麻辣');
INSERT INTO `hy_product_field` VALUES ('25', '<br />', '100g/袋', '原味', '多种果干尝鲜', '6个月', '否', '宜储存于干燥阴凉处', '/uploads/2016/11/031503531462.png', '5', '11.90', '30', '8.00', '5.00', '100', '50', '原味', '香蕉', '芒果');
INSERT INTO `hy_product_field` VALUES ('26', '', '500g（20gx23，送40g）', '', '', '10个月', '', '置于阴凉干燥清洁处，避免阳光直射', '/uploads/2016/11/141202357318.jpg', '10', '30.00', '50', '30.00', '30.00', '0', '', '花生夹心巧克力', '', '');
INSERT INTO `hy_product_field` VALUES ('27', '', '120gx30', '', '', '6个月', '', '阴凉干燥处密封保存', '/uploads/2016/11/141346499539.jpg', '50', '3.20', '100', '3.00', '2.50', '0', '', '芝麻味', '巧克力味', '焦糖味');

-- ----------------------------
-- Table structure for hy_product_virtual
-- ----------------------------
DROP TABLE IF EXISTS `hy_product_virtual`;
CREATE TABLE `hy_product_virtual` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `number` char(100) NOT NULL,
  `virtual` varchar(500) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_product_virtual
-- ----------------------------
INSERT INTO `hy_product_virtual` VALUES ('12', '17', '测试fhsdfgsdfgsdfg', 'c76e53gGuaLZm3IoQbsJ36mrH0OcZ3RBr7PhE1xWCjoX6JHFnyyE8D3V55Iaxcq1', '0', '0');
INSERT INTO `hy_product_virtual` VALUES ('11', '17', '测试463vertc', '12333HwgRw6YZmRRcl8KNcHrI5oIxRovuPx7mr+WkNE2Vf1XrdobPrUil4SUCVQtqNDejMk', '0', '0');
INSERT INTO `hy_product_virtual` VALUES ('10', '17', '测试4567456346', '9a19aBBEDunV3WW1Tfv2p/ZoAna5UjQ5BtVM90DbkrW9aVKt120wg6F8LSqVgz6ime/1WmcBm6Y', '0', '0');
INSERT INTO `hy_product_virtual` VALUES ('9', '17', '测试6456456456456456', '25e0LYgVYcrXL96cj0Zs5pDK4Wpwq+arv1BAvY4ZWoQEJ0OEK+JlHjVKo7S41AMYj+slDhA', '0', '0');
INSERT INTO `hy_product_virtual` VALUES ('8', '17', '测试123123123123', 'afcci5kt/SEwT14i4tw7RQqffsuj4rFYYB374HJ+pIY2b2FL4L4wwuvM1V2oxvb/yPs', '0', '0');

-- ----------------------------
-- Table structure for hy_sales_record
-- ----------------------------
DROP TABLE IF EXISTS `hy_sales_record`;
CREATE TABLE `hy_sales_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `user` char(20) NOT NULL,
  `num` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `stime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_sales_record
-- ----------------------------

-- ----------------------------
-- Table structure for hy_shouye_pic
-- ----------------------------
DROP TABLE IF EXISTS `hy_shouye_pic`;
CREATE TABLE `hy_shouye_pic` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `shouye_pic` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_shouye_pic
-- ----------------------------
INSERT INTO `hy_shouye_pic` VALUES ('5', '27', '0', '1', '首页轮播图', '', '', '', '', '', '1475056140', '0', '0', '0', '0', '', '', 'hyadmin', '0');

-- ----------------------------
-- Table structure for hy_shouye_pic_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_shouye_pic_field`;
CREATE TABLE `hy_shouye_pic_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `one` char(255) DEFAULT NULL,
  `two` char(255) DEFAULT NULL,
  `three` char(255) DEFAULT NULL,
  `four` char(255) DEFAULT NULL,
  `sp_id_one` varchar(255) DEFAULT NULL,
  `sp_id_two` varchar(255) DEFAULT NULL,
  `sp_id_three` varchar(255) DEFAULT NULL,
  `sp_id_four` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_shouye_pic_field
-- ----------------------------
INSERT INTO `hy_shouye_pic_field` VALUES ('5', '/uploads/2016/10/121640584060.jpg', '/uploads/2016/10/121641307657.jpg', '/uploads/2016/10/121642025703.jpg', '/uploads/2016/10/121642185696.jpg', '18', '19', '20', '22');

-- ----------------------------
-- Table structure for hy_special
-- ----------------------------
DROP TABLE IF EXISTS `hy_special`;
CREATE TABLE `hy_special` (
  `sid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `name` char(50) NOT NULL,
  `litpic` char(200) NOT NULL,
  `title` char(100) NOT NULL,
  `keywords` char(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `gourl` char(255) NOT NULL,
  `isindex` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `listnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `htmldir` char(100) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_special
-- ----------------------------
INSERT INTO `hy_special` VALUES ('1', 'article', '专题演示', '', 'asdfasdf', '', '', '', '1', 'specia.html', 'specia_list.html', 'specia_body.html', '20', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for hy_sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `hy_sysconfig`;
CREATE TABLE `hy_sysconfig` (
  `name` char(35) NOT NULL,
  `sets` varchar(500) NOT NULL,
  UNIQUE KEY `sysconfig` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_sysconfig
-- ----------------------------
INSERT INTO `hy_sysconfig` VALUES ('sendmail', 'a:4:{s:4:\"smtp\";s:0:\"\";s:4:\"mail\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"name\";s:16:\"DOYO建站系统\";}');

-- ----------------------------
-- Table structure for hy_traits
-- ----------------------------
DROP TABLE IF EXISTS `hy_traits`;
CREATE TABLE `hy_traits` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `molds` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_traits
-- ----------------------------
INSERT INTO `hy_traits` VALUES ('1', '头条', 'article');
INSERT INTO `hy_traits` VALUES ('2', '推荐', 'article');
INSERT INTO `hy_traits` VALUES ('3', '头条', 'product');
INSERT INTO `hy_traits` VALUES ('4', '推荐', 'product');

-- ----------------------------
-- Table structure for hy_tuijianma
-- ----------------------------
DROP TABLE IF EXISTS `hy_tuijianma`;
CREATE TABLE `hy_tuijianma` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `tuijianma` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_tuijianma
-- ----------------------------
INSERT INTO `hy_tuijianma` VALUES ('1', '26', '0', '1', '推荐码', '', '', '', '', '', '1474885020', '0', '0', '0', '0', '', '', 'hyadmin', '0');

-- ----------------------------
-- Table structure for hy_tuijianma_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_tuijianma_field`;
CREATE TABLE `hy_tuijianma_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tuijianma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_tuijianma_field
-- ----------------------------
INSERT INTO `hy_tuijianma_field` VALUES ('1', '123456');

-- ----------------------------
-- Table structure for hy_update
-- ----------------------------
DROP TABLE IF EXISTS `hy_update`;
CREATE TABLE `hy_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` char(10) NOT NULL,
  `newupdate` char(15) NOT NULL,
  `uptime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_update
-- ----------------------------

-- ----------------------------
-- Table structure for hy_xiangqing_lunbo
-- ----------------------------
DROP TABLE IF EXISTS `hy_xiangqing_lunbo`;
CREATE TABLE `hy_xiangqing_lunbo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `xiangqing_lunbo` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_xiangqing_lunbo
-- ----------------------------
INSERT INTO `hy_xiangqing_lunbo` VALUES ('2', '28', '0', '1', '商品17', '', '', '', '', '', '1475115360', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('3', '28', '0', '1', '商品16', '', '', '', '', '', '1475115720', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('4', '28', '0', '1', '商品18', '', '', '', '', '', '1475115780', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('5', '28', '0', '1', '商品19', '', '', '', '', '', '1475115780', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('6', '28', '0', '1', '商品20', '', '', '', '', '', '1475115840', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('7', '28', '0', '1', '商品22', '', '', '', '', '', '1475115840', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('8', '28', '0', '1', '综合蔬菜水果干', '', '', '', '', '', '1478158140', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('9', '28', '0', '1', '士力架商品详情', '', '', '', '', '', '1479096480', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_xiangqing_lunbo` VALUES ('10', '28', '0', '1', '美式爆米花商品详情', '', '', '', '', '', '1479102060', '0', '0', '0', '0', '', '', 'hyadmin', '0');

-- ----------------------------
-- Table structure for hy_xiangqing_lunbo_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_xiangqing_lunbo_field`;
CREATE TABLE `hy_xiangqing_lunbo_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sp_id` varchar(255) DEFAULT NULL,
  `t_one` char(255) DEFAULT NULL,
  `t_two` char(255) DEFAULT NULL,
  `t_three` char(255) DEFAULT NULL,
  `t_four` char(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_xiangqing_lunbo_field
-- ----------------------------
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('2', '17', '/uploads/2016/10/121647031940.jpg', '/uploads/2016/10/121647101423.jpg', '/uploads/2016/10/121647155626.jpg', '/uploads/2016/10/121647189301.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('3', '16', '/uploads/2016/10/121650356420.jpg', '/uploads/2016/10/121650399912.jpg', '/uploads/2016/10/121650423252.jpg', '/uploads/2016/10/121650466695.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('4', '18', '/uploads/2016/10/121648094961.jpg', '/uploads/2016/10/121648132069.jpg', '/uploads/2016/10/121649129670.jpg', '/uploads/2016/10/121649173546.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('5', '19', '/uploads/2016/10/121643354061.jpg', '/uploads/2016/10/121643463033.jpg', '/uploads/2016/10/121643586393.jpg', '/uploads/2016/10/121644102779.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('6', '20', '/uploads/2016/10/121040132778.jpg', '/uploads/2016/10/121040155221.jpg', '/uploads/2016/10/121040186303.jpg', '/uploads/2016/10/121040216069.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('7', '22', '/uploads/2016/10/121039364628.jpg', '/uploads/2016/10/121039488634.jpg', '/uploads/2016/10/121039533112.jpg', '/uploads/2016/10/121040018253.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('8', '25', '/uploads/2016/11/031530473071.jpeg', '/uploads/2016/11/031530502791.jpeg', '/uploads/2016/11/031530569912.jpeg', '');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('9', '26', '/uploads/2016/11/141208328258.jpg', '/uploads/2016/11/141208361992.jpg', '/uploads/2016/11/141208398141.jpg', '/uploads/2016/11/141208436183.jpg');
INSERT INTO `hy_xiangqing_lunbo_field` VALUES ('10', '27', '/uploads/2016/11/141341494038.jpg', '/uploads/2016/11/141341549284.jpg', '/uploads/2016/11/141341587323.jpg', '/uploads/2016/11/141342011923.jpg');

-- ----------------------------
-- Table structure for hy_yewuyuan_num
-- ----------------------------
DROP TABLE IF EXISTS `hy_yewuyuan_num`;
CREATE TABLE `hy_yewuyuan_num` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `yewuyuan_num` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_yewuyuan_num
-- ----------------------------
INSERT INTO `hy_yewuyuan_num` VALUES ('1', '24', '0', '1', '100001', '', '', '', '', '', '1474625520', '3', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('2', '24', '0', '1', '100002', '', '', '', '', '', '1474678980', '2', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('3', '24', '0', '1', '100003', '', '', '', '', '', '1474851360', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('4', '24', '0', '1', '100004', '', '', '', '', '', '1474851360', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('5', '24', '0', '1', '100005', '', '', '', '', '', '1474851420', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('6', '24', '0', '1', '100006', '', '', '', '', '', '1474851420', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('7', '24', '0', '1', '100007', '', '', '', '', '', '1474851420', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('8', '24', '0', '1', '100008', '', '', '', '', '', '1474851420', '0', '0', '0', '0', '', '', 'hyadmin', '0');
INSERT INTO `hy_yewuyuan_num` VALUES ('9', '24', '0', '1', '10009', '', '', '', '', '', '1478157060', '0', '0', '0', '0', '', '', 'hyadmin', '0');

-- ----------------------------
-- Table structure for hy_yewuyuan_num_field
-- ----------------------------
DROP TABLE IF EXISTS `hy_yewuyuan_num_field`;
CREATE TABLE `hy_yewuyuan_num_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `number` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_yewuyuan_num_field
-- ----------------------------
INSERT INTO `hy_yewuyuan_num_field` VALUES ('1', '100001', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('2', '100002', '小妖');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('3', '100003', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('4', '100004', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('5', '100005', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('6', '100006', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('7', '100007', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('8', '100008', '');
INSERT INTO `hy_yewuyuan_num_field` VALUES ('9', '10009', '棉花糖');
