/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssma12630gxkyglxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-04-20 02:47:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `chuangzuochengguo`
-- ----------------------------
DROP TABLE IF EXISTS `chuangzuochengguo`;
CREATE TABLE `chuangzuochengguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `niandu` varchar(50) NOT NULL DEFAULT '' COMMENT '年度',
  `xueke` varchar(50) NOT NULL DEFAULT '' COMMENT '学科',
  `huojiangzhe` varchar(50) NOT NULL DEFAULT '' COMMENT '获奖者',
  `chengguomingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '成果名称',
  `huojiangmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '获奖名称',
  `beizhu` text NOT NULL COMMENT '备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='创作成果';

-- ----------------------------
-- Records of chuangzuochengguo
-- ----------------------------
INSERT INTO `chuangzuochengguo` VALUES ('1', '2022', 'xx学科', '杨纪红', 'XXX教学成果', '我的获奖测试', '备注备注备注备注', '001', '2022-04-20 02:17:51', '是');
INSERT INTO `chuangzuochengguo` VALUES ('2', '2022', 'xXXXx学科', '饶霁云', 'XXX教学成果22', '获奖名获奖名获奖名获奖名', '备注备注备注备注', '002', '2022-04-20 02:43:46', '是');

-- ----------------------------
-- Table structure for `huojiangchengguo`
-- ----------------------------
DROP TABLE IF EXISTS `huojiangchengguo`;
CREATE TABLE `huojiangchengguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chengguomingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '成果名称',
  `huojiangjibie` varchar(50) NOT NULL COMMENT '获奖级别',
  `huojiangdengji` varchar(50) NOT NULL DEFAULT '' COMMENT '获奖等级',
  `huojiangchengyuan` varchar(255) NOT NULL COMMENT '获奖成员',
  `pizhundanwei` varchar(255) NOT NULL DEFAULT '' COMMENT '批准单位',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='获奖成果';

-- ----------------------------
-- Records of huojiangchengguo
-- ----------------------------
INSERT INTO `huojiangchengguo` VALUES ('1', 'XXX教学成果', '二类', '二等奖', '张三,李四', 'xxx单位', '001', '2022-04-20 02:16:29', '是');
INSERT INTO `huojiangchengguo` VALUES ('2', 'XXX教学成果22', '二类', '二等奖', '张三,李四', 'xxx单位', '002', '2022-04-20 02:42:34', '是');

-- ----------------------------
-- Table structure for `jiandingchengguo`
-- ----------------------------
DROP TABLE IF EXISTS `jiandingchengguo`;
CREATE TABLE `jiandingchengguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chengguomingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '成果名称',
  `jiandinghao` varchar(50) NOT NULL DEFAULT '' COMMENT '鉴定号',
  `jiandingxingshi` varchar(50) NOT NULL DEFAULT '' COMMENT '鉴定形式',
  `jiandingdanwei` varchar(50) NOT NULL DEFAULT '' COMMENT '鉴定单位',
  `jiandingriqi` varchar(50) NOT NULL DEFAULT '' COMMENT '鉴定日期',
  `jiandingpizhunriqi` varchar(50) NOT NULL DEFAULT '' COMMENT '鉴定批准日期',
  `beizhu` text NOT NULL COMMENT '备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='鉴定成果';

-- ----------------------------
-- Records of jiandingchengguo
-- ----------------------------
INSERT INTO `jiandingchengguo` VALUES ('1', 'XXX教学成果', '123213', '会议', 'XXX单位', '2022-4-14', '2022-4-14', '备注备注备注备注', '001', '2022-04-20 02:17:32', '是');
INSERT INTO `jiandingchengguo` VALUES ('2', 'XXX鉴定成果', '1232133231', '会议', 'XXX单位', '2022-4-16', '2022-4-19', '备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注', '002', '2022-04-20 02:43:33', '是');

-- ----------------------------
-- Table structure for `jingfei`
-- ----------------------------
DROP TABLE IF EXISTS `jingfei`;
CREATE TABLE `jingfei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xiangmuid` int(10) unsigned NOT NULL COMMENT '项目id',
  `xiangmubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `zhouqi` varchar(255) NOT NULL DEFAULT '' COMMENT '周期',
  `hetong` varchar(255) NOT NULL DEFAULT '' COMMENT '合同',
  `dangqianzonge` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当前总额',
  `shangjieyu` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '尚结余',
  `shenqingjingfei` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '申请经费',
  `shenqingshiyongshijian` varchar(25) NOT NULL COMMENT '申请使用时间',
  `shiyongkeyanjingfeiyuanyin` text NOT NULL COMMENT '使用科研经费原因',
  `jingfeizhichusuoshu` text NOT NULL COMMENT '经费支出所属',
  `zhuangtai` varchar(50) NOT NULL COMMENT '状态',
  `shenqingren` varchar(64) NOT NULL DEFAULT '' COMMENT '申请人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `jingfei_xiangmuid_index` (`xiangmuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='经费';

