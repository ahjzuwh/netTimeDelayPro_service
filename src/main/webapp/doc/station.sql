/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50735
Source Host           : localhost:3306
Source Database       : station

Target Server Type    : MYSQL
Target Server Version : 50735
File Encoding         : 65001

Date: 2021-12-06 17:23:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_daimjb
-- ----------------------------
DROP TABLE IF EXISTS `base_daimjb`;
CREATE TABLE `base_daimjb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `F_VC_DAIMMC` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_DAIMXH` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_SXBH` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_YSJBM` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_DAIMZ` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_DAIMJBH` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_DAIMJMC` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_BIAOZH` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_DAIMJBJ` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_DAIMSM` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT '业务编码',
  `F_VC_BEIZ` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `F_VC_CAOZR` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `F_DT_CAOZSJ` varchar(20) DEFAULT NULL,
  `F_NB_CAOZLX` int(11) DEFAULT NULL,
  `SSFL` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `BZ` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `LOCATION` int(11) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '00000' COMMENT '数据所属组织机构',
  `f_vc_daimz2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码集表';

-- ----------------------------
-- Records of base_daimjb
-- ----------------------------

-- ----------------------------
-- Table structure for base_dmjfl
-- ----------------------------
DROP TABLE IF EXISTS `base_dmjfl`;
CREATE TABLE `base_dmjfl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FLMC` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `FLBM` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `FLBH` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CJR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `CJSJ` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `LOCATION` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `BZ` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '00000' COMMENT '数据所属组织机构',
  `YWBM` varchar(40) DEFAULT NULL COMMENT '业务编码',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码集分类表';

-- ----------------------------
-- Records of base_dmjfl
-- ----------------------------

-- ----------------------------
-- Table structure for base_function_list
-- ----------------------------
DROP TABLE IF EXISTS `base_function_list`;
CREATE TABLE `base_function_list` (
  `indexno` varchar(40) NOT NULL COMMENT '编码',
  `packagepath` varchar(300) DEFAULT NULL COMMENT '路径包名',
  `clazz` varchar(100) DEFAULT NULL COMMENT '类名',
  `functionname` varchar(40) DEFAULT NULL COMMENT '方法名',
  `params` text COMMENT '参数list',
  `returndata` text COMMENT '返回数据',
  `content` text COMMENT '方法描述',
  `exp` text COMMENT '方法使用示例',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `createtime` varchar(40) DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT '1' COMMENT '状态',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`indexno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_function_list
-- ----------------------------

-- ----------------------------
-- Table structure for base_interface_list
-- ----------------------------
DROP TABLE IF EXISTS `base_interface_list`;
CREATE TABLE `base_interface_list` (
  `indexno` varchar(40) NOT NULL COMMENT '编码',
  `path` varchar(200) DEFAULT NULL COMMENT '路径',
  `name` varchar(100) DEFAULT NULL COMMENT '接口名称',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `createtime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `params` text COMMENT '参数',
  `returndata` text COMMENT '返回数据',
  `type` int(11) DEFAULT NULL COMMENT '类型：系统，通用，业务',
  `icode` varchar(40) DEFAULT NULL COMMENT '编号',
  `exp` text COMMENT '参数list',
  `sysname` varchar(40) DEFAULT NULL COMMENT '系统名',
  `ip` varchar(40) DEFAULT NULL COMMENT 'ip',
  `dk` varchar(10) DEFAULT NULL COMMENT '端口',
  `needtoken` int(11) DEFAULT NULL COMMENT '是否需要token',
  `selfsystem` int(11) DEFAULT NULL COMMENT '是否本系统',
  `tokenstr` varchar(100) DEFAULT NULL COMMENT 'token',
  `platformcode` varchar(40) DEFAULT NULL COMMENT '所属平台',
  PRIMARY KEY (`indexno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_interface_list
-- ----------------------------
INSERT INTO `base_interface_list` VALUES ('itfc202110280001', 'sadsadsa', 'sdsa dsad', 'superadmin', '2021-10-28 15:53:16', '0', '<p>dsadsadsadsa<br/></p>', '<p>dsadsadsadsads<br/></p>', '2', '20001', '[]', '', '', '', '0', '1', '', 'P_0099');

-- ----------------------------
-- Table structure for base_not_found
-- ----------------------------
DROP TABLE IF EXISTS `base_not_found`;
CREATE TABLE `base_not_found` (
  `indexno` varchar(40) DEFAULT NULL COMMENT '业务编码',
  `formurl` varchar(160) DEFAULT NULL COMMENT '找不到页面',
  `tourl` varchar(160) DEFAULT NULL COMMENT '跳转页面',
  `state` int(11) DEFAULT NULL COMMENT '状态 1 表示可用  0 表示不可用',
  `type` int(11) DEFAULT '0' COMMENT '0 表示完全匹配 1正则匹配',
  `totype` int(11) DEFAULT '0' COMMENT '0 转发 1重定向'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_not_found
-- ----------------------------

-- ----------------------------
-- Table structure for base_sys_cnf
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_cnf`;
CREATE TABLE `base_sys_cnf` (
  `PKEY` varchar(200) DEFAULT NULL COMMENT '主建',
  `PVAL` varchar(400) DEFAULT NULL COMMENT '值',
  `ENCRYPT` int(11) DEFAULT NULL COMMENT '是否加密',
  `ENCRYPTCODE` varchar(40) DEFAULT NULL COMMENT '加密密钥',
  `STATE` int(11) DEFAULT NULL COMMENT '状态',
  `UPDATETIME` varchar(19) DEFAULT NULL COMMENT '最后更新时间',
  `CNFPARAMSDES` varchar(100) DEFAULT NULL COMMENT '参数说明',
  `MODULENAME` varchar(100) DEFAULT NULL COMMENT '所属模块名称',
  `MODULCODE` varchar(10) DEFAULT NULL COMMENT '所属模块编码',
  UNIQUE KEY `PKEY` (`PKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of base_sys_cnf
-- ----------------------------
INSERT INTO `base_sys_cnf` VALUES ('APIADRESS', 'dc0c597a6209507c641e6a5d0a0109775206053d755e482b3213265f3e1951670c5a5354085e323e38002744621e1a5d351d585e370a0f093d1563537d1614630c5831393902', '1', '', '1', '2020-12-17 10:22:23', '云端默认连接', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('ATWXUSER', 'ca42c14d6972140d', '1', '', '1', '2020-12-17 10:22:23', '微信用户自动创建', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('BASEDBNAME', '', '1', '', '1', '2020-12-17 10:22:23', '系统数据库', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('BASEDIR', 'bbf7ea286a1e6227064f67673641634a0a081b5719', '1', '', '1', '2020-12-17 10:22:23', '日志根目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('CLOUDKEY', '6a7e789a590b33477d58724c233f2b16740e014f7f287213', '1', '', '1', '2020-12-17 10:22:23', '云端账号', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('CLOUDPASS', '43071be5ea2b3e753d2f166244266174592f1c1b73', '1', '', '1', '2020-12-17 10:22:23', '云端密码', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('CONSOLELOGPATH', '4f477b3bb01379773b201e743214027179', '1', '', '1', '2020-12-17 10:22:23', '信息日志目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('DBBAK', 'b8847d06056f', '1', '', '1', '2020-12-17 10:22:23', '是否备份数据库', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('DEBUG', 'e6529fb07e38570d', '1', '', '1', '2020-12-17 10:22:23', 'Debug开启模式', 'Debug配置', '0001');
INSERT INTO `base_sys_cnf` VALUES ('DEBUGLOGSAVEDAYS', 'ebfb69c33e3d13570e', '1', '', '1', '2020-12-17 10:22:23', 'DEBUG日志存放天数', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('DEBUGSQL', '75ddb72268595b', '1', '', '1', '2020-12-17 10:22:23', 'Sql打印开启模式', 'Debug配置', '0001');
INSERT INTO `base_sys_cnf` VALUES ('ERRLOGPATH', 'c10de86818695d', '1', '', '1', '2020-12-17 10:22:23', '错误日志目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('EXCEPTIONLOGPATH', 'd2b27e7d312b090e16130876206e0147', '1', '', '1', '2020-12-17 10:22:23', '异常日志目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('ISCLOUDSEVER', 'af536460097d6c0d6d', '1', '', '1', '2020-12-17 10:22:23', '是否云端服务', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('LOGLOOPMOD', '2ca86b757501', '1', '', '1', '2020-12-17 10:22:23', '日志循环周期', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('MQEYECLOUDIP', 'b129eb7d040628032b17051951662800347c457f146e5e', '1', '', '1', '2020-12-17 10:22:23', 'MQeye云台IP', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('MQEYECLOUDPORT', '1246ea78213f36132b2c5e10', '1', '', '1', '2020-12-17 10:22:23', 'MQeye云台端口', '云台配置', '0005');
INSERT INTO `base_sys_cnf` VALUES ('RUNPRO', 'b09860616d72', '1', '', '1', '2020-12-17 10:22:23', '生产模式', 'Debug配置', '0001');
INSERT INTO `base_sys_cnf` VALUES ('BUSINESSSCHEMA', '8ba7ea15b069392727333f633a25440651', '1', '', '1', '2020-12-17 10:22:23', '主业务数据库名称', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('SERVERDOMAIN', '8c2821304e59', '1', '', '1', '2020-12-17 10:22:23', '服务端链接', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('SQLLOGPATH', 'e606ae52505a2c43', '1', '', '1', '2020-12-17 10:22:23', 'SQL日志目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('SUGGESTLOGPATH', '136fe5f35d08443c0b37517b4a5d700e0f', '1', '', '1', '2020-12-17 10:22:23', '建议日志目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('TOKENSAVETIME', '102c211d251c3a2b5850', '1', '', '1', '2020-12-17 10:22:23', 'Token有效期', 'Token配置', '0004');
INSERT INTO `base_sys_cnf` VALUES ('TOKENSAVETYPE', '64c066160874', '1', '', '1', '2020-12-17 10:22:23', 'Token存储方式', 'Token配置', '0004');
INSERT INTO `base_sys_cnf` VALUES ('UCLOUD', '4581730115777c', '1', '', '1', '2020-12-17 10:22:23', '使用云端', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('UMQEYECLOUD', 'ea1a234974225957', '1', '', '1', '2020-12-17 10:22:23', '使用MQeye云台状态', '云台配置', '0003');
INSERT INTO `base_sys_cnf` VALUES ('USEWSSSH', 'b632fd580c030d6a', '1', '', '1', '2020-12-17 10:22:23', '是否使用SSH代理', 'SSH代理配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('VERIFYLOCKERRTIMES', 'f1b1d03d355b57', '1', '', '1', '2020-12-17 10:22:23', '账号密码连续错误锁定限制', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('VERIFYSHOWERRTIMES', 'b7f7b086651f476a05', '1', '', '1', '2020-12-17 10:22:23', '账号密码连续错误验证码限制', '系统配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('WARNLOGPATH', '22f6f3c40f5f351d034a0d4e', '1', '', '1', '2020-12-17 10:22:23', '告警日志目录', 'Logg配置', '0002');
INSERT INTO `base_sys_cnf` VALUES ('WSPORT', '8925b82304625e2f145957', '1', '', '1', '2020-12-17 10:22:23', 'WebSocket端口', '消息配置', '0005');
INSERT INTO `base_sys_cnf` VALUES ('WSSSHPORT', '7e722f7e2406085a297d5347', '1', '', '1', '2020-12-17 10:22:23', 'SSHWebSocket端口', 'SSH代理配置', '0000');
INSERT INTO `base_sys_cnf` VALUES ('WXAPIADRESS', '46de646025021363530c74047933727d2b00193d18191d79201d65466b77753f7d7d762a20112a585c7e3004540154423533281f75093450562b7656', '1', '', '1', '2020-12-17 10:22:23', '微信相关请求地址', '云台配置', '0005');
INSERT INTO `base_sys_cnf` VALUES ('WXSERVER', '670798fe4404310d05', '1', '', '1', '2020-12-17 10:22:23', '是否微信服务器', '云台配置', '0005');

-- ----------------------------
-- Table structure for base_upload
-- ----------------------------
DROP TABLE IF EXISTS `base_upload`;
CREATE TABLE `base_upload` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `INDEXNO` varchar(40) DEFAULT NULL COMMENT '唯一编码',
  `REFERID` int(11) DEFAULT NULL COMMENT '关联ID',
  `REFERINDEX` varchar(100) DEFAULT NULL COMMENT '关联INDEX',
  `URL` varchar(400) DEFAULT NULL COMMENT '文件存放路径',
  `FILETYPE` int(11) DEFAULT '0' COMMENT '文件类型 0:image 1:voice 2:video 3:thumb (仅支持不超过64KB，支持JPG格式)',
  `OLDNAME` varchar(100) DEFAULT NULL COMMENT '文件原名称',
  `FILENAME` varchar(100) DEFAULT NULL COMMENT '要显示的名称',
  `REFERMODULAR` varchar(40) DEFAULT NULL COMMENT '关联模块',
  `CREATER` varchar(40) DEFAULT NULL COMMENT '创建人',
  `CREATTIME` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `FILESTATE` int(11) DEFAULT NULL COMMENT '文件状态0默认有效的 -1不允许下载 1 收费下载 2特权下载',
  `INTEGRALCOST` int(11) DEFAULT NULL COMMENT '消耗积分情况',
  `ICON` varchar(20) DEFAULT NULL COMMENT '图标',
  `datagroup` varchar(20) NOT NULL DEFAULT '00000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`ID`),
  KEY `REFERID` (`REFERID`),
  KEY `REFERINDEX` (`REFERINDEX`),
  KEY `REFERMODULAR` (`REFERMODULAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='附件表';

-- ----------------------------
-- Records of base_upload
-- ----------------------------

-- ----------------------------
-- Table structure for base_user_extend
-- ----------------------------
DROP TABLE IF EXISTS `base_user_extend`;
CREATE TABLE `base_user_extend` (
  `loginname` varchar(40) NOT NULL COMMENT '用户账号',
  `usercode` varchar(40) DEFAULT NULL COMMENT '用户编号一般企业自用如工号',
  `bindmobil` varchar(40) DEFAULT NULL COMMENT '绑定手机',
  `bindemail` varchar(40) DEFAULT NULL COMMENT '绑定邮件',
  `bindqq` varchar(40) DEFAULT NULL COMMENT '绑定QQ',
  `bindwxopenid` varchar(800) DEFAULT NULL COMMENT '微信openid',
  `bindqywxopenid` varchar(800) DEFAULT NULL COMMENT '企业微信openid',
  `bindsocket` varchar(40) DEFAULT NULL COMMENT '绑定Socket',
  `bindwebsocket` varchar(40) DEFAULT NULL COMMENT '绑定WebSocket',
  `bindpushid` varchar(800) DEFAULT NULL COMMENT '绑定pushid',
  `authCode` varchar(100) DEFAULT NULL COMMENT '统一身份认证编码',
  `bindpushtag` varchar(200) DEFAULT NULL COMMENT '绑定的TAG',
  `bindpushalias` varchar(20) DEFAULT NULL COMMENT '绑定的别名',
  `mobilstate` int(11) DEFAULT NULL COMMENT '手机信息接收开关',
  `emailstate` int(11) DEFAULT NULL COMMENT '邮件接受开关',
  `qqstate` int(11) DEFAULT NULL COMMENT 'QQ接受开关',
  `userstate` int(11) DEFAULT NULL COMMENT '用户状态 ',
  `pushstate` int(11) DEFAULT NULL COMMENT '推送接受开关',
  `wxstate` int(11) NOT NULL COMMENT '微信接受开关',
  `qywxstate` int(11) DEFAULT NULL COMMENT '企业微信接受开关',
  `socketstate` int(11) DEFAULT NULL COMMENT 'Socket接受开关',
  `websocketstate` int(11) DEFAULT NULL COMMENT 'webSocket接受开关',
  `authState` int(11) DEFAULT NULL COMMENT '统一身份认证状态',
  `datagroup` varchar(40) NOT NULL DEFAULT '0000' COMMENT '数据归属',
  `ucode` varchar(40) DEFAULT NULL COMMENT '用户编码',
  `psw` varchar(200) DEFAULT NULL COMMENT '用户密码已加密',
  `idcard` varchar(20) DEFAULT NULL COMMENT '身份证号码',
  `idname` varchar(40) DEFAULT NULL COMMENT '身份证上的姓名',
  `paybindstate` int(11) DEFAULT NULL COMMENT '缴费管理信息认证绑定',
  `sign` varchar(200) DEFAULT NULL COMMENT '个人签名',
  `invitecode` varchar(20) DEFAULT NULL COMMENT '邀请码',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`loginname`,`datagroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='业务用户扩展表';

-- ----------------------------
-- Records of base_user_extend
-- ----------------------------
INSERT INTO `base_user_extend` VALUES ('admin', 'admin', '', '', null, null, null, '', '', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '000800010005', null, null, null, null, null, null, null, null);
INSERT INTO `base_user_extend` VALUES ('superadmin', 'superadmin', '', '', null, null, null, '', '', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '000800010005', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for base_user_link_msg
-- ----------------------------
DROP TABLE IF EXISTS `base_user_link_msg`;
CREATE TABLE `base_user_link_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增',
  `singid` varchar(160) DEFAULT NULL COMMENT '第三方登录唯一ID 相当于微信OpenId',
  `unionid` varchar(160) DEFAULT NULL COMMENT '第三方登录唯一全局ID 相当于微信UNIONID',
  `access_token` varchar(200) DEFAULT NULL COMMENT '认证token',
  `expires_in` varchar(20) DEFAULT NULL COMMENT '失效时间',
  `refresh_token` varchar(200) DEFAULT NULL COMMENT '刷新token',
  `link_system_type` varchar(20) DEFAULT NULL COMMENT '账号类型',
  `link_user` varchar(40) DEFAULT NULL COMMENT '关联sys_user表账号',
  `nick_name` varchar(20) DEFAULT NULL COMMENT '昵称',
  `sex` int(11) DEFAULT NULL COMMENT '性别 1 表示男性 0 表示女性',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(280) DEFAULT NULL COMMENT '图像',
  `privilege` varchar(20) DEFAULT NULL COMMENT '特权',
  `appid` varchar(100) DEFAULT NULL COMMENT '对应的APPid',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  `app_key` varchar(40) DEFAULT NULL COMMENT '数据所属应用编码',
  `state` int(11) DEFAULT '1' COMMENT '-1 表示拉黑',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方授权记录表';

-- ----------------------------
-- Records of base_user_link_msg
-- ----------------------------

-- ----------------------------
-- Table structure for business_app
-- ----------------------------
DROP TABLE IF EXISTS `business_app`;
CREATE TABLE `business_app` (
  `indexno` varchar(40) NOT NULL COMMENT '系统业务编码',
  `appcode` varchar(20) DEFAULT NULL COMMENT 'App编码',
  `datagroup` varchar(40) DEFAULT NULL COMMENT '数据归属单位',
  `appname` varchar(200) DEFAULT NULL COMMENT 'App名称',
  `appos` varchar(20) DEFAULT NULL COMMENT 'APP系统 Android IOS',
  `appversion` int(11) DEFAULT NULL COMMENT 'App版本',
  `appversioncode` varchar(20) DEFAULT NULL COMMENT 'App版本编码',
  `appfileurl` varchar(200) DEFAULT NULL COMMENT 'App对应的下载',
  `appupdatedesc` varchar(400) DEFAULT NULL COMMENT '更新描述',
  `appupdatetime` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `mustupload` int(11) DEFAULT '0' COMMENT '标记是否为必须强制更新',
  `serverversion` int(11) DEFAULT NULL COMMENT 'App对应服务端版本',
  `serverversioncode` varchar(20) DEFAULT NULL COMMENT 'App对应服务端版本编码',
  `state` int(11) DEFAULT '0' COMMENT '状态 -1 下架 0 待审核 1 上架',
  PRIMARY KEY (`indexno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='终端APP表';

-- ----------------------------
-- Records of business_app
-- ----------------------------

-- ----------------------------
-- Table structure for business_app_cnf
-- ----------------------------
DROP TABLE IF EXISTS `business_app_cnf`;
CREATE TABLE `business_app_cnf` (
  `appCode` varchar(40) NOT NULL COMMENT 'APP编码',
  `bindWebSocketNO` varchar(40) DEFAULT NULL COMMENT '绑定WebSocket编码',
  `bindSocketNO` varchar(40) DEFAULT NULL COMMENT '绑定Socket编码',
  `SMSLimit` int(11) DEFAULT '-1' COMMENT '短信限制',
  `VSMSLimit` int(11) DEFAULT '-1' COMMENT '语音短信限制',
  `PUSHLimit` int(11) DEFAULT '-1' COMMENT '推送限制',
  `WXPUSHLimit` int(11) DEFAULT '-1' COMMENT '微信推送限制',
  `EMAILLimit` int(11) DEFAULT '-1' COMMENT '邮件限制',
  `SMSDayLimit` int(11) DEFAULT '-1' COMMENT '短信日限制：-1 表示不限制',
  `VSMSDayLimit` int(11) DEFAULT '-1' COMMENT '语音短信日限制：-1 表示不限制',
  `PUSHDayLimit` int(11) DEFAULT '-1' COMMENT '推送日限制：-1 表示不限制',
  `WXPUSHDayLimit` int(11) DEFAULT '-1' COMMENT '微信推送日限制：-1 表示不限制',
  `EMAILDayLimit` int(11) DEFAULT '-1' COMMENT '邮件日限制：-1 表示不限制',
  `SMSUserLimit` int(11) DEFAULT '-1' COMMENT '短信人限制：-1 表示不限制',
  `PUSHUserLimit` int(11) DEFAULT '-1' COMMENT '推送人限制：-1 表示不限制',
  `WXPUSHUserLimit` int(11) DEFAULT '-1' COMMENT '微信推送人限制：-1 表示不限制',
  `EMAILUserLimit` int(11) DEFAULT '-1' COMMENT '邮件人限制：-1 表示不限制',
  `WXPUSHUsed` int(11) DEFAULT '0' COMMENT '微信推送已使用数',
  `PUSHUsed` int(11) DEFAULT '0' COMMENT '推送已使用数',
  `SMSUsed` int(11) DEFAULT '0' COMMENT '短信已使用数',
  `VSMSUsed` int(11) DEFAULT '0' COMMENT '语音短信已使用数',
  `EmailUsed` int(11) DEFAULT '0' COMMENT '邮件已使用数',
  PRIMARY KEY (`appCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='APP配置信息';

-- ----------------------------
-- Records of business_app_cnf
-- ----------------------------
INSERT INTO `business_app_cnf` VALUES ('0000', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '3354', '0', '3');
INSERT INTO `business_app_cnf` VALUES ('APP2019020001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '1422', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019020002', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '4', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019020003', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '6893', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019020004', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '1337', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019030001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '2347', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019030002', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '20', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019030003', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '9', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019030004', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '9', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019030005', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '248', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019030006', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '370', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019040001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019040002', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '56', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019040003', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '2546', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019040004', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019040005', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '3', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019070001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '11', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019090001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '46', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019090002', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '34', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019090003', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '102', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019100001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '112', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019100002', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019110001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2019120001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '91', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2020040001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2020040002', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2020050001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '166', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2020060001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '2615', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2020090001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2020110001', '', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021040001', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021060001', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021060002', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021070001', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021070002', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021080001', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `business_app_cnf` VALUES ('APP2021080002', '', '', '-1', '0', '-1', '-1', '-1', '-1', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for business_app_msg
-- ----------------------------
DROP TABLE IF EXISTS `business_app_msg`;
CREATE TABLE `business_app_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apikey` varchar(300) DEFAULT NULL COMMENT 'APP key',
  `secretkey` varchar(300) DEFAULT NULL COMMENT 'APP secret',
  `manger` varchar(240) DEFAULT NULL COMMENT '管理人员账号',
  `creater` varchar(120) DEFAULT NULL COMMENT '创建人账号',
  `creattime` varchar(60) DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT NULL COMMENT '状态 0待审核 1审核通过 -1 已禁用',
  `token` varchar(600) DEFAULT NULL COMMENT '最后一次 Token',
  `tokeninvalidtime` varchar(60) DEFAULT NULL COMMENT 'Token失效时间',
  `appname` varchar(300) DEFAULT NULL COMMENT '应用名称',
  `appindexno` varchar(120) DEFAULT NULL COMMENT '接入应用编号？',
  `lastip` varchar(60) DEFAULT NULL COMMENT '最后一次接入IP',
  `bindip` varchar(60) DEFAULT NULL COMMENT '绑定IP',
  `binddb` varchar(50) DEFAULT NULL COMMENT '绑定数据库',
  `accounttype` varchar(60) DEFAULT NULL COMMENT '账号类型',
  `appcode` varchar(60) DEFAULT NULL COMMENT '应用编号',
  `localport` varchar(30) DEFAULT NULL COMMENT '本地端口',
  `datagroup` varchar(60) DEFAULT NULL COMMENT '数据归属群组',
  `bindredis` int(11) DEFAULT NULL COMMENT 'redis数据库编号',
  `authorizeurl` varchar(300) DEFAULT NULL COMMENT '认证链接',
  `lastbeattime` varchar(20) DEFAULT NULL,
  `lastbeatmsg` varchar(800) DEFAULT NULL,
  `linksys` varchar(20) DEFAULT NULL,
  `linkurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COMMENT='应用表';

-- ----------------------------
-- Records of business_app_msg
-- ----------------------------
INSERT INTO `business_app_msg` VALUES ('3', 'key201901040001', 'ec1852590c18535422593254121a0f217e171d362e4b', '18709850070', 'superadmin', '2019-01-04 13:15:11', '1', '31699f52066d597606321c241b1131081663477e697534070e1a3b092004277d107846781e0e2903174b7b0f0a067a090e1040682b062353196216182e4d0d', '2021-10-11 18:13:00', '卓瑞云管理平台', '', '121.196.184.133', '121.196.184.133', 'frameDb', 'RZQYUSERMSG', '0000', '0', '000800010005', '0', '0f5707c65d587961025722215d210a5d52490310115c66745951633a4e201e2a1d2d037032315f5c01746c1e270660027129731958270b67432b1c7b7e1974072c170b3c28063f4346', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('4', 'key201902230001', '90240e1915305e3040432b331b09', 'qushaoqiu', 'superadmin', '2019-02-23 14:37:49', '1', '8606c3864d5c2c4d2e462c167438200a290074003c3124143d7f2d2a3c053211166f360576252e10283807452911335c7e796123153e05293067017d0b37724d', '2021-10-11 19:03:54', '安徽建筑大学【MQeye】', '', '220.178.74.30', '220.178.74.30', 'frameDb', 'RZXXUSERMSG', 'APP2019020001', '0', '000800010001', '1', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-09-07 09:45:27', '{\"mem\":\"48.13928%\",\"cpu\":\"11.809045%\",\"memval\":1929144}', 'MQeye', 'http://220.178.74.30:8180/');
INSERT INTO `business_app_msg` VALUES ('5', 'key201902270001', 'b149c41543630457171250113c2d000f737614', 'yeyonggan', 'superadmin', '2019-02-27 08:28:22', '1', 'ea0a465b0858660c3e0e2b4b7b79321d2b0051072277754d617470132101231e213f3758203c05043b6f0f573e2f035d216b24483b1b7a51513f372e330f0f0e', '2021-10-09 16:36:01', '安徽工商职业技术学院【MQeye】', '', '220.178.78.133', '220.178.78.133', 'frameDb', 'RZXXUSERMSG', 'APP2019020002', '0', '000800010002', '2', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-10-22 11:02:30', '{\"mem\":\"49.79194%\",\"cpu\":\"13.283211%\",\"memval\":1930168}', 'MQeye', 'http://220.178.78.133:7823/');
INSERT INTO `business_app_msg` VALUES ('6', 'key201902270002', '26663dc3625e42500e18613d270a745c567a6171', 'niyoufei', 'superadmin', '2019-02-27 08:31:29', '1', '1676c1f00a453c5020096c487665724b79000f1c2037251861743a13705b7747796f2d4f2127210c020422731c766505605e0538103d062c281605751d5e0f08', '2021-10-11 19:13:22', '安徽财贸职业学院【MQeye】', '', '220.178.74.68', '', 'frameDb', 'RZXXUSERMSG', 'APP2019020003', '0', '000800010004', '3', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-12-12 16:22:04', '{\"mem\":\"47.199535%\",\"cpu\":\"2.493763%\",\"memval\":3908564}', 'MQeye', 'http://220.178.74.68:8080/');
INSERT INTO `business_app_msg` VALUES ('7', 'key201902280001', 'd70b57307b494b1d4a0c3d014d113c2c5f517a2659', '18709850070', 'superadmin', '2019-02-28 16:07:05', '1', 'aab2a2b0045e3a46290127127f797129023a28361f7416401e140607605a77346e70321026382f436e7d5b573d302d5d3e25253f11240c295b6f647560540914', '2021-10-11 19:18:00', '卓瑞测试【MQeye】', '', '36.33.24.158', '', 'frameDb', 'RZQYUSERMSG', 'APP2019020004', '0', '0000', '4', '037bf01e720727355c083f2753211a14035d025047553d2a01082b3214615d3d125f620b4457560009352b36070363077031007a5b4e06193d2b0479741019195d1d61425906253e3a', '2019-08-05 21:22:02', '{\"mem\":\"64.68504%\",\"cpu\":\"13.999998%\",\"memval\":1827396}', 'MQeye', 'http://36.33.24.158:4401/');
INSERT INTO `business_app_msg` VALUES ('8', 'key201903070001', '7e36a724376c040a16095b4d1529330909266e59', 'yangmingxing', 'superadmin', '2019-03-07 09:22:15', '1', '1292cf57075d3159261d2b1d22376c4a74755045792e2d1321372d16605a361070657347797f075c2127075d02142e731f767540775a062328041a0113266e0d', '2021-10-09 16:36:01', '安徽电子信息职业技术学院【MQeye】', '', '220.178.150.6', '220.178.150.6', 'frameDb', 'RZQYUSERMSG', 'APP2019030001', '0', '000800010008', '5', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-12-12 16:23:04', '{\"mem\":\"27.287256%\",\"cpu\":\"10.500002%\",\"memval\":3908564}', 'MQeye', 'http://42.247.15.249:8080/');
INSERT INTO `business_app_msg` VALUES ('9', 'key201903080001', 'bc0809224049705e0946063b5a18042c023c2e077c04', 'yaohu', 'superadmin', '2019-03-08 18:11:15', '1', 'cf439678cf4802374629062a0b2e300d310702264e757671417f70605f6b70581d27747407293e66536027255027481b597e5e525e6a572e0409313c2932111150', '2019-03-15 10:37:28', '安徽新闻出版职业技术学院【综合素质平台】', '', '36.33.24.158', '36.33.24.158', 'frameDb', 'RZXXUSERMSG', 'APP2019030002', '0', '000800010009', '6', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('10', 'key201903120001', 'a3bbdf41ca697a58662a082335306766400808231c', 'superadmin', 'superadmin', '2019-03-12 10:29:16', '1', '202c5200625f21012c0b2b356c4a3e3074467f777543207f250429010a24041113467d676853010f2d6502000b771e74054a685b00232c1915691426736e', '2021-10-11 08:08:00', '安徽中医药大学少荃湖校区【MQeye】', '', '218.104.69.130', '', 'frameDb', 'RZXXUSERMSG', 'APP2019030003', '0', '000800010003', '7', 'cf579c3566587060005a7b791f645f1d000d59534c12332c59517525112a077c060d600d424e5d555635333406205838190e4a240b15093917123c515b36772b56382d40557f06111f', '2020-03-07 22:41:01', '{\"mem\":\"33.29083%\",\"cpu\":\"2.4999976%\",\"memval\":1929144}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('11', 'key201903120002', 'da520cf56a3e02065c2b081e51631c0b3e3e065e', 'superadmin', 'superadmin', '2019-03-12 20:35:53', '1', '6363ef18a92d79677b793900313f647943282679457e702d12262b70132b5277187e3f2b18262a2f4b232e295561392f0d2125321730573d1917323a346203604c', '2021-10-02 13:38:00', '安徽中医药大学梅山路校区【MQeye】', '', '60.166.7.40', '60.166.7.40', 'frameDb', 'RZXXUSERMSG', 'APP2019030004', '0', '000800010003', '8', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-08-31 18:03:01', '{\"mem\":\"53.924847%\",\"cpu\":\"9.70149%\",\"memval\":1929144}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('12', 'key201903130001', '6480527336053302081004607400563c3f51', 'superadmin', 'superadmin', '2019-03-13 15:17:56', '1', '6c1c510a6f503f5a734b7b382a10226d291175762d4b272e251c230c691a372c2258202a500b2c27075c7433164328383c483e333b0715320d7e2e16064c', '2021-10-09 16:36:13', '安徽广播电视大学【MQeye】', '', '218.22.21.243', '', 'frameDb', 'RZXXUSERMSG', 'APP2019030005', '0', '000800010010', '9', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-09-29 17:51:46', '{\"mem\":\"24.608421%\",\"cpu\":\"0.4987538%\",\"memval\":3908564}', 'MQeye', 'http://218.22.21.242:50022/');
INSERT INTO `business_app_msg` VALUES ('13', 'key201903250001', '2414625e715816335a3b3211033e57676610', 'zhangzhe', 'superadmin', '2019-03-25 13:33:25', '1', 'e7e72c30104716655c275a780b2b3e724e60193111277631177f707c5a7d53211826220918261c690a353a3240753824452620261f750f710917676f7631065657', '2021-07-21 14:19:03', '安徽新闻出版职业技术学院【MQeye】', '', '117.71.48.233', '', 'frameDb', 'RZXXUSERMSG', 'APP2019030006', '0', '000800010009', '10', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-09-24 19:07:01', '{\"mem\":\"40.045326%\",\"cpu\":\"5.0251245%\",\"memval\":1929144}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('14', 'key201904090001', '9703ea82796242251907240446063c571e537a66651501727c', 'superadmin', 'superadmin', '2019-04-09 10:22:51', '1', 'c6eab24f4216255126062b5c6c7d71513e20071c3e252534070e0f36745273447477615d654c6154243e530f3e1e2705796910173c0478180d64627074570459', '2020-05-21 17:31:07', '安徽城市管理职业学院【MQeye】', '', '36.7.106.92', '36.7.106.92', 'frameDb', 'RZXXUSERMSG', 'APP2019040001', '0', '000800010011', '11', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-05-21 17:23:07', '{\"memval\":1929144,\"mem\":\"63.151943%\",\"cpu\":\"34.500004%\"}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('15', 'key201904110001', '69b98f366e0c565d6a0406093d5d1f0d317a5b20295e11', 'superadmin', 'superadmin', '2019-04-11 14:52:04', '1', '231bc483d30b5e3d583e0e20557f27250d7c66764376287a143f2022381d2300267f74585979261e2d1e26057c0c297d7274666c391120042b4e1a170b0a2b7977', '2021-09-25 20:01:16', '安徽体育运动职业技术学院', '', '60.173.254.110', '', 'frameDb', 'RZXXUSERMSG', 'APP2019040002', '0', '000800010012', '12', '44e82a061c734f050c781f357d79350051302d1c7724510b173c3c5d764f072109455059005933376b082a0b7c5950592004085c335a0f2d4d53763524563539030826570705', '2020-12-12 16:20:09', '{\"mem\":\"46.59143%\",\"cpu\":\"100.0%\",\"memval\":3908564}', 'MQeye', 'http://60.173.254.108:8088/');
INSERT INTO `business_app_msg` VALUES ('16', 'key201904120001', '04783630590015322301067a650a7d595109', 'huajinmiao', 'superadmin', '2019-04-12 14:50:58', '1', '44bc2d791c66012e0b391c6405097f61033c030a025401050724012e0f257e762e38066525531e152a467e6c60533f4a7f406e0221020d6e32236155510e', '2021-09-19 17:24:33', '安徽农业大学【MQeye】', 'APP2019040001', '218.104.72.254', '', 'frameDb', 'RZXXUSERMSG', 'APP2019040003', '0', '000800010013', '13', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-12-12 16:19:01', '{\"mem\":\"36.790287%\",\"cpu\":\"3.517586%\",\"memval\":3908564}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('17', 'key201904180001', 'dbe7ca5a8633595c4812095b4756753508033d674d', 'superadmin', 'superadmin', '2019-04-18 11:54:02', '1', '', '', '安徽工业经济职业技术学院【MQeye】', '', '', '172.16.61.110', 'frameDb', 'RZQYUSERMSG', 'APP2019040004', '0', '000800010014', '14', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('18', 'key201904180002', '955d9212394b450e2054180e2b2207033d6510', 'superadmin', 'superadmin', '2019-04-18 17:36:55', '1', 'da36e32c2a781074745273487667751965724344242e71403f202344794732102b2e55042259535260647c52213f275c213f375f3716240b146c3a242a0c5956', '2020-08-28 11:08:10', '安徽行政学院【MQeye】', '', '218.22.22.226', '218.22.22.226', 'frameDb', 'RZQYUSERMSG', 'APP2019040005', '0', '000800010015', '15', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-08-28 11:00:07', '{\"mem\":\"34.659107%\",\"cpu\":\"4.7858953%\",\"memval\":1929144}', 'MQeye', 'http://218.22.22.226:8081/');
INSERT INTO `business_app_msg` VALUES ('19', 'key201907310001', '0b9f64e6d00c346b5a5c5f795857581c13', 'wangsonghai', 'superadmin', '2019-07-31 18:00:00', '1', 'fe4217904c026f5121012712233f371f20022b143b7f2d193f2f2d1c2145244f2c315b4d7e02280c273c7f05766d1d170e6141597f6470336c6b6f4753791517', '2021-09-22 13:25:48', 'IAC卓瑞测试【MQeye】', '', '36.33.24.158', '', 'default', 'RZQYUSERMSG', 'APP2019070001', '0', '000800010005', '16', '0f37f175b0587961025722215d210a5d52490310115c66745951633a4e201e2a1d2d037032315f5c01746c1e270660027129731958270b67432b1c7b7e1974072c170b3c28063f4346', '2019-11-04 10:13:17', '{\"mem\":\"60.131466%\",\"cpu\":\"2.2613049%\",\"memval\":1827396}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('20', 'key201909020001', 'd83047630602305e5546050461024822595b', 'jiwei', 'superadmin', '2019-09-02 08:33:03', '1', 'ba764c943302010d1f3a0e08626473756e603a1326282b5c6f6d79163e0e2d1f3e252938060e252674527f067777791f65726d40332d66542a3c3c40506c4e59', '2020-03-07 23:41:12', '淮南东方医院集团总院【MQeye】', '', '60.171.24.66', '', 'default', 'RZQYUSERMSG', 'APP2019090001', '0', '000800010017', '0', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-03-07 22:43:17', '{\"mem\":\"24.70851%\",\"cpu\":\"0.4987538%\",\"memval\":3908564}', 'MQeye', null);
INSERT INTO `business_app_msg` VALUES ('21', 'key201909120001', 'f464092e0614081b1d5b2203520e61340d1f', 'jiwei', 'superadmin', '2019-09-12 07:59:00', '1', 'a56da71009275e3a0f2d143c302a53276464471d0b11370d1679207538153b3d7971460d674f14293f0f5c69674e062c27291f3134370915131c352578050f', '2021-10-09 16:36:13', '庐阳区人民政府【MQeye】', 'APP2019090001', '61.191.28.124', '', 'default', 'RZQYUSERMSG', 'APP2019090002', '0', '000800010018', '0', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '2020-12-12 16:23:27', '{\"mem\":\"22.39728%\",\"cpu\":\"2.7499974%\",\"memval\":3908564}', 'MQeye', 'http://61.191.28.122:9080/');
INSERT INTO `business_app_msg` VALUES ('22', 'key201909190001', 'bc500e2248174c67500b3e34071f03337c76', 'jiwei', 'superadmin', '2019-09-19 12:31:26', '1', '560ed2ab221e1b7403390d3c0505720708182046037012390534794f740f37447f775f182600365e2922530422773e5c223f231576292c153a743b1d5f2d5c4e', '2021-09-26 09:13:53', '安徽林业职业技术学院【MQeye】', '', '120.210.132.214', '', 'default', 'RZXXUSERMSG', 'APP2019090003', '0', '000800010016', '0', 'f1a135582c3e5b0522215d3a55544b0a50154e0d36350101333a5a2d562f03526a0a1f0206065a6b6b6a5532120e1045186f4b456c60455863020872726c440770563213444859', '2020-12-12 16:19:16', '{\"mem\":\"33.601803%\",\"cpu\":\"6.982541%\",\"memval\":3908564}', 'MQeye', 'http://61.190.17.186:8880/');
INSERT INTO `business_app_msg` VALUES ('23', 'key201910100001', '3a3aa437211d13675513555a6c787a3a', 'jiwei', 'superadmin', '2019-10-10 18:21:53', '1', 'd9955f2d791c730c53794a7f6d7643647c67537e2d2b4875372d1d7e5e680729322b463d2b58537879530f29280c5027283e05762a2e033a2e6d1f05325659', '2021-10-09 16:36:05', '安徽邮电职业技术学院【MQeye】', '', '218.22.34.4', '', 'default', 'RZXXUSERMSG', 'APP2019100001', '0', '000800010019', '0', '5040307b60752f037c78782a787a14035b4c04257658566c3a1e26027712046b0b1b5006065e32363440224936564f5f24530f5326120b6e42412f3d261c623c2d1d2319152f', '2020-08-31 18:01:34', '{\"mem\":\"18.165546%\",\"cpu\":\"2.2556365%\",\"memval\":3908564}', 'MQeye', 'http://218.22.34.5:9090/');
INSERT INTO `business_app_msg` VALUES ('24', 'key201910280001', '005c0e3422530e555d132d320901', 'jiwei', 'superadmin', '2019-10-28 11:18:05', '2', '', '', '中国石油化工股份有限公司安徽石油分公司', 'APP2019100002', '', '', 'default', 'RZQYUSERMSG', 'APP2019100002', '0', '000800010020', '0', '17d360deb60c3b36514e783e5271480b0050080f4e0d2422012a081f301e5f7e454f67753c293e20761319015c080a7c0029790426201e18372f0479741009795f1c143b5d025a2335', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('25', 'key201912230001', '8e3a15510426070d04360a033c513013383129153e0e265b', 'jiwei', 'superadmin', '2019-12-23 10:12:45', '1', 'd5513a0a41375101210b3e0e6d7d4b7d537e43646c675c7f2d23477419251e7e606407293223553d3b50027869710f29282a15302b3d1b75352e1d07370651', '2020-12-12 16:58:00', '安徽审计职业学院【MQeye】', '', '220.178.75.153', '', 'default', 'RZXXUSERMSG', 'APP2019120001', '0', '000800010028', '0', 'd1215253786b0357616510684a5059540a10110b647247163c301f7e1d2145566614475a0900593f323e073a1f234d0d513c530f53261d053c591f3b632b18696143042d051a1c', '2020-12-12 16:21:01', '{\"mem\":\"40.13407%\",\"cpu\":\"1.9999981%\",\"memval\":1929144}', 'MQeye', 'http://220.178.75.146:8180/');
INSERT INTO `business_app_msg` VALUES ('26', 'key202004230001', '17c7c3739834402a0f4f7821505e035d0e', 'yaohu', 'superadmin', '2020-04-23 09:24:17', '1', '', '', '城市管理职业学院【人脸收集】', '', '', '120.27.250.45', 'default', 'RZXXUSERMSG', 'APP2020040001', '0', '000800010011', '0', '07278c07570a3f38550e2b600675480a0150590f1e0c24220b48682511715c7c455668554c0f1e085916081b291e017e064e060623296119322b1666001e61785813133e220f423d35', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('27', 'key202004230002', '3b4701ef852f191d41216e4241291c187b197d707c', 'jiwei', 'superadmin', '2020-04-23 09:58:05', '1', '26e670730c413254605a321d707573037951214c21372512031400321f58754760600d3f07070923071538060a7d6703070f0f3d196b1b2c170b1a372e100e0f', '2021-10-11 19:13:00', '颍上教育局【MQeye】', 'APP2020040001', '220.179.85.156', '', 'default', 'RZQYUSERMSG', 'APP2020040002', '0', '000800010021', '0', 'b62e6c6a216b76430723215c685a1003054007190a24270e29131c330d547644526a0a434a454a166a31385c75402a5f5006671b07543f44113806046f757a543d341b0a26021b02', '2020-11-27 19:59:02', '{\"mem\":\"23.429268%\",\"cpu\":\"23.308271%\",\"memval\":3908564}', null, null);
INSERT INTO `business_app_msg` VALUES ('28', 'key202005220001', '15a99d092309193d0c1c4811330c45', 'yaohu', 'superadmin', '2020-05-22 09:29:37', '1', '3c00287704077d596c4d010f0b62012e03361e7405417e71033c0324025800052927012e0b367e76107a064b07021e1500036a7f6f082b686440502d5657', '2020-08-20 05:30:12', '安徽新闻出版职业技术学院【MQManager】', 'APP2020050001', '36.33.24.158', '', 'default', 'RZXXUSERMSG', 'APP2020050001', '0', '000800010009', '0', '47a732f4a222641f712d1b017206280a01217f28442f63152b2c28664d75083c4650600d1b0807030b3d3e6a5e2000255f0f59240e4f5c2f0e027b585e61342b1e3d32491b3d1b1518', '', '', '', '');
INSERT INTO `business_app_msg` VALUES ('29', 'key202006230001', 'bb9775cd6b325f1a10467e01153e0e2d123e25257e06200b7c', '18709850070', 'superadmin', '2020-06-23 14:32:27', '1', 'ed2def5841325f7e5e6c0a29222b003d057e43786971412828221127062a0261291f1a2e0c7e0b2c270c522528445776253443635d2209093d3e776a5f0443', '2020-08-31 18:47:00', '池州学院【MQeye】', '', '211.86.192.181', '', 'frameDb', 'RZXXUSERMSG', 'APP2020060001', '0', '000800010027', '0', 'd2d6bee1517161044a606b127f1053035d40071f52636b19013e3c473c027d42577e094e070107543334391a605e365b0044710402413e120a3b1a5161393f5d606b180d27041846', '2020-08-31 17:54:02', '{\"mem\":\"34.812885%\",\"cpu\":\"1.9999981%\",\"memval\":3908564}', null, null);
INSERT INTO `business_app_msg` VALUES ('30', 'key202009040001', '45552e031a0a5603051b61023e2d64', 'jiwei', 'superadmin', '2020-09-04 15:17:11', '1', '239fb695730b5e3d583e0e20547d3725087c76624376287a143f2022381d2300267f6472597908202d1e18277c0c17577274485e391109182e7515173d370d7977', '2021-10-09 16:36:39', '云鹤安道拓【MQeye】', '', '112.26.30.19', '112.26.30.19', 'default', 'RZQYUSERMSG', 'APP2020090001', '0', '000800010023', '0', '370fafae5e2b1b1e7429091e0608400b062e782d3b227b0b2b2b0b1a31063c7d44271f72462d593f731028625475563c0551017e0408583a4f05310d02366b210735331e0a60000a0c', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('33', 'key202011290001', '2e869ffd241a7c06567a44362e023f38261e08247d2e780f', 'jiwei', 'superadmin', '2020-11-29 12:43:45', '1', '7ebe2ec80d013d5f21012f1f612a3f002e4606197628200b282e70003c1f20183c7f03293c053602166f3247760b3a4128380b003e2c3007697566232b11727c', '2021-08-20 11:02:18', '徽商职业技术学院【MQeye】', '', '220.178.63.179', '', 'default', 'RZQYUSERMSG', 'APP2020110001', '0', '000800010025', '0', 'c7f74fe0221229367c28020b7775410b035d00575c497162590c32664c3f092445567e4a1305075e42366b6659610377510f592c020f59235a0c2f5b532c63260c2a3314072041114f', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('34', 'key202104270001', '08c015322301067a660c545d5a40083d5650', '18709850070', 'superadmin', '2021-04-27 17:32:43', '1', '84180f547a5b37122255203a7a5c2c19071d7433300d2928384c2937341b3a311a4f3a257e1626230e5a21273d5d282e575e6a17193d1619044333796f6d', '2021-10-11 18:44:48', 'MQeye云中心', 'APP2021040001', '121.196.184.133', '', 'default', 'RZQYUSERMSG', 'APP2021040001', '0', '000800010005', '0', '033f63294e0727355c083f2753211a14585a765847553d2a01082b3214615d3d125f620b4457560009352b36070363077031007a5b4e06193d2b0479741019195d1d61425906253e3a', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('35', 'key202106010001', '14c00f01031c175650597d272d477f766606', '18709850070', 'superadmin', '2021-06-01 11:01:11', '1', '53972aef2e2a7c1876612700371e1805781c777732010f70367817083e3d5a7d4d28365b467e5e350c27057452286c515a7e01091f31002c440c2d2e26750a5306', '2021-09-26 23:25:27', '智慧教务', 'APP2021060001', '112.32.71.56', '', 'frameDb', 'RZQYUSERMSG', 'APP2021060001', '0', '000800010022', '0', 'c15d98512921540f233e572835727922725a4d53677f5951717e53685e271c526a4a13095e581f2a3c34067e432106570767585a56391d073d595b2c742715373b0657200f031f', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('36', 'key202106120001', '91453b1208330f123979410920542d21272d11', '18709850070', 'superadmin', '2021-06-12 11:32:58', '1', '7f373c766c52593c5926042755232e39516139274c2125321c267d3e06380f290576203605221d3c3c7623300d3c012e5321063e17310820584f67060a09287c6f', '2021-09-26 09:54:23', '智慧学习平台', 'APP2021060002', '114.215.199.173', '', 'frameDb', 'RZQYUSERMSG', 'APP2021060002', '0', '000800010026', '0', 'a8a431071362531f75641c36491e540123564524220109327256655d2f05063f520402092079131e135574017e0c500663404516661f0b670c433e327959742b140a265c001b', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('37', 'key202107080001', '11dde8566a7a0109331d4706396b5c1633680c', 'superadmin', 'superadmin', '2021-07-08 11:20:50', '1', '841c0f547a5b37122255203a7a5f2c37031d7433300d2928384c2937341b3a21304f3a0b7a162623065a2227215d2b005b5e6a17193d1619044333796f6d', '2021-09-30 17:19:29', '安徽省颍上第一中学【MQeye】', 'APP2021070001', '60.172.6.32', '', 'default', 'RZXXUSERMSG', 'APP2021070001', '0', '000800010029', '0', 'cf67e57503587060005a7b791f645f1d000d59534c12332c59517525112a077c060d600d424e5d555635333406205838190e4a240b15093917123c515b36772b56382d40557f06111f', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('38', 'key202107220001', 'a12504055848576a177e2815193e5c', 'superadmin', 'superadmin', '2021-07-22 10:51:26', '1', 'bee6438333621945605a73396e703257260623536e6d71193f20251c3e0b2138061e0735746c775774675f1f66627105242e714a29233c5e6d752517022b0f4d', '2021-10-11 19:13:00', '安徽省水利水电勘测设计研究总院有限公司【MQeye】', 'APP2021070002', '220.178.89.74', '', 'default', 'RZQYUSERMSG', 'APP2021070002', '0', '000800010007', '0', '7e2a205b0f733e51102c270f3b084c56084258113c26291d00036d023d563f1d1536551b1009075433687f5c1c7c1e7a22607a3f5b600539117a05021a7b6e1e3d331c06684d5944', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('39', 'key202108120001', '991544321a2f58092455133c325c41', 'superadmin', 'superadmin', '2021-08-12 09:54:27', '1', '176f330ed6165833582e4771407c6773002738221a3e2020557c372d4a7c58764076387a183e302e281d1d2e647f5a721b79080a39090b1227180b66375d730877', '2021-10-11 18:48:00', '蚌埠学院【MQeye】', 'APP2021080001', '218.22.105.101', '', 'default', 'RZXXUSERMSG', 'APP2021080001', '0', '000800010030', '0', '8e9638a23c393d47061376413d42485813560f1912332d0c0f687b451c221e39230109205b3f3c7d2975625e0c106a460759260247117c460024515c312b2b0915133a2a0d574846', '', '', null, null);
INSERT INTO `business_app_msg` VALUES ('40', 'key202108300001', '2b0bbb34b916072170330001494f737d33100b2028', 'superadmin', 'superadmin', '2021-08-30 09:34:36', '1', '98d0045e270e293730163a311a0f3a0b7a062633241420372d1c2b0075597d040e24021513571a521f6601344a067f3a6a5729233d01337c755a54204e59', '2021-10-10 23:16:32', '安徽医科大学梅山路校区【MQeye】', 'APP2021080002', '60.166.5.137', '', 'default', 'RZXXUSERMSG', 'APP2021080002', '0', '000800010020', '0', '5dc17051706b5511787f05781552590b0a071359652a590e323a1e220b6218182b5a5b0e03575e382b360675443f40065e3b53076f241916326e0b2d29711c322f1500201d141f', '', '', null, null);

-- ----------------------------
-- Table structure for business_job_cnf
-- ----------------------------
DROP TABLE IF EXISTS `business_job_cnf`;
CREATE TABLE `business_job_cnf` (
  `INDEXNO` varchar(32) DEFAULT NULL,
  `JOB_DESCRIPT` varchar(300) DEFAULT NULL,
  `JOB_NAME` varchar(80) DEFAULT NULL,
  `JOB_TYPE` int(11) DEFAULT NULL COMMENT '0 系统级别不允许删除的 1业务级别的',
  `CLAZZ` varchar(200) DEFAULT NULL,
  `TIME_EXPRESS` varchar(60) DEFAULT NULL,
  `JOB_GROUP_NAME` varchar(40) DEFAULT NULL,
  `TRIGGER_GROUP_NAME` varchar(40) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of business_job_cnf
-- ----------------------------

-- ----------------------------
-- Table structure for business_msg
-- ----------------------------
DROP TABLE IF EXISTS `business_msg`;
CREATE TABLE `business_msg` (
  `INDEXNO` varchar(40) NOT NULL COMMENT '系统业务',
  `MSGCONTENT` varchar(1000) DEFAULT NULL COMMENT '消息内容',
  `TITLE` varchar(120) DEFAULT NULL COMMENT '标题',
  `SUBTITLE` varchar(300) DEFAULT NULL COMMENT '副标题',
  `COVER_URL` varchar(200) DEFAULT NULL COMMENT '封面链接',
  `SENDTIME` varchar(20) DEFAULT NULL COMMENT '发送时间(定时发送)',
  `RECEIVER` varchar(20) DEFAULT NULL COMMENT '消息接收对象唯一键',
  `FAILURETIME` varchar(20) DEFAULT NULL COMMENT '失效时间',
  `RECEIVETIME` varchar(20) DEFAULT NULL COMMENT '接收时间',
  `STATE` int(11) DEFAULT '0' COMMENT '当前状态 0,待发 1，已发 -1，发送失败 3 已失效',
  `LINKMODULE` varchar(20) DEFAULT NULL COMMENT '关联模块 0001 登陆验证码 0002绑定码',
  `LINKINDEXNO` varchar(40) DEFAULT NULL COMMENT '关联业务编码',
  `LINKCINDEXNO` varchar(40) DEFAULT NULL COMMENT '关联业务子编码',
  `IMPORTENTMSG` varchar(100) DEFAULT NULL COMMENT '重要信息  如：验证码',
  `DATAGROUP` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  `PARAMS` varchar(300) DEFAULT NULL COMMENT '参数JSON字符串',
  `SENDER` varchar(40) DEFAULT NULL COMMENT '发送人',
  `CNFINDEXNO` varchar(40) DEFAULT NULL COMMENT '发送配置编号',
  `VIEWTIMES` int(11) DEFAULT '0' COMMENT '阅读次数',
  `NEEDBACK` int(11) DEFAULT '0' COMMENT '是否需要回执',
  `SENDRESULT` int(11) DEFAULT NULL COMMENT '发送结果',
  `SENDBACKSTR` varchar(260) DEFAULT NULL COMMENT '发送返回结果',
  `OPURL` varchar(120) DEFAULT NULL COMMENT '操作链接',
  `TEMPLATECODE` varchar(40) DEFAULT NULL COMMENT '模板编号',
  `LINKFILES` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`INDEXNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='消息基础表';

-- ----------------------------
-- Records of business_msg
-- ----------------------------

-- ----------------------------
-- Table structure for business_msg_send_log
-- ----------------------------
DROP TABLE IF EXISTS `business_msg_send_log`;
CREATE TABLE `business_msg_send_log` (
  `INDEXNO` varchar(40) NOT NULL COMMENT '系统业务',
  `LINKMSGINDEXNO` varchar(40) DEFAULT NULL COMMENT '关联消息编码',
  `RECEIVER` varchar(20) DEFAULT NULL COMMENT '消息接收对象唯一键',
  `SENDTIME` varchar(20) DEFAULT NULL COMMENT '发送时间(定时发送)',
  `FAILURETIME` varchar(20) DEFAULT NULL COMMENT '失效时间',
  `RECEIVETIME` varchar(20) DEFAULT NULL COMMENT '接收时间',
  `MSGTYPE` int(11) DEFAULT '0' COMMENT '信息类型 0 短消息 1文本消息',
  `STATE` int(11) DEFAULT '0' COMMENT '当前状态 0,待发 1，已发 -1，发送失败 3 已回复 -99 已失效',
  `CHANNEL` int(11) DEFAULT NULL COMMENT '发送渠道 0：站内 1：ws 2：email 3：短信 4：语音 5：wx 6：推送 7：预留 8：预留 ',
  `CHANNELCODE` varchar(60) DEFAULT NULL COMMENT '接收对象在渠道中编码 手机号 账号 openID 等等',
  `CHANNEID` varchar(100) DEFAULT NULL COMMENT '发送渠道账号编码APPID ACCOUNT',
  `CODETYPE` varchar(20) DEFAULT '0' COMMENT '接收对象在渠道中编码类型 ',
  `OPURL` varchar(100) DEFAULT '' COMMENT '查看链接',
  `SENDRESULT` int(11) DEFAULT NULL COMMENT '发送结果',
  `SCANTYPE` int(11) DEFAULT NULL COMMENT '扫描方式',
  `SENDBACKSTR` varchar(260) DEFAULT NULL COMMENT '发送返回结果',
  `RECEIPTED` int(11) DEFAULT '0' COMMENT '回执状态 -1 表示不用回复 0 表示等待回复 1 表示已回复',
  `RECEIPTMSG` varchar(400) DEFAULT NULL COMMENT '回执消息',
  PRIMARY KEY (`INDEXNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送记录';

-- ----------------------------
-- Records of business_msg_send_log
-- ----------------------------

-- ----------------------------
-- Table structure for business_sms_mod
-- ----------------------------
DROP TABLE IF EXISTS `business_sms_mod`;
CREATE TABLE `business_sms_mod` (
  `indexno` varchar(20) NOT NULL,
  `sms_signature` varchar(100) NOT NULL COMMENT '签名',
  `sms_content` varchar(500) NOT NULL COMMENT '模板内容',
  `template_id` varchar(20) NOT NULL COMMENT '模板编号',
  `sms_provider` varchar(255) NOT NULL COMMENT '短信提供商',
  `template_status` int(11) NOT NULL COMMENT '可用状态 1可用 2不可用',
  `sms_title` varchar(255) NOT NULL COMMENT '短信标题',
  `sms_people` varchar(255) NOT NULL COMMENT '添加人',
  `add_date` varchar(30) NOT NULL COMMENT '添加时间',
  `sms_use` varchar(255) DEFAULT NULL COMMENT '变量集合',
  `sms_indexno` varchar(20) NOT NULL DEFAULT '' COMMENT '业务编码',
  PRIMARY KEY (`indexno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of business_sms_mod
-- ----------------------------
INSERT INTO `business_sms_mod` VALUES ('sms201903250001', '【卓瑞运维】', '您好，您的@var(devicename)的@var(warntype)即将于@var(days)天后：@var(date)到期，敬请关注。', '5oW45', '赛邮', '1', '到期提醒', 'superadmin', '2019-03-25 21:01:12', '[{\"设备名称\":\"devicename\"},{\"告警类型\":\"warntype\"},{\"天数\":\"days\"},{\"到期时间\":\"date\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201903250002', '【俱乐部系统】', '@var(stuname)同学，您申请加入@var(clubname)俱乐部的申请信息已审核，审核结果为@var(aduresult).请知晓！', 'KfQYG3', '赛邮', '1', '俱乐部申请审核通知', 'superadmin', '2019-03-25 21:01:12', null, '');
INSERT INTO `business_sms_mod` VALUES ('sms201903250003', '【卓瑞运维】', '监测系统发现以下设备：@var(errmsg)出现异常告警，您可以通过@var(viewtype)查看详细信息。', 'WxsCL4', '赛邮', '1', '监测异常告警', 'superadmin', '2019-03-25 21:01:12', null, '');
INSERT INTO `business_sms_mod` VALUES ('sms201903250004', '【俱乐部系统】', '@var(stuname)同学您好！您的@var(subjectname)成绩未达到指定要求，请予以重视！', 'RG1xZ4', '赛邮', '1', '成绩未达标通知', 'superadmin', '2019-03-25 21:01:12', null, '');
INSERT INTO `business_sms_mod` VALUES ('sms201903250005', '【卓瑞运维】', '您好，您的@var(shijian)已@var(caozuoleixin),您可以进入@var(pingtai)进行处理，敬请关注。', 'N9wgM', '赛邮', '1', '工单状态更新', 'superadmin', '2019-03-25 21:01:12', null, '');
INSERT INTO `business_sms_mod` VALUES ('sms201903250006', '【卓瑞运维】', '@var(devicename)设备当前维保截至日期为:@var(endtime)，未完成次数@var(times)，请注意关注。', 'qOfbS3', '赛邮', '1', '维保次数未达标提醒', 'superadmin', '2019-03-25 21:01:12', null, '');
INSERT INTO `business_sms_mod` VALUES ('sms201903250007', '【卓瑞运维】', '@var(devicename)设备未及时按照维保周期进行维保，当前周期：@var(datetime)，敬请关注。', 'cB2x43', '赛邮', '1', '未按时维保提醒', 'superadmin', '2019-03-25 21:01:12', null, '');
INSERT INTO `business_sms_mod` VALUES ('sms201903300001', '【卓瑞运维】', ' 您好，您的工单@var(workmsg)已于@var(warntime)未处理已超时,请尽快进入工单系统进行处理。', '8lWcm1', '赛邮', '1', '工单超时提醒', 'superadmin', '2019-03-30 15:15:25', '[]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201904030001', '【卓瑞运维】', '【卓瑞运维】 您好，现监测到@var(devicename)的@var(servicename)出现告警信息，您可以通过APP或登录后台查看异常信息。', 'jQ4414', '赛邮', '1', '监测异常提醒【语音】', 'superadmin', '2019-04-03 18:24:34', '[{\"设备名称\":\"devicename\"},{\"监测服务名称\":\"servicename\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201905120001', '【卓瑞运维】', '尊敬的客户，您报修的故障已于@var(optime)完成故障处理（处理人：@var(opuname),联系方式：@var(opmobil)）;我们百分努力，只为让您满意！请您回复@var(tag)+数字1到5对此次服务进行打分：1.非常满意；2.满意；3.一般；4.处理结果不满意；5.极不满意。感谢您的支持！', 'jar8w3', '赛邮', '1', '故障完成通知', 'superadmin', '2019-05-12 11:01:39', '[{\"完成时间\":\"optime\"},{\"处理人姓名\":\"opuname\"},{\"处理人手机\":\"opmobil\"},{\"随机码\":\"tag\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201905120002', '【卓瑞运维】', '尊敬的用户您好，您报修的故障:@var(faultdescrip)已安排@var(uname)进行处理，请保持通讯畅通，以便我们处理人员与您取得联系。', 'PBhIS1', '赛邮', '1', '故障工单分派通知', 'superadmin', '2019-05-12 11:02:47', '[{\"故障描述\":\"faultdescrip\"},{\"故障处理人姓名\":\"uname\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201905310001', '【卓瑞运维】', '尊敬的客户，您回复的内容小卓无法识别哦，请按照要求回复。感谢您的支持！', 'BWwuu2', '赛邮', '1', '短息内容无法识别回复', 'superadmin', '2019-05-31 10:37:31', '[]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906040001', '【卓瑞运维】', '您好，您的报修工单：@var(gdtitle)已@var(opstate),如有异议您可以与我们的运维人员@var(opname)(@var(mobile))联系了解情况，感谢您的理解与支持。', '4olA83', '赛邮', '1', '工单状态更新【客户】', 'superadmin', '2019-06-04 18:45:16', '[{\"工单标题\":\"gdtitle\"},{\"工单状态\":\"opstate\"},{\"运维人员\":\"opname\"},{\"手机号\":\"mobile\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906040002', '【卓瑞运维】', '感谢您的评价，我们将继续为您提供更好的产品和服务！', 'LDptk1', '赛邮', '1', '回复成功通知', 'superadmin', '2019-06-04 18:48:17', '[]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906060001', '【卓瑞运维】', ' 尊敬的@var(usname)您好,工单@var(title)已处理超时,当前处理人:@var(opname),请关注!', 'SGz2K2', '赛邮', '1', '工单超时提醒【客户】', 'superadmin', '2019-06-06 11:45:12', '[{\"用户名称\":\"usname\"},{\"工单标题\":\"title\"},{\"操作人\":\"opname\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906060002', '【卓瑞运维】', '您好,您有一个来自@var(unitname)的工单等待接单,请及时处理!', 'aSjPq3', '赛邮', '1', '接单提醒', 'superadmin', '2019-06-06 11:50:59', '[{\"用户单位\":\"unitname\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906060003', '【卓瑞运维】', '您正在进行@var(vtype)验证，验证码：@var(code)，请在@var(times)分钟内按页面提示提交验证码，切勿将验证码泄露于他人。', 'RMAKq1', '赛邮', '1', '验证码短信', 'superadmin', '2019-06-06 11:52:38', '[{\"验证类型\":\"vtype\"},{\"验证码\":\"code\"},{\"时间\":\"times\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906060004', '【卓瑞运维】', '您好,您有一个来自@var(unitname)的工单等待接单,请及时处理!', 'MjjWr2', '赛邮', '1', '接单提醒【语音】', 'superadmin', '2019-06-06 11:56:14', '[{\"用户单位\":\"unitname\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms201906170001', '【卓瑞运维】', '现发现 @var(uname)的MQeye网关设备后台监测服务未启动，请检查。[注：很严重请务必立即处理]', 'SFhnk', '赛邮', '1', 'MQeye监测服务异常', 'superadmin', '2019-06-17 20:24:41', '[{\"用户名称\":\"uname\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms202110290001', '【卓瑞运维】', '【卓瑞运维】 您好，现监测到@var(devicename)的@var(servicename)出现告警信息，您可以通过APP或登录后台查看异常信息。', 'jQ4414', '赛邮', '1', '哈哈为被修改了！2021-10-29 10:43:30', 'superadmin', '2019-04-03 18:24:34', '[{\"设备名称\":\"devicename\"},{\"监测服务名称\":\"servicename\"}]', '');
INSERT INTO `business_sms_mod` VALUES ('sms202110290002', '【卓瑞运维】', '【卓瑞运维】 您好，现监测到@var(devicename)的@var(servicename)出现告警信息，您可以通过APP或登录后台查看异常信息。', 'jQ4414', '赛邮', '1', '哈哈为被修改了！2021-10-29 10:44:14', 'superadmin', '2019-04-03 18:24:34', '[{\"设备名称\":\"devicename\"},{\"监测服务名称\":\"servicename\"}]', '');

-- ----------------------------
-- Table structure for business_token_log
-- ----------------------------
DROP TABLE IF EXISTS `business_token_log`;
CREATE TABLE `business_token_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `createtime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `invalidtime` varchar(20) DEFAULT NULL COMMENT '失效时间',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `token` varchar(200) DEFAULT NULL COMMENT 'token值',
  `requesturl` varchar(200) DEFAULT NULL COMMENT '申请URL',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `uuid` varchar(40) DEFAULT NULL COMMENT '申请UUID',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  `appkey` varchar(40) DEFAULT NULL COMMENT '请求APPKey',
  `bindmsg` varchar(400) DEFAULT NULL COMMENT '绑定相关信息',
  `tokenType` int(11) DEFAULT NULL COMMENT 'token 类型 0 用户 1 客户端',
  `reqClientType` varchar(40) DEFAULT NULL COMMENT 'APP WX WXMP',
  `reqIp` varchar(40) DEFAULT NULL COMMENT '请求IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='Token日志表';

-- ----------------------------
-- Records of business_token_log
-- ----------------------------
INSERT INTO `business_token_log` VALUES ('1', '2021-11-03 13:47:45', '2021-11-03 15:47:45', 'superadmin', '7569410d593c5a740e27407d38721227060c192b682f023427651a235129153e302f4d3a35380221256e5213350c412b1f6e041208271c2d3d260429235a160857100d', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('2', '2021-11-03 14:22:18', '2021-11-03 16:22:18', 'superadmin', '3e1add1633006606605e0d3305070d3d072b3447097d734d060f07390e4608350307093007157e5508181207035e1a770424574b5a562447686b7e04312d5e490601050f', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('3', '2021-11-09 09:27:07', '2021-11-09 11:27:07', 'superadmin', 'f24a66ef551f25512b0073082067754c605a5e13212f2712202f3f5b20122b173b6f29153e2f0f0c217b240d2c1f530f7e2c0218095b6444626134491a62175a47441b63', 'http://localhost:90/api/private/base.data?null', '-1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('4', '2021-11-09 10:04:39', '2021-11-09 12:04:39', 'superadmin', '530b52cd802a7c1876612700361c1805331c595532010f70367817083e3d5a7d4d282675467e70070c273b70522b7c635a7e11011f085d305b3422320b762a5f4b0e064e59', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('5', '2021-11-10 08:45:07', '2021-11-10 10:45:07', 'superadmin', '49253e257817667d2e784a7a1e0a3703294b3a0c0a1234080e18447f2f093f7c1a71270c1d3157756d24447e766602212f091c5a57304f68347903302b5a1e044b5347', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('6', '2021-11-11 09:04:47', '2021-11-11 11:04:47', 'superadmin', '381805591965042f134a7f676c4d01212d2401000b391f740d4e7f5f0f3f031a065800150b3401100f677e76147a05752d4730721f076a60730d28770343560b5657', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('7', '2021-11-12 14:29:20', '2021-11-12 16:29:20', 'superadmin', '829259620d59385361043b002c782c1776060604292e780f3d312c1b3c5121293c3b3211166f3e16762532412806074529012719531e662715080529087766483037724d', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('8', '2021-11-15 09:19:19', '2021-11-15 11:19:19', 'superadmin', 'd4700d59255429260a32091578417f5a5e44796d695e6877201d7d533610276771593e30330d7f242a05796146067430071805593a1c2c7427103424474b0e064e56', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('9', '2021-11-22 09:15:54', '2021-11-22 11:15:54', 'superadmin', 'd92d592d791c730c53794a7f6d724d644241537e2d2b4875372d1d7e5e680729322f463d057a537879750f29383e5024383a054f5e2e19392e71043b345a14090b125c', 'http://localhost:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('10', '2021-12-03 10:35:45', '2021-12-03 12:35:45', 'superadmin', 'cbeb276d7e0d587216645a200b2b382a0a2c0e2b3c070200417476794e7e5e6c5c6b707a1d27747414293e7a02600931502476251c5007635a6a612e0431215b1c09111150', 'http://127.0.0.1:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('11', '2021-12-03 13:38:27', '2021-12-03 15:38:27', 'superadmin', '52dea5b52b79187b0e460c3901070d3d073b544508080a4902701a36041a754c74313b447f77790b263e3a0f291c5f04215908190f58381176363010396b5c1e590b5c4e', 'http://127.0.0.1:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('12', '2021-12-03 13:56:57', '2021-12-03 15:56:57', 'superadmin', 'bfa3ca64da317d26187d58015b6b272512210043546474200b282822042c0e093f0712084d75767d5e7e607c1e68706a5f24645a0007596543772b2e0e3075411f51530810', 'http://127.0.0.1:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('13', '2021-12-03 16:50:19', '2021-12-03 18:50:19', 'superadmin', '5bd35756b6327e127f1c59733d031f70377939263e3d747941293679457e5e291f273b70102b7c7f0b7e3f0d5a253a271a232e13104f5e384c3639390c307e46011702514c', 'http://127.0.0.1:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('14', '2021-12-03 17:02:07', '2021-12-03 19:02:07', 'superadmin', '60ec52001379065b0f4c1c1508097d525e123f74734b7828221d2253211275662547262e210c23324758373c2a1a202a581f0240321d632f3b1d3f2b404b063a4c52', 'http://127.0.0.1:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');
INSERT INTO `business_token_log` VALUES ('15', '2021-12-06 08:38:31', '2021-12-06 10:38:31', 'superadmin', 'bc08360a0465021a6c487d14625d3e0e0c1b276062517c253a13210136152918023e0b05605f7f64780579534f1069492c19530a2513306b7e452923571a5017520e', 'http://127.0.0.1:90/api/private/base.data?null', '1', '', '000800010005', 'key201902280001', '{\"mobil\":\"\",\"loginname\":\"superadmin\",\"sex\":\"1\",\"iconurl\":\"\",\"descript\":\"超级管理员\",\"enabled\":0,\"realname\":\"超级管理员\"}', '0', '0', '127.0.0.1');

-- ----------------------------
-- Table structure for business_useapi_conf
-- ----------------------------
DROP TABLE IF EXISTS `business_useapi_conf`;
CREATE TABLE `business_useapi_conf` (
  `INDEXNO` varchar(40) DEFAULT NULL COMMENT 'API配置编码',
  `APIURL` varchar(400) DEFAULT NULL COMMENT 'API调用URL',
  `ACCOUNT` varchar(100) DEFAULT NULL COMMENT 'API调用账号',
  `VERIFICCODE` varchar(200) DEFAULT NULL COMMENT 'API调用密码',
  `ACCOUNTTYPE` varchar(20) DEFAULT NULL COMMENT '账号类型 ALDY:阿里大鱼短息 SY：赛邮 GZH:公众号 FWH:服务号 KFH:开放号 OPENQQ',
  `CREATETIME` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(40) DEFAULT NULL COMMENT '创建人',
  `STATE` int(11) DEFAULT NULL COMMENT '当前状态',
  `SINGNAME` varchar(100) DEFAULT NULL COMMENT '签名',
  `LINKMODULAR` varchar(40) DEFAULT NULL COMMENT '关联模块',
  `LINKKEY` varchar(40) DEFAULT NULL COMMENT '关联key',
  `CNFTYPE` varchar(40) DEFAULT NULL COMMENT '配置类别:SMS 短信； WX 微信 QQ QQ',
  `PORTMSG` varchar(40) DEFAULT NULL COMMENT '端口信息',
  `ENCODE` int(11) DEFAULT '0' COMMENT '是否编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='外部API配置表';

-- ----------------------------
-- Records of business_useapi_conf
-- ----------------------------

-- ----------------------------
-- Table structure for code_db_cnf
-- ----------------------------
DROP TABLE IF EXISTS `code_db_cnf`;
CREATE TABLE `code_db_cnf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `dbname` varchar(40) NOT NULL COMMENT '数据库名称唯一',
  `dbtype` int(11) DEFAULT NULL COMMENT '数据库类型',
  `dbdriveclass` varchar(200) DEFAULT NULL COMMENT '驱动class',
  `dburl` varchar(300) DEFAULT NULL COMMENT '链接URL',
  `username` varchar(40) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(200) DEFAULT NULL COMMENT '登录密码',
  `initialSize` int(11) DEFAULT NULL COMMENT '初始化数目',
  `maxActive` int(11) DEFAULT NULL COMMENT '最大活跃数',
  `minIdle` int(11) DEFAULT NULL COMMENT '最小连接池数量',
  `maxWait` int(11) DEFAULT NULL COMMENT '连接时最大等待时间',
  `poolPS` int(11) DEFAULT NULL COMMENT '连接时最大等待时间',
  `MOPS` int(11) DEFAULT NULL COMMENT 'maxOpenPreparedStatements',
  `validQuery` varchar(200) DEFAULT NULL COMMENT '验证SQL',
  `filters` varchar(40) DEFAULT NULL COMMENT '过滤器',
  `TBERM` int(11) DEFAULT NULL COMMENT 'timeBetweenEvictionRunsMillis',
  `MPPSPCS` int(11) DEFAULT NULL COMMENT 'maxPoolPreparedStatementPerConnectionSize',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `creattime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`id`,`dbname`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='数据库配置表';

-- ----------------------------
-- Records of code_db_cnf
-- ----------------------------

-- ----------------------------
-- Table structure for dbcon_test
-- ----------------------------
DROP TABLE IF EXISTS `dbcon_test`;
CREATE TABLE `dbcon_test` (
  `id` double DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dbcon_test
-- ----------------------------

-- ----------------------------
-- Table structure for station_data
-- ----------------------------
DROP TABLE IF EXISTS `station_data`;
CREATE TABLE `station_data` (
  `id` varchar(20) NOT NULL,
  `ping` varchar(20) DEFAULT NULL,
  `distance` varchar(20) DEFAULT NULL,
  `asu` varchar(20) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `lon` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `cid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of station_data
-- ----------------------------
INSERT INTO `station_data` VALUES ('01', '58.224', '', '', '', '117.217338', '31.731', '');
INSERT INTO `station_data` VALUES ('01', '33.948', '0.1763', '71', '17:09:22 679', '117.219092', '31.730753', '97571072');
INSERT INTO `station_data` VALUES ('01', '34.594', '0.193', '71', '17:09:23 720', '117.219294', '31.730758', '97571072');
INSERT INTO `station_data` VALUES ('01', '41.212', '0.1926', '71', '17:09:23 925', '117.21929', '31.730757', '97571072');
INSERT INTO `station_data` VALUES ('01', '37.979', '0.2093', '63', '17:09:24 563', '117.219485', '31.730765', '97571072');
INSERT INTO `station_data` VALUES ('01', '38.606', '0.2262', '63', '17:09:25 793', '117.219683', '31.730767', '97571072');
INSERT INTO `station_data` VALUES ('01', '38.073', '0.2441', '63', '17:09:26 620', '117.219887', '31.730771', '97571072');
INSERT INTO `station_data` VALUES ('01', '34.084', '0.2623', '63', '17:09:27 636', '117.220093', '31.730775', '97571072');
INSERT INTO `station_data` VALUES ('01', '49.391', '0.3477', '63', '17:09:28 676', '117.220296', '31.73078', '97554177');
INSERT INTO `station_data` VALUES ('01', '47.155', '0.353', '63', '17:09:29 715', '117.220495', '31.730782', '97554177');
INSERT INTO `station_data` VALUES ('01', '43.208', '0.3534', '63', '17:09:29 900', '117.220493', '31.730787', '97554177');
INSERT INTO `station_data` VALUES ('01', '77.264', '0.3593', '63', '17:09:30 555', '117.220698', '31.730784', '97554177');
INSERT INTO `station_data` VALUES ('01', '99.796', '0.3664', '63', '17:09:31 624', '117.2209', '31.730786', '97554177');
INSERT INTO `station_data` VALUES ('01', '35.552', '0.0857', '73', '17:09:32 585', '117.221098', '31.73079', '73300206');
INSERT INTO `station_data` VALUES ('01', '44.806', '0.0736', '73', '17:09:33 621', '117.221293', '31.730791', '73300206');
INSERT INTO `station_data` VALUES ('01', '34.568', '0.0648', '73', '17:09:34 629', '117.221485', '31.730794', '73300206');
INSERT INTO `station_data` VALUES ('01', '36.203', '0.0605', '73', '17:09:35 675', '117.221677', '31.730797', '73300206');
INSERT INTO `station_data` VALUES ('01', '39.225', '0.0605', '73', '17:09:35 881', '117.221675', '31.730797', '73300206');
INSERT INTO `station_data` VALUES ('01', '91.767', '0.0616', '73', '17:09:36 748', '117.22187', '31.730802', '73300206');
INSERT INTO `station_data` VALUES ('01', '41.53', '0.0679', '65', '17:09:37 726', '117.222063', '31.730807', '73300204');
INSERT INTO `station_data` VALUES ('01', '57.839', '0.078', '65', '17:09:38 785', '117.222259', '31.73081', '73300204');
INSERT INTO `station_data` VALUES ('01', '40.848', '0.0909', '65', '17:09:39 591', '117.222455', '31.730814', '73300204');
INSERT INTO `station_data` VALUES ('01', '44.059', '0.1056', '65', '17:09:40 636', '117.222652', '31.730818', '73300204');
INSERT INTO `station_data` VALUES ('01', '55.264', '0.1214', '65', '17:09:41 671', '117.22285', '31.730821', '73300204');
INSERT INTO `station_data` VALUES ('01', '41.559', '0.1378', '72', '17:09:42 684', '117.223047', '31.730823', '73300204');
INSERT INTO `station_data` VALUES ('01', '66.562', '0.1856', '72', '17:09:43 740', '117.223242', '31.730825', '98055726');
INSERT INTO `station_data` VALUES ('01', '35.91', '0.1714', '74', '17:09:44 729', '117.223437', '31.730826', '98055726');
INSERT INTO `station_data` VALUES ('01', '36.752', '0.1716', '74', '17:09:44 932', '117.223436', '31.730825', '98055726');
INSERT INTO `station_data` VALUES ('01', '37.584', '0.1583', '74', '17:09:45 762', '117.22363', '31.730828', '98055726');
INSERT INTO `station_data` VALUES ('01', '38.036', '0.1463', '76', '17:09:46 584', '117.223818', '31.730832', '98055726');
INSERT INTO `station_data` VALUES ('01', '34.943', '0.1359', '76', '17:09:47 604', '117.224006', '31.730834', '98055726');
INSERT INTO `station_data` VALUES ('01', '32.815', '0.1271', '76', '17:09:48 628', '117.224193', '31.730836', '98055726');
INSERT INTO `station_data` VALUES ('01', '74.273', '0.1202', '76', '17:09:49 704', '117.224381', '31.730838', '98055726');
INSERT INTO `station_data` VALUES ('01', '37.049', '0.1158', '76', '17:09:50 701', '117.224572', '31.730839', '98055726');
INSERT INTO `station_data` VALUES ('01', '44.274', '0.1154', '76', '17:09:50 904', '117.224569', '31.730843', '98055726');
INSERT INTO `station_data` VALUES ('01', '54.602', '0.114', '74', '17:09:51 739', '117.224764', '31.730841', '98055726');
INSERT INTO `station_data` VALUES ('01', '33.264', '0.1152', '74', '17:09:52 744', '117.22496', '31.730843', '98055726');
INSERT INTO `station_data` VALUES ('01', '32.569', '0.1193', '71', '17:09:53 768', '117.225157', '31.730845', '98055726');
INSERT INTO `station_data` VALUES ('01', '41.857', '0.1754', '71', '17:09:54 605', '117.225353', '31.730849', '98055725');
INSERT INTO `station_data` VALUES ('01', '37.488', '0.181', '71', '17:09:55 628', '117.22555', '31.730853', '98055725');
INSERT INTO `station_data` VALUES ('01', '35.933', '0.1883', '71', '17:09:56 653', '117.225746', '31.730855', '98055725');
INSERT INTO `station_data` VALUES ('01', '34.989', '0.1886', '71', '17:09:56 869', '117.225742', '31.730851', '98055725');
INSERT INTO `station_data` VALUES ('01', '40.631', '0.1972', '71', '17:09:57 708', '117.225942', '31.730857', '98055725');
INSERT INTO `station_data` VALUES ('01', '42.503', '0.2073', '71', '17:09:58 747', '117.226137', '31.730858', '98055725');
INSERT INTO `station_data` VALUES ('01', '50.616', '0.2185', '71', '17:09:59 576', '117.226332', '31.73086', '98055725');
INSERT INTO `station_data` VALUES ('01', '50.195', '0.2305', '70', '17:10:00 615', '117.226526', '31.730863', '98055725');
INSERT INTO `station_data` VALUES ('01', '39.852', '0.243', '70', '17:10:01 627', '117.226708', '31.730858', '98055725');
INSERT INTO `station_data` VALUES ('01', '42.526', '0.485', '69', '17:10:06 600', '117.227751', '31.730871', '17668206');
INSERT INTO `station_data` VALUES ('01', '46.065', '0.4704', '67', '17:10:07 622', '117.227906', '31.730872', '17668206');
INSERT INTO `station_data` VALUES ('01', '32.692', '0.4527', '67', '17:10:08 638', '117.228094', '31.730876', '17668206');
INSERT INTO `station_data` VALUES ('01', '99.394', '0.4531', '63', '17:10:09 105', '117.22809', '31.730875', '17668206');
INSERT INTO `station_data` VALUES ('01', '35.539', '0.4358', '63', '17:10:09 675', '117.228274', '31.730877', '17668206');
INSERT INTO `station_data` VALUES ('01', '48.267', '0.4194', '63', '17:10:10 715', '117.228447', '31.730883', '17668206');
INSERT INTO `station_data` VALUES ('01', '187.914', '0.3941', '60', '17:10:11 674', '117.228633', '31.730885', '98055725');
INSERT INTO `station_data` VALUES ('01', '57.935', '0.4107', '60', '17:10:12 785', '117.228829', '31.730893', '98055725');
INSERT INTO `station_data` VALUES ('01', '36.16', '0.4275', '57', '17:10:13 601', '117.229025', '31.730899', '98055725');
INSERT INTO `station_data` VALUES ('01', '45.524', '0.4443', '57', '17:10:14 620', '117.229218', '31.730903', '98055725');
INSERT INTO `station_data` VALUES ('01', '32.739', '0.4612', '57', '17:10:15 836', '117.229412', '31.730908', '98055725');
INSERT INTO `station_data` VALUES ('01', '37.076', '0.4778', '57', '17:10:16 658', '117.2296', '31.730911', '98055725');
INSERT INTO `station_data` VALUES ('01', '36.558', '0.4943', '57', '17:10:17 699', '117.229786', '31.730914', '98055725');
INSERT INTO `station_data` VALUES ('01', '54.118', '0.4937', '56', '17:10:17 908', '117.229782', '31.730919', '98055725');
INSERT INTO `station_data` VALUES ('01', '37.156', '0.5111', '56', '17:10:18 711', '117.229973', '31.730914', '98055725');
INSERT INTO `station_data` VALUES ('01', '31.631', '0.5276', '56', '17:10:19 747', '117.230158', '31.730916', '98055725');
INSERT INTO `station_data` VALUES ('01', '50.906', '0.2416', '55', '17:10:20 784', '117.230347', '31.730919', '17668206');
INSERT INTO `station_data` VALUES ('01', '42.176', '0.2245', '55', '17:10:21 609', '117.230533', '31.73092', '17668206');
INSERT INTO `station_data` VALUES ('01', '35.27', '0.2071', '56', '17:10:22 627', '117.230722', '31.730922', '17668206');
INSERT INTO `station_data` VALUES ('01', '35.205', '0.1896', '56', '17:10:23 659', '117.230914', '31.730923', '17668206');
INSERT INTO `station_data` VALUES ('01', '40.649', '0.1894', '56', '17:10:23 857', '117.230916', '31.730922', '17668206');
INSERT INTO `station_data` VALUES ('01', '36.179', '0.1719', '56', '17:10:24 700', '117.231108', '31.730926', '17668206');
INSERT INTO `station_data` VALUES ('01', '46.779', '0.1541', '56', '17:10:25 741', '117.231305', '31.73093', '17668206');
INSERT INTO `station_data` VALUES ('01', '49.099', '0.1365', '56', '17:10:26 774', '117.231504', '31.730932', '17668206');
INSERT INTO `station_data` VALUES ('01', '39.212', '0.1191', '79', '17:10:27 601', '117.231705', '31.730934', '17668206');
INSERT INTO `station_data` VALUES ('01', '108.362', '0.1022', '79', '17:10:28 702', '117.231907', '31.730935', '17668206');
INSERT INTO `station_data` VALUES ('01', '85.276', '0.0863', '79', '17:10:29 715', '117.232106', '31.730938', '17668206');
INSERT INTO `station_data` VALUES ('01', '43.396', '0.0721', '79', '17:10:30 695', '117.232303', '31.73094', '17668206');
INSERT INTO `station_data` VALUES ('01', '59.755', '0.0604', '79', '17:10:31 735', '117.232497', '31.730944', '17668206');
INSERT INTO `station_data` VALUES ('01', '38.548', '0.0604', '79', '17:10:31 920', '117.2325', '31.730942', '17668206');
INSERT INTO `station_data` VALUES ('01', '46.417', '0.0528', '79', '17:10:32 557', '117.23269', '31.730946', '17668206');
INSERT INTO `station_data` VALUES ('01', '51.588', '0.0511', '65', '17:10:33 786', '117.232882', '31.730947', '17668206');
INSERT INTO `station_data` VALUES ('01', '42.108', '0.0554', '65', '17:10:34 595', '117.233072', '31.73095', '17668206');
INSERT INTO `station_data` VALUES ('01', '35.924', '0.0649', '65', '17:10:35 618', '117.233262', '31.730949', '17668205');
INSERT INTO `station_data` VALUES ('01', '33.56', '0.0772', '57', '17:10:36 649', '117.233449', '31.730949', '17668205');
INSERT INTO `station_data` VALUES ('01', '33.109', '0.0912', '57', '17:10:37 688', '117.233637', '31.730951', '17668205');
INSERT INTO `station_data` VALUES ('01', '50.757', '0.0909', '57', '17:10:37 908', '117.233635', '31.730953', '17668205');
INSERT INTO `station_data` VALUES ('01', '37.534', '0.1066', '66', '17:10:38 713', '117.233828', '31.730953', '17668205');
INSERT INTO `station_data` VALUES ('01', '34.54', '0.1228', '66', '17:10:39 744', '117.234019', '31.730954', '17668205');
INSERT INTO `station_data` VALUES ('01', '48.042', '0.1397', '66', '17:10:40 592', '117.234212', '31.730955', '17668205');
INSERT INTO `station_data` VALUES ('01', '35.987', '0.157', '66', '17:10:41 608', '117.234407', '31.730956', '17668205');
INSERT INTO `station_data` VALUES ('01', '36.058', '0.1746', '66', '17:10:42 637', '117.234602', '31.730957', '17668205');
INSERT INTO `station_data` VALUES ('01', '74.537', '0.1927', '75', '17:10:43 711', '117.234801', '31.730959', '17668205');
INSERT INTO `station_data` VALUES ('01', '40.708', '0.1928', '75', '17:10:43 878', '117.234801', '31.730955', '17668205');
INSERT INTO `station_data` VALUES ('01', '34.841', '0.2108', '75', '17:10:44 703', '117.234999', '31.730961', '17668205');
INSERT INTO `station_data` VALUES ('01', '40.145', '0.2292', '64', '17:10:45 738', '117.235199', '31.730962', '17668205');
INSERT INTO `station_data` VALUES ('01', '48.939', '0.2476', '64', '17:10:46 591', '117.235397', '31.730962', '17668205');
INSERT INTO `station_data` VALUES ('01', '36.543', '0.1472', '64', '17:10:47 611', '117.235596', '31.730963', '256511534');
INSERT INTO `station_data` VALUES ('01', '41.146', '0.1303', '64', '17:10:48 629', '117.235791', '31.730963', '256511534');
INSERT INTO `station_data` VALUES ('01', '35.439', '0.1137', '64', '17:10:49 663', '117.235985', '31.730965', '256511534');
INSERT INTO `station_data` VALUES ('01', '33.66', '0.0981', '64', '17:10:50 681', '117.236176', '31.730967', '256511534');
INSERT INTO `station_data` VALUES ('01', '40.422', '0.0834', '76', '17:10:51 716', '117.236367', '31.73097', '256511534');
INSERT INTO `station_data` VALUES ('01', '38.521', '0.0835', '76', '17:10:51 919', '117.236366', '31.73097', '256511534');
INSERT INTO `station_data` VALUES ('01', '43.24', '0.0708', '76', '17:10:52 752', '117.236555', '31.73097', '256511534');
INSERT INTO `station_data` VALUES ('01', '39.432', '0.0605', '76', '17:10:53 582', '117.236743', '31.730973', '256511534');
INSERT INTO `station_data` VALUES ('01', '35.764', '0.0543', '67', '17:10:54 601', '117.236932', '31.730975', '256511534');
INSERT INTO `station_data` VALUES ('01', '41.253', '0.0539', '67', '17:10:55 632', '117.237123', '31.730975', '256511534');
INSERT INTO `station_data` VALUES ('01', '131.154', '0.0594', '67', '17:10:56 556', '117.237316', '31.730975', '256511534');
INSERT INTO `station_data` VALUES ('01', '223.15', '0.6969', '67', '17:10:57 894', '117.237511', '31.730975', '138976174');
INSERT INTO `station_data` VALUES ('01', '56.284', '0.6967', '67', '17:10:57 914', '117.237512', '31.730979', '138976174');
INSERT INTO `station_data` VALUES ('01', '45.267', '0.6788', '68', '17:10:58 717', '117.237705', '31.730976', '138976174');
INSERT INTO `station_data` VALUES ('01', '45.755', '0.6606', '68', '17:10:59 558', '117.2379', '31.730978', '138976174');
INSERT INTO `station_data` VALUES ('01', '54.956', '0.6424', '65', '17:11:00 592', '117.238095', '31.73098', '138976174');
INSERT INTO `station_data` VALUES ('01', '56.818', '0.1295', '65', '17:11:01 629', '117.238289', '31.730981', '256511533');
INSERT INTO `station_data` VALUES ('01', '42.616', '0.1463', '65', '17:11:02 633', '117.238482', '31.730982', '256511533');
INSERT INTO `station_data` VALUES ('01', '42.239', '0.1632', '67', '17:11:03 666', '117.238672', '31.730983', '256511533');
INSERT INTO `station_data` VALUES ('01', '45.999', '0.1628', '67', '17:11:03 867', '117.238669', '31.730987', '256511533');
INSERT INTO `station_data` VALUES ('01', '35.765', '0.1803', '67', '17:11:04 674', '117.238862', '31.730983', '256511533');
INSERT INTO `station_data` VALUES ('01', '75.306', '0.1976', '70', '17:11:05 550', '117.239052', '31.730984', '256511533');
INSERT INTO `station_data` VALUES ('01', '35.639', '0.2149', '70', '17:11:06 734', '117.239242', '31.730986', '256511533');
INSERT INTO `station_data` VALUES ('01', '51.221', '0.2325', '70', '17:11:07 580', '117.239433', '31.730987', '256511533');
INSERT INTO `station_data` VALUES ('01', '36.572', '0.2502', '70', '17:11:08 589', '117.239625', '31.730988', '256511533');
INSERT INTO `station_data` VALUES ('01', '36.637', '0.2679', '67', '17:11:09 635', '117.239816', '31.730989', '256511533');
INSERT INTO `station_data` VALUES ('01', '32.968', '0.2859', '67', '17:11:10 652', '117.240009', '31.730988', '256511533');
INSERT INTO `station_data` VALUES ('01', '35.171', '0.3039', '71', '17:11:11 681', '117.240202', '31.730987', '256511533');
INSERT INTO `station_data` VALUES ('01', '42.669', '0.3043', '71', '17:11:11 897', '117.240206', '31.730985', '256511533');
INSERT INTO `station_data` VALUES ('01', '45.568', '0.3218', '71', '17:11:12 730', '117.240394', '31.730987', '256511533');
INSERT INTO `station_data` VALUES ('01', '35.774', '0.3399', '71', '17:11:13 743', '117.240587', '31.730987', '256511533');
INSERT INTO `station_data` VALUES ('01', '46.763', '0.3579', '66', '17:11:14 776', '117.24078', '31.730988', '256511533');
INSERT INTO `station_data` VALUES ('01', '65.227', '0.3758', '66', '17:11:15 817', '117.240971', '31.73099', '256511533');
INSERT INTO `station_data` VALUES ('01', '41.432', '0.3605', '66', '17:11:16 617', '117.241162', '31.73099', '138976174');
INSERT INTO `station_data` VALUES ('01', '62.12', '0.3433', '66', '17:11:17 665', '117.241354', '31.730991', '138976174');
INSERT INTO `station_data` VALUES ('01', '40.547', '0.3434', '66', '17:11:17 844', '117.241353', '31.730991', '138976174');
INSERT INTO `station_data` VALUES ('01', '60.631', '0.3263', '65', '17:11:18 706', '117.241545', '31.730992', '138976174');
INSERT INTO `station_data` VALUES ('01', '47.282', '0.2929', '71', '17:11:20 734', '117.241926', '31.730992', '138976174');
INSERT INTO `station_data` VALUES ('01', '54.245', '0.2763', '71', '17:11:21 773', '117.242118', '31.730993', '138976174');
INSERT INTO `station_data` VALUES ('01', '47.835', '0.2598', '71', '17:11:22 591', '117.242311', '31.730992', '138976174');
INSERT INTO `station_data` VALUES ('01', '56.966', '0.2436', '72', '17:11:23 827', '117.242504', '31.730993', '138976174');
INSERT INTO `station_data` VALUES ('01', '47.063', '0.2277', '72', '17:11:24 636', '117.242696', '31.730994', '138976174');
INSERT INTO `station_data` VALUES ('01', '52.169', '0.2138', '72', '17:11:25 658', '117.242872', '31.73099', '138976174');
INSERT INTO `station_data` VALUES ('01', '45.115', '0.1982', '72', '17:11:26 676', '117.243069', '31.730994', '138976174');
INSERT INTO `station_data` VALUES ('01', '51.847', '0.1836', '69', '17:11:27 710', '117.24326', '31.730997', '138976174');
INSERT INTO `station_data` VALUES ('01', '39.016', '0.1835', '69', '17:11:27 908', '117.243261', '31.730997', '138976174');
INSERT INTO `station_data` VALUES ('01', '52.51', '0.1702', '69', '17:11:28 550', '117.24345', '31.730995', '138976174');
INSERT INTO `station_data` VALUES ('01', '62.225', '0.1576', '72', '17:11:29 789', '117.243638', '31.730996', '138976174');
INSERT INTO `station_data` VALUES ('01', '55.899', '0.1461', '72', '17:11:30 601', '117.243821', '31.730999', '138976173');
INSERT INTO `station_data` VALUES ('01', '44.112', '0.1362', '74', '17:11:31 614', '117.244003', '31.731', '138976173');
INSERT INTO `station_data` VALUES ('01', '51.956', '0.1279', '79', '17:11:32 639', '117.244187', '31.730999', '138976173');
INSERT INTO `station_data` VALUES ('01', '49.501', '0.1215', '79', '17:11:33 660', '117.244374', '31.730998', '138976173');
INSERT INTO `station_data` VALUES ('01', '40.306', '0.1213', '79', '17:11:33 849', '117.244379', '31.730998', '138976173');
INSERT INTO `station_data` VALUES ('01', '41.697', '0.1175', '79', '17:11:34 684', '117.244564', '31.730996', '138976173');
INSERT INTO `station_data` VALUES ('01', '42.325', '0.1162', '79', '17:11:35 717', '117.244754', '31.730994', '138976173');
INSERT INTO `station_data` VALUES ('01', '124.362', '0.1174', '78', '17:11:36 622', '117.244939', '31.730993', '138976173');
INSERT INTO `station_data` VALUES ('01', '43.72', '0.1269', '78', '17:11:38 591', '117.245304', '31.730994', '138976173');
INSERT INTO `station_data` VALUES ('01', '42.082', '0.1347', '78', '17:11:39 613', '117.245484', '31.730994', '138976173');
INSERT INTO `station_data` VALUES ('01', '33.102', '0.1438', '78', '17:11:40 620', '117.245659', '31.730994', '138976173');
INSERT INTO `station_data` VALUES ('01', '72.001', '0.154', '78', '17:11:41 685', '117.245831', '31.730993', '138976173');
INSERT INTO `station_data` VALUES ('01', '33.606', '0.1541', '78', '17:11:41 838', '117.245829', '31.73099', '138976173');
INSERT INTO `station_data` VALUES ('01', '38.642', '0.1649', '78', '17:11:42 678', '117.245999', '31.730992', '138976173');
INSERT INTO `station_data` VALUES ('01', '33.45', '0.1761', '78', '17:11:43 694', '117.246163', '31.730995', '138976173');
INSERT INTO `station_data` VALUES ('01', '37.921', '0.1877', '78', '17:11:44 726', '117.24633', '31.731003', '138976173');
INSERT INTO `station_data` VALUES ('01', '32.264', '0.2004', '73', '17:11:45 757', '117.246502', '31.731009', '138976173');
INSERT INTO `station_data` VALUES ('01', '32.941', '0.2139', '73', '17:11:46 779', '117.246677', '31.731014', '138976173');
INSERT INTO `station_data` VALUES ('01', '37.834', '0.2284', '72', '17:11:47 609', '117.246857', '31.731016', '138976173');
INSERT INTO `station_data` VALUES ('01', '49.701', '0.2434', '72', '17:11:48 645', '117.247039', '31.731018', '138976173');
INSERT INTO `station_data` VALUES ('01', '44.787', '0.2588', '72', '17:11:49 658', '117.247222', '31.731019', '138976173');
INSERT INTO `station_data` VALUES ('01', '38.566', '0.2744', '72', '17:11:50 678', '117.247403', '31.731018', '138976173');
INSERT INTO `station_data` VALUES ('01', '188.147', '0.2748', '72', '17:11:51 025', '117.247408', '31.731019', '138976173');
INSERT INTO `station_data` VALUES ('01', '37.471', '0.2898', '72', '17:11:51 695', '117.247581', '31.731017', '138976173');
INSERT INTO `station_data` VALUES ('01', '33.474', '0.2718', '70', '17:11:52 712', '117.247754', '31.731016', '97564974');
INSERT INTO `station_data` VALUES ('01', '91.295', '0.2639', '70', '17:11:53 602', '117.24793', '31.731013', '97564974');
INSERT INTO `station_data` VALUES ('01', '36.418', '0.2565', '68', '17:11:54 780', '117.248109', '31.731011', '97564974');
INSERT INTO `station_data` VALUES ('01', '35.399', '0.2501', '68', '17:11:55 607', '117.248295', '31.731007', '97564974');
INSERT INTO `station_data` VALUES ('01', '41.939', '0.245', '67', '17:11:56 624', '117.248482', '31.731', '97564974');
INSERT INTO `station_data` VALUES ('01', '195.629', '0.2413', '67', '17:11:57 604', '117.248669', '31.730992', '97564974');
INSERT INTO `station_data` VALUES ('01', '65.498', '0.2385', '67', '17:11:58 721', '117.248849', '31.730987', '97564974');
INSERT INTO `station_data` VALUES ('01', '43.557', '0.237', '67', '17:11:59 710', '117.24902', '31.730983', '97564974');
INSERT INTO `station_data` VALUES ('01', '40.619', '0.2362', '67', '17:12:00 726', '117.249189', '31.730982', '97564974');
INSERT INTO `station_data` VALUES ('01', '36.94', '0.2365', '67', '17:12:01 758', '117.249359', '31.730981', '97564974');
INSERT INTO `station_data` VALUES ('01', '51.179', '0.2377', '67', '17:12:02 590', '117.249533', '31.730982', '97564974');
INSERT INTO `station_data` VALUES ('01', '60.985', '0.2404', '66', '17:12:03 832', '117.249712', '31.730981', '97564974');
INSERT INTO `station_data` VALUES ('01', '49.176', '0.2442', '66', '17:12:04 636', '117.249897', '31.730981', '97564974');
INSERT INTO `station_data` VALUES ('01', '36.211', '0.2493', '64', '17:12:05 657', '117.250084', '31.730981', '97564974');
INSERT INTO `station_data` VALUES ('01', '74.48', '0.2557', '64', '17:12:06 720', '117.250271', '31.730979', '97564973');
INSERT INTO `station_data` VALUES ('01', '203.167', '0.3358', '60', '17:12:07 868', '117.250457', '31.730979', '98122286');
INSERT INTO `station_data` VALUES ('01', '60.04', '0.3355', '60', '17:12:07 932', '117.25046', '31.73098', '98122286');
INSERT INTO `station_data` VALUES ('01', '42.227', '0.2714', '60', '17:12:08 727', '117.250645', '31.730976', '97564973');
INSERT INTO `station_data` VALUES ('01', '32.155', '0.2809', '60', '17:12:09 753', '117.250836', '31.730974', '97564973');
INSERT INTO `station_data` VALUES ('01', '35.787', '0.2914', '60', '17:12:10 581', '117.251028', '31.73097', '97564973');
INSERT INTO `station_data` VALUES ('01', '61.853', '0.3026', '60', '17:12:11 633', '117.251221', '31.730968', '97564973');
INSERT INTO `station_data` VALUES ('01', '56.737', '0.3141', '64', '17:12:12 646', '117.251411', '31.730967', '97564973');
INSERT INTO `station_data` VALUES ('01', '49.915', '0.2357', '64', '17:12:13 671', '117.251602', '31.730965', '98122286');
INSERT INTO `station_data` VALUES ('01', '46.165', '0.2198', '70', '17:12:14 688', '117.251793', '31.730963', '98122286');
INSERT INTO `station_data` VALUES ('01', '353.932', '0.2038', '70', '17:12:15 830', '117.251988', '31.730962', '98122286');
INSERT INTO `station_data` VALUES ('01', '161.814', '0.2035', '70', '17:12:15 833', '117.251992', '31.730963', '98122286');
INSERT INTO `station_data` VALUES ('01', '58.477', '0.3664', '70', '17:12:16 545', '117.252183', '31.730963', '97564973');
INSERT INTO `station_data` VALUES ('01', '53.1', '0.1733', '65', '17:12:17 581', '117.252376', '31.730964', '98122286');
INSERT INTO `station_data` VALUES ('01', '33.614', '0.159', '65', '17:12:18 594', '117.25257', '31.730966', '98122286');
INSERT INTO `station_data` VALUES ('01', '36.355', '0.1456', '65', '17:12:19 612', '117.252761', '31.73097', '98122286');
INSERT INTO `station_data` VALUES ('01', '46.538', '0.1333', '65', '17:12:20 674', '117.252951', '31.730975', '98122286');
INSERT INTO `station_data` VALUES ('01', '42.625', '0.1224', '72', '17:12:21 694', '117.253139', '31.73098', '98122286');
INSERT INTO `station_data` VALUES ('01', '40.412', '0.1134', '72', '17:12:22 713', '117.253326', '31.730986', '98122286');
INSERT INTO `station_data` VALUES ('01', '91.613', '0.1065', '64', '17:12:23 803', '117.253514', '31.730992', '98122286');
INSERT INTO `station_data` VALUES ('01', '42.544', '0.1022', '64', '17:12:24 784', '117.253702', '31.730998', '98122286');
INSERT INTO `station_data` VALUES ('01', '70.202', '0.3073', '64', '17:12:25 003', '117.253705', '31.731001', '17690990');
INSERT INTO `station_data` VALUES ('01', '62.873', '0.2905', '65', '17:12:25 634', '117.253889', '31.731007', '17690990');
INSERT INTO `station_data` VALUES ('01', '39.423', '0.2733', '65', '17:12:26 629', '117.254076', '31.731016', '17690990');
INSERT INTO `station_data` VALUES ('01', '42.503', '0.256', '65', '17:12:27 679', '117.254266', '31.731024', '17690990');
INSERT INTO `station_data` VALUES ('01', '36.397', '0.2387', '65', '17:12:28 696', '117.254456', '31.731034', '17690990');
INSERT INTO `station_data` VALUES ('01', '42.601', '0.2215', '65', '17:12:29 732', '117.254646', '31.731044', '17690990');
INSERT INTO `station_data` VALUES ('01', '45.083', '0.2042', '69', '17:12:30 770', '117.254838', '31.731057', '17690990');
INSERT INTO `station_data` VALUES ('01', '51.617', '0.1871', '69', '17:12:31 598', '117.255029', '31.73107', '17690990');
INSERT INTO `station_data` VALUES ('01', '42.982', '0.1699', '69', '17:12:32 628', '117.255222', '31.731086', '17690990');
INSERT INTO `station_data` VALUES ('01', '52.604', '0.1531', '69', '17:12:33 652', '117.255413', '31.731102', '17690990');
INSERT INTO `station_data` VALUES ('01', '43.513', '0.1368', '74', '17:12:34 671', '117.255602', '31.73112', '17690990');
INSERT INTO `station_data` VALUES ('01', '50.744', '0.121', '74', '17:12:35 705', '117.255791', '31.731137', '17690990');
INSERT INTO `station_data` VALUES ('01', '38.793', '0.1213', '74', '17:12:35 892', '117.255789', '31.731135', '17690990');
INSERT INTO `station_data` VALUES ('01', '41.032', '0.1058', '74', '17:12:36 720', '117.255978', '31.731157', '17690990');
INSERT INTO `station_data` VALUES ('01', '37.952', '0.0916', '74', '17:12:37 748', '117.256165', '31.731177', '17690990');
INSERT INTO `station_data` VALUES ('01', '44.357', '0.079', '74', '17:12:38 591', '117.25635', '31.731196', '17690990');
INSERT INTO `station_data` VALUES ('01', '49.945', '0.0685', '77', '17:12:39 825', '117.256536', '31.731217', '17690990');
INSERT INTO `station_data` VALUES ('01', '33.59', '0.0615', '77', '17:12:40 626', '117.25672', '31.731238', '17690990');
INSERT INTO `station_data` VALUES ('01', '52.094', '0.0589', '69', '17:12:41 672', '117.256904', '31.73126', '17690990');
INSERT INTO `station_data` VALUES ('01', '40.06', '0.0584', '69', '17:12:41 857', '117.256901', '31.731264', '17690990');
INSERT INTO `station_data` VALUES ('01', '42.237', '0.0615', '69', '17:12:42 682', '117.257091', '31.731283', '17690990');
INSERT INTO `station_data` VALUES ('01', '421.288', '0.3334', '67', '17:12:43 675', '117.25728', '31.731308', '98122285');
INSERT INTO `station_data` VALUES ('01', '34.868', '0.0796', '67', '17:12:44 731', '117.257471', '31.731334', '17690989');
INSERT INTO `station_data` VALUES ('01', '32.087', '0.0928', '70', '17:12:45 752', '117.257661', '31.731359', '17690989');
INSERT INTO `station_data` VALUES ('01', '43.934', '0.1073', '70', '17:12:46 599', '117.25785', '31.731386', '17690989');
INSERT INTO `station_data` VALUES ('01', '32.551', '0.1228', '70', '17:12:47 818', '117.258039', '31.731412', '17690989');
INSERT INTO `station_data` VALUES ('01', '35.282', '0.1389', '77', '17:12:48 640', '117.258227', '31.731437', '17690989');
INSERT INTO `station_data` VALUES ('01', '37.726', '0.1554', '77', '17:12:49 663', '117.258414', '31.73146', '17690989');
INSERT INTO `station_data` VALUES ('01', '46.077', '0.1556', '77', '17:12:49 882', '117.258416', '31.731458', '17690989');
INSERT INTO `station_data` VALUES ('01', '34.107', '0.1724', '71', '17:12:50 701', '117.258603', '31.731482', '17690989');
INSERT INTO `station_data` VALUES ('01', '40.187', '0.1898', '71', '17:12:51 725', '117.258795', '31.731503', '17690989');
INSERT INTO `station_data` VALUES ('01', '50.045', '0.2076', '70', '17:12:52 778', '117.258989', '31.731523', '17690989');
INSERT INTO `station_data` VALUES ('01', '35.281', '0.2257', '70', '17:12:53 596', '117.259185', '31.731543', '17690989');
INSERT INTO `station_data` VALUES ('01', '35.768', '0.2439', '70', '17:12:54 617', '117.259381', '31.731563', '17690989');
INSERT INTO `station_data` VALUES ('01', '46.044', '0.2624', '70', '17:12:55 658', '117.259579', '31.731581', '17690989');
INSERT INTO `station_data` VALUES ('01', '40.52', '0.2625', '70', '17:12:55 854', '117.25958', '31.731585', '17690989');
INSERT INTO `station_data` VALUES ('01', '47.485', '0.2847', '70', '17:12:56 684', '117.259777', '31.731599', '97550084');
INSERT INTO `station_data` VALUES ('01', '38.485', '0.276', '68', '17:12:57 720', '117.259976', '31.731617', '97550084');
INSERT INTO `station_data` VALUES ('01', '33.822', '0.2682', '68', '17:12:58 761', '117.260175', '31.731634', '97550084');
INSERT INTO `station_data` VALUES ('01', '43.558', '0.2619', '66', '17:12:59 796', '117.260373', '31.731654', '97550084');
INSERT INTO `station_data` VALUES ('01', '40.039', '0.2566', '66', '17:13:00 624', '117.260572', '31.731673', '97550084');
INSERT INTO `station_data` VALUES ('01', '44.535', '0.2528', '64', '17:13:01 637', '117.26077', '31.731692', '97550084');
INSERT INTO `station_data` VALUES ('01', '37.514', '0.2499', '64', '17:13:02 661', '117.260965', '31.731707', '97550084');
INSERT INTO `station_data` VALUES ('01', '32.296', '0.2483', '64', '17:13:03 686', '117.261158', '31.731721', '97550084');
INSERT INTO `station_data` VALUES ('01', '37.182', '0.2476', '64', '17:13:04 718', '117.261348', '31.731731', '97550084');
INSERT INTO `station_data` VALUES ('01', '35.514', '0.2479', '64', '17:13:05 754', '117.261535', '31.731738', '97550084');
INSERT INTO `station_data` VALUES ('01', '52.906', '0.2482', '63', '17:13:05 965', '117.261537', '31.731741', '97550084');
INSERT INTO `station_data` VALUES ('01', '41.186', '0.2494', '63', '17:13:06 777', '117.261724', '31.731745', '97550084');
INSERT INTO `station_data` VALUES ('01', '33.521', '0.2522', '63', '17:13:07 594', '117.261914', '31.731751', '97550084');
INSERT INTO `station_data` VALUES ('01', '53.708', '0.8091', '63', '17:13:08 632', '117.262106', '31.731756', '98304302');
INSERT INTO `station_data` VALUES ('01', '51.075', '0.7909', '63', '17:13:09 662', '117.262299', '31.731759', '98304302');
INSERT INTO `station_data` VALUES ('01', '36.58', '0.7723', '60', '17:13:10 672', '117.262495', '31.731761', '98304302');
INSERT INTO `station_data` VALUES ('01', '157.019', '0.7536', '60', '17:13:11 625', '117.262693', '31.731762', '98304302');
INSERT INTO `station_data` VALUES ('01', '36.005', '0.7538', '60', '17:13:11 920', '117.262691', '31.731766', '98304302');
INSERT INTO `station_data` VALUES ('01', '31.914', '0.2844', '60', '17:13:12 730', '117.262893', '31.731763', '98318342');
INSERT INTO `station_data` VALUES ('01', '34.58', '0.2654', '60', '17:13:13 761', '117.263095', '31.731762', '98318342');
INSERT INTO `station_data` VALUES ('01', '48.992', '0.2465', '60', '17:13:14 603', '117.263297', '31.73176', '98318342');
INSERT INTO `station_data` VALUES ('01', '43.412', '0.2277', '61', '17:13:15 614', '117.263497', '31.731758', '98318342');
INSERT INTO `station_data` VALUES ('01', '144.969', '0.209', '61', '17:13:16 734', '117.263697', '31.731754', '98318342');
INSERT INTO `station_data` VALUES ('01', '38.375', '0.1903', '61', '17:13:17 650', '117.263897', '31.731751', '98318342');
INSERT INTO `station_data` VALUES ('01', '662.685', '0.1902', '61', '17:13:18 476', '117.263897', '31.731749', '98318342');
INSERT INTO `station_data` VALUES ('01', '36.154', '0.153', '61', '17:13:19 708', '117.264295', '31.731735', '98318342');
INSERT INTO `station_data` VALUES ('01', '33.781', '0.1346', '61', '17:13:20 730', '117.264492', '31.731726', '98318342');
INSERT INTO `station_data` VALUES ('01', '36.407', '0.1166', '74', '17:13:21 762', '117.264685', '31.731717', '98318342');
INSERT INTO `station_data` VALUES ('01', '46.621', '0.0992', '74', '17:13:22 798', '117.264873', '31.731707', '98318342');
INSERT INTO `station_data` VALUES ('01', '41.426', '0.0821', '59', '17:13:23 825', '117.265061', '31.731697', '98318340');
INSERT INTO `station_data` VALUES ('01', '35.377', '0.0653', '59', '17:13:24 643', '117.265247', '31.731686', '98318340');
INSERT INTO `station_data` VALUES ('01', '35.453', '0.0493', '59', '17:13:25 679', '117.265432', '31.731674', '98318340');
INSERT INTO `station_data` VALUES ('01', '50.206', '0.0492', '59', '17:13:25 885', '117.265434', '31.731676', '98318340');
INSERT INTO `station_data` VALUES ('01', '34.309', '0.0344', '71', '17:13:26 707', '117.265619', '31.73166', '98318340');
INSERT INTO `station_data` VALUES ('01', '44.502', '0.0238', '71', '17:13:27 755', '117.265806', '31.731645', '98318340');
INSERT INTO `station_data` VALUES ('01', '40.663', '0.0243', '71', '17:13:28 777', '117.265995', '31.73163', '98318340');
INSERT INTO `station_data` VALUES ('01', '52.886', '0.0355', '71', '17:13:29 616', '117.266185', '31.731614', '98318340');
INSERT INTO `station_data` VALUES ('01', '56.335', '0.0507', '71', '17:13:30 635', '117.266375', '31.731597', '98318340');
INSERT INTO `station_data` VALUES ('01', '37.508', '0.0676', '71', '17:13:31 642', '117.266567', '31.731579', '98318340');
INSERT INTO `station_data` VALUES ('01', '34.051', '0.0853', '71', '17:13:32 678', '117.266762', '31.731559', '98318340');
INSERT INTO `station_data` VALUES ('01', '183.189', '0.1035', '64', '17:13:33 835', '117.26696', '31.731537', '98318341');
INSERT INTO `station_data` VALUES ('01', '41.031', '0.1036', '64', '17:13:33 916', '117.266961', '31.731533', '98318341');
INSERT INTO `station_data` VALUES ('01', '50.576', '0.1221', '64', '17:13:34 731', '117.267159', '31.731512', '98318341');
INSERT INTO `station_data` VALUES ('01', '32.711', '0.1407', '65', '17:13:35 749', '117.267358', '31.731486', '98318341');
INSERT INTO `station_data` VALUES ('01', '54.906', '0.1595', '65', '17:13:36 794', '117.267557', '31.73146', '98318341');
INSERT INTO `station_data` VALUES ('01', '33.146', '0.1777', '65', '17:13:37 599', '117.267749', '31.731434', '98318341');
INSERT INTO `station_data` VALUES ('01', '53.927', '0.2566', '65', '17:13:38 632', '117.26794', '31.731408', '98304302');
INSERT INTO `station_data` VALUES ('01', '42.226', '0.2387', '64', '17:13:39 665', '117.268131', '31.731381', '98304302');
INSERT INTO `station_data` VALUES ('01', '32.763', '0.2209', '64', '17:13:40 675', '117.268321', '31.731352', '98304302');
INSERT INTO `station_data` VALUES ('01', '38.277', '0.2033', '64', '17:13:41 717', '117.268511', '31.731323', '98304302');
INSERT INTO `station_data` VALUES ('01', '36.67', '0.2034', '64', '17:13:41 926', '117.26851', '31.731327', '98304302');
INSERT INTO `station_data` VALUES ('01', '60.578', '0.1858', '64', '17:13:42 590', '117.268701', '31.731293', '98304302');
INSERT INTO `station_data` VALUES ('01', '63.927', '0.2859', '64', '17:13:43 813', '117.268885', '31.73126', '98318341');
INSERT INTO `station_data` VALUES ('01', '37.219', '0.3019', '61', '17:13:44 604', '117.26905', '31.731215', '98318341');
INSERT INTO `station_data` VALUES ('01', '60.32', '0.6588', '56', '17:13:49 754', '117.269997', '31.731118', '98128906');
INSERT INTO `station_data` VALUES ('01', '46.862', '0.6588', '56', '17:13:49 945', '117.269998', '31.731122', '98128906');
INSERT INTO `station_data` VALUES ('01', '45.771', '0.0615', '61', '17:13:51 591', '117.270338', '31.731024', '98304301');
INSERT INTO `station_data` VALUES ('01', '38.258', '0.0582', '61', '17:13:52 825', '117.270512', '31.731', '98304301');
INSERT INTO `station_data` VALUES ('01', '37.4', '0.0596', '63', '17:13:53 637', '117.270714', '31.730978', '98304301');
INSERT INTO `station_data` VALUES ('01', '34.232', '0.0675', '63', '17:13:54 673', '117.270916', '31.730949', '98304301');
INSERT INTO `station_data` VALUES ('01', '36.078', '0.0777', '63', '17:13:55 691', '117.271102', '31.730929', '98304301');
INSERT INTO `station_data` VALUES ('01', '34.36', '0.0773', '63', '17:13:55 897', '117.271103', '31.730934', '98304301');
INSERT INTO `station_data` VALUES ('01', '33.42', '0.0907', '63', '17:13:56 724', '117.27129', '31.730906', '98304301');
INSERT INTO `station_data` VALUES ('01', '43.679', '0.1058', '58', '17:13:57 765', '117.271486', '31.730882', '98304301');
INSERT INTO `station_data` VALUES ('01', '43.019', '0.1219', '58', '17:13:58 590', '117.271682', '31.730859', '98304301');
INSERT INTO `station_data` VALUES ('01', '34.476', '0.1385', '67', '17:13:59 601', '117.271873', '31.730831', '98304301');
INSERT INTO `station_data` VALUES ('01', '38.236', '0.4589', '64', '17:14:00 623', '117.272092', '31.730811', '98128942');
INSERT INTO `station_data` VALUES ('01', '50.635', '0.4402', '64', '17:14:01 658', '117.27229', '31.730795', '98128942');
INSERT INTO `station_data` VALUES ('01', '53.875', '0.4209', '63', '17:14:02 698', '117.272494', '31.73078', '98128942');
INSERT INTO `station_data` VALUES ('01', '50.601', '0.4012', '63', '17:14:03 706', '117.272702', '31.730763', '98128942');
INSERT INTO `station_data` VALUES ('01', '32.979', '0.3824', '63', '17:14:04 720', '117.272902', '31.73075', '98128942');
INSERT INTO `station_data` VALUES ('01', '38.711', '0.3637', '63', '17:14:05 748', '117.273101', '31.730736', '98128942');
INSERT INTO `station_data` VALUES ('01', '49.834', '0.3452', '65', '17:14:06 780', '117.273294', '31.730712', '98128942');
INSERT INTO `station_data` VALUES ('01', '63.207', '0.3271', '65', '17:14:07 630', '117.273487', '31.7307', '98128942');
INSERT INTO `station_data` VALUES ('01', '34.079', '0.31', '63', '17:14:08 615', '117.27367', '31.730692', '98128942');
INSERT INTO `station_data` VALUES ('01', '83.364', '0.2929', '63', '17:14:09 708', '117.273853', '31.730682', '98128942');
INSERT INTO `station_data` VALUES ('01', '50.34', '0.2761', '63', '17:14:10 695', '117.274035', '31.730675', '98128942');
INSERT INTO `station_data` VALUES ('01', '36.189', '0.2763', '63', '17:14:10 880', '117.274031', '31.730672', '98128942');
INSERT INTO `station_data` VALUES ('01', '58.976', '0.2597', '63', '17:14:11 734', '117.274212', '31.730669', '98128942');
INSERT INTO `station_data` VALUES ('01', '44.742', '0.2438', '63', '17:14:12 747', '117.274385', '31.730662', '98128942');
INSERT INTO `station_data` VALUES ('01', '37.492', '0.2279', '63', '17:14:13 771', '117.274559', '31.730658', '98128942');
INSERT INTO `station_data` VALUES ('01', '96.457', '0.2117', '63', '17:14:14 656', '117.274736', '31.730651', '98128942');
INSERT INTO `station_data` VALUES ('01', '50.493', '0.1955', '66', '17:14:15 631', '117.274916', '31.730647', '98128942');
INSERT INTO `station_data` VALUES ('01', '39.147', '0.1791', '66', '17:14:16 652', '117.2751', '31.730645', '98128942');
INSERT INTO `station_data` VALUES ('01', '46.914', '0.1793', '66', '17:14:17 051', '117.275097', '31.730643', '98128942');
INSERT INTO `station_data` VALUES ('01', '53.592', '0.3646', '64', '17:14:17 682', '117.275287', '31.730642', '243721901');
INSERT INTO `station_data` VALUES ('01', '49.352', '0.3677', '64', '17:14:18 707', '117.275475', '31.730636', '243721901');
INSERT INTO `station_data` VALUES ('01', '198.767', '0.3712', '63', '17:14:19 878', '117.27566', '31.730633', '243721901');
INSERT INTO `station_data` VALUES ('01', '56.517', '0.3766', '63', '17:14:20 752', '117.275835', '31.730618', '243721901');
INSERT INTO `station_data` VALUES ('01', '91.436', '0.1006', '63', '17:14:21 615', '117.276037', '31.730619', '98128942');
INSERT INTO `station_data` VALUES ('01', '46.278', '0.0877', '63', '17:14:22 805', '117.276233', '31.730626', '98128942');
INSERT INTO `station_data` VALUES ('01', '54.92', '0.0746', '63', '17:14:23 636', '117.276445', '31.730614', '98128942');
INSERT INTO `station_data` VALUES ('01', '75.237', '0.0666', '63', '17:14:24 685', '117.27665', '31.730614', '98128942');
INSERT INTO `station_data` VALUES ('01', '39.208', '0.4128', '61', '17:14:25 665', '117.276861', '31.730606', '243721901');
INSERT INTO `station_data` VALUES ('01', '87.592', '0.4132', '61', '17:14:25 921', '117.276858', '31.730601', '243721901');
INSERT INTO `station_data` VALUES ('01', '43.709', '0.0655', '60', '17:14:26 697', '117.277071', '31.7306', '98128940');
INSERT INTO `station_data` VALUES ('01', '37.609', '0.0739', '60', '17:14:27 710', '117.277275', '31.7306', '98128940');
INSERT INTO `station_data` VALUES ('01', '0', '0.4148', '66', '17:14:29 713', '117.277658', '31.730599', '73220846');
INSERT INTO `station_data` VALUES ('01', '148', '0.397', '66', '17:14:30 720', '117.277847', '31.730599', '73220846');
INSERT INTO `station_data` VALUES ('01', '35.18', '0.378', '65', '17:14:31 664', '117.27805', '31.730594', '73220846');
INSERT INTO `station_data` VALUES ('01', '42.549', '0.378', '65', '17:14:32 700', '117.27805', '31.730594', '73220846');
INSERT INTO `station_data` VALUES ('01', '35.893', '0.3411', '65', '17:14:33 716', '117.278442', '31.730594', '73220846');
INSERT INTO `station_data` VALUES ('01', '33.576', '0.3237', '65', '17:14:34 748', '117.278629', '31.730587', '73220846');
INSERT INTO `station_data` VALUES ('01', '38.669', '0.3061', '65', '17:14:35 789', '117.27882', '31.730571', '73220846');
INSERT INTO `station_data` VALUES ('01', '59.204', '0.289', '65', '17:14:36 641', '117.279003', '31.730571', '73220846');
INSERT INTO `station_data` VALUES ('01', '44.138', '0.2715', '65', '17:14:37 638', '117.279191', '31.730565', '73220846');
INSERT INTO `station_data` VALUES ('01', '80.836', '0.2543', '64', '17:14:38 695', '117.279377', '31.73056', '73220846');
INSERT INTO `station_data` VALUES ('01', '36.739', '0.2372', '64', '17:14:39 679', '117.279563', '31.730554', '73220846');
INSERT INTO `station_data` VALUES ('01', '36.243', '0.2198', '64', '17:14:40 707', '117.279752', '31.730551', '73220846');
INSERT INTO `station_data` VALUES ('01', '31.653', '0.2027', '64', '17:14:41 745', '117.279939', '31.730547', '73220846');
INSERT INTO `station_data` VALUES ('01', '39.892', '0.2029', '64', '17:14:41 951', '117.279936', '31.730547', '73220846');
INSERT INTO `station_data` VALUES ('01', '37.367', '0.1853', '70', '17:14:42 776', '117.28013', '31.730542', '73220846');
INSERT INTO `station_data` VALUES ('01', '31.138', '0.1683', '70', '17:14:43 597', '117.280319', '31.730539', '73220846');
INSERT INTO `station_data` VALUES ('01', '41.791', '0.1514', '74', '17:14:44 626', '117.280507', '31.730538', '73220846');
INSERT INTO `station_data` VALUES ('01', '58.955', '0.1345', '74', '17:14:45 668', '117.280699', '31.730536', '73220846');
INSERT INTO `station_data` VALUES ('01', '32.799', '0.1182', '65', '17:14:46 669', '117.280889', '31.730532', '73220846');
INSERT INTO `station_data` VALUES ('01', '32.819', '0.1021', '65', '17:14:47 719', '117.281084', '31.730528', '73220846');
INSERT INTO `station_data` VALUES ('01', '36.044', '0.1023', '65', '17:14:47 920', '117.281082', '31.730528', '73220846');
INSERT INTO `station_data` VALUES ('01', '37.322', '0.087', '65', '17:14:48 748', '117.281278', '31.730524', '73220846');
INSERT INTO `station_data` VALUES ('01', '36.31', '0.073', '65', '17:14:49 767', '117.281476', '31.730522', '73220846');
INSERT INTO `station_data` VALUES ('01', '69.233', '0.0627', '65', '17:14:50 633', '117.281664', '31.730514', '73220846');
INSERT INTO `station_data` VALUES ('01', '51.369', '0.5025', '65', '17:14:51 638', '117.281866', '31.730518', '98214701');
INSERT INTO `station_data` VALUES ('01', '40.715', '0.0537', '66', '17:14:52 643', '117.282059', '31.73051', '73220845');
INSERT INTO `station_data` VALUES ('01', '34.622', '0.0587', '69', '17:14:53 699', '117.282263', '31.730508', '73220845');
INSERT INTO `station_data` VALUES ('01', '53.107', '0.0586', '69', '17:14:53 913', '117.28226', '31.730508', '73220845');
INSERT INTO `station_data` VALUES ('01', '32.725', '0.0691', '69', '17:14:54 714', '117.282463', '31.730502', '73220845');
INSERT INTO `station_data` VALUES ('01', '39.127', '0.0823', '67', '17:14:55 752', '117.28266', '31.730496', '73220845');
INSERT INTO `station_data` VALUES ('01', '38.164', '0.3365', '67', '17:14:56 778', '117.282853', '31.730488', '138946734');
INSERT INTO `station_data` VALUES ('01', '43.989', '0.3186', '67', '17:14:57 606', '117.283044', '31.730485', '138946734');
INSERT INTO `station_data` VALUES ('01', '55.328', '0.3008', '69', '17:14:58 646', '117.283235', '31.730482', '138946734');
INSERT INTO `station_data` VALUES ('01', '48.666', '0.2829', '69', '17:14:59 667', '117.283427', '31.730477', '138946734');
INSERT INTO `station_data` VALUES ('01', '33.626', '0.2645', '70', '17:15:00 672', '117.283624', '31.730473', '138946734');
INSERT INTO `station_data` VALUES ('01', '34.358', '0.2462', '70', '17:15:01 707', '117.283821', '31.730471', '138946734');
INSERT INTO `station_data` VALUES ('01', '40.744', '0.228', '72', '17:15:02 744', '117.284017', '31.730468', '138946734');
INSERT INTO `station_data` VALUES ('01', '32.145', '0.2099', '72', '17:15:03 763', '117.284213', '31.730465', '138946734');
INSERT INTO `station_data` VALUES ('01', '31.809', '0.1917', '76', '17:15:04 589', '117.284411', '31.730461', '138946734');
INSERT INTO `station_data` VALUES ('01', '54.998', '0.1753', '76', '17:15:05 637', '117.284591', '31.730457', '138946734');
INSERT INTO `station_data` VALUES ('01', '47.793', '0.1596', '76', '17:15:06 646', '117.284766', '31.730448', '138946734');
INSERT INTO `station_data` VALUES ('01', '36.376', '0.1429', '76', '17:15:07 668', '117.284952', '31.730447', '138946734');
INSERT INTO `station_data` VALUES ('01', '35.199', '0.1427', '76', '17:15:07 864', '117.284955', '31.730444', '138946734');
INSERT INTO `station_data` VALUES ('01', '43.828', '0.126', '76', '17:15:08 701', '117.285142', '31.730447', '138946734');
INSERT INTO `station_data` VALUES ('01', '46.064', '0.1093', '84', '17:15:09 733', '117.285333', '31.730448', '138946734');
INSERT INTO `station_data` VALUES ('01', '44.544', '0.0935', '84', '17:15:10 754', '117.285522', '31.730446', '138946734');
INSERT INTO `station_data` VALUES ('01', '36.482', '0.0785', '84', '17:15:11 590', '117.285712', '31.730444', '138946734');
INSERT INTO `station_data` VALUES ('01', '37.194', '0.0654', '84', '17:15:12 612', '117.2859', '31.730439', '138946734');
INSERT INTO `station_data` VALUES ('01', '33.755', '0.056', '71', '17:15:13 831', '117.286077', '31.730429', '138946734');
INSERT INTO `station_data` VALUES ('01', '50.497', '0.0487', '71', '17:15:14 676', '117.286272', '31.730434', '138946734');
INSERT INTO `station_data` VALUES ('01', '65.204', '0.0488', '71', '17:15:15 740', '117.286459', '31.730428', '138946734');
INSERT INTO `station_data` VALUES ('01', '39.737', '0.0483', '71', '17:15:15 907', '117.286455', '31.730432', '138946733');
INSERT INTO `station_data` VALUES ('01', '62.689', '0.0541', '71', '17:15:16 779', '117.286634', '31.730426', '138946733');
INSERT INTO `station_data` VALUES ('01', '417.682', '0.0637', '71', '17:15:17 952', '117.286811', '31.730422', '138946733');
INSERT INTO `station_data` VALUES ('01', '64.091', '0.0763', '71', '17:15:18 629', '117.286996', '31.730419', '138946733');
INSERT INTO `station_data` VALUES ('01', '50.681', '0.0906', '71', '17:15:19 636', '117.287177', '31.73041', '138946733');
INSERT INTO `station_data` VALUES ('01', '63.642', '0.1054', '76', '17:15:20 675', '117.287356', '31.730405', '138946733');
INSERT INTO `station_data` VALUES ('01', '53.578', '0.1212', '76', '17:15:21 688', '117.287544', '31.730407', '138946733');
INSERT INTO `station_data` VALUES ('01', '64.001', '0.121', '76', '17:15:21 900', '117.287541', '31.730406', '138946733');
INSERT INTO `station_data` VALUES ('01', '40.828', '0.1373', '72', '17:15:22 710', '117.287727', '31.730404', '138946733');
INSERT INTO `station_data` VALUES ('01', '47.629', '0.1543', '72', '17:15:23 739', '117.287918', '31.730402', '138946733');
INSERT INTO `station_data` VALUES ('01', '44.105', '0.1718', '72', '17:15:24 771', '117.28811', '31.730396', '138946733');
INSERT INTO `station_data` VALUES ('01', '38.686', '0.1897', '72', '17:15:25 600', '117.288306', '31.730392', '138946733');
INSERT INTO `station_data` VALUES ('01', '47.446', '0.2078', '72', '17:15:26 627', '117.288504', '31.73039', '138946733');
INSERT INTO `station_data` VALUES ('01', '71.404', '0.2257', '72', '17:15:27 669', '117.288699', '31.730389', '138946733');
INSERT INTO `station_data` VALUES ('01', '57.378', '0.2439', '72', '17:15:28 692', '117.288896', '31.730388', '138946733');
INSERT INTO `station_data` VALUES ('01', '43.235', '0.2442', '72', '17:15:28 873', '117.288898', '31.730386', '138946733');
INSERT INTO `station_data` VALUES ('01', '42.948', '0.2621', '71', '17:15:29 704', '117.289092', '31.730386', '138946733');
INSERT INTO `station_data` VALUES ('01', '48.548', '0.2803', '71', '17:15:30 743', '117.289287', '31.730384', '138946733');
INSERT INTO `station_data` VALUES ('01', '42.838', '0.2978', '70', '17:15:31 768', '117.289475', '31.730381', '138946733');
INSERT INTO `station_data` VALUES ('01', '51.091', '0.3156', '70', '17:15:32 613', '117.289665', '31.730378', '138946733');
INSERT INTO `station_data` VALUES ('01', '34.204', '0.3336', '70', '17:15:33 608', '117.289857', '31.730375', '138946733');
INSERT INTO `station_data` VALUES ('01', '50.997', '0.3517', '70', '17:15:34 676', '117.29005', '31.730372', '138946733');
INSERT INTO `station_data` VALUES ('01', '61.501', '0.3697', '70', '17:15:35 704', '117.290242', '31.730369', '138946733');
INSERT INTO `station_data` VALUES ('01', '44.505', '0.3879', '70', '17:15:36 717', '117.290436', '31.730365', '138946733');
INSERT INTO `station_data` VALUES ('01', '43.019', '0.4062', '70', '17:15:37 747', '117.29063', '31.730362', '138946733');
INSERT INTO `station_data` VALUES ('01', '47.699', '0.7556', '69', '17:15:38 778', '117.290823', '31.73036', '73211373');
INSERT INTO `station_data` VALUES ('01', '40.595', '0.7396', '69', '17:15:39 588', '117.291014', '31.730357', '73211373');
INSERT INTO `station_data` VALUES ('01', '151.725', '0.7237', '66', '17:15:40 731', '117.291203', '31.730357', '73211373');
INSERT INTO `station_data` VALUES ('01', '51.951', '0.7084', '66', '17:15:41 646', '117.291388', '31.730354', '73211373');
INSERT INTO `station_data` VALUES ('01', '35.744', '0.1696', '63', '17:15:42 662', '117.291567', '31.730352', '98128428');
INSERT INTO `station_data` VALUES ('01', '118.477', '0.1549', '63', '17:15:43 761', '117.291749', '31.73035', '98128428');
INSERT INTO `station_data` VALUES ('01', '34.576', '0.1408', '63', '17:15:44 718', '117.29193', '31.730346', '98128428');
INSERT INTO `station_data` VALUES ('01', '35.278', '0.1405', '62', '17:15:44 900', '117.291934', '31.730347', '98128428');
INSERT INTO `station_data` VALUES ('01', '36.885', '0.1272', '62', '17:15:45 737', '117.292115', '31.730344', '98128428');
INSERT INTO `station_data` VALUES ('01', '40.977', '0.1148', '62', '17:15:46 768', '117.292299', '31.730342', '98128428');
INSERT INTO `station_data` VALUES ('01', '36.468', '0.1037', '61', '17:15:47 808', '117.292484', '31.73034', '98128428');
INSERT INTO `station_data` VALUES ('01', '32.339', '0.0942', '61', '17:15:48 621', '117.292674', '31.730336', '98128428');
INSERT INTO `station_data` VALUES ('01', '46.96', '0.0878', '63', '17:15:49 663', '117.292864', '31.730335', '98128428');
INSERT INTO `station_data` VALUES ('01', '44.849', '0.0847', '63', '17:15:50 693', '117.293052', '31.730333', '98128428');
INSERT INTO `station_data` VALUES ('01', '46.727', '0.0852', '63', '17:15:51 716', '117.293238', '31.730331', '98128428');
INSERT INTO `station_data` VALUES ('01', '35.272', '0.0895', '63', '17:15:52 722', '117.293427', '31.73033', '98128428');
INSERT INTO `station_data` VALUES ('01', '36.03', '0.0897', '63', '17:15:52 945', '117.293431', '31.730331', '98128428');
INSERT INTO `station_data` VALUES ('01', '31.352', '0.0969', '63', '17:15:53 756', '117.293621', '31.730327', '98128428');
INSERT INTO `station_data` VALUES ('01', '48.878', '0.1074', '67', '17:15:54 610', '117.29382', '31.730324', '98128428');
INSERT INTO `station_data` VALUES ('01', '40.355', '0.1198', '67', '17:15:55 621', '117.294018', '31.730321', '98128428');
INSERT INTO `station_data` VALUES ('01', '33.433', '0.1341', '67', '17:15:56 633', '117.29422', '31.730319', '98128428');
INSERT INTO `station_data` VALUES ('01', '41.39', '0.1494', '67', '17:15:57 669', '117.294421', '31.730317', '98128429');
INSERT INTO `station_data` VALUES ('01', '82.941', '0.1655', '59', '17:15:58 732', '117.294622', '31.730316', '98128429');
INSERT INTO `station_data` VALUES ('01', '65.032', '0.1653', '59', '17:15:58 931', '117.294617', '31.730319', '98128429');
INSERT INTO `station_data` VALUES ('01', '45.82', '0.4527', '59', '17:15:59 738', '117.294821', '31.730314', '73211373');
INSERT INTO `station_data` VALUES ('01', '35.863', '0.4417', '59', '17:16:00 751', '117.295012', '31.730305', '73211373');
INSERT INTO `station_data` VALUES ('01', '34.79', '0.4311', '59', '17:16:01 779', '117.295205', '31.730297', '73211373');
INSERT INTO `station_data` VALUES ('01', '41.235', '0.4203', '59', '17:16:02 602', '117.295396', '31.730297', '73211373');
INSERT INTO `station_data` VALUES ('01', '239.037', '0.4104', '60', '17:16:03 607', '117.295588', '31.730293', '73211373');
INSERT INTO `station_data` VALUES ('01', '35.443', '0.3995', '60', '17:16:04 637', '117.295776', '31.730288', '74007022');
INSERT INTO `station_data` VALUES ('01', '38.441', '0.3998', '60', '17:16:04 851', '117.295773', '31.730288', '74007022');
INSERT INTO `station_data` VALUES ('01', '35.714', '0.3814', '60', '17:16:05 664', '117.295968', '31.730284', '74007022');
INSERT INTO `station_data` VALUES ('01', '52.573', '0.3635', '60', '17:16:06 707', '117.296156', '31.730277', '74007022');
INSERT INTO `station_data` VALUES ('01', '38.47', '0.3456', '60', '17:16:07 732', '117.296345', '31.73027', '74007022');
INSERT INTO `station_data` VALUES ('01', '32.026', '0.328', '60', '17:16:08 751', '117.296531', '31.730266', '74007022');
INSERT INTO `station_data` VALUES ('01', '41.807', '0.3102', '62', '17:16:09 783', '117.296719', '31.73026', '74007022');
INSERT INTO `station_data` VALUES ('01', '32.572', '0.2923', '62', '17:16:10 786', '117.296909', '31.730254', '74007022');
INSERT INTO `station_data` VALUES ('01', '50.268', '0.2742', '62', '17:16:11 648', '117.2971', '31.73025', '74007022');
INSERT INTO `station_data` VALUES ('01', '36.835', '0.2563', '63', '17:16:12 665', '117.297289', '31.730247', '74007022');
INSERT INTO `station_data` VALUES ('01', '46.401', '0.2386', '63', '17:16:13 705', '117.297477', '31.730245', '74007022');
INSERT INTO `station_data` VALUES ('01', '42.893', '0.2209', '63', '17:16:14 713', '117.297665', '31.730245', '74007022');
INSERT INTO `station_data` VALUES ('01', '36.561', '0.2032', '63', '17:16:15 740', '117.297852', '31.730243', '74007022');
INSERT INTO `station_data` VALUES ('01', '43.863', '0.1856', '63', '17:16:16 773', '117.298039', '31.730242', '74007022');
INSERT INTO `station_data` VALUES ('01', '33.923', '0.1683', '63', '17:16:17 792', '117.298223', '31.730238', '74007022');
INSERT INTO `station_data` VALUES ('01', '39.219', '0.1509', '63', '17:16:18 622', '117.298408', '31.730237', '74007022');
INSERT INTO `station_data` VALUES ('01', '50.849', '0.1333', '63', '17:16:19 653', '117.298596', '31.730235', '74007022');
INSERT INTO `station_data` VALUES ('01', '47.763', '0.1158', '63', '17:16:20 694', '117.298783', '31.730233', '74007022');
INSERT INTO `station_data` VALUES ('01', '43.354', '0.0984', '61', '17:16:21 702', '117.298969', '31.730231', '74007022');
INSERT INTO `station_data` VALUES ('01', '38.86', '0.0813', '61', '17:16:22 721', '117.299154', '31.730229', '74007022');
INSERT INTO `station_data` VALUES ('01', '36.411', '0.0812', '61', '17:16:22 909', '117.299157', '31.730233', '74007022');
INSERT INTO `station_data` VALUES ('01', '35.487', '0.0488', '66', '17:16:24 749', '117.299516', '31.730227', '74007020');
INSERT INTO `station_data` VALUES ('01', '40.348', '0.0341', '70', '17:16:25 786', '117.299694', '31.730227', '74007020');
INSERT INTO `station_data` VALUES ('01', '53.945', '0.0227', '70', '17:16:26 620', '117.299869', '31.730227', '74007020');
INSERT INTO `station_data` VALUES ('01', '54.031', '0.0205', '80', '17:16:27 664', '117.300048', '31.730225', '74007020');
INSERT INTO `station_data` VALUES ('01', '41.234', '0.0302', '80', '17:16:28 677', '117.30023', '31.730224', '74007020');
INSERT INTO `station_data` VALUES ('01', '33.149', '0.045', '80', '17:16:29 695', '117.300415', '31.730224', '74007020');
INSERT INTO `station_data` VALUES ('01', '79.871', '0.0613', '80', '17:16:30 762', '117.3006', '31.730223', '74007020');
INSERT INTO `station_data` VALUES ('01', '129.052', '0.0615', '80', '17:16:31 019', '117.300601', '31.730226', '74007020');
INSERT INTO `station_data` VALUES ('01', '41.541', '0.078', '72', '17:16:31 758', '117.300784', '31.730223', '74007021');
INSERT INTO `station_data` VALUES ('01', '37.082', '0.0946', '70', '17:16:32 775', '117.300965', '31.730221', '74007021');
INSERT INTO `station_data` VALUES ('01', '36.08', '0.1109', '70', '17:16:33 591', '117.30114', '31.730219', '74007021');
INSERT INTO `station_data` VALUES ('01', '33.778', '0.1268', '70', '17:16:34 613', '117.301311', '31.730218', '74007021');
INSERT INTO `station_data` VALUES ('01', '47.026', '0.1427', '70', '17:16:35 654', '117.30148', '31.730217', '74007021');
INSERT INTO `station_data` VALUES ('01', '31.911', '0.1588', '70', '17:16:36 670', '117.301652', '31.730217', '74007021');
INSERT INTO `station_data` VALUES ('01', '37.375', '0.1756', '70', '17:16:37 705', '117.30183', '31.730216', '74007021');
INSERT INTO `station_data` VALUES ('01', '33.566', '0.1751', '70', '17:16:37 907', '117.301826', '31.730212', '74007021');
INSERT INTO `station_data` VALUES ('01', '49.756', '0.1919', '68', '17:16:38 745', '117.302004', '31.730216', '74007021');
INSERT INTO `station_data` VALUES ('01', '34.917', '0.2075', '68', '17:16:39 760', '117.302169', '31.730213', '74007021');
INSERT INTO `station_data` VALUES ('01', '42.976', '0.2222', '68', '17:16:40 797', '117.302326', '31.730208', '74007021');
INSERT INTO `station_data` VALUES ('02', '44.663', '', '', '', '117.300077', '31.7304', '');
INSERT INTO `station_data` VALUES ('02', '104.224', '0.04', '70', '17:20:14 228', '117.30008', '31.730399', '74007020');
INSERT INTO `station_data` VALUES ('02', '42.579', '0.041', '74', '17:20:14 992', '117.299951', '31.730416', '74007020');
INSERT INTO `station_data` VALUES ('02', '38.535', '0.0438', '74', '17:20:16 028', '117.299829', '31.730419', '74007020');
INSERT INTO `station_data` VALUES ('02', '40.942', '0.0498', '76', '17:20:16 858', '117.299687', '31.730416', '74007020');
INSERT INTO `station_data` VALUES ('02', '62.383', '0.0591', '76', '17:20:17 910', '117.299542', '31.730422', '74007020');
INSERT INTO `station_data` VALUES ('02', '36.39', '0.0661', '76', '17:20:18 704', '117.299442', '31.730421', '74007020');
INSERT INTO `station_data` VALUES ('02', '39.609', '0.0779', '76', '17:20:19 735', '117.299292', '31.730424', '74007020');
INSERT INTO `station_data` VALUES ('02', '39.387', '0.089', '76', '17:20:20 573', '117.299153', '31.730418', '74007020');
INSERT INTO `station_data` VALUES ('02', '49.183', '0.1008', '70', '17:20:21 814', '117.299014', '31.730417', '74007020');
INSERT INTO `station_data` VALUES ('02', '33.5', '0.1128', '70', '17:20:22 616', '117.298875', '31.730414', '74007020');
INSERT INTO `station_data` VALUES ('02', '40.601', '0.1255', '70', '17:20:23 664', '117.298733', '31.730417', '74007020');
INSERT INTO `station_data` VALUES ('02', '46.001', '0.1378', '70', '17:20:24 695', '117.298597', '31.730416', '74007020');
INSERT INTO `station_data` VALUES ('02', '40.146', '0.1515', '69', '17:20:25 710', '117.298446', '31.730417', '74007020');
INSERT INTO `station_data` VALUES ('02', '42.116', '0.1517', '69', '17:20:25 917', '117.298444', '31.730417', '74007020');
INSERT INTO `station_data` VALUES ('02', '40.788', '0.1644', '69', '17:20:26 746', '117.298305', '31.730418', '74007022');
INSERT INTO `station_data` VALUES ('02', '50.454', '0.1772', '68', '17:20:27 575', '117.298167', '31.730422', '74007022');
INSERT INTO `station_data` VALUES ('02', '44.343', '0.1899', '68', '17:20:28 797', '117.29803', '31.730423', '74007022');
INSERT INTO `station_data` VALUES ('02', '41.012', '0.2032', '68', '17:20:29 609', '117.297886', '31.730423', '74007022');
INSERT INTO `station_data` VALUES ('02', '33.41', '0.2161', '66', '17:20:30 623', '117.297746', '31.730422', '74007022');
INSERT INTO `station_data` VALUES ('02', '36.434', '0.2295', '66', '17:20:31 659', '117.297602', '31.730421', '74007022');
INSERT INTO `station_data` VALUES ('02', '44.536', '0.2428', '65', '17:20:32 706', '117.29746', '31.730421', '74007022');
INSERT INTO `station_data` VALUES ('02', '51.497', '0.2559', '65', '17:20:33 732', '117.297319', '31.730422', '74007022');
INSERT INTO `station_data` VALUES ('02', '38.853', '0.256', '65', '17:20:33 919', '117.297319', '31.730426', '74007022');
INSERT INTO `station_data` VALUES ('02', '198.217', '0.2691', '63', '17:20:34 708', '117.297179', '31.730424', '74007022');
INSERT INTO `station_data` VALUES ('02', '106.154', '0.2823', '63', '17:20:35 849', '117.297038', '31.730426', '74007022');
INSERT INTO `station_data` VALUES ('02', '49.262', '0.2954', '63', '17:20:36 616', '117.296898', '31.730428', '74007022');
INSERT INTO `station_data` VALUES ('02', '41.953', '0.3085', '63', '17:20:37 630', '117.296759', '31.730431', '74007022');
INSERT INTO `station_data` VALUES ('02', '41.153', '0.3219', '63', '17:20:38 650', '117.296617', '31.730433', '74007022');
INSERT INTO `station_data` VALUES ('02', '35.729', '0.3352', '61', '17:20:39 680', '117.296475', '31.730433', '74007022');
INSERT INTO `station_data` VALUES ('02', '34.302', '0.3485', '61', '17:20:40 695', '117.296334', '31.730434', '74007022');
INSERT INTO `station_data` VALUES ('02', '45.198', '0.3617', '61', '17:20:41 735', '117.296194', '31.730437', '74007022');
INSERT INTO `station_data` VALUES ('02', '41.866', '0.3616', '61', '17:20:41 925', '117.296194', '31.730435', '74007022');
INSERT INTO `station_data` VALUES ('02', '39.114', '0.3748', '61', '17:20:42 754', '117.296054', '31.730437', '74007022');
INSERT INTO `station_data` VALUES ('02', '50.182', '0.388', '61', '17:20:43 580', '117.295914', '31.730438', '74007022');
INSERT INTO `station_data` VALUES ('02', '33.118', '0.4012', '61', '17:20:44 594', '117.295774', '31.730439', '74007022');
INSERT INTO `station_data` VALUES ('02', '40.311', '0.4145', '61', '17:20:45 627', '117.295633', '31.73044', '74007022');
INSERT INTO `station_data` VALUES ('02', '41.911', '0.4278', '61', '17:20:46 672', '117.295492', '31.730443', '74007022');
INSERT INTO `station_data` VALUES ('02', '122.172', '0.441', '61', '17:20:47 767', '117.295352', '31.730444', '74007022');
INSERT INTO `station_data` VALUES ('02', '103.461', '0.4542', '61', '17:20:48 782', '117.295212', '31.730448', '74007022');
INSERT INTO `station_data` VALUES ('02', '34.746', '0.4675', '61', '17:20:49 744', '117.295071', '31.730451', '74007022');
INSERT INTO `station_data` VALUES ('02', '78.197', '0.4678', '61', '17:20:49 991', '117.295069', '31.730454', '74007022');
INSERT INTO `station_data` VALUES ('02', '43.909', '0.4808', '58', '17:20:50 772', '117.294931', '31.730453', '74007022');
INSERT INTO `station_data` VALUES ('02', '35.432', '0.4941', '58', '17:20:51 601', '117.29479', '31.730455', '74007022');
INSERT INTO `station_data` VALUES ('02', '35.036', '0.5074', '58', '17:20:52 625', '117.294649', '31.730456', '74007022');
INSERT INTO `station_data` VALUES ('02', '31.691', '0.1652', '58', '17:20:53 658', '117.294508', '31.730458', '98128428');
INSERT INTO `station_data` VALUES ('02', '34.696', '0.1547', '56', '17:20:54 691', '117.294367', '31.730459', '98128428');
INSERT INTO `station_data` VALUES ('02', '32.435', '0.1448', '56', '17:20:55 711', '117.294226', '31.73046', '98128428');
INSERT INTO `station_data` VALUES ('02', '51.737', '0.1355', '56', '17:20:56 770', '117.294085', '31.730462', '98128428');
INSERT INTO `station_data` VALUES ('02', '38.889', '0.1268', '60', '17:20:57 783', '117.293944', '31.730463', '98128428');
INSERT INTO `station_data` VALUES ('02', '36.572', '0.119', '60', '17:20:58 800', '117.293802', '31.730465', '98128428');
INSERT INTO `station_data` VALUES ('02', '141.411', '0.1193', '60', '17:20:59 109', '117.293803', '31.730467', '98128428');
INSERT INTO `station_data` VALUES ('02', '42.361', '0.1122', '66', '17:20:59 624', '117.29366', '31.730465', '98128428');
INSERT INTO `station_data` VALUES ('02', '36.456', '0.1069', '66', '17:21:00 641', '117.293519', '31.730468', '98128428');
INSERT INTO `station_data` VALUES ('02', '38.235', '0.103', '66', '17:21:01 682', '117.293378', '31.73047', '98128428');
INSERT INTO `station_data` VALUES ('02', '32.046', '0.1005', '66', '17:21:02 705', '117.293236', '31.73047', '98128428');
INSERT INTO `station_data` VALUES ('02', '41.589', '0.1', '63', '17:21:03 727', '117.293094', '31.730472', '98128428');
INSERT INTO `station_data` VALUES ('02', '31.42', '0.1013', '63', '17:21:04 771', '117.292952', '31.730474', '98128428');
INSERT INTO `station_data` VALUES ('02', '31.987', '0.1043', '63', '17:21:05 583', '117.29281', '31.730476', '98128428');
INSERT INTO `station_data` VALUES ('02', '106.93', '0.1089', '57', '17:21:06 700', '117.292669', '31.730478', '98128428');
INSERT INTO `station_data` VALUES ('02', '39.462', '0.5835', '57', '17:21:07 653', '117.292527', '31.73048', '138946733');
INSERT INTO `station_data` VALUES ('02', '46.228', '0.5702', '57', '17:21:08 693', '117.292386', '31.730483', '138946733');
INSERT INTO `station_data` VALUES ('02', '61.798', '0.5568', '57', '17:21:09 734', '117.292244', '31.730484', '138946733');
INSERT INTO `station_data` VALUES ('02', '43.337', '0.5569', '57', '17:21:09 912', '117.292245', '31.730483', '138946733');
INSERT INTO `station_data` VALUES ('02', '47.895', '0.5435', '57', '17:21:10 744', '117.292104', '31.730486', '138946733');
INSERT INTO `station_data` VALUES ('02', '49.587', '0.5301', '57', '17:21:11 784', '117.291962', '31.730489', '138946733');
INSERT INTO `station_data` VALUES ('02', '44.552', '0.5169', '57', '17:21:12 586', '117.291822', '31.730491', '138946733');
INSERT INTO `station_data` VALUES ('02', '41.669', '0.5034', '57', '17:21:13 607', '117.29168', '31.730494', '138946733');
INSERT INTO `station_data` VALUES ('02', '40.777', '0.4902', '57', '17:21:14 609', '117.29154', '31.730495', '138946733');
INSERT INTO `station_data` VALUES ('02', '51.181', '0.4768', '57', '17:21:15 650', '117.291398', '31.730498', '138946733');
INSERT INTO `station_data` VALUES ('02', '53.125', '0.4636', '57', '17:21:16 671', '117.291258', '31.7305', '138946733');
INSERT INTO `station_data` VALUES ('02', '47.995', '0.4503', '57', '17:21:17 707', '117.291117', '31.730502', '138946733');
INSERT INTO `station_data` VALUES ('02', '53.083', '0.4505', '57', '17:21:17 904', '117.29112', '31.730507', '138946733');
INSERT INTO `station_data` VALUES ('02', '61.804', '0.4369', '57', '17:21:18 744', '117.290976', '31.730504', '138946733');
INSERT INTO `station_data` VALUES ('02', '84.063', '0.4236', '57', '17:21:19 594', '117.290835', '31.730506', '138946733');
INSERT INTO `station_data` VALUES ('02', '39.51', '0.4104', '57', '17:21:20 567', '117.290695', '31.73051', '138946733');
INSERT INTO `station_data` VALUES ('02', '59.086', '0.397', '58', '17:21:21 624', '117.290553', '31.730511', '138946733');
INSERT INTO `station_data` VALUES ('02', '45.598', '0.3837', '58', '17:21:22 645', '117.290412', '31.730513', '138946733');
INSERT INTO `station_data` VALUES ('02', '36.76', '0.3704', '58', '17:21:23 669', '117.290271', '31.730515', '138946733');
INSERT INTO `station_data` VALUES ('02', '37.432', '0.3571', '58', '17:21:24 692', '117.29013', '31.730517', '138946733');
INSERT INTO `station_data` VALUES ('02', '63.763', '0.3437', '58', '17:21:25 748', '117.289988', '31.73052', '138946733');
INSERT INTO `station_data` VALUES ('02', '39.105', '0.3433', '60', '17:21:25 925', '117.289984', '31.730522', '138946733');
INSERT INTO `station_data` VALUES ('02', '70.387', '0.3305', '60', '17:21:26 787', '117.289848', '31.730523', '138946733');
INSERT INTO `station_data` VALUES ('02', '37.075', '0.3171', '60', '17:21:27 587', '117.289706', '31.730527', '138946733');
INSERT INTO `station_data` VALUES ('02', '46.06', '0.3038', '60', '17:21:28 615', '117.289565', '31.73053', '138946733');
INSERT INTO `station_data` VALUES ('02', '163.054', '0.2905', '60', '17:21:29 964', '117.289424', '31.730534', '138946733');
INSERT INTO `station_data` VALUES ('02', '51.016', '0.2772', '62', '17:21:30 678', '117.289283', '31.730536', '138946733');
INSERT INTO `station_data` VALUES ('02', '33.989', '0.2639', '62', '17:21:31 685', '117.289142', '31.73054', '138946733');
INSERT INTO `station_data` VALUES ('02', '45.049', '0.2506', '62', '17:21:32 724', '117.289', '31.730542', '138946733');
INSERT INTO `station_data` VALUES ('02', '50.524', '0.2374', '62', '17:21:33 763', '117.28886', '31.730544', '138946733');
INSERT INTO `station_data` VALUES ('02', '35.883', '0.2372', '62', '17:21:33 944', '117.288858', '31.730547', '138946733');
INSERT INTO `station_data` VALUES ('02', '34.234', '0.2241', '62', '17:21:34 771', '117.288718', '31.730547', '138946733');
INSERT INTO `station_data` VALUES ('02', '43.425', '0.211', '68', '17:21:35 597', '117.288578', '31.730549', '138946733');
INSERT INTO `station_data` VALUES ('02', '64.314', '0.1977', '68', '17:21:36 653', '117.288436', '31.730551', '138946733');
INSERT INTO `station_data` VALUES ('02', '41.52', '0.1845', '68', '17:21:37 656', '117.288295', '31.730552', '138946733');
INSERT INTO `station_data` VALUES ('02', '56.09', '0.1714', '68', '17:21:38 695', '117.288154', '31.730554', '138946733');
INSERT INTO `station_data` VALUES ('02', '44.715', '0.1584', '72', '17:21:39 712', '117.288014', '31.730556', '138946733');
INSERT INTO `station_data` VALUES ('02', '73.948', '0.1452', '72', '17:21:40 766', '117.287872', '31.730558', '138946733');
INSERT INTO `station_data` VALUES ('02', '45.553', '0.1322', '72', '17:21:41 572', '117.287731', '31.73056', '138946733');
INSERT INTO `station_data` VALUES ('02', '51.216', '0.1193', '76', '17:21:42 615', '117.28759', '31.730562', '138946733');
INSERT INTO `station_data` VALUES ('02', '57.193', '0.1065', '76', '17:21:43 636', '117.287449', '31.730564', '138946733');
INSERT INTO `station_data` VALUES ('02', '55.927', '0.0938', '76', '17:21:44 665', '117.287309', '31.730567', '138946733');
INSERT INTO `station_data` VALUES ('02', '52.94', '0.0813', '76', '17:21:45 674', '117.287167', '31.730569', '138946733');
INSERT INTO `station_data` VALUES ('02', '57.527', '0.0814', '76', '17:21:45 891', '117.287169', '31.73057', '138946733');
INSERT INTO `station_data` VALUES ('02', '45.419', '0.069', '76', '17:21:46 707', '117.287025', '31.730573', '138946733');
INSERT INTO `station_data` VALUES ('02', '62.588', '0.0574', '76', '17:21:47 745', '117.286884', '31.730574', '138946733');
INSERT INTO `station_data` VALUES ('02', '141.051', '0.0468', '75', '17:21:48 665', '117.286742', '31.730575', '138946733');
INSERT INTO `station_data` VALUES ('02', '50.917', '0.0379', '75', '17:21:49 603', '117.286601', '31.730577', '138946733');
INSERT INTO `station_data` VALUES ('02', '35.977', '0.0323', '69', '17:21:50 629', '117.286458', '31.730579', '138946733');
INSERT INTO `station_data` VALUES ('02', '37.752', '0.0317', '69', '17:21:51 652', '117.286314', '31.730582', '138946733');
INSERT INTO `station_data` VALUES ('02', '64.405', '0.0366', '69', '17:21:52 716', '117.286171', '31.730585', '138946733');
INSERT INTO `station_data` VALUES ('02', '68.065', '0.0452', '69', '17:21:53 741', '117.286027', '31.730588', '138946733');
INSERT INTO `station_data` VALUES ('02', '42.697', '0.0456', '69', '17:21:53 915', '117.286022', '31.730587', '138946733');
INSERT INTO `station_data` VALUES ('02', '49.302', '0.056', '69', '17:21:54 558', '117.285881', '31.730592', '138946733');
INSERT INTO `station_data` VALUES ('02', '30.791', '0.0678', '67', '17:21:55 759', '117.285736', '31.730595', '138946734');
INSERT INTO `station_data` VALUES ('02', '49.291', '0.0805', '67', '17:21:56 611', '117.285589', '31.730598', '138946734');
INSERT INTO `station_data` VALUES ('02', '39.72', '0.0934', '68', '17:21:57 626', '117.285443', '31.730601', '138946734');
INSERT INTO `station_data` VALUES ('02', '53.995', '0.1067', '68', '17:21:58 675', '117.285295', '31.730604', '138946734');
INSERT INTO `station_data` VALUES ('02', '32.478', '0.1202', '75', '17:21:59 684', '117.285147', '31.730607', '138946734');
INSERT INTO `station_data` VALUES ('02', '43.282', '0.1337', '75', '17:22:00 729', '117.285', '31.730609', '138946734');
INSERT INTO `station_data` VALUES ('02', '44.058', '0.1473', '70', '17:22:01 746', '117.284852', '31.730612', '138946734');
INSERT INTO `station_data` VALUES ('02', '35.338', '0.1611', '70', '17:22:02 775', '117.284704', '31.730614', '138946734');
INSERT INTO `station_data` VALUES ('02', '40.548', '0.1747', '70', '17:22:03 798', '117.284558', '31.730617', '138946734');
INSERT INTO `station_data` VALUES ('02', '35.183', '0.1882', '70', '17:22:04 620', '117.284413', '31.730619', '138946734');
INSERT INTO `station_data` VALUES ('02', '45.189', '0.2017', '70', '17:22:05 652', '117.284269', '31.730622', '138946734');
INSERT INTO `station_data` VALUES ('02', '65.166', '0.215', '70', '17:22:06 705', '117.284126', '31.730626', '138946734');
INSERT INTO `station_data` VALUES ('02', '38.869', '0.2285', '70', '17:22:07 706', '117.283983', '31.730628', '138946734');
INSERT INTO `station_data` VALUES ('02', '33.966', '0.2287', '70', '17:22:07 896', '117.28398', '31.730629', '138946734');
INSERT INTO `station_data` VALUES ('02', '34.453', '0.2417', '71', '17:22:08 721', '117.283842', '31.73063', '138946734');
INSERT INTO `station_data` VALUES ('02', '37.203', '0.2548', '71', '17:22:09 752', '117.283703', '31.730631', '138946734');
INSERT INTO `station_data` VALUES ('02', '33.292', '0.1389', '69', '17:22:11 606', '117.283421', '31.730635', '73220845');
INSERT INTO `station_data` VALUES ('02', '34.047', '0.1263', '68', '17:22:12 625', '117.283281', '31.730636', '73220845');
INSERT INTO `station_data` VALUES ('02', '46.417', '0.1135', '68', '17:22:13 655', '117.28314', '31.730639', '73220845');
INSERT INTO `station_data` VALUES ('02', '318.68', '0.101', '68', '17:22:14 752', '117.282999', '31.730642', '73220845');
INSERT INTO `station_data` VALUES ('02', '45.219', '0.0886', '65', '17:22:15 711', '117.282858', '31.730646', '73220845');
INSERT INTO `station_data` VALUES ('02', '35.573', '0.0881', '65', '17:22:15 906', '117.282854', '31.730649', '73220845');
INSERT INTO `station_data` VALUES ('02', '36.177', '0.0767', '65', '17:22:16 730', '117.282717', '31.730648', '73220845');
INSERT INTO `station_data` VALUES ('02', '34.515', '0.0652', '64', '17:22:17 756', '117.282575', '31.730651', '73220845');
INSERT INTO `station_data` VALUES ('02', '41.148', '0.0547', '64', '17:22:18 590', '117.282435', '31.730654', '73220845');
INSERT INTO `station_data` VALUES ('02', '43.902', '0.0457', '64', '17:22:19 619', '117.282293', '31.730656', '73220845');
INSERT INTO `station_data` VALUES ('02', '37.489', '0.0393', '64', '17:22:20 634', '117.282152', '31.730658', '73220845');
INSERT INTO `station_data` VALUES ('02', '33.953', '0.0369', '64', '17:22:21 655', '117.282012', '31.73066', '73220845');
INSERT INTO `station_data` VALUES ('02', '44.051', '0.0391', '64', '17:22:22 696', '117.281871', '31.730662', '73220845');
INSERT INTO `station_data` VALUES ('02', '32.734', '0.0455', '64', '17:22:23 692', '117.281729', '31.730663', '73220845');
INSERT INTO `station_data` VALUES ('02', '506.128', '0.0535', '64', '17:22:25 002', '117.281596', '31.730669', '73220845');
INSERT INTO `station_data` VALUES ('02', '61.89', '0.0641', '64', '17:22:25 594', '117.281455', '31.730668', '73220845');
INSERT INTO `station_data` VALUES ('02', '34.348', '0.4657', '63', '17:22:26 578', '117.281322', '31.730672', '98214701');
INSERT INTO `station_data` VALUES ('02', '40.3', '0.0863', '63', '17:22:27 617', '117.281182', '31.730676', '73220846');
INSERT INTO `station_data` VALUES ('02', '31.129', '0.0984', '63', '17:22:28 631', '117.281041', '31.730683', '73220846');
INSERT INTO `station_data` VALUES ('02', '58.614', '0.1109', '63', '17:22:29 699', '117.280899', '31.730687', '73220846');
INSERT INTO `station_data` VALUES ('02', '47.282', '0.123', '63', '17:22:30 705', '117.280764', '31.730691', '73220846');
INSERT INTO `station_data` VALUES ('02', '41.136', '0.1358', '63', '17:22:31 719', '117.280623', '31.730696', '73220846');
INSERT INTO `station_data` VALUES ('02', '31.231', '0.1487', '63', '17:22:32 741', '117.280482', '31.730701', '73220846');
INSERT INTO `station_data` VALUES ('02', '34.891', '0.1614', '61', '17:22:33 758', '117.280344', '31.730702', '73220846');
INSERT INTO `station_data` VALUES ('02', '50.908', '0.1746', '61', '17:22:34 812', '117.280202', '31.730704', '73220846');
INSERT INTO `station_data` VALUES ('02', '42.942', '0.1878', '61', '17:22:35 823', '117.28006', '31.730704', '73220846');
INSERT INTO `station_data` VALUES ('02', '35.176', '0.201', '61', '17:22:36 635', '117.279918', '31.730706', '73220846');
INSERT INTO `station_data` VALUES ('02', '32.968', '0.2142', '64', '17:22:37 665', '117.279777', '31.730708', '73220846');
INSERT INTO `station_data` VALUES ('02', '43.183', '0.2144', '64', '17:22:37 886', '117.279775', '31.73071', '73220846');
INSERT INTO `station_data` VALUES ('02', '49.198', '0.2275', '64', '17:22:38 715', '117.279635', '31.73071', '73220846');
INSERT INTO `station_data` VALUES ('02', '34.277', '0.2407', '64', '17:22:39 723', '117.279494', '31.730711', '73220846');
INSERT INTO `station_data` VALUES ('02', '34.201', '0.254', '64', '17:22:40 763', '117.279352', '31.730714', '73220846');
INSERT INTO `station_data` VALUES ('02', '47.602', '0.2673', '64', '17:22:41 608', '117.279211', '31.730713', '73220846');
INSERT INTO `station_data` VALUES ('02', '41.782', '0.2805', '64', '17:22:42 627', '117.27907', '31.730712', '73220846');
INSERT INTO `station_data` VALUES ('02', '33.583', '0.2937', '64', '17:22:43 674', '117.27893', '31.730709', '73220846');
INSERT INTO `station_data` VALUES ('02', '42.946', '0.307', '60', '17:22:44 707', '117.27879', '31.730706', '73220846');
INSERT INTO `station_data` VALUES ('02', '37.883', '0.3204', '60', '17:22:45 722', '117.278647', '31.730706', '73220846');
INSERT INTO `station_data` VALUES ('02', '32.268', '0.3204', '60', '17:22:45 916', '117.278647', '31.730711', '73220846');
INSERT INTO `station_data` VALUES ('02', '31.158', '0.3336', '60', '17:22:46 737', '117.278507', '31.730706', '73220846');
INSERT INTO `station_data` VALUES ('02', '42.003', '0.3468', '60', '17:22:47 584', '117.278367', '31.730707', '73220846');
INSERT INTO `station_data` VALUES ('02', '39.649', '0.3596', '60', '17:22:48 630', '117.278231', '31.730708', '73220846');
INSERT INTO `station_data` VALUES ('02', '51.943', '0.3724', '60', '17:22:49 663', '117.278094', '31.730721', '73220846');
INSERT INTO `station_data` VALUES ('02', '38.609', '0.3852', '60', '17:22:50 677', '117.277958', '31.730723', '73220846');
INSERT INTO `station_data` VALUES ('02', '35.262', '0.3983', '60', '17:22:51 700', '117.277819', '31.730728', '73220846');
INSERT INTO `station_data` VALUES ('02', '52.187', '0.4114', '60', '17:22:52 738', '117.27768', '31.73073', '73220846');
INSERT INTO `station_data` VALUES ('02', '36.942', '0.4264', '60', '17:22:53 743', '117.277521', '31.730733', '73220846');
INSERT INTO `station_data` VALUES ('02', '54.69', '0.4264', '60', '17:22:53 974', '117.277522', '31.73073', '73220846');
INSERT INTO `station_data` VALUES ('02', '43.04', '0.0915', '60', '17:22:54 587', '117.277364', '31.73074', '98128940');
INSERT INTO `station_data` VALUES ('02', '98.813', '0.0859', '63', '17:22:55 672', '117.277231', '31.730743', '98128940');
INSERT INTO `station_data` VALUES ('02', '32.288', '0.0812', '63', '17:22:56 620', '117.277093', '31.730742', '98128940');
INSERT INTO `station_data` VALUES ('02', '35.956', '0.0788', '63', '17:22:57 660', '117.276952', '31.730744', '98128940');
INSERT INTO `station_data` VALUES ('02', '33.751', '0.0783', '63', '17:22:58 701', '117.276813', '31.730744', '98128940');
INSERT INTO `station_data` VALUES ('02', '188.598', '0.0803', '63', '17:22:59 873', '117.276676', '31.730747', '98128940');
INSERT INTO `station_data` VALUES ('02', '104.498', '0.0842', '61', '17:23:00 826', '117.276536', '31.730748', '98128940');
INSERT INTO `station_data` VALUES ('02', '37.321', '0.0903', '61', '17:23:01 788', '117.276393', '31.730752', '98128940');
INSERT INTO `station_data` VALUES ('02', '38.015', '0.0978', '60', '17:23:02 616', '117.276251', '31.730755', '98128940');
INSERT INTO `station_data` VALUES ('02', '50.579', '0.1066', '60', '17:23:03 655', '117.276111', '31.730761', '98128940');
INSERT INTO `station_data` VALUES ('02', '38.72', '0.1165', '59', '17:23:04 667', '117.27597', '31.73077', '98128940');
INSERT INTO `station_data` VALUES ('02', '56.612', '0.1264', '59', '17:23:05 716', '117.275839', '31.730779', '98128940');
INSERT INTO `station_data` VALUES ('02', '32.656', '0.487', '58', '17:23:06 708', '117.275721', '31.730793', '98304301');
INSERT INTO `station_data` VALUES ('02', '33.085', '0.487', '58', '17:23:06 914', '117.275721', '31.730792', '98304301');
INSERT INTO `station_data` VALUES ('02', '42.203', '0.4762', '58', '17:23:07 554', '117.275607', '31.730803', '98304301');
INSERT INTO `station_data` VALUES ('02', '38.459', '0.4639', '58', '17:23:08 778', '117.275478', '31.730817', '98304301');
INSERT INTO `station_data` VALUES ('02', '35.49', '0.4505', '57', '17:23:09 599', '117.275335', '31.73082', '98304301');
INSERT INTO `station_data` VALUES ('02', '38.52', '0.4362', '57', '17:23:10 618', '117.275183', '31.730823', '98304301');
INSERT INTO `station_data` VALUES ('02', '52.06', '0.4212', '57', '17:23:11 655', '117.275023', '31.730827', '98304301');
INSERT INTO `station_data` VALUES ('02', '46.687', '0.3414', '57', '17:23:12 671', '117.274869', '31.730829', '243721901');
INSERT INTO `station_data` VALUES ('02', '45.277', '0.3932', '62', '17:23:13 695', '117.274722', '31.730829', '98304301');
INSERT INTO `station_data` VALUES ('02', '33.574', '0.3798', '62', '17:23:14 706', '117.274579', '31.730833', '98304301');
INSERT INTO `station_data` VALUES ('02', '32.521', '0.3802', '62', '17:23:14 917', '117.274583', '31.730832', '98304301');
INSERT INTO `station_data` VALUES ('02', '33.835', '0.3666', '62', '17:23:15 743', '117.274438', '31.730839', '98304301');
INSERT INTO `station_data` VALUES ('02', '36.665', '0.3534', '62', '17:23:16 566', '117.274297', '31.730845', '98304301');
INSERT INTO `station_data` VALUES ('02', '44.682', '0.3401', '62', '17:23:17 599', '117.274154', '31.730851', '98304301');
INSERT INTO `station_data` VALUES ('02', '128.678', '0.2839', '63', '17:23:18 705', '117.274012', '31.730855', '98128942');
INSERT INTO `station_data` VALUES ('02', '63.003', '0.2967', '63', '17:23:19 665', '117.273873', '31.730862', '98128942');
INSERT INTO `station_data` VALUES ('02', '46.974', '0.3098', '59', '17:23:20 676', '117.27373', '31.730869', '98128942');
INSERT INTO `station_data` VALUES ('02', '51.154', '0.3227', '59', '17:23:21 707', '117.273589', '31.730873', '98128942');
INSERT INTO `station_data` VALUES ('02', '40.525', '0.3357', '58', '17:23:22 722', '117.273448', '31.73088', '98128942');
INSERT INTO `station_data` VALUES ('02', '35.001', '0.3358', '58', '17:23:22 914', '117.273448', '31.730883', '98128942');
INSERT INTO `station_data` VALUES ('02', '60.409', '0.3487', '58', '17:23:23 588', '117.273307', '31.730886', '98128942');
INSERT INTO `station_data` VALUES ('02', '56.175', '0.3621', '58', '17:23:24 617', '117.273164', '31.730896', '98128942');
INSERT INTO `station_data` VALUES ('02', '45.582', '0.3752', '58', '17:23:25 629', '117.273023', '31.730905', '98128942');
INSERT INTO `station_data` VALUES ('02', '148.536', '0.3884', '58', '17:23:26 563', '117.272882', '31.730915', '98128942');
INSERT INTO `station_data` VALUES ('02', '44.305', '0.4017', '59', '17:23:27 692', '117.272741', '31.730927', '98128942');
INSERT INTO `station_data` VALUES ('02', '43.275', '0.4145', '58', '17:23:28 715', '117.272599', '31.730939', '98128906');
INSERT INTO `station_data` VALUES ('02', '36.157', '0.4277', '58', '17:23:29 723', '117.272458', '31.730952', '98128906');
INSERT INTO `station_data` VALUES ('02', '51.227', '0.441', '58', '17:23:30 775', '117.272316', '31.730963', '98128906');
INSERT INTO `station_data` VALUES ('02', '40.32', '0.4406', '58', '17:23:30 954', '117.27232', '31.730962', '98128906');
INSERT INTO `station_data` VALUES ('02', '64.205', '0.4543', '57', '17:23:31 612', '117.272175', '31.730976', '98128906');
INSERT INTO `station_data` VALUES ('02', '50.402', '0.4677', '57', '17:23:32 625', '117.272032', '31.730988', '98128906');
INSERT INTO `station_data` VALUES ('02', '66.493', '0.4812', '57', '17:23:33 656', '117.27189', '31.731003', '98128906');
INSERT INTO `station_data` VALUES ('02', '52.933', '0.2639', '57', '17:23:34 680', '117.271747', '31.731015', '98304257');
INSERT INTO `station_data` VALUES ('02', '54.923', '0.2516', '57', '17:23:35 711', '117.271607', '31.731027', '98304257');
INSERT INTO `station_data` VALUES ('02', '94.459', '0.2397', '65', '17:23:36 775', '117.271468', '31.731045', '98304257');
INSERT INTO `station_data` VALUES ('02', '35.891', '0.2278', '65', '17:23:37 746', '117.271327', '31.731065', '98304257');
INSERT INTO `station_data` VALUES ('02', '54.031', '0.2162', '76', '17:23:38 796', '117.271187', '31.731084', '98304257');
INSERT INTO `station_data` VALUES ('02', '69.16', '0.2049', '76', '17:23:39 635', '117.271048', '31.731102', '98304257');
INSERT INTO `station_data` VALUES ('02', '56.277', '0.1937', '76', '17:23:40 646', '117.270908', '31.73112', '98304257');
INSERT INTO `station_data` VALUES ('02', '59.433', '0.1827', '76', '17:23:41 673', '117.270767', '31.731137', '98304257');
INSERT INTO `station_data` VALUES ('02', '93.648', '0.1721', '59', '17:23:42 729', '117.270626', '31.731156', '98304257');
INSERT INTO `station_data` VALUES ('02', '46.167', '0.1619', '59', '17:23:43 716', '117.270484', '31.731174', '98304257');
INSERT INTO `station_data` VALUES ('02', '41.855', '0.1524', '59', '17:23:44 722', '117.270344', '31.731194', '98304258');
INSERT INTO `station_data` VALUES ('02', '51.15', '0.1436', '58', '17:23:45 766', '117.270203', '31.731214', '98304258');
INSERT INTO `station_data` VALUES ('02', '83.483', '0.1357', '58', '17:23:46 621', '117.270062', '31.731236', '98304258');
INSERT INTO `station_data` VALUES ('02', '64.26', '0.1288', '59', '17:23:47 635', '117.269924', '31.731257', '98304258');
INSERT INTO `station_data` VALUES ('02', '236.762', '0.1118', '58', '17:23:51 924', '117.269343', '31.731334', '98304258');
INSERT INTO `station_data` VALUES ('02', '40.853', '0.1117', '58', '17:23:51 929', '117.269344', '31.731333', '98304258');
INSERT INTO `station_data` VALUES ('02', '63.001', '0.134', '66', '17:23:55 661', '117.268781', '31.731395', '98318351');
INSERT INTO `station_data` VALUES ('02', '39.162', '0.1398', '64', '17:23:56 662', '117.268646', '31.731421', '98318351');
INSERT INTO `station_data` VALUES ('02', '50.153', '0.1479', '64', '17:23:57 709', '117.268517', '31.731461', '98318351');
INSERT INTO `station_data` VALUES ('02', '48.356', '0.1567', '64', '17:23:58 740', '117.268377', '31.731498', '98318351');
INSERT INTO `station_data` VALUES ('02', '53.689', '0.1646', '64', '17:23:59 779', '117.268243', '31.731522', '98318351');
INSERT INTO `station_data` VALUES ('02', '77.335', '0.1731', '66', '17:24:00 834', '117.268106', '31.731543', '98318351');
INSERT INTO `station_data` VALUES ('02', '73.861', '0.182', '66', '17:24:01 650', '117.267966', '31.731561', '98318351');
INSERT INTO `station_data` VALUES ('02', '50.519', '0.1913', '66', '17:24:02 660', '117.267828', '31.731579', '98318351');
INSERT INTO `station_data` VALUES ('02', '50.459', '0.2014', '66', '17:24:03 680', '117.267689', '31.731601', '98318351');
INSERT INTO `station_data` VALUES ('02', '43.463', '0.2119', '66', '17:24:04 710', '117.26755', '31.731623', '98318351');
INSERT INTO `station_data` VALUES ('02', '37.374', '0.2116', '66', '17:24:04 907', '117.267554', '31.731623', '98318351');
INSERT INTO `station_data` VALUES ('02', '36.017', '0.2225', '68', '17:24:05 735', '117.267412', '31.731643', '98318351');
INSERT INTO `station_data` VALUES ('02', '69.751', '0.2334', '68', '17:24:06 596', '117.267273', '31.731663', '98318351');
INSERT INTO `station_data` VALUES ('02', '50.032', '0.2444', '68', '17:24:07 789', '117.267135', '31.731682', '98318351');
INSERT INTO `station_data` VALUES ('02', '35.815', '0.2557', '68', '17:24:08 617', '117.266995', '31.7317', '98318351');
INSERT INTO `station_data` VALUES ('02', '208.896', '0.2669', '62', '17:24:09 797', '117.266856', '31.731714', '98318351');
INSERT INTO `station_data` VALUES ('02', '64.826', '0.2782', '62', '17:24:10 675', '117.266718', '31.731729', '98318351');
INSERT INTO `station_data` VALUES ('02', '64.273', '0.2898', '68', '17:24:11 710', '117.266579', '31.731745', '98318351');
INSERT INTO `station_data` VALUES ('02', '65.509', '0.3015', '68', '17:24:12 739', '117.266439', '31.731759', '98318351');
INSERT INTO `station_data` VALUES ('02', '131.719', '0.3132', '68', '17:24:13 840', '117.2663', '31.731772', '98318351');
INSERT INTO `station_data` VALUES ('02', '58.323', '0.3251', '62', '17:24:14 585', '117.26616', '31.731784', '98318351');
INSERT INTO `station_data` VALUES ('02', '70.726', '0.3369', '62', '17:24:15 608', '117.26602', '31.731795', '98318351');
INSERT INTO `station_data` VALUES ('02', '48.057', '0.349', '62', '17:24:16 620', '117.265879', '31.731806', '98318351');
INSERT INTO `station_data` VALUES ('02', '71.074', '0.3611', '62', '17:24:17 659', '117.265738', '31.731816', '98318351');
INSERT INTO `station_data` VALUES ('02', '33.617', '0.0505', '66', '17:24:18 636', '117.265596', '31.731826', '98318340');
INSERT INTO `station_data` VALUES ('02', '34.206', '0.0593', '66', '17:24:19 663', '117.265456', '31.731836', '98318340');
INSERT INTO `station_data` VALUES ('02', '41.523', '0.0695', '66', '17:24:20 704', '117.265317', '31.731846', '98318340');
INSERT INTO `station_data` VALUES ('02', '41.73', '0.0807', '66', '17:24:21 718', '117.265176', '31.731856', '98318340');
INSERT INTO `station_data` VALUES ('02', '33.562', '0.0923', '66', '17:24:22 737', '117.265036', '31.731865', '98318340');
INSERT INTO `station_data` VALUES ('02', '43.481', '0.1045', '66', '17:24:23 768', '117.264894', '31.731873', '98318340');
INSERT INTO `station_data` VALUES ('02', '32.732', '0.1169', '66', '17:24:24 597', '117.264753', '31.731881', '98318340');
INSERT INTO `station_data` VALUES ('02', '38.115', '0.1292', '66', '17:24:25 622', '117.264614', '31.731888', '98318340');
INSERT INTO `station_data` VALUES ('02', '33.269', '0.142', '66', '17:24:26 643', '117.264473', '31.731896', '98318340');
INSERT INTO `station_data` VALUES ('02', '265.899', '0.1546', '66', '17:24:27 905', '117.264334', '31.731903', '98318342');
INSERT INTO `station_data` VALUES ('02', '39.137', '0.1674', '66', '17:24:28 703', '117.264193', '31.731909', '98318342');
INSERT INTO `station_data` VALUES ('02', '52.84', '0.1803', '66', '17:24:29 743', '117.264053', '31.731915', '98318342');
INSERT INTO `station_data` VALUES ('02', '45.651', '0.1932', '66', '17:24:30 772', '117.263912', '31.731919', '98318342');
INSERT INTO `station_data` VALUES ('02', '36.785', '0.1927', '66', '17:24:30 965', '117.263917', '31.731918', '98318342');
INSERT INTO `station_data` VALUES ('02', '38.254', '0.2062', '66', '17:24:31 586', '117.263771', '31.731923', '98318342');
INSERT INTO `station_data` VALUES ('02', '69.918', '0.219', '65', '17:24:32 655', '117.263631', '31.731925', '98318342');
INSERT INTO `station_data` VALUES ('02', '40.713', '0.232', '65', '17:24:33 658', '117.26349', '31.731927', '98318342');
INSERT INTO `station_data` VALUES ('02', '36.611', '0.245', '65', '17:24:34 680', '117.26335', '31.731928', '98318342');
INSERT INTO `station_data` VALUES ('02', '80.371', '0.258', '65', '17:24:35 550', '117.263209', '31.731929', '98318342');
INSERT INTO `station_data` VALUES ('02', '43.678', '0.271', '64', '17:24:36 749', '117.263069', '31.731931', '98318342');
INSERT INTO `station_data` VALUES ('02', '50.721', '0.2842', '64', '17:24:37 577', '117.262928', '31.731933', '98318342');
INSERT INTO `station_data` VALUES ('02', '34.195', '0.2972', '63', '17:24:38 792', '117.262788', '31.731934', '98318342');
INSERT INTO `station_data` VALUES ('02', '39.021', '0.3104', '63', '17:24:39 828', '117.262646', '31.731934', '98318342');
INSERT INTO `station_data` VALUES ('02', '67.46', '0.3233', '63', '17:24:40 678', '117.262507', '31.731931', '98318342');
INSERT INTO `station_data` VALUES ('02', '240.76', '0.5256', '63', '17:24:41 674', '117.262366', '31.73193', '17690989');
INSERT INTO `station_data` VALUES ('02', '37.216', '0.5259', '63', '17:24:41 874', '117.26237', '31.73193', '17690989');
INSERT INTO `station_data` VALUES ('02', '37.628', '0.5121', '62', '17:24:42 694', '117.262224', '31.731927', '17690989');
INSERT INTO `station_data` VALUES ('02', '50.878', '0.4991', '62', '17:24:43 739', '117.262087', '31.731924', '17690989');
INSERT INTO `station_data` VALUES ('02', '33.408', '0.4864', '62', '17:24:44 758', '117.261952', '31.731921', '17690989');
INSERT INTO `station_data` VALUES ('02', '342.805', '0.4733', '60', '17:24:45 682', '117.261814', '31.731914', '17690989');
INSERT INTO `station_data` VALUES ('02', '182.889', '0.2673', '60', '17:24:46 765', '117.261674', '31.731909', '97550084');
INSERT INTO `station_data` VALUES ('02', '45.545', '0.2661', '60', '17:24:47 659', '117.261533', '31.731902', '97550084');
INSERT INTO `station_data` VALUES ('02', '41.353', '0.2656', '60', '17:24:48 694', '117.261394', '31.731895', '97550084');
INSERT INTO `station_data` VALUES ('02', '41.965', '0.2654', '60', '17:24:49 712', '117.261253', '31.731885', '97550084');
INSERT INTO `station_data` VALUES ('02', '35.194', '0.2654', '60', '17:24:49 906', '117.261256', '31.731885', '97550084');
INSERT INTO `station_data` VALUES ('02', '36.007', '0.2658', '60', '17:24:50 738', '117.261113', '31.731875', '97550084');
INSERT INTO `station_data` VALUES ('02', '43.846', '0.2666', '60', '17:24:51 772', '117.260973', '31.731862', '97550084');
INSERT INTO `station_data` VALUES ('02', '36.343', '0.2682', '60', '17:24:52 594', '117.260833', '31.73185', '97550084');
INSERT INTO `station_data` VALUES ('02', '33.482', '0.2704', '60', '17:24:53 615', '117.260693', '31.731838', '97550084');
INSERT INTO `station_data` VALUES ('02', '416.273', '0.2734', '60', '17:24:54 624', '117.260553', '31.731827', '97550084');
INSERT INTO `station_data` VALUES ('02', '37.229', '0.2769', '60', '17:24:55 679', '117.26041', '31.731815', '97550084');
INSERT INTO `station_data` VALUES ('02', '35.448', '0.2812', '60', '17:24:56 701', '117.260269', '31.731805', '97550084');
INSERT INTO `station_data` VALUES ('02', '43.741', '0.2861', '60', '17:24:57 733', '117.260128', '31.731795', '97550084');
INSERT INTO `station_data` VALUES ('02', '33.838', '0.2915', '62', '17:24:58 749', '117.259988', '31.731785', '97550084');
INSERT INTO `station_data` VALUES ('02', '40.24', '0.297', '62', '17:24:59 582', '117.259849', '31.731772', '97550084');
INSERT INTO `station_data` VALUES ('02', '35.147', '0.3031', '62', '17:25:00 602', '117.259709', '31.73176', '97550084');
INSERT INTO `station_data` VALUES ('02', '51.735', '0.3095', '62', '17:25:01 639', '117.259569', '31.731746', '97550084');
INSERT INTO `station_data` VALUES ('02', '48.461', '0.3165', '62', '17:25:02 678', '117.259428', '31.731733', '97550084');
INSERT INTO `station_data` VALUES ('02', '358.572', '0.3239', '60', '17:25:03 607', '117.259288', '31.73172', '97550084');
INSERT INTO `station_data` VALUES ('02', '40.106', '0.3316', '60', '17:25:04 700', '117.259147', '31.731706', '97550084');
INSERT INTO `station_data` VALUES ('02', '66.612', '0.3396', '64', '17:25:05 763', '117.259007', '31.731693', '97550084');
INSERT INTO `station_data` VALUES ('02', '40.723', '0.3479', '64', '17:25:06 750', '117.258868', '31.731679', '97550084');
INSERT INTO `station_data` VALUES ('02', '95.889', '0.3565', '64', '17:25:07 640', '117.258727', '31.731664', '97550084');
INSERT INTO `station_data` VALUES ('02', '65.314', '0.1683', '58', '17:25:08 630', '117.258588', '31.73165', '17690989');
INSERT INTO `station_data` VALUES ('02', '49.337', '0.1553', '64', '17:25:09 854', '117.258448', '31.731633', '17690989');
INSERT INTO `station_data` VALUES ('02', '40.307', '0.1423', '64', '17:25:10 650', '117.258308', '31.731619', '17690989');
INSERT INTO `station_data` VALUES ('02', '37.287', '0.1297', '64', '17:25:11 671', '117.25817', '31.7316', '17690989');
INSERT INTO `station_data` VALUES ('02', '39.047', '0.117', '71', '17:25:12 712', '117.25803', '31.731581', '17690989');
INSERT INTO `station_data` VALUES ('02', '37.3', '0.1046', '71', '17:25:13 741', '117.257891', '31.731561', '17690989');
INSERT INTO `station_data` VALUES ('02', '45.58', '0.0925', '78', '17:25:14 780', '117.257752', '31.731542', '17690989');
INSERT INTO `station_data` VALUES ('02', '35.368', '0.0805', '78', '17:25:15 602', '117.257611', '31.731525', '17690989');
INSERT INTO `station_data` VALUES ('02', '44.419', '0.0693', '82', '17:25:16 640', '117.257473', '31.731507', '17690989');
INSERT INTO `station_data` VALUES ('02', '32', '0.0588', '82', '17:25:17 655', '117.257333', '31.73149', '17690989');
INSERT INTO `station_data` VALUES ('02', '45.254', '0.0588', '82', '17:25:17 866', '117.257333', '31.73149', '17690989');
INSERT INTO `station_data` VALUES ('02', '42.225', '0.0498', '82', '17:25:18 681', '117.257195', '31.731472', '17690989');
INSERT INTO `station_data` VALUES ('02', '40.964', '0.0431', '82', '17:25:19 709', '117.257056', '31.731454', '17690989');
INSERT INTO `station_data` VALUES ('02', '33.644', '0.0398', '82', '17:25:20 721', '117.256916', '31.731437', '17690989');
INSERT INTO `station_data` VALUES ('02', '44.092', '0.0407', '68', '17:25:21 763', '117.256777', '31.73142', '17690990');
INSERT INTO `station_data` VALUES ('02', '57.467', '0.0456', '68', '17:25:22 606', '117.256638', '31.731404', '17690990');
INSERT INTO `station_data` VALUES ('02', '38.708', '0.0535', '72', '17:25:23 814', '117.256497', '31.731389', '17690990');
INSERT INTO `station_data` VALUES ('02', '33.117', '0.0632', '72', '17:25:24 627', '117.256358', '31.731373', '17690990');
INSERT INTO `station_data` VALUES ('02', '39.94', '0.2343', '70', '17:25:25 659', '117.256218', '31.731357', '98122285');
INSERT INTO `station_data` VALUES ('02', '51.76', '0.222', '70', '17:25:26 702', '117.256078', '31.731342', '98122285');
INSERT INTO `station_data` VALUES ('02', '36.887', '0.2099', '70', '17:25:27 714', '117.255939', '31.731327', '98122285');
INSERT INTO `station_data` VALUES ('02', '42.103', '0.21', '70', '17:25:27 926', '117.255939', '31.731324', '98122285');
INSERT INTO `station_data` VALUES ('02', '41.285', '0.1979', '70', '17:25:28 741', '117.255799', '31.731312', '98122285');
INSERT INTO `station_data` VALUES ('02', '33.682', '0.1859', '70', '17:25:29 777', '117.255657', '31.731298', '98122285');
INSERT INTO `station_data` VALUES ('02', '49.928', '0.174', '71', '17:25:30 618', '117.255515', '31.731285', '98122285');
INSERT INTO `station_data` VALUES ('02', '38.991', '0.1623', '71', '17:25:31 629', '117.255372', '31.731273', '98122285');
INSERT INTO `station_data` VALUES ('02', '42.537', '0.1507', '73', '17:25:32 658', '117.255227', '31.731261', '98122285');
INSERT INTO `station_data` VALUES ('02', '34.168', '0.1394', '73', '17:25:33 673', '117.255081', '31.731249', '98122285');
INSERT INTO `station_data` VALUES ('02', '33.684', '0.1287', '73', '17:25:34 708', '117.254936', '31.731237', '98122285');
INSERT INTO `station_data` VALUES ('02', '35.8', '0.1185', '73', '17:25:35 739', '117.254789', '31.731226', '98122285');
INSERT INTO `station_data` VALUES ('02', '45.352', '0.1089', '73', '17:25:36 591', '117.254641', '31.731216', '98122285');
INSERT INTO `station_data` VALUES ('02', '40.386', '0.1004', '73', '17:25:37 818', '117.254494', '31.731206', '98122285');
INSERT INTO `station_data` VALUES ('02', '82.777', '0.2429', '73', '17:25:38 672', '117.254347', '31.731197', '17690990');
INSERT INTO `station_data` VALUES ('02', '47.917', '0.2566', '73', '17:25:39 666', '117.2542', '31.731188', '17690990');
INSERT INTO `station_data` VALUES ('02', '53.515', '0.2561', '73', '17:25:40 093', '117.254205', '31.731188', '17690990');
INSERT INTO `station_data` VALUES ('02', '44.33', '0.2703', '73', '17:25:40 682', '117.254053', '31.73118', '17690990');
INSERT INTO `station_data` VALUES ('02', '42.445', '0.2838', '72', '17:25:41 713', '117.253907', '31.731173', '17690990');
INSERT INTO `station_data` VALUES ('02', '46.31', '0.2974', '72', '17:25:42 751', '117.253762', '31.731167', '17690990');
INSERT INTO `station_data` VALUES ('02', '36.265', '0.4671', '70', '17:25:43 756', '117.253617', '31.731162', '97564973');
INSERT INTO `station_data` VALUES ('02', '48.667', '0.4554', '70', '17:25:44 592', '117.253474', '31.731157', '97564973');
INSERT INTO `station_data` VALUES ('02', '30.972', '0.4439', '70', '17:25:45 606', '117.253332', '31.731152', '97564973');
INSERT INTO `station_data` VALUES ('02', '32.857', '0.4325', '70', '17:25:46 631', '117.253191', '31.731148', '97564973');
INSERT INTO `station_data` VALUES ('02', '87.459', '0.4212', '70', '17:25:47 725', '117.25305', '31.731144', '97564973');
INSERT INTO `station_data` VALUES ('02', '38.813', '0.1222', '67', '17:25:48 698', '117.252911', '31.731139', '98122286');
INSERT INTO `station_data` VALUES ('02', '37.013', '0.1321', '67', '17:25:49 719', '117.252771', '31.731137', '98122286');
INSERT INTO `station_data` VALUES ('02', '34.181', '0.1423', '68', '17:25:50 759', '117.252636', '31.731133', '98122286');
INSERT INTO `station_data` VALUES ('02', '43.035', '0.1528', '68', '17:25:51 593', '117.2525', '31.731132', '98122286');
INSERT INTO `station_data` VALUES ('02', '39.908', '0.164', '67', '17:25:52 618', '117.252362', '31.731128', '98122286');
INSERT INTO `station_data` VALUES ('02', '53.282', '0.1755', '67', '17:25:53 661', '117.252221', '31.731127', '98122286');
INSERT INTO `station_data` VALUES ('02', '33.49', '0.1871', '67', '17:25:54 675', '117.252082', '31.731126', '98122286');
INSERT INTO `station_data` VALUES ('02', '74.987', '0.3373', '67', '17:25:55 729', '117.251943', '31.731126', '97564973');
INSERT INTO `station_data` VALUES ('02', '33.293', '0.3273', '67', '17:25:56 729', '117.251803', '31.731127', '97564973');
INSERT INTO `station_data` VALUES ('02', '33.618', '0.223', '67', '17:25:57 753', '117.251663', '31.731126', '98122286');
INSERT INTO `station_data` VALUES ('02', '37.531', '0.2352', '67', '17:25:58 784', '117.251523', '31.731127', '98122286');
INSERT INTO `station_data` VALUES ('02', '35.944', '0.2475', '69', '17:25:59 604', '117.251383', '31.731129', '98122286');
INSERT INTO `station_data` VALUES ('02', '45.355', '0.2598', '69', '17:26:00 631', '117.251244', '31.731129', '98122286');
INSERT INTO `station_data` VALUES ('02', '35.869', '0.2815', '65', '17:26:01 674', '117.251103', '31.73113', '97564973');
INSERT INTO `station_data` VALUES ('02', '32.917', '0.2734', '65', '17:26:02 703', '117.250962', '31.73113', '97564973');
INSERT INTO `station_data` VALUES ('02', '50.164', '0.2656', '65', '17:26:03 749', '117.250823', '31.731131', '97564973');
INSERT INTO `station_data` VALUES ('02', '36.81', '0.2658', '65', '17:26:03 925', '117.25082', '31.731128', '97564973');
INSERT INTO `station_data` VALUES ('02', '59.539', '0.2582', '65', '17:26:04 756', '117.250682', '31.731133', '97564973');
INSERT INTO `station_data` VALUES ('02', '33.826', '0.2514', '65', '17:26:05 776', '117.250543', '31.731134', '97564973');
INSERT INTO `station_data` VALUES ('02', '38.706', '0.2449', '65', '17:26:06 618', '117.250403', '31.731137', '97564973');
INSERT INTO `station_data` VALUES ('02', '59.349', '0.2391', '65', '17:26:07 666', '117.250264', '31.731139', '97564973');
INSERT INTO `station_data` VALUES ('02', '36.537', '0.2337', '65', '17:26:08 670', '117.250124', '31.731142', '97564973');
INSERT INTO `station_data` VALUES ('02', '79.857', '0.2292', '65', '17:26:09 752', '117.249984', '31.731143', '97564973');
INSERT INTO `station_data` VALUES ('02', '35.065', '0.2255', '64', '17:26:10 726', '117.249844', '31.731143', '97564973');
INSERT INTO `station_data` VALUES ('02', '44.269', '0.2227', '64', '17:26:11 746', '117.249705', '31.731142', '97564973');
INSERT INTO `station_data` VALUES ('02', '51.195', '0.2203', '63', '17:26:12 791', '117.249565', '31.731143', '97564974');
INSERT INTO `station_data` VALUES ('02', '42.077', '0.2189', '63', '17:26:13 807', '117.249425', '31.731143', '97564974');
INSERT INTO `station_data` VALUES ('02', '60.592', '0.2183', '63', '17:26:14 852', '117.249285', '31.731143', '97564974');
INSERT INTO `station_data` VALUES ('02', '50.082', '0.2184', '62', '17:26:15 655', '117.249145', '31.731143', '97564974');
INSERT INTO `station_data` VALUES ('02', '43.209', '0.2194', '62', '17:26:16 696', '117.249003', '31.731143', '97564974');
INSERT INTO `station_data` VALUES ('02', '41.204', '0.2211', '62', '17:26:17 706', '117.248863', '31.731144', '97564974');
INSERT INTO `station_data` VALUES ('02', '44.736', '0.2236', '62', '17:26:18 733', '117.248722', '31.731144', '97564974');
INSERT INTO `station_data` VALUES ('02', '41.789', '0.2269', '61', '17:26:19 767', '117.248581', '31.731145', '97564974');
INSERT INTO `station_data` VALUES ('02', '32.4', '0.231', '61', '17:26:20 793', '117.24844', '31.731144', '97564974');
INSERT INTO `station_data` VALUES ('02', '47.865', '0.2355', '61', '17:26:21 832', '117.248299', '31.731146', '97564974');
INSERT INTO `station_data` VALUES ('02', '32.225', '0.2409', '61', '17:26:22 847', '117.248158', '31.731146', '97564974');
INSERT INTO `station_data` VALUES ('02', '41.976', '0.2469', '61', '17:26:23 692', '117.248017', '31.731146', '97564974');
INSERT INTO `station_data` VALUES ('02', '42.165', '0.2533', '60', '17:26:24 713', '117.247877', '31.731147', '97564974');
INSERT INTO `station_data` VALUES ('02', '51.534', '0.2602', '60', '17:26:25 761', '117.247737', '31.731149', '97564974');
INSERT INTO `station_data` VALUES ('02', '51.999', '0.2677', '58', '17:26:26 794', '117.247596', '31.731149', '97564974');
INSERT INTO `station_data` VALUES ('02', '41.408', '0.2676', '58', '17:26:26 969', '117.247598', '31.731149', '97564974');
INSERT INTO `station_data` VALUES ('02', '34.244', '0.2733', '58', '17:26:27 588', '117.247456', '31.731149', '138976173');
INSERT INTO `station_data` VALUES ('02', '81.939', '0.2609', '58', '17:26:28 664', '117.247315', '31.73115', '138976173');
INSERT INTO `station_data` VALUES ('02', '57.195', '0.2486', '58', '17:26:29 657', '117.247174', '31.73115', '138976173');
INSERT INTO `station_data` VALUES ('02', '47.053', '0.2365', '62', '17:26:30 692', '117.247034', '31.73115', '138976173');
INSERT INTO `station_data` VALUES ('02', '36.795', '0.2244', '62', '17:26:31 691', '117.246893', '31.73115', '138976173');
INSERT INTO `station_data` VALUES ('02', '50.199', '0.2125', '62', '17:26:32 743', '117.246752', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '68.827', '0.2007', '62', '17:26:33 791', '117.24661', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '32.972', '0.1892', '62', '17:26:34 786', '117.24647', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '34.534', '0.1779', '59', '17:26:35 817', '117.246329', '31.731152', '138976173');
INSERT INTO `station_data` VALUES ('02', '36.342', '0.1671', '59', '17:26:36 632', '117.246189', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '36.57', '0.1566', '59', '17:26:37 660', '117.246049', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '44.132', '0.1465', '59', '17:26:38 696', '117.245908', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '32.202', '0.1369', '67', '17:26:39 712', '117.245767', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '34.253', '0.1371', '67', '17:26:39 916', '117.245769', '31.73115', '138976173');
INSERT INTO `station_data` VALUES ('02', '33.222', '0.128', '67', '17:26:40 743', '117.245625', '31.731151', '138976173');
INSERT INTO `station_data` VALUES ('02', '32.603', '0.1197', '78', '17:26:41 766', '117.245482', '31.731152', '138976173');
INSERT INTO `station_data` VALUES ('02', '36.251', '0.1125', '78', '17:26:42 807', '117.245339', '31.731153', '138976173');
INSERT INTO `station_data` VALUES ('02', '37.48', '0.1064', '78', '17:26:43 625', '117.245194', '31.731154', '138976173');
INSERT INTO `station_data` VALUES ('02', '39.812', '0.1019', '78', '17:26:44 665', '117.24505', '31.731155', '138976173');
INSERT INTO `station_data` VALUES ('02', '32.893', '0.0992', '78', '17:26:45 687', '117.244906', '31.731155', '138976173');
INSERT INTO `station_data` VALUES ('02', '35.093', '0.0981', '78', '17:26:46 715', '117.24476', '31.731156', '138976173');
INSERT INTO `station_data` VALUES ('02', '34.565', '0.0992', '78', '17:26:47 752', '117.244615', '31.731156', '138976173');
INSERT INTO `station_data` VALUES ('02', '35.465', '0.0988', '78', '17:26:47 942', '117.244619', '31.731159', '138976173');
INSERT INTO `station_data` VALUES ('02', '43.016', '0.102', '76', '17:26:48 770', '117.24447', '31.731156', '138976173');
INSERT INTO `station_data` VALUES ('02', '34.572', '0.1066', '76', '17:26:49 793', '117.244325', '31.731156', '138976173');
INSERT INTO `station_data` VALUES ('02', '85.269', '0.1123', '76', '17:26:50 671', '117.244186', '31.731157', '138976173');
INSERT INTO `station_data` VALUES ('02', '69.189', '0.1194', '71', '17:26:51 684', '117.244044', '31.731157', '138976173');
INSERT INTO `station_data` VALUES ('02', '51.525', '0.1276', '71', '17:26:52 691', '117.243904', '31.731156', '138976173');
INSERT INTO `station_data` VALUES ('02', '32.322', '0.1362', '71', '17:26:53 692', '117.243766', '31.731157', '138976173');
INSERT INTO `station_data` VALUES ('02', '42.167', '0.1456', '71', '17:26:54 744', '117.243628', '31.731157', '138976173');
INSERT INTO `station_data` VALUES ('02', '32.156', '0.1557', '71', '17:26:55 756', '117.243488', '31.731156', '138976173');
INSERT INTO `station_data` VALUES ('02', '77.877', '0.1661', '71', '17:26:56 832', '117.243348', '31.731157', '138976173');
INSERT INTO `station_data` VALUES ('02', '50.21', '0.1769', '66', '17:26:57 623', '117.243208', '31.731159', '138976174');
INSERT INTO `station_data` VALUES ('02', '43.993', '0.1876', '66', '17:26:58 851', '117.243069', '31.731166', '138976174');
INSERT INTO `station_data` VALUES ('02', '36.395', '0.1986', '67', '17:26:59 665', '117.24293', '31.731173', '138976174');
INSERT INTO `station_data` VALUES ('02', '55.876', '0.209', '67', '17:27:00 716', '117.242799', '31.731183', '138976174');
INSERT INTO `station_data` VALUES ('02', '64.141', '0.2207', '67', '17:27:01 748', '117.24266', '31.731185', '138976174');
INSERT INTO `station_data` VALUES ('02', '48.151', '0.2328', '68', '17:27:02 756', '117.242519', '31.731186', '138976174');
INSERT INTO `station_data` VALUES ('02', '37.423', '0.245', '68', '17:27:03 786', '117.242379', '31.731185', '138976174');
INSERT INTO `station_data` VALUES ('02', '52.626', '0.2574', '68', '17:27:04 823', '117.242238', '31.731184', '138976174');
INSERT INTO `station_data` VALUES ('02', '69.033', '0.2697', '68', '17:27:05 661', '117.242099', '31.731183', '138976174');
INSERT INTO `station_data` VALUES ('02', '42.725', '0.2822', '68', '17:27:06 855', '117.241959', '31.731183', '138976174');
INSERT INTO `station_data` VALUES ('02', '40.847', '0.2949', '68', '17:27:07 678', '117.241817', '31.731183', '138976174');
INSERT INTO `station_data` VALUES ('02', '40.451', '0.3074', '69', '17:27:08 707', '117.241677', '31.731185', '138976174');
INSERT INTO `station_data` VALUES ('02', '43.492', '0.3201', '69', '17:27:09 746', '117.241536', '31.731184', '138976174');
INSERT INTO `station_data` VALUES ('02', '55.113', '0.3328', '69', '17:27:10 779', '117.241396', '31.731183', '138976174');
INSERT INTO `station_data` VALUES ('02', '72.321', '0.3332', '69', '17:27:10 992', '117.241393', '31.731181', '138976174');
INSERT INTO `station_data` VALUES ('02', '48.961', '0.3456', '69', '17:27:11 605', '117.241256', '31.731183', '138976174');
INSERT INTO `station_data` VALUES ('02', '39.295', '0.3583', '69', '17:27:12 618', '117.241117', '31.731182', '138976174');
INSERT INTO `station_data` VALUES ('02', '63.006', '0.3709', '69', '17:27:13 661', '117.240979', '31.731182', '138976174');
INSERT INTO `station_data` VALUES ('02', '69.707', '0.3835', '69', '17:27:14 704', '117.240841', '31.731181', '138976174');
INSERT INTO `station_data` VALUES ('02', '44.21', '0.3963', '69', '17:27:15 705', '117.240702', '31.73118', '138976174');
INSERT INTO `station_data` VALUES ('02', '119.426', '0.4094', '69', '17:27:16 612', '117.24056', '31.731178', '138976174');
INSERT INTO `station_data` VALUES ('02', '34.179', '0.3214', '68', '17:27:17 748', '117.240419', '31.731176', '256511533');
INSERT INTO `station_data` VALUES ('02', '35.527', '0.3077', '68', '17:27:18 783', '117.240273', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '63.738', '0.2947', '68', '17:27:19 842', '117.240135', '31.731176', '256511533');
INSERT INTO `station_data` VALUES ('02', '43.598', '0.2814', '70', '17:27:20 845', '117.239994', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '41.261', '0.268', '70', '17:27:21 682', '117.239851', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '35.903', '0.2549', '70', '17:27:22 712', '117.239712', '31.731174', '256511533');
INSERT INTO `station_data` VALUES ('02', '35.352', '0.2553', '70', '17:27:22 902', '117.239716', '31.731173', '256511533');
INSERT INTO `station_data` VALUES ('02', '36.419', '0.2421', '70', '17:27:23 723', '117.239575', '31.731174', '256511533');
INSERT INTO `station_data` VALUES ('02', '36.95', '0.229', '70', '17:27:24 764', '117.239436', '31.731174', '256511533');
INSERT INTO `station_data` VALUES ('02', '49.872', '0.216', '70', '17:27:25 803', '117.239297', '31.731174', '256511533');
INSERT INTO `station_data` VALUES ('02', '33.689', '0.2034', '75', '17:27:26 610', '117.239162', '31.731172', '256511533');
INSERT INTO `station_data` VALUES ('02', '36.138', '0.1905', '75', '17:27:27 818', '117.239024', '31.73117', '256511533');
INSERT INTO `station_data` VALUES ('02', '47.778', '0.1777', '75', '17:27:28 648', '117.238887', '31.731171', '256511533');
INSERT INTO `station_data` VALUES ('02', '38.369', '0.1645', '85', '17:27:29 657', '117.238745', '31.731171', '256511533');
INSERT INTO `station_data` VALUES ('02', '43.351', '0.1516', '85', '17:27:30 682', '117.238606', '31.73117', '256511533');
INSERT INTO `station_data` VALUES ('02', '44.855', '0.1385', '85', '17:27:31 710', '117.238464', '31.731169', '256511533');
INSERT INTO `station_data` VALUES ('02', '45.394', '0.1255', '85', '17:27:32 738', '117.238322', '31.73117', '256511533');
INSERT INTO `station_data` VALUES ('02', '44.017', '0.1252', '85', '17:27:32 938', '117.23832', '31.731174', '256511533');
INSERT INTO `station_data` VALUES ('02', '32.521', '0.1126', '84', '17:27:33 758', '117.238181', '31.731171', '256511533');
INSERT INTO `station_data` VALUES ('02', '38.932', '0.0997', '84', '17:27:34 798', '117.238039', '31.731173', '256511533');
INSERT INTO `station_data` VALUES ('02', '44.893', '0.0869', '72', '17:27:35 833', '117.237897', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '174.283', '0.0746', '72', '17:27:36 580', '117.237756', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '44.897', '0.0627', '72', '17:27:37 690', '117.237616', '31.731177', '256511533');
INSERT INTO `station_data` VALUES ('02', '0', '0.0516', '73', '17:27:38 843', '117.237476', '31.731177', '256511533');
INSERT INTO `station_data` VALUES ('02', '37.521', '0.0419', '73', '17:27:39 730', '117.237336', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '33.935', '0.0343', '73', '17:27:40 758', '117.237194', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '38.028', '0.0342', '73', '17:27:40 958', '117.237193', '31.731176', '256511533');
INSERT INTO `station_data` VALUES ('02', '93.888', '0.0311', '73', '17:27:41 629', '117.237053', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '34.625', '0.0334', '74', '17:27:42 800', '117.236912', '31.731175', '256511533');
INSERT INTO `station_data` VALUES ('02', '45.38', '0.0401', '74', '17:27:43 645', '117.23677', '31.731176', '256511533');
INSERT INTO `station_data` VALUES ('02', '33.66', '0.0496', '74', '17:27:44 647', '117.23663', '31.731176', '256511534');
INSERT INTO `station_data` VALUES ('02', '36.168', '0.0606', '74', '17:27:45 671', '117.236489', '31.731177', '256511534');
INSERT INTO `station_data` VALUES ('02', '61.369', '0.3336', '73', '17:27:46 729', '117.236348', '31.731177', '17668205');
INSERT INTO `station_data` VALUES ('02', '48.108', '0.3202', '73', '17:27:47 735', '117.236206', '31.731176', '17668205');
INSERT INTO `station_data` VALUES ('02', '33.336', '0.3068', '73', '17:27:48 754', '117.236064', '31.731176', '17668205');
INSERT INTO `station_data` VALUES ('02', '39.035', '0.307', '73', '17:27:48 953', '117.236066', '31.731177', '17668205');
INSERT INTO `station_data` VALUES ('02', '43.207', '0.2934', '73', '17:27:49 787', '117.235922', '31.731174', '17668205');
INSERT INTO `station_data` VALUES ('02', '68.967', '0.28', '73', '17:27:50 840', '117.235779', '31.731173', '17668205');
INSERT INTO `station_data` VALUES ('02', '42.298', '0.1366', '72', '17:27:51 632', '117.235636', '31.731172', '256511534');
INSERT INTO `station_data` VALUES ('02', '33.576', '0.1498', '72', '17:27:52 654', '117.235493', '31.73117', '256511534');
INSERT INTO `station_data` VALUES ('02', '34.586', '0.1633', '71', '17:27:53 684', '117.235348', '31.73117', '256511534');
INSERT INTO `station_data` VALUES ('02', '34.115', '0.226', '70', '17:27:54 712', '117.235205', '31.731169', '17668205');
INSERT INTO `station_data` VALUES ('02', '43.357', '0.2122', '69', '17:27:55 750', '117.235059', '31.731169', '17668205');
INSERT INTO `station_data` VALUES ('02', '35.735', '0.1986', '69', '17:27:56 751', '117.234914', '31.731168', '17668205');
INSERT INTO `station_data` VALUES ('02', '51.372', '0.1851', '69', '17:27:57 796', '117.234769', '31.731167', '17668205');
INSERT INTO `station_data` VALUES ('02', '193.071', '0.1714', '69', '17:27:58 958', '117.234623', '31.731165', '17668205');
INSERT INTO `station_data` VALUES ('02', '55.117', '0.158', '69', '17:27:59 637', '117.234479', '31.731165', '17668205');
INSERT INTO `station_data` VALUES ('02', '34.039', '0.1445', '73', '17:28:00 635', '117.234334', '31.731162', '17668205');
INSERT INTO `station_data` VALUES ('02', '35.58', '0.1313', '73', '17:28:01 685', '117.234191', '31.73116', '17668205');
INSERT INTO `station_data` VALUES ('02', '32.949', '0.1184', '76', '17:28:02 697', '117.234051', '31.731158', '17668205');
INSERT INTO `station_data` VALUES ('02', '47.417', '0.1055', '76', '17:28:03 738', '117.23391', '31.731156', '17668205');
INSERT INTO `station_data` VALUES ('03', '187.912', '', '', '', '117.20536', '31.812254', '');
INSERT INTO `station_data` VALUES ('03', '34.501', '1.2645659', '60', '15:55:33 473', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '48.756', '1.2645659', '60', '15:55:33 678', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '96.672', '1.2645659', '60', '15:55:33 887', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '69.028', '1.2645659', '60', '15:55:34 094', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '117.939', '1.2645659', '60', '15:55:34 301', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '93.3', '1.2645659', '60', '15:55:34 509', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '210.019', '1.2645659', '60', '15:55:34 715', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '101.515', '1.2645659', '60', '15:55:34 921', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '77.975', '1.2645659', '60', '15:55:35 127', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '93.395', '1.2645659', '60', '15:55:35 335', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '81.619', '1.2645659', '60', '15:55:35 542', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '117.29', '1.2645659', '60', '15:55:35 764', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '113.82', '1.2645659', '58', '15:55:35 969', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '171.175', '1.2645659', '58', '15:55:36 174', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '194.63', '1.2645659', '58', '15:55:36 387', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '162.921', '1.2645659', '58', '15:55:36 603', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '330.509', '1.2645659', '58', '15:55:36 813', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '372.735', '1.2645659', '58', '15:55:37 023', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '398.365', '1.2645659', '58', '15:55:37 236', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '676.75', '1.2645659', '58', '15:55:37 444', '117.20536', '31.812254', '73980140');
INSERT INTO `station_data` VALUES ('03', '1060.479', '1.8930881', '58', '15:55:37 663', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1205.517', '1.8930881', '58', '15:55:37 870', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1163.28', '1.8930881', '58', '15:55:38 075', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1272.185', '1.8930881', '58', '15:55:38 289', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1395.537', '1.8930881', '58', '15:55:38 501', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1327.713', '1.8930881', '58', '15:55:38 707', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1193.448', '1.8930881', '58', '15:55:38 915', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1222.628', '1.8930881', '58', '15:55:39 127', '117.21186', '31.807697', '73980140');
INSERT INTO `station_data` VALUES ('03', '1270.569', '1.937601', '58', '15:55:39 344', '117.21227', '31.807384', '73980140');
INSERT INTO `station_data` VALUES ('03', '1303.814', '1.937601', '58', '15:55:39 552', '117.21227', '31.807384', '73980140');
INSERT INTO `station_data` VALUES ('03', '1213.413', '1.937601', '58', '15:55:39 759', '117.21227', '31.807384', '73980140');
INSERT INTO `station_data` VALUES ('03', '1175.591', '1.937601', '58', '15:55:39 971', '117.21227', '31.807384', '73980140');
INSERT INTO `station_data` VALUES ('03', '1157.038', '1.9669854', '58', '15:55:40 183', '117.21255', '31.8072', '73980140');
INSERT INTO `station_data` VALUES ('03', '1250.352', '1.9669854', '58', '15:55:40 396', '117.21255', '31.8072', '73980140');
INSERT INTO `station_data` VALUES ('03', '1359.331', '1.9669854', '58', '15:55:40 605', '117.21255', '31.8072', '73980140');
INSERT INTO `station_data` VALUES ('03', '1593.201', '1.9669854', '58', '15:55:40 821', '117.21255', '31.8072', '73980140');
INSERT INTO `station_data` VALUES ('03', '1671.224', '1.9669854', '58', '15:55:41 034', '117.21255', '31.8072', '73980140');
INSERT INTO `station_data` VALUES ('03', '2043.336', '1.9941129', '58', '15:55:41 241', '117.2128', '31.807026', '73980140');
INSERT INTO `station_data` VALUES ('03', '2326.092', '1.9941129', '58', '15:55:41 450', '117.2128', '31.807026', '73980140');
INSERT INTO `station_data` VALUES ('03', '2533.215', '1.9941129', '58', '15:55:41 659', '117.2128', '31.807026', '73980140');
INSERT INTO `station_data` VALUES ('03', '3147.897', '1.9941129', '59', '15:55:41 867', '117.2128', '31.807026', '73980140');
INSERT INTO `station_data` VALUES ('03', '3223.705', '1.9941129', '59', '15:55:42 074', '117.2128', '31.807026', '73980140');
INSERT INTO `station_data` VALUES ('03', '3087.07', '2.0192663', '59', '15:55:42 291', '117.21303', '31.80685', '73980140');
INSERT INTO `station_data` VALUES ('03', '396.383', '2.1279276', '73', '15:55:46 320', '117.21402', '31.806149', '73980140');
INSERT INTO `station_data` VALUES ('03', '192.812', '2.1279276', '57', '15:55:46 532', '117.21402', '31.806149', '73980140');
INSERT INTO `station_data` VALUES ('03', '49.835', '2.1279276', '57', '15:55:46 743', '117.21402', '31.806149', '73980140');
INSERT INTO `station_data` VALUES ('03', '38.013', '1.188745', '57', '15:55:46 956', '117.21402', '31.806149', '137257128');
INSERT INTO `station_data` VALUES ('03', '36.914', '1.2027327', '57', '15:55:47 171', '117.21429', '31.805975', '137257128');
INSERT INTO `station_data` VALUES ('03', '32.362', '1.2027327', '57', '15:55:47 380', '117.21429', '31.805975', '137257128');
INSERT INTO `station_data` VALUES ('03', '28.104', '1.2027327', '57', '15:55:47 589', '117.21429', '31.805975', '137257128');
INSERT INTO `station_data` VALUES ('03', '30.791', '1.2027327', '57', '15:55:47 796', '117.21429', '31.805975', '137257128');
INSERT INTO `station_data` VALUES ('03', '32.293', '1.2027327', '57', '15:55:48 009', '117.21429', '31.805975', '137257128');
INSERT INTO `station_data` VALUES ('03', '30.904', '1.2169102', '57', '15:55:48 221', '117.21455', '31.805805', '137257128');
INSERT INTO `station_data` VALUES ('03', '37.915', '1.2169102', '57', '15:55:48 437', '117.21455', '31.805805', '137257128');
INSERT INTO `station_data` VALUES ('03', '33.095', '1.2169102', '57', '15:55:48 646', '117.21455', '31.805805', '137257128');
INSERT INTO `station_data` VALUES ('03', '29.605', '1.2169102', '57', '15:55:48 858', '117.21455', '31.805805', '137257128');
INSERT INTO `station_data` VALUES ('03', '31.979', '1.2169102', '57', '15:55:49 070', '117.21455', '31.805805', '137257128');
INSERT INTO `station_data` VALUES ('03', '38.075', '1.2323668', '57', '15:55:49 284', '117.21481', '31.805635', '137257128');
INSERT INTO `station_data` VALUES ('03', '31.939', '1.2323668', '57', '15:55:49 490', '117.21481', '31.805635', '137257128');
INSERT INTO `station_data` VALUES ('03', '31.825', '1.2323668', '57', '15:55:49 697', '117.21481', '31.805635', '137257128');
INSERT INTO `station_data` VALUES ('03', '39.293', '1.2323668', '57', '15:55:49 906', '117.21481', '31.805635', '137257128');
INSERT INTO `station_data` VALUES ('03', '34.273', '1.2323668', '73', '15:55:50 123', '117.21481', '31.805635', '137257128');
INSERT INTO `station_data` VALUES ('03', '31.851', '1.248509', '73', '15:55:50 335', '117.21508', '31.805468', '137257128');
INSERT INTO `station_data` VALUES ('03', '29.087', '1.248509', '73', '15:55:50 545', '117.21508', '31.805468', '137257128');
INSERT INTO `station_data` VALUES ('03', '56.987', '1.248509', '73', '15:55:50 750', '117.21508', '31.805468', '137257128');
INSERT INTO `station_data` VALUES ('03', '70.48', '1.248509', '73', '15:55:50 963', '117.21508', '31.805468', '137257128');
INSERT INTO `station_data` VALUES ('03', '655.695', '1.2652257', '73', '15:55:51 171', '117.21535', '31.8053', '137257128');
INSERT INTO `station_data` VALUES ('03', '751.187', '1.2652257', '73', '15:55:51 395', '117.21535', '31.8053', '137257128');
INSERT INTO `station_data` VALUES ('03', '591.113', '1.2652257', '73', '15:55:51 601', '117.21535', '31.8053', '137257128');
INSERT INTO `station_data` VALUES ('03', '409.332', '1.2652257', '73', '15:55:51 807', '117.21535', '31.8053', '137257130');
INSERT INTO `station_data` VALUES ('03', '279.579', '1.2652257', '73', '15:55:52 024', '117.21535', '31.8053', '137257130');
INSERT INTO `station_data` VALUES ('03', '233.756', '1.2825659', '73', '15:55:52 232', '117.215614', '31.805134', '137257130');
INSERT INTO `station_data` VALUES ('03', '268.164', '1.2825659', '64', '15:55:52 436', '117.215614', '31.805134', '137257130');
INSERT INTO `station_data` VALUES ('03', '476.251', '1.2825659', '64', '15:55:52 645', '117.215614', '31.805134', '137257130');
INSERT INTO `station_data` VALUES ('03', '348.029', '1.2825659', '64', '15:55:52 851', '117.215614', '31.805134', '137257130');
INSERT INTO `station_data` VALUES ('03', '181.335', '1.2825659', '64', '15:55:53 057', '117.215614', '31.805134', '137257130');
INSERT INTO `station_data` VALUES ('03', '141.591', '1.3010456', '64', '15:55:53 264', '117.21589', '31.804966', '137257130');
INSERT INTO `station_data` VALUES ('03', '120.065', '1.3010456', '64', '15:55:53 479', '117.21589', '31.804966', '96689932');
INSERT INTO `station_data` VALUES ('03', '184.624', '1.3010456', '64', '15:55:53 685', '117.21589', '31.804966', '96689932');
INSERT INTO `station_data` VALUES ('03', '149.689', '1.3010456', '64', '15:55:53 891', '117.21589', '31.804966', '96689932');
INSERT INTO `station_data` VALUES ('03', '110.205', '1.3010456', '64', '15:55:54 099', '117.21589', '31.804966', '96689932');
INSERT INTO `station_data` VALUES ('03', '139.904', '1.319417', '64', '15:55:54 306', '117.216156', '31.8048', '96689932');
INSERT INTO `station_data` VALUES ('03', '170.511', '1.319417', '64', '15:55:54 514', '117.216156', '31.8048', '96689932');
INSERT INTO `station_data` VALUES ('03', '263.06', '1.319417', '64', '15:55:54 719', '117.216156', '31.8048', '96689932');
INSERT INTO `station_data` VALUES ('03', '597.544', '1.319417', '64', '15:55:54 924', '117.216156', '31.8048', '96689932');
INSERT INTO `station_data` VALUES ('03', '530.627', '1.319417', '64', '15:55:55 132', '117.216156', '31.8048', '96689932');
INSERT INTO `station_data` VALUES ('03', '401.32', '1.3382682', '64', '15:55:55 342', '117.21642', '31.804634', '96689932');
INSERT INTO `station_data` VALUES ('03', '268.497', '1.3382682', '64', '15:55:55 553', '117.21642', '31.804634', '96689932');
INSERT INTO `station_data` VALUES ('03', '170.302', '0.9109485', '64', '15:55:55 765', '117.21642', '31.804634', '139017100');
INSERT INTO `station_data` VALUES ('03', '151.731', '0.9109485', '64', '15:55:55 970', '117.21642', '31.804634', '139017100');
INSERT INTO `station_data` VALUES ('03', '123.669', '0.927918', '71', '15:55:56 175', '117.21669', '31.804472', '139017100');
INSERT INTO `station_data` VALUES ('03', '128.861', '0.927918', '71', '15:55:56 384', '117.21669', '31.804472', '139017100');
INSERT INTO `station_data` VALUES ('03', '107.227', '0.927918', '71', '15:55:56 595', '117.21669', '31.804472', '139017100');
INSERT INTO `station_data` VALUES ('03', '99.985', '0.927918', '71', '15:55:56 805', '117.21669', '31.804472', '139017100');
INSERT INTO `station_data` VALUES ('03', '106.648', '0.927918', '71', '15:55:57 012', '117.21669', '31.804472', '139017100');
INSERT INTO `station_data` VALUES ('03', '127.456', '0.9457407', '71', '15:55:57 219', '117.21696', '31.804314', '139017100');
INSERT INTO `station_data` VALUES ('03', '130.279', '0.9457407', '71', '15:55:57 429', '117.21696', '31.804314', '139017100');
INSERT INTO `station_data` VALUES ('03', '275.785', '0.9457407', '71', '15:55:57 637', '117.21696', '31.804314', '139017100');
INSERT INTO `station_data` VALUES ('03', '165.721', '0.9457407', '71', '15:55:57 846', '117.21696', '31.804314', '139017100');
INSERT INTO `station_data` VALUES ('03', '166.097', '0.9457407', '71', '15:55:58 052', '117.21696', '31.804314', '139017100');
INSERT INTO `station_data` VALUES ('03', '161.293', '0.9642821', '71', '15:55:58 257', '117.217224', '31.804157', '139017100');
INSERT INTO `station_data` VALUES ('03', '176.397', '0.9642821', '71', '15:55:58 467', '117.217224', '31.804157', '139017100');
INSERT INTO `station_data` VALUES ('03', '255.274', '0.9642821', '71', '15:55:58 686', '117.217224', '31.804157', '139017100');
INSERT INTO `station_data` VALUES ('03', '242.991', '0.9642821', '65', '15:55:58 895', '117.217224', '31.804157', '139017100');
INSERT INTO `station_data` VALUES ('03', '186.156', '0.9642821', '65', '15:55:59 101', '117.217224', '31.804157', '139017100');
INSERT INTO `station_data` VALUES ('03', '214.137', '0.9835492', '65', '15:55:59 307', '117.21749', '31.804005', '139017100');
INSERT INTO `station_data` VALUES ('03', '231.323', '0.9835492', '65', '15:55:59 513', '117.21749', '31.804005', '139017100');
INSERT INTO `station_data` VALUES ('03', '378.605', '0.9835492', '65', '15:55:59 717', '117.21749', '31.804005', '139017100');
INSERT INTO `station_data` VALUES ('03', '374.884', '0.9835492', '65', '15:55:59 921', '117.21749', '31.804005', '139017100');
INSERT INTO `station_data` VALUES ('03', '282.257', '0.9835492', '65', '15:56:00 129', '117.21749', '31.804005', '139017100');
INSERT INTO `station_data` VALUES ('03', '253.277', '1.0028354', '65', '15:56:00 337', '117.21775', '31.803858', '139017100');
INSERT INTO `station_data` VALUES ('03', '254.036', '1.167332', '65', '15:56:00 541', '117.21775', '31.803858', '96666382');
INSERT INTO `station_data` VALUES ('03', '282.613', '1.167332', '65', '15:56:00 748', '117.21775', '31.803858', '96666382');
INSERT INTO `station_data` VALUES ('03', '320.499', '1.167332', '65', '15:56:00 954', '117.21775', '31.803858', '96666382');
INSERT INTO `station_data` VALUES ('03', '444.322', '1.167332', '65', '15:56:01 164', '117.21775', '31.803858', '96666382');
INSERT INTO `station_data` VALUES ('03', '469.113', '1.1783592', '65', '15:56:01 373', '117.21801', '31.803707', '96666382');
INSERT INTO `station_data` VALUES ('03', '427.394', '1.1783592', '65', '15:56:01 589', '117.21801', '31.803707', '96666382');
INSERT INTO `station_data` VALUES ('03', '406.719', '1.1783592', '65', '15:56:01 797', '117.21801', '31.803707', '96666382');
INSERT INTO `station_data` VALUES ('03', '434.76', '1.1783592', '65', '15:56:02 006', '117.21801', '31.803707', '96666382');
INSERT INTO `station_data` VALUES ('03', '505.177', '1.190027', '66', '15:56:02 217', '117.21827', '31.803556', '96666382');
INSERT INTO `station_data` VALUES ('03', '422.232', '1.190027', '66', '15:56:02 421', '117.21827', '31.803556', '96666382');
INSERT INTO `station_data` VALUES ('03', '344.783', '1.190027', '66', '15:56:02 633', '117.21827', '31.803556', '96666382');
INSERT INTO `station_data` VALUES ('03', '296.749', '1.190027', '66', '15:56:02 838', '117.21827', '31.803556', '96666382');
INSERT INTO `station_data` VALUES ('03', '286.948', '1.190027', '66', '15:56:03 045', '117.21827', '31.803556', '96666382');
INSERT INTO `station_data` VALUES ('03', '297.746', '1.2020198', '66', '15:56:03 250', '117.21852', '31.803411', '96666382');
INSERT INTO `station_data` VALUES ('03', '305.751', '1.2020198', '66', '15:56:03 462', '117.21852', '31.803411', '96666382');
INSERT INTO `station_data` VALUES ('03', '378.225', '1.2020198', '66', '15:56:03 667', '117.21852', '31.803411', '96666382');
INSERT INTO `station_data` VALUES ('03', '372.274', '1.2020198', '66', '15:56:03 871', '117.21852', '31.803411', '96666382');
INSERT INTO `station_data` VALUES ('03', '339.744', '1.2020198', '66', '15:56:04 078', '117.21852', '31.803411', '96666382');
INSERT INTO `station_data` VALUES ('03', '324.084', '1.2148887', '66', '15:56:04 285', '117.21877', '31.803272', '96666382');
INSERT INTO `station_data` VALUES ('03', '361.912', '1.2148887', '66', '15:56:04 491', '117.21877', '31.803272', '96666382');
INSERT INTO `station_data` VALUES ('03', '379.876', '1.2148887', '66', '15:56:04 697', '117.21877', '31.803272', '96666382');
INSERT INTO `station_data` VALUES ('03', '372.518', '1.2148887', '66', '15:56:04 906', '117.21877', '31.803272', '96666382');
INSERT INTO `station_data` VALUES ('03', '391.607', '1.2148887', '66', '15:56:05 116', '117.21877', '31.803272', '96666382');
INSERT INTO `station_data` VALUES ('03', '419.293', '1.2289163', '66', '15:56:05 329', '117.21903', '31.803133', '96666382');
INSERT INTO `station_data` VALUES ('03', '418.066', '1.2289163', '66', '15:56:05 540', '117.21903', '31.803133', '96666382');
INSERT INTO `station_data` VALUES ('03', '442.578', '1.2289163', '66', '15:56:05 745', '117.21903', '31.803133', '96666382');
INSERT INTO `station_data` VALUES ('03', '511.293', '1.2289163', '66', '15:56:05 956', '117.21903', '31.803133', '96666382');
INSERT INTO `station_data` VALUES ('03', '547.33', '1.242724', '66', '15:56:06 165', '117.219284', '31.802992', '96666382');
INSERT INTO `station_data` VALUES ('03', '691.641', '1.242724', '66', '15:56:06 375', '117.219284', '31.802992', '96666382');
INSERT INTO `station_data` VALUES ('03', '1331.496', '1.242724', '66', '15:56:06 584', '117.219284', '31.802992', '96666382');
INSERT INTO `station_data` VALUES ('03', '1789.26', '1.242724', '66', '15:56:06 796', '117.219284', '31.802992', '96666382');
INSERT INTO `station_data` VALUES ('03', '1722.298', '1.242724', '66', '15:56:07 008', '117.219284', '31.802992', '96666382');
INSERT INTO `station_data` VALUES ('03', '1735.396', '1.2569352', '66', '15:56:07 217', '117.219536', '31.802849', '96666382');
INSERT INTO `station_data` VALUES ('03', '1547.622', '1.2569352', '66', '15:56:07 424', '117.219536', '31.802849', '96666382');
INSERT INTO `station_data` VALUES ('03', '1373.413', '1.1474208', '65', '15:56:07 631', '117.219536', '31.802849', '139017099');
INSERT INTO `station_data` VALUES ('03', '1271.571', '1.1474208', '65', '15:56:07 839', '117.219536', '31.802849', '139017099');
INSERT INTO `station_data` VALUES ('03', '1090.236', '1.1474208', '65', '15:56:08 045', '117.219536', '31.802849', '139017099');
INSERT INTO `station_data` VALUES ('03', '1025.51', '1.1691024', '64', '15:56:08 253', '117.21979', '31.802698', '139017099');
INSERT INTO `station_data` VALUES ('03', '896.303', '1.1691024', '64', '15:56:08 462', '117.21979', '31.802698', '139017099');
INSERT INTO `station_data` VALUES ('03', '1081.109', '1.1691024', '64', '15:56:08 669', '117.21979', '31.802698', '139017099');
INSERT INTO `station_data` VALUES ('03', '1133.121', '1.271277', '64', '15:56:08 874', '117.21979', '31.802698', '96666382');
INSERT INTO `station_data` VALUES ('03', '1313.577', '1.271277', '64', '15:56:09 092', '117.21979', '31.802698', '96666382');
INSERT INTO `station_data` VALUES ('03', '1088.298', '1.2876969', '64', '15:56:09 314', '117.220055', '31.802553', '96666382');
INSERT INTO `station_data` VALUES ('03', '1668.805', '1.2876969', '64', '15:56:09 530', '117.220055', '31.802553', '96666382');
INSERT INTO `station_data` VALUES ('03', '1456.796', '1.2876969', '64', '15:56:09 739', '117.220055', '31.802553', '96666382');
INSERT INTO `station_data` VALUES ('03', '1247.978', '1.1925988', '64', '15:56:09 951', '117.220055', '31.802553', '139017100');
INSERT INTO `station_data` VALUES ('03', '1179.554', '1.1925988', '64', '15:56:10 154', '117.220055', '31.802553', '139017100');
INSERT INTO `station_data` VALUES ('03', '1514.67', '1.2157108', '64', '15:56:10 362', '117.220314', '31.802414', '139017100');
INSERT INTO `station_data` VALUES ('03', '1324.168', '1.2157108', '64', '15:56:10 565', '117.220314', '31.802414', '139017100');
INSERT INTO `station_data` VALUES ('03', '1117.499', '1.2157108', '64', '15:56:10 770', '117.220314', '31.802414', '139017100');
INSERT INTO `station_data` VALUES ('03', '1465.839', '1.2157108', '64', '15:56:10 979', '117.220314', '31.802414', '139017100');
INSERT INTO `station_data` VALUES ('03', '1351.332', '1.2404985', '64', '15:56:11 187', '117.22059', '31.802273', '139017100');
INSERT INTO `station_data` VALUES ('03', '1154.668', '1.2404985', '64', '15:56:11 398', '117.22059', '31.802273', '139017100');
INSERT INTO `station_data` VALUES ('03', '1423.79', '1.2404985', '64', '15:56:11 600', '117.22059', '31.802273', '139017100');
INSERT INTO `station_data` VALUES ('03', '1518.479', '1.2404985', '64', '15:56:11 804', '117.22059', '31.802273', '139017100');
INSERT INTO `station_data` VALUES ('03', '1308.938', '1.2404985', '64', '15:56:12 010', '117.22059', '31.802273', '139017100');
INSERT INTO `station_data` VALUES ('03', '2306.452', '1.2655511', '64', '15:56:12 215', '117.22086', '31.802135', '139017100');
INSERT INTO `station_data` VALUES ('03', '2153.021', '1.2655511', '64', '15:56:12 426', '117.22086', '31.802135', '139017100');
INSERT INTO `station_data` VALUES ('03', '1954.708', '1.2655511', '64', '15:56:12 629', '117.22086', '31.802135', '139017100');
INSERT INTO `station_data` VALUES ('03', '2701.474', '1.2655511', '64', '15:56:12 836', '117.22086', '31.802135', '139017100');
INSERT INTO `station_data` VALUES ('03', '2559.474', '1.2655511', '64', '15:56:13 051', '117.22086', '31.802135', '139017100');
INSERT INTO `station_data` VALUES ('03', '2346.562', '1.2915431', '64', '15:56:13 265', '117.221146', '31.801998', '139017100');
INSERT INTO `station_data` VALUES ('03', '2149.065', '1.3609792', '64', '15:56:13 470', '117.221146', '31.801998', '96666373');
INSERT INTO `station_data` VALUES ('03', '1940.435', '1.3609792', '64', '15:56:13 674', '117.221146', '31.801998', '96666373');
INSERT INTO `station_data` VALUES ('03', '2591.408', '1.3609792', '64', '15:56:13 889', '117.221146', '31.801998', '96666373');
INSERT INTO `station_data` VALUES ('03', '2379.621', '1.3609792', '71', '15:56:14 103', '117.221146', '31.801998', '96666373');
INSERT INTO `station_data` VALUES ('03', '2156.372', '1.3813042', '71', '15:56:14 318', '117.22143', '31.801863', '96666373');
INSERT INTO `station_data` VALUES ('03', '1963.748', '1.3813042', '71', '15:56:14 524', '117.22143', '31.801863', '96666373');
INSERT INTO `station_data` VALUES ('03', '1753.546', '1.3813042', '71', '15:56:14 732', '117.22143', '31.801863', '96666373');
INSERT INTO `station_data` VALUES ('03', '1547.408', '1.3813042', '71', '15:56:14 939', '117.22143', '31.801863', '96666373');
INSERT INTO `station_data` VALUES ('03', '2300.609', '1.3813042', '71', '15:56:15 153', '117.22143', '31.801863', '96666373');
INSERT INTO `station_data` VALUES ('03', '2090.295', '1.402822', '71', '15:56:15 364', '117.22172', '31.801731', '96666373');
INSERT INTO `station_data` VALUES ('03', '1881.988', '1.402822', '71', '15:56:15 577', '117.22172', '31.801731', '96666373');
INSERT INTO `station_data` VALUES ('03', '1677.748', '1.402822', '71', '15:56:15 780', '117.22172', '31.801731', '96666373');
INSERT INTO `station_data` VALUES ('03', '1470.161', '1.402822', '71', '15:56:15 988', '117.22172', '31.801731', '96666373');
INSERT INTO `station_data` VALUES ('03', '2093.489', '1.4239414', '71', '15:56:16 196', '117.222', '31.801598', '96666373');
INSERT INTO `station_data` VALUES ('03', '1876.149', '1.4239414', '71', '15:56:16 408', '117.222', '31.801598', '96666373');
INSERT INTO `station_data` VALUES ('03', '1672.421', '1.4239414', '71', '15:56:16 626', '117.222', '31.801598', '96666373');
INSERT INTO `station_data` VALUES ('03', '1465.898', '1.4239414', '71', '15:56:16 833', '117.222', '31.801598', '96666373');
INSERT INTO `station_data` VALUES ('03', '1258.431', '1.4239414', '71', '15:56:17 039', '117.222', '31.801598', '96666373');
INSERT INTO `station_data` VALUES ('03', '1786.966', '1.4461509', '71', '15:56:17 249', '117.22229', '31.801466', '96666373');
INSERT INTO `station_data` VALUES ('03', '1575.391', '1.4461509', '71', '15:56:17 460', '117.22229', '31.801466', '96666373');
INSERT INTO `station_data` VALUES ('03', '1370.846', '1.4461509', '71', '15:56:17 670', '117.22229', '31.801466', '96666373');
INSERT INTO `station_data` VALUES ('03', '1160.165', '1.4461509', '71', '15:56:17 879', '117.22229', '31.801466', '96666373');
INSERT INTO `station_data` VALUES ('03', '1816.4', '1.4461509', '71', '15:56:18 085', '117.22229', '31.801466', '96666373');
INSERT INTO `station_data` VALUES ('03', '1608.714', '1.468573', '71', '15:56:18 294', '117.22258', '31.80133', '96666373');
INSERT INTO `station_data` VALUES ('03', '1420.029', '1.468573', '71', '15:56:18 503', '117.22258', '31.80133', '96666373');
INSERT INTO `station_data` VALUES ('03', '3612.736', '1.468573', '71', '15:56:18 707', '117.22258', '31.80133', '96666373');
INSERT INTO `station_data` VALUES ('03', '3410.797', '1.468573', '71', '15:56:18 919', '117.22258', '31.80133', '96666373');
INSERT INTO `station_data` VALUES ('03', '3205.786', '1.468573', '71', '15:56:19 131', '117.22258', '31.80133', '96666373');
INSERT INTO `station_data` VALUES ('03', '2996.134', '1.491367', '71', '15:56:19 339', '117.22287', '31.801197', '96666373');
INSERT INTO `station_data` VALUES ('03', '1102.466', '1.7428305', '68', '15:56:30 116', '117.22585', '31.799946', '96666423');
INSERT INTO `station_data` VALUES ('03', '894.526', '1.7698281', '68', '15:56:30 330', '117.22616', '31.799828', '96666423');
INSERT INTO `station_data` VALUES ('03', '705.144', '1.7698281', '68', '15:56:30 536', '117.22616', '31.799828', '96666423');
INSERT INTO `station_data` VALUES ('03', '495.303', '1.7698281', '68', '15:56:30 743', '117.22616', '31.799828', '96666423');
INSERT INTO `station_data` VALUES ('03', '281.522', '1.7698281', '68', '15:56:30 956', '117.22616', '31.799828', '96666423');
INSERT INTO `station_data` VALUES ('03', '71.265', '1.7698281', '68', '15:56:31 169', '117.22616', '31.799828', '96666423');
INSERT INTO `station_data` VALUES ('03', '64.352', '1.3961507', '68', '15:56:31 385', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '130.84', '1.3961507', '68', '15:56:31 603', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '49.335', '1.3961507', '67', '15:56:31 811', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '33.847', '1.3961507', '67', '15:56:32 015', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '39.311', '1.3961507', '67', '15:56:32 225', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '63.604', '1.3961507', '67', '15:56:32 433', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '31.881', '1.3961507', '72', '15:56:32 651', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '39.472', '1.3961507', '72', '15:56:32 861', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '50.379', '1.3961507', '72', '15:56:33 081', '117.226456', '31.799711', '256612097');
INSERT INTO `station_data` VALUES ('03', '37.225', '1.4475248', '72', '15:56:33 288', '117.22706', '31.79949', '256612097');
INSERT INTO `station_data` VALUES ('03', '56.075', '1.4475248', '72', '15:56:33 718', '117.22706', '31.79949', '256612097');
INSERT INTO `station_data` VALUES ('03', '59.403', '1.4475248', '72', '15:56:33 926', '117.22706', '31.79949', '256612097');
INSERT INTO `station_data` VALUES ('03', '52.271', '1.4475248', '72', '15:56:34 133', '117.22706', '31.79949', '256612097');
INSERT INTO `station_data` VALUES ('03', '53.713', '1.4732012', '76', '15:56:34 338', '117.227356', '31.799381', '256612097');
INSERT INTO `station_data` VALUES ('03', '66.312', '1.4732012', '76', '15:56:34 546', '117.227356', '31.799381', '256612097');
INSERT INTO `station_data` VALUES ('03', '111.249', '1.4732012', '76', '15:56:34 753', '117.227356', '31.799381', '256612097');
INSERT INTO `station_data` VALUES ('03', '68.835', '1.4732012', '72', '15:56:34 960', '117.227356', '31.799381', '256612097');
INSERT INTO `station_data` VALUES ('03', '135.821', '1.4732012', '76', '15:56:35 167', '117.227356', '31.799381', '256612097');
INSERT INTO `station_data` VALUES ('03', '57.428', '1.4990643', '76', '15:56:35 382', '117.22765', '31.799273', '256612097');
INSERT INTO `station_data` VALUES ('03', '31.365', '1.4990643', '76', '15:56:35 589', '117.22765', '31.799273', '256612097');
INSERT INTO `station_data` VALUES ('03', '60.416', '1.4990643', '76', '15:56:35 797', '117.22765', '31.799273', '256612097');
INSERT INTO `station_data` VALUES ('03', '31.404', '1.4990643', '76', '15:56:36 005', '117.22765', '31.799273', '256612097');
INSERT INTO `station_data` VALUES ('03', '40.899', '1.5258493', '76', '15:56:36 215', '117.22796', '31.799166', '256612097');
INSERT INTO `station_data` VALUES ('03', '39.422', '1.5258493', '76', '15:56:36 432', '117.22796', '31.799166', '256612097');
INSERT INTO `station_data` VALUES ('03', '35.6', '1.5258493', '76', '15:56:36 645', '117.22796', '31.799166', '256612097');
INSERT INTO `station_data` VALUES ('03', '58.718', '1.5258493', '76', '15:56:36 858', '117.22796', '31.799166', '256612097');
INSERT INTO `station_data` VALUES ('03', '58.889', '1.5258493', '76', '15:56:37 071', '117.22796', '31.799166', '256612097');
INSERT INTO `station_data` VALUES ('03', '60.108', '1.5528003', '76', '15:56:37 283', '117.228264', '31.799059', '256612097');
INSERT INTO `station_data` VALUES ('03', '68.969', '1.5528003', '76', '15:56:37 491', '117.228264', '31.799059', '256612097');
INSERT INTO `station_data` VALUES ('03', '48.211', '1.5528003', '76', '15:56:37 700', '117.228264', '31.799059', '256612097');
INSERT INTO `station_data` VALUES ('03', '54.965', '1.5528003', '76', '15:56:37 918', '117.228264', '31.799059', '256612097');
INSERT INTO `station_data` VALUES ('03', '47.947', '1.5528003', '76', '15:56:38 122', '117.228264', '31.799059', '256612097');
INSERT INTO `station_data` VALUES ('03', '85.72', '1.5799088', '76', '15:56:38 330', '117.22857', '31.798952', '256612097');
INSERT INTO `station_data` VALUES ('03', '51.748', '1.5799088', '76', '15:56:38 536', '117.22857', '31.798952', '256612097');
INSERT INTO `station_data` VALUES ('03', '82.415', '1.5799088', '76', '15:56:38 743', '117.22857', '31.798952', '256612097');
INSERT INTO `station_data` VALUES ('03', '113.523', '1.5799088', '76', '15:56:38 946', '117.22857', '31.798952', '256612097');
INSERT INTO `station_data` VALUES ('03', '36.072', '1.5799088', '76', '15:56:39 153', '117.22857', '31.798952', '256612097');
INSERT INTO `station_data` VALUES ('03', '46.381', '1.607191', '76', '15:56:39 366', '117.228874', '31.798847', '256612097');
INSERT INTO `station_data` VALUES ('03', '39.57', '1.607191', '76', '15:56:39 581', '117.228874', '31.798847', '256612097');
INSERT INTO `station_data` VALUES ('03', '144.729', '1.607191', '76', '15:56:39 786', '117.228874', '31.798847', '256612097');
INSERT INTO `station_data` VALUES ('03', '42.062', '1.607191', '76', '15:56:39 996', '117.228874', '31.798847', '256612097');
INSERT INTO `station_data` VALUES ('03', '47.088', '1.634656', '76', '15:56:40 206', '117.22918', '31.798746', '256612097');
INSERT INTO `station_data` VALUES ('03', '28.735', '1.634656', '76', '15:56:40 421', '117.22918', '31.798746', '256612097');
INSERT INTO `station_data` VALUES ('03', '61.568', '1.634656', '76', '15:56:40 629', '117.22918', '31.798746', '256612097');
INSERT INTO `station_data` VALUES ('03', '48.956', '1.634656', '76', '15:56:40 841', '117.22918', '31.798746', '256612097');
INSERT INTO `station_data` VALUES ('03', '46.838', '1.634656', '72', '15:56:41 053', '117.22918', '31.798746', '256612097');
INSERT INTO `station_data` VALUES ('03', '54.416', '1.6629839', '72', '15:56:41 270', '117.22949', '31.798647', '256612097');
INSERT INTO `station_data` VALUES ('03', '49.933', '1.6629839', '72', '15:56:41 481', '117.22949', '31.798647', '256612097');
INSERT INTO `station_data` VALUES ('03', '51.794', '1.6629839', '72', '15:56:41 701', '117.22949', '31.798647', '256612097');
INSERT INTO `station_data` VALUES ('03', '73.187', '1.6629839', '72', '15:56:41 913', '117.22949', '31.798647', '256612097');
INSERT INTO `station_data` VALUES ('03', '44.896', '1.6629839', '72', '15:56:42 127', '117.22949', '31.798647', '256612097');
INSERT INTO `station_data` VALUES ('03', '141.158', '1.6907461', '72', '15:56:42 336', '117.2298', '31.798552', '256612097');
INSERT INTO `station_data` VALUES ('03', '90.321', '1.6907461', '72', '15:56:42 546', '117.2298', '31.798552', '256612097');
INSERT INTO `station_data` VALUES ('03', '51.272', '1.6907461', '72', '15:56:42 762', '117.2298', '31.798552', '256612097');
INSERT INTO `station_data` VALUES ('03', '55.195', '1.6907461', '72', '15:56:42 970', '117.2298', '31.798552', '256612097');
INSERT INTO `station_data` VALUES ('03', '64.569', '1.7193473', '72', '15:56:43 183', '117.23011', '31.798458', '256612097');
INSERT INTO `station_data` VALUES ('03', '57.021', '1.7193473', '72', '15:56:43 392', '117.23011', '31.798458', '256612097');
INSERT INTO `station_data` VALUES ('03', '63.428', '1.7193473', '72', '15:56:43 599', '117.23011', '31.798458', '256612097');
INSERT INTO `station_data` VALUES ('03', '62.794', '1.7193473', '72', '15:56:43 812', '117.23011', '31.798458', '256612097');
INSERT INTO `station_data` VALUES ('03', '40.263', '1.7193473', '72', '15:56:44 027', '117.23011', '31.798458', '256612097');
INSERT INTO `station_data` VALUES ('03', '63.017', '1.7480593', '72', '15:56:44 234', '117.23042', '31.798367', '256612097');
INSERT INTO `station_data` VALUES ('03', '56.131', '1.7480593', '72', '15:56:44 446', '117.23042', '31.798367', '256612097');
INSERT INTO `station_data` VALUES ('03', '37.692', '1.7480593', '72', '15:56:44 653', '117.23042', '31.798367', '256612097');
INSERT INTO `station_data` VALUES ('03', '63.396', '1.7480593', '72', '15:56:44 865', '117.23042', '31.798367', '256612097');
INSERT INTO `station_data` VALUES ('03', '45.549', '1.7480593', '72', '15:56:45 073', '117.23042', '31.798367', '256612097');
INSERT INTO `station_data` VALUES ('03', '42.721', '1.7768445', '72', '15:56:45 281', '117.230736', '31.798273', '256612097');
INSERT INTO `station_data` VALUES ('03', '31.354', '1.7768445', '72', '15:56:45 487', '117.230736', '31.798273', '256612097');
INSERT INTO `station_data` VALUES ('03', '29.335', '0.9038779', '72', '15:56:45 694', '117.230736', '31.798273', '256611841');
INSERT INTO `station_data` VALUES ('03', '44.842', '0.9038779', '72', '15:56:45 901', '117.230736', '31.798273', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.283', '0.9038779', '72', '15:56:46 108', '117.230736', '31.798273', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.564', '0.9109117', '72', '15:56:46 315', '117.23105', '31.798183', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.1', '0.9109117', '72', '15:56:46 527', '117.23105', '31.798183', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.964', '0.9109117', '72', '15:56:46 745', '117.23105', '31.798183', '256611841');
INSERT INTO `station_data` VALUES ('03', '42.25', '0.9109117', '66', '15:56:46 956', '117.23105', '31.798183', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.119', '0.9191879', '67', '15:56:47 164', '117.23137', '31.798092', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.095', '0.9191879', '67', '15:56:47 383', '117.23137', '31.798092', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.763', '0.9191879', '67', '15:56:47 591', '117.23137', '31.798092', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.012', '0.9191879', '67', '15:56:47 798', '117.23137', '31.798092', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.657', '0.9191879', '67', '15:56:48 005', '117.23137', '31.798092', '256611841');
INSERT INTO `station_data` VALUES ('03', '43.264', '0.928235', '67', '15:56:48 217', '117.23168', '31.798002', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.693', '0.928235', '67', '15:56:48 437', '117.23168', '31.798002', '256611841');
INSERT INTO `station_data` VALUES ('03', '35.45', '0.928235', '67', '15:56:48 646', '117.23168', '31.798002', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.622', '0.928235', '67', '15:56:48 859', '117.23168', '31.798002', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.492', '0.928235', '67', '15:56:49 072', '117.23168', '31.798002', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.106', '0.9380684', '67', '15:56:49 287', '117.231995', '31.79791', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.21', '0.9380684', '67', '15:56:49 505', '117.231995', '31.79791', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.683', '0.9380684', '67', '15:56:49 719', '117.231995', '31.79791', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.065', '0.9380684', '67', '15:56:49 935', '117.231995', '31.79791', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.226', '0.9380684', '67', '15:56:50 148', '117.231995', '31.79791', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.214', '0.9491582', '67', '15:56:50 353', '117.23231', '31.797823', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.337', '0.9491582', '67', '15:56:50 564', '117.23231', '31.797823', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.951', '0.9491582', '67', '15:56:50 771', '117.23231', '31.797823', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.439', '0.9491582', '67', '15:56:50 987', '117.23231', '31.797823', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.149', '0.9611312', '67', '15:56:51 192', '117.23262', '31.797735', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.5', '0.9611312', '67', '15:56:51 404', '117.23262', '31.797735', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.552', '0.9611312', '67', '15:56:51 609', '117.23262', '31.797735', '256611841');
INSERT INTO `station_data` VALUES ('03', '42.749', '0.9611312', '67', '15:56:51 817', '117.23262', '31.797735', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.708', '0.9611312', '67', '15:56:52 025', '117.23262', '31.797735', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.326', '0.9744176', '67', '15:56:52 232', '117.23293', '31.797653', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.998', '0.9744176', '67', '15:56:52 438', '117.23293', '31.797653', '256611841');
INSERT INTO `station_data` VALUES ('03', '39.984', '0.9744176', '67', '15:56:52 655', '117.23293', '31.797653', '256611841');
INSERT INTO `station_data` VALUES ('03', '34.794', '0.9744176', '67', '15:56:52 860', '117.23293', '31.797653', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.955', '0.9744176', '68', '15:56:53 078', '117.23293', '31.797653', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.491', '0.9887966', '68', '15:56:53 284', '117.233246', '31.797575', '256611841');
INSERT INTO `station_data` VALUES ('03', '39.402', '0.9887966', '68', '15:56:53 498', '117.233246', '31.797575', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.974', '0.9887966', '68', '15:56:53 704', '117.233246', '31.797575', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.612', '0.9887966', '68', '15:56:53 921', '117.233246', '31.797575', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.234', '0.9887966', '68', '15:56:54 126', '117.233246', '31.797575', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.036', '1.0040641', '68', '15:56:54 337', '117.23356', '31.797499', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.789', '1.0040641', '68', '15:56:54 553', '117.23356', '31.797499', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.943', '1.0040641', '68', '15:56:54 767', '117.23356', '31.797499', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.985', '1.0040641', '68', '15:56:54 974', '117.23356', '31.797499', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.993', '1.0040641', '68', '15:56:55 180', '117.23356', '31.797499', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.089', '1.0201749', '68', '15:56:55 388', '117.23387', '31.797424', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.683', '1.0201749', '68', '15:56:55 595', '117.23387', '31.797424', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.881', '1.0201749', '68', '15:56:55 806', '117.23387', '31.797424', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.375', '1.0201749', '68', '15:56:56 018', '117.23387', '31.797424', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.74', '1.0359887', '68', '15:56:56 230', '117.23417', '31.797352', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.856', '1.0359887', '68', '15:56:56 462', '117.23417', '31.797352', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.586', '1.0359887', '68', '15:56:56 671', '117.23417', '31.797352', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.137', '1.0359887', '68', '15:56:56 883', '117.23417', '31.797352', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.776', '1.0359887', '68', '15:56:57 099', '117.23417', '31.797352', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.707', '1.0530732', '68', '15:56:57 311', '117.234474', '31.797281', '256611841');
INSERT INTO `station_data` VALUES ('03', '48.488', '1.0530732', '68', '15:56:57 518', '117.234474', '31.797281', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.149', '1.0530732', '68', '15:56:57 723', '117.234474', '31.797281', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.9', '1.0530732', '68', '15:56:57 935', '117.234474', '31.797281', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.16', '1.0530732', '68', '15:56:58 147', '117.234474', '31.797281', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.613', '1.0708522', '68', '15:56:58 356', '117.23478', '31.797213', '256611841');
INSERT INTO `station_data` VALUES ('03', '34.094', '1.0708522', '68', '15:56:58 563', '117.23478', '31.797213', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.332', '1.0708522', '68', '15:56:58 770', '117.23478', '31.797213', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.32', '1.0708522', '62', '15:56:58 983', '117.23478', '31.797213', '256611841');
INSERT INTO `station_data` VALUES ('03', '44.367', '1.0894143', '62', '15:56:59 193', '117.235085', '31.797148', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.964', '1.0894143', '62', '15:56:59 407', '117.235085', '31.797148', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.653', '1.0894143', '62', '15:56:59 612', '117.235085', '31.797148', '256611841');
INSERT INTO `station_data` VALUES ('03', '50.416', '1.0894143', '62', '15:56:59 831', '117.235085', '31.797148', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.718', '1.0894143', '62', '15:57:00 045', '117.235085', '31.797148', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.443', '1.1092991', '62', '15:57:00 251', '117.2354', '31.797087', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.888', '1.1092991', '62', '15:57:00 469', '117.2354', '31.797087', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.026', '1.1092991', '62', '15:57:00 678', '117.2354', '31.797087', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.349', '1.1092991', '62', '15:57:00 892', '117.2354', '31.797087', '256611841');
INSERT INTO `station_data` VALUES ('03', '39.565', '1.1092991', '62', '15:57:01 101', '117.2354', '31.797087', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.728', '1.1297703', '62', '15:57:01 311', '117.23571', '31.797028', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.543', '1.1297703', '62', '15:57:01 518', '117.23571', '31.797028', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.5', '1.1297703', '64', '15:57:01 725', '117.23571', '31.797028', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.498', '1.1297703', '64', '15:57:01 933', '117.23571', '31.797028', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.935', '1.1297703', '64', '15:57:02 151', '117.23571', '31.797028', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.761', '1.151163', '64', '15:57:02 361', '117.23603', '31.796967', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.454', '1.151163', '64', '15:57:02 577', '117.23603', '31.796967', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.396', '1.151163', '64', '15:57:02 786', '117.23603', '31.796967', '256611841');
INSERT INTO `station_data` VALUES ('03', '39.06', '1.151163', '64', '15:57:02 996', '117.23603', '31.796967', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.811', '1.1723779', '64', '15:57:03 204', '117.23634', '31.796906', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.251', '1.1723779', '64', '15:57:03 419', '117.23634', '31.796906', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.028', '1.1723779', '64', '15:57:03 631', '117.23634', '31.796906', '256611841');
INSERT INTO `station_data` VALUES ('03', '55.339', '1.1723779', '64', '15:57:03 838', '117.23634', '31.796906', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.033', '1.1723779', '64', '15:57:04 047', '117.23634', '31.796906', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.155', '1.1952235', '64', '15:57:04 255', '117.23667', '31.796844', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.724', '1.1952235', '64', '15:57:04 471', '117.23667', '31.796844', '256611841');
INSERT INTO `station_data` VALUES ('03', '33.118', '1.1952235', '64', '15:57:04 680', '117.23667', '31.796844', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.056', '1.1952235', '64', '15:57:04 896', '117.23667', '31.796844', '256611841');
INSERT INTO `station_data` VALUES ('03', '34.446', '1.1952235', '71', '15:57:05 104', '117.23667', '31.796844', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.736', '1.2178452', '71', '15:57:05 313', '117.23699', '31.796783', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.439', '1.2178452', '71', '15:57:05 527', '117.23699', '31.796783', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.935', '1.2178452', '71', '15:57:05 733', '117.23699', '31.796783', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.572', '1.2178452', '71', '15:57:05 946', '117.23699', '31.796783', '256611841');
INSERT INTO `station_data` VALUES ('03', '46.663', '1.2178452', '71', '15:57:06 156', '117.23699', '31.796783', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.321', '1.2412561', '71', '15:57:06 365', '117.23732', '31.796719', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.5', '1.2412561', '71', '15:57:06 583', '117.23732', '31.796719', '256611841');
INSERT INTO `station_data` VALUES ('03', '33.006', '1.2412561', '71', '15:57:06 797', '117.23732', '31.796719', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.139', '1.2412561', '71', '15:57:07 024', '117.23732', '31.796719', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.579', '1.2645007', '71', '15:57:07 233', '117.23764', '31.796656', '256611841');
INSERT INTO `station_data` VALUES ('03', '35.097', '1.2645007', '71', '15:57:07 441', '117.23764', '31.796656', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.614', '1.2645007', '63', '15:57:07 652', '117.23764', '31.796656', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.044', '1.2645007', '63', '15:57:07 861', '117.23764', '31.796656', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.982', '1.2645007', '63', '15:57:08 071', '117.23764', '31.796656', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.105', '1.2889137', '74', '15:57:08 277', '117.23797', '31.796597', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.021', '1.2889137', '74', '15:57:08 494', '117.23797', '31.796597', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.962', '1.2889137', '74', '15:57:08 701', '117.23797', '31.796597', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.52', '1.2889137', '74', '15:57:08 907', '117.23797', '31.796597', '256611841');
INSERT INTO `station_data` VALUES ('03', '46.017', '1.2889137', '74', '15:57:09 116', '117.23797', '31.796597', '256611841');
INSERT INTO `station_data` VALUES ('03', '42.695', '1.3133565', '74', '15:57:09 329', '117.2383', '31.796532', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.499', '1.3133565', '74', '15:57:09 537', '117.2383', '31.796532', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.912', '1.3133565', '74', '15:57:09 747', '117.2383', '31.796532', '256611841');
INSERT INTO `station_data` VALUES ('03', '33.183', '1.3133565', '74', '15:57:09 961', '117.2383', '31.796532', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.227', '1.3133565', '74', '15:57:10 172', '117.2383', '31.796532', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.082', '1.3389462', '74', '15:57:10 383', '117.23863', '31.79647', '256611841');
INSERT INTO `station_data` VALUES ('03', '27.817', '1.3389462', '74', '15:57:10 595', '117.23863', '31.79647', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.858', '1.3389462', '74', '15:57:10 803', '117.23863', '31.79647', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.999', '1.3389462', '74', '15:57:11 016', '117.23863', '31.79647', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.855', '1.3636062', '74', '15:57:11 222', '117.23895', '31.796412', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.498', '1.3636062', '72', '15:57:11 440', '117.23895', '31.796412', '256611841');
INSERT INTO `station_data` VALUES ('03', '42.761', '1.3636062', '72', '15:57:11 650', '117.23895', '31.796412', '256611841');
INSERT INTO `station_data` VALUES ('03', '35.46', '1.3636062', '72', '15:57:11 858', '117.23895', '31.796412', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.679', '1.3636062', '72', '15:57:12 068', '117.23895', '31.796412', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.938', '1.3894397', '72', '15:57:12 275', '117.23928', '31.796358', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.868', '1.3894397', '72', '15:57:12 486', '117.23928', '31.796358', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.894', '1.3894397', '72', '15:57:12 700', '117.23928', '31.796358', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.374', '1.3894397', '72', '15:57:12 907', '117.23928', '31.796358', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.093', '1.3894397', '72', '15:57:13 116', '117.23928', '31.796358', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.988', '1.4141808', '72', '15:57:13 325', '117.23959', '31.796305', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.352', '1.4141808', '72', '15:57:13 544', '117.23959', '31.796305', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.498', '1.4141808', '72', '15:57:13 762', '117.23959', '31.796305', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.682', '1.4141808', '72', '15:57:13 975', '117.23959', '31.796305', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.587', '1.4392929', '72', '15:57:14 189', '117.23991', '31.796255', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.797', '1.4392929', '72', '15:57:14 405', '117.23991', '31.796255', '256611841');
INSERT INTO `station_data` VALUES ('03', '34.231', '1.4392929', '72', '15:57:14 620', '117.23991', '31.796255', '256611841');
INSERT INTO `station_data` VALUES ('03', '63.496', '1.4392929', '72', '15:57:14 826', '117.23991', '31.796255', '256611841');
INSERT INTO `station_data` VALUES ('03', '43.31', '1.4392929', '72', '15:57:15 040', '117.23991', '31.796255', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.605', '1.4646726', '72', '15:57:15 249', '117.24022', '31.796207', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.288', '1.4646726', '67', '15:57:15 470', '117.24022', '31.796207', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.862', '1.4646726', '67', '15:57:15 676', '117.24022', '31.796207', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.331', '1.4646726', '67', '15:57:15 884', '117.24022', '31.796207', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.309', '1.4646726', '67', '15:57:16 094', '117.24022', '31.796207', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.194', '1.489709', '72', '15:57:16 304', '117.240524', '31.796164', '256611841');
INSERT INTO `station_data` VALUES ('03', '33.323', '1.489709', '72', '15:57:16 514', '117.240524', '31.796164', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.898', '1.489709', '72', '15:57:16 728', '117.240524', '31.796164', '256611841');
INSERT INTO `station_data` VALUES ('03', '34.064', '1.489709', '72', '15:57:16 939', '117.240524', '31.796164', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.438', '1.5155726', '72', '15:57:17 148', '117.24084', '31.79612', '256611841');
INSERT INTO `station_data` VALUES ('03', '38.106', '1.5155726', '72', '15:57:17 362', '117.24084', '31.79612', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.048', '1.5155726', '72', '15:57:17 577', '117.24084', '31.79612', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.349', '1.5155726', '72', '15:57:17 782', '117.24084', '31.79612', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.895', '1.5155726', '72', '15:57:17 990', '117.24084', '31.79612', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.347', '1.5415127', '72', '15:57:18 194', '117.24115', '31.796074', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.22', '1.5415127', '72', '15:57:18 403', '117.24115', '31.796074', '256611841');
INSERT INTO `station_data` VALUES ('03', '35.234', '1.5415127', '72', '15:57:18 616', '117.24115', '31.796074', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.912', '1.5415127', '72', '15:57:18 822', '117.24115', '31.796074', '256611841');
INSERT INTO `station_data` VALUES ('03', '30.63', '1.5415127', '72', '15:57:19 032', '117.24115', '31.796074', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.876', '1.5677419', '72', '15:57:19 240', '117.24146', '31.796032', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.197', '1.5677419', '72', '15:57:19 447', '117.24146', '31.796032', '256611841');
INSERT INTO `station_data` VALUES ('03', '31.101', '1.5677419', '72', '15:57:19 661', '117.24146', '31.796032', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.111', '1.5677419', '72', '15:57:19 869', '117.24146', '31.796032', '256611841');
INSERT INTO `station_data` VALUES ('03', '33.718', '1.5677419', '72', '15:57:20 082', '117.24146', '31.796032', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.281', '1.5941723', '72', '15:57:20 293', '117.241776', '31.795992', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.844', '1.5941723', '72', '15:57:20 501', '117.241776', '31.795992', '256611841');
INSERT INTO `station_data` VALUES ('03', '32.329', '1.5941723', '72', '15:57:20 710', '117.241776', '31.795992', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.434', '1.5941723', '72', '15:57:20 916', '117.241776', '31.795992', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.57', '1.5941723', '72', '15:57:21 122', '117.241776', '31.795992', '256611841');
INSERT INTO `station_data` VALUES ('03', '40.689', '1.6220923', '72', '15:57:21 333', '117.2421', '31.795952', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.339', '1.6220923', '63', '15:57:21 543', '117.2421', '31.795952', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.895', '1.6220923', '63', '15:57:21 750', '117.2421', '31.795952', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.422', '1.6220923', '63', '15:57:21 958', '117.2421', '31.795952', '256611841');
INSERT INTO `station_data` VALUES ('03', '28.491', '1.6220923', '63', '15:57:22 167', '117.2421', '31.795952', '256611841');
INSERT INTO `station_data` VALUES ('03', '37.66', '1.6508217', '66', '15:57:22 376', '117.24244', '31.795912', '256611841');
INSERT INTO `station_data` VALUES ('03', '29.327', '1.6508217', '66', '15:57:22 585', '117.24244', '31.795912', '256611841');
INSERT INTO `station_data` VALUES ('03', '42.815', '1.6508217', '66', '15:57:22 804', '117.24244', '31.795912', '256611841');
INSERT INTO `station_data` VALUES ('03', '36.348', '0.6823838', '66', '15:57:23 017', '117.24244', '31.795912', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.13', '0.7140399', '66', '15:57:23 236', '117.242775', '31.795874', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.35', '0.7140399', '66', '15:57:23 449', '117.242775', '31.795874', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.068', '0.7140399', '66', '15:57:23 663', '117.242775', '31.795874', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.1', '0.7140399', '66', '15:57:23 875', '117.242775', '31.795874', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.958', '0.7140399', '66', '15:57:24 089', '117.242775', '31.795874', '256612352');
INSERT INTO `station_data` VALUES ('03', '35.18', '0.7464537', '66', '15:57:24 300', '117.24312', '31.795837', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.189', '0.7464537', '66', '15:57:24 508', '117.24312', '31.795837', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.719', '0.7464537', '66', '15:57:24 720', '117.24312', '31.795837', '256612352');
INSERT INTO `station_data` VALUES ('03', '40.503', '0.7464537', '66', '15:57:24 932', '117.24312', '31.795837', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.887', '0.7464537', '66', '15:57:25 140', '117.24312', '31.795837', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.229', '0.7788941', '66', '15:57:25 349', '117.24346', '31.795801', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.768', '0.7788941', '66', '15:57:25 554', '117.24346', '31.795801', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.607', '0.7788941', '66', '15:57:25 765', '117.24346', '31.795801', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.726', '0.7788941', '66', '15:57:25 981', '117.24346', '31.795801', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.296', '0.8106372', '66', '15:57:26 193', '117.2438', '31.795769', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.823', '0.8106372', '66', '15:57:26 410', '117.2438', '31.795769', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.599', '0.8106372', '66', '15:57:26 621', '117.2438', '31.795769', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.404', '0.8106372', '66', '15:57:26 828', '117.2438', '31.795769', '256612352');
INSERT INTO `station_data` VALUES ('03', '39.596', '0.8106372', '66', '15:57:27 042', '117.2438', '31.795769', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.377', '0.8423968', '66', '15:57:27 248', '117.24413', '31.795738', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.793', '0.8423968', '54', '15:57:27 459', '117.24413', '31.795738', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.97', '0.8423968', '54', '15:57:27 668', '117.24413', '31.795738', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.473', '0.8423968', '54', '15:57:27 875', '117.24413', '31.795738', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.925', '0.8423968', '54', '15:57:28 088', '117.24413', '31.795738', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.756', '0.8741722', '54', '15:57:28 303', '117.24447', '31.795704', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.337', '0.8741722', '58', '15:57:28 513', '117.24447', '31.795704', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.529', '0.8741722', '58', '15:57:28 722', '117.24447', '31.795704', '256612352');
INSERT INTO `station_data` VALUES ('03', '34.777', '0.8741722', '58', '15:57:28 939', '117.24447', '31.795704', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.294', '0.8741722', '58', '15:57:29 144', '117.24447', '31.795704', '256612352');
INSERT INTO `station_data` VALUES ('03', '39.911', '0.9052368', '58', '15:57:29 357', '117.2448', '31.795673', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.815', '0.9052368', '58', '15:57:29 565', '117.2448', '31.795673', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.614', '0.9052368', '58', '15:57:29 779', '117.2448', '31.795673', '256612352');
INSERT INTO `station_data` VALUES ('03', '45.589', '0.9052368', '58', '15:57:29 989', '117.2448', '31.795673', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.376', '0.9370311', '58', '15:57:30 196', '117.24513', '31.795645', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.048', '0.9370311', '58', '15:57:30 404', '117.24513', '31.795645', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.306', '0.9370311', '58', '15:57:30 620', '117.24513', '31.795645', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.088', '0.9370311', '58', '15:57:30 827', '117.24513', '31.795645', '256612352');
INSERT INTO `station_data` VALUES ('03', '36.301', '0.9370311', '58', '15:57:31 040', '117.24513', '31.795645', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.804', '0.9681088', '58', '15:57:31 246', '117.24546', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.659', '0.9681088', '58', '15:57:31 464', '117.24546', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.867', '0.9681088', '58', '15:57:31 671', '117.24546', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '34.429', '0.9681088', '58', '15:57:31 879', '117.24546', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.878', '0.9681088', '58', '15:57:32 092', '117.24546', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.404', '0.9984712', '58', '15:57:32 304', '117.24578', '31.795591', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.324', '0.9984712', '58', '15:57:32 511', '117.24578', '31.795591', '256612352');
INSERT INTO `station_data` VALUES ('03', '34.816', '0.9984712', '58', '15:57:32 719', '117.24578', '31.795591', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.179', '0.9984712', '58', '15:57:32 935', '117.24578', '31.795591', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.919', '0.9984712', '58', '15:57:33 152', '117.24578', '31.795591', '256612352');
INSERT INTO `station_data` VALUES ('03', '42.07', '1.0295571', '50', '15:57:33 414', '117.24611', '31.795567', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.695', '1.0295571', '50', '15:57:33 768', '117.24611', '31.795567', '256612352');
INSERT INTO `station_data` VALUES ('03', '36.335', '1.0295571', '50', '15:57:33 981', '117.24611', '31.795567', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.233', '1.0606521', '50', '15:57:34 188', '117.24644', '31.79554', '256612352');
INSERT INTO `station_data` VALUES ('03', '35.641', '1.0606521', '56', '15:57:34 400', '117.24644', '31.79554', '256612352');
INSERT INTO `station_data` VALUES ('03', '43.996', '1.0606521', '56', '15:57:34 608', '117.24644', '31.79554', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.808', '1.0606521', '56', '15:57:34 816', '117.24644', '31.79554', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.257', '1.0606521', '56', '15:57:35 023', '117.24644', '31.79554', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.086', '1.091747', '56', '15:57:35 240', '117.246765', '31.795515', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.123', '1.091747', '56', '15:57:35 460', '117.246765', '31.795515', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.317', '1.091747', '56', '15:57:35 668', '117.246765', '31.795515', '256612352');
INSERT INTO `station_data` VALUES ('03', '40.277', '1.091747', '56', '15:57:35 876', '117.246765', '31.795515', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.764', '1.091747', '56', '15:57:36 087', '117.246765', '31.795515', '256612352');
INSERT INTO `station_data` VALUES ('03', '38.859', '1.1235617', '56', '15:57:36 296', '117.2471', '31.795492', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.669', '1.1235617', '56', '15:57:36 501', '117.2471', '31.795492', '256612352');
INSERT INTO `station_data` VALUES ('03', '40.858', '1.1235617', '56', '15:57:36 715', '117.2471', '31.795492', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.857', '1.1235617', '56', '15:57:36 921', '117.2471', '31.795492', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.38', '1.1235617', '56', '15:57:37 136', '117.2471', '31.795492', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.553', '1.1546461', '56', '15:57:37 350', '117.24743', '31.795473', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.854', '1.1546461', '56', '15:57:37 562', '117.24743', '31.795473', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.298', '1.1546461', '56', '15:57:37 771', '117.24743', '31.795473', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.282', '1.1546461', '56', '15:57:37 984', '117.24743', '31.795473', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.457', '1.1864595', '56', '15:57:38 192', '117.247765', '31.795452', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.038', '1.1864595', '56', '15:57:38 406', '117.247765', '31.795452', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.247', '1.1864595', '56', '15:57:38 621', '117.247765', '31.795452', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.286', '1.1864595', '56', '15:57:38 835', '117.247765', '31.795452', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.183', '1.1864595', '56', '15:57:39 051', '117.247765', '31.795452', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.734', '1.2175408', '56', '15:57:39 265', '117.24809', '31.795435', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.825', '1.2175408', '57', '15:57:39 487', '117.24809', '31.795435', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.92', '1.2175408', '57', '15:57:39 695', '117.24809', '31.795435', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.492', '1.2175408', '57', '15:57:39 909', '117.24809', '31.795435', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.947', '1.2175408', '57', '15:57:40 125', '117.24809', '31.795435', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.478', '1.2486104', '56', '15:57:40 337', '117.24842', '31.795422', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.258', '1.2486104', '56', '15:57:40 549', '117.24842', '31.795422', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.562', '1.2486104', '56', '15:57:40 757', '117.24842', '31.795422', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.923', '1.2486104', '56', '15:57:40 972', '117.24842', '31.795422', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.623', '1.2796678', '56', '15:57:41 184', '117.24875', '31.795412', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.536', '1.2796678', '56', '15:57:41 397', '117.24875', '31.795412', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.041', '1.2796678', '56', '15:57:41 609', '117.24875', '31.795412', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.049', '1.2796678', '56', '15:57:41 816', '117.24875', '31.795412', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.88', '1.2796678', '56', '15:57:42 031', '117.24875', '31.795412', '256612352');
INSERT INTO `station_data` VALUES ('03', '38.195', '1.3107127', '57', '15:57:42 241', '117.24908', '31.795406', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.379', '1.3107127', '57', '15:57:42 448', '117.24908', '31.795406', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.401', '1.3107127', '57', '15:57:42 657', '117.24908', '31.795406', '256612352');
INSERT INTO `station_data` VALUES ('03', '43.304', '1.3107127', '57', '15:57:42 863', '117.24908', '31.795406', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.215', '1.3107127', '56', '15:57:43 079', '117.24908', '31.795406', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.303', '1.3417576', '56', '15:57:43 304', '117.249405', '31.7954', '256612352');
INSERT INTO `station_data` VALUES ('03', '39.959', '1.3417576', '56', '15:57:43 515', '117.249405', '31.7954', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.961', '1.3417576', '56', '15:57:43 727', '117.249405', '31.7954', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.974', '1.3417576', '56', '15:57:43 945', '117.249405', '31.7954', '256612352');
INSERT INTO `station_data` VALUES ('03', '37.875', '1.3417576', '56', '15:57:44 159', '117.249405', '31.7954', '256612352');
INSERT INTO `station_data` VALUES ('03', '39.053', '1.373518', '56', '15:57:44 375', '117.24974', '31.795397', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.189', '1.373518', '56', '15:57:44 584', '117.24974', '31.795397', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.509', '1.373518', '56', '15:57:44 789', '117.24974', '31.795397', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.048', '1.373518', '56', '15:57:45 002', '117.24974', '31.795397', '256612352');
INSERT INTO `station_data` VALUES ('03', '35.628', '1.4045511', '56', '15:57:45 213', '117.25007', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.942', '1.4045511', '56', '15:57:45 424', '117.25007', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '36.682', '1.4045511', '56', '15:57:45 630', '117.25007', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.567', '1.4045511', '56', '15:57:45 843', '117.25007', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '37.177', '1.4045511', '56', '15:57:46 060', '117.25007', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.198', '1.4355786', '56', '15:57:46 274', '117.2504', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '38.142', '1.4355786', '56', '15:57:46 481', '117.2504', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '39.302', '1.4355786', '56', '15:57:46 689', '117.2504', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.451', '1.4355786', '56', '15:57:46 902', '117.2504', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '43.782', '1.4355786', '56', '15:57:47 118', '117.2504', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.499', '1.4666123', '56', '15:57:47 330', '117.250725', '31.795393', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.289', '1.4666123', '56', '15:57:47 536', '117.250725', '31.795393', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.778', '1.4666123', '56', '15:57:47 745', '117.250725', '31.795393', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.462', '1.4666123', '56', '15:57:47 959', '117.250725', '31.795393', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.072', '1.4976463', '54', '15:57:48 169', '117.25105', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.78', '1.4976463', '54', '15:57:48 385', '117.25105', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.54', '1.4976463', '54', '15:57:48 599', '117.25105', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.842', '1.4976463', '54', '15:57:48 807', '117.25105', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.504', '1.4976463', '54', '15:57:49 024', '117.25105', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.523', '1.5272318', '52', '15:57:49 237', '117.251366', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.582', '1.5272318', '52', '15:57:49 449', '117.251366', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.849', '1.5272318', '52', '15:57:49 659', '117.251366', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '57.467', '1.5272318', '52', '15:57:49 870', '117.251366', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '40.887', '1.5272318', '52', '15:57:50 095', '117.251366', '31.795391', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.365', '1.5568068', '52', '15:57:50 313', '117.25168', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.082', '1.5568068', '52', '15:57:50 528', '117.25168', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.056', '1.5568068', '52', '15:57:50 739', '117.25168', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '39.356', '1.5568068', '52', '15:57:50 955', '117.25168', '31.795395', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.448', '1.5871044', '52', '15:57:51 167', '117.252', '31.795399', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.991', '1.5871044', '52', '15:57:51 382', '117.252', '31.795399', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.639', '1.5871044', '52', '15:57:51 596', '117.252', '31.795399', '256612352');
INSERT INTO `station_data` VALUES ('03', '40.859', '1.5871044', '52', '15:57:51 809', '117.252', '31.795399', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.383', '1.5871044', '52', '15:57:52 021', '117.252', '31.795399', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.749', '1.6166811', '52', '15:57:52 231', '117.25231', '31.795403', '256612352');
INSERT INTO `station_data` VALUES ('03', '45.315', '1.6166811', '52', '15:57:52 445', '117.25231', '31.795403', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.932', '1.6166811', '52', '15:57:52 654', '117.25231', '31.795403', '256612352');
INSERT INTO `station_data` VALUES ('03', '54.352', '1.6166811', '52', '15:57:52 865', '117.25231', '31.795403', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.954', '1.6166811', '52', '15:57:53 081', '117.25231', '31.795403', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.068', '1.6476921', '52', '15:57:53 296', '117.25264', '31.79541', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.99', '1.6476921', '52', '15:57:53 502', '117.25264', '31.79541', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.335', '1.6476921', '52', '15:57:53 712', '117.25264', '31.79541', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.201', '1.6476921', '52', '15:57:53 922', '117.25264', '31.79541', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.658', '1.6476921', '52', '15:57:54 143', '117.25264', '31.79541', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.869', '1.6779877', '52', '15:57:54 355', '117.25296', '31.795416', '256612352');
INSERT INTO `station_data` VALUES ('03', '33.004', '1.6779877', '52', '15:57:54 561', '117.25296', '31.795416', '256612352');
INSERT INTO `station_data` VALUES ('03', '38.496', '1.6779877', '52', '15:57:54 771', '117.25296', '31.795416', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.881', '1.6779877', '52', '15:57:54 984', '117.25296', '31.795416', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.032', '1.7089924', '53', '15:57:55 190', '117.25329', '31.795427', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.812', '1.7089924', '53', '15:57:55 395', '117.25329', '31.795427', '256612352');
INSERT INTO `station_data` VALUES ('03', '32.159', '1.7089924', '53', '15:57:55 613', '117.25329', '31.795427', '256612352');
INSERT INTO `station_data` VALUES ('03', '35.058', '1.7089924', '53', '15:57:55 821', '117.25329', '31.795427', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.784', '1.7089924', '53', '15:57:56 032', '117.25329', '31.795427', '256612352');
INSERT INTO `station_data` VALUES ('03', '48.37', '1.7399866', '53', '15:57:56 243', '117.25362', '31.795444', '256612352');
INSERT INTO `station_data` VALUES ('03', '37.263', '1.7399866', '53', '15:57:56 457', '117.25362', '31.795444', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.672', '1.7399866', '52', '15:57:56 678', '117.25362', '31.795444', '256612352');
INSERT INTO `station_data` VALUES ('03', '44.981', '1.7399866', '52', '15:57:56 891', '117.25362', '31.795444', '256612352');
INSERT INTO `station_data` VALUES ('03', '27.966', '1.7399866', '52', '15:57:57 107', '117.25362', '31.795444', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.462', '1.770973', '52', '15:57:57 326', '117.253944', '31.795467', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.994', '1.770973', '52', '15:57:57 532', '117.253944', '31.795467', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.574', '1.770973', '52', '15:57:57 742', '117.253944', '31.795467', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.777', '1.770973', '52', '15:57:57 952', '117.253944', '31.795467', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.954', '1.8019648', '52', '15:57:58 170', '117.25427', '31.79549', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.333', '1.8019648', '52', '15:57:58 382', '117.25427', '31.79549', '256612352');
INSERT INTO `station_data` VALUES ('03', '30.78', '1.8019648', '52', '15:57:58 598', '117.25427', '31.79549', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.318', '1.8019648', '52', '15:57:58 824', '117.25427', '31.79549', '256612352');
INSERT INTO `station_data` VALUES ('03', '28.376', '1.8019648', '52', '15:57:59 033', '117.25427', '31.79549', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.075', '1.8329618', '52', '15:57:59 239', '117.2546', '31.795513', '256612352');
INSERT INTO `station_data` VALUES ('03', '34.447', '1.8329618', '52', '15:57:59 447', '117.2546', '31.795513', '256612352');
INSERT INTO `station_data` VALUES ('03', '40.505', '1.8329618', '52', '15:57:59 654', '117.2546', '31.795513', '256612352');
INSERT INTO `station_data` VALUES ('03', '29.888', '1.8329618', '52', '15:57:59 870', '117.2546', '31.795513', '256612352');
INSERT INTO `station_data` VALUES ('03', '31.966', '1.8639664', '52', '15:58:00 180', '117.25493', '31.795534', '256612352');
INSERT INTO `station_data` VALUES ('03', '43.593', '1.8639664', '51', '15:58:02 723', '117.25493', '31.795534', '256612352');
INSERT INTO `station_data` VALUES ('03', '44.719', '1.8639664', '51', '15:58:02 933', '117.25493', '31.795534', '256612352');
INSERT INTO `station_data` VALUES ('03', '35.63', '1.8639664', '51', '15:58:03 137', '117.25493', '31.795534', '256612352');
INSERT INTO `station_data` VALUES ('03', '127.829', '1.9591689', '51', '15:58:03 341', '117.255936', '31.795597', '256612352');
INSERT INTO `station_data` VALUES ('03', '200.834', '1.9591689', '51', '15:58:03 552', '117.255936', '31.795597', '256612352');
INSERT INTO `station_data` VALUES ('03', '284.026', '1.9591689', '51', '15:58:03 758', '117.255936', '31.795597', '256612352');
INSERT INTO `station_data` VALUES ('03', '334.982', '1.9591689', '51', '15:58:03 964', '117.255936', '31.795597', '256612352');
INSERT INTO `station_data` VALUES ('03', '595.977', '1.9916321', '51', '15:58:04 171', '117.25628', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '708.995', '1.9916321', '51', '15:58:04 381', '117.25628', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '668.386', '1.9916321', '51', '15:58:04 589', '117.25628', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '766.631', '1.9916321', '51', '15:58:04 798', '117.25628', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '667.83', '1.9916321', '51', '15:58:05 005', '117.25628', '31.795618', '256612352');
INSERT INTO `station_data` VALUES ('03', '985.126', '2.0240973', '51', '15:58:05 220', '117.25662', '31.79564', '256612352');
INSERT INTO `station_data` VALUES ('03', '1045.122', '2.0240973', '51', '15:58:05 423', '117.25662', '31.79564', '256612352');
INSERT INTO `station_data` VALUES ('03', '993.885', '2.0240973', '51', '15:58:05 641', '117.25662', '31.79564', '256612352');
INSERT INTO `station_data` VALUES ('03', '1007.09', '2.0240973', '51', '15:58:05 845', '117.25662', '31.79564', '256612352');
INSERT INTO `station_data` VALUES ('03', '939.321', '2.0240973', '51', '15:58:06 056', '117.25662', '31.79564', '256612352');
INSERT INTO `station_data` VALUES ('03', '757.654', '2.0558434', '51', '15:58:06 264', '117.25696', '31.795666', '256612352');
INSERT INTO `station_data` VALUES ('03', '886.316', '2.0558434', '51', '15:58:06 476', '117.25696', '31.795666', '256612352');
INSERT INTO `station_data` VALUES ('03', '839.987', '2.0558434', '51', '15:58:06 823', '117.25696', '31.795666', '256612352');
INSERT INTO `station_data` VALUES ('03', '755.139', '2.0875928', '51', '15:58:07 192', '117.25729', '31.795692', '256612352');
INSERT INTO `station_data` VALUES ('03', '556.645', '2.0875928', '51', '15:58:07 413', '117.25729', '31.795692', '256612352');
INSERT INTO `station_data` VALUES ('03', '591.819', '2.0875928', '51', '15:58:07 628', '117.25729', '31.795692', '256612352');
INSERT INTO `station_data` VALUES ('03', '594.945', '2.0875928', '51', '15:58:07 832', '117.25729', '31.795692', '256612352');
INSERT INTO `station_data` VALUES ('03', '543.238', '2.0875928', '51', '15:58:08 035', '117.25729', '31.795692', '256612352');
INSERT INTO `station_data` VALUES ('03', '544.734', '2.1179028', '51', '15:58:08 237', '117.257614', '31.795721', '256612352');
INSERT INTO `station_data` VALUES ('03', '417.194', '2.1179028', '50', '15:58:08 443', '117.257614', '31.795721', '256612352');
INSERT INTO `station_data` VALUES ('03', '518.83', '2.1179028', '50', '15:58:08 651', '117.257614', '31.795721', '256612352');
INSERT INTO `station_data` VALUES ('03', '734.216', '2.1179028', '51', '15:58:08 860', '117.257614', '31.795721', '256612352');
INSERT INTO `station_data` VALUES ('03', '1083.112', '2.1179028', '51', '15:58:09 073', '117.257614', '31.795721', '256612352');
INSERT INTO `station_data` VALUES ('03', '1266.479', '2.1489395', '51', '15:58:09 279', '117.25794', '31.795748', '256612352');
INSERT INTO `station_data` VALUES ('03', '1069.995', '2.1489395', '51', '15:58:09 495', '117.25794', '31.795748', '256612352');
INSERT INTO `station_data` VALUES ('03', '1041.003', '2.1489395', '51', '15:58:09 700', '117.25794', '31.795748', '256612352');
INSERT INTO `station_data` VALUES ('03', '856.089', '2.1489395', '51', '15:58:09 909', '117.25794', '31.795748', '256612352');
INSERT INTO `station_data` VALUES ('03', '419.45', '1.0010298', '51', '15:58:10 756', '117.25826', '31.795778', '256612608');
INSERT INTO `station_data` VALUES ('03', '420.324', '1.0010298', '51', '15:58:10 963', '117.25826', '31.795778', '256612608');
INSERT INTO `station_data` VALUES ('03', '427.719', '1.0010298', '51', '15:58:11 168', '117.25826', '31.795778', '256612608');
INSERT INTO `station_data` VALUES ('03', '489.355', '1.030732', '51', '15:58:11 380', '117.258575', '31.79581', '256612608');
INSERT INTO `station_data` VALUES ('03', '562.315', '1.030732', '51', '15:58:11 583', '117.258575', '31.79581', '256612608');
INSERT INTO `station_data` VALUES ('03', '649.466', '1.030732', '51', '15:58:11 791', '117.258575', '31.79581', '256612608');
INSERT INTO `station_data` VALUES ('03', '717.117', '1.030732', '51', '15:58:11 996', '117.258575', '31.79581', '256612608');
INSERT INTO `station_data` VALUES ('03', '700.759', '1.0597111', '51', '15:58:12 211', '117.25888', '31.795841', '256612608');
INSERT INTO `station_data` VALUES ('03', '620.494', '1.0597111', '51', '15:58:12 420', '117.25888', '31.795841', '256612608');
INSERT INTO `station_data` VALUES ('03', '692.979', '1.0597111', '51', '15:58:12 628', '117.25888', '31.795841', '256612608');
INSERT INTO `station_data` VALUES ('03', '737.335', '1.0597111', '51', '15:58:12 836', '117.25888', '31.795841', '256612608');
INSERT INTO `station_data` VALUES ('03', '582.114', '1.0597111', '51', '15:58:13 041', '117.25888', '31.795841', '256612608');
INSERT INTO `station_data` VALUES ('03', '671.092', '1.087991', '51', '15:58:13 246', '117.25918', '31.795876', '256612608');
INSERT INTO `station_data` VALUES ('03', '762.417', '1.087991', '51', '15:58:13 456', '117.25918', '31.795876', '256612608');
INSERT INTO `station_data` VALUES ('03', '718.007', '1.087991', '51', '15:58:13 662', '117.25918', '31.795876', '256612608');
INSERT INTO `station_data` VALUES ('03', '709.498', '1.087991', '51', '15:58:13 872', '117.25918', '31.795876', '256612608');
INSERT INTO `station_data` VALUES ('03', '789.899', '1.087991', '51', '15:58:14 084', '117.25918', '31.795876', '256612608');
INSERT INTO `station_data` VALUES ('03', '794.356', '1.1177199', '51', '15:58:14 294', '117.25949', '31.79591', '256612608');
INSERT INTO `station_data` VALUES ('03', '683.363', '1.1177199', '49', '15:58:14 503', '117.25949', '31.79591', '256612608');
INSERT INTO `station_data` VALUES ('03', '727.339', '1.1177199', '49', '15:58:14 707', '117.25949', '31.79591', '256612608');
INSERT INTO `station_data` VALUES ('03', '611.871', '1.1177199', '49', '15:58:14 913', '117.25949', '31.79591', '256612608');
INSERT INTO `station_data` VALUES ('03', '544.262', '1.1177199', '49', '15:58:15 119', '117.25949', '31.79591', '256612608');
INSERT INTO `station_data` VALUES ('03', '596.592', '1.1467145', '49', '15:58:15 326', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '565.819', '1.1467145', '49', '15:58:15 557', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '623.001', '1.1467145', '49', '15:58:15 764', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '620.187', '1.1467145', '49', '15:58:15 971', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '500.044', '1.1467145', '49', '15:58:16 198', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '499.83', '1.1467145', '49', '15:58:16 415', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '499.479', '1.1467145', '49', '15:58:16 622', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '644.415', '1.1467145', '49', '15:58:16 864', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '757.419', '1.1467145', '49', '15:58:17 068', '117.259796', '31.79594', '256612608');
INSERT INTO `station_data` VALUES ('03', '869.519', '1.2061877', '49', '15:58:17 279', '117.26042', '31.796007', '256612608');
INSERT INTO `station_data` VALUES ('03', '1043.852', '1.2061877', '49', '15:58:17 488', '117.26042', '31.796007', '256612608');
INSERT INTO `station_data` VALUES ('03', '1437.351', '1.2061877', '49', '15:58:17 708', '117.26042', '31.796007', '256612608');
INSERT INTO `station_data` VALUES ('03', '545.533', '1.3253024', '66', '15:58:21 971', '117.26167', '31.79616', '256612608');
INSERT INTO `station_data` VALUES ('03', '376.326', '1.354424', '66', '15:58:22 181', '117.26198', '31.796206', '256612608');
INSERT INTO `station_data` VALUES ('03', '177.073', '1.354424', '66', '15:58:22 396', '117.26198', '31.796206', '256612608');
INSERT INTO `station_data` VALUES ('03', '443.634', '2.1436972', '66', '15:58:22 619', '117.26198', '31.796206', '139018117');
INSERT INTO `station_data` VALUES ('03', '355.058', '2.1436972', '66', '15:58:22 825', '117.26198', '31.796206', '139018117');
INSERT INTO `station_data` VALUES ('03', '167.11', '2.1436972', '66', '15:58:23 033', '117.26198', '31.796206', '139018117');
INSERT INTO `station_data` VALUES ('03', '104.735', '1.4383067', '45', '15:58:26 027', '117.262856', '31.796352', '256612608');
INSERT INTO `station_data` VALUES ('03', '36.909', '1.4653309', '45', '15:58:26 236', '117.26314', '31.796402', '256612608');
INSERT INTO `station_data` VALUES ('03', '40.114', '1.4653309', '45', '15:58:26 443', '117.26314', '31.796402', '256612608');
INSERT INTO `station_data` VALUES ('03', '27.652', '1.4653309', '45', '15:58:26 652', '117.26314', '31.796402', '256612608');
INSERT INTO `station_data` VALUES ('03', '30.644', '1.4653309', '45', '15:58:26 866', '117.26314', '31.796402', '256612608');
INSERT INTO `station_data` VALUES ('03', '32.299', '1.4653309', '45', '15:58:27 075', '117.26314', '31.796402', '256612608');
INSERT INTO `station_data` VALUES ('03', '39.086', '1.4923794', '45', '15:58:27 281', '117.26342', '31.796453', '256612608');
INSERT INTO `station_data` VALUES ('03', '29.339', '1.4923794', '45', '15:58:27 491', '117.26342', '31.796453', '256612608');
INSERT INTO `station_data` VALUES ('03', '31.75', '1.4923794', '45', '15:58:27 699', '117.26342', '31.796453', '256612608');
INSERT INTO `station_data` VALUES ('03', '67.236', '1.4923794', '45', '15:58:27 931', '117.26342', '31.796453', '256612608');
INSERT INTO `station_data` VALUES ('03', '30.018', '1.4923794', '45', '15:58:28 139', '117.26342', '31.796453', '256612608');
INSERT INTO `station_data` VALUES ('03', '32.149', '1.5187178', '45', '15:58:28 347', '117.263695', '31.796505', '256612608');
INSERT INTO `station_data` VALUES ('03', '32.03', '1.5187178', '62', '15:58:28 580', '117.263695', '31.796505', '256612608');
INSERT INTO `station_data` VALUES ('03', '28.597', '1.5187178', '62', '15:58:28 791', '117.263695', '31.796505', '256612608');
INSERT INTO `station_data` VALUES ('03', '35.916', '1.5187178', '62', '15:58:28 998', '117.263695', '31.796505', '256612608');
INSERT INTO `station_data` VALUES ('03', '35.348', '1.545049', '62', '15:58:29 209', '117.26397', '31.796555', '256612608');
INSERT INTO `station_data` VALUES ('03', '59.761', '1.545049', '62', '15:58:29 419', '117.26397', '31.796555', '256612608');
INSERT INTO `station_data` VALUES ('03', '29.964', '1.545049', '62', '15:58:29 635', '117.26397', '31.796555', '256612608');
INSERT INTO `station_data` VALUES ('03', '43.841', '1.545049', '62', '15:58:29 843', '117.26397', '31.796555', '256612608');
INSERT INTO `station_data` VALUES ('03', '39.962', '1.545049', '62', '15:58:30 059', '117.26397', '31.796555', '256612608');
INSERT INTO `station_data` VALUES ('03', '47.394', '1.5714389', '62', '15:58:30 272', '117.264244', '31.79661', '256612608');
INSERT INTO `station_data` VALUES ('03', '38.732', '1.5714389', '62', '15:58:30 482', '117.264244', '31.79661', '256612608');
INSERT INTO `station_data` VALUES ('03', '32.604', '1.5714389', '62', '15:58:30 689', '117.264244', '31.79661', '256612608');
INSERT INTO `station_data` VALUES ('03', '54.198', '1.5714389', '49', '15:58:30 901', '117.264244', '31.79661', '256612608');
INSERT INTO `station_data` VALUES ('03', '35.168', '1.5714389', '49', '15:58:31 119', '117.264244', '31.79661', '256612608');
INSERT INTO `station_data` VALUES ('03', '202.432', '1.5978392', '49', '15:58:31 336', '117.26452', '31.796665', '256612608');
INSERT INTO `station_data` VALUES ('03', '271.651', '1.5978392', '49', '15:58:31 547', '117.26452', '31.796665', '256612608');
INSERT INTO `station_data` VALUES ('03', '512.94', '1.5978392', '49', '15:58:31 756', '117.26452', '31.796665', '256612608');
INSERT INTO `station_data` VALUES ('03', '1092.17', '1.5978392', '49', '15:58:31 979', '117.26452', '31.796665', '256612608');
INSERT INTO `station_data` VALUES ('03', '2143.52', '1.6242676', '49', '15:58:32 197', '117.26479', '31.796722', '256612608');
INSERT INTO `station_data` VALUES ('03', '3115.977', '1.6242676', '49', '15:58:32 406', '117.26479', '31.796722', '256612608');
INSERT INTO `station_data` VALUES ('03', '3201.13', '1.6242676', '49', '15:58:32 615', '117.26479', '31.796722', '256612608');
INSERT INTO `station_data` VALUES ('03', '3642.025', '1.6242676', '49', '15:58:32 821', '117.26479', '31.796722', '256612608');
INSERT INTO `station_data` VALUES ('03', '3819.19', '1.6242676', '49', '15:58:33 027', '117.26479', '31.796722', '256612608');
INSERT INTO `station_data` VALUES ('03', '3947.771', '1.651407', '49', '15:58:33 235', '117.265076', '31.796778', '256612608');
INSERT INTO `station_data` VALUES ('03', '3661.106', '1.651407', '49', '15:58:33 571', '117.265076', '31.796778', '256612608');
INSERT INTO `station_data` VALUES ('03', '3447.23', '1.651407', '49', '15:58:33 780', '117.265076', '31.796778', '256612608');
INSERT INTO `station_data` VALUES ('03', '3242.956', '1.651407', '49', '15:58:33 987', '117.265076', '31.796778', '256612608');
INSERT INTO `station_data` VALUES ('03', '3622.008', '1.6785741', '49', '15:58:34 196', '117.26536', '31.796835', '256612608');
INSERT INTO `station_data` VALUES ('03', '3468.401', '1.6785741', '49', '15:58:34 407', '117.26536', '31.796835', '256612608');
INSERT INTO `station_data` VALUES ('03', '3305.926', '1.6785741', '59', '15:58:34 616', '117.26536', '31.796835', '256612608');
INSERT INTO `station_data` VALUES ('03', '3115.781', '1.6785741', '59', '15:58:34 823', '117.26536', '31.796835', '256612608');
INSERT INTO `station_data` VALUES ('03', '2956.76', '1.6785741', '59', '15:58:35 031', '117.26536', '31.796835', '256612608');
INSERT INTO `station_data` VALUES ('03', '2750.747', '1.7064693', '59', '15:58:35 246', '117.26565', '31.796892', '256612608');
INSERT INTO `station_data` VALUES ('03', '2543.2', '1.7064693', '59', '15:58:35 451', '117.26565', '31.796892', '256612608');
INSERT INTO `station_data` VALUES ('03', '2331.128', '1.7064693', '59', '15:58:35 665', '117.26565', '31.796892', '256612608');
INSERT INTO `station_data` VALUES ('03', '2115.953', '1.7064693', '59', '15:58:35 880', '117.26565', '31.796892', '256612608');
INSERT INTO `station_data` VALUES ('03', '1898.368', '1.7064693', '59', '15:58:36 100', '117.26565', '31.796892', '256612608');
INSERT INTO `station_data` VALUES ('03', '2152.416', '1.7343331', '59', '15:58:36 312', '117.26594', '31.796946', '256612608');
INSERT INTO `station_data` VALUES ('03', '2033.382', '1.7343331', '59', '15:58:36 518', '117.26594', '31.796946', '256612608');
INSERT INTO `station_data` VALUES ('03', '1825.119', '1.7343331', '59', '15:58:36 725', '117.26594', '31.796946', '256612608');
INSERT INTO `station_data` VALUES ('03', '1632.485', '1.7343331', '59', '15:58:36 934', '117.26594', '31.796946', '256612608');
INSERT INTO `station_data` VALUES ('03', '1444.198', '1.7343331', '59', '15:58:37 144', '117.26594', '31.796946', '256612608');
INSERT INTO `station_data` VALUES ('03', '1231.825', '1.7629421', '59', '15:58:37 357', '117.266235', '31.797', '256612608');
INSERT INTO `station_data` VALUES ('03', '1462.036', '1.7629421', '59', '15:58:37 562', '117.266235', '31.797', '256612608');
INSERT INTO `station_data` VALUES ('03', '1258.091', '1.7629421', '59', '15:58:37 768', '117.266235', '31.797', '256612608');
INSERT INTO `station_data` VALUES ('03', '1048.662', '1.7629421', '59', '15:58:37 975', '117.266235', '31.797', '256612608');
INSERT INTO `station_data` VALUES ('03', '1541.379', '1.7916619', '59', '15:58:38 181', '117.26653', '31.797066', '256612608');
INSERT INTO `station_data` VALUES ('03', '1326.497', '1.7916619', '59', '15:58:38 396', '117.26653', '31.797066', '256612608');
INSERT INTO `station_data` VALUES ('03', '1093.746', '1.7916619', '59', '15:58:38 624', '117.26653', '31.797066', '256612608');
INSERT INTO `station_data` VALUES ('03', '1428.669', '1.7916619', '59', '15:58:38 841', '117.26653', '31.797066', '256612608');
INSERT INTO `station_data` VALUES ('03', '1226.228', '1.7916619', '59', '15:58:39 048', '117.26653', '31.797066', '256612608');
INSERT INTO `station_data` VALUES ('03', '1019.598', '1.8218504', '59', '15:58:39 254', '117.266846', '31.797132', '256612608');
INSERT INTO `station_data` VALUES ('03', '1223.149', '1.8218504', '59', '15:58:39 461', '117.266846', '31.797132', '256612608');
INSERT INTO `station_data` VALUES ('03', '1050.757', '1.8218504', '49', '15:58:39 670', '117.266846', '31.797132', '256612608');
INSERT INTO `station_data` VALUES ('03', '839.37', '1.8218504', '49', '15:58:39 881', '117.266846', '31.797132', '256612608');
INSERT INTO `station_data` VALUES ('03', '966.881', '1.8218504', '49', '15:58:40 093', '117.266846', '31.797132', '256612608');
INSERT INTO `station_data` VALUES ('03', '849.085', '1.8513095', '49', '15:58:40 312', '117.26715', '31.797197', '256612608');
INSERT INTO `station_data` VALUES ('03', '1128.119', '1.8513095', '49', '15:58:40 522', '117.26715', '31.797197', '256612608');
INSERT INTO `station_data` VALUES ('03', '1053.083', '1.8513095', '54', '15:58:40 728', '117.26715', '31.797197', '256612608');
INSERT INTO `station_data` VALUES ('03', '1178.187', '1.8513095', '54', '15:58:40 936', '117.26715', '31.797197', '256612608');
INSERT INTO `station_data` VALUES ('03', '1155.257', '1.8513095', '54', '15:58:41 142', '117.26715', '31.797197', '256612608');
INSERT INTO `station_data` VALUES ('03', '1137.159', '1.8815184', '54', '15:58:41 351', '117.26746', '31.797264', '256612608');
INSERT INTO `station_data` VALUES ('03', '964.563', '1.8815184', '54', '15:58:41 565', '117.26746', '31.797264', '256612608');
INSERT INTO `station_data` VALUES ('03', '942.297', '1.8815184', '54', '15:58:41 779', '117.26746', '31.797264', '256612608');
INSERT INTO `station_data` VALUES ('03', '912.8', '1.8815184', '54', '15:58:41 996', '117.26746', '31.797264', '256612608');
INSERT INTO `station_data` VALUES ('03', '897.502', '1.9103016', '54', '15:58:42 203', '117.26776', '31.79733', '256612608');
INSERT INTO `station_data` VALUES ('03', '865.338', '1.9103016', '54', '15:58:42 412', '117.26776', '31.79733', '256612608');
INSERT INTO `station_data` VALUES ('03', '887.764', '1.9103016', '54', '15:58:42 617', '117.26776', '31.79733', '256612608');
INSERT INTO `station_data` VALUES ('03', '749.348', '1.9103016', '54', '15:58:42 823', '117.26776', '31.79733', '256612608');
INSERT INTO `station_data` VALUES ('03', '859.866', '1.9103016', '54', '15:58:43 027', '117.26776', '31.79733', '256612608');
INSERT INTO `station_data` VALUES ('03', '747.499', '1.9398589', '54', '15:58:43 232', '117.26807', '31.797401', '256612608');
INSERT INTO `station_data` VALUES ('03', '896.766', '1.9398589', '54', '15:58:43 442', '117.26807', '31.797401', '256612608');
INSERT INTO `station_data` VALUES ('03', '729.066', '2.0251853', '54', '15:58:43 648', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '972.068', '2.0251853', '54', '15:58:43 856', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '771.596', '2.0251853', '54', '15:58:44 062', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '715.138', '2.0251853', '54', '15:58:44 269', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '606.558', '2.0251853', '54', '15:58:44 474', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '799.33', '2.0251853', '54', '15:58:44 681', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '785.245', '2.0251853', '54', '15:58:44 886', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '713.811', '2.0251853', '54', '15:58:45 096', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '965.697', '2.0251853', '54', '15:58:45 303', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '828.736', '2.0251853', '54', '15:58:45 515', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '964.576', '2.0251853', '49', '15:58:45 726', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '1027.174', '2.0251853', '49', '15:58:45 932', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '815.363', '2.0251853', '49', '15:58:46 148', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '685.268', '2.0251853', '49', '15:58:46 363', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '922.666', '2.0251853', '52', '15:58:46 567', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '1033.741', '2.0251853', '52', '15:58:46 773', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '960.177', '2.0251853', '52', '15:58:46 982', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '1003.977', '2.0251853', '52', '15:58:47 199', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '940.08', '2.0251853', '52', '15:58:47 413', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '943.973', '2.0251853', '52', '15:58:47 618', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '928.537', '2.0251853', '52', '15:58:47 824', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '767.907', '2.0251853', '52', '15:58:48 038', '117.26894', '31.797626', '256612608');
INSERT INTO `station_data` VALUES ('03', '1119.54', '2.0795149', '52', '15:58:48 246', '117.2695', '31.797777', '256612608');
INSERT INTO `station_data` VALUES ('03', '1316.091', '2.0795149', '52', '15:58:48 454', '117.2695', '31.797777', '256612608');
INSERT INTO `station_data` VALUES ('03', '1170.299', '2.0795149', '52', '15:58:48 659', '117.2695', '31.797777', '256612608');
INSERT INTO `station_data` VALUES ('03', '963.509', '2.0795149', '52', '15:58:48 864', '117.2695', '31.797777', '256612608');
INSERT INTO `station_data` VALUES ('03', '1158.274', '2.0795149', '52', '15:58:49 068', '117.2695', '31.797777', '256612608');
INSERT INTO `station_data` VALUES ('03', '958.39', '2.1049214', '52', '15:58:49 273', '117.26976', '31.797853', '256612608');
INSERT INTO `station_data` VALUES ('03', '1116.087', '2.1049214', '52', '15:58:49 479', '117.26976', '31.797853', '256612608');
INSERT INTO `station_data` VALUES ('03', '1070.6', '2.1049214', '52', '15:58:49 684', '117.26976', '31.797853', '256612608');
INSERT INTO `station_data` VALUES ('03', '867.101', '2.1049214', '52', '15:58:49 890', '117.26976', '31.797853', '256612608');
INSERT INTO `station_data` VALUES ('03', '1589.875', '2.1049214', '52', '15:58:50 096', '117.26976', '31.797853', '256612608');
INSERT INTO `station_data` VALUES ('03', '1397.347', '2.1302873', '52', '15:58:50 302', '117.27002', '31.797926', '256612608');
INSERT INTO `station_data` VALUES ('03', '2016.833', '2.1302873', '52', '15:58:50 508', '117.27002', '31.797926', '256612608');
INSERT INTO `station_data` VALUES ('03', '1853.631', '2.1302873', '52', '15:58:50 716', '117.27002', '31.797926', '256612608');
INSERT INTO `station_data` VALUES ('03', '1640.947', '2.1302873', '52', '15:58:50 926', '117.27002', '31.797926', '256612608');
INSERT INTO `station_data` VALUES ('03', '2607.076', '2.1302873', '52', '15:58:51 133', '117.27002', '31.797926', '256612608');
INSERT INTO `station_data` VALUES ('03', '3490.035', '2.1557195', '52', '15:58:51 342', '117.27028', '31.798002', '256612608');
INSERT INTO `station_data` VALUES ('03', '3278.503', '2.1557195', '52', '15:58:51 549', '117.27028', '31.798002', '256612608');
INSERT INTO `station_data` VALUES ('03', '3075.94', '2.1557195', '47', '15:58:51 754', '117.27028', '31.798002', '256612608');
INSERT INTO `station_data` VALUES ('03', '5540.318', '2.1557195', '47', '15:58:51 965', '117.27028', '31.798002', '256612608');
INSERT INTO `station_data` VALUES ('03', '6440.485', '2.1812207', '47', '15:58:52 178', '117.27054', '31.798082', '256612608');
INSERT INTO `station_data` VALUES ('03', '6237.722', '2.1812207', '47', '15:58:52 385', '117.27054', '31.798082', '256612608');
INSERT INTO `station_data` VALUES ('03', '6026.141', '2.1812207', '51', '15:58:52 594', '117.27054', '31.798082', '256612608');
INSERT INTO `station_data` VALUES ('03', '6604.299', '2.1812207', '51', '15:58:52 798', '117.27054', '31.798082', '256612608');
INSERT INTO `station_data` VALUES ('03', '6397.911', '2.1812207', '51', '15:58:53 003', '117.27054', '31.798082', '256612608');
INSERT INTO `station_data` VALUES ('03', '6215.334', '2.2081092', '51', '15:58:53 212', '117.27081', '31.798159', '256612608');
INSERT INTO `station_data` VALUES ('03', '5995.491', '2.2081092', '51', '15:58:53 436', '117.27081', '31.798159', '256612608');
INSERT INTO `station_data` VALUES ('03', '5781.306', '2.2081092', '51', '15:58:53 643', '117.27081', '31.798159', '256612608');
INSERT INTO `station_data` VALUES ('03', '5580.819', '2.2081092', '51', '15:58:53 851', '117.27081', '31.798159', '256612608');
INSERT INTO `station_data` VALUES ('03', '5370.496', '2.2081092', '51', '15:58:54 058', '117.27081', '31.798159', '256612608');
INSERT INTO `station_data` VALUES ('03', '5138.019', '2.2356654', '51', '15:58:54 296', '117.271095', '31.798231', '256612608');
INSERT INTO `station_data` VALUES ('03', '4929.051', '2.2356654', '51', '15:58:54 500', '117.271095', '31.798231', '256612608');
INSERT INTO `station_data` VALUES ('03', '4725.05', '2.2356654', '51', '15:58:54 706', '117.271095', '31.798231', '256612608');
INSERT INTO `station_data` VALUES ('03', '4519.269', '2.2356654', '51', '15:58:54 912', '117.271095', '31.798231', '256612608');
INSERT INTO `station_data` VALUES ('03', '4317.683', '2.2356654', '51', '15:58:55 118', '117.271095', '31.798231', '256612608');
INSERT INTO `station_data` VALUES ('03', '4110.991', '2.2646009', '51', '15:58:55 327', '117.27139', '31.7983', '256612608');
INSERT INTO `station_data` VALUES ('03', '4463.825', '2.2646009', '51', '15:58:55 531', '117.27139', '31.7983', '256612608');
INSERT INTO `station_data` VALUES ('03', '4257.126', '2.2646009', '51', '15:58:55 737', '117.27139', '31.7983', '256612608');
INSERT INTO `station_data` VALUES ('03', '4046.325', '2.2646009', '51', '15:58:55 946', '117.27139', '31.7983', '256612608');
INSERT INTO `station_data` VALUES ('03', '3837.186', '2.294257', '51', '15:58:56 160', '117.2717', '31.798368', '256612608');
INSERT INTO `station_data` VALUES ('03', '3630.126', '2.294257', '51', '15:58:56 369', '117.2717', '31.798368', '256612608');
INSERT INTO `station_data` VALUES ('03', '3420.837', '2.294257', '51', '15:58:56 575', '117.2717', '31.798368', '256612608');
INSERT INTO `station_data` VALUES ('03', '3216.493', '2.294257', '51', '15:58:56 783', '117.2717', '31.798368', '256612608');
INSERT INTO `station_data` VALUES ('03', '3003.812', '2.294257', '51', '15:58:56 992', '117.2717', '31.798368', '256612608');
INSERT INTO `station_data` VALUES ('03', '2794.646', '2.3239185', '51', '15:58:57 205', '117.272', '31.798437', '256612608');
INSERT INTO `station_data` VALUES ('03', '2590.196', '2.3239185', '51', '15:58:57 411', '117.272', '31.798437', '256612608');
INSERT INTO `station_data` VALUES ('03', '2382.563', '2.3239185', '51', '15:58:57 617', '117.272', '31.798437', '256612608');
INSERT INTO `station_data` VALUES ('03', '2168.997', '2.3239185', '51', '15:58:57 825', '117.272', '31.798437', '256612608');
INSERT INTO `station_data` VALUES ('03', '1962.907', '2.3239185', '51', '15:58:58 033', '117.272', '31.798437', '256612608');
INSERT INTO `station_data` VALUES ('03', '1759.739', '2.3550748', '51', '15:58:58 241', '117.27232', '31.79851', '256612608');
INSERT INTO `station_data` VALUES ('03', '1546.69', '2.3550748', '51', '15:58:58 446', '117.27232', '31.79851', '256612608');
INSERT INTO `station_data` VALUES ('03', '1342.292', '2.3550748', '46', '15:58:58 659', '117.27232', '31.79851', '256612608');
INSERT INTO `station_data` VALUES ('03', '1472.853', '0.987869', '47', '15:58:58 868', '117.27232', '31.79851', '256612865');
INSERT INTO `station_data` VALUES ('03', '1259.997', '0.987869', '47', '15:58:59 071', '117.27232', '31.79851', '256612865');
INSERT INTO `station_data` VALUES ('03', '1048.83', '1.0163321', '47', '15:58:59 284', '117.272644', '31.798584', '256612865');
INSERT INTO `station_data` VALUES ('03', '826.418', '1.0163321', '47', '15:58:59 511', '117.272644', '31.798584', '256612865');
INSERT INTO `station_data` VALUES ('03', '980.24', '1.0163321', '47', '15:58:59 723', '117.272644', '31.798584', '256612865');
INSERT INTO `station_data` VALUES ('03', '770.56', '1.0163321', '47', '15:58:59 937', '117.272644', '31.798584', '256612865');
INSERT INTO `station_data` VALUES ('03', '886.072', '1.0457106', '47', '15:59:00 204', '117.27297', '31.798656', '256612865');
INSERT INTO `station_data` VALUES ('03', '951.262', '1.0457106', '47', '15:59:00 418', '117.27297', '31.798656', '256612865');
INSERT INTO `station_data` VALUES ('03', '735.09', '1.0457106', '47', '15:59:00 630', '117.27297', '31.798656', '256612865');
INSERT INTO `station_data` VALUES ('03', '747.94', '1.0457106', '47', '15:59:00 837', '117.27297', '31.798656', '256612865');
INSERT INTO `station_data` VALUES ('03', '544.994', '1.0457106', '47', '15:59:01 041', '117.27297', '31.798656', '256612865');
INSERT INTO `station_data` VALUES ('03', '554.879', '1.0745281', '47', '15:59:01 259', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '518.297', '1.0745281', '47', '15:59:01 469', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '509.338', '1.0745281', '47', '15:59:01 688', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '352.98', '1.0745281', '47', '15:59:01 941', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '191.343', '1.0745281', '47', '15:59:02 172', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '138.689', '1.0745281', '47', '15:59:02 379', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '107.832', '1.0745281', '47', '15:59:02 592', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '183.398', '1.0745281', '47', '15:59:02 824', '117.27329', '31.798729', '256612865');
INSERT INTO `station_data` VALUES ('03', '63.439', '1.1326208', '47', '15:59:03 406', '117.27393', '31.79887', '256612865');
INSERT INTO `station_data` VALUES ('03', '92.817', '1.1326208', '47', '15:59:03 688', '117.27393', '31.79887', '256612865');
INSERT INTO `station_data` VALUES ('03', '36.529', '1.1326208', '47', '15:59:03 902', '117.27393', '31.79887', '256612865');
INSERT INTO `station_data` VALUES ('03', '96.624', '1.1326208', '47', '15:59:04 111', '117.27393', '31.79887', '256612865');
INSERT INTO `station_data` VALUES ('03', '48.486', '1.1611498', '47', '15:59:04 318', '117.27425', '31.798939', '256612865');
INSERT INTO `station_data` VALUES ('03', '48.032', '1.1611498', '47', '15:59:04 546', '117.27425', '31.798939', '256612865');
INSERT INTO `station_data` VALUES ('03', '53.864', '1.1611498', '59', '15:59:04 754', '117.27425', '31.798939', '256612865');
INSERT INTO `station_data` VALUES ('03', '45.226', '1.1611498', '59', '15:59:04 963', '117.27425', '31.798939', '256612865');
INSERT INTO `station_data` VALUES ('03', '59.197', '1.1611498', '55', '15:59:05 176', '117.27425', '31.798939', '256612865');
INSERT INTO `station_data` VALUES ('03', '112.673', '1.1890831', '55', '15:59:05 383', '117.27455', '31.799006', '256612865');
INSERT INTO `station_data` VALUES ('03', '43.665', '1.1890831', '55', '15:59:05 605', '117.27455', '31.799006', '256612865');
INSERT INTO `station_data` VALUES ('03', '64.035', '1.1890831', '55', '15:59:05 814', '117.27455', '31.799006', '256612865');
INSERT INTO `station_data` VALUES ('03', '56.017', '1.1890831', '55', '15:59:06 018', '117.27455', '31.799006', '256612865');
INSERT INTO `station_data` VALUES ('03', '71.078', '1.2178244', '55', '15:59:06 224', '117.274864', '31.799072', '256612865');
INSERT INTO `station_data` VALUES ('03', '33.34', '1.2178244', '55', '15:59:06 431', '117.274864', '31.799072', '256612865');
INSERT INTO `station_data` VALUES ('03', '40.486', '1.2178244', '55', '15:59:06 664', '117.274864', '31.799072', '256612865');
INSERT INTO `station_data` VALUES ('03', '51.563', '1.2178244', '55', '15:59:06 876', '117.274864', '31.799072', '256612865');
INSERT INTO `station_data` VALUES ('03', '44.375', '1.2178244', '55', '15:59:07 085', '117.274864', '31.799072', '256612865');
INSERT INTO `station_data` VALUES ('03', '72.49', '1.2452291', '55', '15:59:07 292', '117.27516', '31.799137', '256612865');
INSERT INTO `station_data` VALUES ('03', '37.267', '1.2452291', '55', '15:59:07 544', '117.27516', '31.799137', '256612865');
INSERT INTO `station_data` VALUES ('03', '49.968', '1.2452291', '55', '15:59:07 767', '117.27516', '31.799137', '256612865');
INSERT INTO `station_data` VALUES ('03', '65.237', '1.2452291', '55', '15:59:07 977', '117.27516', '31.799137', '256612865');
INSERT INTO `station_data` VALUES ('03', '36.63', '1.2452291', '55', '15:59:08 190', '117.27516', '31.799137', '256612865');
INSERT INTO `station_data` VALUES ('03', '27.863', '1.2734271', '55', '15:59:08 398', '117.27547', '31.799202', '256612865');
INSERT INTO `station_data` VALUES ('03', '65.494', '1.2734271', '55', '15:59:08 607', '117.27547', '31.799202', '256612865');
INSERT INTO `station_data` VALUES ('03', '30.798', '1.2734271', '55', '15:59:08 853', '117.27547', '31.799202', '256612865');
INSERT INTO `station_data` VALUES ('03', '41.588', '1.2734271', '55', '15:59:09 060', '117.27547', '31.799202', '256612865');
INSERT INTO `station_data` VALUES ('03', '30.989', '1.3016946', '55', '15:59:09 267', '117.27577', '31.799267', '256612865');
INSERT INTO `station_data` VALUES ('03', '30.239', '1.3016946', '55', '15:59:09 490', '117.27577', '31.799267', '256612865');
INSERT INTO `station_data` VALUES ('03', '59.745', '1.3016946', '55', '15:59:09 700', '117.27577', '31.799267', '256612865');
INSERT INTO `station_data` VALUES ('03', '39.273', '1.3016946', '55', '15:59:09 911', '117.27577', '31.799267', '256612865');
INSERT INTO `station_data` VALUES ('03', '30.265', '1.3016946', '55', '15:59:10 121', '117.27577', '31.799267', '256612865');
INSERT INTO `station_data` VALUES ('03', '40.786', '1.3300272', '55', '15:59:10 330', '117.27608', '31.799332', '256612865');
INSERT INTO `station_data` VALUES ('03', '41.337', '1.3300272', '55', '15:59:10 544', '117.27608', '31.799332', '256612865');
INSERT INTO `station_data` VALUES ('03', '72.477', '1.3300272', '55', '15:59:10 749', '117.27608', '31.799332', '256612865');
INSERT INTO `station_data` VALUES ('03', '45.923', '1.3300272', '55', '15:59:10 958', '117.27608', '31.799332', '256612865');
INSERT INTO `station_data` VALUES ('03', '59.548', '1.3300272', '55', '15:59:11 166', '117.27608', '31.799332', '256612865');
INSERT INTO `station_data` VALUES ('03', '28.991', '1.3598505', '55', '15:59:11 391', '117.2764', '31.799398', '256612865');
INSERT INTO `station_data` VALUES ('03', '32.411', '1.3598505', '55', '15:59:11 610', '117.2764', '31.799398', '256612865');
INSERT INTO `station_data` VALUES ('03', '31.015', '1.3598505', '55', '15:59:11 830', '117.2764', '31.799398', '256612865');
INSERT INTO `station_data` VALUES ('03', '55.898', '1.3598505', '55', '15:59:12 042', '117.2764', '31.799398', '256612865');
INSERT INTO `station_data` VALUES ('03', '30.567', '1.3897347', '55', '15:59:12 258', '117.27672', '31.799465', '256612865');
INSERT INTO `station_data` VALUES ('03', '31.816', '1.3897347', '55', '15:59:12 495', '117.27672', '31.799465', '256612865');
INSERT INTO `station_data` VALUES ('03', '41.114', '1.3897347', '55', '15:59:12 719', '117.27672', '31.799465', '256612865');
INSERT INTO `station_data` VALUES ('03', '63.664', '1.3897347', '58', '15:59:12 928', '117.27672', '31.799465', '256612865');
INSERT INTO `station_data` VALUES ('03', '49.476', '1.3897347', '58', '15:59:13 136', '117.27672', '31.799465', '256612865');
INSERT INTO `station_data` VALUES ('03', '53.892', '1.4196945', '58', '15:59:13 346', '117.27704', '31.799528', '256612865');
INSERT INTO `station_data` VALUES ('03', '28.462', '1.4196945', '58', '15:59:13 570', '117.27704', '31.799528', '256612865');
INSERT INTO `station_data` VALUES ('03', '31.885', '1.4196945', '58', '15:59:13 782', '117.27704', '31.799528', '256612865');
INSERT INTO `station_data` VALUES ('03', '85.38', '1.4196945', '58', '15:59:13 992', '117.27704', '31.799528', '256612865');
INSERT INTO `station_data` VALUES ('03', '51.912', '1.4511455', '58', '15:59:14 207', '117.277374', '31.799591', '256612865');
INSERT INTO `station_data` VALUES ('03', '48.29', '1.4511455', '58', '15:59:14 421', '117.277374', '31.799591', '256612865');
INSERT INTO `station_data` VALUES ('03', '44.75', '1.4511455', '58', '15:59:14 641', '117.277374', '31.799591', '256612865');
INSERT INTO `station_data` VALUES ('03', '33.399', '1.4511455', '58', '15:59:14 849', '117.277374', '31.799591', '256612865');
INSERT INTO `station_data` VALUES ('03', '40.913', '1.4511455', '59', '15:59:15 056', '117.277374', '31.799591', '256612865');
INSERT INTO `station_data` VALUES ('03', '41.441', '1.4826496', '59', '15:59:15 263', '117.27771', '31.799652', '256612865');
INSERT INTO `station_data` VALUES ('03', '64.697', '1.4826496', '58', '15:59:15 484', '117.27771', '31.799652', '256612865');
INSERT INTO `station_data` VALUES ('03', '68.101', '1.4826496', '58', '15:59:15 699', '117.27771', '31.799652', '256612865');
INSERT INTO `station_data` VALUES ('03', '99.751', '1.4826496', '58', '15:59:15 903', '117.27771', '31.799652', '256612865');
INSERT INTO `station_data` VALUES ('03', '120.521', '1.4826496', '58', '15:59:16 109', '117.27771', '31.799652', '256612865');
INSERT INTO `station_data` VALUES ('03', '70.626', '1.5134733', '58', '15:59:16 320', '117.27804', '31.799713', '256612865');
INSERT INTO `station_data` VALUES ('03', '51.424', '1.5134733', '58', '15:59:16 561', '117.27804', '31.799713', '256612865');
INSERT INTO `station_data` VALUES ('03', '76.25', '1.5134733', '58', '15:59:16 778', '117.27804', '31.799713', '256612865');
INSERT INTO `station_data` VALUES ('03', '60.763', '1.5134733', '58', '15:59:16 984', '117.27804', '31.799713', '256612865');
INSERT INTO `station_data` VALUES ('03', '105.253', '1.5450523', '58', '15:59:17 192', '117.27837', '31.799776', '256612865');
INSERT INTO `station_data` VALUES ('03', '160.729', '1.5450523', '58', '15:59:17 405', '117.27837', '31.799776', '256612865');
INSERT INTO `station_data` VALUES ('03', '134.333', '1.5450523', '58', '15:59:17 613', '117.27837', '31.799776', '256612865');
INSERT INTO `station_data` VALUES ('03', '77.602', '1.5450523', '58', '15:59:17 822', '117.27837', '31.799776', '256612865');
INSERT INTO `station_data` VALUES ('03', '47.253', '1.5450523', '58', '15:59:18 027', '117.27837', '31.799776', '256612865');
INSERT INTO `station_data` VALUES ('03', '42.827', '1.5766734', '58', '15:59:18 244', '117.27871', '31.799837', '256612865');
INSERT INTO `station_data` VALUES ('03', '60.23', '1.5766734', '58', '15:59:18 467', '117.27871', '31.799837', '256612865');
INSERT INTO `station_data` VALUES ('03', '42.071', '1.5766734', '58', '15:59:18 671', '117.27871', '31.799837', '256612865');
INSERT INTO `station_data` VALUES ('03', '42.942', '1.5766734', '58', '15:59:18 885', '117.27871', '31.799837', '256612865');
INSERT INTO `station_data` VALUES ('03', '57.492', '1.5766734', '58', '15:59:19 093', '117.27871', '31.799837', '256612865');
INSERT INTO `station_data` VALUES ('03', '32.871', '1.6083259', '58', '15:59:19 305', '117.279045', '31.7999', '256612865');
INSERT INTO `station_data` VALUES ('03', '44.99', '1.6083259', '58', '15:59:19 525', '117.279045', '31.7999', '256612865');
INSERT INTO `station_data` VALUES ('03', '51.933', '1.6083259', '58', '15:59:19 732', '117.279045', '31.7999', '256612865');
INSERT INTO `station_data` VALUES ('03', '40.608', '1.6083259', '58', '15:59:19 940', '117.279045', '31.7999', '256612865');
INSERT INTO `station_data` VALUES ('03', '49.899', '1.6083259', '58', '15:59:20 162', '117.279045', '31.7999', '256612865');
INSERT INTO `station_data` VALUES ('03', '36.557', '1.6392924', '58', '15:59:20 376', '117.27937', '31.799961', '256612865');
INSERT INTO `station_data` VALUES ('03', '31.123', '1.6392924', '58', '15:59:20 596', '117.27937', '31.799961', '256612865');
INSERT INTO `station_data` VALUES ('03', '35.275', '1.6392924', '58', '15:59:20 808', '117.27937', '31.799961', '256612865');
INSERT INTO `station_data` VALUES ('03', '50.461', '1.6392924', '56', '15:59:21 016', '117.27937', '31.799961', '256612865');
INSERT INTO `station_data` VALUES ('03', '31.44', '1.6695673', '56', '15:59:21 231', '117.27969', '31.800022', '256612865');
INSERT INTO `station_data` VALUES ('03', '56.239', '1.6695673', '64', '15:59:21 441', '117.27969', '31.800022', '256612865');
INSERT INTO `station_data` VALUES ('03', '46.349', '1.6695673', '64', '15:59:21 670', '117.27969', '31.800022', '256612865');
INSERT INTO `station_data` VALUES ('03', '32.412', '1.6695673', '64', '15:59:21 881', '117.27969', '31.800022', '256612865');
INSERT INTO `station_data` VALUES ('03', '49.596', '1.6695673', '64', '15:59:22 105', '117.27969', '31.800022', '256612865');
INSERT INTO `station_data` VALUES ('03', '30.846', '1.699871', '64', '15:59:22 348', '117.280014', '31.800087', '256612865');
INSERT INTO `station_data` VALUES ('03', '63.512', '1.699871', '64', '15:59:22 556', '117.280014', '31.800087', '256612865');
INSERT INTO `station_data` VALUES ('03', '73.236', '1.699871', '64', '15:59:22 764', '117.280014', '31.800087', '256612865');
INSERT INTO `station_data` VALUES ('03', '106.067', '1.699871', '64', '15:59:22 969', '117.280014', '31.800087', '256612865');
INSERT INTO `station_data` VALUES ('03', '122.645', '1.7301982', '64', '15:59:23 178', '117.280334', '31.800137', '256612865');
INSERT INTO `station_data` VALUES ('03', '82.282', '1.7301982', '64', '15:59:23 414', '117.280334', '31.800137', '256612865');
INSERT INTO `station_data` VALUES ('03', '83.659', '1.7301982', '64', '15:59:23 622', '117.280334', '31.800137', '256612865');
INSERT INTO `station_data` VALUES ('03', '121.404', '1.7301982', '64', '15:59:23 827', '117.280334', '31.800137', '256612865');
INSERT INTO `station_data` VALUES ('03', '133.127', '1.7301982', '64', '15:59:24 031', '117.280334', '31.800137', '256612865');
INSERT INTO `station_data` VALUES ('03', '154.221', '1.7605423', '64', '15:59:24 234', '117.280655', '31.800186', '256612865');
INSERT INTO `station_data` VALUES ('03', '182.635', '1.7605423', '64', '15:59:24 437', '117.280655', '31.800186', '256612865');
INSERT INTO `station_data` VALUES ('03', '142.162', '1.7605423', '64', '15:59:24 652', '117.280655', '31.800186', '256612865');
INSERT INTO `station_data` VALUES ('03', '46.385', '1.7605423', '64', '15:59:24 866', '117.280655', '31.800186', '256612865');
INSERT INTO `station_data` VALUES ('03', '35.7', '1.7605423', '64', '15:59:25 082', '117.280655', '31.800186', '256612865');
INSERT INTO `station_data` VALUES ('03', '48.539', '1.7909066', '64', '15:59:25 293', '117.280975', '31.80024', '256612865');
INSERT INTO `station_data` VALUES ('03', '50.618', '1.7909066', '64', '15:59:25 506', '117.280975', '31.80024', '256612865');
INSERT INTO `station_data` VALUES ('03', '46.826', '1.7909066', '64', '15:59:25 715', '117.280975', '31.80024', '256612865');
INSERT INTO `station_data` VALUES ('03', '43.941', '1.7909066', '64', '15:59:25 923', '117.280975', '31.80024', '256612865');
INSERT INTO `station_data` VALUES ('03', '61.881', '1.7909066', '64', '15:59:26 153', '117.280975', '31.80024', '256612865');
INSERT INTO `station_data` VALUES ('03', '45.298', '1.8212914', '64', '15:59:26 363', '117.281296', '31.800295', '256612865');
INSERT INTO `station_data` VALUES ('03', '43.675', '1.8212914', '64', '15:59:26 580', '117.281296', '31.800295', '256612865');
INSERT INTO `station_data` VALUES ('03', '49.119', '1.8212914', '64', '15:59:26 801', '117.281296', '31.800295', '256612865');
INSERT INTO `station_data` VALUES ('03', '81.712', '1.8212914', '64', '15:59:27 012', '117.281296', '31.800295', '256612865');
INSERT INTO `station_data` VALUES ('03', '121.198', '1.8516842', '54', '15:59:27 233', '117.28162', '31.800344', '256612865');
INSERT INTO `station_data` VALUES ('03', '43.737', '1.8516842', '54', '15:59:27 451', '117.28162', '31.800344', '256612865');
INSERT INTO `station_data` VALUES ('03', '59.349', '1.8516842', '54', '15:59:27 660', '117.28162', '31.800344', '256612865');
INSERT INTO `station_data` VALUES ('03', '71.076', '1.8516842', '54', '15:59:27 884', '117.28162', '31.800344', '256612865');
INSERT INTO `station_data` VALUES ('03', '56.568', '1.8516842', '54', '15:59:28 092', '117.28162', '31.800344', '256612865');
INSERT INTO `station_data` VALUES ('03', '40.464', '1.8820868', '54', '15:59:28 302', '117.28194', '31.800392', '256612865');
INSERT INTO `station_data` VALUES ('03', '36.21', '1.8820868', '54', '15:59:28 509', '117.28194', '31.800392', '256612865');
INSERT INTO `station_data` VALUES ('03', '53.542', '1.8820868', '54', '15:59:28 744', '117.28194', '31.800392', '256612865');
INSERT INTO `station_data` VALUES ('03', '47.637', '1.8820868', '54', '15:59:28 954', '117.28194', '31.800392', '256612865');
INSERT INTO `station_data` VALUES ('03', '40.624', '1.9132142', '59', '15:59:29 171', '117.282265', '31.800436', '256612865');
INSERT INTO `station_data` VALUES ('03', '257.586', '1.9132142', '59', '15:59:29 380', '117.282265', '31.800436', '256612865');
INSERT INTO `station_data` VALUES ('03', '425.768', '1.9132142', '54', '15:59:29 595', '117.282265', '31.800436', '256612865');
INSERT INTO `station_data` VALUES ('03', '474.382', '1.9132142', '54', '15:59:29 806', '117.282265', '31.800436', '256612865');
INSERT INTO `station_data` VALUES ('03', '461.457', '1.9132142', '54', '15:59:30 016', '117.282265', '31.800436', '256612865');
INSERT INTO `station_data` VALUES ('03', '363.494', '1.9443606', '54', '15:59:30 228', '117.28259', '31.800484', '256612865');
INSERT INTO `station_data` VALUES ('03', '334.005', '1.9443606', '54', '15:59:30 439', '117.28259', '31.800484', '256612865');
INSERT INTO `station_data` VALUES ('03', '291.83', '1.9443606', '54', '15:59:30 656', '117.28259', '31.800484', '256612865');
INSERT INTO `station_data` VALUES ('03', '237.229', '1.9443606', '54', '15:59:30 863', '117.28259', '31.800484', '256612865');
INSERT INTO `station_data` VALUES ('03', '173.351', '1.9443606', '54', '15:59:31 091', '117.28259', '31.800484', '256612865');
INSERT INTO `station_data` VALUES ('03', '121.181', '1.9762288', '54', '15:59:31 310', '117.28293', '31.800528', '256612865');
INSERT INTO `station_data` VALUES ('03', '74.186', '1.9762288', '54', '15:59:31 530', '117.28293', '31.800528', '256612865');
INSERT INTO `station_data` VALUES ('03', '158.698', '1.9762288', '54', '15:59:31 749', '117.28293', '31.800528', '256612865');
INSERT INTO `station_data` VALUES ('03', '129.043', '1.9762288', '54', '15:59:32 003', '117.28293', '31.800528', '256612865');
INSERT INTO `station_data` VALUES ('03', '158.721', '2.0081053', '54', '15:59:32 215', '117.283264', '31.800571', '256612865');
INSERT INTO `station_data` VALUES ('03', '135.485', '2.0081053', '54', '15:59:32 424', '117.283264', '31.800571', '256612865');
INSERT INTO `station_data` VALUES ('03', '199.436', '2.0081053', '54', '15:59:32 634', '117.283264', '31.800571', '256612865');
INSERT INTO `station_data` VALUES ('03', '123.903', '2.0081053', '54', '15:59:32 841', '117.283264', '31.800571', '256612865');
INSERT INTO `station_data` VALUES ('03', '106.422', '2.0081053', '54', '15:59:33 058', '117.283264', '31.800571', '256612865');
INSERT INTO `station_data` VALUES ('03', '151.986', '2.0399837', '54', '15:59:33 276', '117.2836', '31.800613', '256612865');
INSERT INTO `station_data` VALUES ('03', '241.172', '2.0399837', '54', '15:59:33 510', '117.2836', '31.800613', '256612865');
INSERT INTO `station_data` VALUES ('03', '623.007', '2.0399837', '54', '15:59:33 924', '117.2836', '31.800613', '256612865');
INSERT INTO `station_data` VALUES ('03', '781.734', '2.0399837', '54', '15:59:34 130', '117.2836', '31.800613', '256612865');
INSERT INTO `station_data` VALUES ('03', '648.423', '2.0718559', '54', '15:59:34 348', '117.283936', '31.800652', '256612865');
INSERT INTO `station_data` VALUES ('03', '591.536', '2.0718559', '54', '15:59:34 564', '117.283936', '31.800652', '256612865');
INSERT INTO `station_data` VALUES ('03', '462.961', '2.0718559', '54', '15:59:34 770', '117.283936', '31.800652', '256612865');
INSERT INTO `station_data` VALUES ('03', '334.259', '2.0718559', '54', '15:59:34 979', '117.283936', '31.800652', '256612865');
INSERT INTO `station_data` VALUES ('03', '183.982', '2.0718559', '56', '15:59:35 193', '117.283936', '31.800652', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.078', '2.0718559', '56', '15:59:35 412', '117.283936', '31.800652', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.642', '2.0718559', '79', '15:59:35 628', '117.283936', '31.800652', '256612864');
INSERT INTO `station_data` VALUES ('03', '48.626', '2.0718559', '79', '15:59:35 837', '117.283936', '31.800652', '256612864');
INSERT INTO `station_data` VALUES ('03', '37.392', '2.0718559', '79', '15:59:36 045', '117.283936', '31.800652', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.53', '2.1363298', '79', '15:59:36 274', '117.284615', '31.800726', '256612864');
INSERT INTO `station_data` VALUES ('03', '46.76', '2.1363298', '79', '15:59:36 488', '117.284615', '31.800726', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.08', '2.1363298', '79', '15:59:36 694', '117.284615', '31.800726', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.733', '2.1363298', '79', '15:59:36 906', '117.284615', '31.800726', '256612864');
INSERT INTO `station_data` VALUES ('03', '41.978', '2.1363298', '79', '15:59:37 113', '117.284615', '31.800726', '256612864');
INSERT INTO `station_data` VALUES ('03', '53.659', '2.1682164', '79', '15:59:37 334', '117.28495', '31.800764', '256612864');
INSERT INTO `station_data` VALUES ('03', '28.712', '3.4281026', '79', '15:59:37 558', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '47.02', '3.4281026', '79', '15:59:37 766', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '56.202', '3.4281026', '79', '15:59:37 974', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.203', '3.4281026', '79', '15:59:38 187', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '38.671', '3.4281026', '79', '15:59:38 413', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.789', '3.4281026', '79', '15:59:38 628', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.514', '3.4281026', '79', '15:59:38 837', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '42.97', '3.4281026', '79', '15:59:39 051', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.635', '3.4281026', '79', '15:59:39 290', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '46.138', '3.4281026', '84', '15:59:39 502', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '38.408', '3.4281026', '84', '15:59:39 711', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '42.219', '3.4281026', '84', '15:59:39 917', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '50.6', '3.4281026', '84', '15:59:40 142', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '33.818', '3.4281026', '84', '15:59:40 362', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.171', '3.4281026', '84', '15:59:40 580', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '42.569', '3.4281026', '84', '15:59:40 809', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '41.188', '3.4281026', '84', '15:59:41 023', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.259', '3.4281026', '52', '15:59:41 232', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '39.999', '3.4281026', '52', '15:59:41 446', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.413', '3.4281026', '52', '15:59:41 661', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '39.436', '3.4281026', '52', '15:59:41 867', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.722', '3.4281026', '52', '15:59:42 080', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.362', '3.4281026', '52', '15:59:42 307', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '41.3', '3.4281026', '52', '15:59:42 564', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.189', '3.4281026', '52', '15:59:42 771', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '57.098', '3.4281026', '52', '15:59:42 977', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '38.245', '3.4281026', '52', '15:59:43 182', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '44.254', '3.4281026', '52', '15:59:43 434', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '48.953', '3.4281026', '52', '15:59:43 670', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.157', '3.4281026', '52', '15:59:43 880', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.719', '3.4281026', '52', '15:59:44 088', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.76', '3.4281026', '52', '15:59:44 320', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.582', '3.4281026', '52', '15:59:44 529', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '28.52', '3.4281026', '52', '15:59:44 743', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '54.739', '3.4281026', '52', '15:59:44 955', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.066', '3.4281026', '52', '15:59:45 161', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.292', '3.4281026', '52', '15:59:45 373', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.093', '3.4281026', '52', '15:59:45 581', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '28.574', '3.4281026', '76', '15:59:45 789', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '63.049', '3.4281026', '76', '15:59:45 993', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '41.33', '3.4281026', '76', '15:59:46 218', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.646', '3.4281026', '76', '15:59:46 426', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.107', '3.4281026', '76', '15:59:46 633', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.026', '3.4281026', '76', '15:59:46 839', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '37.868', '3.4281026', '76', '15:59:47 046', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '28.618', '3.4281026', '61', '15:59:47 297', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.257', '3.4281026', '61', '15:59:47 518', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.729', '3.4281026', '61', '15:59:47 727', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.641', '3.4281026', '61', '15:59:47 934', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.02', '3.4281026', '61', '15:59:48 144', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.529', '3.4281026', '61', '15:59:48 387', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.958', '3.4281026', '61', '15:59:48 595', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '27.397', '3.4281026', '61', '15:59:48 800', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '42.347', '3.4281026', '61', '15:59:49 020', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '28.299', '3.4281026', '61', '15:59:49 240', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '43.782', '3.4281026', '61', '15:59:49 472', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.533', '3.4281026', '61', '15:59:49 680', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '33.783', '3.4281026', '61', '15:59:49 885', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '36.514', '3.4281026', '61', '15:59:50 094', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '47.605', '3.4281026', '61', '15:59:50 302', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.454', '3.4281026', '61', '15:59:50 512', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '33.291', '3.4281026', '61', '15:59:50 746', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '60.994', '3.4281026', '61', '15:59:50 984', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '41.973', '3.4281026', '61', '15:59:51 203', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.089', '3.4281026', '61', '15:59:51 420', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.989', '3.4281026', '61', '15:59:51 629', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '51.581', '3.4281026', '73', '15:59:51 841', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.526', '3.4281026', '73', '15:59:52 053', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '61.654', '3.4281026', '73', '15:59:52 276', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.016', '3.4281026', '73', '15:59:52 487', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '45.698', '3.4281026', '73', '15:59:52 705', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.05', '3.4281026', '73', '15:59:52 911', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.333', '3.4281026', '73', '15:59:53 118', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '58.491', '3.4281026', '73', '15:59:53 331', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '36.842', '3.4281026', '73', '15:59:53 555', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '44.031', '3.4281026', '73', '15:59:53 762', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '75.604', '3.4281026', '73', '15:59:53 975', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.414', '3.4281026', '73', '15:59:54 184', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.907', '3.4281026', '73', '15:59:54 399', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.01', '3.4281026', '73', '15:59:54 617', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '51.052', '3.4281026', '73', '15:59:54 822', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '41.722', '3.4281026', '54', '15:59:55 033', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '31.986', '3.4281026', '54', '15:59:55 245', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.655', '3.4281026', '54', '15:59:55 464', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.896', '3.4281026', '54', '15:59:55 673', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.7', '3.4281026', '54', '15:59:55 878', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '48.324', '3.4281026', '54', '15:59:56 085', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '37.114', '3.4281026', '54', '15:59:56 310', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '48.239', '3.4281026', '54', '15:59:56 538', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '45.994', '3.4281026', '54', '15:59:56 746', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '63.779', '3.4281026', '54', '15:59:56 954', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '47.435', '3.4281026', '54', '15:59:57 175', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '56.269', '3.4281026', '54', '15:59:57 384', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '48.542', '3.4281026', '54', '15:59:57 604', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '59.53', '3.4281026', '66', '15:59:57 820', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '37.407', '3.4281026', '66', '15:59:58 035', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '42.407', '3.4281026', '66', '15:59:58 274', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.744', '3.4281026', '66', '15:59:58 493', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '62.387', '3.4281026', '66', '15:59:58 773', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '69.725', '3.4281026', '66', '15:59:58 985', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '45.385', '3.4281026', '66', '15:59:59 193', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '56.815', '3.4281026', '66', '15:59:59 400', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '101.156', '3.4281026', '66', '15:59:59 613', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '168.635', '3.4281026', '66', '15:59:59 827', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '313.002', '3.4281026', '66', '16:00:00 045', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '394.604', '3.4281026', '66', '16:00:00 252', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '479.382', '3.4281026', '66', '16:00:00 463', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '500.944', '3.4281026', '66', '16:00:00 681', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '547.621', '3.4281026', '66', '16:00:00 892', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '572.157', '3.4281026', '54', '16:00:01 115', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '551.649', '3.4281026', '54', '16:00:01 324', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '518.604', '3.4281026', '54', '16:00:01 542', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '464.149', '3.4281026', '54', '16:00:01 746', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '392.307', '3.4281026', '54', '16:00:01 956', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '351.254', '3.4281026', '54', '16:00:02 165', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '310.11', '3.4281026', '54', '16:00:02 371', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '262.072', '3.4281026', '54', '16:00:02 598', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '273.09', '3.4281026', '54', '16:00:02 813', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '242.725', '3.4281026', '54', '16:00:03 120', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '170.281', '3.4281026', '54', '16:00:03 327', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '101.822', '3.4281026', '54', '16:00:03 577', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '32.445', '3.4281026', '60', '16:00:03 803', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '60.941', '3.4281026', '60', '16:00:04 017', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '38.571', '3.4281026', '60', '16:00:04 238', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '35.432', '3.4281026', '60', '16:00:04 476', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '74.047', '3.4281026', '60', '16:00:04 712', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '43.389', '3.4281026', '60', '16:00:04 920', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '60.366', '3.4281026', '60', '16:00:05 128', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '46.881', '3.4281026', '60', '16:00:05 340', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '28.786', '3.4281026', '60', '16:00:05 555', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '51.906', '3.4281026', '60', '16:00:05 764', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '49.052', '3.4281026', '60', '16:00:05 971', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '50.214', '3.4281026', '60', '16:00:06 180', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '30.023', '3.4281026', '60', '16:00:06 455', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.899', '3.4281026', '60', '16:00:06 672', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '51.886', '3.4281026', '60', '16:00:06 881', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '98.091', '3.4281026', '60', '16:00:07 087', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '45.395', '3.4281026', '60', '16:00:07 307', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '48.772', '3.4281026', '60', '16:00:07 548', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '37.287', '3.4281026', '60', '16:00:07 757', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '102.926', '3.4281026', '60', '16:00:07 967', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '68.877', '3.4281026', '60', '16:00:08 174', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '40.513', '3.4281026', '60', '16:00:08 388', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '67.088', '3.4281026', '60', '16:00:08 607', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '34.663', '3.4281026', '60', '16:00:08 819', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '49.797', '3.4281026', '60', '16:00:09 027', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '59.844', '3.4281026', '60', '16:00:09 242', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '71.09', '3.4281026', '60', '16:00:09 456', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '46.972', '3.4281026', '60', '16:00:09 670', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '29.724', '3.4281026', '56', '16:00:09 875', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '65.536', '3.4281026', '56', '16:00:10 082', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '81.497', '3.4281026', '56', '16:00:10 288', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '65.189', '3.4281026', '56', '16:00:10 545', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '71.194', '3.4281026', '54', '16:00:10 771', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '55.16', '3.4281026', '54', '16:00:10 976', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '95.094', '3.4281026', '54', '16:00:11 183', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '105.454', '3.4281026', '54', '16:00:11 393', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '99.043', '3.4281026', '54', '16:00:11 599', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '119.694', '3.4281026', '54', '16:00:11 805', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '136.302', '3.4281026', '54', '16:00:12 016', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '142.761', '3.4281026', '54', '16:00:12 229', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '178.531', '3.4281026', '54', '16:00:12 451', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '167.191', '3.4281026', '54', '16:00:12 666', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '191.188', '3.4281026', '54', '16:00:12 874', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '204.222', '3.4281026', '54', '16:00:13 080', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '245.121', '3.4281026', '54', '16:00:13 294', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '341.875', '3.4281026', '54', '16:00:13 505', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '477.83', '3.4281026', '54', '16:00:13 711', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '613.83', '3.4281026', '54', '16:00:13 932', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '967.886', '3.4281026', '54', '16:00:14 142', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '1372.55', '3.4281026', '54', '16:00:14 355', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '2179.61', '3.4281026', '54', '16:00:14 577', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '2848.989', '3.4281026', '54', '16:00:14 785', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '2639.153', '3.4281026', '54', '16:00:14 990', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3515.708', '3.4281026', '54', '16:00:15 206', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3546.348', '3.4281026', '54', '16:00:15 419', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3351.181', '3.4281026', '54', '16:00:15 634', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3142.59', '3.4281026', '54', '16:00:15 842', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '2937.413', '3.4281026', '54', '16:00:16 050', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '2721.636', '3.4281026', '54', '16:00:16 270', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '4496.144', '3.4281026', '54', '16:00:16 484', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '4286.969', '3.4281026', '54', '16:00:16 693', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '4075.941', '3.4281026', '52', '16:00:16 906', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3858.416', '3.4281026', '52', '16:00:17 120', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3642.149', '3.4281026', '52', '16:00:17 341', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3416.828', '3.4281026', '52', '16:00:17 561', '117.298225', '31.80179', '256612864');
INSERT INTO `station_data` VALUES ('03', '3209.805', '3.5476551', '52', '16:00:17 769', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '3183.324', '3.5476551', '52', '16:00:17 979', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '2962.756', '3.5476551', '52', '16:00:18 200', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '2755.435', '3.5476551', '52', '16:00:18 407', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '2544.799', '3.5476551', '52', '16:00:18 618', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '2340.935', '3.5476551', '52', '16:00:18 823', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '2129.276', '3.5476551', '52', '16:00:19 035', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '1920.064', '3.5476551', '52', '16:00:19 242', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '1694.16', '3.5476551', '52', '16:00:19 471', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '1482.644', '3.5476551', '52', '16:00:19 681', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '1264.877', '3.5476551', '52', '16:00:19 895', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '1054.018', '3.5476551', '52', '16:00:20 107', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '988.08', '3.5476551', '52', '16:00:20 326', '117.299484', '31.801893', '256612864');
INSERT INTO `station_data` VALUES ('03', '773.2', '1.569424', '52', '16:00:20 542', '117.299484', '31.801893', '256613377');
INSERT INTO `station_data` VALUES ('03', '562.635', '1.569424', '52', '16:00:20 749', '117.299484', '31.801893', '256613377');
INSERT INTO `station_data` VALUES ('03', '356.435', '1.569424', '52', '16:00:20 962', '117.299484', '31.801893', '256613377');
INSERT INTO `station_data` VALUES ('03', '403.606', '1.569424', '52', '16:00:21 199', '117.299484', '31.801893', '256613377');
INSERT INTO `station_data` VALUES ('03', '309.909', '1.121319', '52', '16:00:21 469', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '209.803', '1.121319', '52', '16:00:21 715', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '89.462', '1.121319', '54', '16:00:21 943', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '90.167', '1.121319', '54', '16:00:22 214', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '73.632', '1.121319', '54', '16:00:22 424', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '52.728', '1.121319', '54', '16:00:22 633', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '60.217', '1.121319', '48', '16:00:22 842', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '60.466', '1.121319', '48', '16:00:23 052', '117.299484', '31.801893', '137815740');
INSERT INTO `station_data` VALUES ('03', '114.747', '1.1792385', '48', '16:00:23 269', '117.300095', '31.80194', '137815740');
INSERT INTO `station_data` VALUES ('03', '57.589', '1.1792385', '48', '16:00:23 494', '117.300095', '31.80194', '137815740');
INSERT INTO `station_data` VALUES ('03', '56.759', '1.1792385', '48', '16:00:23 707', '117.300095', '31.80194', '137815740');
INSERT INTO `station_data` VALUES ('03', '49.004', '1.1792385', '54', '16:00:23 914', '117.300095', '31.80194', '137815740');
INSERT INTO `station_data` VALUES ('03', '102.607', '1.1792385', '54', '16:00:24 118', '117.300095', '31.80194', '137815740');
INSERT INTO `station_data` VALUES ('03', '77.075', '1.2059829', '54', '16:00:24 328', '117.30038', '31.80196', '137815740');
INSERT INTO `station_data` VALUES ('03', '91.292', '1.2059829', '54', '16:00:24 554', '117.30038', '31.80196', '137815740');
INSERT INTO `station_data` VALUES ('03', '103.849', '1.2059829', '54', '16:00:24 780', '117.30038', '31.80196', '137815740');
INSERT INTO `station_data` VALUES ('03', '59.235', '1.2059829', '54', '16:00:25 003', '117.30038', '31.80196', '137815740');
INSERT INTO `station_data` VALUES ('03', '97.364', '1.2327294', '54', '16:00:25 215', '117.30066', '31.80198', '137815740');
INSERT INTO `station_data` VALUES ('03', '145.382', '1.2327294', '54', '16:00:25 473', '117.30066', '31.80198', '137815740');
INSERT INTO `station_data` VALUES ('03', '202.09', '1.2327294', '54', '16:00:25 709', '117.30066', '31.80198', '137815740');
INSERT INTO `station_data` VALUES ('03', '172.24', '1.2327294', '54', '16:00:25 918', '117.30066', '31.80198', '137815740');
INSERT INTO `station_data` VALUES ('03', '176.815', '1.2327294', '54', '16:00:26 128', '117.30066', '31.80198', '137815740');
INSERT INTO `station_data` VALUES ('03', '168.331', '1.2587625', '54', '16:00:26 346', '117.300934', '31.801998', '137815740');
INSERT INTO `station_data` VALUES ('03', '159.173', '1.2587625', '54', '16:00:26 570', '117.300934', '31.801998', '137815740');
INSERT INTO `station_data` VALUES ('03', '152.984', '1.2587625', '54', '16:00:26 774', '117.300934', '31.801998', '137815740');
INSERT INTO `station_data` VALUES ('03', '259.117', '1.2587625', '54', '16:00:26 980', '117.300934', '31.801998', '137815740');
INSERT INTO `station_data` VALUES ('03', '330.915', '1.2847688', '54', '16:00:27 192', '117.30121', '31.802015', '137815740');
INSERT INTO `station_data` VALUES ('03', '369.427', '1.2847688', '54', '16:00:27 411', '117.30121', '31.802015', '137815740');
INSERT INTO `station_data` VALUES ('03', '395.244', '1.2847688', '54', '16:00:27 630', '117.30121', '31.802015', '137815740');
INSERT INTO `station_data` VALUES ('03', '492.776', '1.2847688', '54', '16:00:27 835', '117.30121', '31.802015', '137815740');
INSERT INTO `station_data` VALUES ('03', '601.546', '1.2847688', '54', '16:00:28 051', '117.30121', '31.802015', '137815740');
INSERT INTO `station_data` VALUES ('03', '740.769', '1.3108333', '54', '16:00:28 276', '117.30148', '31.802036', '137815740');
INSERT INTO `station_data` VALUES ('03', '889.071', '1.3108333', '54', '16:00:28 503', '117.30148', '31.802036', '137815740');
INSERT INTO `station_data` VALUES ('03', '1014.094', '1.3108333', '54', '16:00:28 713', '117.30148', '31.802036', '137815740');
INSERT INTO `station_data` VALUES ('03', '1363.927', '1.3108333', '55', '16:00:28 918', '117.30148', '31.802036', '137815740');
INSERT INTO `station_data` VALUES ('03', '1790.606', '1.3108333', '55', '16:00:29 125', '117.30148', '31.802036', '137815740');
INSERT INTO `station_data` VALUES ('03', '1651.977', '1.3375584', '55', '16:00:29 361', '117.301765', '31.802053', '137815740');
INSERT INTO `station_data` VALUES ('03', '1954.068', '1.3375584', '55', '16:00:29 712', '117.301765', '31.802053', '137815740');
INSERT INTO `station_data` VALUES ('03', '1805.214', '1.3375584', '49', '16:00:29 922', '117.301765', '31.802053', '137815740');
INSERT INTO `station_data` VALUES ('03', '1597.883', '1.3375584', '67', '16:00:30 131', '117.301765', '31.802053', '137815740');
INSERT INTO `station_data` VALUES ('03', '1386.572', '1.3650565', '67', '16:00:30 341', '117.302055', '31.802074', '137815740');
INSERT INTO `station_data` VALUES ('03', '1914.102', '1.3650565', '67', '16:00:30 549', '117.302055', '31.802074', '137815740');
INSERT INTO `station_data` VALUES ('03', '1947.476', '1.7921132', '67', '16:00:30 755', '117.302055', '31.802074', '256613387');
INSERT INTO `station_data` VALUES ('03', '1738.768', '1.7921132', '67', '16:00:30 970', '117.302055', '31.802074', '256613387');
INSERT INTO `station_data` VALUES ('03', '2396.169', '1.8167602', '67', '16:00:31 174', '117.30234', '31.802092', '256613387');
INSERT INTO `station_data` VALUES ('03', '2192.17', '1.8167602', '67', '16:00:31 386', '117.30234', '31.802092', '256613387');
INSERT INTO `station_data` VALUES ('03', '2017.502', '1.8167602', '67', '16:00:31 590', '117.30234', '31.802092', '256613387');
INSERT INTO `station_data` VALUES ('03', '1810.247', '1.8167602', '67', '16:00:31 798', '117.30234', '31.802092', '256613387');
INSERT INTO `station_data` VALUES ('03', '2003.241', '1.8167602', '67', '16:00:32 005', '117.30234', '31.802092', '256613387');
INSERT INTO `station_data` VALUES ('03', '1796.181', '1.842017', '67', '16:00:32 214', '117.30263', '31.802107', '256613387');
INSERT INTO `station_data` VALUES ('03', '1581.292', '1.842017', '67', '16:00:32 427', '117.30263', '31.802107', '256613387');
INSERT INTO `station_data` VALUES ('03', '1374.023', '1.842017', '67', '16:00:32 641', '117.30263', '31.802107', '256613387');
INSERT INTO `station_data` VALUES ('03', '1529.632', '1.842017', '67', '16:00:32 851', '117.30263', '31.802107', '256613387');
INSERT INTO `station_data` VALUES ('03', '1317.359', '1.842017', '67', '16:00:33 059', '117.30263', '31.802107', '256613387');
INSERT INTO `station_data` VALUES ('03', '1104.84', '1.8665954', '67', '16:00:33 270', '117.30291', '31.80212', '256613387');
INSERT INTO `station_data` VALUES ('03', '1132.274', '1.8665954', '67', '16:00:33 684', '117.30291', '31.80212', '256613387');
INSERT INTO `station_data` VALUES ('03', '928.256', '1.8665954', '67', '16:00:33 893', '117.30291', '31.80212', '256613387');
INSERT INTO `station_data` VALUES ('03', '1151.024', '1.9654119', '67', '16:00:34 101', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '944.139', '1.9654119', '67', '16:00:34 307', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1176.956', '1.9654119', '67', '16:00:34 516', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '967.112', '1.9654119', '67', '16:00:34 726', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1060.838', '1.9654119', '67', '16:00:34 934', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '973.308', '1.9654119', '67', '16:00:35 141', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1030.639', '1.9654119', '67', '16:00:35 360', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '886.348', '1.9654119', '67', '16:00:35 573', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '701.286', '1.9654119', '67', '16:00:35 782', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '750.919', '1.9654119', '52', '16:00:35 990', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '818.107', '1.9654119', '52', '16:00:36 193', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '689.281', '1.9654119', '52', '16:00:36 406', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '829.671', '1.9654119', '52', '16:00:36 620', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1093.832', '1.9654119', '60', '16:00:36 833', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '955.123', '1.9654119', '60', '16:00:37 053', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1235.122', '1.9654119', '60', '16:00:37 260', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1047.409', '1.9654119', '56', '16:00:37 475', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1229.213', '1.9654119', '56', '16:00:37 691', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1067.887', '1.9654119', '56', '16:00:37 897', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '864.83', '1.9654119', '56', '16:00:38 103', '117.30405', '31.802158', '256613387');
INSERT INTO `station_data` VALUES ('03', '1157.656', '1.9910168', '56', '16:00:38 313', '117.30434', '31.802174', '256613387');
INSERT INTO `station_data` VALUES ('03', '946.611', '1.9910168', '56', '16:00:38 518', '117.30434', '31.802174', '256613387');
INSERT INTO `station_data` VALUES ('03', '1282.523', '1.9910168', '56', '16:00:38 725', '117.30434', '31.802174', '256613387');
INSERT INTO `station_data` VALUES ('03', '1075.959', '1.9910168', '56', '16:00:38 937', '117.30434', '31.802174', '256613387');
INSERT INTO `station_data` VALUES ('03', '1390.781', '1.9910168', '56', '16:00:39 150', '117.30434', '31.802174', '256613387');
INSERT INTO `station_data` VALUES ('03', '1176.624', '2.0174162', '56', '16:00:39 369', '117.304634', '31.80219', '256613387');
INSERT INTO `station_data` VALUES ('03', '989.468', '2.0174162', '56', '16:00:39 575', '117.304634', '31.80219', '256613387');
INSERT INTO `station_data` VALUES ('03', '1231.471', '2.0174162', '56', '16:00:39 780', '117.304634', '31.80219', '256613387');
INSERT INTO `station_data` VALUES ('03', '1021.698', '2.0174162', '56', '16:00:39 987', '117.304634', '31.80219', '256613387');
INSERT INTO `station_data` VALUES ('03', '1207.717', '2.0453552', '56', '16:00:40 193', '117.30495', '31.802212', '256613387');
INSERT INTO `station_data` VALUES ('03', '1001.222', '2.0453552', '56', '16:00:40 404', '117.30495', '31.802212', '256613387');
INSERT INTO `station_data` VALUES ('03', '996.101', '2.0453552', '56', '16:00:40 614', '117.30495', '31.802212', '256613387');
INSERT INTO `station_data` VALUES ('03', '1188.577', '2.0453552', '56', '16:00:40 818', '117.30495', '31.802212', '256613387');
INSERT INTO `station_data` VALUES ('03', '988.255', '2.0453552', '56', '16:00:41 025', '117.30495', '31.802212', '256613387');
INSERT INTO `station_data` VALUES ('03', '1103.047', '2.0726826', '56', '16:00:41 236', '117.30525', '31.802233', '256613387');
INSERT INTO `station_data` VALUES ('03', '1257.705', '2.0726826', '56', '16:00:41 443', '117.30525', '31.802233', '256613387');
INSERT INTO `station_data` VALUES ('03', '1171.977', '2.0726826', '56', '16:00:41 652', '117.30525', '31.802233', '256613387');
INSERT INTO `station_data` VALUES ('03', '965.082', '2.0726826', '56', '16:00:41 857', '117.30525', '31.802233', '256613387');
INSERT INTO `station_data` VALUES ('03', '1125.469', '2.0726826', '56', '16:00:42 063', '117.30525', '31.802233', '256613387');
INSERT INTO `station_data` VALUES ('03', '911.295', '2.1005456', '56', '16:00:42 274', '117.305565', '31.80225', '256613387');
INSERT INTO `station_data` VALUES ('03', '996.707', '2.1005456', '56', '16:00:42 489', '117.305565', '31.80225', '256613387');
INSERT INTO `station_data` VALUES ('03', '793.729', '2.1005456', '56', '16:00:42 693', '117.305565', '31.80225', '256613387');
INSERT INTO `station_data` VALUES ('03', '949.838', '2.1005456', '58', '16:00:42 919', '117.305565', '31.80225', '256613387');
INSERT INTO `station_data` VALUES ('03', '730.537', '2.1005456', '58', '16:00:43 130', '117.305565', '31.80225', '256613387');
INSERT INTO `station_data` VALUES ('03', '859.475', '2.128625', '58', '16:00:43 335', '117.30588', '31.80227', '256613387');
INSERT INTO `station_data` VALUES ('03', '974.746', '2.128625', '58', '16:00:43 554', '117.30588', '31.80227', '256613387');
INSERT INTO `station_data` VALUES ('03', '774.678', '2.128625', '58', '16:00:43 763', '117.30588', '31.80227', '256613387');
INSERT INTO `station_data` VALUES ('03', '971.96', '2.128625', '58', '16:00:43 970', '117.30588', '31.80227', '256613387');
INSERT INTO `station_data` VALUES ('03', '763.549', '2.128625', '58', '16:00:44 176', '117.30588', '31.80227', '256613387');
INSERT INTO `station_data` VALUES ('03', '1042.972', '2.1573285', '58', '16:00:44 386', '117.3062', '31.80229', '256613387');
INSERT INTO `station_data` VALUES ('03', '1249.742', '2.1573285', '58', '16:00:44 607', '117.3062', '31.80229', '256613387');
INSERT INTO `station_data` VALUES ('03', '1069.396', '2.1573285', '58', '16:00:44 813', '117.3062', '31.80229', '256613387');
INSERT INTO `station_data` VALUES ('03', '1401.77', '2.1573285', '58', '16:00:45 020', '117.3062', '31.80229', '256613387');
INSERT INTO `station_data` VALUES ('03', '1198.446', '2.1862421', '58', '16:00:45 225', '117.30652', '31.802313', '256613387');
INSERT INTO `station_data` VALUES ('03', '987.515', '2.1862421', '58', '16:00:45 434', '117.30652', '31.802313', '256613387');
INSERT INTO `station_data` VALUES ('03', '1278.359', '2.1862421', '58', '16:00:45 642', '117.30652', '31.802313', '256613387');
INSERT INTO `station_data` VALUES ('03', '1077.367', '2.1862421', '58', '16:00:45 850', '117.30652', '31.802313', '256613387');
INSERT INTO `station_data` VALUES ('03', '1360.313', '2.1862421', '58', '16:00:46 054', '117.30652', '31.802313', '256613387');
INSERT INTO `station_data` VALUES ('03', '1148.625', '2.2144481', '58', '16:00:46 258', '117.30683', '31.802334', '256613387');
INSERT INTO `station_data` VALUES ('03', '944.356', '2.2144481', '58', '16:00:46 473', '117.30683', '31.802334', '256613387');
INSERT INTO `station_data` VALUES ('03', '1128.427', '2.2144481', '62', '16:00:46 687', '117.30683', '31.802334', '256613387');
INSERT INTO `station_data` VALUES ('03', '933.983', '2.2144481', '62', '16:00:46 892', '117.30683', '31.802334', '256613387');
INSERT INTO `station_data` VALUES ('03', '1165.39', '2.2144481', '62', '16:00:47 104', '117.30683', '31.802334', '256613387');
INSERT INTO `station_data` VALUES ('03', '957.667', '2.2424505', '62', '16:00:47 309', '117.307144', '31.80235', '256613387');
INSERT INTO `station_data` VALUES ('03', '1228.029', '2.2424505', '62', '16:00:47 520', '117.307144', '31.80235', '256613387');
INSERT INTO `station_data` VALUES ('03', '1018.026', '2.2424505', '62', '16:00:47 726', '117.307144', '31.80235', '256613387');
INSERT INTO `station_data` VALUES ('03', '1242.673', '2.2424505', '62', '16:00:47 934', '117.307144', '31.80235', '256613387');
INSERT INTO `station_data` VALUES ('03', '1037.799', '2.2424505', '62', '16:00:48 138', '117.307144', '31.80235', '256613387');
INSERT INTO `station_data` VALUES ('03', '1356.174', '2.2690769', '62', '16:00:48 350', '117.30744', '31.802362', '256613387');
INSERT INTO `station_data` VALUES ('03', '1142.049', '2.2690769', '62', '16:00:48 564', '117.30744', '31.802362', '256613387');
INSERT INTO `station_data` VALUES ('03', '1188.745', '2.2690769', '62', '16:00:48 773', '117.30744', '31.802362', '256613387');
INSERT INTO `station_data` VALUES ('03', '1127.613', '2.2690769', '62', '16:00:48 984', '117.30744', '31.802362', '256613387');
INSERT INTO `station_data` VALUES ('03', '1272.445', '2.2950707', '62', '16:00:49 192', '117.30773', '31.802376', '256613387');
INSERT INTO `station_data` VALUES ('03', '1066.005', '2.2950707', '62', '16:00:49 397', '117.30773', '31.802376', '256613387');
INSERT INTO `station_data` VALUES ('03', '857.05', '2.2950707', '62', '16:00:49 606', '117.30773', '31.802376', '256613387');
INSERT INTO `station_data` VALUES ('03', '1132.639', '2.2950707', '62', '16:00:49 810', '117.30773', '31.802376', '256613387');
INSERT INTO `station_data` VALUES ('03', '925.747', '2.2950707', '62', '16:00:50 018', '117.30773', '31.802376', '256613387');
INSERT INTO `station_data` VALUES ('03', '1338.586', '2.3211767', '62', '16:00:50 226', '117.30802', '31.802391', '256613387');
INSERT INTO `station_data` VALUES ('03', '1111.956', '2.3211767', '62', '16:00:50 451', '117.30802', '31.802391', '256613387');
INSERT INTO `station_data` VALUES ('03', '1469.602', '2.6985666', '62', '16:00:50 657', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1270.282', '2.6985666', '62', '16:00:50 864', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1745.823', '2.6985666', '62', '16:00:51 072', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1535.821', '2.6985666', '62', '16:00:51 280', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1327.925', '2.6985666', '62', '16:00:51 487', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2394.335', '2.6985666', '62', '16:00:51 702', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2189.566', '2.6985666', '62', '16:00:51 914', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1974.32', '2.6985666', '62', '16:00:52 126', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2418.307', '2.6985666', '47', '16:00:52 349', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2209.323', '2.6985666', '47', '16:00:52 565', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1999.526', '2.6985666', '47', '16:00:52 776', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2436.272', '2.6985666', '47', '16:00:52 983', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2235.694', '2.6985666', '47', '16:00:53 191', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '2008.913', '2.6985666', '47', '16:00:53 405', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1806.879', '2.6985666', '47', '16:00:53 619', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1613.612', '2.6985666', '47', '16:00:53 824', '117.31259', '31.80151', '256613387');
INSERT INTO `station_data` VALUES ('03', '1402.902', '0.432259', '47', '16:00:54 036', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '2064.454', '0.432259', '47', '16:00:54 241', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1866.622', '0.432259', '47', '16:00:54 455', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1656.881', '0.432259', '47', '16:00:54 663', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1451.268', '0.432259', '47', '16:00:54 872', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1822.212', '0.432259', '47', '16:00:55 083', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1599.244', '0.432259', '47', '16:00:55 319', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1387.525', '0.432259', '58', '16:00:55 531', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1802.793', '0.432259', '58', '16:00:55 741', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1598.286', '0.432259', '58', '16:00:55 950', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1394.975', '0.432259', '58', '16:00:56 153', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1751.6', '0.432259', '58', '16:00:56 367', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1546.985', '0.432259', '58', '16:00:56 573', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1331.618', '0.432259', '58', '16:00:56 787', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1710.467', '0.432259', '58', '16:00:56 996', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1503.969', '0.432259', '58', '16:00:57 203', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1290.674', '0.432259', '58', '16:00:57 414', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1648.202', '0.432259', '58', '16:00:57 622', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1448.107', '0.432259', '58', '16:00:57 833', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1228.358', '0.432259', '58', '16:00:58 049', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1629.525', '0.432259', '58', '16:00:58 254', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1416.623', '0.432259', '47', '16:00:58 465', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1211.219', '0.432259', '47', '16:00:58 669', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1601.236', '0.432259', '47', '16:00:58 879', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1395.811', '0.432259', '47', '16:00:59 087', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1190.499', '0.432259', '47', '16:00:59 294', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1514.179', '0.432259', '47', '16:00:59 504', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1298.046', '0.432259', '47', '16:00:59 717', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1092.726', '0.432259', '47', '16:00:59 924', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1387.521', '0.432259', '47', '16:01:00 138', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1192.038', '0.432259', '47', '16:01:00 342', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1587.28', '0.432259', '47', '16:01:00 551', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1366.339', '0.432259', '47', '16:01:00 807', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1160.674', '0.432259', '47', '16:01:01 013', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1472.224', '0.432259', '47', '16:01:01 222', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1266.484', '0.432259', '47', '16:01:01 429', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1663.997', '0.432259', '56', '16:01:01 635', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1458.847', '0.432259', '56', '16:01:01 841', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1255.664', '0.432259', '56', '16:01:02 050', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1633.719', '0.432259', '56', '16:01:02 266', '117.31259', '31.80151', '256613643');
INSERT INTO `station_data` VALUES ('03', '1425.578', '0.432259', '56', '16:01:02 475', '117.31259', '31.80151', '256613643');

-- ----------------------------
-- Table structure for station_group
-- ----------------------------
DROP TABLE IF EXISTS `station_group`;
CREATE TABLE `station_group` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `stime` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `etime` varchar(20) DEFAULT NULL COMMENT '结束时间',
  `timerange` varchar(20) DEFAULT NULL COMMENT '时长',
  `tester` varchar(20) DEFAULT NULL COMMENT '测试人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of station_group
-- ----------------------------
INSERT INTO `station_group` VALUES ('01', '方兴大道（由东向西）', '17:09:22 679', '17:16:40 797', '7分18秒', '测试');
INSERT INTO `station_group` VALUES ('02', '方兴大道（由西向东）', '17:20:14 228', '17:28:03 738', '7分49秒', '测试');
INSERT INTO `station_group` VALUES ('03', '绕城高速（政务区段由西向东）', '15:55:33 473', '16:01:02 475', '5分29秒', '测试');

-- ----------------------------
-- Table structure for station_info
-- ----------------------------
DROP TABLE IF EXISTS `station_info`;
CREATE TABLE `station_info` (
  `name` varchar(50) DEFAULT NULL,
  `lon` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `cid` varchar(20) DEFAULT NULL,
  `lac` varchar(20) DEFAULT NULL,
  `ids` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of station_info
-- ----------------------------
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道辅路;合肥永升机械有限公司南567米', '117.20551', '31.72584', '97571072', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;合力综合楼南571米', '117.20977', '31.72612', '73300206', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;合力综合楼东南621米', '117.20977', '31.72612', '73300204', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;合力综合楼东南718米', '117.21281', '31.72768', '98055726', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;合力综合楼南563米', '117.20741', '31.72365', '97554177', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;王小郢北411米', '117.23735', '31.72874', '97564973', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;王小郢北385米', '117.24193', '31.72757', '98122286', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;方大郢东189米', '117.25393', '31.72724', '98318342', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;裕田汽车科技产业园东南379米', '117.25393', '31.72724', '98318341', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;卫田庄南375米', '117.26747', '31.73059', '98214701', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;岗头东北67米', '117.26485', '31.72603', '98128940', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;黄四岗东北583米', '117.28786', '31.72634', '74007022', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;陈北份北550米', '117.28786', '31.72634', '74007020', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;陈北份北533米', '117.28786', '31.72634', '74007021', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;裕田汽车科技产业园东南179米', '117.25711', '31.72621', '98304257', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县宿松路;安徽审计职业学院(方兴大道)内,方大郢东南531米', '117.25711', '31.72621', '98304258', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;裕田汽车科技产业园东南300米', '117.257095346774', '31.726066596113', '98318351', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;方大郢东254米', '117.25393', '31.72724', '98318340', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;合肥杰事杰新材料股份有限公司西南218米', '117.22091', '31.72711', '17668205', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区青鸾路;宝供合肥宝荣基地西北566米', '117.21289', '31.72818', '98055725', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;宝供合肥宝荣基地北452米', '117.22091', '31.72711', '17668206', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市蜀山区方兴大道;宝供合肥宝荣基地北460米', '117.22513', '31.72712', '256511534', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;董郢北320米', '117.23287', '31.727669', '138976174', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;丁小郢东502米', '117.22513', '31.72712', '256511533', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县天都路;丁小郢东124米', '117.23287', '31.727669', '138976173', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;丁小郢东267米', '117.23735', '31.72874', '97564974', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;王小郢北406米', '117.24491', '31.72747', '17690990', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;安徽鸣华大厦西南264米', '117.24193', '31.72757', '98122285', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;安徽鸣华大厦南133米', '117.24491', '31.72747', '17690989', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;方大郢西173米', '117.24959', '31.72525', '97550084', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;裕田汽车科技产业园东南211米', '117.25868', '31.72739', '98304302', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;方大郢东189米', '117.264395821306', '31.731537835459', '98314342', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;裕田汽车科技产业园东南379米', '117.269746534376', '31.7303418169947', '98314341', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县G3(京台高速);岗头西466米', '117.26485', '31.72603', '98128942', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;岗头西北296米', '117.26481', '31.72592', '98128906', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;岗头西474米', '117.25868', '31.72739', '98304301', '22022', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;岗头北92米', '117.26286', '31.72985', '243721901', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;岗头东162米', '117.26998', '31.72707', '73220846', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道辅路;卫田庄南413米', '117.26998', '31.72707', '73220845', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;卫田庄南385米', '117.27432', '31.72701', '138946734', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县紫云路人行天桥;滨湖世纪城西110米', '117.27432', '31.72701', '138946733', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;高速滨湖时代广场-金融中心东北129米', '117.28101', '31.72581', '98128428', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;黄四岗北516米', '117.28101', '31.72581', '98128429', '22113', '01,02');
INSERT INTO `station_info` VALUES ('安徽省合肥市肥西县方兴大道;黄四岗北525米', '117.28586', '31.72965', '73211373', '22113', '01,02');
INSERT INTO `station_info` VALUES ('256612874', '117.26205', '31.80008', '256612874', '21760', '03');
INSERT INTO `station_info` VALUES ('96666379', '117.20759', '31.79791', '96666379', '22029', '03');
INSERT INTO `station_info` VALUES ('256612876', '117.26205', '31.80008', '256612876', '21760', '03');
INSERT INTO `station_info` VALUES ('96689932', '117.20284', '31.80127', '96689932', '22029', '03');
INSERT INTO `station_info` VALUES ('256613642', '117.30887', '31.79926', '256613642', '21760', '03');
INSERT INTO `station_info` VALUES ('256613643', '117.30887', '31.79926', '256613643', '21760', '03');
INSERT INTO `station_info` VALUES ('96689930', '117.20284', '31.80127', '96689930', '22029', '03');
INSERT INTO `station_info` VALUES ('96666382', '117.20759', '31.79791', '96666382', '22029', '03');
INSERT INTO `station_info` VALUES ('72944833', '117.244081', '31.796873', '72944833', '22029', '03');
INSERT INTO `station_info` VALUES ('256612362', '117.23523', '31.79575', '256612362', '21760', '03');
INSERT INTO `station_info` VALUES ('98294529', '117.26167', '31.79701', '98294529', '21761', '03');
INSERT INTO `station_info` VALUES ('98104833', '117.23774', '31.79174', '98104833', '22029', '03');
INSERT INTO `station_info` VALUES ('98104834', '117.23774', '31.79174', '98104834', '22029', '03');
INSERT INTO `station_info` VALUES ('256513282', '117.29158', '31.79571', '256513282', '22024', '03');
INSERT INTO `station_info` VALUES ('98294327', '117.23077', '31.79536', '98294327', '22029', '03');
INSERT INTO `station_info` VALUES ('256612608', '117.24769', '31.79548', '256612608', '21760', '03');
INSERT INTO `station_info` VALUES ('140442767', '117.20531', '31.79528', '140442767', '22029', '03');
INSERT INTO `station_info` VALUES ('96666423', '117.20759', '31.79791', '96666423', '22029', '03');
INSERT INTO `station_info` VALUES ('139018117', '117.24541', '31.80934', '139018117', '21761', '03');
INSERT INTO `station_info` VALUES ('98263307', '117.22095', '31.78958', '98263307', '21768', '03');
INSERT INTO `station_info` VALUES ('217255470', '117.25031', '31.79154', '217255470', '22029', '03');
INSERT INTO `station_info` VALUES ('256613377', '117.28522', '31.7947', '256613377', '21760', '03');
INSERT INTO `station_info` VALUES ('73327563', '117.19621', '31.80731', '73327563', '22116', '03');
INSERT INTO `station_info` VALUES ('256513024', '117.29199', '31.79763', '256513024', '22024', '03');
INSERT INTO `station_info` VALUES ('137257128', '117.20284', '31.80127', '137257128', '22029', '03');
INSERT INTO `station_info` VALUES ('256513026', '117.29199', '31.79763', '256513026', '22024', '03');
INSERT INTO `station_info` VALUES ('136645536', '117.196111', '31.807222', '136645536', '22029', '03');
INSERT INTO `station_info` VALUES ('256612097', '117.212', '31.7972', '256612097', '21760', '03');
INSERT INTO `station_info` VALUES ('136645535', '117.196111', '31.807222', '136645535', '22029', '03');
INSERT INTO `station_info` VALUES ('256613386', '117.28522', '31.7947', '256613386', '21760', '03');
INSERT INTO `station_info` VALUES ('136645534', '117.201735', '31.806948', '136645534', '22029', '03');
INSERT INTO `station_info` VALUES ('73293805', '117.21488', '31.79496', '73293805', '22029', '03');
INSERT INTO `station_info` VALUES ('138965643', '117.26449', '31.80191', '138965643', '21761', '03');
INSERT INTO `station_info` VALUES ('98211372', '117.26114', '31.79355', '98211372', '22114', '03');
INSERT INTO `station_info` VALUES ('139017099', '117.207502', '31.80155', '139017099', '22029', '03');
INSERT INTO `station_info` VALUES ('256612618', '117.24769', '31.79548', '256612618', '21760', '03');
INSERT INTO `station_info` VALUES ('73980140', '117.19214', '31.81058', '73980140', '22116', '03');
INSERT INTO `station_info` VALUES ('96665866', '117.22337', '31.78935', '96665866', '22029', '03');
INSERT INTO `station_info` VALUES ('72981485', '117.25308', '31.79319', '72981485', '22029', '03');
INSERT INTO `station_info` VALUES ('72981486', '117.25308', '31.79319', '72981486', '22029', '03');
INSERT INTO `station_info` VALUES ('256513536', '117.29509', '31.79672', '256513536', '22024', '03');
INSERT INTO `station_info` VALUES ('256613387', '117.28522', '31.7947', '256613387', '21760', '03');
INSERT INTO `station_info` VALUES ('140489346', '117.24134', '31.79616', '140489346', '22029', '03');
INSERT INTO `station_info` VALUES ('98116396', '117.25651', '31.78613', '98116396', '22114', '03');
INSERT INTO `station_info` VALUES ('140489345', '117.24134', '31.79616', '140489345', '22029', '03');
INSERT INTO `station_info` VALUES ('256611841', '117.22586', '31.79129', '256611841', '21760', '03');
INSERT INTO `station_info` VALUES ('73984492', '117.22597', '31.79129', '73984492', '22029', '03');
INSERT INTO `station_info` VALUES ('73984493', '117.22597', '31.79129', '73984493', '22029', '03');
INSERT INTO `station_info` VALUES ('256611840', '117.22586', '31.79129', '256611840', '21760', '03');
INSERT INTO `station_info` VALUES ('97559809', '117.29609', '31.79926', '97559809', '22024', '03');
INSERT INTO `station_info` VALUES ('98091026', '117.273949', '31.798172', '98091026', '21761', '03');
INSERT INTO `station_info` VALUES ('136768159', '117.19465', '31.81193', '136768159', '22116', '03');
INSERT INTO `station_info` VALUES ('217255468', '117.25031', '31.79154', '217255468', '22029', '03');
INSERT INTO `station_info` VALUES ('98091022', '117.267061', '31.797188', '98091022', '21761', '03');
INSERT INTO `station_info` VALUES ('137257130', '117.20284', '31.80127', '137257130', '22029', '03');
INSERT INTO `station_info` VALUES ('72976876', '117.26305', '31.79028', '72976876', '22114', '03');
INSERT INTO `station_info` VALUES ('96778508', '117.22871', '31.792114', '96778508', '22029', '03');
INSERT INTO `station_info` VALUES ('96671022', '117.22108', '31.79453', '96671022', '22029', '03');
INSERT INTO `station_info` VALUES ('96671021', '117.22108', '31.79453', '96671021', '22029', '03');
INSERT INTO `station_info` VALUES ('96556033', '117.279839', '31.79859', '96556033', '22024', '03');
INSERT INTO `station_info` VALUES ('136595871', '117.19961', '31.80828', '136595871', '22029', '03');
INSERT INTO `station_info` VALUES ('140456834', '117.29242', '31.80059', '140456834', '22024', '03');
INSERT INTO `station_info` VALUES ('139017100', '117.207502', '31.80155', '139017100', '22029', '03');
INSERT INTO `station_info` VALUES ('256612864', '117.26205', '31.80008', '256612864', '21760', '03');
INSERT INTO `station_info` VALUES ('137815740', '117.287754', '31.800475', '137815740', '21760', '03');
INSERT INTO `station_info` VALUES ('256612865', '117.26205', '31.80008', '256612865', '21760', '03');
INSERT INTO `station_info` VALUES ('97559810', '117.29609', '31.79926', '97559810', '22024', '03');
INSERT INTO `station_info` VALUES ('256612107', '117.21449', '31.79403', '256612107', '21760', '03');
INSERT INTO `station_info` VALUES ('139047818', '117.19211', '31.81061', '139047818', '22116', '03');
INSERT INTO `station_info` VALUES ('256613632', '117.30887', '31.79926', '256613632', '21760', '03');
INSERT INTO `station_info` VALUES ('96666373', '117.20759', '31.79791', '96666373', '22029', '03');
INSERT INTO `station_info` VALUES ('256612352', '117.23523', '31.79575', '256612352', '21760', '03');
INSERT INTO `station_info` VALUES ('265332555', '117.27973', '31.79854', '265332555', '22024', '03');
INSERT INTO `station_info` VALUES ('137815738', '117.287754', '31.800475', '137815738', '21760', '03');

-- ----------------------------
-- Table structure for sys_datagroup
-- ----------------------------
DROP TABLE IF EXISTS `sys_datagroup`;
CREATE TABLE `sys_datagroup` (
  `datagroup` varchar(40) DEFAULT NULL COMMENT '使用单位编码',
  `groupname` varchar(40) DEFAULT NULL COMMENT '使用单位名称',
  `groupdes` varchar(200) DEFAULT NULL COMMENT '使用单位描述',
  `groupstate` int(11) DEFAULT NULL COMMENT '使用单位状态',
  `groupdname` varchar(40) DEFAULT NULL COMMENT '使用单位域名',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `creattime` varchar(20) DEFAULT NULL COMMENT '创建单位',
  `locationorder` int(11) DEFAULT '999' COMMENT '排序',
  `bindsysurls` varchar(20) DEFAULT '' COMMENT '绑定系统的url用来根据请求地址获得datagroup',
  `odatagroup` varchar(40) DEFAULT NULL COMMENT '管理datagroup',
  `grouptype` int(11) DEFAULT NULL COMMENT '群组类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_datagroup
-- ----------------------------
INSERT INTO `sys_datagroup` VALUES ('000800010005', '流程控制', '流程控制', '1', 'localhost', 'superadmin', '2021-11-03 09:34:14', '1', '', '000800010005', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `info` varchar(400) DEFAULT NULL COMMENT '日志内容',
  `operator` varchar(20) DEFAULT NULL COMMENT '操作人',
  `operatorip` varchar(32) DEFAULT NULL COMMENT '操作IP',
  `Browser` varchar(20) DEFAULT NULL COMMENT '浏览器类别',
  `BrowserVersion` varchar(20) DEFAULT NULL COMMENT '浏览器版本',
  `OperatingSystem` varchar(20) DEFAULT NULL COMMENT '客户端操作系统',
  `operatortime` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `logType` varchar(20) DEFAULT NULL COMMENT '日志类型：info,warn,err',
  `datagroup` varchar(20) NOT NULL DEFAULT '00000' COMMENT '数据所属组织机构',
  `operatortype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '账号：superadmin于[2021-11-03 13:47:45]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-03 13:47:45', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('2', '账号：superadmin于[2021-11-03 14:22:18]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-03 14:22:18', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('3', '账号：superadmin于[2021-11-09 09:27:08]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-09 09:27:08', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('4', '用户[superadmin]于2021-11-09 10:04:32退出登录成功', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-09 10:04:32', '1', '000800010005', 'delete');
INSERT INTO `sys_log` VALUES ('5', '账号：superadmin于[2021-11-09 10:04:39]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-09 10:04:39', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('6', '账号：superadmin于[2021-11-10 08:45:07]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-10 08:45:07', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('7', '账号：superadmin于[2021-11-11 09:04:47]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-11 09:04:47', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('8', '账号：superadmin于[2021-11-12 14:29:20]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-12 14:29:20', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('9', '账号：superadmin于[2021-11-15 09:19:19]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-15 09:19:19', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('10', '账号：superadmin于[2021-11-22 09:15:54]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-11-22 09:15:54', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('11', '账号：superadmin于[2021-12-03 10:35:45]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-12-03 10:35:45', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('12', '账号：superadmin于[2021-12-03 13:38:27]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-12-03 13:38:27', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('13', '账号：superadmin于[2021-12-03 13:56:57]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-12-03 13:56:57', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('14', '账号：superadmin于[2021-12-03 16:50:19]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME8', '86.0.4240.198', 'WINDOWS_10', '2021-12-03 16:50:19', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('15', '账号：superadmin于[2021-12-03 17:02:07]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-12-03 17:02:07', '0', '000800010005', 'login');
INSERT INTO `sys_log` VALUES ('16', '账号：superadmin于[2021-12-06 08:38:31]尝试登录系统登录结果为：登录成功！', 'superadmin', '127.0.0.1', 'CHROME9', '92.0.4515.107', 'WINDOWS_10', '2021-12-06 08:38:31', '0', '000800010005', 'login');

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `indexno` varchar(40) DEFAULT NULL COMMENT '编码',
  `modulecode` varchar(20) DEFAULT NULL COMMENT '模块编码',
  `path` varchar(200) DEFAULT NULL COMMENT '访问路径',
  `form` varchar(40) DEFAULT NULL COMMENT '关联表单',
  `scope` varchar(20) DEFAULT NULL COMMENT '区间',
  `action` varchar(120) DEFAULT NULL COMMENT '对应Action',
  `defaultPage` varchar(120) DEFAULT NULL COMMENT '默认page',
  `modulename` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序编码',
  `linkclass` varchar(400) DEFAULT NULL COMMENT '关联类',
  `linkpages` varchar(400) DEFAULT NULL COMMENT '关联文件',
  `initmethod` varchar(40) DEFAULT NULL COMMENT '初始化方法',
  `authcode` varchar(100) DEFAULT NULL COMMENT '授权码',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `creattime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `moduletype` varchar(10) DEFAULT 'API' COMMENT 'module类型',
  UNIQUE KEY `indexno` (`indexno`) USING BTREE,
  UNIQUE KEY `modulecode` (`modulecode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('SM2018120014', '0014', '/api/private/ajax', '', '', 'modules.business.AjaxDoBase', '', 'Ajax方法业务级[需要验证登录]', '0', '', '', '', '', 'superadmin', '2019-03-25 22:39:37', 'API');
INSERT INTO `sys_module` VALUES ('SM2018120015', '0015', '/api/public/ajax', '', '', 'modules.business.sys.pub.AjaxDoPub', 'public', 'Ajax方法业务级', '0', '', '', '', '', 'superadmin', '2019-03-25 22:39:27', 'API');
INSERT INTO `sys_module` VALUES ('SM2018120016', '0016', '/api/private/sys/ajax', '', '', 'com.zm.base.AjaxDoBase', '', 'Ajax方法系统级[需要验证登录]', '0', '', '', '', '', 'superadmin', '2019-03-25 22:38:58', 'API');
INSERT INTO `sys_module` VALUES ('SM2018120017', '0017', '/api/public/sys/ajax', '', '', 'com.zm.base.pub.AjaxDoPub', 'public', 'Ajax方法系统级', '0', '', '', '', '', 'superadmin', '2019-01-07 20:20:23', 'API');
INSERT INTO `sys_module` VALUES ('SM2018120024', '0024', '/api/private/sysbase/file', '', '', 'com.zm.base.file.FileAction', '', '文件操作', '0', '', '', '', '', 'superadmin', '2019-03-25 22:40:40', 'API');
INSERT INTO `sys_module` VALUES ('SM2019050003', '0134', '/SMS/SUBHook', '', '', 'com.zm.msg.sms.SUBHookAction', '', '短信上行', '1', '', '', '', '', 'superadmin', '2019-05-21 09:06:15', 'API');
INSERT INTO `sys_module` VALUES ('SM2019110002', '0164', '/api/private/base', '', '', 'modules.base.sys.api.BaseAction', '', '基础接口（app）  ', '1', '', '', '', '', 'superadmin', '2019-11-20 11:29:54', 'API');
INSERT INTO `sys_module` VALUES ('SM2020050020', '0194', '/api/private/sysResource', '', '', 'modules.base.sys.api.sysResource.SysResourceAction', '', '资源管理（api）', '1', '', '', '', '', 'superadmin', '2020-05-12 11:12:13', 'API');
INSERT INTO `sys_module` VALUES ('SM2020050021', '0195', '/api/private/sysRole', '', '', 'modules.base.sys.api.sys.action.roleAction', '', '角色管理（api）', '1', '', '', '', '', 'superadmin', '2020-05-20 10:43:13', 'API');
INSERT INTO `sys_module` VALUES ('SM2020050022', '0196', '/api/private/sysPlatform', '', '', 'modules.base.sys.api.sysPlatform.SysPlatformAction', '', '平台管理（api）', '1', '', '', '', '', 'superadmin', '2020-05-20 10:43:13', 'API');
INSERT INTO `sys_module` VALUES ('SM2020050023', '0197', '/api/private/userList', '', '', 'modules.base.sys.api.sys.action.userAction', '', '用户管理（api）', '1', '', '', '', '', 'superadmin', '2020-05-20 10:43:13', 'API');
INSERT INTO `sys_module` VALUES ('SM2020050024', '0198', '/api/private/unitList', '', '', 'modules.base.sys.api.sysUnit.SysUnitAction', '', '组织机构列表(api)', '1', '', '', '', '', 'superadmin', '2020-05-22 10:43:13', 'API');
INSERT INTO `sys_module` VALUES ('SM2020050027', '0201', '/api/private/moduleList', '', '', 'modules.base.sys.api.mkpz.SysModuleAction', '', '模块管理（api）', '1', '', '', '', '', 'superadmin', '2020-05-28 10:43:13', 'API');
INSERT INTO `sys_module` VALUES ('SM2020060001', '0034', '/api/private/appAuthorization', '', '', 'modules.base.sys.api.appmanage.AppAuthorizationAction', '', 'App管理', '1', '', '', '', '', 'superadmin', '2019-04-12 08:31:53', 'API');
INSERT INTO `sys_module` VALUES ('SM2020010012', '1243', '/api/private/system/code/codeCreate', '', '', 'modules.business.sys.codemaker.CodeToolsAction', '', '代码生成', '1', '', '', '', '', 'superadmin', '2019-04-12 08:31:53', 'API');
INSERT INTO `sys_module` VALUES ('SM2020010009', '1240', '/api/private/systemSetting/APPManage', '', '', 'modules.base.sys.api.appmanage.BusinessAppAction', '', 'APP管理接口', '0', '', '', '', '', 'superadmin', '2020-01-15 11:25:40', 'API');
INSERT INTO `sys_module` VALUES ('SM2020010010', '1241', '/api/private/systemSetting/positioncnf', '', '', 'modules.base.sys.api.positionmanage.SysPositionAction', '', '职务管理接口', '0', '', '', '', '', 'superadmin', '2020-01-16 16:22:42', 'API');
INSERT INTO `sys_module` VALUES ('SM2020060002', '1244', '/api/private/test', '', '', 'modules.business.sys.TestAction', '', '测试模块', '1', '', '', '', '', 'superadmin', '2020-06-30 19:31:36', 'API');
INSERT INTO `sys_module` VALUES ('SM2020070001', '1245', '/api/private/systemSetting/sysConfig', '', '', 'modules.base.sys.api.syscnf.sysConfigAction', '', '参数配置', '1', '', '', '', '', 'superadmin', '2020-07-04 10:09:22', 'API');
INSERT INTO `sys_module` VALUES ('SM2020070002', '1246', '/api/private/sys/safety/safetyManager', '', '', 'modules.base.sys.api.sys.action.safetyAction', '', '安全日志', '1', '', '', '', '', 'superadmin', '2020-07-06 16:54:02', 'API');
INSERT INTO `sys_module` VALUES ('SM2020070003', '1247', '/api/private/common', '', '', 'modules.base.sys.api.sys.action.CommAction', '', '共用模块', '1', '', '', '', '', 'superadmin', '2020-07-07 08:04:03', 'API');
INSERT INTO `sys_module` VALUES ('SM2020070051', '1295', '/api/private/baseapi', '', '', 'modules.business.base.action.BaseAction', '', '基础接口（api）  ', '1', '', '', '', '', 'superadmin', '2020-07-13 14:40:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020090066', '1310', '/api/private/functionManager', '', '', 'modules.business.sys.interfacemanager.action.BaseFunctionListAction', '', '方法管理', '1', '', '', '', '', 'superadmin', '2020-09-17 09:33:51', 'API');
INSERT INTO `sys_module` VALUES ('SM2020090003', '1311', '/api/interfaceManager', '', '', 'modules.business.sys.interfacemanager.action.BaseInterfaceListAction', '', '接口管理', '1', '', '', '', '', 'superadmin', '2020-09-17 09:33:51', 'API');
INSERT INTO `sys_module` VALUES ('SM2020090067', '1312', '/api/private/document', '', '', 'modules.business.oa.document.action.Document_manager_interface', '', '文件仓库管理', '1', '', '', '', '', 'superadmin', '2020-09-23 11:37:07', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100006', '1319', '/api/private/base/action/codeSetClassify', '', '', 'modules.business.base.action.BaseCodeSetClassifyAction', '', '代码集配置-代码集分类', '1', '', '', '', '', 'superadmin', '2020-10-27 15:29:28', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100007', '1320', '/api/private/base/action/codeSet', '', '', 'modules.business.base.action.BaseCodeSetAction', '', '代码集配置-代码集', '1', '', '', '', '', 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100008', '1321', '/api/private/flow/data', '', '', 'modules.business.flow.action.Business_flow_dataAction', '', '流程列表', '1', '', '', '', '', 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100009', '1322', '/api/private/flow/node', '', '', 'modules.business.flow.action.Business_flow_nodeAction', '', '流程节点', '1', '', '', '', '', 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100010', '1323', '/api/private/flow/dataobj', null, null, 'modules.business.flow.action.Business_flow_dataobjAction', null, '流程编辑', '1', null, null, null, null, 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100011', '1324', '/api/private/flow/nodelist', null, null, 'modules.business.flow.action.Business_flow_nodelistAction', null, '节点', '1', '', '', '', '', 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100012', '1325', '/api/private/flow/linelist', null, null, 'modules.business.flow.action.Business_flow_linelistAction', null, '线', '1', '', '', '', '', 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100013', '1326', '/api/private/common', null, null, 'modules.business.common.action.CommonAction', null, '通用模块', '1', null, null, null, null, 'superadmin', '2020-10-27 16:46:24', 'API');
INSERT INTO `sys_module` VALUES ('SM2020100014', '1327', '/api/private/station', '', '', 'modules.business.station.Station_interface', 'public', '站点监测模块', '1', '', '', '', '', 'superadmin', '2020-10-27 16:46:24', 'API');

-- ----------------------------
-- Table structure for sys_page
-- ----------------------------
DROP TABLE IF EXISTS `sys_page`;
CREATE TABLE `sys_page` (
  `indexno` varchar(40) NOT NULL COMMENT '业务编码',
  `lnkmodule` varchar(40) DEFAULT NULL COMMENT '关联module',
  `name` varchar(40) DEFAULT NULL COMMENT '页面名称',
  `pdescript` varchar(200) DEFAULT NULL COMMENT '页面描述',
  `url` varchar(200) DEFAULT NULL COMMENT '页面URL',
  `type` varchar(20) DEFAULT NULL COMMENT '页面类型',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `creattime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`indexno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_page
-- ----------------------------

-- ----------------------------
-- Table structure for sys_platform
-- ----------------------------
DROP TABLE IF EXISTS `sys_platform`;
CREATE TABLE `sys_platform` (
  `platformcode` varchar(40) DEFAULT NULL COMMENT '系统编号',
  `platformname` varchar(40) DEFAULT NULL COMMENT '系统名称',
  `platformsname` varchar(40) DEFAULT NULL COMMENT '系统短名称',
  `platformalias` varchar(40) DEFAULT NULL COMMENT '系统别名',
  `platformicon` varchar(160) DEFAULT NULL COMMENT '系统图标',
  `platformoper` varchar(40) DEFAULT NULL COMMENT '系统操作人',
  `platformstate` int(11) DEFAULT NULL COMMENT '系统状态',
  `platformurl` varchar(160) DEFAULT NULL COMMENT '系统链接',
  `platformdecript` varchar(400) DEFAULT NULL COMMENT '系统描述',
  `platformorder` int(11) DEFAULT NULL COMMENT '系统排序',
  `defaulturl` varchar(200) DEFAULT NULL COMMENT '默认欢迎页url',
  `datagroup` varchar(40) DEFAULT '0000' COMMENT '数据所属群组',
  `platformdomain` varchar(140) NOT NULL COMMENT '系统链接，如果是共用系统就无须填写',
  `iconname` varchar(40) DEFAULT NULL COMMENT '图标名称',
  UNIQUE KEY `platform_code` (`platformcode`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_platform
-- ----------------------------
INSERT INTO `sys_platform` VALUES ('P_0099', '管理中心', '配置', 'MQ-System', 'ios-settings', 'superadmin', '1', '', '管理中心', '99', '', '000800010005', '/MQ-System-home', 'ios-settings');
INSERT INTO `sys_platform` VALUES ('P_0001', '流程控制', '流程控制', 'MQ-Flow', 'ios-school', 'superadmin', '0', '', '', '1', '', '000800010005', '/MQ-Flow-home', 'ios-school');

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `positionindex` varchar(40) NOT NULL DEFAULT '' COMMENT '职位编号',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `type` int(11) DEFAULT '0' COMMENT '职位类型',
  `location` int(11) DEFAULT NULL COMMENT '职位排序',
  `descript` varchar(200) DEFAULT NULL COMMENT '职位描述',
  `ext1` int(11) DEFAULT NULL COMMENT '扩展字段1',
  `ext2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `ext3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `creattime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `creatunitid` varchar(20) DEFAULT NULL COMMENT '创建单位',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`datagroup`,`positionindex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='职务表';

-- ----------------------------
-- Records of sys_position
-- ----------------------------

-- ----------------------------
-- Table structure for sys_resouce_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_resouce_button`;
CREATE TABLE `sys_resouce_button` (
  `indexno` varchar(120) DEFAULT NULL,
  `resouceindex` varchar(120) DEFAULT NULL,
  `btnname` varchar(120) DEFAULT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `clazz` varchar(600) DEFAULT NULL,
  `method` varchar(600) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `creater` varchar(120) DEFAULT NULL,
  `creattime` varchar(120) DEFAULT NULL,
  `domid` varchar(120) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  UNIQUE KEY `indexno` (`indexno`,`datagroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源按钮表';

-- ----------------------------
-- Records of sys_resouce_button
-- ----------------------------

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `indexno` varchar(40) NOT NULL COMMENT '编码',
  `treeid` varchar(40) DEFAULT NULL COMMENT '结构编码',
  `pid` varchar(40) DEFAULT NULL COMMENT '父级编码',
  `name` varchar(40) DEFAULT NULL COMMENT '菜单name属性',
  `path` varchar(100) DEFAULT NULL COMMENT '菜单路径',
  `title` varchar(40) DEFAULT NULL COMMENT '菜单名称',
  `sysname` varchar(40) DEFAULT NULL COMMENT '所在系统名称',
  `hideInMenu` int(11) DEFAULT NULL COMMENT '是否在菜单栏中隐藏',
  `hideInBread` int(11) DEFAULT NULL COMMENT '是否在面包屑中隐藏',
  `notCache` int(11) DEFAULT NULL COMMENT '是否缓存',
  `showAlways` int(11) DEFAULT NULL COMMENT '是否一直显示',
  `redirect` varchar(100) DEFAULT NULL COMMENT '路径重定向',
  `component` varchar(50) DEFAULT NULL COMMENT '组件名称',
  `datagroup` varchar(40) NOT NULL DEFAULT '0000' COMMENT '数据分组',
  `platcode` varchar(40) DEFAULT NULL COMMENT '所在系统编号',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `location` int(11) DEFAULT NULL COMMENT '排序',
  `clazz` varchar(100) DEFAULT NULL COMMENT '对应处理方法类',
  `method` varchar(20) DEFAULT NULL COMMENT '对应处理方法',
  `enabled` int(11) DEFAULT '1' COMMENT '可用状态 1 表示可用 0 表示禁用',
  PRIMARY KEY (`indexno`,`datagroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('resource0001', '0003', '0', 'systemConfig', '/systemConfig', '系统管理', 'MQ-System', '0', '0', '0', '1', '/systemConfig/userinfo', 'parentview', '000800010005', 'P_0099', 'ios-settings', '2', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource00010002', '00030001', '0003', 'userManager', '/userManager', '用户管理', 'MQ-System', '0', '0', '0', '1', '/userManager/userList', 'parentview', '000800010005', 'P_0099', 'ios-people', '0', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource000100020001', '000300010001', '00030001', 'userList', '/userList', '用户列表', 'MQ-System', '0', '0', '0', '0', '', 'userList', '000800010005', 'P_0099', 'ios-people', '0', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource00010003', '00030005', '0003', 'roleList', '/roleList', '角色管理', 'MQ-System', '0', '0', '0', '0', '', 'roleList', '000800010005', 'P_0099', 'ios-contacts', '4', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource00010004', '00030004', '0003', 'resourceList', '/resourceList', '系统资源', 'MQ-System', '0', '0', '0', '0', '', 'resourceList', '000800010005', 'P_0099', 'ios-albums', '3', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource000100060001', '00030006', '0003', 'userinfo', '/userinfo', '个人信息', 'MQ-System', '0', '0', '0', '0', '', 'userinfo', '000800010005', 'P_0099', 'ios-contact', '5', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource000100060003', '00030007', '0003', 'updatepsw', '/updatepsw', '更改密码', 'MQ-System', '0', '0', '0', '0', '', 'updatepsw', '000800010005', 'P_0099', 'ios-lock', '6', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202005250001', '00030003', '0003', 'platformList', '/platformList', '平台管理', 'MQ-System', '0', '0', '0', '0', '', 'platformList', '000800010005', 'P_0099', 'ios-grid', '2', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202005270001', '00030002', '0003', 'unitList', '/unitList', '组织机构', 'MQ-System', '0', '0', '0', '0', '', 'unitList', '000800010005', 'P_0099', 'iacfont iacfont_tuoputu', '1', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202006280001', '00030008', '0003', 'moduleList', '/moduleList', '模块管理', 'MQ-System', '0', '0', '0', '0', '', 'moduleList', '000800010005', 'P_0099', 'ios-settings', '7', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202006280002', '00030009', '0003', 'codetools', '/codetools', '开发工具', 'MQ-System', '0', '0', '0', '1', '/codetools/codeMake', 'parentview', '000800010005', 'P_0099', 'iacfont iacfont_baoxiu', '8', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202006280003', '000300090001', '00030009', 'codeMake', '/codeMake', '代码生成', 'MQ-System', '0', '0', '0', '0', '', 'codeMake', '000800010005', 'P_0099', 'ios-settings', '0', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202006290001', '00030010', '0003', 'positionList', '/positionList', '职务管理', 'MQ-System', '0', '0', '0', '0', '', 'positionList', '000800010005', 'P_0099', 'iacfont iacfont_zaiduban', '9', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202007040001', '00030011', '0003', 'parameter', '/parameter', '参数配置', 'MQ-System', '0', '0', '0', '0', '', 'parameter', '000800010005', 'P_0099', 'iacfont iacfont_shezhi', '10', null, null, '1');
INSERT INTO `sys_resource` VALUES ('resource202007040002', '00030012', '0003', 'safeLogs', '/safeLogs', '安全日志', 'MQ-System', '0', '0', '0', '1', '', 'parentview', '000800010005', 'P_0099', 'iacfont iacfont_suo', '11', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202007040003', '000300120001', '00030012', 'sysLogs', '/sysLogs', '系统日志', 'MQ-System', '0', '0', '0', '0', '', 'sysLogs', '000800010005', 'P_0099', 'iacfont iacfont_caozuorizhi', '0', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202007040004', '000300120002', '00030012', 'onLineMonitor', '/onLineMonitor', '在线用户', 'MQ-System', '0', '0', '0', '0', '', 'onlineMonitor', '000800010005', 'P_0099', 'iacfont iacfont_kaishiduban', '1', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202007040005', '000300120003', '00030012', 'accessControl', '/accessControl', 'ACL配置', 'MQ-System', '0', '0', '0', '0', '', 'accessControl', '000800010005', 'P_0099', 'iacfont iacfont_aislogo', '2', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202009170001', '00030013', '0003', 'interfaceManager', '/interfaceManager', '接口管理', 'MQ-System', '0', '0', '0', '0', '', 'interfaceManager', '000800010005', 'P_0099', 'iacfont_gonglve', '12', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202009170002', '00030014', '0003', 'functionManager', '/functionManager', '方法管理', 'MQ-System', '0', '0', '0', '0', '', 'functionManager', '000800010005', 'P_0099', 'iacfont_tongzhi', '13', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202010270001', '00030015', '0003', 'Codeset', '/Codeset', '代码集管理', 'MQ-System', '0', '0', '0', '0', '', 'parentview', '000800010005', 'P_0099', 'iacfont_shujuku', '14', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202010270002', '000300150001', '00030015', 'codeSetClassify', '/codeSetClassify', '代码集分类', 'MQ-System', '0', '0', '0', '0', '', 'codeSetClassify', '000800010005', 'P_0099', 'iacfont_shujuku', '0', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202010270003', '000300150002', '00030015', 'codeSet', '/codeSet', '代码集', 'MQ-System', '0', '0', '0', '0', '', 'codeSet', '000800010005', 'P_0099', 'iacfont_shujuku', '1', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202110300001', '000300090002', '00030009', 'ssh', '/ssh', 'SSH端', 'MQ-System', '0', '0', '0', '0', '', 'SSHManager', '000800010005', 'P_0099', 'iacfont_yunweiguanli1', '1', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202110300002', '000300090003', '00030009', 'influxDBManager', '/influxDBManager', '时序调试', 'MQ-System', '0', '0', '0', '0', '', 'influxDBManager', '000800010005', 'P_0099', 'iacfont_shujuku', '2', '', '', '1');
INSERT INTO `sys_resource` VALUES ('resource202111120001', '0001', '0', 'test', '/test', '测试记录', 'MQ-System', '0', '0', '0', '0', '', 'testList', '000800010005', 'P_0099', 'iacfont_round', '0', null, null, '1');
INSERT INTO `sys_resource` VALUES ('resource202112030001', '0002', '0', 'warn_map', '/warn_map', '智能插座', 'MQ-System', '0', '0', '0', '0', '', 'warn_map', '000800010005', 'P_0099', 'iacfont_menjin', '1', null, null, '1');

-- ----------------------------
-- Table structure for sys_resource_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource_app`;
CREATE TABLE `sys_resource_app` (
  `indexno` varchar(40) NOT NULL COMMENT '编码',
  `treeid` varchar(40) DEFAULT NULL COMMENT '结构编码',
  `pid` varchar(40) DEFAULT NULL COMMENT '父级编码',
  `name` varchar(40) DEFAULT NULL COMMENT '菜单name属性',
  `path` varchar(100) DEFAULT NULL COMMENT '菜单路径',
  `title` varchar(40) DEFAULT NULL COMMENT '菜单名称',
  `sysname` varchar(40) DEFAULT NULL COMMENT '所在系统名称',
  `hideInMenu` int(11) DEFAULT NULL COMMENT '是否在菜单栏中隐藏',
  `hideInBread` int(11) DEFAULT NULL COMMENT '是否在面包屑中隐藏',
  `notCache` int(11) DEFAULT NULL COMMENT '是否缓存',
  `showAlways` int(11) DEFAULT NULL COMMENT '是否一直显示',
  `redirect` varchar(100) DEFAULT NULL COMMENT '路径重定向',
  `component` varchar(50) DEFAULT NULL COMMENT '组件名称',
  `datagroup` varchar(40) DEFAULT '0000' COMMENT '数据分组',
  `platcode` varchar(40) DEFAULT NULL COMMENT '所在系统编号',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `location` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`indexno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_resource_app
-- ----------------------------

-- ----------------------------
-- Table structure for sys_resource_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource_button`;
CREATE TABLE `sys_resource_button` (
  `indexno` varchar(120) DEFAULT NULL,
  `resouceindex` varchar(120) DEFAULT NULL,
  `btnname` varchar(120) DEFAULT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `clazz` varchar(600) DEFAULT NULL,
  `method` varchar(600) DEFAULT NULL,
  `state` double DEFAULT NULL,
  `creater` varchar(120) DEFAULT NULL,
  `creattime` varchar(120) DEFAULT NULL,
  `domid` varchar(120) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  UNIQUE KEY `indexno` (`indexno`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源按钮表';

-- ----------------------------
-- Records of sys_resource_button
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` varchar(20) NOT NULL COMMENT '角色id',
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `type` int(11) DEFAULT '0' COMMENT '角色类型 0 系统角色[无法操作] 1业务基础角色[无法操作] 2业务角色[可以操作]',
  `location` int(11) DEFAULT NULL COMMENT '角色排序',
  `descript` varchar(200) DEFAULT NULL COMMENT '角色说明描述',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `creattime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `creatunitid` varchar(20) DEFAULT NULL COMMENT '创建单位',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  `platformcode` varchar(40) DEFAULT NULL COMMENT '所属平台',
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0001', '超级管理员', '0', '0', '超级管理员', 'superadmin', null, '0001', '000800010005', '');
INSERT INTO `sys_role` VALUES ('0002', '管理员角色', '0', '0', '管理员角色', 'superadmin', '2020-10-30 18:43:54', '', '000800010005', '');
INSERT INTO `sys_role` VALUES ('0010', '公用角色', '0', '0', '公用角色默认角色', 'superadmin', '2020-10-30 18:43:54', '', '000800010005', '');

-- ----------------------------
-- Table structure for sys_role_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_button`;
CREATE TABLE `sys_role_button` (
  `roleid` varchar(120) DEFAULT NULL,
  `btninidexno` varchar(120) DEFAULT NULL,
  `state` double DEFAULT NULL,
  `creater` varchar(300) DEFAULT NULL,
  `createtime` varchar(300) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  UNIQUE KEY `roleid` (`roleid`,`btninidexno`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色按钮表';

-- ----------------------------
-- Records of sys_role_button
-- ----------------------------

-- ----------------------------
-- Table structure for sys_rolebtn
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolebtn`;
CREATE TABLE `sys_rolebtn` (
  `roleid` varchar(120) DEFAULT NULL,
  `btninidexno` varchar(120) DEFAULT NULL,
  `state` double DEFAULT NULL,
  `creater` varchar(300) DEFAULT NULL,
  `createtime` varchar(300) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  UNIQUE KEY `roleid` (`roleid`,`btninidexno`,`datagroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色按钮表';

-- ----------------------------
-- Records of sys_rolebtn
-- ----------------------------

-- ----------------------------
-- Table structure for sys_rolebtn_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolebtn_app`;
CREATE TABLE `sys_rolebtn_app` (
  `roleid` varchar(120) NOT NULL,
  `btninidexno` varchar(120) NOT NULL,
  `state` double DEFAULT NULL,
  `creater` varchar(300) DEFAULT NULL,
  `createtime` varchar(300) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`datagroup`,`roleid`,`btninidexno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='APP角色按钮表';

-- ----------------------------
-- Records of sys_rolebtn_app
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roleresource
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleresource`;
CREATE TABLE `sys_roleresource` (
  `roleid` varchar(40) NOT NULL COMMENT '角色编号',
  `resourceid` varchar(40) NOT NULL COMMENT '资源编号',
  `state` int(11) DEFAULT '1' COMMENT '当前状态',
  `creater` varchar(100) DEFAULT NULL COMMENT '创建人',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`roleid`,`resourceid`,`datagroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色资源表';

-- ----------------------------
-- Records of sys_roleresource
-- ----------------------------
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource0001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource00010002', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource000100020001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource00010003', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource00010004', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource000100060001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource000100060003', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202005250001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202005270001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202006280001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202006280002', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202006280003', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202006290001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202007040001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202007040002', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202007040003', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202007040004', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202007040005', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202009170001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202009170002', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202010270001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202010270002', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202010270003', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202110300001', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202110300002', '0', 'superadmin', '2021-11-03 09:34:14', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202111120001', '0', 'superadmin', '2021-11-12 14:31:02', '000800010005');
INSERT INTO `sys_roleresource` VALUES ('0001', 'resource202112030001', '0', 'superadmin', '2021-12-03 13:39:09', '000800010005');

-- ----------------------------
-- Table structure for sys_roleresource_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleresource_app`;
CREATE TABLE `sys_roleresource_app` (
  `indexno` varchar(40) NOT NULL,
  `roleid` varchar(40) NOT NULL,
  `resourceid` varchar(40) NOT NULL,
  `state` int(11) DEFAULT '1',
  `creater` varchar(100) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`indexno`,`roleid`,`resourceid`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色资源表（APP）';

-- ----------------------------
-- Records of sys_roleresource_app
-- ----------------------------

-- ----------------------------
-- Table structure for sys_safeconfig
-- ----------------------------
DROP TABLE IF EXISTS `sys_safeconfig`;
CREATE TABLE `sys_safeconfig` (
  `safetype` int(11) NOT NULL COMMENT '安全类型 1禁止 0允许',
  `note` varchar(1000) DEFAULT NULL COMMENT '操作对象',
  `ext1` int(11) DEFAULT NULL COMMENT '扩展字段1',
  `ext2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `ext3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`safetype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='ADL配置表';

-- ----------------------------
-- Records of sys_safeconfig
-- ----------------------------
INSERT INTO `sys_safeconfig` VALUES ('0', '', '1', null, null, '0000');
INSERT INTO `sys_safeconfig` VALUES ('1', '', '0', null, null, '0000');

-- ----------------------------
-- Table structure for sys_unit
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `treeid` varchar(40) NOT NULL COMMENT '机构编码',
  `typeid` varchar(40) DEFAULT NULL COMMENT '机构类型',
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `infotype` int(11) DEFAULT '1' COMMENT '单位性质',
  `location` int(11) DEFAULT NULL COMMENT '排序',
  `descript` varchar(2000) DEFAULT NULL COMMENT '机构描述',
  `bindipurl` varchar(400) DEFAULT NULL COMMENT '绑定域名',
  `linkadd` varchar(100) DEFAULT NULL COMMENT '关联地址',
  `linktel` varchar(100) DEFAULT NULL COMMENT '关联电话',
  `linkmail` varchar(100) DEFAULT NULL COMMENT '邮件',
  `linkweb` varchar(100) DEFAULT NULL COMMENT '关联页面',
  `pcode` varchar(100) DEFAULT '0' COMMENT '父机构编码',
  `dcode` varchar(100) DEFAULT NULL COMMENT '部门编码',
  `datagroup` varchar(40) NOT NULL DEFAULT '0000' COMMENT '数据集归属',
  PRIMARY KEY (`treeid`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构表';

-- ----------------------------
-- Records of sys_unit
-- ----------------------------
INSERT INTO `sys_unit` VALUES ('0001', '0002', '系统维护', '0', '0', '系统维护', '', '', '', '', '', '0', '', '000800010005');

-- ----------------------------
-- Table structure for sys_unittype
-- ----------------------------
DROP TABLE IF EXISTS `sys_unittype`;
CREATE TABLE `sys_unittype` (
  `indexno` varchar(40) DEFAULT NULL COMMENT '业务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '单位类型名称',
  `location` int(11) DEFAULT NULL COMMENT '排序',
  `descript` varchar(1000) DEFAULT NULL COMMENT '描述说明',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  UNIQUE KEY `indexno` (`indexno`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构类型表';

-- ----------------------------
-- Records of sys_unittype
-- ----------------------------
INSERT INTO `sys_unittype` VALUES ('0001', '办公机构', '1', '办公机构', '0000');
INSERT INTO `sys_unittype` VALUES ('0002', '系统维护', '0', '系统维护', '0000');
INSERT INTO `sys_unittype` VALUES ('0004', '用户单位', '2', '用户单位', '0000');
INSERT INTO `sys_unittype` VALUES ('0005', '分/子机构', '4', '分/子机构', '0000');
INSERT INTO `sys_unittype` VALUES ('0008', '部门机构', '3', '部门机构', '0000');
INSERT INTO `sys_unittype` VALUES ('0009', '组织机构分类', '5', '组织机构分类', '0000');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `loginname` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆账号',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `descript` varchar(1000) DEFAULT NULL COMMENT '描述',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `mobil` varchar(100) DEFAULT NULL COMMENT '手机',
  `location` int(11) DEFAULT NULL COMMENT '排序',
  `lastlogintime` varchar(20) DEFAULT NULL COMMENT '最后登陆时间',
  `lastloginip` varchar(32) DEFAULT NULL COMMENT '最后登陆ip',
  `logincount` int(11) DEFAULT NULL COMMENT '最后登陆时间',
  `enabled` int(11) DEFAULT '0' COMMENT '是否锁定 0 表示可以登陆 1 表示 锁定',
  `unittreeid` varchar(40) DEFAULT NULL COMMENT '所属单位treeId',
  `iconname` varchar(200) DEFAULT NULL COMMENT '对应头像名称',
  `iconurl` varchar(200) DEFAULT NULL COMMENT '对应头像路径',
  `nickname` varchar(200) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(10) DEFAULT '1' COMMENT '性别',
  `accounttype` varchar(20) DEFAULT NULL COMMENT '账号类型',
  `onlinestate` int(11) DEFAULT '0' COMMENT '登录状态 1表示在线  0表示离线',
  `datagroup` varchar(40) NOT NULL DEFAULT '0000' COMMENT '用户群组',
  PRIMARY KEY (`loginname`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('admin', '管理员', '576f2da2221d710935131a7541741f23017c540951', '管理员', '管理员', '', '0', '2018-10-14 10:42:21', '', '0', '0', '0001', '', '', '', '1', '', '0', '000800010005');
INSERT INTO `sys_user` VALUES ('superadmin', '超级管理员', '41eddd537d047f2b1a0a5b002b0b6e', '超级管理员', '超级管理员', '', '0', '2018-10-14 10:42:21', '', '0', '0', '0001', '', '', '', '1', '', '0', '000800010005');

-- ----------------------------
-- Table structure for sys_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_relation`;
CREATE TABLE `sys_user_relation` (
  `indexno` varchar(50) NOT NULL COMMENT '业务编码',
  `loginname` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `unitid` varchar(50) DEFAULT NULL COMMENT '机构编码',
  `unitname` varchar(40) DEFAULT NULL COMMENT '机构名称',
  `relationid` varchar(40) DEFAULT NULL COMMENT '关联编码',
  `relationname` varchar(40) DEFAULT NULL COMMENT '关联名称',
  `relationtype` varchar(40) DEFAULT NULL COMMENT '关系类型编码',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `creater` varchar(50) DEFAULT NULL COMMENT '创建人',
  `creatime` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `dataGroup` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`indexno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户职位关系表';

-- ----------------------------
-- Records of sys_user_relation
-- ----------------------------

-- ----------------------------
-- Table structure for sys_userposition
-- ----------------------------
DROP TABLE IF EXISTS `sys_userposition`;
CREATE TABLE `sys_userposition` (
  `loginname` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆账号',
  `unitindex` varchar(40) DEFAULT NULL COMMENT '职务所在单位',
  `positionindex` varchar(40) NOT NULL COMMENT '职务编号',
  `datagroup` varchar(40) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '状态 1有效 -1 失效',
  `unitdatagroup` varchar(40) DEFAULT NULL COMMENT '职务所在组织机构',
  PRIMARY KEY (`loginname`,`datagroup`,`positionindex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户职务表';

-- ----------------------------
-- Records of sys_userposition
-- ----------------------------

-- ----------------------------
-- Table structure for sys_userrole
-- ----------------------------
DROP TABLE IF EXISTS `sys_userrole`;
CREATE TABLE `sys_userrole` (
  `loginname` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆账号',
  `roleid` varchar(20) NOT NULL COMMENT '角色id',
  `optime` varchar(100) DEFAULT NULL COMMENT '操作时间',
  `opter` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`loginname`,`roleid`,`datagroup`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_userrole
-- ----------------------------
INSERT INTO `sys_userrole` VALUES ('admin', '0004', '2021-11-03 09:34:14', 'superadmin', '000800010005');
INSERT INTO `sys_userrole` VALUES ('superadmin', '0001', '2021-11-03 09:34:14', 'superadmin', '000800010005');

-- ----------------------------
-- Table structure for sys_userunit
-- ----------------------------
DROP TABLE IF EXISTS `sys_userunit`;
CREATE TABLE `sys_userunit` (
  `loginname` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆账号',
  `unitindex` varchar(40) NOT NULL DEFAULT '' COMMENT '所在部门',
  `datagroup` varchar(20) NOT NULL DEFAULT '0000' COMMENT '数据所属组织机构',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '状态 1有效 -1 失效',
  `isdefault` int(11) DEFAULT NULL COMMENT '是否默认部门',
  PRIMARY KEY (`loginname`,`datagroup`,`unitindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户部门表';

-- ----------------------------
-- Records of sys_userunit
-- ----------------------------
INSERT INTO `sys_userunit` VALUES ('superadmin', '0001', '0000', '1', '0');

-- ----------------------------
-- Table structure for t_base_errmsg
-- ----------------------------
DROP TABLE IF EXISTS `t_base_errmsg`;
CREATE TABLE `t_base_errmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `errmsgzh` varchar(400) DEFAULT NULL COMMENT '错误信息中文',
  `errmsgen` varchar(400) DEFAULT NULL COMMENT '错误信息英文',
  `errcode` varchar(40) NOT NULL COMMENT '错误编码00000-00099系统级别 00100-00999业务级别01000-99999 客户业务级别',
  `creater` varchar(40) DEFAULT NULL COMMENT '创建人',
  `modecode` varchar(40) DEFAULT NULL COMMENT '妯″潡缂栧彿',
  `modename` varchar(100) DEFAULT NULL COMMENT '妯″潡鍚嶇О',
  `state` int(11) DEFAULT NULL COMMENT '鐘舵€?-1 澶辨晥 0 寰呭鏍?1鐢熸晥',
  `creattime` varchar(20) DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `solution` varchar(1000) DEFAULT NULL COMMENT '瑙ｅ喅鏂规璇存槑',
  `errlevel` int(11) DEFAULT NULL COMMENT '閿欒绾у埆 1 绯荤粺绾у埆 2鍩虹绾у埆 3涓氬姟绾у埆',
  `datagroup` varchar(20) NOT NULL DEFAULT '00000' COMMENT '数据所属组织机构',
  PRIMARY KEY (`id`),
  UNIQUE KEY `errcode` (`errcode`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='错误编码信息表';

-- ----------------------------
-- Records of t_base_errmsg
-- ----------------------------
INSERT INTO `t_base_errmsg` VALUES ('1', '返回结果正常', null, '00000', 'superadmin', 'SYS0001', '系统框架', '1', null, '返回结果正常无须检查', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('2', 'ApiKey错误', null, '00100', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查ApiKey的正确性', '2', '');
INSERT INTO `t_base_errmsg` VALUES ('3', 'SecretKey错误', null, '00101', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查SecretKey的正确性', '2', '');
INSERT INTO `t_base_errmsg` VALUES ('4', '返回结果JSON为NULL', null, '00001', 'superadmin', 'SYS0001', '系统框架', '1', null, '无返回JSON数据请检查出入参数', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('5', 'Token无效', null, '00102', 'superadmin', 'MOD0001', 'Token模块', '1', null, '检查Token的合法性{1、token错误；2、token已被覆盖获取}，如果确认没有问题建议重新获取token', null, '');
INSERT INTO `t_base_errmsg` VALUES ('6', 'Token格式错误', null, '00103', 'superadmin', 'MOD0001', 'Token模块', '1', null, '检查Token，token不符合格式规范，建议向后台反馈查看token生成规则是否正确', null, '');
INSERT INTO `t_base_errmsg` VALUES ('7', 'Token过期', null, '00104', 'superadmin', 'MOD0001', 'Token模块', '1', null, 'Token已经过期请重新获取Token后再操作', null, '');
INSERT INTO `t_base_errmsg` VALUES ('8', 'Token非法', null, '00105', 'superadmin', 'MOD0001', 'Token模块', '1', null, 'Token非法盗用当前token和当前用户不匹配，都说了非法了相信您应该知道怎么做了吧？', null, '');
INSERT INTO `t_base_errmsg` VALUES ('9', 'doAction参数错误', null, '00002', 'superadmin', 'SYS0001', '系统框架', '1', null, '错误的接口调用参数doAction', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('10', 'ApiKey未传入', null, '00106', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查ApiKey是否已按照要求传入', null, '');
INSERT INTO `t_base_errmsg` VALUES ('11', 'SecretKey未传入', null, '00107', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查SecretKey是否已按照要求传入', null, '');
INSERT INTO `t_base_errmsg` VALUES ('12', 'ApiKey,SecretKey未传入', null, '00108', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查ApiKey,SecretKey是否已按照要求传入', null, '');
INSERT INTO `t_base_errmsg` VALUES ('13', 'ApiKey,Token未传入', null, '00109', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查Token是否已按照要求传入', null, '');
INSERT INTO `t_base_errmsg` VALUES ('14', 'Token未传入', null, '00110', 'superadmin', 'MOD0001', 'Token模块', '1', null, '请检查ApiKey,Token是否已按照要求传入', null, '');
INSERT INTO `t_base_errmsg` VALUES ('15', '绑定IP与请求IP不同', null, '00003', 'superadmin', 'SYS0001', '系统框架', '1', null, '请求IP不是系统绑定的IP请检查服务器绑定的IP是不是请求的IP', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('16', '请求接口成功，但存在异常数据', null, '00004', 'superadmin', 'SYS0001', '系统框架', '1', null, '请获取errdata JSONArray对象', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('17', '请求失败，请检查与云服务器是否通', null, '00005', 'superadmin', 'SYS0001', '系统框架', '1', null, '请求失败，请检查与云服务器是否通', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('18', '输入的账号密码格式不正确', null, '00006', 'superadmin', 'SYS0001', '系统框架', '1', null, '输入的账号密码不正确', '1', '');
INSERT INTO `t_base_errmsg` VALUES ('19', '系统繁忙，此时请开发者稍候再试', null, '-1', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('20', '请求成功', null, '0', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('21', '不合法的 cardid', null, '40073', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('22', '图片文件超长。', null, '40009', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('23', '不合法的Appid，请开发者检查AppID的正确性，避免异常字符，注意大小写。', null, '40013', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('24', '不合法的actioninfo，请开发者确认参数正确。', null, '40053', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('25', '不合法的卡券类型。', null, '40071', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('26', '不合法的编码方式。', null, '40072', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('27', '不合法的卡券状态。', null, '40078', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('28', '不合法的时间。', null, '40079', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('29', '不合法的CardExt。', null, '40080', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('30', '卡券已被核销。', null, '40099', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('31', '不合法的时间区间。', null, '40100', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('32', '不合法的Code码。', null, '40116', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('33', '不合法的库存数量。', null, '40122', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('34', '会员卡设置查过限制的 custom_field字段。', null, '40124', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('35', '卡券被用户删除或转赠中。', null, '40127', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('36', '缺少cardid参数。', null, '41012', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('37', '该cardid无接口权限。', null, '45030', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('38', '库存为0。', null, '45031', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('39', '用户领取次数超过限制get_limit', null, '45033', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('40', '缺少必填字段。', null, '41011', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('41', '字段超过长度限制，请参考相应接口的字段说明。', null, '45021', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('42', '不合法的Code码。', null, '40056', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('43', '自定义SN权限，请前往公众平台申请。', null, '43009', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('44', '无储值权限，请前往公众平台申请。', null, '43010', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('45', '获取access_token时AppSecret错误', null, '40001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('46', '不合法的凭证类型', null, '40002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('47', '不合法的OpenID', null, '40003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('48', '不合法的媒体文件类型', null, '40004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('49', '不合法的文件类型', null, '40005', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('50', '不合法的文件大小', null, '40006', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('51', '不合法的媒体文件id', null, '40007', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('52', '不合法的消息类型', null, '40008', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('54', '不合法的语音文件大小', null, '40010', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('55', '不合法的视频文件大小', null, '40011', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('56', '不合法的缩略图文件大小', null, '40012', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('58', '不合法的access_token', null, '40014', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('59', '不合法的菜单类型', null, '40015', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('60', '不合法的按钮个数', null, '40016', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('61', '不合法的按钮个数', null, '40017', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('62', '不合法的按钮名字长度', null, '40018', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('63', '不合法的按钮KEY长度', null, '40019', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('64', '不合法的按钮URL长度', null, '40020', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('65', '不合法的菜单版本号', null, '40021', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('66', '不合法的子菜单级数', null, '40022', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('67', '不合法的子菜单按钮个数', null, '40023', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('68', '不合法的子菜单按钮类型', null, '40024', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('69', '不合法的子菜单按钮名字长度', null, '40025', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('70', '不合法的子菜单按钮KEY长度', null, '40026', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('71', '不合法的子菜单按钮URL长度', null, '40027', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('72', '不合法的自定义菜单使用用户', null, '40028', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('73', '不合法的oauth_code', null, '40029', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('74', '不合法的refresh_token', null, '40030', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('75', '不合法的openid列表', null, '40031', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('76', '不合法的openid列表长度', null, '40032', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('77', '不合法的请求字符，不能包含uxxxx格式的字符', null, '40033', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('78', '不合法的参数', null, '40035', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('79', '不合法的请求格式', null, '40038', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('80', '不合法的URL长度', null, '40039', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('81', '不合法的分组id', null, '40050', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('82', '分组名字不合法', null, '40051', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('83', '参数不正确，请参考字段要求检查json 字段', null, '40097', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('84', '门店的类型不合法，必须严格按照附表的分类填写', null, '65104', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('85', '图片url 不合法，必须使用接口1 的图片上传接口所获取的url', null, '65105', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('86', '门店状态必须未审核通过', null, '65106', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('87', '扩展字段为不允许修改的状态', null, '65107', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('88', '门店名为空', null, '65109', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('89', '门店所在详细街道地址为空', null, '65110', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('90', '门店的电话为空', null, '65111', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('91', '门店所在的城市为空', null, '65112', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('92', '门店所在的省份为空', null, '65113', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('93', '图片列表为空', null, '65114', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('94', 'poi_id 不正确', null, '65115', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('95', '分组名字不合法', null, '40117', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('96', 'media_id大小不合法', null, '40118', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('97', 'button类型错误', null, '40119', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('98', 'button类型错误', null, '40120', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('99', '不合法的media_id类型', null, '40121', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('100', '微信号不合法', null, '40132', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('101', '不支持的图片格式', null, '40137', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('102', '请勿添加其他公众号的主页链接', null, '40155', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('103', '缺少access_token参数', null, '41001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('104', '缺少appid参数', null, '41002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('105', '缺少refresh_token参数', null, '41003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('106', '缺少secret参数', null, '41004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('107', '缺少多媒体文件数据', null, '41005', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('108', '缺少media_id参数', null, '41006', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('109', '缺少子菜单数据', null, '41007', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('110', '缺少oauth code', null, '41008', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('111', '缺少openid', null, '41009', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('112', 'access_token超时', null, '42001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('113', 'refresh_token超时', null, '42002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('114', 'oauth_code超时', null, '42003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('115', '用户需要重新授权', null, '42007', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('116', '需要GET请求', null, '43001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('117', '需要POST请求', null, '43002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('118', '需要HTTPS请求', null, '43003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('119', '需要接收者关注', null, '43004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('120', '需要好友关系', null, '43005', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('121', '需要将接收者从黑名单中移除', null, '43019', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('122', '多媒体文件为空', null, '44001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('123', 'POST的数据包为空', null, '44002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('124', '图文消息内容为空', null, '44003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('125', '文本消息内容为空', null, '44004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('126', '多媒体文件大小超过限制', null, '45001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('127', '消息内容超过限制', null, '45002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('128', '标题字段超过限制', null, '45003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('129', '描述字段超过限制', null, '45004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('130', '链接字段超过限制', null, '45005', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('131', '图片链接字段超过限制', null, '45006', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('132', '语音播放时间超过限制', null, '45007', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('133', '图文消息超过限制', null, '45008', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('134', '接口调用超过限制', null, '45009', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('135', '创建菜单个数超过限制', null, '45010', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('136', 'API调用太频繁，请稍候再试', null, '45011', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('137', '回复时间超过限制', null, '45015', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('138', '系统分组，不允许修改', null, '45016', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('139', '分组名字过长', null, '45017', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('140', '分组数量超过上限', null, '45018', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('141', '客服接口下行条数超过上限', null, '45047', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('142', '不存在媒体数据', null, '46001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('143', '不存在的菜单版本', null, '46002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('144', '不存在的菜单数据', null, '46003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('145', '不存在的用户', null, '46004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('146', '解析JSON/XML内容错误', null, '47001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('147', 'api功能未授权', null, '48001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('148', '粉丝拒收消息', null, '48002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('149', 'api接口被封禁，请登录mp.weixin.qq.com查看详情', null, '48004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('150', 'api禁止删除被自动回复和自定义菜单引用的素材', null, '48005', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('151', 'api禁止清零调用次数，因为清零次数达到上限', null, '48006', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('152', '用户未授权该api', null, '50001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('153', '用户受限，可能是违规后接口被封禁', null, '50002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('154', '参数错误(invalid parameter)', null, '61451', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('155', '无效客服账号(invalid kf_account)', null, '61452', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('156', '客服帐号已存在(kf_account exsited)', null, '61453', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('157', '客服帐号名长度超过限制(仅允许10个英文字符，不包括@及@后的公众号的微信号)', null, '61454', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('158', '客服帐号名包含非法字符(仅允许英文+数字)', null, '61455', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('159', '客服帐号个数超过限制(10个客服账号)', null, '61456', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('160', '无效头像文件类型', null, '61457', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('161', '系统错误', null, '61450', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('162', '日期格式错误', null, '61500', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('163', '不存在此menuid对应的个性化菜单', null, '65301', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('164', '没有相应的用户', null, '65302', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('165', '没有默认菜单，不能创建个性化菜单', null, '65303', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('166', 'MatchRule信息为空', null, '65304', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('167', '个性化菜单数量受限', null, '65305', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('168', '不支持个性化菜单的帐号', null, '65306', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('169', '个性化菜单信息为空', null, '65307', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('170', '包含没有响应类型的button', null, '65308', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('171', '个性化菜单开关处于关闭状态', null, '65309', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('172', '填写了省份或城市信息，国家信息不能为空', null, '65310', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('173', '填写了城市信息，省份信息不能为空', null, '65311', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('174', '不合法的国家信息', null, '65312', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('175', '不合法的省份信息', null, '65313', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('176', '不合法的城市信息', null, '65314', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('177', '该公众号的菜单设置了过多的域名外跳（最多跳转到3个域名的链接）', null, '65316', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('178', '不合法的URL', null, '65317', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('179', 'POST数据参数不合法', null, '9001001', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('180', '远端服务不可用', null, '9001002', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('181', 'Ticket不合法', null, '9001003', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('182', '获取摇周边用户信息失败', null, '9001004', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('183', '获取商户信息失败', null, '9001005', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('184', '获取OpenID失败', null, '9001006', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('185', '上传文件缺失', null, '9001007', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('186', '上传素材的文件类型不合法', null, '9001008', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('187', '上传素材的文件尺寸不合法', null, '9001009', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('188', '上传失败', null, '9001010', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('189', '帐号不合法', null, '9001020', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('190', '已有设备激活率低于50%，不能新增设备', null, '9001021', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('191', '设备申请数不合法，必须为大于0的数字', null, '9001022', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('192', '已存在审核中的设备ID申请', null, '9001023', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('193', '一次查询设备ID数量不能超过50', null, '9001024', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('194', '设备ID不合法', null, '9001025', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('195', '页面ID不合法', null, '9001026', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('196', '页面参数不合法', null, '9001027', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('197', '一次删除页面ID数量不能超过10', null, '9001028', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('198', '页面已应用在设备中，请先解除应用关系再删除', null, '9001029', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('199', '一次查询页面ID数量不能超过50', null, '9001030', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('200', '时间区间不合法', null, '9001031', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('201', '保存设备与页面的绑定关系参数错误', null, '9001032', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('202', '门店ID不合法', null, '9001033', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('203', '设备备注信息过长', null, '9001034', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('204', '设备申请参数不合法', null, '9001035', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('205', '查询起始值begin不合法', null, '9001036', 'superadmin', 'MDWX000', '微信', '1', '2018-12-30 14:16:45', '', '1', '0000');
INSERT INTO `t_base_errmsg` VALUES ('206', '未知异常请检查错误配置信息', null, '00099', 'superadmin', 'SYS0001', '系统框架', '1', null, '未知异常请检查对应配置表过错误配置信息', '1', '');
