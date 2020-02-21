/*
MySQL Data Transfer
Source Host: localhost
Source Database: taobao
Target Host: localhost
Target Database: taobao
Date: 2020/2/21 13:03:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for footmark
-- ----------------------------
DROP TABLE IF EXISTS `footmark`;
CREATE TABLE `footmark` (
  `footmarkid` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) DEFAULT NULL,
  `goodsid` int(20) DEFAULT NULL,
  `footmarktime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`footmarkid`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` int(20) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(200) DEFAULT NULL,
  `storeid` int(20) DEFAULT NULL,
  `priceold` varchar(50) DEFAULT NULL,
  `pricenew` varchar(50) DEFAULT NULL,
  `salesum` int(20) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `shoucang` int(20) DEFAULT NULL,
  `goodsclassid` int(20) DEFAULT NULL,
  `img_list` varchar(200) DEFAULT NULL,
  `checkstatus` int(20) DEFAULT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goodsclass
-- ----------------------------
DROP TABLE IF EXISTS `goodsclass`;
CREATE TABLE `goodsclass` (
  `goodsclassid` int(20) NOT NULL DEFAULT '0',
  `goodsclassname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goodsclassid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gouwuche
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `gouwucheid` int(20) NOT NULL AUTO_INCREMENT,
  `goodsid` int(20) DEFAULT NULL,
  `userid` int(20) DEFAULT NULL,
  `goods_sum` int(100) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `sum_price` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gouwucheid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orderx
-- ----------------------------
DROP TABLE IF EXISTS `orderx`;
CREATE TABLE `orderx` (
  `orderxid` int(20) NOT NULL AUTO_INCREMENT,
  `goodsid` int(20) DEFAULT NULL,
  `userid` int(20) DEFAULT NULL,
  `goods_sum` int(100) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `sum_price` varchar(100) DEFAULT NULL,
  `statusid` int(20) DEFAULT NULL,
  PRIMARY KEY (`orderxid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` int(11) NOT NULL DEFAULT '0',
  `rolename` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shouc
-- ----------------------------
DROP TABLE IF EXISTS `shouc`;
CREATE TABLE `shouc` (
  `shoucid` int(20) NOT NULL AUTO_INCREMENT,
  `goodsid` int(20) DEFAULT NULL,
  `userid` int(20) DEFAULT NULL,
  PRIMARY KEY (`shoucid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `statusid` int(20) NOT NULL AUTO_INCREMENT,
  `statusname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `storeid` int(20) NOT NULL AUTO_INCREMENT,
  `storename` varchar(28) DEFAULT NULL,
  `storenav` varchar(28) DEFAULT NULL,
  PRIMARY KEY (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `roleid` int(20) DEFAULT NULL,
  `userid` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(28) DEFAULT NULL,
  `userpassword` varchar(28) DEFAULT NULL,
  `storeid` int(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `footmark` VALUES ('469', '2', '3', '11.28');
INSERT INTO `footmark` VALUES ('490', '1', '1', '12.4');
INSERT INTO `footmark` VALUES ('492', '1', '4', '12.4');
INSERT INTO `footmark` VALUES ('498', '1', '17', '12.15');
INSERT INTO `footmark` VALUES ('499', '1', '11', '12.15');
INSERT INTO `footmark` VALUES ('500', '1', '11', '12.15');
INSERT INTO `footmark` VALUES ('501', '1', '5', '12.15');
INSERT INTO `footmark` VALUES ('502', '1', '11', '12.15');
INSERT INTO `footmark` VALUES ('503', '1', '16', '12.15');
INSERT INTO `footmark` VALUES ('504', '1', '1', '12.15');
INSERT INTO `footmark` VALUES ('505', '1', '4', '12.15');
INSERT INTO `footmark` VALUES ('506', '1', '8', '12.15');
INSERT INTO `footmark` VALUES ('507', '1', '1', '12.15');
INSERT INTO `footmark` VALUES ('508', '1', '4', '12.18');
INSERT INTO `footmark` VALUES ('509', '1', '5', '12.18');
INSERT INTO `footmark` VALUES ('510', '1', '5', '12.18');
INSERT INTO `footmark` VALUES ('511', '1', '11', '12.18');
INSERT INTO `footmark` VALUES ('512', '1', '5', '12.18');
INSERT INTO `footmark` VALUES ('513', '1', '4', '12.18');
INSERT INTO `footmark` VALUES ('514', '1', '11', '12.24');
INSERT INTO `footmark` VALUES ('515', '1', '11', '12.24');
INSERT INTO `footmark` VALUES ('516', '1', '11', '12.24');
INSERT INTO `footmark` VALUES ('517', '1', '14', '12.24');
INSERT INTO `footmark` VALUES ('518', '1', '13', '12.24');
INSERT INTO `footmark` VALUES ('519', '1', '14', '12.25');
INSERT INTO `footmark` VALUES ('520', '1', '19', '12.25');
INSERT INTO `footmark` VALUES ('521', '1', '13', '12.25');
INSERT INTO `footmark` VALUES ('522', '1', '14', '12.25');
INSERT INTO `footmark` VALUES ('523', '1', '4', '12.25');
INSERT INTO `footmark` VALUES ('524', '1', '14', '12.25');
INSERT INTO `footmark` VALUES ('525', '1', '3', '12.25');
INSERT INTO `footmark` VALUES ('526', '1', '11', '12.25');
INSERT INTO `footmark` VALUES ('527', '1', '1', '12.26');
INSERT INTO `footmark` VALUES ('528', '1', '9', '12.27');
INSERT INTO `footmark` VALUES ('529', '1', '1', '12.27');
INSERT INTO `footmark` VALUES ('530', '1', '3', '12.27');
INSERT INTO `footmark` VALUES ('531', '1', '1', '12.27');
INSERT INTO `footmark` VALUES ('532', '1', '4', '12.30');
INSERT INTO `footmark` VALUES ('533', '1', '14', '12.30');
INSERT INTO `footmark` VALUES ('534', '1', '13', '1.6');
INSERT INTO `goods` VALUES ('1', 'Curel/珂润 洗面奶 150ml 氨基酸泡沫洁面乳 敏感肌润浸保湿温和', '1', '128.00', '89.00', '0', 'sale/haiwai1.jpg', '0', '1', 'big_goodsimg/kerun1.jpg big_goodsimg/kerun2.jpg big_goodsimg/kerun3.jpg big_goodsimg/kerun4.jpg big_goodsimg/kerun5.jpg', '1');
INSERT INTO `goods` VALUES ('3', '日本资生堂尿素护手霜 100g*3罐防干裂保湿补水滋润小红罐护手霜', '1', '299.00', '109.00', '0', 'sale/haiwai3.jpg', '1', '1', 'big_goodsimg/shoushuang1.jpg big_goodsimg/shoushuang2.jpg big_goodsimg/shoushuang3.jpg big_goodsimg/shoushuang4.jpg big_goodsimg/shoushuang5.jpg', '1');
INSERT INTO `goods` VALUES ('4', 'mandom曼丹面膜 5枚*3盒 日本玻尿酸保湿补水滋润修复婴儿面膜', '1', '228.00', '128.00', '1', 'sale/haiwai4.jpg', '1', '1', 'big_goodsimg/mianmo1.jpg big_goodsimg/mianmo2.jpg big_goodsimg/mianmo3.jpg big_goodsimg/mianmo4.jpg big_goodsimg/mianmo5.jpg', '1');
INSERT INTO `goods` VALUES ('5', 'ROHTO乐敦CC美容液 20ml 淡斑袪痘印保湿提亮肤色修护美容液精华', '1', '168.00', '79.00', '4', 'sale/haiwai5.jpg', '1', '1', 'big_goodsimg/ledun1.jpg big_goodsimg/ledun2.jpg big_goodsimg/ledun3.jpg big_goodsimg/ledun4.jpg big_goodsimg/ledun5.jpg', '1');
INSERT INTO `goods` VALUES ('6', '日本曼丹眼唇卸妆水145ml*3瓶温和深层清洁眼唇部卸妆液女保税', '1', '299.00', '145.00', '0', 'sale/haiwai6.jpg', '0', '1', 'big_goodsimg/xiezhuang1.jpg big_goodsimg/xiezhuang2.jpg big_goodsimg/xiezhuang3.jpg big_goodsimg/xiezhuang4.jpg big_goodsimg/xiezhuang5.jpg', '1');
INSERT INTO `goods` VALUES ('7', '日本LION/狮王祛痘膏 14g/24g 粉刺暗疮药膏淡斑修护青春痘去痘印', '1', '159.00', '65.00', '0', 'sale/haiwai7.jpg', '0', '1', 'big_goodsimg/qudou1.jpg big_goodsimg/qudou2.jpg big_goodsimg/qudou3.jpg big_goodsimg/qudou4.jpg big_goodsimg/qudou5.jpg', '1');
INSERT INTO `goods` VALUES ('8', 'Curel/珂润洗面奶 150ml*2瓶 敏感肌控油保湿洁颜泡沫洁面慕斯', '1', '239.00', '156.00', '0', 'sale/haiwai8.jpg', '0', '1', 'big_goodsimg/musi1.jpg big_goodsimg/musi2.jpg big_goodsimg/musi3.jpg big_goodsimg/musi4.jpg big_goodsimg/musi5.jpg', '1');
INSERT INTO `goods` VALUES ('9', '韩国 棉服女2018新款冬季韩版连帽大毛领中长款宽松棉衣外套潮', '2', '689.00', '389.00', '0', 'sale/xg1.jpg', '0', '2', 'big_goodsimg/xg1_1.jpg big_goodsimg/xg1_2.jpg big_goodsimg/xg1_i3.jpg big_goodsimg/xg1_4.jpg big_goodsimg/xg1_5.jpg', '1');
INSERT INTO `goods` VALUES ('10', '韩国 2018新款秋冬韩版黑色加绒加厚卫衣女宽松连帽套头保暖外套', '2', '439.00 ', '239.00', '0', 'sale/xg2.jpg', '0', '2', 'big_goodsimg/xg2_1.jpg big_goodsimg/xg2_2.jpg big_goodsimg/xg2_3.jpg big_goodsimg/xg2_4.jpg big_goodsimg/xg2_5.jpg', '1');
INSERT INTO `goods` VALUES ('11', '韩国  棉服女2018新款冬季宽松加厚棉袄中长款大毛领bf风羽绒棉衣', '2', '859.00 ', '350.00', '0', 'sale/xg3.jpg', '0', '2', 'big_goodsimg/xg3_1.jpg big_goodsimg/xg3_2.jpg big_goodsimg/xg3_3.jpg big_goodsimg/xg3_4.jpg big_goodsimg/xg3_5.jpg', '1');
INSERT INTO `goods` VALUES ('12', '韩国 羽绒服女中长款2018新款冬装韩版时尚彩色貉子大毛领外套潮', '2', '1058.00', '589.00', '0', 'sale/xg4.jpg', '0', '2', 'big_goodsimg/xg4_1.jpg big_goodsimg/xg4_2.jpg big_goodsimg/xg4_3.jpg big_goodsimg/xg4_4.jpg big_goodsimg/xg4_5.jpg', '1');
INSERT INTO `goods` VALUES ('13', '韩国 棉袄女2018新款面包服女短款ins羽绒棉服宽松bf风外套冬季', '2', '659.00', '359.00', '0', 'sale/xg5.jpg', '0', '2', 'big_goodsimg/xg5_1.jpg big_goodsimg/xg5_2.jpg big_goodsimg/xg5_3.jpg big_goodsimg/xg5_4.jpg big_goodsimg/xg5_5.jpg', '1');
INSERT INTO `goods` VALUES ('14', '韩国 棉袄女2018新款面包服女短款ins羽绒棉服女宽松bf风外套冬装', '2', '589.00', '400.00', '0', 'sale/xg6.jpg', '0', '2', 'big_goodsimg/xg6_1.jpg big_goodsimg/xg6_2.jpg big_goodsimg/xg6_3.jpg big_goodsimg/xg6_4.jpg big_goodsimg/xg6_5.jpg', '1');
INSERT INTO `goods` VALUES ('15', '2018秋冬季中跟磨砂皮马丁靴韩版百搭短靴女切尔', '3', '388.00', '138.00', '0', 'sale/xz1.jpg', '0', '3', 'big_goodsimg/xz1_1.jpg big_goodsimg/xz1_2.jpg big_goodsimg/xz1_3.jpg big_goodsimg/xz1_4.jpg big_goodsimg/xz1_5.jpg', '1');
INSERT INTO `goods` VALUES ('16', '小短靴2018新款秋冬低跟女粗跟圆头切尔西靴松紧', '3', '299.00', '138.00', '0', 'sale/xz2.jpg', '0', '3', 'big_goodsimg/xz2_1.jpg big_goodsimg/xz2_2.jpg big_goodsimg/xz2_3.jpg big_goodsimg/xz2_4.jpg big_goodsimg/xz2_5.jpg', '1');
INSERT INTO `goods` VALUES ('17', '马丁靴子女小短靴秋冬2018新款粗跟圆头切尔西靴', '3', '299.00', '138.00', '0', 'sale/xz3.jpg', '0', '3', 'big_goodsimg/xz3_1.jpg big_goodsimg/xz3_2.jpg big_goodsimg/xz3_3.jpg big_goodsimg/xz3_4.jpg big_goodsimg/xz3_5.jpg', '1');
INSERT INTO `goods` VALUES ('18', '瘦瘦靴2018秋冬新款马丁靴尖头裸靴百搭高跟粗跟', '3', '299.00', '168.00', '0', 'sale/xz4.jpg', '0', '3', 'big_goodsimg/xz4_1.jpg big_goodsimg/xz4_2.jpg big_goodsimg/xz4_3.jpg big_goodsimg/xz4_4.jpg big_goodsimg/xz4_5.jpg', '1');
INSERT INTO `goods` VALUES ('19', '瘦瘦靴秋冬马丁靴女2018新款韩版粗跟短靴子中跟', '3', '299.00', '168.00', '0', 'sale/xz5.jpg', '0', '3', 'big_goodsimg/xz5_1.jpg big_goodsimg/xz5_2.jpg big_goodsimg/xz5_3.jpg big_goodsimg/xz5_4.jpg big_goodsimg/xz5_5.jpg', '1');
INSERT INTO `goods` VALUES ('20', '瘦瘦靴子方头马丁靴女2018新款秋冬季粗跟单靴加', '3', '299.00', '168.00', '0', 'sale/xz6.jpg', '0', '3', 'big_goodsimg/xz6_1.jpg big_goodsimg/xz6_2.jpg big_goodsimg/xz6_3.jpg big_goodsimg/xz6_4.jpg big_goodsimg/xz6_5.jpg', '0');
INSERT INTO `goods` VALUES ('23', '1', '1', '1', '1', '0', 'sale/zwt1.jpg', '0', '2', 'big_goodsimg/zwt2.jpg big_goodsimg/zwt3.jpg big_goodsimg/zwt4.jpg big_goodsimg/zwt5.jpg big_goodsimg/zwt6.jpg ', '1');
INSERT INTO `goodsclass` VALUES ('1', '化妆品');
INSERT INTO `goodsclass` VALUES ('2', '衣服');
INSERT INTO `goodsclass` VALUES ('3', '鞋子');
INSERT INTO `gouwuche` VALUES ('59', '1', '1', '4', '化妆品净含量: 500g', '356.0');
INSERT INTO `gouwuche` VALUES ('60', '4', '1', '3', '化妆品净含量: 250g', '384.0');
INSERT INTO `gouwuche` VALUES ('61', '14', '1', '5', '尺码: XL', '2000.0');
INSERT INTO `gouwuche` VALUES ('62', '13', '1', '2', '尺码: L', '718.0');
INSERT INTO `orderx` VALUES ('6', '13', '5', '1', '尺码: M', '359.0', '1');
INSERT INTO `orderx` VALUES ('8', '9', '1', '1', '尺码: M', '389.0', '5');
INSERT INTO `orderx` VALUES ('9', '5', '1', '1', '化妆品净含量: 250g', '79.0', '5');
INSERT INTO `orderx` VALUES ('10', '1', '1', '1', '化妆品净含量: 250g', '89.0', '2');
INSERT INTO `orderx` VALUES ('11', '10', '1', '1', '尺码: M', '239.0', '4');
INSERT INTO `orderx` VALUES ('12', '4', '1', '1', '化妆品净含量: 500g', '128.0', '3');
INSERT INTO `orderx` VALUES ('13', '9', '1', '1', '尺码: L', '389.0', '1');
INSERT INTO `orderx` VALUES ('14', '10', '1', '1', '尺码: L', '478.0', '6');
INSERT INTO `orderx` VALUES ('15', '14', '1', '3', '尺码: XL', '1200.0', '1');
INSERT INTO `orderx` VALUES ('16', '4', '1', '2', '化妆品净含量: 500g', '384.0', '1');
INSERT INTO `orderx` VALUES ('17', '14', '1', '3', '尺码: M', '1200.0', '6');
INSERT INTO `role` VALUES ('1', '买家');
INSERT INTO `role` VALUES ('2', '卖家');
INSERT INTO `role` VALUES ('3', '管理员');
INSERT INTO `shouc` VALUES ('33', '2', '1');
INSERT INTO `shouc` VALUES ('41', '5', '1');
INSERT INTO `shouc` VALUES ('42', '11', '1');
INSERT INTO `shouc` VALUES ('43', '1', '1');
INSERT INTO `shouc` VALUES ('44', '3', '1');
INSERT INTO `status` VALUES ('1', '待发货');
INSERT INTO `status` VALUES ('2', '待收货');
INSERT INTO `status` VALUES ('3', '已买');
INSERT INTO `status` VALUES ('4', '待退款');
INSERT INTO `status` VALUES ('5', '已退款');
INSERT INTO `status` VALUES ('6', '未审核');
INSERT INTO `store` VALUES ('0', '', '');
INSERT INTO `store` VALUES ('1', 'LAOX海外旗舰店', 'detail_goods/haiwai.png');
INSERT INTO `store` VALUES ('2', '香港正品专柜', 'detail_goods/xg.png');
INSERT INTO `store` VALUES ('3', '卖高跟鞋的女孩 艾奴', 'detail_goods/xz.png');
INSERT INTO `user` VALUES ('1', '1', '蛋花', 'dh123', '0');
INSERT INTO `user` VALUES ('1', '2', '酱大宝', 'jdb123', '0');
INSERT INTO `user` VALUES ('1', '3', '11', '11', '0');
INSERT INTO `user` VALUES ('2', '4', '卖家1', 'mj1', '1');
INSERT INTO `user` VALUES ('2', '5', '卖家2', 'mj2', '2');
INSERT INTO `user` VALUES ('2', '6', '卖家3', 'mj3', '3');
INSERT INTO `user` VALUES ('3', '7', '管理员1', 'gly123', '0');