-- ----------------------------
-- Records of jingfei
-- ----------------------------
INSERT INTO `jingfei` VALUES ('1', '1', '04200203182067', '测试项目', '2', 'upload/20220420/2491650391756643.docx', '123.00', '32.00', '1233.00', '2022-04-27', '使用科研经费原因使用科研经费原因使用科研经费原因', '经费支出所属经费支出所属经费支出所属', '通过', '001', '2022-04-20 02:09:28');
INSERT INTO `jingfei` VALUES ('2', '2', '04200235402045', '北京市XX路人行道工程', '3', 'upload/20220420/69281650393526658.docx', '1000.00', '50.00', '2000.00', '2022-04-21', '使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因', '经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属', '通过', '002', '2022-04-20 02:39:03');

-- ----------------------------
-- Table structure for `jingfeishenhe`
-- ----------------------------
DROP TABLE IF EXISTS `jingfeishenhe`;
CREATE TABLE `jingfeishenhe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jingfeiid` int(10) unsigned NOT NULL COMMENT '经费id',
  `xiangmubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `shenqingjingfei` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '申请经费',
  `dangqianzonge` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当前总额',
  `shangjieyu` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '尚结余',
  `shenqingshiyongshijian` varchar(25) NOT NULL COMMENT '申请使用时间',
  `shiyongkeyanjingfeiyuanyin` text NOT NULL COMMENT '使用科研经费原因',
  `jingfeizhichusuoshu` text NOT NULL COMMENT '经费支出所属',
  `shenqingren` varchar(64) NOT NULL DEFAULT '' COMMENT '申请人',
  `shenhe` varchar(50) NOT NULL COMMENT '审核',
  `beizhu` text NOT NULL COMMENT '备注',
  `shenheren` varchar(64) NOT NULL DEFAULT '' COMMENT '审核人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `jingfeishenhe_jingfeiid_index` (`jingfeiid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='经费审核';

-- ----------------------------
-- Records of jingfeishenhe
-- ----------------------------
INSERT INTO `jingfeishenhe` VALUES ('1', '1', '04200203182067', '测试项目', '1233.00', '123.00', '32.00', '2022-04-27', '使用科研经费原因使用科研经费原因使用科研经费原因', '经费支出所属经费支出所属经费支出所属', '001', '通过', '测试', 'admin', '2022-04-20 02:11:00');
INSERT INTO `jingfeishenhe` VALUES ('2', '2', '04200235402045', '北京市XX路人行道工程', '2000.00', '1000.00', '50.00', '2022-04-21', '使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因使用科研经费原因', '经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属经费支出所属', '002', '通过', '测试', 'admin', '2022-04-20 02:39:27');

