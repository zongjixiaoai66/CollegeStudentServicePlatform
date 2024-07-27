/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t214`;
CREATE DATABASE IF NOT EXISTS `t214` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t214`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `fuwujiedan`;
CREATE TABLE IF NOT EXISTS `fuwujiedan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `choujin` int DEFAULT NULL COMMENT '酬金',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `jiedanzhanghao` varchar(200) DEFAULT NULL COMMENT '接单账号',
  `jiedanhaoma` varchar(200) DEFAULT NULL COMMENT '接单号码',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740453956 DEFAULT CHARSET=utf8mb3 COMMENT='服务接单';

DELETE FROM `fuwujiedan`;
INSERT INTO `fuwujiedan` (`id`, `addtime`, `dingdanbianhao`, `fuwuleixing`, `choujin`, `yonghuzhanghao`, `yonghuxingming`, `shoujihaoma`, `jiedanshijian`, `jiedanzhanghao`, `jiedanhaoma`, `ispay`) VALUES
	(51, '2022-03-31 09:19:51', '订单编号1', '服务类型1', 1, '用户账号1', '用户姓名1', '13823888881', '2022-03-31 17:19:51', '接单账号1', '13823888881', '未支付'),
	(52, '2022-03-31 09:19:51', '订单编号2', '服务类型2', 2, '用户账号2', '用户姓名2', '13823888882', '2022-03-31 17:19:51', '接单账号2', '13823888882', '未支付'),
	(53, '2022-03-31 09:19:51', '订单编号3', '服务类型3', 3, '用户账号3', '用户姓名3', '13823888883', '2022-03-31 17:19:51', '接单账号3', '13823888883', '未支付'),
	(54, '2022-03-31 09:19:51', '订单编号4', '服务类型4', 4, '用户账号4', '用户姓名4', '13823888884', '2022-03-31 17:19:51', '接单账号4', '13823888884', '未支付'),
	(55, '2022-03-31 09:19:51', '订单编号5', '服务类型5', 5, '用户账号5', '用户姓名5', '13823888885', '2022-03-31 17:19:51', '接单账号5', '13823888885', '未支付'),
	(56, '2022-03-31 09:19:51', '订单编号6', '服务类型6', 6, '用户账号6', '用户姓名6', '13823888886', '2022-03-31 17:19:51', '接单账号6', '13823888886', '未支付'),
	(1648740453955, '2022-03-31 15:27:33', '1648740240405', '外卖上门', 5, '001', '王强', '13823899996', '2022-03-31 23:26:53', '002', '13823877744', '已支付');

DROP TABLE IF EXISTS `fuwuleixing`;
CREATE TABLE IF NOT EXISTS `fuwuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740252789 DEFAULT CHARSET=utf8mb3 COMMENT='服务类型';

DELETE FROM `fuwuleixing`;
INSERT INTO `fuwuleixing` (`id`, `addtime`, `fuwuleixing`) VALUES
	(81, '2022-03-31 09:19:51', '外卖上门'),
	(82, '2022-03-31 09:19:51', '快递代拿'),
	(1648740252788, '2022-03-31 15:24:12', '互助互帮');