-- ----------------------------
-- Table structure for `keyankaohe`
-- ----------------------------
DROP TABLE IF EXISTS `keyankaohe`;
CREATE TABLE `keyankaohe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xiangmuid` int(10) unsigned NOT NULL COMMENT '项目id',
  `xiangmubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `qiriqi` varchar(25) NOT NULL COMMENT '起日期',
  `zhiriqi` varchar(25) NOT NULL COMMENT '止日期',
  `chengguoxingshi` varchar(255) NOT NULL DEFAULT '' COMMENT '成果形式',
  `kaifarenyuan` varchar(64) NOT NULL DEFAULT '' COMMENT '开发人员',
  `kaifarenyuanxingming` varchar(50) NOT NULL DEFAULT '' COMMENT '开发人员姓名',
  `kaohejieguo` text NOT NULL COMMENT '考核结果',
  `huodejiangli` varchar(255) NOT NULL COMMENT '获得奖励',
  `huodejifen` int(11) NOT NULL DEFAULT '0' COMMENT '获得积分',
  `kaoheren` varchar(64) NOT NULL DEFAULT '' COMMENT '考核人',
  PRIMARY KEY (`id`),
  KEY `keyankaohe_xiangmuid_index` (`xiangmuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='科研考核';

-- ----------------------------
-- Records of keyankaohe
-- ----------------------------
INSERT INTO `keyankaohe` VALUES ('1', '1', '04200203182067', '测试项目', '2022-04-20', '2022-04-29', '成果形式', '001', '杨纪红', '好', '奖励1,奖励2', '123', 'admin');
INSERT INTO `keyankaohe` VALUES ('2', '2', '04200235402045', '北京市XX路人行道工程', '2022-04-20', '2022-04-21', 'xxx形式', '002', '饶霁云', '考核结果考核结果考核结果考核结果', '奖励1,奖励2', '200', 'admin');

-- ----------------------------
-- Table structure for `keyanrenyuan`
-- ----------------------------
DROP TABLE IF EXISTS `keyanrenyuan`;
CREATE TABLE `keyanrenyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `yuanxi` varchar(255) NOT NULL DEFAULT '' COMMENT '院系',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `youxiang` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='科研人员';

-- ----------------------------
-- Records of keyanrenyuan
-- ----------------------------
INSERT INTO `keyanrenyuan` VALUES ('1', '001', '001', '杨纪红', '男', 'XXX院XX系', '12355123555', '13800138000@163.com', '440303198309302415', 'upload/20220420/17241650391306138.jpg');
INSERT INTO `keyanrenyuan` VALUES ('2', '002', '002', '饶霁云', '男', 'XXX院XX系', '12388123888', '1235@qq.com', '440303198309302415', 'upload/20220420/4021650391322577.gif');
INSERT INTO `keyanrenyuan` VALUES ('3', '003', '003', '蒲亚娟', '男', '1XXX院X2X系', '12355123555', '1235@qq.com', '510421198706247567', 'upload/20220420/51881650391349210.jpg');
INSERT INTO `keyanrenyuan` VALUES ('4', '004', '004', '张晓玲', '男', '1X23XX院X232X系', '12366123549', '13800138000@163.com', '433100199207278720', 'upload/20220420/33391650393291886.jpg');

-- ----------------------------
-- Table structure for `lunwenchengguo`
-- ----------------------------
DROP TABLE IF EXISTS `lunwenchengguo`;
CREATE TABLE `lunwenchengguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lunwenbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '论文编号',
  `lunwentimu` varchar(255) NOT NULL DEFAULT '' COMMENT '论文题目',
  `diyizuozhe` varchar(50) NOT NULL DEFAULT '' COMMENT '第一作者',
  `tongxunzuozhe` varchar(50) NOT NULL DEFAULT '' COMMENT '通讯作者',
  `fabiaochubanshijian` varchar(50) NOT NULL DEFAULT '' COMMENT '发表出版时间',
  `fabiaokanwulunwenji` varchar(50) NOT NULL DEFAULT '' COMMENT '发表刊物论文集',
  `addtime` varchar(255) NOT NULL DEFAULT '' COMMENT '刊物类型',
  `xuekefenlei` varchar(50) NOT NULL COMMENT '学科分类',
  `juanhao` varchar(50) NOT NULL DEFAULT '' COMMENT '卷号',
  `qihao` varchar(50) NOT NULL DEFAULT '' COMMENT '期号',
  `zishu` varchar(50) NOT NULL DEFAULT '' COMMENT '字数',
  `yemafanwei` varchar(50) NOT NULL DEFAULT '' COMMENT '页码范围',
  `fujian` varchar(255) NOT NULL DEFAULT '' COMMENT '附件',
  `jianjie` text NOT NULL COMMENT '简介',
  `tianjiarenxingming` varchar(50) NOT NULL DEFAULT '' COMMENT '添加人姓名',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='论文成果';

-- ----------------------------
-- Records of lunwenchengguo
-- ----------------------------
INSERT INTO `lunwenchengguo` VALUES ('1', '04200211561650', '论文题目测试', '张三', '李四', '2022-11-1', '发表刊物论文集', '刊物', '科技类', '123', '3122', '1233213', '12', 'upload/20220420/74621650391958841.docx', '简介简介简介简介简介简介简介简介简介', '杨纪红', '001', '是');
INSERT INTO `lunwenchengguo` VALUES ('2', '04200240591645', '论文题目测试21', '张三1', '李四2', '2022-11-3', '发表刊物论文集', '刊物', '社科类', '123213', '1233211', '1231', '32', 'upload/20220420/67571650393687458.docx', '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介', '饶霁云', '002', '是');

-- ----------------------------
-- Table structure for `tonggao`
-- ----------------------------
DROP TABLE IF EXISTS `tonggao`;
CREATE TABLE `tonggao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `neirong` longtext NOT NULL COMMENT '内容',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='通告';

-- ----------------------------
-- Records of tonggao
-- ----------------------------
INSERT INTO `tonggao` VALUES ('1', '04200235013179', '通告测试', 'upload/20220420/35601650393311441.png', '<p>通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试通告测试</p>', 'admin');

-- ----------------------------
-- Table structure for `wuzi`
-- ----------------------------
DROP TABLE IF EXISTS `wuzi`;
CREATE TABLE `wuzi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `wuzimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '物资名称',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `kucunshuliang` int(11) NOT NULL DEFAULT '0' COMMENT '库存数量',
  `wuziyongchu` text NOT NULL COMMENT '物资用处',
  `miaoshu` text NOT NULL COMMENT '描述',
  `caozuoren` varchar(64) NOT NULL DEFAULT '' COMMENT '操作人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `wuzi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='物资';

-- ----------------------------
-- Records of wuzi
-- ----------------------------
INSERT INTO `wuzi` VALUES ('1', '04200245452224', '物资名称1', '2', '123', '物资用处物资用处物资用处', '描述描述描述', 'admin', '2022-04-20 02:45:58');
INSERT INTO `wuzi` VALUES ('2', '04200246253103', '我的物资1', '2', '100', '我的物资1我的物资1我的物资1我的物资1我的物资1我的物资1我的物资1', '我的物资1我的物资1我的物资1我的物资1我的物资1我的物资1', '002', '2022-04-20 02:46:35');

-- ----------------------------
-- Table structure for `wuzifenlei`
-- ----------------------------
DROP TABLE IF EXISTS `wuzifenlei`;
CREATE TABLE `wuzifenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='物资分类';

-- ----------------------------
-- Records of wuzifenlei
-- ----------------------------
INSERT INTO `wuzifenlei` VALUES ('1', '测试分类1', '2022-04-20 02:45:39');
INSERT INTO `wuzifenlei` VALUES ('2', '其他', '2022-04-20 02:45:42');

-- ----------------------------
-- Table structure for `xiangmu`
-- ----------------------------
DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE `xiangmu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xiangmubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `qiriqi` varchar(25) NOT NULL COMMENT '起日期',
  `zhiriqi` varchar(25) NOT NULL COMMENT '止日期',
  `chengguoxingshi` varchar(255) NOT NULL DEFAULT '' COMMENT '成果形式',
  `kaifarenyuan` varchar(64) NOT NULL DEFAULT '' COMMENT '开发人员',
  `kaifarenyuanxingming` varchar(50) NOT NULL DEFAULT '' COMMENT '开发人员姓名',
  `shenqingjingfei` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '申请经费',
  `xiangmuzuzhuyaochengyuan` text NOT NULL COMMENT '项目组主要成员',
  `xiangmuxiangqingshuoming` longtext NOT NULL COMMENT '项目详情说明',
  `zhuangtai` varchar(50) NOT NULL COMMENT '状态',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='项目';