DROP TABLE IF EXISTS `fuwuxinxi`;
CREATE TABLE IF NOT EXISTS `fuwuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `choujin` int DEFAULT NULL COMMENT '酬金',
  `fuwuxiangqing` longtext COMMENT '服务详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740307688 DEFAULT CHARSET=utf8mb3 COMMENT='服务信息';

DELETE FROM `fuwuxinxi`;
INSERT INTO `fuwuxinxi` (`id`, `addtime`, `dingdanbianhao`, `fengmian`, `fuwuleixing`, `choujin`, `fuwuxiangqing`, `fabushijian`, `dingdanzhuangtai`, `yonghuzhanghao`, `yonghuxingming`, `shoujihaoma`) VALUES
	(41, '2022-03-31 09:19:51', '1111111111', 'upload/fuwuxinxi_fengmian1.jpg', '服务类型1', 1, '<p>服务详情1</p>', '2022-03-31 17:19:51', '已接单', '用户账号1', '用户姓名1', '13823888881'),
	(42, '2022-03-31 09:19:51', '2222222222', 'upload/fuwuxinxi_fengmian2.jpg', '服务类型2', 2, '服务详情2', '2022-03-31 17:19:51', '已接单', '用户账号2', '用户姓名2', '13823888882'),
	(43, '2022-03-31 09:19:51', '3333333333', 'upload/fuwuxinxi_fengmian3.jpg', '服务类型3', 3, '服务详情3', '2022-03-31 17:19:51', '已接单', '用户账号3', '用户姓名3', '13823888883'),
	(44, '2022-03-31 09:19:51', '4444444444', 'upload/fuwuxinxi_fengmian4.jpg', '服务类型4', 4, '服务详情4', '2022-03-31 17:19:51', '已接单', '用户账号4', '用户姓名4', '13823888884'),
	(45, '2022-03-31 09:19:51', '5555555555', 'upload/fuwuxinxi_fengmian5.jpg', '服务类型5', 5, '服务详情5', '2022-03-31 17:19:51', '已接单', '用户账号5', '用户姓名5', '13823888885'),
	(46, '2022-03-31 09:19:51', '6666666666', 'upload/fuwuxinxi_fengmian6.jpg', '服务类型6', 6, '服务详情6', '2022-03-31 17:19:51', '已接单', '用户账号6', '用户姓名6', '13823888886'),
	(1648740307687, '2022-03-31 15:25:07', '1648740240405', 'upload/1648740285312.jpg', '外卖上门', 5, '<p>用户输入外卖上门的详情信息</p>', '2022-03-31 23:24:00', '已接单', '001', '王强', '13823899996');

DROP TABLE IF EXISTS `jianzhixinxi`;
CREATE TABLE IF NOT EXISTS `jianzhixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinzidaiyu` varchar(200) NOT NULL COMMENT '薪资待遇',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `jianzhixiangqing` longtext COMMENT '兼职详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740164349 DEFAULT CHARSET=utf8mb3 COMMENT='兼职信息';

DELETE FROM `jianzhixinxi`;
INSERT INTO `jianzhixinxi` (`id`, `addtime`, `gangweimingcheng`, `tupian`, `xinzidaiyu`, `zhaopinrenshu`, `gongzuodidian`, `gongzuoshijian`, `gangweiyaoqiu`, `jianzhixiangqing`, `shangjiazhanghao`, `shangjiamingcheng`, `lianxiren`, `lianxidianhua`) VALUES
	(101, '2022-03-31 09:19:51', '岗位名称1', 'upload/jianzhixinxi_tupian1.jpg', '薪资待遇1', '招聘人数1', '工作地点1', '工作时间1', '岗位要求1', '兼职详情1', '商家账号1', '商家名称1', '联系人1', '联系电话1'),
	(102, '2022-03-31 09:19:51', '岗位名称2', 'upload/jianzhixinxi_tupian2.jpg', '薪资待遇2', '招聘人数2', '工作地点2', '工作时间2', '岗位要求2', '兼职详情2', '商家账号2', '商家名称2', '联系人2', '联系电话2'),
	(103, '2022-03-31 09:19:51', '岗位名称3', 'upload/jianzhixinxi_tupian3.jpg', '薪资待遇3', '招聘人数3', '工作地点3', '工作时间3', '岗位要求3', '兼职详情3', '商家账号3', '商家名称3', '联系人3', '联系电话3'),
	(104, '2022-03-31 09:19:51', '岗位名称4', 'upload/jianzhixinxi_tupian4.jpg', '薪资待遇4', '招聘人数4', '工作地点4', '工作时间4', '岗位要求4', '兼职详情4', '商家账号4', '商家名称4', '联系人4', '联系电话4'),
	(105, '2022-03-31 09:19:51', '岗位名称5', 'upload/jianzhixinxi_tupian5.jpg', '薪资待遇5', '招聘人数5', '工作地点5', '工作时间5', '岗位要求5', '兼职详情5', '商家账号5', '商家名称5', '联系人5', '联系电话5'),
	(106, '2022-03-31 09:19:51', '岗位名称6', 'upload/jianzhixinxi_tupian6.jpg', '薪资待遇6', '招聘人数6', '工作地点6', '工作时间6', '岗位要求6', '兼职详情6', '商家账号6', '商家名称6', '联系人6', '联系电话6'),
	(1648740164348, '2022-03-31 15:22:44', '销售员', 'upload/1648740125798.webp', '200/天', '2人', '北京路', '8:00-18:00', '输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情', '<p>输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情</p>', '004', '新作商家', '陈先生', '13823866662');

DROP TABLE IF EXISTS `jianzhiyingpin`;
CREATE TABLE IF NOT EXISTS `jianzhiyingpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `qiuzhishijian` datetime DEFAULT NULL COMMENT '求职时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `crossuserid` bigint DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740597550 DEFAULT CHARSET=utf8mb3 COMMENT='兼职应聘';

DELETE FROM `jianzhiyingpin`;
INSERT INTO `jianzhiyingpin` (`id`, `addtime`, `gangweimingcheng`, `xinzidaiyu`, `gongzuodidian`, `gongzuoshijian`, `shangjiazhanghao`, `shangjiamingcheng`, `jianli`, `qiuzhishijian`, `beizhu`, `yonghuzhanghao`, `yonghuxingming`, `shoujihaoma`, `crossuserid`, `crossrefid`, `sfsh`, `shhf`) VALUES
	(111, '2022-03-31 09:19:51', '岗位名称1', '薪资待遇1', '工作地点1', '工作时间1', '商家账号1', '商家名称1', '', '2022-03-31 17:19:51', '备注1', '用户账号1', '用户姓名1', '手机号码1', 1, 1, '是', ''),
	(112, '2022-03-31 09:19:51', '岗位名称2', '薪资待遇2', '工作地点2', '工作时间2', '商家账号2', '商家名称2', '', '2022-03-31 17:19:51', '备注2', '用户账号2', '用户姓名2', '手机号码2', 2, 2, '是', ''),
	(113, '2022-03-31 09:19:51', '岗位名称3', '薪资待遇3', '工作地点3', '工作时间3', '商家账号3', '商家名称3', '', '2022-03-31 17:19:51', '备注3', '用户账号3', '用户姓名3', '手机号码3', 3, 3, '是', ''),
	(114, '2022-03-31 09:19:51', '岗位名称4', '薪资待遇4', '工作地点4', '工作时间4', '商家账号4', '商家名称4', '', '2022-03-31 17:19:51', '备注4', '用户账号4', '用户姓名4', '手机号码4', 4, 4, '是', ''),
	(115, '2022-03-31 09:19:51', '岗位名称5', '薪资待遇5', '工作地点5', '工作时间5', '商家账号5', '商家名称5', '', '2022-03-31 17:19:51', '备注5', '用户账号5', '用户姓名5', '手机号码5', 5, 5, '是', ''),
	(116, '2022-03-31 09:19:51', '岗位名称6', '薪资待遇6', '工作地点6', '工作时间6', '商家账号6', '商家名称6', '', '2022-03-31 17:19:51', '备注6', '用户账号6', '用户姓名6', '手机号码6', 6, 6, '是', ''),
	(1648740597549, '2022-03-31 15:29:57', '销售员', '200/天', '北京路', '8:00-18:00', '004', '新作商家', 'upload/1648740594850.xls', '2022-03-31 23:29:08', '', '002', '张三', '13823877744', 1648739921896, 1648740164348, '是', '请于4月2号上午来面试');