-- ----------------------------
-- Records of xiangmu
-- ----------------------------
INSERT INTO `xiangmu` VALUES ('1', '04200203182067', '测试项目', '2022-04-20', '2022-04-29', '成果形式', '001', '杨纪红', '1111.00', '002,001', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">项目详情说明</span></p>', '通过', '2022-04-20 02:03:41');
INSERT INTO `xiangmu` VALUES ('2', '04200235402045', '北京市XX路人行道工程', '2022-04-20', '2022-04-21', 'xxx形式', '002', '饶霁云', '666.00', '003,002', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, sans-serif, Arial, &quot;Times New Roman&quot;, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 14px; font-weight: 700; text-align: right; white-space: normal;\">目详情说明</span></p>', '通过', '2022-04-20 02:36:09');

-- ----------------------------
-- Table structure for `xiangmushenhe`
-- ----------------------------
DROP TABLE IF EXISTS `xiangmushenhe`;
CREATE TABLE `xiangmushenhe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xiangmuid` int(10) unsigned NOT NULL COMMENT '项目id',
  `xiangmubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `kaifarenyuan` varchar(64) NOT NULL DEFAULT '' COMMENT '开发人员',
  `kaifarenyuanxingming` varchar(50) NOT NULL DEFAULT '' COMMENT '开发人员姓名',
  `shenhe` varchar(50) NOT NULL COMMENT '审核',
  `beizhu` text NOT NULL COMMENT '备注',
  `shenheren` varchar(50) NOT NULL DEFAULT '' COMMENT '审核人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `xiangmushenhe_xiangmuid_index` (`xiangmuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='项目审核';

-- ----------------------------
-- Records of xiangmushenhe
-- ----------------------------
INSERT INTO `xiangmushenhe` VALUES ('1', '1', '04200203182067', '测试项目', '001', '杨纪红', '通过', '测试', 'admin', '2022-04-20 02:08:18');
INSERT INTO `xiangmushenhe` VALUES ('2', '2', '04200235402045', '北京市XX路人行道工程', '002', '饶霁云', '通过', '测试', 'admin', '2022-04-20 02:38:23');

-- ----------------------------
-- Table structure for `xueshuhuodong`
-- ----------------------------
DROP TABLE IF EXISTS `xueshuhuodong`;
CREATE TABLE `xueshuhuodong` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xiangmuid` int(10) unsigned NOT NULL COMMENT '项目id',
  `xiangmubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `qiriqi` varchar(25) NOT NULL COMMENT '起日期',
  `zhiriqi` varchar(25) NOT NULL COMMENT '止日期',
  `kaifarenyuan` varchar(64) NOT NULL DEFAULT '' COMMENT '开发人员',
  `kaifarenyuanxingming` varchar(50) NOT NULL DEFAULT '' COMMENT '开发人员姓名',
  `huodongshumu` int(11) NOT NULL DEFAULT '0' COMMENT '学术活动数目',
  `beizhu` text NOT NULL COMMENT '备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `xueshuhuodong_xiangmuid_index` (`xiangmuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='学术活动';

-- ----------------------------
-- Records of xueshuhuodong
-- ----------------------------
INSERT INTO `xueshuhuodong` VALUES ('1', '1', '04200203182067', '测试项目', '2022-04-20', '2022-04-29', '001', '杨纪红', '123', '', 'admin', '2022-04-20 02:08:24');
INSERT INTO `xueshuhuodong` VALUES ('2', '2', '04200235402045', '北京市XX路人行道工程', '2022-04-20', '2022-04-21', '002', '饶霁云', '10', '备注备注备注', 'admin', '2022-04-20 02:40:10');

-- ----------------------------
-- Table structure for `zhuanlichengguo`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanlichengguo`;
CREATE TABLE `zhuanlichengguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chengguomingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '成果名称',
  `chengguoleibie` varchar(50) NOT NULL COMMENT '成果类别',
  `suoshuxueke` varchar(50) NOT NULL DEFAULT '' COMMENT '所属学科',
  `yituoxiangmu` varchar(255) NOT NULL COMMENT '依托项目',
  `zhuanlihao` varchar(50) NOT NULL DEFAULT '' COMMENT '专利号',
  `zhuanlijishufenzhi` varchar(50) NOT NULL COMMENT '专利技术分值',
  `benrenpaixu` varchar(50) NOT NULL COMMENT '本人排序',
  `shifoudiyidanwei` varchar(50) NOT NULL COMMENT '是否第一单位',
  `zhesuanhoufenzhi` int(11) NOT NULL DEFAULT '0' COMMENT '折算后分值',
  `fenzhifenpei` int(11) NOT NULL DEFAULT '0' COMMENT '分值分配',
  `beizhu` text NOT NULL COMMENT '备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='专利成果';

-- ----------------------------
-- Records of zhuanlichengguo
-- ----------------------------
INSERT INTO `zhuanlichengguo` VALUES ('1', 'XXX教学成果', '实用新型', 'XX学科', '项目,项目2', '12323213', '30', '第二', '是', '123', '123', '备注备注备注', '001', '2022-04-20 02:17:04', '是');
INSERT INTO `zhuanlichengguo` VALUES ('2', 'XXX教学成果22专利', '实用新型', 'XX学科', '项目1,项目2', '0020020123213', '30', '第二', '是', '123', '123', '测试', '002', '2022-04-20 02:43:00', '是');

-- ----------------------------
-- Table structure for `zhuzuochengguo`
-- ----------------------------
DROP TABLE IF EXISTS `zhuzuochengguo`;
CREATE TABLE `zhuzuochengguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zuozhexingming` varchar(50) NOT NULL DEFAULT '' COMMENT '作者姓名',
  `zhuzuomingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '著作名称',
  `xuekeleibie` varchar(50) NOT NULL DEFAULT '' COMMENT '学科类别',
  `yituoxiangmu` text NOT NULL COMMENT '依托项目',
  `zhuzuoshuzi` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '著作数字',
  `chubanshe` varchar(50) NOT NULL DEFAULT '' COMMENT '出版社',
  `isbnhao` varchar(50) NOT NULL DEFAULT '' COMMENT 'ISBN号',
  `chubansheleibie` varchar(50) NOT NULL COMMENT '出版社类别',
  `zhuzuoleibie` varchar(50) NOT NULL COMMENT '著作类别',
  `fenzhi` varchar(50) NOT NULL COMMENT '分值',
  `benrenpaixu` varchar(50) NOT NULL COMMENT '本人排序',
  `shifoudiyizuozhe` varchar(50) NOT NULL COMMENT '是否第一作者',
  `zhesuanhoufenzhi` int(11) NOT NULL DEFAULT '0' COMMENT '折算后分值',
  `fenzhifenpei` int(11) NOT NULL DEFAULT '0' COMMENT '分值分配',
  `guidanghao` varchar(50) NOT NULL DEFAULT '' COMMENT '归档号',
  `beizhu` text NOT NULL COMMENT '备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='著作成果';

-- ----------------------------
-- Records of zhuzuochengguo
-- ----------------------------
INSERT INTO `zhuzuochengguo` VALUES ('1', '杨纪红', '著作名著作名著作名', '类别', '依托项依托项依托项依托项依托项依托项', '12321.00', '出版社', '213213', 'A类', '其他编著', '30', '第三', '是', '213', '332', '123321', '备注备注备注备注', '001', '2022-04-20 02:15:17', '是');
INSERT INTO `zhuzuochengguo` VALUES ('2', '饶霁云', '著作名称*著作名称*', 'xx学科', '项目1、项目2', '123.00', 'xx出版社', '12321312', 'B类', '学术专著', '30', '第三', '是', '123', '123', '123321', '备注备注备注备注备注备注备注备注备注备注备注备注备注', '002', '2022-04-20 02:42:16', '否');