DROP TABLE IF EXISTS `pinchexinxi`;
CREATE TABLE IF NOT EXISTS `pinchexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chufadidian` varchar(200) DEFAULT NULL COMMENT '出发地点',
  `daodadidian` varchar(200) DEFAULT NULL COMMENT '到达地点',
  `chufashijian` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `danrenfeiyong` int DEFAULT NULL COMMENT '单人费用',
  `zuoweishu` int DEFAULT NULL COMMENT '座位数',
  `pinchejine` int DEFAULT NULL COMMENT '拼车金额',
  `pincheshijian` datetime DEFAULT NULL COMMENT '拼车时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740504652 DEFAULT CHARSET=utf8mb3 COMMENT='拼车信息';

DELETE FROM `pinchexinxi`;
INSERT INTO `pinchexinxi` (`id`, `addtime`, `sijizhanghao`, `sijixingming`, `xingbie`, `lianxidianhua`, `chepaihao`, `chufadidian`, `daodadidian`, `chufashijian`, `danrenfeiyong`, `zuoweishu`, `pinchejine`, `pincheshijian`, `beizhu`, `yonghuzhanghao`, `yonghuxingming`, `shoujihaoma`, `ispay`) VALUES
	(71, '2022-03-31 09:19:51', '司机账号1', '司机姓名1', '性别1', '联系电话1', '车牌号1', '出发地点1', '到达地点1', '出发时间1', 1, 1, 1, '2022-03-31 17:19:51', '备注1', '用户账号1', '用户姓名1', '手机号码1', '未支付'),
	(72, '2022-03-31 09:19:51', '司机账号2', '司机姓名2', '性别2', '联系电话2', '车牌号2', '出发地点2', '到达地点2', '出发时间2', 2, 2, 2, '2022-03-31 17:19:51', '备注2', '用户账号2', '用户姓名2', '手机号码2', '未支付'),
	(73, '2022-03-31 09:19:51', '司机账号3', '司机姓名3', '性别3', '联系电话3', '车牌号3', '出发地点3', '到达地点3', '出发时间3', 3, 3, 3, '2022-03-31 17:19:51', '备注3', '用户账号3', '用户姓名3', '手机号码3', '未支付'),
	(74, '2022-03-31 09:19:51', '司机账号4', '司机姓名4', '性别4', '联系电话4', '车牌号4', '出发地点4', '到达地点4', '出发时间4', 4, 4, 4, '2022-03-31 17:19:51', '备注4', '用户账号4', '用户姓名4', '手机号码4', '未支付'),
	(75, '2022-03-31 09:19:51', '司机账号5', '司机姓名5', '性别5', '联系电话5', '车牌号5', '出发地点5', '到达地点5', '出发时间5', 5, 5, 5, '2022-03-31 17:19:51', '备注5', '用户账号5', '用户姓名5', '手机号码5', '未支付'),
	(76, '2022-03-31 09:19:51', '司机账号6', '司机姓名6', '性别6', '联系电话6', '车牌号6', '出发地点6', '到达地点6', '出发时间6', 6, 6, 6, '2022-03-31 17:19:51', '备注6', '用户账号6', '用户姓名6', '手机号码6', '未支付'),
	(1648718485241, '2022-03-31 09:21:24', '司机账号1', '司机姓名1', '性别1', '联系电话1', '车牌号1', '出发地点1', '到达地点1', '2022-03-31 17:19:51', 1, 1, 1, '2022-03-31 17:21:16', '', '用户账号1', '用户姓名1', '13823888881', '未支付'),
	(1648740504651, '2022-03-31 15:28:24', '003', '李四', '男', '13823833336', '粤A55556', '广州', '深圳', '2022-04-02 08:00:00', 120, 1, 120, '2022-03-31 23:27:41', '', '002', '张三', '13823877744', '已支付');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740006828 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `addtime`, `shangjiazhanghao`, `mima`, `shangjiamingcheng`, `tupian`, `lianxiren`, `lianxidianhua`, `shangjiadizhi`) VALUES
	(31, '2022-03-31 09:19:51', '商家1', '123456', '商家名称1', 'upload/shangjia_tupian1.jpg', '联系人1', '13823888881', '商家地址1'),
	(32, '2022-03-31 09:19:51', '商家2', '123456', '商家名称2', 'upload/shangjia_tupian2.jpg', '联系人2', '13823888882', '商家地址2'),
	(33, '2022-03-31 09:19:51', '商家3', '123456', '商家名称3', 'upload/shangjia_tupian3.jpg', '联系人3', '13823888883', '商家地址3'),
	(34, '2022-03-31 09:19:51', '商家4', '123456', '商家名称4', 'upload/shangjia_tupian4.jpg', '联系人4', '13823888884', '商家地址4'),
	(35, '2022-03-31 09:19:51', '商家5', '123456', '商家名称5', 'upload/shangjia_tupian5.jpg', '联系人5', '13823888885', '商家地址5'),
	(36, '2022-03-31 09:19:51', '商家6', '123456', '商家名称6', 'upload/shangjia_tupian6.jpg', '联系人6', '13823888886', '商家地址6'),
	(1648740006827, '2022-03-31 15:20:06', '004', '123456', '新作商家', 'upload/1648740111535.webp', '陈先生', '13823866662', '人民北路5号');

DROP TABLE IF EXISTS `siji`;
CREATE TABLE IF NOT EXISTS `siji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) NOT NULL COMMENT '司机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijizhanghao` (`sijizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648739977381 DEFAULT CHARSET=utf8mb3 COMMENT='司机';

DELETE FROM `siji`;
INSERT INTO `siji` (`id`, `addtime`, `sijizhanghao`, `mima`, `sijixingming`, `touxiang`, `xingbie`, `lianxidianhua`, `chepaihao`) VALUES
	(21, '2022-03-31 09:19:51', '司机1', '123456', '司机姓名1', 'upload/siji_touxiang1.jpg', '男', '13823888881', '车牌号1'),
	(22, '2022-03-31 09:19:51', '司机2', '123456', '司机姓名2', 'upload/siji_touxiang2.jpg', '男', '13823888882', '车牌号2'),
	(23, '2022-03-31 09:19:51', '司机3', '123456', '司机姓名3', 'upload/siji_touxiang3.jpg', '男', '13823888883', '车牌号3'),
	(24, '2022-03-31 09:19:51', '司机4', '123456', '司机姓名4', 'upload/siji_touxiang4.jpg', '男', '13823888884', '车牌号4'),
	(25, '2022-03-31 09:19:51', '司机5', '123456', '司机姓名5', 'upload/siji_touxiang5.jpg', '男', '13823888885', '车牌号5'),
	(26, '2022-03-31 09:19:51', '司机6', '123456', '司机姓名6', 'upload/siji_touxiang6.jpg', '男', '13823888886', '车牌号6'),
	(1648739977380, '2022-03-31 15:19:37', '003', '123456', '李四', 'upload/1648740022645.webp', '男', '13823833336', '粤A55556');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户账号1', 'yonghu', '用户', 'zsdj8rkx3owj7uqrdlthjn4rkvfdxqi4', '2022-03-31 09:21:07', '2024-06-09 09:35:14'),
	(2, 12, '用户账号2', 'yonghu', '用户', '5j5yf92c5qhofbx0rfg4w6gbw4p2wara', '2022-03-31 15:10:00', '2022-03-31 16:10:01'),
	(3, 1, 'abo', 'users', '管理员', 't742m5ema97dzp2otjg3aykn3gr4ktsc', '2022-03-31 15:10:48', '2024-06-09 09:33:59'),
	(4, 1648739906472, '001', 'yonghu', '用户', 't39k1tfnd569wkilz61kyqdt1xh5tm9b', '2022-03-31 15:18:48', '2022-03-31 16:30:54'),
	(5, 1648739977380, '003', 'siji', '司机', 'it3k4wjzqvoknn9ctsiwaptsjkxo239y', '2022-03-31 15:20:15', '2022-03-31 16:32:06'),
	(6, 1648740006827, '004', 'shangjia', '商家', 'u1i1azlcg732eex2m88u9cyxkzqvwbgy', '2022-03-31 15:21:39', '2022-03-31 16:32:21'),
	(7, 1648739921896, '002', 'yonghu', '用户', '6v3gmtccmnrl6y347c56kabb0y44a6o6', '2022-03-31 15:26:36', '2022-03-31 16:32:53'),
	(8, 21, '司机1', 'siji', '司机', '2i0w4bxpsphqxbk49ovby1y0hnxho3pj', '2024-06-09 08:30:08', '2024-06-09 09:35:27'),
	(9, 31, '商家1', 'shangjia', '商家', 'jitah57wpq68kg4sxjq5r089chkd4vdr', '2024-06-09 08:35:38', '2024-06-09 09:35:39');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-03-31 09:19:51');

DROP TABLE IF EXISTS `xianzhijiaoyi`;
CREATE TABLE IF NOT EXISTS `xianzhijiaoyi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `wupinzhuangtai` varchar(200) DEFAULT NULL COMMENT '物品状态',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740373034 DEFAULT CHARSET=utf8mb3 COMMENT='闲置交易';

DELETE FROM `xianzhijiaoyi`;
INSERT INTO `xianzhijiaoyi` (`id`, `addtime`, `wupinmingcheng`, `wupintupian`, `xinjiuchengdu`, `jiage`, `shuliang`, `wupinxiangqing`, `wupinzhuangtai`, `fabushijian`, `yonghuzhanghao`, `yonghuxingming`, `shoujihaoma`) VALUES
	(91, '2022-03-31 09:19:51', '物品名称1', 'upload/xianzhijiaoyi_wupintupian1.jpg', '新旧程度1', 1, 1, '物品详情1', '未交易', '2022-03-31 17:19:51', '用户账号1', '用户姓名1', '手机号码1'),
	(92, '2022-03-31 09:19:51', '物品名称2', 'upload/xianzhijiaoyi_wupintupian2.jpg', '新旧程度2', 2, 2, '物品详情2', '未交易', '2022-03-31 17:19:51', '用户账号2', '用户姓名2', '手机号码2'),
	(93, '2022-03-31 09:19:51', '物品名称3', 'upload/xianzhijiaoyi_wupintupian3.jpg', '新旧程度3', 3, 3, '物品详情3', '未交易', '2022-03-31 17:19:51', '用户账号3', '用户姓名3', '手机号码3'),
	(94, '2022-03-31 09:19:51', '物品名称4', 'upload/xianzhijiaoyi_wupintupian4.jpg', '新旧程度4', 4, 4, '物品详情4', '未交易', '2022-03-31 17:19:51', '用户账号4', '用户姓名4', '手机号码4'),
	(95, '2022-03-31 09:19:51', '物品名称5', 'upload/xianzhijiaoyi_wupintupian5.jpg', '新旧程度5', 5, 5, '物品详情5', '未交易', '2022-03-31 17:19:51', '用户账号5', '用户姓名5', '手机号码5'),
	(96, '2022-03-31 09:19:51', '物品名称6', 'upload/xianzhijiaoyi_wupintupian6.jpg', '新旧程度6', 6, 6, '物品详情6', '未交易', '2022-03-31 17:19:51', '用户账号6', '用户姓名6', '手机号码6'),
	(1648740373033, '2022-03-31 15:26:12', '二手电脑', 'upload/1648740342565.webp', '八成新', 1800, 1, '<p>输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情<img src="http://localhost:8080/springbootsb00r/upload/1648740370665.webp"></p>', '已交易', '2022-03-31 23:24:56', '001', '王强', '13823899996');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648739921897 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuzhanghao`, `mima`, `yonghuxingming`, `touxiang`, `xingbie`, `shoujihaoma`) VALUES
	(11, '2022-03-31 09:19:51', '用户1', '123456', '用户姓名1', 'upload/yonghu_touxiang1.jpg', '男', '13823888881'),
	(12, '2022-03-31 09:19:51', '用户2', '123456', '用户姓名2', 'upload/yonghu_touxiang2.jpg', '男', '13823888882'),
	(13, '2022-03-31 09:19:51', '用户3', '123456', '用户姓名3', 'upload/yonghu_touxiang3.jpg', '男', '13823888883'),
	(14, '2022-03-31 09:19:51', '用户4', '123456', '用户姓名4', 'upload/yonghu_touxiang4.jpg', '男', '13823888884'),
	(15, '2022-03-31 09:19:51', '用户5', '123456', '用户姓名5', 'upload/yonghu_touxiang5.jpg', '男', '13823888885'),
	(16, '2022-03-31 09:19:51', '用户6', '123456', '用户姓名6', 'upload/yonghu_touxiang6.jpg', '男', '13823888886'),
	(1648739906472, '2022-03-31 15:18:26', '001', '123456', '王强', 'upload/1648739940320.jpg', '男', '13823899996'),
	(1648739921896, '2022-03-31 15:18:41', '002', '123456', '张三', 'upload/1648740409424.jpg', '男', '13823877744');

DROP TABLE IF EXISTS `zuduipinche`;
CREATE TABLE IF NOT EXISTS `zuduipinche` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chufadidian` varchar(200) DEFAULT NULL COMMENT '出发地点',
  `daodadidian` varchar(200) DEFAULT NULL COMMENT '到达地点',
  `danrenfeiyong` int DEFAULT NULL COMMENT '单人费用',
  `zuoweishu` int DEFAULT NULL COMMENT '座位数',
  `chufashijian` datetime DEFAULT NULL COMMENT '出发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740070468 DEFAULT CHARSET=utf8mb3 COMMENT='组队拼车';

DELETE FROM `zuduipinche`;
INSERT INTO `zuduipinche` (`id`, `addtime`, `sijizhanghao`, `sijixingming`, `xingbie`, `lianxidianhua`, `chepaihao`, `tupian`, `chufadidian`, `daodadidian`, `danrenfeiyong`, `zuoweishu`, `chufashijian`) VALUES
	(61, '2022-03-31 09:19:51', '司机账号1', '司机姓名1', '性别1', '联系电话1', '车牌号1', 'upload/zuduipinche_tupian1.jpg', '出发地点1', '到达地点1', 1, 0, '2022-03-31 17:19:51'),
	(62, '2022-03-31 09:19:51', '司机账号2', '司机姓名2', '性别2', '联系电话2', '车牌号2', 'upload/zuduipinche_tupian2.jpg', '出发地点2', '到达地点2', 2, 2, '2022-03-31 17:19:51'),
	(63, '2022-03-31 09:19:51', '司机账号3', '司机姓名3', '性别3', '联系电话3', '车牌号3', 'upload/zuduipinche_tupian3.jpg', '出发地点3', '到达地点3', 3, 3, '2022-03-31 17:19:51'),
	(64, '2022-03-31 09:19:51', '司机账号4', '司机姓名4', '性别4', '联系电话4', '车牌号4', 'upload/zuduipinche_tupian4.jpg', '出发地点4', '到达地点4', 4, 4, '2022-03-31 17:19:51'),
	(65, '2022-03-31 09:19:51', '司机账号5', '司机姓名5', '性别5', '联系电话5', '车牌号5', 'upload/zuduipinche_tupian5.jpg', '出发地点5', '到达地点5', 5, 5, '2022-03-31 17:19:51'),
	(66, '2022-03-31 09:19:51', '司机账号6', '司机姓名6', '性别6', '联系电话6', '车牌号6', 'upload/zuduipinche_tupian6.jpg', '出发地点6', '到达地点6', 6, 6, '2022-03-31 17:19:51'),
	(1648740070467, '2022-03-31 15:21:10', '003', '李四', '男', '13823833336', '粤A55556', 'upload/1648740045327.jpg', '广州', '深圳', 120, 2, '2022-04-02 08:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
