/*
Navicat MySQL Data Transfer

Source Server         : 10.0.1.40
Source Server Version : 50718
Source Host           : 10.0.1.40:3306
Source Database       : pv4.0_bi

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-11-30 13:51:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adverse_events
-- ----------------------------
DROP TABLE IF EXISTS `adverse_events`;
CREATE TABLE `adverse_events` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `event_diagnostic_identification` int(11) DEFAULT NULL COMMENT '事件诊断标识',
  `primary_adverse_event` int(11) DEFAULT NULL COMMENT '首要不良事件',
  `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT '不良事件术语(pt)',
  `adverse_event_dict_id` varchar(32) DEFAULT NULL COMMENT '不良事件术语字典ID',
  `whether_ime` int(11) DEFAULT NULL COMMENT '是否ime',
  `known_new` int(11) DEFAULT NULL COMMENT '已知/新的',
  `known_serious` int(11) DEFAULT NULL COMMENT '是否严重',
  `severity` int(11) DEFAULT NULL COMMENT '严重程度',
  `ctcae_grading` int(11) DEFAULT NULL COMMENT 'CTCAE分级',
  `severity_criterion` varchar(20) DEFAULT NULL COMMENT '严重性标准(多选 ,隔开)',
  `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',
  `event_end_date` datetime DEFAULT NULL COMMENT '事件结束日期',
  `event_duration` int(11) DEFAULT NULL COMMENT '事件持续时间',
  `event_duration_unit` int(11) DEFAULT NULL COMMENT '事件持续时间单位',
  `event_frequency` int(11) DEFAULT NULL COMMENT '事件发生频率',
  `take_measures` int(11) DEFAULT NULL COMMENT '采取措施',
  `adverse_event_process_description` text COMMENT '不良事件过程描述',
  `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',
  `sequela` varchar(1024) DEFAULT NULL COMMENT '后遗症表现',
  `effects_primary_diseases` varchar(20) DEFAULT NULL COMMENT '对原疾病的影响(多选 ,隔开)',
  `incident_state` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `incident_province` int(11) DEFAULT NULL COMMENT '事件发生省份',
  `sae_report_domestic` int(11) DEFAULT NULL COMMENT 'SAE报道情况(国内)',
  `sae_report_abroad` int(11) DEFAULT NULL COMMENT 'SAE报道情况(国外)',
  `other_situations` varchar(32) DEFAULT NULL COMMENT '其他情况(多选 ,隔开)',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='不良事件-不良事件';

-- ----------------------------
-- Records of adverse_events
-- ----------------------------
INSERT INTO `adverse_events` VALUES ('2a3c94b43757472abbf7ada7df8bccfd', '6430f06ad9be47339007e72125dc557f', '13', '62', null, null, '头疼事件1', '头疼', '4', null, '1', '1', null, null, null, '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:32:36', null, null);
INSERT INTO `adverse_events` VALUES ('2f4a84a411044a859371f03c8aba1edf', 'b1c86e392ee64a08a5ccc5691e4931ee', '13', '62', null, null, '感冒事件1', '感冒', '3', null, '0', '0', null, null, null, '2014-04-10 00:00:00', null, null, null, null, null, '2014年4月10日18时08分患儿静点5%葡萄糖注射液、注射用水溶性维生素、注射用脂溶性维生素过程中出现发热（T 38.7度）、寒战、下颌抖动、四肢末端微凉。\r\n停止输液，静脉推注地塞米松5毫克，并给予布洛芬栓肛塞退热治疗。\r\n2014所4月10日23时患儿体温下降至正常，安静睡眠，未再呕吐', null, '', '不明显', '中国', null, null, null, null, '1', null, 'jerry', '2018-11-09 17:20:38', null, null);
INSERT INTO `adverse_events` VALUES ('4ffc632968154500bfca6ad18e96f85d', '85a11626ae8e4de88b70c84c07b9474c', '13', '62', null, null, '感冒事件2', '感冒', '3', null, '1', '0', null, null, null, '2014-04-10 00:00:00', null, null, null, null, null, '2014年4月10日18时08分患儿静点5%葡萄糖注射液、注射用水溶性维生素、注射用脂溶性维生素过程中出现发热（T 38.7度）、寒战、下颌抖动、四肢末端微凉。\r\n停止输液，静脉推注地塞米松5毫克，并给予布洛芬栓肛塞退热治疗。\r\n2014所4月10日23时患儿体温下降至正常，安静睡眠，未再呕吐', null, '', '不明显', '中国', null, null, null, null, '1', null, 'jerry', '2018-11-09 17:44:23', null, null);
INSERT INTO `adverse_events` VALUES ('65b1f837df5840d585caf0a58129df53', '6c2db958cfb04543b2e49a85c4628e1d', '13', '62', null, null, '头疼事件2', '头疼', '4', null, '0', '0', null, null, null, '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:18:14', null, null);
INSERT INTO `adverse_events` VALUES ('759f344c327c4377affb4e20a5e79c0c', 'b42588aeddbf4be5ac6d5a66fdd079a7', '13', '62', null, null, '头疼事件3', '头疼', '4', null, '1', '0', null, null, null, '2018-11-08 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-08 10:22:06', null, null);
INSERT INTO `adverse_events` VALUES ('800e1f00323b49f596df140b81ff25ea', '1cd645bec004454cb26aec9f4d9e24f3', '13', '62', null, null, '寒战事件1', '寒战', '2', null, '0', '1', null, null, null, '2018-10-02 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-09 09:12:51', null, null);
INSERT INTO `adverse_events` VALUES ('82bc63992edc4d1a8b3f73d9e714925b', 'ef362f3aa8e64f5a9e3e28a5c654e2e0', '13', '62', null, '1', '发烧事件1', '发烧', '1', null, '1', '1', null, null, null, '2014-04-10 00:00:00', null, null, null, null, null, '2014年4月10日18时08分患儿静点5%葡萄糖注射液、注射用水溶性维生素、注射用脂溶性维生素过程中出现发热（T 38.7度）、寒战、下颌抖动、四肢末端微凉。\r\n停止输液，静脉推注地塞米松5毫克，并给予布洛芬栓肛塞退热治疗。\r\n2014所4月10日23时患儿体温下降至正常，安静睡眠，未再呕吐', null, '', '不明显', '中国', null, null, null, null, '1', null, 'jerry', '2018-11-09 17:20:38', null, null);
INSERT INTO `adverse_events` VALUES ('8a60e7f6a021430888dd59e56343c38f', '59f9aaf4958a4249b6a8ea71e3ab6976', '13', '62', null, null, '头疼事件4', '头疼', '4', null, '0', '1', null, null, null, '2018-11-08 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-08 10:42:19', null, null);
INSERT INTO `adverse_events` VALUES ('8da80b55dae54169bf1eac266b94da04', '2c8f667b92974ad48b608dd5137a0f79', '13', '62', null, null, '发烧事件2', '发烧', '1', null, '1', '1', null, null, null, '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 16:46:40', null, null);
INSERT INTO `adverse_events` VALUES ('955133877338457aae76bddb9a70757c', '6315dbade5054439aad0b643130d2ac0', '13', '62', null, null, '发烧事件3', '发烧', '1', null, '0', '0', null, null, null, '2018-11-14 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:42:05', null, null);
INSERT INTO `adverse_events` VALUES ('98eebca12cff4225a5d70c4853984d2e', '7d5a4a2d1c6c4b6693edd865db886a6a', '13', '62', null, null, '寒战事件2', '寒战', '2', null, '1', '0', null, null, null, '2018-11-06 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-09 17:42:28', null, null);
INSERT INTO `adverse_events` VALUES ('9971b7260b4748e1b7e39b396a1f3238', 'b1c86e392ee64a08a5ccc5691e4931ee', '13', '62', null, '1', '发烧事件4', '发烧', '1', null, '1', '0', null, null, null, '2014-04-10 00:00:00', null, null, null, null, null, '2014年4月10日18时08分患儿静点5%葡萄糖注射液、注射用水溶性维生素、注射用脂溶性维生素过程中出现发热（T 38.7度）、寒战、下颌抖动、四肢末端微凉。\r\n停止输液，静脉推注地塞米松5毫克，并给予布洛芬栓肛塞退热治疗。\r\n2014所4月10日23时患儿体温下降至正常，安静睡眠，未再呕吐', null, '', '不明显', '中国', null, null, null, null, '1', null, 'jerry', '2018-11-09 17:20:38', null, null);
INSERT INTO `adverse_events` VALUES ('a3d50ff66ecc4d5ea51978cbfad98d27', '85a11626ae8e4de88b70c84c07b9474c', '13', '62', null, '1', '发烧事件5', '发烧', '1', null, '0', '0', null, null, null, '2014-04-10 00:00:00', null, null, null, null, null, '2014年4月10日18时08分患儿静点5%葡萄糖注射液、注射用水溶性维生素、注射用脂溶性维生素过程中出现发热（T 38.7度）、寒战、下颌抖动、四肢末端微凉。\r\n停止输液，静脉推注地塞米松5毫克，并给予布洛芬栓肛塞退热治疗。\r\n2014所4月10日23时患儿体温下降至正常，安静睡眠，未再呕吐', null, '', '不明显', '中国', null, null, null, null, '1', null, 'jerry', '2018-11-09 17:44:23', null, null);
INSERT INTO `adverse_events` VALUES ('a5992bc65d5c4e3aa84ef33cf27fbaa3', 'bfcd24bf78b747639e787bab7d13f0b0', '13', '62', null, '1', '发烧事件6', '发烧', '1', null, '0', '0', null, null, null, '2014-04-10 00:00:00', null, null, null, null, null, '2014年4月10日18时08分患儿静点5%葡萄糖注射液、注射用水溶性维生素、注射用脂溶性维生素过程中出现发热（T 38.7度）、寒战、下颌抖动、四肢末端微凉。\r\n停止输液，静脉推注地塞米松5毫克，并给予布洛芬栓肛塞退热治疗。\r\n2014所4月10日23时患儿体温下降至正常，安静睡眠，未再呕吐', null, '', '不明显', '中国', null, null, null, null, '1', null, 'jerry', '2018-11-09 17:44:23', null, null);
INSERT INTO `adverse_events` VALUES ('b25e76ea503f46c090de99c694fbbe0c', '3dd2e560c4ba4c17800edbb708b4d344', '13', '62', null, null, '寒战事件3', '寒战', '2', null, '1', '0', null, null, null, '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-09 09:13:57', null, null);
INSERT INTO `adverse_events` VALUES ('cd8f851284364986baba86bb118b6d90', 'ff9d6683bc814dc18235cb55b2689724', '13', '62', null, null, '发烧事件7', '发烧', '1', null, '1', '1', null, null, null, '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 18:36:10', null, null);
INSERT INTO `adverse_events` VALUES ('e7744180d8d342daa99775f84c05c341', 'f0434d95b512457abb15b37014e65cc9', '13', '62', null, null, '头疼事件5', '头疼', '4', null, '0', '1', null, null, null, '2018-11-16 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 18:47:04', null, null);
INSERT INTO `adverse_events` VALUES ('f1d55a894037433a85efefd4b5f6b8b8', '9b49916d29014f06af228469cef450cf', '13', '62', null, null, '发烧事件8', '发烧', '1', null, '0', '1', null, null, null, '2018-11-15 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-08 15:39:07', null, null);
INSERT INTO `adverse_events` VALUES ('fd0714e954644a7f95d48641a009949e', '96ccddfe5fd641e6bf6989271c941e3e', '13', '62', null, null, '发烧事件9', '发烧', '1', null, '1', '1', null, null, null, '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 16:19:25', null, null);

-- ----------------------------
-- Table structure for basicinfo_report_attributes
-- ----------------------------
DROP TABLE IF EXISTS `basicinfo_report_attributes`;
CREATE TABLE `basicinfo_report_attributes` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `report_first_received_date` datetime DEFAULT NULL COMMENT '报告首次获知时间',
  `pv_received_date` datetime DEFAULT NULL COMMENT 'pv获知时间',
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `report_original_data` int(11) DEFAULT NULL COMMENT '是否有原始资料(1:有，2:无)',
  `report_susar` int(11) DEFAULT NULL COMMENT '快速报告SUSAR',
  `last_report_drug_regulatory_time` datetime DEFAULT NULL COMMENT '最晚上报药监时间',
  `report_recent_date` datetime DEFAULT NULL COMMENT '报告最近更新时间',
  `delayed_report_cause` varchar(128) DEFAULT NULL COMMENT '迟报原因',
  `report_first_reporter` varchar(32) DEFAULT NULL COMMENT '企业首位获悉人',
  `report_first_reporter_phone` int(11) DEFAULT NULL COMMENT '企业首位获悉人联系方式',
  `report_came_other_companies` varchar(32) DEFAULT NULL COMMENT '报告来自其他公司',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基本信息-报告属性';

-- ----------------------------
-- Records of basicinfo_report_attributes
-- ----------------------------
INSERT INTO `basicinfo_report_attributes` VALUES ('0516b49e8acf4d83a00527151f555b6f', '6315dbade5054439aad0b643130d2ac0', '13', '62', '2018-11-07 15:41:34', '2018-11-14 00:00:00', null, null, '2', null, null, '2018-11-07 15:42:05', null, null, null, null, '2', '1', '33', '2018-11-07 15:42:05', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('0a4eec10e5074bf89f665239f4643222', '59f9aaf4958a4249b6a8ea71e3ab6976', '13', '62', '2018-11-08 10:41:15', '2018-11-08 10:41:17', null, '1', '2', '1', null, '2018-11-08 10:42:18', null, null, null, null, '1', '1', '33', '2018-11-08 10:42:19', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('16ae390ca8994a1aac28a66878071029', 'f0434d95b512457abb15b37014e65cc9', '13', '62', '2018-11-09 00:00:00', '2018-11-22 00:00:00', null, null, '2', null, null, '2018-11-07 18:47:04', null, null, null, null, '1', '1', '33', '2018-11-07 18:47:04', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('3905ab334e9640f7a563e1f60e43b311', 'b42588aeddbf4be5ac6d5a66fdd079a7', '13', '62', '2018-11-09 00:00:00', '2018-11-08 00:00:00', null, null, '2', null, null, '2018-11-08 10:22:05', null, null, null, null, '1', '1', '33', '2018-11-08 10:22:06', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('3e780857a10f4275830ca8b71d628e6e', '1cd645bec004454cb26aec9f4d9e24f3', '13', '62', '2018-11-05 00:00:00', '2018-11-05 00:00:00', null, null, '2', null, null, '2018-11-09 09:12:51', null, null, null, null, '1', '1', '33', '2018-11-09 09:12:51', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('3eca9ab2bdd84625ae9ea832745e5f15', '20e1b4d6eaba4396ad98a0f463fcbee2', '13', '62', '2014-05-04 00:00:00', '2018-11-16 00:00:00', null, '3', '1', null, null, null, null, null, null, null, '1', null, 'jerry', '2018-11-08 16:43:50', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('43380f0e5aa5474db50d8d695f2ec7e2', '96ccddfe5fd641e6bf6989271c941e3e', '13', '62', '2018-11-07 16:11:29', '2018-11-08 00:00:00', null, null, '2', null, null, '2018-11-07 16:19:24', null, null, null, null, '1', '1', '33', '2018-11-07 16:19:25', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('6f29b15b1d4145aca058cf41984abde6', '6315dbade5054439aad0b643130d2ac0', '13', '62', null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:46:59', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('7c0b893c4f1647d69f0a097e40d60a75', '3dd2e560c4ba4c17800edbb708b4d344', '13', '62', '2018-11-06 00:00:00', '2018-11-06 00:00:00', null, null, '2', null, null, '2018-11-09 09:13:56', null, null, null, null, '1', '1', '33', '2018-11-09 09:13:57', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('8dece829958b46bfbeccba4162b49721', '3e9f40922dc64ae19edaad0d441384ef', '13', '62', '2014-05-04 00:00:00', '2018-11-16 00:00:00', null, '3', '1', null, null, null, null, null, null, null, '1', null, 'jerry', '2018-11-08 16:43:50', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('a7279de4a898491f998461c30f0949e7', '6430f06ad9be47339007e72125dc557f', '13', '62', '2018-11-07 15:31:52', '2018-11-08 00:00:00', null, null, '2', null, null, '2018-11-07 15:32:36', null, null, null, null, '1', '1', '33', '2018-11-07 15:32:36', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('b66f14150e8d4de2af043c63e711c6ab', '1c3345e472b646449dfe446cb6aeab2b', '13', '62', '2014-05-04 00:00:00', '2018-11-21 00:00:00', null, '3', '1', null, null, null, null, null, null, null, '1', null, 'jerry', '2018-11-08 16:46:48', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('b7fbee9d31514f7c85c755a142f9b46f', '8aa8cfcfbe384b86862a98c35dcd9107', '13', '62', '2014-05-04 00:00:00', '2018-11-21 00:00:00', null, '3', '1', null, null, null, null, null, null, null, '1', null, 'jerry', '2018-11-08 16:46:48', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('db7da51057f24f8d8885720b23fdc185', '2c8f667b92974ad48b608dd5137a0f79', '13', '62', '2018-11-05 00:00:00', '2018-11-14 00:00:00', null, null, '2', null, null, '2018-11-07 16:46:40', null, null, null, null, '1', '1', '33', '2018-11-07 16:46:40', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('dd4b1cd38de7402399dc46ecd24804d2', '6c2db958cfb04543b2e49a85c4628e1d', '13', '62', '2018-11-15 00:00:00', '2018-11-16 00:00:00', null, null, '2', null, null, '2018-11-07 15:18:14', null, null, null, null, '1', '1', '33', '2018-11-07 15:18:14', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('e6b92ce47336449994bdeabccffc1ebc', '9b49916d29014f06af228469cef450cf', '13', '62', '2018-11-08 15:38:32', '2018-11-08 15:38:34', null, null, '2', null, null, '2018-11-08 15:39:07', null, null, null, null, '1', '1', '33', '2018-11-08 15:39:07', null, null);
INSERT INTO `basicinfo_report_attributes` VALUES ('e8410364dd054577bd3b0968ab2c0e3e', 'ff9d6683bc814dc18235cb55b2689724', '13', '62', '2018-11-07 18:34:44', '2018-11-07 18:35:42', null, null, '2', null, null, '2018-11-07 18:36:09', null, null, null, null, '1', '1', '33', '2018-11-07 18:36:10', null, null);

-- ----------------------------
-- Table structure for dictionary_test
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_test`;
CREATE TABLE `dictionary_test` (
  `id` char(32) NOT NULL,
  `field_id` char(32) DEFAULT NULL,
  `dict_data` varchar(255) DEFAULT NULL COMMENT '字典资源',
  `dict_display_chinese` varchar(255) DEFAULT NULL COMMENT '字典中文显示值',
  `dict_display_english` varchar(255) DEFAULT NULL COMMENT '字典英文显示值',
  `dict_real_values` varchar(11) DEFAULT NULL COMMENT '字典真实的值',
  `dict_sort` int(11) DEFAULT NULL COMMENT '字典排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '字典备注',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1删除，2正常',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_test
-- ----------------------------
INSERT INTO `dictionary_test` VALUES ('001b04f2a7f042f0bacb731c4eb9a63c', null, 'other_event_terms', '由于此事件从研究中脱落', 'Out Of Study', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('007cb0bee26f4ad0a7910571e8c15160', null, 'received_from', '自发报告', 'Spontaneous Report ', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('00947ca54b244d81820c2d22d442c115', null, 'drug-way', '封闭', 'Occlusive dressing technique', '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('00eb6bf59d044679ac78f58691746b99', null, 'research-type', '临床验证', 'Clinical Trials', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('010434d3cb3f4cca9ddb084a861173e3', null, 'drug-formulation', '控释口颊片', 'modified-release bucral tablets', '65', '65', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('01cd0efd9f6148c699f769bc31703306', null, 'drug-way', '肾内给药', 'Intracisternal', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('024627b9e4654349bf9c5f6b41efe294', null, 'dosage_unit', '千国际单位', 'k[iU]', '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('027c3acb168f47e891586bb6f782f62a', null, 'sender_type', '药物警戒区域中心', 'Regional Pharmacovigilance Centre', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('039273ac72034e89bf843d521e67ade6', null, 'qjf', '未停药或未减量', 'Unchanged', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('039a8ef222f74b889624d1155354137f', null, 'inspect_unit', 'g/L', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('03df5aec76bc45b696bddeb7a6d19826', null, 'drug-way', '冠动脉给药', 'Intracoronary', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('047c832f1f0344279e00d695ed614ca7', null, 'follow-up_information', '随访无更新信息', 'No update information during follow-up', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0487edc8b89b41f4885e971d4f01e196', null, 'zjf', '否', 'yes – no    (rechallenge was done, reaction did not recur) ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('04a66ad211a345eca422b7dce8f1b899', null, 'is_research_drug', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('04b3983f39de435dae953770f08f9639', null, 'attach-class', '出院小结', 'Discharge summary', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('04b47d4b028e41379c45a8eb3aaf7dfd', null, 'is_reference', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0536f36d28c84e8aaa6017288872c4b7', null, 'trimester_of_exposure', '孕晚期', 'Late trimester of pregnancy', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0536f36d28c84e8aac6016288872c4b7', '', 'trimester_of_exposure', '不详', 'Unknown', '4', '4', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('0635e69d75e64e229ae6434521f7410b', null, 'drug-way', '内嗅的', 'Endosinusial', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('06749f51037846ec9b418b319fde1f95', null, 'inspect_unit', '[Amb\'a\'1\'U]', null, '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('069ace70dd68451b90a6bda30587aca3', null, 'drug-formulation', '汤剂', 'decoction', '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('06a112e47bdb4b80a74c69608c7d8128', null, 'drug-formulation', '熨剂', 'compression formula', '94', '94', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('06c582d791cd454385f281b84b51fedd', null, 'received_from', '其他', 'Other', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07119effbfd4408490c75f9147d9e3fc', null, 'inspect_unit', 'L/L', null, '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07399551c4304ff49993ca032d820241', null, 'drug-formulation', '灸剂', 'moxa-preparation', '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07cad94ea5bb4697be78b627c4edfb09', null, 'age_group', '胎儿', 'Foetus', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('07e6a1d0d71d414f940587ee87526d7d', null, 'drug-formulation', '注射用乳', 'Injection milk', '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0810fcc1957548a5ab4370471e686151', null, 'clinical-research', '单个病人使用', 'Individual Patient Use', '8', '8', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('08c5a004a73341ed8baf827c0ccd726d', null, 'drug-way', '经淋巴管内灌注', 'Intralymphatic', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('08f3429b423946bea64f17419be05412', null, 'reporter_privacy_confidential', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('098f6fda53e94fb3865457257fdacb32', null, 'drug-formulation', '消毒剂', 'sanitizer', '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('09e73287f12844e8898d5a19f08cfa65', null, 'qjf', '不适用', 'no – n/a     (no rechallenge was done, recurrence is not applicable) ', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0a1d0d5a5d1f4ad79990ca3374b6145f', null, 'drug-formulation', '肠溶胶丸', 'enteric-coated soft capsules', '83', '83', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0a5492a33a7e46089fc9a6271d182500', null, 'drug-formulation', '划痕剂', 'nick agent', '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0a7e3ac86d0947c080561f4979071013', null, 'research-design', '开放', 'Open Label', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0ac8e93efb9848968dff35e4e845188b', null, 'mailbox_setting', 'POP3', 'POP3', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b27ffdb5bd54fe89e45738e0480340d', null, 'drug-formulation', '外用凝胶', 'gels ', '126', '126', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b4c21e034d54ffd98f5b95edb85587b', null, 'inspect_unit', 'mm', null, '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b50b3aa8598469794801eaca0c021c7', null, 'inspect_unit', 'min', null, '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0b945ff2d92c489ca17e2051da51346e', null, 'drug-formulation', '试剂', 'reagent', '140', '140', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0bccb84830e548f6a6fc4bbd903f14fc', null, 'bind_test_drug', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0c38d595f5d14d15940f808e3c9c5241', null, 'research-subdivision', 'IIb期', 'phase IIb clinical trials', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0c3d8bb45c744b2ebe6d2e059b03f9fd', null, 'province', '福建省', 'Fujian', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0c5638b855644c03a2bcd8ef404bfac5', null, 'dict_type', 'ICD-10编码', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0ca892c28f52493997f344df7e451a51', null, 'province', '湖北省', 'Hubei', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0cca32d68acc447ba861177b340781d1', null, 'event_out_come', '好转', 'Recovering / Resolving', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0d6e885a7221459cad74e0aff03baa56', null, 'drug-formulation', '湿敷剂', 'wet packing', '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e4b8c8092d844afa92e08fb0cd34fdf', null, 'drug-formulation', '双层片', 'double-layer tablet', '77', '77', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e4bee0f34f4424a9188cdcf0affa3b4', null, 'dosage_unit', '千克', 'kg', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e55c339944143de8d0924436a7e7fca', null, 'drug-formulation', '消毒液', 'disinfectant', '121', '121', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0e9e9895801644a6b35cda21dc1ba387', null, 'drug-formulation', '植入剂', 'implant', '62', '62', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0eaca06e258a4f97b3cc89f1437ed2b5', null, 'drug-formulation', '栓剂', 'suppository', '117', '117', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0f4c3c0dbf3a4f659b48ead469a02008', null, 'Drug_Information', '药品信息', 'Drug Information', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0f81fea56e004223a4e216dbf77a2bf4', null, 'other_drug_information', '超说明书用药', null, '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('0f97aace7be344a4a391b8f63b8711f6', null, 'event_out_come', '不详', 'unknown ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1046492dc79a43589d6b10cece174c5f', null, 'drug-way', '蛛网膜下腔给药', 'Intracerebral', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1049e48f8471404f9e6004f48aecfbcd', null, 'dosage_unit', '袋', null, '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('10de04265acd47af94be82c498332d1b', null, 'clinical-research', 'Ⅰ期', 'Ⅰexpect', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1204c210d63e4fef917defd791741ec4', null, 'blindedor_not', '非盲态', 'Non blind', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1241cbf18e9b431e946d4942cb288836', null, 'province', '广东省', 'Guangdong', '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('12e101cdff3c4999ad03ac13c382f174', null, 'Patient_Information', '妊娠信息', 'Pregnancy Information', '004', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('131d4684e9b74cb090eb02b7a056ed3e', null, 'province', '贵州省', 'Guizhou', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1367afdb6b854840a0107560ada0b815', null, 'attach-class', '病例', 'case', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('137994c336a24d4d842bb443c2907148', null, 'inspect_unit', '{DF}', null, '75', '75', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1387c761b67b4b28832484524e87da04', null, 'maintain_control', '多项选择', 'Checkbox', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1450e676250d4a6c961176249202f192', null, 'received_from', '重点监测项目', 'Key monitoring items', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('14ddd9b577ea467d8174de9242787a1e', null, 'body_weight_unit', '克', 'g', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('150e0bff86444432804b65f212e46d7a', null, 'drug-formulation', '混悬液', 'suspension', '159', '159', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('15cb39d1f1d04854a32335243697126c', null, 'pregnancy_outcome', '宫内妊娠', 'Intrauterine pregnancy', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('15d9add00d0647639cfd745df288e0ce', null, 'source_caseidentifier', '国家ADR系统', 'ADR', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('162611fecf654813a13a78bd717c3bed', null, 'report_identity_type', '原始报告', 'Original Report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('16f0c0c490904be286fc78dc4b87b9b2', null, 'source_caseidentifier', '医学信息', 'medical information', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('173972befb3b45ea98d2a39b85e68c1a', null, 'inspect_unit', 'Bq', null, '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1742deefb1064b239ca9446f3f3cd914', null, 'relevant_medical_history', '饮酒史', 'History of drinking', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('174af9c0b6854d1e946403f6cbf97b12', null, 'drug-formulation', '口胶', 'chewing gum', '162', '162', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('17927511e5c0417ea6df778136c1f581', null, 'inspect_unit', 'mo', null, '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('183548b17ba64f199c90602858adcdc7', null, 'time_interval_unit', '日', 'd', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('18752b085cce449d941f2f5911309a5b', null, 'drug-formulation', '包衣片', 'coating tablet', '164', '164', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1908e73296fb45c2afce1cd7349ba548', null, 'dict_type', 'MEDDRA编码', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('192b03f87bd343269d98c99fb5e651fc', null, 'sae_reports', '有', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('199660aca0964276a1fbede6646acca4', null, 'drug-way', '经鼻给药', 'Nasal', '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('19ed0a30c98b426680e3dc501450468b', null, 'province', '澳门特别行政区', 'Macau', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1a2262614f754a2a80e7e967b39f7476', null, 'province', '内蒙古自治区', 'Neimenggu', '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1b20ff98912a4689a9e97d85cf356c72', null, 'inspect_unit', 's', null, '79', '79', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1b23737f91ac47f989d72fbb9a6debe1', null, 'drug-way', '含服', 'Buccal', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1b6685267b07414d81f18f6ba6cd9813', null, 'province', '广西壮族自治区', 'Guangxi', '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1bc04d53695743b8972f574f3a2423be', null, 'dosage_unit', '%', null, '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1bf67a5471b54180986e6ed72c87fd5f', null, 'drug-formulation', '油剂', 'oiling agent', '99', '99', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128a118687c8777a025', null, 'qjf', '是', 'yes – yes   (rechallenge was done, reaction recurred) ', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b118683c8777a025', '', 'drug_additional_info', '假药', 'Counterfeit', '1', '1', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b123683f8777b025', '', 'drug_additional_info', '父亲服用的药物', 'father taken', '3', '3', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b123783g8777b025', '', 'drug_additional_info', '服用超过有效期的药物', 'beyond expiry date', '4', '4', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b128683f8777a025', '', 'drug_additional_info', '药物过量', 'Overdose', '2', '2', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b223783h8777b025', '', 'drug_additional_info', '经检测合格的批次和批号', 'within specifications', '5', '5', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b223783i8727b025', '', 'drug_additional_info', '经检测不合格的批次和批号', 'not within specifications', '6', '6', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b253783j8727b025', '', 'drug_additional_info', '用药错误', 'Medication error', '7', '7', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b263783k8727b025', '', 'drug_additional_info', '药物误用', 'Misuse', '8', '8', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b273783l8727b025', '', 'drug_additional_info', '药物滥用', 'Abuse', '9', '9', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b283783m8727b025', '', 'drug_additional_info', '职业暴露', 'Occupational exposure', '10', '10', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c1a1e0e82974128b284783n8727b025', '', 'drug_additional_info', '超说明书用药', 'Off label use', '11', '11', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('1c50c8d395aa48049414043640d00a12', null, 'attach-class', '原始资料', 'Source', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1cacc6c886584e28a464ff2fcc35dcd9', null, 'inspect_unit', 'mL', null, '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1ce3bd29264b40b791c97cf71104e6bd', null, 'drug-formulation', '缓释片', 'sustained-release tablet', '78', '78', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1d58bb163f4c49a0871af50e2681762a', null, 'zjf', '不适用', 'no – n/a     (no rechallenge was done, recurrence is not applicable) ', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1d59dc2e47794fce980778f5747d535c', null, 'dosage_unit', '厘米', null, '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1d859afea48a407a83eac31fbfe787b7', null, 'inspect_unit', '[kp_C]', null, '68', '68', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1de2552fa30c4cd392dcfba5781d6209', null, 'impacton_primary_disease', '病情加重', 'Aggravation of the disease', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1e0f39b75d1a4606a73cd7ccfbe6bf0a', null, 'drug-way', '子宫颈给药', 'Endocervical', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1e4e612565eb40828b598fe1d67aac16', null, 'is_pregnancy', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1e4f74fd7019418185413574087f94b6', null, 'relevant_medical_history', '肾病史', 'History of nephrosis', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1f2fa9f32f914824a86e5681893393df', null, 'drug-formulation', '双释放胶囊', 'Double release capsule', '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1f6e12b41da94978ad996628ad908386', null, 'dosage_unit', '千贝勒克尔', 'kBq', '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1f9024f55a6648f1ab2162f392523cb5', null, 'received_from', '反馈数据', 'Feedback data', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1fa94004cfc64fe28fa14e2b90cfef5c', null, 'drug-formulation', '肠溶微丸胶囊', 'enteric coated micropill capsule', '103', '103', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('1ff5baa9fa7b494abb6b9321d73aca74', null, 'Drug_Event', '药物反应/事件矩阵', 'Drug/Event', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('201b67264033423b9b8e6288dbac8d22', null, 'sender_type', '其他（例如分销商或其他机构）', 'Other (e.g. Distributor, Study Sponsor, Contract Research Organisation, or non-Commercial Organisation)', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('20897f3de18847a3a115146841613447', null, 'drug-way', '静脉注射', 'Intravenous bolus', '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('209d1f58519c4afa9ac337f78d29ccae', null, 'other_drug_information', '经检测合格的批次和批号', null, '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('20e7f26305c04a689ec3c3160077b0f0', null, 'Patient_Information', '父母信息', 'Parent Information', '009', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('21112fd78c44469991c28f81b38be595', null, 'drug-way', '血液透析', 'Hemodialysis', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('21f9731726e04e8fafc43cad20cbc531', null, 'Basic_Information', '既往病例标识码', 'Study Medical History', '004', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('226956563cae47fa83b1e521555ce47b', null, 'inspect_unit', 'IU', null, '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('227c1379176641f69bf594080110c646', null, 'drug-formulation', '水剂', 'water aqua', '123', '123', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('22cacaa62f86421caef0a55ba5ab6c7e', null, 'Patient_Information', '父母病史及相关用药史', 'Parent Medical History', '010', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('22cebd5973324e77a53ff227b3b29f3a', null, 'is_reference', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('22ea16fa3ebd420d9f11dbc8de7ef79d', null, 'inspect_unit', '℃', null, '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('233d2825ad224dfab4b9f4568c854595', null, 'other_drug_information', '父亲服用的药物', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('237da7243cbd47bea098b1c8dd4e4ca0', null, 'Basic_Information', '报告属性', 'Reporting Attributes', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2403589cd8f54789b33cb15dca9e0454', null, 'time_interval_unit', '全部的', '{total}', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('24281523c5024d06836751e4eac74ded', null, 'drug-formulation', '肠溶微粒胶囊', 'enteric-coated microsomes capsule', '153', '153', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('242a83a7cb504e4fa102da0ef172b362', null, 'time_interval_unit', '10年', '10.a', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('24b3bdcfad0b4b03a4b8f62917a00e3b', null, 'reporter_type', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('250e0e9757664fd7ae0337e21b9bc198', null, 'drug-way', '尿道给药', 'Urethral', '66', '66', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('253374b09e9848159afc08cde5866c0f', null, 'dosage_unit', '纳摩尔', null, '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('255a74d5a485463a8632edb3270b5906', null, 'drug-formulation', '雾化溶液', 'nebulising solution', '63', '63', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('255cfe8776094d73b65aa5ef5477aef3', null, 'Report_Summary', '报告总结', 'Report Summary', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('257ae5b2a7e348059da60ed143822be2', null, 'drug-way', '关节内给药', 'Periarticular', '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('25b39b0b0d1e483ea1003357541d4d08', null, 'interaction', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('26249bbef1544ecf9de4331e8e52ef83', null, 'province', '海南省', 'Hainan', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2650c4d46b05443b862ce6306be802c5', null, 'autopsy', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2684d331a4d34a2ab8bd695c60e9a27e', null, 'drug-formulation', '乳剂', 'emulsion', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('268bbe3d48894c42aae9d4b5e9726911', null, 'history_type', '现病史（原患疾病）', 'medical history', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('26a430888f414f1f87e31602dd4f5e62', null, 'drug-formulation', '缓释丸剂', 'sustain-released bolus', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('26a75b82707544099cae098a4f5d3882', null, 'dosage_unit', '毫摩尔', 'mmol', '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('272cc8bea63b4a3bacc66fba1f58dad8', null, 'drug-formulation', '阴道泡腾片', 'vaginal effervescent tablets', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2754a6c951d748d0a6997cd884961f6b', null, 'dosage_unit', '毫米', null, '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('27ea3153befe47f5963824e195486ac2', null, 'time_interval_unit', '分', 'min ', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('281076eeb8d743f3b21fccf5aa5be2aa', null, 'inspect_unit', 'mm/h', null, '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28741964682342cfb7a783af42e21102', null, 'drug-formulation', '流浸膏', 'liquid extract', '116', '116', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2876cff4cc314e349141f8401deec4d2', null, 'drug-way', '硬膜外给药', 'Epidural', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2896d1151ff44529a70323d86e5992da', null, 'maintain_page', '报告者信息', 'Reporter Information', '03', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28a1078b015b4fc19c4d0a8f473db716', null, 'Patient_Information', '患者信息', 'Patient Information', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28c6b0b6f5a341d8af7e4d7e2d83c363', null, 'maintain_control', '单行文本', 'Text field', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28d86efb83f14eceb5913b3f4bc029fa', null, 'SUSAR', '未填写', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('28e97081049a4d9c98f79c10f91814d0', null, 'dosage_unit', '单位', null, '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('290ab8eb5f9142e4960b78d11ec9c05f', null, 'diagnosis', '症状', 'Symptom', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('29173d2e4e7a4b4b988424212e90a0bd', null, 'dosage_unit', '微克/平方米', 'ug/m2', '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2948ec4ee2c44414ac258f1c2e300208', null, 'severity', '中度', 'moderate', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('294906d02aca4247a7d5c1b3c68d37db', null, 'drug-way', '气管/支气管内给药', 'Intratracheal', '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('29541edd082a487690d202ab03104b8b', null, 'drug-formulation', '巴布膏', 'cataplasm', '134', '134', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('297b4e845e0c439db8a379a8aee2a392', null, 'research_role', '主要研究者', 'Principal', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('29fe4c93c7d646c2b956459eee53b589', null, 'research-type', '个例患者使用', 'Individual Patient Use', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2a25686a7d7c4630b102249336b3f618', null, 'drug_character', '治疗用药', 'Interacting', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2a72196fa0f2427194233fee1ae18e05', null, 'drug-way', '心包内给药', 'Intrapericardial', '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2afa2004813a464ba76e17f871315542', null, 'is_attach', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2bebaf9d1369475290d6a27fbe30738c', null, 'dosage_unit', '瓶', null, '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2c44d6f1194b4048aa8579b5ccbb36b0', null, 'standard_of_seriousness', '导致死亡', 'death', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2c8e810836e648b08ae510bb19f6a779', null, 'dosage_unit', '平方厘米', null, '40', '40', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2cc12cf6a0374264860588bf81310593', null, 'is_research_drug', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2d18b70e8bc64632948661276705f8a6', null, 'attach-format', 'bmp', 'bmp', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2eef7343c0914b95a4c9f343053596b0', null, 'dosage_unit', '贝克勒尔', 'Bq', '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('2f14634f2ddb47599d46ca1ea8dff5ca', null, 'action_taken', '不详', 'Unknown', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('30251aa35f5d4e699e5e69d41f558bfa', null, 'drug-way', '臂丛麻醉', 'Brachial plexus anaesthesia', '74', '74', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('303c3a7b28cd495d97c93258b5c78f91', null, 'drug-formulation', '双释放肠溶胶囊', 'dual release enteric-coated capsules', '145', '145', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3042923ffaaf4f76ac9973f6147b6174', null, 'drug-formulation', '大蜜丸', 'big honeyed pills', '130', '130', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3062bd7091834117836b880f29471bf6', null, 'age_group', '老人', 'Elderly ', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('317a2f56ce04458f9757a07f53395dc2', null, 'drug-formulation', '肠溶颗粒', 'enteric coated granules ', '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('318a408b04b34e85a82ae25fa171cb06', null, 'dosage_unit', '兆贝克勒尔', 'MBq', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('31a3dbc67e804d5aad84c57ff7adde9c', null, 'province', '北京市', 'Beijing', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('31d4ffa35a2349d397f5d8b3c44e0820', null, 'drug-way', '阴道给药', 'Vaginal', '67', '67', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('31f14f62cc9046ada1a33ab4114922ea', null, 'drug-way', '宫颈管内给药', 'Intracervical', '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3211a6b0161d45448800329b3273c083', null, 'other_event_terms', '与研究过程相关', 'Study Related', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('32894e86b8a549f7a9433934d9e4e57a', null, 'drug-formulation', '贴剂', 'patch', '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3421ca7607c144dea1a2c67ff95bab8f', null, 'Adverse_Event', '不良事件', 'Adverse Event', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3491c6475ca644f5b8793378435a0d03', null, 'event_out_come', '有后遗症', 'Recovered / Resolved with Sequelae', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3491c6475ca644f5b8793578435b0d03', '', 'event_out_come', '症状持续', 'Persistent symptoms', '7', '7', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('35549ad362ff4597802a59b2ba0f2e0c', null, 'drug-formulation', '洗发剂', 'shampoo', '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('358136c33dae4557b6b3f213370133b3', null, 'maintain_page', '概览', 'Overview', '01', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35de42f2df01480ca1defae059653669', null, 'province', '云南省', 'Yunnan', '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35e5474b22ed4ab6a45564de5b6ed4e3', null, 'drug-way', '眼球内给药', 'Retrobulbar', '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('35fe124731bf4b4ebde2cafb5cdf65d7', null, 'patient_nationality', null, null, null, null, null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3628ba1048b243819a5fc61ed4af40a9', null, 'received_from', '临床研究', 'Report from Study （研究报告）', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3682b796306e4369a4ae65333b773285', null, 'other_drug_information', '职业暴露', null, '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('368b58423f3548359fdd411e0c752488', null, 'dosage_unit', '微克/千克', 'ug/kg', '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('369e7ecdaec54a02b5ec76d4b5f0dc64', null, 'drug-way', '球后注射', 'Retrobulbar injection', '80', '80', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('36bab218c25c420ca21b247ea6db76b4', null, 'age_unit', '三个月', '{trimester}', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('36d0db105c514540b1594a1234fbbb92', null, 'inspect_unit', '[Lf]', null, '69', '69', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('36f61e68968e4ec0bc0d991ea63f0441', null, 'time_interval_unit', '年', 'a', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('372f6e95e7af40a9afdac4ac19506219', null, 'standard_of_seriousness', '危及生命', 'Life Threatening', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('376207dbc8e04380950d9e7a33a3e409', null, 'attach-format', 'jpg', 'jpg', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('383d8785d3e94ed4901c26a93df7c32a', null, 'company_type', '个人', 'personal', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3872de898e2c42f0ab07c88fff223a5b', null, 'drug-way', '脊髓内给药', 'Intradiscal (intraspinal)', '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('389a0ebef85f44749cf971e747cd8b89', null, 'frequency', '持续', 'Continued', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('389b6b014ff444bfa3f30669b43ebd54', null, 'reporter_type', '护士', 'Nurse', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('38abe0728a6947d588b900458688b2a4', null, 'zjf', '是', 'yes – yes   (rechallenge was done, reaction recurred) ', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('39a0f8e1c37740628a7fe3f67f73ac75', null, 'drug_character', '并用药品', 'Concomitant', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('39bbf2d68eae46b49617c77b09d82511', null, 'province', '重庆市', 'Chongqing', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('39e7863468eb4e2bb6817951ebcb8af6', null, 'drug-formulation', '阴道软胶囊', 'vaginal soft capsule', '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a560ddde4b949e896aa011c6661239e', null, 'Basic_Information', '临床前药理毒理试验', 'Pharmacology Toxicology', '006', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a5b8a4287234dd99067a42698f02e9a', null, 'drug-way', '外用', 'External', '78', '78', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a734a9b58e94e30b2386bd89c25607a', null, 'time_interval_unit', '三个月', '{trimester}', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3a7e72291d514780affe7d30a349a930', null, 'inspect_unit', '[USP\'U]', null, '73', '73', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3b608acbebd647f48323de6a37c24820', null, 'province', '青海省', 'Qinghai', '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3b7fb78a3b104e9294137bbe48b49b6e', null, 'research-subdivision', 'Ia期', 'phase Ia clinical trials', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3c0388ce0f9b4ddd9d3b65b9a876693d', null, 'province', '辽宁省', 'Liaoning', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3c53aca0f985466d9133da095c13dbab', null, 'blindedor_not', '研究后揭盲', 'Blindness after study', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3cde4ce0cb314f2491ba0068480f33b8', null, 'drug-way', '冲洗', 'Rinse', '84', '84', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3cf9517cb9194180b6fdcbc8405949ed', null, 'inspect_unit', 'GBq', null, '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3cfb9f4903194c03a1b78ede9a93e91c', null, 'drug-formulation', '混悬注射液', 'suspension injection', '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3d34f06fd76642ed98b83974497cc68f', null, 'drug-formulation', '酊剂', 'tinctrue', '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3e533c7c57e64c808747794ef0567b49', null, 'drug-way', '静脉滴注', 'Intravenous drip', '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3eb3a1a38c3f432da9fadc22e6fa2967', null, 'clinical-research', '生物等效性试验', 'bioequivalence test', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3f7c929553a241079c3c156b0f6f7977', null, 'drug-formulation', '缓释颗粒', 'sustained-release granules', '107', '107', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('3ff18277aa5a448aa8a807b93799ec40', null, 'attach-format', 'xls', 'xls', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('40388646259a42769b45633f2aba6810', null, 'drug-formulation', '肠溶微丸', 'enteric coated micropil', '131', '131', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('405eb9d3fa2d42929a52c4a4e26f2bc6', null, 'drug-formulation', '口服缓释混悬液', 'oral sustained-release suspension liquid', '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('40b2b6d198fc4a9595587a60730ca4ee', null, 'drug-way', '周围神经给药', 'Perineural', '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4155db1dea864949add89e9f7bf53d13', null, 'age_group', '青少年', 'Adolescent', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('417ac8f4238c4d64b2c5ad423c4548fa', null, 'dosage_unit', 'MB', null, '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('41a2bb91baa34fdfb2c01bdf018d4900', null, 'drug-formulation', '乳膏', 'emulsifiable paste', '72', '72', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('41b5b0bd92164dd5ae39510ddf6d8289', null, 'drug-formulation', '软膏', 'ointment', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('41dd05b3263e4fce88941bf3f8f8622e', null, 'SUSAR', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4202d089fc3f44e8a91d3e5e362abbfc', null, 'dosage_unit', '升', 'L', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('422c878e9d4c4dae98ca37d5df64a6d7', null, 'listedness_determination', '新的', 'new', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('432181ba3a83464f8c2bbb3c50d379fb', null, 'relevant_medical_history', '其他', 'Other', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4394ef903fcb4d1ebbf6917f2549acfa', null, 'drug-way', '植入给药', 'Implants', '70', '70', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('43b5c24184d44229a04e2babfe52cba4', null, 'dosage_unit', '百分比', '%', '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('43d5f8163a3c4aacb246e2f2e8703679', null, 'inspect_unit', '[hp_M]', null, '62', '62', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('43e937fc44034a9ebe5c9bd4e0819dad', null, 'other_event_terms', '该药缺乏治疗效果', 'effect lack', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4478ed67a1f94d068d8fd4af4b6367cb', null, 'age_unit', '10年', '10.a', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('454677d7b5964ceeb1f25f3e484e35e7', null, 'Drug_Information', '用药情况', 'Drug use', '002', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('454eb4f6640b40d2b27b9914971ee54e', null, 'source_info_name', '个人', 'personal', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('45502807697b4e61bf24ddadd47a12bc', null, 'dosage_unit', '国际单位/千克', '[iU]/kg', '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('45626792cc014460912abbbf2b20efdc', null, 'drug-formulation', '咀嚼胶', 'chewing-gum', '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('456f28fa9f1f4c83b4a7f34938ca2727', null, 'inspect_outcome', '边界线上', 'Borderline', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('45e0b29958844dd98de00220b4265bbf', null, 'province', '新疆维吾尔自治区', 'Sinkiang', '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('46900ffc3a394244ae5524fbdb2a0d29', null, 'dosage_unit', '支', null, '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('46d51cd81f4a44f298cf7ee640f32d48', null, 'attach-format', 'doc', 'doc', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('46ff3d0fa83942e280062661ca82d6fa', null, 'province', '河北省', 'Hebei', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('473fcfce0e5f4f78b6f2fb3f6d7a8f57', null, 'Basic_Information', '文献信息', 'Literature Information', '003', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('47fe2ac999c54ac395900b9496470383', null, 'maintain_control', '多行文本', 'Text area', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('482266c8522a49a3981f764c0e3a7339', null, 'can_reporter_be_followed_up', '未知', 'unknown ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('48227d5683884d738cb6a74b479edcc0', null, 'dosage_unit', '丸', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4828cbf1377e4ba9911985d4f0b29e74', null, 'pregnancy_outcome', '足月妊娠', 'Full term pregnancy', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4879490829c74cb8ac93913cb3f5edd0', null, 'inspect_unit', 'ug/m2', null, '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('488d53ea61e042e69591b393ca41d4cf', null, 'other_drug_information', '用药无用', null, '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('494abcb065524f569a87635be4c2bc3a', null, 'reporter_organisation', '医疗机构', 'medical institution', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('49529bd467de4f4591316222a743ce74', null, 'trimester_of_exposure', '孕中期', 'Mid trimester', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('49902e85ea384fb693e9a750ad5b7df9', null, 'inspect_unit', '%', null, '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4a208321927b4b42a1b4aa3f814022eb', null, 'inspect_unit', 'U/L', null, '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4a4238f913974b049a38eeabedd3bbe3', null, 'drug-formulation', '溶液', 'solution', '87', '87', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4b3f512e93ef49a4ae35fc3317c68b56', null, 'sex', '女', 'Female', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4bb132baf9ca440c951126877fe038da', null, 'dosage_unit', 'UT', null, '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4be4336720c34409a0b082b6e5711231', null, 'research-subdivision', '0期', 'phase 0 clinical trials', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4bf38d81f6db44829c3d802e1bb9a25b', null, 'research-design', '单盲', 'Single Blinded', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4c26fe5c53b3464c8ce2e0f976fa921f', null, 'drug-formulation', '缓释微粒', 'delay release', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4c5cbe8a3fa84a8cad582219338ba2d1', null, 'province', '台湾省', 'Taiwan', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4ca98f6b73824a0dbeb3f9db990126fe', null, 'drug-formulation', '缓释混悬液', 'sustained release suspension', '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4e29812c5e7e474eaa4f084f38480265', null, 'dosage_unit', '毫升', 'mL', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4ed96054dd224e3c9f4d97d5203fcd09', null, 'reporter_evaluation', '可能无关', 'It may be irrelevant', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4f775f3d501b466998fbe611abfae26c', null, 'Patient_Information', '相关既往用药史', 'Drug History', '003', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4f8ec6827c6244e0ab98c630418ec167', null, 'drug-formulation', '肠溶胶囊', 'capsulae enterosolubilis', '111', '111', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('4f8f540af55b439da230b6900fbe3867', null, 'dosage_unit', '毫克/千克', 'mg/kg', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5053a0fccab6432e979315b6e0b3c67b', null, 'medically_confirmed', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5104a1409d8642efa2fa7d5673be680a', null, 'drug-formulation', '醑', 'spirit', '88', '88', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('511042a6f2d5422885ed3d5091510a86', null, 'action_taken', '增加剂量', 'Dose Increased', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('513b10641c0e41e6ab5ee6c61b65b795', null, 'report_from_other_companies', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('520b064f9d3e45f8abdb934bbbf45039', null, 'inspect_unit', '[CCID_50]', null, '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52693d74c01f402b8dbb745c8ead87a4', null, 'autopsy', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('527ae705e09240bfb53cf40a0b1d5383', null, 'inspect_unit', 'mg/kg', null, '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('528b219ef756496f80583ace2b74d30b', null, 'research_role', '次要研究者', 'Secondary researcher', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5292606a8e1f4f849650574d481d2b72', null, 'inspect_unit', '10^9/L', null, '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52ac2224af1f4ee2a3c304fa685c727e', null, 'reporter_organisation', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52ba64c9a61f44469059be81def2ce82', null, 'inspect_unit', '[IR]', null, '65', '65', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('52bcccfccda04f65ae5ffd59afe0c4c7', null, 'drug-formulation', '洗剂', 'lotion', '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('532fc441bc674663a4e8e5100e6a560b', null, 'drug-formulation', '霜剂', 'cream', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('533962d91c2d4dc882fee6d113da3af8', null, 'inspect_unit', 'y', null, '77', '77', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('53640462d2124bc49b9ee3aa5d94f763', null, 'drug-way', '口腔/咽喉给药', 'Oropharingeal', '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('538b74097f644116a283f1597520e1ff', null, 'province', '天津市', 'Tianjin', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('53b659310f0b474880fa979e87a58403', null, 'diagnosis', '诊断', 'Diagnosis', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('53fe92d24393471da6ae0e30df52c392', null, 'drug-formulation', '搽剂', 'liniment', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5464293e50ff42cdaa5e2020bbd6af39', null, 'drug-formulation', '混悬颗粒', 'suspended granules', '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('54750bd0453841debdadfd7603083d7c', null, 'report_from_other_companies', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('54d2d517e3f64688856cecb305638eaf', null, 'drug-formulation', '茶剂', 'medicinal tea', '154', '154', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5500325017784f77aa7b893632fac2c2', null, 'clinical-research', 'Ⅱ期', 'Ⅱexpect', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('555230086ec3470eaf21ffd70e5d7c83', null, 'inspect_unit', 'cm', null, '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('55eac5c7204946a99cc59d1a9525f6c5', null, 'sae_reports', '不详', 'unknown ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('56e786302ca54f3d97a3ae4a2bd7bdc1', null, 'drug-formulation', '冻干制剂', 'lyophilized formulation', '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('57ddec56991744cb8c0af8b3915cc58f', null, 'drug-way', '心内注射', 'Intracardiac', '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('57f6b6284b364201a365ebc1b5a213fe', null, 'product-categories', '临床前药物', 'Preclinical drug', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58282c89367443dbace9b919657ae5cf', null, 'drug-way', '肌内注射', 'Intramuscular', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58414985c0b64a7eb0f1ab2b0937eeaf', null, 'drug-formulation', '透皮贴剂', 'transdermal patch', '149', '149', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58565b342c704551a1acb62352712450', null, 'pregnancy_outcome', '自然流产', 'spontaneous abortion', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('588381bcf2cc4e7093698f1da6a2f0a0', null, 'inspect_unit', '[TCID_50]', null, '72', '72', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58a629f20cf54d78a331b4de6d25c9f0', null, 'research-type', '其他研究', 'Other Studies', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58c1a969615b49e18e44cd3e45e3ea35', null, 'pregnancy_report', '孕中期', 'Mid trimester', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('58cd3ba489ad4535942bd5ef0e5322c3', null, 'inspect_unit', '[PNU]', null, '71', '71', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('591f822f810b415e9b694e8c3167c520', null, 'autopsy', '不详', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('592761cb55d8462fa78280d5a4483697', null, 'relevant_medical_history', '过敏史', 'Anaphylaxis', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5930dff54b0a458e9ce48b4847e3eae3', null, 'age_unit', '时', 'h', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('59896fd4fdae4cdb99793a8787c73f84', null, 'drug-way', '骨髓内给药', 'Intramedullar (bone marrow)', '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('59a5700498ed482c9c87a73496e488cd', null, 'initial_report', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('59b21344ab8a44a3bc476b1ea928d75a', null, 'province', '山东省', 'Shandong', '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5ace7e96b6f84c53b9ed85bb023d596c', null, 'age_group', '儿童', 'Child', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5b728aff240c41379300f4913c95e686', null, 'mailbox_setting', 'IMAP', 'IMAP', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5b95beb7b6574e3184ec0b4aeca7ba00', null, 'drug-formulation', '含漱液', 'gargle', '138', '138', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5b985456444e43728529cba23a895856', null, 'sex', '男', 'Male', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5be7108a25e44e1ca4c48934c600c161', null, 'inspect_unit', 'fl', null, '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5c03d851fa5b4078babd9943bcd8612f', null, 'maintain_page', '附件信息', 'Additional Documents', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5ca03ab67f054b3b9ec88efacd4ce134', null, 'attach-format', 'gif', 'gif', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5cadbe5deb4546d2a0c0a3454defef1d', null, 'drug-formulation', '胶浆剂', 'mucilage', '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5cbe295f87084b9393e16ba439af6a02', null, 'action_taken', '减小剂量', 'Dose Reduced', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5ce850404be44c40b61cb570e9ab3366', null, 'frequency', '单次', 'Single time', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5d659eee20ea404299eaa174e5c50d56', null, 'reporter_type', '其他医疗保健专业人士', 'Other Health Professional', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5e37c5f3383d46fdaac23adf9181420d', null, 'breast_feeding', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5eb9c0f5934e4b10893ebb18ba10fb86', null, 'inspect_unit', 'kg', null, '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('5fdfa7447b26403f90c49e9e446b8641', null, 'maintain_control', '日期（天）', 'Date(day)', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('601c209daa2d4d4f8b35a7320f904bcc', null, 'medically_important', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('60c2dea897934536a547d541fbb9cf1a', null, 'mailbox_setting', 'Exchange', 'Exchange', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6133c30f254a47f99d3cbdd6faff277e', null, 'relevant_medical_history', '妊娠史', 'History of pregnancy', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('618056c35bc34d66aecbecd72fce7e95', '', 'impacton_primary_disease', '病程延长', 'Periodic prolongation', '4', '4', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('618056c35bc34d66aecbecf72fce8e95', null, 'impacton_primary_disease', '不明显', 'Not obvious', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6190616a52764c3e97b8425dae288751', null, 'inspect_unit', 'dL', null, '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('61a05aaf9b6040e8920a2e5c350349ce', null, 'standard_of_seriousness', '导致住院/住院时间延长', 'Hospitalisation/Prolonged Hospitalisation ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('61dd1149899a427bb1999e1a7a1e6e73', null, 'is_serverity', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('624ca58732784fc79588c2e86ac8bafb', null, 'drug-formulation', '泡沫剂', 'foaming agent', '80', '80', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('627b5293905c400a811e7c59322af772', null, 'dosage_unit', '微克', 'ug', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6313e1db90ff4bb699d5a60b25c52e27', null, 'frequency', '间断', 'Interrupted', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('63155a9a8316430b995f02419ea054c8', null, 'source_info_name', '医疗机构', 'medical institution', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('63832f279d354f2cbc234c1d8d6ab26d', null, 'reporter_type', '律师', 'Lawyer', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('638a787dbd774d24ac61441d95a1aae4', null, 'inspect_unit', 'kBq', null, '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('647d71528be84f09a8e4462c1c15a36f', null, 'standard_of_seriousness', '致残/功能丧失', 'Disabling/Incapacitating', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('64a62b53957348d6819b7cdbe74f6a32', null, 'time_interval_unit', '周', 'wk', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('64f86d34e4bc45f498a15e8c0fd03393', null, 'research-subdivision', '针对特殊人群的探索性研究', 'exploratory research on special populations', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('65a76d87229c459f98845c519bb49822', null, 'dosage_unit', '微特斯拉', null, '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6608ab4110b145da8ffd7b517ee05732', null, 'standard_of_seriousness', '其他医学重要事件', 'Other Medically Important Condition ', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('662df3f787254eddae275108260f2f5a', null, 'Patient_Information', '新生儿信息', 'Neonatal Information', '005', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66a68d5ef4c540a187e84f766379dacb', null, 'other_event_terms', '药物停用症状', 'Withdrawal Symptoms', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66ae8dcfb82c4803ab417cdd8c16bd72', null, 'drug-way', '动脉给药', 'Intra-arterial', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66b7e38382634c1297d7ed7a810cdad2', null, 'reporter_organisation', '生产企业', 'manufacturing enterprise', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66e3f450369c432ba33e006d07c1ea4d', null, 'reporter_type', '医生', 'Physician', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('66f3c262c7c54f509497e205fc73983c', null, 'dosage_unit', '单位', null, '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6785f64bb6974fe6a14c7978cd38e6a1', null, 'attach-class', '电话记录', 'Telephone record', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('68146708f373430396ce07a00f2a645d', null, 'drug-way', '椎管给药', 'Spinal canal administration', '87', '87', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('694661c41660418c9831364f1d372557', null, 'age_group', '新生儿（早产及足月产）', 'Neonate (Preterm and Term Newborns)', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('694a90ece1bd4c14a452f95363bc452f', null, 'drug-class', '治疗用生物制品', 'Biopharmaceutical', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('698e837556c847eab29384471d7c1f4e', null, 'is_first_report', '首次报告', 'First Report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('69b3f90bccdb4344a8be4a1a216ad897', null, 'drug-formulation', '控释胶囊', 'controlled-release pellet', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('69d865a7eb7f4b709b6ccab270a5e8e8', null, 'drug-way', '经眼给药', 'Ophthalmic', '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6a0352d8c3114148bd48057885618d1d', null, 'inspect_unit', '[arb\'U]', null, '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ab3d0348dfe452ca3adb3aa373a2d4c', null, 'blindedor_not', '申办方揭盲', 'Bid blindness', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6bb0b055abc049d09ce6cc9758335f35', null, 'inspect_unit', '{decade}', null, '74', '74', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6bd71488bb4a41fabe669fd68fdd45d4', null, 'dosage_unit', '百万国际单位', 'M[iU]', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6d0dc9b3037e480a83457fc11d529722', null, 'can_reporter_be_followed_up', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6d87e4754d004d9f8324b49d400357a4', null, 'clinical-research', 'Ⅳ期', 'Ⅳexpect', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6db7fd808ec349b1b52a36ba87190d7c', null, 'drug-formulation', '硬膏', 'plaster', '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6de54704d46e40ab907a7dfd3ddc08a4', null, 'sex', '不详', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6e37afe1cc1a4c82ac5e3fc1d962e0de', null, 'qualifier', '≤', '≤', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6e3fe52502ae4f7e8fa4b11933ba16eb', null, 'birth_defects', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6e5dc112faa14eb6a0995a476c03a41f', null, 'drug-way', '鞘内给药', 'intrathecal administration', '88', '88', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ece667103574e988b5e23b087af123e', null, 'Reporter_Information', '报告者信息', 'Reporter Information', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ed579969a1d4e15ad46e3a593044a66', null, 'dosage_unit', '毫克/毫升', 'mg/mL ', '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6ede949c68e2425695f161521a051417', null, 'product-categories', '新药3类', 'New drug class 3', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6f0a7b5d6eb44c1ea46680b309943381', null, 'inspect_unit', '[iU]/kg', null, '67', '67', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('6f1886976d824e73963c0a72be3b3fca', null, 'drug-formulation', '粉剂', 'pulveres', '71', '71', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('702ee69ebf664790b8fca85ed09c77f1', null, 'dosage_unit', '国际单位', '[iU]', '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('70c2d64aea874333ae0b775eb9996d7a', null, 'dosage_unit', '毫克/平方米', 'mg/m2', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('710becf8b75a4a1a93d036bdd012fb7a', null, 'dict_type', 'WHODRUG编码', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('71a5d9a80d2a4002b5a4eb2a111fdf5e', null, 'event_out_come', '痊愈', 'Recovered / Resolved', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('72688951cd254ba39986c5177c42eaf1', null, 'drug-formulation', '涂膜剂', 'liniment', '61', '61', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('72c85602856a4a7ea350bfde7440404f', null, 'inspect_unit', '[CFU]', null, '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('733161d591384bf8a120876f5f834203', null, 'dosage_unit', '摩尔', 'mol', '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('737cc58b53124371a338369fb17a02f1', null, 'inspect_unit', '[hp_C]', null, '61', '61', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('739734c97720466682f6ecb903a00c3b', null, 'drug-way', '注射', 'injection', '81', '81', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('74153611a61a491b8340e175ddb864cb', null, 'age_unit', '周', 'wk', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('749040510bc542b283dad3660d804daf', null, 'drug-formulation', '浓缩丸', 'condensed pill', '81', '81', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7532907b2392465f9d86ae1a50e94d51', null, 'drug-formulation', '口腔贴片', 'buccal tablets', '137', '137', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('756de0259d5a4aa2a3450623120b32c5', null, 'combined_treatment', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('765ad952a9384c4c9c99caa4ece62606', null, 'maintain_page', '不良事件', 'Adverse Event', '06', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('76c93251fa194f988e067b976cb868b6', null, 'follow-up_information', '无效报告', 'Invalid report', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7739366db3f3450ebab057cd8d0fbcca', null, 'drug-formulation', '橡胶膏', 'rubber', '66', '66', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('778c849dcc3d485cb6ba1f9d0fcd3acc', null, 'Overview', '报告属性', 'Reporting Attributes', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('77df4d88547c450b94c14ae36f1fbd96', null, 'drug-formulation', '水煎剂', 'water decoction', '110', '110', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('77e166d81bd44e1e9f535bd4e1214f90', null, 'attach-class', '说明书', 'Instructions', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7846e64c9947493fa4a05f671bc8c0a6', null, 'inspect_unit', '次', null, '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('788a66bf1b584b33a8c37ca78c900efc', null, 'drug-way', '鼻饲', 'Nasal feeding', '69', '69', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('78a9904c8dae4d75868a18714fcecfff', null, 'inspect_unit', 'umol/L', null, '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('78c198e66f5541eca9f6c97ec09263bb', null, 'inspect_unit', '[hp_X]', null, '64', '64', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('78fbd025ad864377939430bdf24cef79', null, 'Overview', '文献信息', 'Literature Information', '004', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('792f2c6fa210468d93b718eb6305a528', null, 'reporter_cancel', '修改', 'Amendment ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7985ef184cb84a22ad9bc742c6a2f6dd', null, 'pregnancy_outcome', '过期产', 'Overdue production', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('799673e2ec9d40fd9d10203f9dbfd5e3', null, 'drug-way', '肝动脉灌注', 'Hepatic artery infusion', '73', '73', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7a2a09f2a8834574826f54f7ee4aaff5', null, 'event_out_come', '未好转', 'Not Recovered / Not Resolved / Ongoing', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7a41b6445cb54c52969d5f88cfbf840d', null, 'research-subdivision', 'IIa期', 'phase IIa clinical trials', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7ae4a2caad1641d6be79da4c91362bb8', null, 'reporter_evaluation', '肯定有关', 'There must be something about it', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7b2e89cd214a4b5b9c2bbabb0a619e52', null, 'drug-formulation', '含片', 'lozenge', '135', '135', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7cf23d91faa340429e829cff306bdfde', null, 'province', '湖南省', 'Hunan', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7d64d395904449908cc3430108a946e5', null, 'province', '上海市', 'Shanghai', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7dbd06c21dcc4d0598627ce5e46e4dbb', null, 'drug_info_type', '国产', 'Home-made', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7e059b285bce499495e7fbaec2aac97e', null, 'inspect_unit', 'ug', null, '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7e2b54baccb040a5ba89213a00bd9aa3', null, 'drug-formulation', '咀嚼片', 'chewable tablet', '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7ef95ce33a274573a5e34a9e37a70117', null, 'inspect_unit', 'MBq', null, '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('7f1f98b10f8f4719a09352a9ed75967f', null, 'inspect_unit', '[iU]', null, '66', '66', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('800109051cfe4f4ea59e7ad3585e146f', null, 'is_pregnancy', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('802d4d698e9e4639add5069d967a4b21', null, 'history_type', '家族不良反应史', 'Family History', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8040dfdb6fca4f99842a671fbe502c05', null, 'research-subdivision', '针对常见疾病的探索性研究', 'exploratory research on common diseases', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('80bcecb96642474a8681f7da8570ccd9', null, 'extended_hospitalization', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('81141b2a04134ffbb46f6e89ecc69a2e', null, 'drug-formulation', '颗粒', 'granule', '133', '133', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8211652755d849518482a4aac6028c8d', null, 'drug-formulation', '微粒', 'particle', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('82501dbf73724ff585c280020637bb43', null, 'drug-formulation', '丸剂', 'pilula', '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('82f2b2b3d5954f28b9de24c3b16d5fb0', null, 'drug-way', '脑膜内给药', 'Intrameningeal', '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('831b5fe7c7cd41a89bcb595319711d7e', null, 'is_attach', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('838c6afd53ca42efa12dd948bae3a01d', null, 'drug-formulation', '分散片', 'dispersible tablet', '132', '132', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('839f3830144d4474a97302ea692b7e58', null, 'inspect_unit', 'M[iU]', null, '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('840899476ae3451684ea9257f51fa6ea', null, 'drug-way', '角膜给药', 'Intracorneal', '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('842afd0f8f034528a208ac028f8f1e00', null, 'inspect_unit', 'I', null, '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('847d4d7d486c4d26af7a434646966736', null, 'research-design', '双盲', 'Double Blinded', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('84d7100659c546179544625259993efc', null, 'company_type', '其他', 'Other', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('84e4a69e9e1e426b916237823b819f87', null, 'reporter_type', '消费者或其他非健康专业人员', 'Consumer or other Non-Health Professional', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('85141db394524fb4b253fc4a05636e6f', null, 'drug-formulation', '颗粒剂', 'granules', '69', '69', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('852d720b65184aec8a687e74bd935629', null, 'Drug_Information', '报告适应症编号', 'Drug Indication', '003', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8535f15a07274b329995a5d0b4a649a0', null, 'other_drug_information', '假药', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('85545b6a67b04bb7beaa7030796292bb', null, 'is_primary_reporter', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('857d69c28833485bb120f28cb71c7985', null, 'province', '甘肃省', 'Gansu', '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('85d54c86685c4419a16c33f974947be6', null, 'drug-way', '海绵体器官给药', 'Intra corpus cavernosum', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('864b9c58f07e4a38983c95ac5741952f', null, 'ctcae_classification', '2级', '2 level', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('864cb086fea14116a4c831d87613e321', null, 'drug-formulation', '锭剂', 'lozenge', '95', '95', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8677e2b91b7846f29ec9de03d6ad89e9', null, 'attach-class', '质疑问卷-解答', 'Question questionnaire answer', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('869b2cbab344487b9d859a7010845e71', null, 'inspect_unit', '[AU]', null, '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('86f22a0ea828475d91db9b7923d39ed5', null, 'province', '浙江省', 'Zhejiang', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8809200fb66e4288bb1e70f4d3c7c581', null, 'inspect_unit', 'uCi', null, '46', '46', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8829f7d6af204ad7ab387c2e88d8c851', null, 'drug-formulation', '混悬剂', 'suspension', '148', '148', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('884cf8ae75714b0796aadddac0c09d71', null, 'drug-way', '泵内注射', 'Intramuscular injection', '83', '83', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('88666227de724498ac03c08c8f72995a', null, 'maintain_page', '实验室检查', 'Laboratory', '07', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('887f38a87d554b6bbf8ea129033055d5', null, 'drug-formulation', '干混悬剂', 'dry suspension', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('88b7933410614fada0045b317bc700c9', null, 'inspect_unit', 'U', null, '45', '45', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('88cc4a6d32a04a1ba5dbc4e6e001287c', null, 'age_unit', '月', 'mo', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('89a323fc8ce841ab9b611c4ad121ff22', null, 'drug-formulation', '阴道灌注液', 'vagina perfusate', '146', '146', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('89b605f8e8c8445faddc45886c10a6cb', null, 'inspect_unit', 'h', null, '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('89f3adceab9a454e88dbb05f68d27009', null, 'product-categories', '新药5类', 'New drug class 5', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8a083c778f70414ca4c10e537233080c', null, 'received_from', '患者支持项目', 'Patient support project', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8a17775be7b44462beaab535e781b6c1', null, 'drug-formulation', '灌肠剂', 'enema', '128', '128', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8a5e724609d7477797d951e4be671fb0', null, 'pregnancy_outcome', '早产', 'premature delivery', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ac86a85669d496e970011193355a072', null, 'province', '吉林省', 'Jilin', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b4e814f6f664af894fcd3c06db12cd3', null, 'dict_type', 'WHOART编码', null, '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b82de1691de4192b832611159e98b88', null, 'standard_of_seriousness', '先天性异常或出生缺陷', 'Congenital Anomaly / Birth Defect ', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b8cadb5044342169df9b00b541366fb', null, 'time_interval_unit', '月', 'mo', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8b913054bf944842b1c8f4b2eb17b775', null, 'autopsy_results', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ba50b3cf3494120a222a00bfc205e5f', null, 'reporter_evaluation', '可能有关', 'It may be related', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8bf111130a9f448b9c37a00443b92dd1', null, 'inspect_unit', 'mmol', null, '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c082f0fb0504d8fa949a12c51f264f1', null, 'company_info_type', '药企', 'Pharmaceutical Company', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c408ac96f6846f0a84a5018a1302620', null, 'maintain_page', '患者信息', 'Patient Information', '04', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c5efa83b9a84a0290804c3a5717bf17', null, 'drug-formulation', '缓释小丸', 'sustained-release pellets', '112', '112', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c5ffc5acbc34a42a214dce4db722d90', null, 'dosage_unit', '纳克', 'ng', '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8c978e846a3e4bda989aea0ade68027a', null, 'frequency', '多次', 'many times', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8cc2f28cec7c4c60a03bfe0ecca81175', null, 'drug-formulation', '敷料', 'surgical dressing', '100', '100', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8d72b096bc0942b8aef2403e4ab10522', null, 'company_type', '生产企业', 'manufacturing enterprise', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8d94712344b74f1abfce26f6315dde49', null, 'drug-formulation', '阴道片', 'vaginal tablet', '68', '68', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8d9d79a52cb24f9892c471cfee2c85f1', null, 'inspect_unit', 'g', null, '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8dece978f3c74b1fa9e3020e5a8fff80', null, 'blindedor_not', '盲态', 'Blind', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ec1f3a702b04cbba9801186db1e2daf', null, 'drug-way', '漱口', 'gargle', '71', '71', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8ecae712c07b40a5952addfc58c517e6', null, 'age_group', '婴儿', 'Infant', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8eef00a8880b4adc9ebee055ff487387', null, 'drug-formulation', '滴鼻液', 'nasal drops', '102', '102', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8f73fa960ca64287a4c403a188f84eb4', null, 'drug-way', '造瘘管注入', 'Fistulas injection', '75', '75', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8f7bbdd51a0d47c4b63bc079e43b3bd1', null, 'drug-way', '前房内注射', 'Injection into anterior chamber', '85', '85', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('8fd97fd9f65245859b9bf634b17dd854', null, 'ctcae_classification', '5级', '5 level', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9014e7f6de224552a3e02bdde49dee25', null, 'interaction', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9040be4f0f584f4b81bd7ce1bd3fbf55', null, 'drug-formulation', '滴丸', 'dropping pill', '91', '91', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('90601075547142ebacd70541dcd00154', null, 'drug-formulation', '缓释颗粒', 'sustained-release granules', '127', '127', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('912581f417484e95b668d2bd52c1cc5f', null, 'age_unit', '秒', 's', '6', '6', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('91f1c45bbeed4a98a536488561880a3b', null, 'life_threatening', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9230dfd7811f4438973f90892f8d489b', null, 'medically_confirmed', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('929d73eae5704fa3b20bc6f3709c98ce', null, 'clinical-research', '上市后研究', 'post marketing study', '6', '6', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('92c4c4add7034bf29b59289551fd65bb', null, 'pregnancy_report', '孕晚期', 'Late trimester of pregnancy', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('92c4c4add7034bf29b59289651fd35bb', '', 'pregnancy_report', '不详', 'Unknown', '4', '4', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('92d3498237ec49209fe1907312d513a0', null, 'source_info_name', '文献报道', 'Literature report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9349b2df11034a128598c1acd8eb3983', null, 'drug-formulation', '浸膏', 'extract', '82', '82', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('936903b35b7c45f0bbc301cf1e00c576', null, 'inspect_unit', 'mg', null, '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('945237026cc3441fa27eb5fe4b15fb71', null, 'drug-way', '羊膜腔外给药', 'Extra-amniotic', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('94c42266eaa04f50962ac3cb9497c911', null, 'inspect_unit', 'meq', null, '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('95295510e235487eaa2ac515c9923e9d', null, 'severity', '中度', 'severe', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9553af7ae2174349aea07b03999d5062', null, 'is_reported_drug_supervision', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('959a2e152c934639b81106cf6ec68700', null, 'reporter_type', '药师', 'Pharmacist', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('95c59855c1ac4507be76c7b950a61bfb', null, 'report_identity_type', '父母报告', 'Parent Report', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('95dca37d723148e28fa2257bcd8f3b00', null, 'action_taken', '停用药物', 'Drug Withdrawn', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('96114c7821354ff6a32a99f4f1367882', null, 'IME', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('964ce5ad0bac49f086b89daab5b7c618', null, 'drug-formulation', '中药材', 'traditional chinese medicine', '106', '106', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9660b285dbbf4e1597a25fca6e248b04', null, 'reporter_evaluation', '肯定无关', 'There must be nothing to do with it', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9671da9881f64f38b241ea17c09b26b7', null, 'dosage_unit', '皮克', 'pg', '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('969819ec1be843c59d94890a7f488c2f', null, 'drug-way', '牙科给药', 'Dental', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('96c632cc15c34f2fb377205ef9f9c9e4', null, 'Patient_Information', '相关病史', 'Medical History', '002', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('96e0ae255f7e40f28ae041b9a0767975', null, 'drug-formulation', '糖浆', 'syrup', '136', '136', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('972f0e84ff3f42f7a97e25cf4a6cd0cf', null, 'time_interval_unit', '时', 'h', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('973d8dd004644fa883a6fa047cca0e18', null, 'autopsy_results', '不详', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('974be5f1601a4c97a33d346c91ad8882', null, 'drug-way', '未知', 'Unknown', '65', '65', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('976279e99d7548e3a4d0238e2c2bd230', null, 'drug-formulation', '喷剂', 'spray', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9776d662737249eb8ccfc20df2c69876', null, 'Basic_Information', '与本报告相关的报告识别码', 'Link Report', '005', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('97c047a3124d416693554ee1979bf916', null, 'inspect_unit', 'cm2', null, '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('97ef88aaca3a4b1f8f58459a7ea1861c', null, 'drug-way', '胸膜腔内注射', 'Intrapleural', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9827b20e101a410d906bd816363d8eae', null, 'attach-format', 'mp3', 'mp3', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('987f8a88d193406cafff032cbcf71a59', null, 'drug-formulation', '控释贴', 'controlled-release patches', '86', '86', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('98a5ea54aeb34a6098588be071547556', null, 'seriousness', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('98ab2a71b8eb4a7bb833d873c8f53cd8', null, 'drug-formulation', '胶剂', 'colloids', '143', '143', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('990a545c9f164c589d70c219aa17825b', null, 'reporter_organisation', '经营企业', 'Business enterprise', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('993b0e944edc4b7e823f3c93193e635e', null, 'relevant_medical_history', '肝病史', 'History of liver disease', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a17edc4ea064ae7b714f4081fb53fba', null, 'combined_treatment', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a2b75359267422a96fb035bc41e1398', null, 'research-subdivision', '观察性研究', 'observation study', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a720e1a9d284018be974a64d51f52e8', null, 'drug-class', '化学药', 'Chemicals', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9a9a834efccb4e72badf4059b38dd3df', null, 'drug-way', '气管/支气管内给药', 'Endotracheal', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ab48fc4f71c4b57ae822934a6037cce', null, 'sender_type', '监督管理机构', 'Regulatory Authority', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9af5776eec3f4a369ea0fc1e6f36ddea', null, 'dosage_unit', '微摩尔', 'umol', '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9aff81f1b2e44c2d814075898ae0ab37', null, 'action_taken', '继续用药', 'Dose not Changed', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9b50928825964bfba6605d41505f66e5', null, 'attach-format', 'png', 'png', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9b9377797b91440fabfebef3b857fa6d', null, 'birth_defects', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9bce50da1b1b4ad9a5a2742e55da2b9c', null, 'zjf', '未再使用', 'Unused', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9bfd73c3066441959eabf12af9bc936c', null, 'province', '安徽省', 'Anhui', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9c274aaffb834a1b82e0483da8b3613a', null, 'other_drug_information', '药物过量', null, '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9c4886a7d84640579ac4a038e5dafa4f', null, 'drug-way', '真皮下给药', 'Subdermal', '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9c8a8d7474bd4c519fd60f39a563e3cc', null, 'attach-format', 'jpeg', 'jpeg', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9cbc70f05211408e928eeb8cddc435ac', null, 'drug-formulation', '气雾剂', 'aerosol', '92', '92', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ceda541a7be45b8a44f03ee41101a7c', null, 'age_unit', '日', 'd', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9d9ce2b6a27946afaa80564e6be8f34a', null, 'drug-formulation', '冲洗液', 'Irrigation solution', '119', '119', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9dca4d45ec454883a20dad80d52e438b', null, 'inspect_unit', 'mg/m2', null, '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9e8a5ecc9e974f20935e17b9992c7c37', null, 'drug-class', '中药', 'Traditional Chinese Medicine', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ea9321cbcd04b5d8ea28f1636623801', null, 'follow-up_information', '数据清理', 'Data cleaning', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ee1eca2788c494d8899561c479f12e5', null, 'drug-formulation', '片剂', 'tablet', '70', '70', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ef21c6e8cfd4780a833e9430929cae7', null, 'drug-formulation', '口腔崩解片', 'orally disintegrating tablet', '147', '147', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9f4ec60272bf412d97eae4a61cd17a58', null, 'drug-formulation', '舌下片', 'sublingual tablet', '93', '93', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9f83354278ec4cd395b7642b7835d3ff', null, 'drug-way', '表面麻醉', 'Topical anesthesia', '77', '77', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('9ffcebb29eef4e74904102fb84d49b54', null, 'qualifier', '＞', '＞', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a0da97ee562c438392b928a47658caed', null, 'pregnancy_outcome', '人工流产', 'artificial abortion', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a0e2f99598504978ac3808b486da67df', null, 'reporter_evaluation', '待评价', 'To be evaluated', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a10ffaa804214b98a28a60454a7208bd', null, 'zjf', '不明', 'yes – unk  (rechallenge was done, outcome unknown) ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a14742b04e9040e6af4c0bd6aeed20f5', null, 'drug-formulation', '注射液', 'Injection', '20', '20', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a1b400e60485430ea6c86c036692646e', null, 'drug-formulation', '口服液', 'oral liquid', '34', '34', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a22f4a5c6a0347a4a1f3e71ea4c63d13', null, 'attach-format', 'xlsx', 'xlsx', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a248bfef2a8a4bf1ae20e6ace12706db', null, 'reporter_privacy_confidential', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a25a40d8aa2d4e7088bddb243d182d05', null, 'drug-formulation', '外用冻干制剂', 'freeze-dried preparation for external use ', '109', '109', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a2aea0cb44b34a25a86635b1937624d0', null, 'dosage_unit', '分升', null, '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a31f28cb47d74fe9a6330ba14cd526a5', null, 'drug-formulation', '灌洗液', 'graft caval effluent ', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a323ce54830943c59f5e5b2c16d13418', null, 'severity', '轻度', 'Light', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a44c1c2cdb6643beb94ba748d55f5d50', null, 'drug-formulation', '混悬滴剂', 'suspend drops', '96', '96', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a53e8ce09eb2478c986808850f3d26a2', null, 'maintain_page', '药物信息', 'Drug Information', '05', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a55f47045ba241b798221f5893628753', null, 'research_role', '首要研究者', 'First researcher', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6791ca144cb48848c260ee50d1ea933', null, 'inspect_unit', '[drp]', null, '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6d9f905c4a14094836c08d76bb6725c', null, 'inspect_unit', 'umol', null, '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6e18f2a34b746fcaa83cf2576815d0c', null, 'drug-formulation', '滴眼液', 'eye drops', '155', '155', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a6f23bdade0a4e95992a6e1de823449b', null, 'source_info_name', '经营企业', 'Business enterprise', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a74a0357a2d14736a25c999ba8d7cf28', null, 'seriousness', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a78de3ea9b8f4f2c919e5adb1ba22298', null, 'province', '河南省', 'Henan', '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a8509e19b5394925b4fd5be1fdd26af1', null, 'inspect_unit', 'uL', null, '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a894dff2a2284e68af7375a080a307e2', null, 'drug-way', '局部给药', 'Topical', '61', '61', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a89c3987c04c4d6aa649a49124ad0e1b', null, 'drug-formulation', '散剂', 'powder', '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a98a61c9a88b40f5a6e54f36de638153', null, 'source_info_name', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a9936d4736224d9a9b804e3a92b1232c', null, 'drug-formulation', '缓释干混悬剂', 'sustained release suspension', '27', '27', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a9a8823f511d4b9898f764f8e064fa81', null, 'pregnancy_outcome', '结局未知', 'Unknowns', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('a9c1ed54a6da46f791916cd5427033e1', null, 'bind_test_drug', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa144aacbb2247e8905fe72150be9fae', null, 'drug-formulation', '酏', 'elixir', '144', '144', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa79e25f2a5e4e489487bdd51e135730', null, 'drug-formulation', '吸入溶液', 'Inhalation solution', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa8294a0ad3c40a5ae6560bbf4d1a65e', null, 'action_taken', '药物暂停后又恢复', 'Recovery after drug suspension', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aa8da00b803842608bcc294c77cfdcf9', null, 'time_interval_unit', '按需要', '{asnecessary} ', '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aaa77118d5994f6da8871c3e6ce7f484', null, 'drug-way', '其他', 'Other', '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aacff1ac60f74068a563baec28e6f5bf', null, 'other_drug_information', '药物滥用', null, '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('aae418a549664d21a73aea22b46d4a29', null, 'drug-formulation', '鼻用吸入剂', 'nasal inhalation', '64', '64', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ab363cbdd8bc41a8a863334e04f008c7', null, 'drug-formulation', '粉针剂', 'powder-injection', '120', '120', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ab5241a23f1240ec8d0e1c1de3a00a77', null, 'drug-formulation', '口服乳', 'oral emulsion', '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('abb8e90f29a248b8a67cddf4fe62d358', '', 'Patient_Information', '报告的死因', 'Reported cause of death', '007', '7', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('abb8e90f29a248b8a67cddf4fe62d958', null, 'Patient_Information', '相关既往用药史', 'Parent Drug History', '011', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('abfa9d1e93344ad6984985a7066f7228', null, 'drug-way', '直肠给药', 'Rectal', '54', '54', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ac6794b5a31b44ff9c1165d9e686f3a5', null, 'drug-formulation', '膏剂', 'paste', '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ac91cff200814d518c484282fef1dd87', null, 'qualifier', '≥', '≥', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('accef5343b2d45a6a29044acd9f9e742', null, 'sender_type', '世卫组织国际药物监测合作中心', 'WHO Collaborating Centres for International Drug Monitoring', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('acd31f5cbe0d48ea8f2a1cda9fac0ad1', null, 'inspect_unit', 'nCi', null, '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ad5b3382c3664d38975fbf7659d4dbb7', null, 'autopsy_results', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('add42cb051e84e3a9b20cddfe259cefd', null, 'drug-formulation', '体内诊断试剂', 'In vivo diagnostic reagents', '141', '141', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('adf48f706f5e47929022906841028283', null, 'drug-formulation', '明胶纤维', 'gelatin fibre', '84', '84', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ae3cd8832bfc46839be7c7dbead986b8', null, 'drug-formulation', '缓释胶囊', 'sustained release capsules', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af21a061e4814cceaa91096437140dae', null, 'company_info_type', 'CRO公司', 'CRO', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af50769ee5c14e6588f75ca2e4f2f7be', null, 'inspect_unit', 'mg/dl', null, '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af576cc982aa42759bf13a9e4f919d96', null, 'pregnancy_outcome', '死产', 'Stillbirth', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af6ef5171bbb41bba288a858325832f6', null, 'drug-class', '其他', 'Other', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af8cd09330624c03a9511d5e62a8bee9', null, 'drug-formulation', '肠溶缓释片', 'enteric-coated and sustained-release tablets', '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('af9a51cf5b974314b66f95ce0008e8b6', null, 'received_from', '上市后研究', 'Post marketing research', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b07f0c7caf2d4590a7b95aee53a3fcfb', null, 'drug-way', '子宫内给药', 'Intra-uterine', '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b0928800cea54513acf558caf6220e56', null, 'province', '黑龙江省', 'Heilongjiang', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b18f9d9458964037be282c3295a8fd73', null, 'drug-formulation', '阴道药膜', 'medical film for vaginal use', '151', '151', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2025b3dc6f94b198fd8f7b66882ac6d', null, 'is_first_report', '随访报告', 'Fllow-up Report', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b22819b4f15c4b6180ff7592c784d3ce', null, 'drug-formulation', '试剂', 'reagent', '74', '74', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b267318d01ac40e599726227c6ab43bb', null, 'inspect_unit', 'mmHg', null, '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2c9f6b53d7a49d99f8b7eb3c1f09321', null, 'drug-formulation', '微丸', 'pellet', '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2dd7109e89c4a08a0bb0bd6c6c5464b', null, 'maintain_page', '药物/事件矩阵', 'Drug/Event', '08', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b2feeb2005b94ba7a53a07dc72255113', null, 'drug-formulation', '控释片', 'controlled-release tablet', '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b3d340c25a4045f2aebabecfb9670110', null, 'is_ongoing', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b3d8ee5c3443483aaac09eb885d485a5', null, 'report_identity_type', '父母-子女报告', 'Child Report', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b4678b06cfc2491faa06e73afcdaf6be', null, 'maintain_control', '下拉单选择', 'Drop list Single', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b47e479db4164eb6a9cde777c15c52b9', null, 'other_drug_information', '服用超过有效期的药物', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b483a19f671c47618b8baa52065e1b90', null, 'time_interval_unit', '秒', 's', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b4fb23dd7a4a45d6a5ca0759bbcf92e5', null, 'drug-way', '管道喂养', 'Parenteral', '51', '51', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b50377551a1c46659638f910827dad77', null, 'trimester_of_exposure', '孕早期', 'Early pregnancy', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b54297086257454fa89bc3d698a5e7eb', null, 'drug-formulation', '凝胶', 'hydrogel ', '97', '97', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b6a55fd0be084a409c8cd2f03fda00fb', null, 'dosage_unit', '毫克/分升', null, '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b6ade853aa8a4b16a1b4851a9073f1c0', null, 'drug-formulation', '眼膏', 'eye ointment ', '124', '124', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b70a9220b2664298b7ee3e23451fbe8c', null, 'Patient_Information', '尸检-确定的死因', 'Autopsy', '008', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b745754aff7a4c7eb2baacfeaad2ab21', null, 'drug-formulation', '染发剂', 'hair dyes', '142', '142', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b76289c920704a1999c2aff1bd2e8c87', null, 'clinical-research', '临床验证', 'Clinical Trials', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7a044a6cc82466783f5d5fd48e49aca', null, 'drug-way', '皮下给药', 'Subcutaneous', '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7a90ce5c97e472cb0de5da00d5b3128', null, 'blindedor_not', '研究者揭盲', 'Researchers uncover blindness', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7f59eb6fba74fbc928647f391240797', null, 'product-categories', '新药6类', 'New drug class 6', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b7feff2b01584788a0cf77749dd88c83', null, 'province', '陕西省', 'Shanxi', '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b80bad05d8e74458af1e9146dc32b22e', null, 'other_event_terms', '与疾病进展相关', 'Disease Related', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b82bffb1c63345eb958c4439255ad7a8', null, 'drug-formulation', '吸入混悬液', 'Inhalation suspension liquid', '160', '160', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b82e9d7aa0f14047a9dd82e08aac7232', null, 'drug-way', '吸入给药', 'Respiratory (inhalation)', '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b900a0c564ab44258ebb6d9acc0df15a', null, 'drug-formulation', '眼用凝胶', 'eye gel', '113', '113', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b9bed4dc1989468191b93735bd6ade28', null, 'drug-way', '结膜下给药', 'Sunconjunctival', '57', '57', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('b9d8b0b8619c4af4ab01164ea53fe45d', null, 'reporter_cancel', '取消', 'Nullification', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ba6dfc2add9d475fa0dbc54850d2cf38', null, 'pregnancy_report', '孕早期', 'Early pregnancy', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bad696bd424246138cf634c55c753710', null, 'is_primary_reporter', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bb94d90684f3481eaa0a49d042d690ee', null, 'history_type', '既往不良反应史', 'Past medical history', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bbfdc2c6d88f4fbdab9610085533ffbd', null, 'drug-way', '肿瘤内注射', 'Intratumor', '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bcbcbfcd86024f72aa48e567b42a9a37', null, 'other_drug_information', '用药错误', null, '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bcc25cfeec50480296df157b0f1a167c', null, 'drug-formulation', '涂剂', 'lotion', '101', '101', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bcc963d08d554530aec408669c341476', null, 'maintain_control', '下拉录入', 'Drop entry', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bceb0a5ee4984afaac0c0d3e4db51482', null, 'drug-way', '羊膜腔内给药', 'Intra-amniotic', '12', '12', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bd8bc9af51384ceea73f880c868ece8f', null, 'source_info_name', '上市后研究', 'Post marketing research', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bdf966b5b4064d52896c0cd7a096bb7c', null, 'drug-formulation', '喷雾剂', 'spray', '150', '150', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('be10f7a90481489f8a0cc8ef439c5d95', null, 'inspect_unit', 'um', null, '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf12be218fc14c1fa9aefc9a517aab50', null, 'pregnancy_outcome', '失访', 'loss to follow-up', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf33a96535784c299b672737e08b8f94', null, 'drug-formulation', '粉雾剂', 'powder ', '108', '108', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf938b18bad64ae3884374e4f872538c', null, 'attach-class', '尸检报告', 'autopsy report', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bf9c342668034cf9a137268f4ada2908', null, 'age_group', '成年', 'Adult', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bfd14c5d19c045c09918574c2efbc6c6', null, 'pregnancy_outcome', '宫内死亡', 'Intrauterine death', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('bfd18abd26ff4687a7363e09ba06e5f4', null, 'source_caseidentifier', '产品质量投诉', 'Complaint of product quality', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c03319e5450944f6b7c2505b3501a78f', null, 'dosage_unit', '居里', 'Ci', '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0a72dce597245c39710d8c91e823428', null, 'inspect_unit', 'k[iU]', null, '24', '24', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0ab20fa98ac44bdb2d28f408c07d8cd', null, 'is_death', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0b1c3fac9214ed48b394e512c116e28', null, 'attach-format', 'txt', 'txt', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0b754a9054e44ccb3454d4e8f53f78c', null, 'drug-way', '膀胱内给药', 'Intravesical', '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c0d302ad00354b359511318c9d629e0d', null, 'province', '江苏省', 'Jiangsu', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c11bf64ef1f2429db4352888d166d008', null, 'drug-formulation', '泡腾颗粒', 'effervescent granules', '49', '49', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c13b8f18ed8d490d9ced2ab510a0556d', null, 'drug_character', '怀疑药品', 'Suspect', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c21af912b7dc415395be28e813c03ead', null, 'drug-way', '口服', 'Oral', '48', '48', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c22282e051214e9a9aba652b89e58dfa', null, 'province', '山西省', 'Shanxi', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4463554d48e46f08b2866654d91c864', null, 'inspect_unit', '10^12/L', null, '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c47af321ffdf43a7917935a5c22afa25', null, 'province', '西藏自治区', 'Tibet', '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4ad4b733ccb40969f7d00525175b641', null, 'drug-way', '经乳房给药', 'Transmammary', '63', '63', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4b7a52f08cb40cba3770b65d483b471', null, 'inspect_unit', 'mmol/L', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c4cf7343d5f14c2296b9751fd5949b00', null, 'inspect_unit', 'wk', null, '78', '78', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c51449f2f2f14fcfba1e2d6d9e1a58fb', null, 'breast_feeding', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5563c96eec8485c91c1f2ac92ff3529', null, 'drug-formulation', '阴道栓', 'vaginal plug', '98', '98', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5c1c0eea152482fb9e82a670b3105ec', null, 'drug-way', '皮内注射', 'Intradermal', '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5d852bc25c74937ac55df1b56eeb647', null, 'drug-formulation', '丹剂', 'sublimed preparation', '75', '75', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5eda17a1d9e412da511624fd1a6889f', null, 'inspect_unit', '[D\'ag\'U]', null, '58', '58', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5f065b096054de1acca0f079b2ce157', null, 'province', '江西省', 'Jiangxi', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c5f6558009da40c08bb6a30941f1dc69', null, 'drug-formulation', '吸入剂', 'inhalant', '105', '105', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c65bc1f3c2394c78a4ea3c2f623f0186', null, 'drug-formulation', '缓释植入剂', 'sustained-release implant', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c6d41257c66249cfaa631915620f149c', null, 'drug-formulation', '注射剂', 'injection', '39', '39', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c75771c430164e94afc4067ab53060e6', null, 'reporter_evaluation', '无法判断', 'Unable to judge', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c7a7e8a88b6e49cd960c4903b740c87f', null, 'attach-class', '药品检验报告', 'Drug inspection report', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c7ead525fdd343c98ec4e0b055520ec6', null, 'dosage_unit', '微居里', 'uCi', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c8a9e24ba36a495fa4bf3dfb83e2c6ac', null, 'sae_reports', '无', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c8b576acde7640d1af470dd172492d8e', null, 'dosage_unit', '粒', null, '28', '28', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c8db9de721e34c8a9d71f0cce6364e11', null, 'drug-way', '海绵体给药', 'Intracavernous', '17', '17', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c94328151d7044dea0a9c61bb7be8b18', null, 'received_from', '文献报道', 'Literature report', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('c998636bcaf9445ea7577e658d2ae1c4', null, 'clinical-research', 'Ⅲ 期', 'Ⅲexpect', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ca14948c8f86491fa174b6b14afec93a', null, 'sender_type', '患者/消费者', 'Patient / Consumer ', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cbb3b6d5e79b49e5a8b5f8b382eca921', null, 'Laboratory', '实验室检查', 'Laboratory', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc084e5af26741c9899de8082db01431', null, 'drug-formulation', '涂膜', 'coating', '89', '89', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc3c4b80ee124c65a502ec9d943eedd6', null, 'action_taken', '不适用', 'Not Applicable', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc4c0549024d4438847aa8a456267f43', null, 'disabling', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cc8a200359204d999257194d54e54ba4', null, 'drug-formulation', '合剂', 'mixtrue', '79', '79', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cd0a6dd15ab74294a567ffa1c9e64c2d', null, 'drug-formulation', '糊剂', 'paste', '163', '163', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ce0504e36f8a4b3e91f1e0c3902f3b3e', null, 'qjf', '否', 'yes – no    (rechallenge was done, reaction did not recur) ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ce160f7046ce412b87de6e62d3867ee7', null, 'inspect_unit', '[FFU]', null, '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cee8e9b822b1496b8434afa058024de4', null, 'is_death', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cf331ea1b9ef45acb9a0006548c689c8', null, 'drug-way', '经胎盘给药', 'Transplacental', '64', '64', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cf593c8dfcb740939846c8b5dd8ca2a4', null, 'event_out_come', '死亡', 'Fatal', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cf72f18314684705aec4338bb4f6eba6', null, 'drug-formulation', '控释透皮贴', 'controlled release transdermal stick', '59', '59', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('cfae8e838a1b4c04b36e3fdf2d9fbaab', null, 'drug-formulation', '洗液', 'washing liquor', '32', '32', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d008278d887c479cbb857f1f982e9ee6', null, 'drug-way', '局部浸润麻醉', 'Iontophoresis', '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d01a0556243d4c40b98cd1ca5749add9', null, 'drug-way', '皮肤给药', 'Cutaneous', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d04b4272942c49d6ac746b3bc1c20d9f', null, 'dosage_unit', 'U', null, '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d0b19aee4aae4ae2a1390cbfcfa50c26', null, 'Patient_Information', '死亡信息', 'Death Information', '006', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d0d1395858064634b26b383a8baa18ff', null, 'qualifier', '＜', '＜', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d134cd6ed67f4f3a848e2c596919762e', null, 'attach-format', 'docx', 'docx', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d1387018a07a4c0eaa8b53be7aabd2b0', null, 'drug-way', '经皮给药', 'Transdermal', '62', '62', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d13c3546f21e44e68a57a5438e4fca3a', null, 'dosage_unit', '滴', '[drp]', '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d1646906ab63433b902e27b3cce4f123', null, 'dosage_unit', '纳居里', 'nCi', '56', '56', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d21d13c80ae849f69dcb4b665fb880cd', null, 'drug-way', '颈丛阻滞', 'Cervical plexus block', '76', '76', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d3663c4668ad4667bce0e16186d8a197', null, 'other_drug_information', '经检测不合格的批次和批号', null, '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d39ef5ae847f4d4aab97a3ee3693d1a7', null, 'maintain_control', '文件输入框', 'File input', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d3d853b40b8b4dbb9492d5640c691575', null, 'time_interval_unit', '周期性的', '{cyclical} ', '10', '10', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d42aaa12367e40d8a4e45c15048900df', null, 'sender_type', '卫生专业人员', 'Health Professional', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d44c8f6878cc407f9ed854f02e6803e1', null, 'dosage_unit', '片', null, '19', '19', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d51b685567834a3ca82483225be00e06', null, 'drug-formulation', '气体', 'gaseous fluid', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d579e8c464514d2e96f56a6d30b3508a', null, 'drug-way', '关节内给药', 'Intra-articular', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d64ae8ad1b5d402ab6979def1f7d938a', null, 'relevant_medical_history', '吸烟史', 'History of smoking', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d6bbf28fca87461098b9db88a23f8885', null, 'drug-formulation', '泡腾片', 'effervescent tablets', '139', '139', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d6bdc06bf76e47ecb31f56b4879df199', null, 'reporter_evaluation', '很可能有关', 'Probably related', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d714bf66d27241b19fe33522aaa5f8a6', null, 'dosage_unit', '毫居里', 'mCi', '7', '7', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d72755ce0b594bbdaa7837197ca8e371', null, 'maintain_control', '下拉多选择', 'Drop list Multiple', '10', '10', null, '3', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d773a006de4d4033af58f1aa1f16ccb1', null, 'company_type', '经营企业', 'Business enterprise', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d77c16f8f25a4d6385ab18474f0971bb', null, 'listedness_determination', '已知', 'old', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d7c8f186a737407ba53bb5d505021470', null, 'dosage_unit', '微米', null, '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d8a190dc07044074a549a930ac17ffd4', null, 'drug-formulation', '速释片', 'rapid-release tablets', '53', '53', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d8bdbe4245c44478b7b4fa38400ee22f', null, 'action_taken', '暂停用药', 'drug suspension', '8', '8', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d91b328eaf924956820570c09e13dfe5', null, 'drug-way', '肝内给药', 'Intrahepatic', '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d928d685b0714850abc576c50e9a9414', null, 'drug-way', '术中栓塞', 'Intraoperative embolization', '86', '86', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d9290f63d1854a2f934ea132c9b56a7d', null, 'attach-class', '文献', 'literature', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d949da10e75143f0ba178ec60085f2cc', null, 'inspect_unit', 'pg', null, '44', '44', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('d95a93b008f348dda69cbf85ffb5e2bd', null, 'drug-way', '舌下给药', 'Sublingual', '60', '60', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('da73a8261778492c9619b39b1e9e421f', null, 'clinical-research', '其他研究', 'Other Studies', '9', '9', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('daaedcb8e88348348fdf531d59d40483', null, 'drug-formulation', '滴剂', 'drops', '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dab69a5e94914b708096d35b839ace2d', null, 'SUSAR', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dacbc2fdcfff4d06879f1c498ac372b1', null, 'maintain_control', '单项选择', 'Radio Button', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('daed01d1e7c041fb902a0da5347c15f6', null, 'drug-formulation', '胶囊', 'capsule', '129', '129', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dbdec2a275cd433597acc2077ca90cff', null, 'Overview', '药品与不良事件信息', 'Drug & AE', '002', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dcc54d49905b4b0eaf7b4e9048fa0439', null, 'drug-way', '骶管注射', 'Sacral canal injection', '79', '79', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dd3b0c9e1b074267af87bf8bb461e84c', null, 'age_unit', '分', 'min ', '5', '5', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dd827c1795e94088ac9458ed1d1567b9', null, 'dosage_unit', '微升', 'uL', '22', '22', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('de829480bfea4f37a435b78b58edc648', null, 'inspect_unit', '[hp_Q]', null, '63', '63', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('deaf63eaaa8f45fcb69f662745b65fe0', null, 'drug-way', '包膜内给药', 'Intrathecal', '37', '37', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('df68cca63d5f4515aebb91bfa2ae8383', null, 'reporter_type', '法规部门', 'Regulatory department', '4', '4', null, '1', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('df6d0eeeaa034b6d9d8aca554b7d7bec', null, 'qjf', '不明', 'yes – unk  (rechallenge was done, outcome unknown) ', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dfc0fde323ca4aaba5ee079f0877d4eb', null, 'dosage_unit', 'MU', null, '25', '25', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('dfc7867f298d4cceb1a6296457f5019b', null, 'dosage_unit', 'GB', null, '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e02d5f481fab403da910db94d88ace2b', null, 'attach-class', '现场调查报告', 'Field investigation report', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e04d49ae98ab4f1084855a06e953f095', null, 'dosage_unit', '毫克', 'mg', '8', '8', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e09a9094b5e04e79b9526a74f1958978', null, 'body_weight_unit', '千克', 'Kg', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e0a4c39d57ee4f8b9a2a0d1600908bc6', null, 'drug-way', '静脉给药', 'Intravenous (not otherwise specified) ', '42', '42', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e1067f97063c4570b1ef84d8e879c210', null, 'frequency', '不详', 'Unknown', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e1408865dfde445992772cb1f2e21bbc', null, 'dosage_unit', '毫当量', 'meq', '52', '52', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e1a0d95adf544ba78a8f69d9f1689a57', null, 'drug-formulation', '混悬注射剂', 'acetate suspension for injection', '104', '104', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e24f708580144de2a5eddb6f8dba5dbc', null, 'dosage_unit', 'IU', null, '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e292f3e8fad74912abb401e1e26afe1b', null, 'province', '宁夏回族自治区', 'Ningxia', '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e2d6a5275fe745a89cd2b88f676e46e8', null, 'drug-formulation', '口服冻干粉', 'oral lyophilized powder', '156', '156', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e305e2d52b86404e90015e23f5143181', null, 'dosage_unit', '剂型', '{DF}', '47', '47', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e379dd1207cc45db96c31658f56893bf', null, 'drug-formulation', '露剂', 'Distillate medicinal water', '16', '16', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e474fc128c524d1e97f878e7f6a72a70', null, 'inspect_unit', 'nmol', null, '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e4844cb7480a41ccb05ab36e5681d3ea', null, 'drug_info_type', '进口', 'Imported', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e489e3a2c16d4e77bc8f0c0b4310c3e5', null, 'drug-formulation', '口服溶液', 'oral solution', '158', '158', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e4ad22e6018144e7b502ea58687855ef', null, 'reporter_organisation', '个人', 'personal', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e4ebd2f559974e80aee279bcacb0bf1a', null, 'product-categories', '新药1类', 'New drug class 1', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e62e0a17233f474c948abe1e8671054b', null, 'delivery_type', '顺产', 'Yield', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e62e12b5d05d4a70ba1ae7b068daf82d', null, 'province', '香港特别行政区', 'HongKong', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e674ae2cdc234a648a0730531fbe55f1', null, 'life_threatening', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e6a013ae3bea43d5a70dd6229b93e285', null, 'report_attach_status', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e6ebba2b6bb34d028ccf88d3eff4cfef', null, 'initial_report', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e75d080d58af4a8e94a5b5485dd0aca8', null, 'Additional_Documents', '附加信息', 'Additional Documents', '001', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e7876e3dbfc24b2384a79067f4b33ff2', null, 'ctcae_classification', '1级', '1 level', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e8975491da254a36a82886f7a9d0030b', '', 'impacton_primary_disease', '导致死亡', 'Cause Death', '5', '5', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('e8975491da254a36a82888f7a8d0030b', null, 'impacton_primary_disease', '导致后遗症', 'Cause sequela', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e8cb068039204251988b06de8920845c', null, 'Basic_Information', '研究者信息', 'Reporter Information', '002', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('e9ca432bbbdb4ef7b4febaf51084da62', null, 'delivery_type', '剖腹产', 'Caesarean birth', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ea821dc658054ef380df997d6add3b2f', null, 'age_unit', '岁', 'a', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ead00fa24c4f4d12bd8a350b57aecf1f', null, 'inspect_unit', 'd', null, '18', '18', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb2191ad3c0b4b5c944f6b3fe82e8862', null, 'ctcae_classification', '3级', '3 level', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb21c19ff4ee49849051a2a3f1212cbd', null, 'dosage_unit', '不详', 'NI', '13', '13', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb5095c1a97742a18574c87a250d2a67', null, 'province', '四川省', 'Sichuan', '21', '21', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eb8d304ff726456a8e4c0779084e33af', null, 'drug-formulation', '缓释凝胶', 'sustained-release gel', '73', '73', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ec391024ade845f8aa44be5bf59845d3', null, 'maintain_page', '基本信息', 'Basic Information', '02', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ec754c61a4d04a809822825fd22946ec', null, 'drug-formulation', '肠溶缓释胶囊', 'enteric sustained-release capsules', '157', '157', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ecbe04a6314e4722bb698ae98ff95a5a', null, 'dosage_unit', 'KU', null, '11', '11', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ed1861539d25477a9f319a054cc305cb', null, 'medically_important', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('edf752bcf2f54303aa9c7855ff839885', null, 'drug-formulation', '乳胶', 'latex', '50', '50', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ee538a96f65446149fb395f725751882', null, 'drug-way', '胸腔内给药', 'Intrathoracic', '38', '38', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ee5eb38824d149cab816879da5fa3f96', null, 'other_event_terms', '感染', 'Infected', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('eef3bb07a9f64ef698730e2c26c7ad93', null, 'is_ongoing', '否', 'false ', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ef29159a93414f459e5cf9768e77f27f', null, 'maintain_control', '日期（年）', 'Date(year)', '6', '6', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f01170cbadff437f919fb953fdda571f', null, 'attach-format', 'pdf', 'pdf', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f0215c01726f4fb9abbbef8b83f23e63', null, 'drug-way', '灌注', 'perfusion', '68', '68', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f0bb554cdafd44ffb749b611dd72f487', null, 'inspect_unit', '[PFU]', null, '70', '70', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f1121abcc33541c3bedd240bc5c1e350', null, 'drug-formulation', '糖丸', 'sugar pills', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f11bce93c3d54c779dc3651f59948536', null, 'drug-formulation', '软胶囊', 'soft capsule', '114', '114', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f20882d41342437bce974f5j3e3cae69', null, 'report-regulations', '死亡', 'Death', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f20882d41342447eae994f2b3e3cae69', null, 'drug-formulation', '滴耳剂', 'ear drops', '161', '161', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f20882d41342447ece974f5j3e3cae69', '', 'report-regulations', '严重', 'Serious', '2', '2', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('f20882d41342447ece994f5b3e3cae69', '', 'report-regulations', '一般', 'General', '1', '1', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('f20883d41242437bce974f5j3e3cae69', '', 'report-regulations', '其他', 'Other', '4', '4', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('f239eea860cb48ce9f2dc49e4ee893eb', null, 'inspect_outcome', '不可判断', 'Inconclusive', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f2a4fec7d77d49a1b0830f0096eea35b', null, 'Overview', '患者与报告者信息', 'Patient & Reporter', '003', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f2d87083112848d58faa9269ebbb4214', null, 'is_reported_drug_supervision', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3b846ee86d246c8895deed8d225bfc6', null, 'drug-way', '病灶内给药', 'Intralesional', '26', '26', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3b9b8eecfd14aa1b367539d51fd3460', null, 'drug-formulation', '煎膏剂', 'soft extract', '67', '67', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3cf40ddfda6425bb2ce774ac5e445f4', null, 'inspect_outcome', '阳性', 'Positive', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f3f5f5d029244c17a48f4e182d738e84', null, 'drug-formulation', '缓释透皮贴', 'slow-release transdermal stick', '115', '115', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f41ce586b1b141bb8e29fb3a75b6030e', null, 'dosage_unit', '千兆贝克勒尔', 'GBq', '36', '36', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f46c9f5b258c47bfb10c6100370a8816', null, 'report_attach_status', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f47887eb0a4c49e4a024a0de7111b896', null, 'drug-class', '预防用生物制品', 'Vacine', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f50c1334f0ec48e99132719b9cabff6e', null, 'dosage_unit', '贴', null, '23', '23', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f5495b0151894533a24bbd9342331f11', null, 'drug-formulation', '肠溶片', 'enteric-coated tablet', '90', '90', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f645d5e5a76f4f5c81cfad44ffef18fc', null, 'drug-formulation', '浸膏片', 'extract tablets', '43', '43', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f69168595d524bc592f1b50b4342d642', null, 'research_role', '次要研究者', 'Secondary', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f6f3ff56d1334ab28461ad1edca76b9f', null, 'inspect_unit', 'mol', null, '41', '41', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f7027c449a9e455780acab1d277a1808', null, 'inspect_outcome', '阴性', 'Negative', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f76881d220ac47cfa73a8705fc5ada07', null, 'drug-formulation', '外用片', 'tablet', '85', '85', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f77096e7101b4cbaa0a875aed12cd600', null, 'maintain_page', '报告总结', 'Report Summary', '09', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f7a9d6a1088c4fe19e9a83a5597a3f17', null, 'drug-way', '腹膜腔内注射', 'Intraperitoneal', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f7f67043667f47d2a6a5b6b8229a4853', null, 'drug-way', '经眼给药', 'Intraocular', '31', '31', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f90cd2146215467281d6af7a69f9e3df', null, 'received_from', '未知', 'Unknown', '9', '9', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f90d50d63c244c7c8a22a4f6a770ac31', null, 'disabling', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f951d7ad9168446b9e590f2c99ddd040', null, 'drug-formulation', '酒剂', 'medicinal liquor', '76', '76', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f95961b1bfdc473994cb54b87b9dab69', null, 'ctcae_classification', '4级', '4 level', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f9ba6afd62a544afa2568830b0e1671f', null, 'follow-up_information', '重复报告', 'Repeat Report', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('f9c57ebaa733499e90bb5e6dad56aa1c', null, 'inspect_unit', 'mCi', null, '30', '30', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fa88086a2dec4dc894bd149e5573edc4', null, 'drug-way', '经耳给药', 'Auricular (otic)', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fac3a2d8ad1c4056bbe33e862ea14d34', null, 'drug-formulation', '阴道泡腾胶囊', 'vaginal effervescent capsule', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb389809b1a34eb6b22a6864c287bf7d', null, 'drug-formulation', '膜剂', 'membranes', '152', '152', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb4e487685734ac3a716c1184cd3e9d0', null, 'drug-way', '滑膜内给药', 'Intrasynovial', '35', '35', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb52f34d3c1740df888b985a837fc3d2', null, 'drug-formulation', '干糖浆', 'dry syrup', '125', '125', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fb871623267a43a3a0c8c548700d49e4', null, 'can_reporter_be_followed_up', '是', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fc14b413d6bd4b6aad2d52a830423308', null, 'is_serverity', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fcaad4729b0a423aa0efc8fcc2c54bce', null, 'is_ongoing', '未知', 'NI', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fd055377ada746f8ab88168fdceb3b48', null, 'drug-way', '局部注射', 'Local injection', '82', '82', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fd06dcebbd6f46f38707b54fd315da05', null, 'research-subdivision', 'Ib期', 'phase Ib clinical trials', '5', '5', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fda350dd33684839b85e09e50e61521f', null, 'drug-formulation', '液体', 'liquid', '33', '33', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fda60ae3377e4c5fb04901c6ebd31a9f', null, 'inspect_unit', '{trimester}', null, '76', '76', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fdd20e09c5c7490991e9d3b10782cd60', null, 'extended_hospitalization', '不详', 'NI', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe042b2c3f574c579e1adcd567f1efe8', null, 'drug-formulation', '鼻用喷雾剂', 'nasal spray', '118', '118', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe47d530cb844b26b97aed382d323dcb', null, 'drug-way', '鼻甲注射', 'Injection of nasal turbinate', '72', '72', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe61afbb947f4275a364e4c7002daac0', null, 'qualifier', '＝', '＝', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe64730af91f42359evcc0f5c5774b39', '', 'adverse_drug_reaction', '无', 'FALSE', '2', '2', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('fe64730af91f42359evcc0f9b5774b39', null, 'adverse_drug_reaction', '有', 'TRUE', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe64730af91f42459rvcc0f5c5774b39', '', 'adverse_drug_reaction', '不详', 'Unknown', '3', '3', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('fe64730af91f42959ebcc0f9b5774b39', null, 'dosage_unit', '克', 'g', '14', '14', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe81c4916e1947649d1a34279072a25a', null, 'dosage_unit', '万U', null, '29', '29', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe9dd66bacbf4d8c9916332a47bfceac', '', 'severity_judgment', '严重', 'Serious', '1', '1', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('fe9dd66bacbf4d8c9916362a47afceac', null, 'inspect_unit', '[BAU]', null, '55', '55', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fe9dd66bacbf4d8v9816332a47bfceac', '', 'severity_judgment', '一般', 'General', '2', '2', '', '2', null, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `dictionary_test` VALUES ('feaacaecf4e54939a3a31e506784edc8', null, 'inspect_unit', 'Ci', null, '15', '15', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fee4507486f8428587676d30104d2a40', null, 'IME', '否', 'FALSE', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('fef3ecf7429f449eaf28b50fb3f6dc3f', null, 'drug_character', '未用药', 'Drug Not Administered', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ff5bd86ce24549b3bab16eaa62fbef5e', null, 'drug-formulation', '细粒', 'fine stuff', '122', '122', null, '2', null, null, null, null, null);
INSERT INTO `dictionary_test` VALUES ('ff69f937d158485d8b26f7f0cf3fe3b8', null, 'sender_type', '制药公司', 'Pharmaceutical Company', '1', '1', null, '2', null, null, null, null, null);

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `drug_type` tinyint(1) DEFAULT '1' COMMENT '上市前1上市后2',
  `company_id` char(32) DEFAULT NULL COMMENT '公司ID',
  `drug_generic_en_name` varchar(100) DEFAULT NULL COMMENT '通用英文名称',
  `drug_generic_zh_name` varchar(100) DEFAULT NULL COMMENT '通用中文名称',
  `drug_generic_standard_name` varchar(100) DEFAULT NULL COMMENT '标准通用名称',
  `drug_active_ingredients` varchar(500) DEFAULT NULL COMMENT '活性成份',
  `drug_class` int(4) DEFAULT '0' COMMENT '药品分类',
  `drug_manufacturer` varchar(150) DEFAULT NULL COMMENT '生产厂家',
  `drug_formulation` int(4) DEFAULT '0' COMMENT '剂型',
  `drug_delivery_way` varchar(20) DEFAULT NULL COMMENT '给药途径(字典值，多选中间以逗号隔开)',
  `drug_approval_number` varchar(50) DEFAULT NULL COMMENT '批准文号',
  `drug_product_en_name` varchar(100) DEFAULT NULL COMMENT '商品英文名称',
  `drug_product_zh_name` varchar(100) DEFAULT NULL COMMENT '商品中文名称',
  `drug_input_output` tinyint(1) DEFAULT '1' COMMENT '是否为进口1是2否',
  `drug_specification` varchar(50) DEFAULT NULL COMMENT '规格',
  `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',
  `drug_indications` varchar(500) DEFAULT '' COMMENT '适应症',
  `drug_reg_approval_date` datetime DEFAULT NULL COMMENT '注册批准日',
  `drug_first_sale_date` datetime DEFAULT NULL COMMENT '首次销售时间',
  `drug_replacement_date` datetime DEFAULT NULL COMMENT '换证日期',
  `drug_treatment_person` varchar(100) DEFAULT NULL COMMENT '治疗人群',
  `drug_pinyin` varchar(100) DEFAULT NULL COMMENT '汉语拼音',
  `drug_chemical_name` varchar(100) DEFAULT NULL COMMENT '化学名',
  `drug_molecular_formula` varchar(1000) DEFAULT NULL COMMENT '化学式',
  `drug_molecular_weight` varchar(1000) DEFAULT NULL COMMENT '分子量',
  `drug_trait` varchar(50) DEFAULT NULL COMMENT '性状',
  `drug_approval_end_date` datetime DEFAULT NULL COMMENT '批准文号到期日',
  `drug_country` varchar(5) DEFAULT NULL COMMENT '国家',
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
  `drug_production_num` int(11) unsigned DEFAULT '0' COMMENT '生产量',
  `drug_sales_num` int(11) unsigned DEFAULT '0' COMMENT '销售量',
  `drug_sales_zone` varchar(50) DEFAULT NULL COMMENT '销售地',
  `drug_recall_num` int(11) unsigned DEFAULT '0' COMMENT '召回数量',
  `drug_real_recall_num` int(11) unsigned DEFAULT '0' COMMENT '实际召回数量',
  `drug_adverse_reactions` varchar(500) DEFAULT '' COMMENT '不良反应',
  `drug_base_country` tinyint(1) DEFAULT '0' COMMENT '国家基本药品1是2否',
  `drug_medical_insurance` tinyint(1) DEFAULT '0' COMMENT '国家医疗保险药品1是2否',
  `drug_non_prescription` tinyint(1) DEFAULT '0' COMMENT '国家非处方药1是2否',
  `drug_protection_varieties` tinyint(1) DEFAULT '0' COMMENT '中药保护品种1是2否',
  `drug_reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `drug_international_birth` datetime DEFAULT NULL COMMENT '国际诞生日',
  `drug_first_reg_date` datetime DEFAULT NULL COMMENT '国内首次注册日期',
  `drug_testing_deadline` datetime DEFAULT NULL COMMENT '新药检测期截止时间',
  `drug_first_again_reg_date` datetime DEFAULT NULL COMMENT '首次再注册时间',
  `delete_status` tinyint(1) DEFAULT '1' COMMENT '1正常2删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES ('0245015f3b914676bb510a2b5ba36ade', '2', '62', 'ssss3', '三生三世3', '三生三世3', 'ssss', '2', 'ssss', '1', '1', '1111111', 'ssss3', '三生三世3', '0', '222', '', '', null, null, null, 'sss', null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:00:13', null, null);
INSERT INTO `drug` VALUES ('089d041749cf4e7a9b4157699eee2873', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 15:48:48', null, null);
INSERT INTO `drug` VALUES ('0927a48ed93c44698893981a6938cc57', '2', '62', null, '与兔兔', '瞧瞧', '搜刮剁手郭德纲', '1', '汉口汉口', '141', null, 'uoiou1222', null, '稍微', '0', '20', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-18 10:32:00', 'jerry', '2018-09-19 11:39:01');
INSERT INTO `drug` VALUES ('0962c90a9b7e45168d1705937c30dc6b', '1', '62', '1', 'test', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 18:38:07', null, '2018-09-14 14:22:35');
INSERT INTO `drug` VALUES ('11111111', '1', '62', 'toubao', '头孢', 'DHCUN', 'C', '1', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, null, '2018-08-14 09:55:27', null, '2018-09-05 13:34:47');
INSERT INTO `drug` VALUES ('11111112', '1', '62', 'sgsgsg', '121212', '212', '21212121', '1', '2121', '1', '1', '21212', '', '212', '1', '212121', '', '', '2018-08-16 10:06:16', '2018-08-16 10:06:21', '2018-08-16 10:06:24', '', '', '', '', '', '', '2018-08-16 10:06:31', 'cn', '', '0', '0', '', '0', '0', '', '1', '1', '2', '1', '2018-08-16 10:06:08', '2018-08-16 10:05:55', '2018-08-16 10:06:03', '2018-08-16 10:06:05', '2018-08-16 10:06:08', '2', null, '', '2018-08-14 09:55:27', 'jerry', '2018-09-12 18:32:31');
INSERT INTO `drug` VALUES ('142e92c590554ddfb5bd7e1981ec78ee', '1', '62', '21', '21', '121212', '21ssssssssssssssssssssssssssssssssssssssssss', '1', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:42:57', null, '2018-09-06 18:28:44');
INSERT INTO `drug` VALUES ('162b53dd854e4a07a825daa548d1fb28', '2', '62', null, '撒大声地', '爽肤水', '是范德萨发的', '2', '似懂非懂', '90', null, '水电费', null, '是否', '0', '20ml', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '2', '2', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-17 15:56:59', 'jerry', '2018-10-15 15:54:15');
INSERT INTO `drug` VALUES ('1712db89a69043da902ee4212607947f', '1', '62', '31212', '21212', '2121', '2121', '1', '21212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-08-14 19:39:36', null, null);
INSERT INTO `drug` VALUES ('18a84dcb02684f89a3b92352b9ce3d85', '1', '62', '1', '122222', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:33:03', null, '2018-09-14 15:48:56');
INSERT INTO `drug` VALUES ('1b0c8ddd78d94962a4e8b87fceafda95', '1', '62', '21', '212', 'test测试', '212', '1', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:33:24', null, null);
INSERT INTO `drug` VALUES ('1c409154151247009402e05a4e6cb63c', '1', '62', '2121', '2121', '1212', '1212121', '1', '2121', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-08-15 10:15:37', null, null);
INSERT INTO `drug` VALUES ('1c8ad0facc2347e093ffde8201bb03f5', '2', '62', null, '212', '212', '21212', '2', '21', '1', null, '212', null, '21', '0', '212', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:30:43', null, null);
INSERT INTO `drug` VALUES ('22a646cad37e46d689a5fc1356ae0c9f', '2', '62', null, '1', '1', '1', '3', '1', '90', null, '1', null, '1', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', '2018-09-26 09:47:37', '2018-09-24 00:00:00', '2018-09-26 09:47:33', '2018-10-23 00:00:00', '2018-09-26 09:47:37', '1', null, 'jerry', '2018-09-26 09:48:15', null, null);
INSERT INTO `drug` VALUES ('2423fc89c1374d0eae77b30959818783', '1', '62', '444', '33', '555', '电风扇', '4', '666', '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-14 15:49:57', null, '2018-09-17 10:10:40');
INSERT INTO `drug` VALUES ('252134082f52420ca732dcc9436df36b', '2', '62', null, '1', '1', '1', '2', '1', '1', null, '1', null, '21', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:09:55', null, null);
INSERT INTO `drug` VALUES ('31fd99c1e1354b088abe629195d36c89', '1', '62', 'sfsd', '声带固定术', '所发生的', '沙发斯蒂芬', '2', '爽肤水', '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-17 10:28:56', null, '2018-09-17 11:35:59');
INSERT INTO `drug` VALUES ('345a8b5ccf164f8caaad564f2addddsc', '1', '62', '123', '2222', '211', 'chance', '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `drug` VALUES ('345a8b5ccf164f8caaad564f2b9f511c', '1', '62', '123', '33333', '211', '机会', '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `drug` VALUES ('345a8b5ccf164f8caaad564f2b9f520c', '2', '62', null, '1', '1', '帝国饭店', '4', '1', '88', null, '1', null, '1', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, '2018-09-21 00:00:00', null, '2018-09-18 00:00:00', null, '1', null, 'jerry', '2018-09-21 17:34:15', null, null);
INSERT INTO `drug` VALUES ('345a8b5ccf164f8caaad564f2b9f531c', '1', '62', 'sgsgsg', '121212', '212', '机会', '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `drug` VALUES ('345a8b5ccf164f8caaad564f2b9fadsc', '1', '62', '123', '33333', '211', 'chance', '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `drug` VALUES ('37315281879a4024b7063f57b02f00ea', '2', '62', null, 'bnm', 'bnm', 'bnm', '4', 'bnm', '93', null, 'mbn', null, 'bnm', '0', 'bnm', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-19 11:42:56', null, null);
INSERT INTO `drug` VALUES ('3c52555aab8a44189e4a7df298073290', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 14:50:17', null, null);
INSERT INTO `drug` VALUES ('3cc5315f27b641d2a872864ed8099561', '1', '62', 'Yansuan Tebinaifen Penwuji', '盐酸特比萘芬喷雾剂', '达克宁', '盐酸特比萘芬0.01克。辅料为：乙醇、1.2-丙二醇、纯化水', '1', '山东京卫制药有限公司', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 17:00:50', null, '2018-09-12 17:26:27');
INSERT INTO `drug` VALUES ('43ada102786d4af5a53ea19a7a94eb68', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:42:08', null, null);
INSERT INTO `drug` VALUES ('4602ff73d5904005a364903d59832d96', '1', '62', '1', '1', '1', '111', '4', '1', '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-14 15:48:34', null, null);
INSERT INTO `drug` VALUES ('4fbf8dd0a4d94919ae10922d455bd1e6', '2', '62', null, '21', '21', '21', '1', '21', '90', null, '21', null, '21', '0', '21', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-20 11:47:32', null, null);
INSERT INTO `drug` VALUES ('53d856949fc84185a2095b44374ba8b4', '1', '62', '1', '12', '21', '1', '212', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:48:24', null, '2018-09-07 09:57:28');
INSERT INTO `drug` VALUES ('557454bc4d3f49a4a0d324e12b915346', '2', '62', 'ssss2', '三生三世2', '三生三世2', 'ssssss', '2', '三生三世2', '1', '1', '11111', 'ssss2', '三生三世2', '1', '22', '', '', null, null, null, 'sss', 'ssss2', 'ssss2', 'ssss2', 'ssss2', null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 08:51:26', null, null);
INSERT INTO `drug` VALUES ('6dda92f8109c4abf821905f365a241c0', '1', '62', 'testName', '测试名称', '212', '212', '212', '21', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:06:10', null, null);
INSERT INTO `drug` VALUES ('6f1f77c89e134ca3ac9f497ea77eb3fa', '1', '62', '121', '2121', '212', '121', '1', '21212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-08-14 19:12:31', null, null);
INSERT INTO `drug` VALUES ('745e6f7c53b44b9b8f547a4672135df3', '2', '62', null, '1', '吴谦', '1', '2', '1', '1', null, '吴谦', null, '万千瓦', '0', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:43:31', null, null);
INSERT INTO `drug` VALUES ('9093c99ede71428dbdcb06a7cdfc5ae7', '2', '62', null, '所发生的', '爽肤水', '发送方都是', '3', '是否', '152', null, '是非得失', null, '施工方', '0', '20', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-17 15:36:23', null, null);
INSERT INTO `drug` VALUES ('91813ecdd7c447f9964ce527828fe2a1', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 14:56:50', null, null);
INSERT INTO `drug` VALUES ('921572cd34674cf2928b01d73faf2f07', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 13:42:26', null, null);
INSERT INTO `drug` VALUES ('a07f1422e2e54935932aa39b5c16152f', '1', '62', '2', '2', '2', '2', '212', '2', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:54:24', null, null);
INSERT INTO `drug` VALUES ('a6da4bdaf11e4e30868c6ba1294e7b08', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:31:22', null, null);
INSERT INTO `drug` VALUES ('a851e727f5fe41ea8e5869be2a369d64', '1', '62', '212', '2121', '212', '测试', '1', '2121', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-12 18:06:44', null, '2018-09-12 18:15:02');
INSERT INTO `drug` VALUES ('a992af307d2b4c66ac9c84a63dcd6a1d', '2', '62', 'xcv', 'xcv', 'xcv', 'xcv', '4', 'xcv', '141', null, 'x', 'xc', 'cv', '0', 'xcv', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', '2018-09-28 00:00:00', '2018-09-13 00:00:00', '2018-09-25 00:00:00', '2018-09-27 00:00:00', '2018-09-28 00:00:00', '1', null, '33', '2018-09-19 14:00:52', null, null);
INSERT INTO `drug` VALUES ('aa5fe4f9823d43b5898d04734df5636e', '0', '621', 'fsdfs', '爽肤水', '爽肤水', '师傅师傅说', '3', '所发生的', '152', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'ybb', '2018-09-17 10:25:44', null, null);
INSERT INTO `drug` VALUES ('af97fc31defd4279b6ae3aea1980d66f', '0', '621', '爽肤水', '是非得失', '是非得失', '麦克雷全文', '3', '让他一人一人', '93', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'ybb', '2018-09-17 16:29:22', null, null);
INSERT INTO `drug` VALUES ('b10dd39f7a784a01ba7947637b90b694', '2', '62', 'ssss', '三生三世', '三生三世', 'sssss', '2', 'ssss', '1', null, 'sssss', 'ssss', '三生三世', '0', 'ssss', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:55:34', null, null);
INSERT INTO `drug` VALUES ('b603a0b21bc54e69851c989b62c483d4', '1', '62', '21', '212', '2121', '21', '212', '212', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:50:35', null, null);
INSERT INTO `drug` VALUES ('c6ba965ecd70400da81fcb226168396a', '2', '62', 'Chongcao Qingfei Jiaonang', '虫草清肺胶囊', '虫草清肺胶囊', '沙棘膏、冬虫夏草、南五味子、百部、白及、百合、枇杷叶、甘草、牡蛎、蛤蚧，辅料为：玉米淀粉。', '3', '青海普兰特药业有限公司', '46', '49', '国药准字Z20025121', null, '同济堂 虫草清肺胶囊', '1', '每粒装0.3克', '', '', null, null, null, null, 'Chongcao Qingfei Jiaonang', null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-14 17:06:10', null, null);
INSERT INTO `drug` VALUES ('c935f58607d943fcb468a3c42b0f25a7', '1', '62', '3333', '222', '5555', '5554', '3', '5', '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-14 15:49:24', null, null);
INSERT INTO `drug` VALUES ('d48b5957091a48b79b1733d294622c1e', '1', '62', '1', '1', '1', '1', '2', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 15:00:04', null, null);
INSERT INTO `drug` VALUES ('d853721c1d00486ba8c0e2afe7317cee', '1', '62', '这只狐狸并不怕人，相反，它似乎能听懂人们的话语。“过来过来……”发现人们没有恶意时，小狐狸还能与人互动，应声上前来', '这只狐狸并不怕人，相反，它似乎能听懂人们的话语。“过来过来……”发现人们没有恶意时，小狐狸还能与人互动，应声上前来', '这只狐狸并不怕人，相反，它似乎能听懂人们的话语。“过来过来……”发现人们没有恶意时，小狐狸还能与人互动，应声上前来', '这只狐狸并非全身纯白，其又尖又长的大耳朵与毛茸茸的尾巴上，还夹杂生长着灰黑的毛发，这只狐狸见到人时，不躲不避，围观它的人都称赞它可爱这只狐狸并非全身纯白，其又尖又长的大耳朵与毛茸茸的尾巴上，还夹杂生长着灰黑的毛发，这只狐狸见到人时，不躲不避，围观它的人都称赞它可爱', '1', '武汉大学小白狐驻扎校园', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 09:46:32', null, '2018-09-06 10:57:03');
INSERT INTO `drug` VALUES ('dc078b35d07b45458c8b10ac3a3ef838', '1', '62', null, '21', '1', '1', '0', null, '90', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '0', '0', '0', '0', null, null, null, null, null, '2', null, 'ybb', '2018-09-18 10:33:42', null, '2018-09-18 17:17:13');
INSERT INTO `drug` VALUES ('de9a0bd61563410a89790b269722d3da', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 15:23:47', null, null);
INSERT INTO `drug` VALUES ('e11c8cceb1714516a6c828a898b2eadf', '2', '62', 'Putaotangsuangaixin Koufurongye', '葡萄糖酸钙锌口服溶液', '葡萄糖酸钙锌口服溶液 1', '每10毫升含葡萄糖酸钙600毫克（相当于钙54毫克），葡萄糖酸锌30毫克（相当于锌4.3毫克），盐酸赖氨酸100毫克。辅料为：乳酸、苯甲酸钠、阿斯巴甜、安赛蜜、香精和纯化水', '3', '澳诺(中国)制药有限公司', '35', '55', '国药准字H20013241', 'Calcium and Zinc Gluconates Oral Solution', '锌钙特 葡萄糖酸钙锌口服溶液', '1', '每支装15ml', '', '', null, null, null, '口服。婴幼儿一日5～10毫升，成人一日20～30毫升，分2～3次，饭后服。', 'Putaotangsuangaixin Koufurongye', '葡萄糖酸钙锌化学名', null, null, null, null, '1', null, '0', '0', null, '0', '0', '1.可见轻度恶心、呕吐、便秘等反应。2.长期服用可引起反跳性胃酸分泌增高。', '1', '1', '1', '1', null, null, null, null, null, '1', null, 'jerry', '2018-09-14 16:44:40', null, null);
INSERT INTO `drug` VALUES ('e2c6bae733474b9e8619e09759b3ecb0', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-13 13:59:47', null, null);
INSERT INTO `drug` VALUES ('e55f151b484649eeac82d27338eec32c', '1', '62', '21', '21', '212', '212', '2', '2121', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 15:00:59', null, null);
INSERT INTO `drug` VALUES ('e9b7e9f7dec647119335d3c1811ed77c', '1', '62', '1', '1', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 18:37:43', null, null);
INSERT INTO `drug` VALUES ('ececa988d54246d3802c90e3a04ecc45', '2', '62', null, '地方', '税收', '神鼎飞丹砂', '2', '大锅饭', '152', null, '税收', null, '客家话', '0', '22', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '2', '0', '0', '0', null, null, null, null, null, '1', null, 'jerry', '2018-09-17 16:03:34', 'jerry', '2018-09-17 17:08:10');
INSERT INTO `drug` VALUES ('f349133b1dd942b2b80ff57f33e3171e', '1', '62', '1', '1', '1', '1', '1', '1', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-06 18:45:23', null, '2018-09-12 18:22:37');
INSERT INTO `drug` VALUES ('f652bfa80bdd4d4db2d45e178b9a4a11', '2', '62', null, '1', '1', '1', '3', '1', '90', null, '1', null, '1', '1', '1', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '2', '1', '1', null, null, null, null, null, '2', null, '33', '2018-09-17 16:09:10', '33', '2018-09-17 16:09:20');
INSERT INTO `drug` VALUES ('f851cd0a56694d62befab4cdf04cbc1e', '1', '62', null, null, null, null, '0', null, '0', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-13 10:53:06', null, null);
INSERT INTO `drug` VALUES ('ff863a7eb123494494350ca42fda6b5f', '1', '62', 'wq', 'wqw', 'wqw', 'wq', '2', 'wqw', '1', null, null, null, null, '1', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, '0', '0', '', '1', '1', '1', '1', null, null, null, null, null, '2', null, 'ybb', '2018-09-05 20:52:15', null, null);

-- ----------------------------
-- Table structure for drug_info
-- ----------------------------
DROP TABLE IF EXISTS `drug_info`;
CREATE TABLE `drug_info` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `drug_characteristics` int(11) DEFAULT NULL COMMENT '药物特征',
  `commodity_name` varchar(32) DEFAULT NULL COMMENT '商品名称',
  `generic_name` varchar(32) DEFAULT NULL COMMENT '通用名称',
  `generic_name_dict_id` varchar(32) DEFAULT NULL COMMENT '通用名称字典ID',
  `generic_name_en` varchar(32) DEFAULT NULL COMMENT '英文名称',
  `active_ingredients` varchar(128) DEFAULT NULL COMMENT '活性成份',
  `specifications` int(11) DEFAULT NULL COMMENT '规格',
  `specifications_unit` int(11) DEFAULT NULL COMMENT '规格单位',
  `drug_from_country` varchar(32) DEFAULT NULL COMMENT '药物获得国家',
  `study_drug` int(11) DEFAULT NULL COMMENT '研究药物',
  `experimental_drug_for_blindness` int(11) DEFAULT NULL COMMENT '设盲的实验用药',
  `jie_blind_date` date DEFAULT NULL COMMENT '揭盲日期',
  `approval_number` varchar(32) DEFAULT NULL COMMENT '批准文号',
  `drug_licensing_country` varchar(32) DEFAULT NULL COMMENT '药物授权国',
  `manufacturers` varchar(32) DEFAULT NULL COMMENT '生产厂商',
  `drug_registration_classification` int(11) DEFAULT NULL COMMENT '药物注册分类',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药物信息-药物信息';

-- ----------------------------
-- Records of drug_info
-- ----------------------------
INSERT INTO `drug_info` VALUES ('0286775e80b546439aeedbba9d9cff69', 'ff9d6683bc814dc18235cb55b2689724', '13', '62', null, '', '1', null, null, 'chance1', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 18:36:10', null, null);
INSERT INTO `drug_info` VALUES ('04f97a609f274407ba326412e3eae4f0', '6430f06ad9be47339007e72125dc557f', '13', '62', null, '', '1', null, null, 'chance1', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 15:32:36', null, null);
INSERT INTO `drug_info` VALUES ('4969c4812b164de6b56d2a4085f80553', '2c8f667b92974ad48b608dd5137a0f79', '13', '62', null, '', '1', null, null, 'chance1', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 16:46:40', null, null);
INSERT INTO `drug_info` VALUES ('52852374c9184db98ee56f2a198c1622', '3dd2e560c4ba4c17800edbb708b4d344', '13', '62', null, '', '1', null, null, 'chance1', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-09 09:13:57', null, null);
INSERT INTO `drug_info` VALUES ('6289c041ec9d4a4692a1bc24b99f4135', '6c2db958cfb04543b2e49a85c4628e1d', '13', '62', null, '', '1', null, null, 'chance1', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 15:18:14', null, null);
INSERT INTO `drug_info` VALUES ('7b74a543ab1c4517abe0cf4b20740a6f', '96ccddfe5fd641e6bf6989271c941e3e', '13', '62', null, '', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 16:19:25', null, null);
INSERT INTO `drug_info` VALUES ('804edf648ea44ca4a8d5495be914281a', '6315dbade5054439aad0b643130d2ac0', '13', '62', null, '', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 15:42:05', null, null);
INSERT INTO `drug_info` VALUES ('890b314680644c41acd2fc24c682d9fb', 'f0434d95b512457abb15b37014e65cc9', '13', '62', null, '', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-07 18:47:04', null, null);
INSERT INTO `drug_info` VALUES ('9e016d4cc41e466193bb2ad43300294b', '1cd645bec004454cb26aec9f4d9e24f3', '13', '62', null, '', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-09 09:12:51', null, null);
INSERT INTO `drug_info` VALUES ('c69c26b4ef044dfca59778e9894ea013', '9b49916d29014f06af228469cef450cf', '13', '62', null, '', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-08 15:39:07', null, null);
INSERT INTO `drug_info` VALUES ('d876defee446423181c66a9bf53b3936', 'b42588aeddbf4be5ac6d5a66fdd079a7', '13', '62', null, '', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '', null, '1', '1', '33', '2018-11-08 10:22:06', null, null);
INSERT INTO `drug_info` VALUES ('f8ea3100c3cb4341bb7dd1aba37324c6', '59f9aaf4958a4249b6a8ea71e3ab6976', '13', '62', '1', '1', '1', null, null, 'chance', null, null, null, null, null, null, null, null, '万千瓦', null, '1', '1', '33', '2018-11-08 10:42:19', null, null);

-- ----------------------------
-- Table structure for drug_use_result
-- ----------------------------
DROP TABLE IF EXISTS `drug_use_result`;
CREATE TABLE `drug_use_result` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `drug_id` varchar(32) NOT NULL COMMENT '药物ID',
  `drug_dose` decimal(10,3) DEFAULT NULL COMMENT '剂量',
  `drug_dose_unit` int(11) DEFAULT NULL COMMENT '剂量单位',
  `daily_number` decimal(10,3) DEFAULT NULL COMMENT '每日次数',
  `daily_dose` decimal(10,3) DEFAULT NULL COMMENT '日剂量',
  `time_interval` int(11) DEFAULT NULL COMMENT '间隔时间',
  `time_interval_unit` int(11) DEFAULT NULL COMMENT '间隔时间单位',
  `drug_use_start_time` varchar(32) DEFAULT NULL COMMENT '开始用药日期',
  `drug_use_last_time` varchar(32) DEFAULT NULL COMMENT '末次给药日期',
  `drug_use_duration` int(11) DEFAULT NULL COMMENT '给药的持续时间',
  `drug_use_duration_unit` int(11) DEFAULT NULL COMMENT '给药的持续时间单位',
  `batch_number` varchar(32) DEFAULT NULL COMMENT '批次/批号',
  `dosage_form` int(11) DEFAULT NULL COMMENT '剂型',
  `delivery_way` int(11) DEFAULT NULL COMMENT '给药途径',
  `parent_delivery_way` int(11) DEFAULT NULL COMMENT '父母的给药途径',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药物信息-用药情况';

-- ----------------------------
-- Records of drug_use_result
-- ----------------------------

-- ----------------------------
-- Table structure for medical_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `medical_dictionary`;
CREATE TABLE `medical_dictionary` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT '系统器官分类名称(SOC)',
  `adverse_soc_code` int(11) DEFAULT NULL COMMENT 'SOC编码',
  `adverse_hlgt_name` varchar(50) DEFAULT NULL COMMENT '高位组语名称(HLGT)',
  `adverse_hlgt_code` int(11) DEFAULT NULL COMMENT 'HLGT编码',
  `adverse_hlt_name` varchar(20) DEFAULT NULL COMMENT '高水平术语名称(HLT)',
  `adverse_hlt_code` int(11) DEFAULT NULL COMMENT 'HLT编码',
  `adverse_pt_name` varchar(20) DEFAULT NULL COMMENT '首选术语术语名称(PT)',
  `adverse_pt_code` int(11) DEFAULT NULL COMMENT 'PT编码',
  `adverse_llt_name` varchar(20) DEFAULT NULL COMMENT '低水平术语名称(LLT)',
  `adverse_llt_code` int(11) DEFAULT NULL COMMENT 'LLT编码',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete_status` tinyint(1) DEFAULT '1' COMMENT '1正常2删除',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='药品字典表';

-- ----------------------------
-- Records of medical_dictionary
-- ----------------------------
INSERT INTO `medical_dictionary` VALUES ('1', '肝类', '10', null, null, null, null, '肝硬化', '20', null, null, null, '1', '1', null, null, null, null);
INSERT INTO `medical_dictionary` VALUES ('2', '头疼脑热类', '1', null, null, null, null, '发烧', '1', null, null, null, '1', '1', null, null, null, null);
INSERT INTO `medical_dictionary` VALUES ('3', '头疼脑热类', '1', null, null, null, null, '寒战', '2', null, null, null, '1', '1', null, null, null, null);
INSERT INTO `medical_dictionary` VALUES ('4', '头疼脑热类', '1', null, null, null, null, '感冒', '3', null, null, null, '1', '1', null, null, null, null);
INSERT INTO `medical_dictionary` VALUES ('5', '头疼脑热类', '1', null, null, null, null, '头疼', '4', null, null, null, '1', '1', null, null, null, null);

-- ----------------------------
-- Table structure for patientinfo_basic
-- ----------------------------
DROP TABLE IF EXISTS `patientinfo_basic`;
CREATE TABLE `patientinfo_basic` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `patient_name` varchar(32) DEFAULT NULL COMMENT '患者姓名',
  `patient_name_abbreviations` varchar(32) DEFAULT NULL COMMENT '患者姓名缩写',
  `patient_birth` date DEFAULT NULL COMMENT '患者出生日期',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_age_unit` int(11) DEFAULT NULL COMMENT '患者年龄单位',
  `age_group` int(11) DEFAULT NULL COMMENT '年龄层',
  `patient_weight` int(11) DEFAULT NULL COMMENT '患者体重',
  `patient_height` int(11) DEFAULT NULL COMMENT '患者身高',
  `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',
  `last_menstrual_period` date DEFAULT NULL COMMENT '末次月经日期',
  `patient_national` int(11) DEFAULT NULL COMMENT '患者民族',
  `patient_phone` varchar(11) DEFAULT NULL COMMENT '患者电话',
  `hospital_name` varchar(32) DEFAULT NULL COMMENT '医院名称',
  `outpatient_service_no` varchar(32) DEFAULT NULL COMMENT '门诊号',
  `hospital_no` varchar(32) DEFAULT NULL COMMENT '住院号',
  `patient_no` varchar(32) DEFAULT NULL COMMENT '受试者编号',
  `privacy_confidential` int(11) DEFAULT NULL COMMENT '隐私机密',
  `relevant_important_info` varchar(32) DEFAULT NULL COMMENT '相关重要信息(数字多选以逗号隔开)',
  `allergy_remark` varchar(255) DEFAULT NULL COMMENT '过敏史备注',
  `other_remark` varchar(255) DEFAULT NULL COMMENT '其他史备注',
  `past_adverse_reactions` int(11) DEFAULT NULL COMMENT '既往药品不良反应/事件(1:有，2:无，3:不详)',
  `family_adverse_reactions` int(11) DEFAULT NULL COMMENT '家族药品不良反应/事件(1:有，2:无，3:不详)',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='患者信息-患者信息';

-- ----------------------------
-- Records of patientinfo_basic
-- ----------------------------
INSERT INTO `patientinfo_basic` VALUES ('1224d1ac7d854ddda063bcf2722deaa8', '1cd645bec004454cb26aec9f4d9e24f3', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-09 09:12:51', null, null);
INSERT INTO `patientinfo_basic` VALUES ('1b21e4324bc54fb2ac4c06cd25f5b082', '9b49916d29014f06af228469cef450cf', '13', '62', '21', null, null, null, null, null, null, null, null, null, null, '21', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-08 15:39:08', null, null);
INSERT INTO `patientinfo_basic` VALUES ('1e7544d9c56b4bf094ceba77f4fec209', '59f9aaf4958a4249b6a8ea71e3ab6976', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-08 10:42:19', null, null);
INSERT INTO `patientinfo_basic` VALUES ('1f19bab23cf94b5e95463160fa4636da', 'ff9d6683bc814dc18235cb55b2689724', '13', '62', '212', null, null, null, null, null, null, null, null, null, null, '2122', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 18:36:10', null, null);
INSERT INTO `patientinfo_basic` VALUES ('2a855d098a3245bc94754a2a9764ad85', 'b42588aeddbf4be5ac6d5a66fdd079a7', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-08 10:22:06', null, null);
INSERT INTO `patientinfo_basic` VALUES ('2da2e25f66304ff1be8b42f42a46f458', 'f0434d95b512457abb15b37014e65cc9', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 18:47:04', null, null);
INSERT INTO `patientinfo_basic` VALUES ('415e8cc9a93740718a7b10f9a42da02f', '2c8f667b92974ad48b608dd5137a0f79', '13', '62', '212', null, null, null, null, null, null, null, null, null, null, '22121', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 16:46:40', null, null);
INSERT INTO `patientinfo_basic` VALUES ('4af1f455d08f42b7ad105ef726747b2f', '6430f06ad9be47339007e72125dc557f', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:32:36', null, null);
INSERT INTO `patientinfo_basic` VALUES ('5e74cc3f5cf34e13bc7673178e57e68d', '6315dbade5054439aad0b643130d2ac0', '13', '62', '21', null, null, null, null, null, null, null, null, null, null, '212', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:42:05', null, null);
INSERT INTO `patientinfo_basic` VALUES ('97f3e85d86c245019cd0504df80ce651', '3dd2e560c4ba4c17800edbb708b4d344', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-09 09:13:57', null, null);
INSERT INTO `patientinfo_basic` VALUES ('dbf0a62f4fcf49ca8a7d29a9a1da7319', '96ccddfe5fd641e6bf6989271c941e3e', '13', '62', '21', null, null, null, null, null, null, null, null, null, null, '-1', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 16:19:25', null, null);
INSERT INTO `patientinfo_basic` VALUES ('f4979b2d8e3f42519df6bd4dc0550d04', '6c2db958cfb04543b2e49a85c4628e1d', '13', '62', '张三', null, null, null, null, null, null, null, null, null, null, '18255005179', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:18:14', null, null);

-- ----------------------------
-- Table structure for patientinfo_previous_medical_history
-- ----------------------------
DROP TABLE IF EXISTS `patientinfo_previous_medical_history`;
CREATE TABLE `patientinfo_previous_medical_history` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `drug_name` varchar(128) DEFAULT NULL COMMENT '药物名称',
  `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
  `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',
  `drug_indications_pt_name` varchar(32) DEFAULT NULL COMMENT '用药适应症(pt)',
  `drug_indications_dict_id` varchar(32) DEFAULT NULL COMMENT '用药适应症字典ID',
  `drug_reaction_pt_name` varchar(32) DEFAULT NULL COMMENT '用药反应(pt)',
  `drug_reaction_dict_id` varchar(32) DEFAULT NULL COMMENT '用药反应字典ID',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='患者信息-相关既往用药史';

-- ----------------------------
-- Records of patientinfo_previous_medical_history
-- ----------------------------

-- ----------------------------
-- Table structure for psur
-- ----------------------------
DROP TABLE IF EXISTS `psur`;
CREATE TABLE `psur` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `PLAN_NUMBER` varchar(12) NOT NULL COMMENT '计划编号',
  `DRUG_ID` varchar(32) NOT NULL COMMENT '药物ID',
  `ACTIVE_INGREDIENTS` varchar(500) DEFAULT NULL COMMENT '活性成份',
  `GENERIC_NAME` varchar(100) DEFAULT NULL COMMENT '通用名称',
  `INTERNATIONAL_BIRTH` date DEFAULT NULL COMMENT '国际诞生日',
  `START_DATE` date DEFAULT NULL COMMENT '数据开始日期',
  `EXPIRY_DATE` date DEFAULT NULL COMMENT '数据截止日期',
  `LATEST_SUB_DATE` date DEFAULT NULL COMMENT '最迟递交日期',
  `HANDLER` varchar(30) DEFAULT NULL COMMENT '处理人',
  `HANDLER_ID` varchar(32) DEFAULT NULL COMMENT '处理人ID',
  `STATE` int(12) DEFAULT NULL COMMENT '状态(1:撰写,2:提交,3:审核,4:导出)',
  `PLAN_TIME` date DEFAULT NULL COMMENT '计划时间',
  `WRITE_TIME` date DEFAULT NULL COMMENT '撰写时间',
  `SUB_TIME` date DEFAULT NULL COMMENT '提交时间',
  `AUDIT_TIME` date DEFAULT NULL COMMENT '审核时间',
  `AUDIT_RESULT` char(1) DEFAULT NULL COMMENT '审核结果(1:通过,2:未通过)',
  `AUDIT_REASONS` varchar(1000) DEFAULT NULL COMMENT '审核未通过原因',
  `COMPANY_ID` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `EXPORT_TIME` int(11) DEFAULT '0' COMMENT '导出次数',
  `DELETE_STATUS` int(11) DEFAULT '1' COMMENT '删除状态(1:未删除,0:已删除)',
  `REVISION` int(11) DEFAULT '0' COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PSUR';

-- ----------------------------
-- Records of psur
-- ----------------------------
INSERT INTO `psur` VALUES ('04e2960e5c7f4f7184188038b72d3423', 'P000004', '345a8b5ccf164f8caaad564f2addddsc', 'chance1', '2222', '2018-11-20', '2018-10-03', '2019-11-20', '2019-01-12', 'xiaoyan', '33', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-07 11:14:48', '33', '2018-11-07 11:14:48');
INSERT INTO `psur` VALUES ('12b4a2b89e3f4a99b931ba1b27e479d3', 'P000006', '3cc5315f27b641d2a872864ed8099561', 'chance1', '2222', '2018-11-06', '2018-11-14', '2019-11-14', '2019-01-13', 'xiaoyan', '33', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '0', '0', '33', '2018-11-07 16:51:28', '33', '2018-11-07 16:51:28');
INSERT INTO `psur` VALUES ('1335927b6770406aa863e4287b11d9ef', 'P000001', '345a8b5ccf164f8caaad564f2addddsc', 'chance1', '2222', '2018-11-06', '2018-11-14', '2019-11-14', '2019-01-13', 'xiaoyan', 'bf4dd9b1769d4abc9b2bd556154f3147', '1', '2018-11-05', '2018-11-05', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-05 17:48:04', '33', '2018-11-05 17:48:04');
INSERT INTO `psur` VALUES ('400c751a8a764ed4a5aa5fe8e14f75d7', 'P000002', '345a8b5ccf164f8caaad564f2addddsc', 'chance1', '2222', '2018-11-06', '2018-11-07', '2019-11-07', '2019-01-06', 'xiaoyan', 'bf4dd9b1769d4abc9b2bd556154f3147', '1', '2018-11-05', '2018-11-05', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-05 17:50:01', '33', '2018-11-05 17:50:01');
INSERT INTO `psur` VALUES ('4dc8a35a12024654ae996c5cac8677d8', 'P000003', '3cc5315f27b641d2a872864ed8099561', 'chance', '2222', '2018-11-13', '2018-11-14', '2019-11-14', '2019-01-13', 'xiaoyan', 'bf4dd9b1769d4abc9b2bd556154f3147', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-07 11:10:44', '33', '2018-11-07 11:10:44');
INSERT INTO `psur` VALUES ('726ecefc9d5748eba61da505e0a1c0fb', 'P000005', '345a8b5ccf164f8caaad564f2addddsc', 'chance', '2222', '2018-11-06', '2018-11-30', '2019-11-30', '2019-01-29', 'xiaoyan', '33', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-07 16:59:44', '33', '2018-11-07 16:59:44');
INSERT INTO `psur` VALUES ('99e85a469b05429dbe7c1f2b7f0ec4b3', 'P000007', '345a8b5ccf164f8caaad564f2addddsc', 'chance', '2222', '2018-11-06', '2018-11-13', '2019-11-13', '2019-01-12', 'xiaoyan', '33', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '0', '0', '33', '2018-11-07 17:02:28', '33', '2018-11-07 17:02:28');
INSERT INTO `psur` VALUES ('aeff9591c74f4df6bf9fbf9558560130', 'P000008', '345a8b5ccf164f8caaad564f2addddsc', 'chance', '2222', '2018-11-05', '2018-11-07', '2019-11-07', '2019-01-06', 'xiaoyan', '33', '1', '2018-11-08', '2018-11-08', null, null, null, null, '62', '0', '0', '0', '33', '2018-11-08 17:52:43', '33', '2018-11-08 17:52:43');
INSERT INTO `psur` VALUES ('b3508d88412746e1b478d8b5e01b1c20', 'P000005', '345a8b5ccf164f8caaad564f2addddsc', 'chance', '2222', '2018-11-30', '2018-11-13', '2019-11-13', '2019-01-12', 'xiaoyan', '33', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '0', '0', '33', '2018-11-07 15:01:19', '33', '2018-11-07 15:01:19');
INSERT INTO `psur` VALUES ('bc62b2d5ff1143278a4b6aa277e28db9', 'P000006', '345a8b5ccf164f8caaad564f2addddsc', 'chance', '2222', '2018-11-13', '2018-11-13', '2019-11-13', '2019-01-12', 'xiaoyan', '33', '1', '2018-11-07', '2018-11-07', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-07 17:01:05', '33', '2018-11-07 17:01:05');
INSERT INTO `psur` VALUES ('f2c73743caaf41c7819a2e496b9a42ae', 'P000007', '345a8b5ccf164f8caaad564f2addddsc', 'chance', '2222', '2018-11-07', '2018-11-28', '2019-11-28', '2019-01-27', 'xiaoyan', '33', '1', '2018-11-08', '2018-11-08', null, null, null, null, '62', '0', '1', '0', '33', '2018-11-08 17:52:12', '33', '2018-11-08 17:52:12');

-- ----------------------------
-- Table structure for pv_1_adverse_event_detail
-- ----------------------------
DROP TABLE IF EXISTS `pv_1_adverse_event_detail`;
CREATE TABLE `pv_1_adverse_event_detail` (
  `id` varchar(32) NOT NULL COMMENT '报告ID',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
  `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',
  `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT '不良事件术语(pt)',
  `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',
  `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_sex` varchar(1) DEFAULT NULL COMMENT '患者性别',
  `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
  `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT '系统器官分类名称(SOC)',
  `plan_number` varchar(12) COMMENT '计划编号',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `first_create_time` datetime DEFAULT NULL COMMENT '首次获知时间',
  `drug_name` varchar(3120) DEFAULT NULL COMMENT '药物名称(商品名;通用名称)',
  `drug_dose` decimal(10,3) DEFAULT NULL COMMENT '剂量',
  `drug_dose_unit` int(11) DEFAULT NULL COMMENT '剂量单位',
  `time_interval` int(11) DEFAULT NULL COMMENT '间隔时间',
  `time_interval_unit` int(11) DEFAULT NULL COMMENT '间隔时间单位',
  `daily_number` decimal(10,3) DEFAULT NULL COMMENT '每日次数',
  `drug_use_duration` int(11) DEFAULT NULL COMMENT '给药的持续时间',
  `drug_use_duration_unit` int(11) DEFAULT NULL COMMENT '给药的持续时间单位',
  `known_new` int(11) DEFAULT NULL COMMENT '已知/新的',
  `known_serious` int(11) DEFAULT NULL COMMENT '是否严重',
  `age_group` int(11) DEFAULT NULL COMMENT '年龄层',
  `report_ending` int(11) DEFAULT NULL COMMENT '报告结局',
  `drug_generic_zh_name` text COMMENT '通用中文名称',
  `drug_generic_en_name` text COMMENT '通用英文名称',
  `drug_product_zh_name` text COMMENT '商品中文名称',
  `drug_product_en_name` text COMMENT '商品英文名称',
  `report_description` text COMMENT '报告描述',
  `company_description` text COMMENT '公司描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例药品不良反应病例列表';

-- ----------------------------
-- Records of pv_1_adverse_event_detail
-- ----------------------------
INSERT INTO `pv_1_adverse_event_detail` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', '0', null, '', '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, '肝类', null, '62', '', null, '2018-11-05 00:00:00', ';1', null, null, null, null, null, null, null, '1', '1', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000045这是一份来自于*的报告，收到报告日期为2018-11-05 00:00:00。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现发烧事件2，为已知严重的反应，考虑为*');
INSERT INTO `pv_1_adverse_event_detail` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', '1', null, '', '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', null, '62', '', null, '2018-11-06 00:00:00', ';1', null, null, null, null, null, null, null, '1', '0', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000056这是一份来自于*的报告，收到报告日期为2018-11-06 00:00:00。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现寒战事件3，为已知一般的反应，考虑为*');
INSERT INTO `pv_1_adverse_event_detail` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', '1', null, '', '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, '头疼脑热类', null, '62', '', null, '2018-11-07 15:31:52', ';1', null, null, null, null, null, null, null, '1', '1', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000042这是一份来自于*的报告，收到报告日期为2018-11-07 15:31:52。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现头疼事件1，为已知严重的反应，考虑为*');
INSERT INTO `pv_1_adverse_event_detail` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', '1', null, '', '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', null, '62', '', null, '2018-11-15 00:00:00', ';1', null, null, null, null, null, null, null, '0', '0', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000041这是一份来自于*的报告，收到报告日期为2018-11-15 00:00:00。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现头疼事件2，为未知一般的反应，考虑为*');
INSERT INTO `pv_1_adverse_event_detail` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', '0', null, '', '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, '肝类', null, '62', '', null, '2018-11-07 18:34:44', ';1', null, null, null, null, null, null, null, '1', '1', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000046这是一份来自于*的报告，收到报告日期为2018-11-07 18:34:44。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现发烧事件7，为已知严重的反应，考虑为*');

-- ----------------------------
-- Table structure for pv_1_adverse_event_detail_1
-- ----------------------------
DROP TABLE IF EXISTS `pv_1_adverse_event_detail_1`;
CREATE TABLE `pv_1_adverse_event_detail_1` (
  `id` varchar(32) NOT NULL COMMENT '报告ID',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
  `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',
  `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT '不良事件术语(pt)',
  `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',
  `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_sex` varchar(1) DEFAULT NULL,
  `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
  `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT 'SOC名称',
  `plan_number` varchar(12) NOT NULL COMMENT '计划编号',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `sessionruntime` varchar(20) DEFAULT '' COMMENT '运行时间',
  `drug_generic_en_name` varchar(100) DEFAULT NULL COMMENT '通用英文名称',
  `drug_generic_zh_name` varchar(100) DEFAULT NULL COMMENT '通用中文名称',
  `drug_product_en_name` varchar(100) DEFAULT NULL COMMENT '商品英文名称',
  `drug_product_zh_name` varchar(100) DEFAULT NULL COMMENT '商品中文名称',
  `report_description` varchar(1000) DEFAULT NULL COMMENT '报告描述',
  `company_description` varchar(1000) DEFAULT NULL COMMENT '报告描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例药品不良反应病例列表';

-- ----------------------------
-- Records of pv_1_adverse_event_detail_1
-- ----------------------------
INSERT INTO `pv_1_adverse_event_detail_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', '1', null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-29 11:22:07', null, null, null, null, null, null);
INSERT INTO `pv_1_adverse_event_detail_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', '1', null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-29 11:22:07', null, null, null, null, null, null);
INSERT INTO `pv_1_adverse_event_detail_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', '0', null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, '肝类', '', '62', null, '2018-11-29 11:22:07', null, null, null, null, null, null);
INSERT INTO `pv_1_adverse_event_detail_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', '1', null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-29 11:22:07', null, null, null, null, null, null);
INSERT INTO `pv_1_adverse_event_detail_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', '0', null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, '肝类', '', '62', null, '2018-11-29 11:22:07', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for pv_1_adverse_event_detail_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `pv_1_adverse_event_detail_snapshot`;
CREATE TABLE `pv_1_adverse_event_detail_snapshot` (
  `id` varchar(32) NOT NULL COMMENT '报告ID',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
  `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',
  `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT '不良事件术语(pt)',
  `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',
  `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_sex` varchar(1) DEFAULT NULL COMMENT '患者性别',
  `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
  `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT '系统器官分类名称(SOC)',
  `plan_number` varchar(12) COMMENT '计划编号',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `first_create_time` datetime DEFAULT NULL COMMENT '首次获知时间',
  `drug_name` varchar(3120) DEFAULT NULL COMMENT '药物名称(商品名;通用名称)',
  `drug_dose` decimal(10,3) DEFAULT NULL COMMENT '剂量',
  `drug_dose_unit` int(11) DEFAULT NULL COMMENT '剂量单位',
  `time_interval` int(11) DEFAULT NULL COMMENT '间隔时间',
  `time_interval_unit` int(11) DEFAULT NULL COMMENT '间隔时间单位',
  `daily_number` decimal(10,3) DEFAULT NULL COMMENT '每日次数',
  `drug_use_duration` int(11) DEFAULT NULL COMMENT '给药的持续时间',
  `drug_use_duration_unit` int(11) DEFAULT NULL COMMENT '给药的持续时间单位',
  `known_new` int(11) DEFAULT NULL COMMENT '已知/新的',
  `known_serious` int(11) DEFAULT NULL COMMENT '是否严重',
  `age_group` int(11) DEFAULT NULL COMMENT '年龄层',
  `report_ending` int(11) DEFAULT NULL COMMENT '报告结局',
  `drug_generic_zh_name` text COMMENT '通用中文名称',
  `drug_generic_en_name` text COMMENT '通用英文名称',
  `drug_product_zh_name` text COMMENT '商品中文名称',
  `drug_product_en_name` text COMMENT '商品英文名称',
  `report_description` text COMMENT '报告描述',
  `company_description` text COMMENT '公司描述',
  `sessionruntime` varchar(20) DEFAULT '' COMMENT '运行时间',
  `records` int(11) DEFAULT NULL COMMENT '报告记录数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例药品不良反应病例列表-快照表';

-- ----------------------------
-- Records of pv_1_adverse_event_detail_snapshot
-- ----------------------------
INSERT INTO `pv_1_adverse_event_detail_snapshot` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', '0', null, '', '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, '肝类', null, '62', '', null, '2018-11-05 00:00:00', ';1', null, null, null, null, null, null, null, '1', '1', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000045这是一份来自于*的报告，收到报告日期为2018-11-05 00:00:00。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现发烧事件2，为已知严重的反应，考虑为*', '2018-11-29 14:14:41', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', '1', null, '', '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', null, '62', '', null, '2018-11-06 00:00:00', ';1', null, null, null, null, null, null, null, '1', '0', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000056这是一份来自于*的报告，收到报告日期为2018-11-06 00:00:00。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现寒战事件3，为已知一般的反应，考虑为*', '2018-11-29 14:14:41', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', '1', null, '', '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, '头疼脑热类', null, '62', '', null, '2018-11-07 15:31:52', ';1', null, null, null, null, null, null, null, '1', '1', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000042这是一份来自于*的报告，收到报告日期为2018-11-07 15:31:52。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现头疼事件1，为已知严重的反应，考虑为*', '2018-11-29 14:14:41', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', '1', null, '', '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', null, '62', '', null, '2018-11-15 00:00:00', ';1', null, null, null, null, null, null, null, '0', '0', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000041这是一份来自于*的报告，收到报告日期为2018-11-15 00:00:00。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现头疼事件2，为未知一般的反应，考虑为*', '2018-11-29 14:14:41', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', '0', null, '', '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, '肝类', null, '62', '', null, '2018-11-07 18:34:44', ';1', null, null, null, null, null, null, null, '1', '1', null, null, '1', ',*,1', '1,21,,*,万千瓦', ',*', '62公司内部编号：2018ASDF000046这是一份来自于*的报告，收到报告日期为2018-11-07 18:34:44。 该*性患者*,岁，于*开始进行药物治疗，药物名称：;1，单次剂量**，频率为***次，给药持续时间为**', '**性，使用;1后出现发烧事件7，为已知严重的反应，考虑为*', '2018-11-29 14:14:41', '5');

-- ----------------------------
-- Table structure for pv_1_adverse_event_detail_snapshot_1
-- ----------------------------
DROP TABLE IF EXISTS `pv_1_adverse_event_detail_snapshot_1`;
CREATE TABLE `pv_1_adverse_event_detail_snapshot_1` (
  `id` varchar(32) NOT NULL COMMENT '报告ID',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',
  `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',
  `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT '不良事件术语(pt)',
  `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',
  `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_sex` varchar(1) DEFAULT NULL,
  `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
  `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',
  `report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT 'SOC名称',
  `plan_number` varchar(12) NOT NULL COMMENT '计划编号',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `sessionruntime` varchar(20) DEFAULT '' COMMENT '运行时间',
  `records` int(11) DEFAULT NULL COMMENT '报告记录数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例药品不良反应病例列表-快照表';

-- ----------------------------
-- Records of pv_1_adverse_event_detail_snapshot_1
-- ----------------------------
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 13:43:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 13:43:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 13:43:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 13:43:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 13:43:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 14:00:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 14:00:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 14:00:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 14:00:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 14:00:11', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:39:38', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:39:38', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:39:38', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:39:38', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:39:38', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:40:04', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:40:04', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:40:04', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:40:04', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:40:04', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 10:58:35', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 10:58:35', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 10:58:35', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 10:58:35', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-15 10:58:35', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-17 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-17 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-17 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-17 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-17 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, null, '', null, null, '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, null, '', null, null, '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', null, null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', null, null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', null, null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, '肝类', '', '62', null, '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', null, null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', null, null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, '肝类', '', '62', null, '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '2018ASDF000056', '中国', '1', null, null, '寒战事件3', '寒战', '2018-10-01 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6430f06ad9be47339007e72125dc557f', '2018ASDF000042', '中国', '1', null, null, '头疼事件1', '头疼', '2018-11-07 15:32:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '2018ASDF000045', '中国', '0', null, null, '发烧事件2', '发烧', '2018-11-05 00:00:00', null, null, null, null, null, null, null, '肝类', '', '62', null, '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '2018ASDF000041', '中国', '1', null, null, '头疼事件2', '头疼', '2018-10-29 00:00:00', null, null, null, null, null, null, null, '头疼脑热类', '', '62', null, '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_detail_snapshot_1` VALUES ('ff9d6683bc814dc18235cb55b2689724', '2018ASDF000046', '中国', '0', null, null, '发烧事件7', '发烧', '2018-11-07 18:35:47', null, null, null, null, null, null, null, '肝类', '', '62', null, '2018-11-29 11:22:07', '5');

-- ----------------------------
-- Table structure for pv_1_adverse_event_summary
-- ----------------------------
DROP TABLE IF EXISTS `pv_1_adverse_event_summary`;
CREATE TABLE `pv_1_adverse_event_summary` (
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT 'SOC名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT 'PT名称',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `plan_number` varchar(12) DEFAULT NULL COMMENT '计划编号',
  `adverse_event_records` int(11) DEFAULT NULL COMMENT '病例数',
  `adverse_event_label_known_serious` int(11) DEFAULT NULL COMMENT '已知 严重',
  `adverse_event_label_know_general` int(11) DEFAULT NULL COMMENT '已知 一般',
  `adverse_event_label_unknown_serious` int(11) DEFAULT NULL COMMENT '未知 严重',
  `adverse_event_label_unknown_general` int(11) DEFAULT NULL COMMENT '未知 一般'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='个例药品不良反应汇总表';

-- ----------------------------
-- Records of pv_1_adverse_event_summary
-- ----------------------------
INSERT INTO `pv_1_adverse_event_summary` VALUES ('头疼脑热类', '头疼', '62', null, '2', '1', '0', '0', '1');
INSERT INTO `pv_1_adverse_event_summary` VALUES ('头疼脑热类', '寒战', '62', null, '1', '0', '1', '0', '0');
INSERT INTO `pv_1_adverse_event_summary` VALUES ('肝类', '发烧', '62', null, '2', '2', '0', '0', '0');

-- ----------------------------
-- Table structure for pv_1_adverse_event_summary_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `pv_1_adverse_event_summary_snapshot`;
CREATE TABLE `pv_1_adverse_event_summary_snapshot` (
  `adverse_soc_name` varchar(50) DEFAULT NULL COMMENT 'SOC名称',
  `adverse_event_pt_name` varchar(32) DEFAULT NULL COMMENT 'PT名称',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司Id',
  `plan_number` varchar(12) DEFAULT NULL COMMENT '计划编号',
  `adverse_event_records` int(11) DEFAULT NULL COMMENT '病例数',
  `adverse_event_label_known_serious` int(11) DEFAULT NULL COMMENT '已知 严重',
  `adverse_event_label_know_general` int(11) DEFAULT NULL COMMENT '已知 一般',
  `adverse_event_label_unknown_serious` int(11) DEFAULT NULL COMMENT '未知 严重',
  `adverse_event_label_unknown_general` int(11) DEFAULT NULL COMMENT '未知 一般',
  `sessionruntime` varchar(20) DEFAULT '' COMMENT '运行时间',
  `records` int(11) DEFAULT NULL COMMENT '报告记录数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='个例药品不良反应汇总表-快照表';

-- ----------------------------
-- Records of pv_1_adverse_event_summary_snapshot
-- ----------------------------
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-14 15:42:48', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-14 15:42:48', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-14 15:42:48', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-14 15:43:48', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-15 08:53:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-15 10:58:36', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-15 10:58:36', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-15 10:58:36', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-16 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-17 00:00:05', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-17 00:00:05', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-17 00:00:05', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-18 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-19 00:00:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', null, null, '2', '1', '0', '0', '1', '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', null, null, '1', '0', '1', '0', '0', '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', null, null, '2', '2', '0', '0', '0', '2018-11-20 14:22:01', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', '62', null, '2', '1', '0', '0', '1', '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', '62', null, '1', '0', '1', '0', '0', '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', '62', null, '2', '2', '0', '0', '0', '2018-11-29 11:22:07', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '头疼', '62', null, '2', '1', '0', '0', '1', '2018-11-29 14:14:41', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('头疼脑热类', '寒战', '62', null, '1', '0', '1', '0', '0', '2018-11-29 14:14:41', '5');
INSERT INTO `pv_1_adverse_event_summary_snapshot` VALUES ('肝类', '发烧', '62', null, '2', '2', '0', '0', '0', '2018-11-29 14:14:41', '5');

-- ----------------------------
-- Table structure for report_assessment
-- ----------------------------
DROP TABLE IF EXISTS `report_assessment`;
CREATE TABLE `report_assessment` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `manufacturers` varchar(32) DEFAULT NULL COMMENT '生产厂商',
  `commodity_name` varchar(128) DEFAULT NULL COMMENT '商品名称',
  `generic_name` varchar(1024) DEFAULT NULL COMMENT '通用名称',
  `adverse_events_name` varchar(128) DEFAULT NULL COMMENT '不良事件',
  `known` varchar(32) DEFAULT NULL COMMENT '已知',
  `severity` varchar(32) DEFAULT NULL COMMENT '严重性',
  `rapporteur_evaluation` varchar(32) DEFAULT NULL COMMENT '报告者评价',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `correction_causation` int(11) DEFAULT NULL COMMENT '因果关系修正',
  `start_drug_event_interval` int(11) DEFAULT NULL COMMENT '开始给药到事件发生到时间间隔',
  `start_drug_event_interval_unit` int(11) DEFAULT NULL COMMENT '开始时间间隔单位',
  `end_drug_event_interval` int(11) DEFAULT NULL COMMENT '末次给药到事件发生时间间隔',
  `end_drug_event_interval_unit` int(11) DEFAULT NULL COMMENT '末次时间间隔单位',
  `Whether_again_drug_react` int(11) DEFAULT NULL COMMENT '再次给药是否发生反应',
  `drug_additional_information` int(11) DEFAULT NULL COMMENT '药物的额外信息',
  `drug_other_information` varchar(3120) DEFAULT NULL COMMENT '药物的其他信息',
  `pt_code` varchar(32) DEFAULT NULL COMMENT '不良事件ptcode',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报告评价';

-- ----------------------------
-- Records of report_assessment
-- ----------------------------

-- ----------------------------
-- Table structure for report_concludes
-- ----------------------------
DROP TABLE IF EXISTS `report_concludes`;
CREATE TABLE `report_concludes` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `report_id` varchar(32) NOT NULL COMMENT '报告ID',
  `project_id` varchar(32) NOT NULL COMMENT '项目ID',
  `company_id` varchar(32) NOT NULL COMMENT '公司ID',
  `self_report_template` text COMMENT '自发报告模版',
  `clinical_study_template` text COMMENT '临床研究报告模版',
  `pregnancy_report_templates` text COMMENT '妊娠报告模版',
  `adr_remark` text COMMENT 'ADR备注',
  `whether_report_serious` int(11) DEFAULT NULL COMMENT '报告是否严重',
  `whether_report_serious_remark` varchar(128) DEFAULT NULL COMMENT '报告是否严重备注',
  `correlation` int(11) DEFAULT NULL COMMENT '相关性',
  `correlation_remark` varchar(128) DEFAULT NULL COMMENT '相关性备注',
  `known_determine` int(11) DEFAULT NULL COMMENT '已知判断',
  `known_determine_remark` varchar(128) DEFAULT NULL COMMENT '已知判断备注',
  `report_ending` int(11) DEFAULT NULL COMMENT '报告结局',
  `report_ending_remark` varchar(128) DEFAULT NULL COMMENT '报告结局备注',
  `DELETE_STATUS` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报告总结';

-- ----------------------------
-- Records of report_concludes
-- ----------------------------
INSERT INTO `report_concludes` VALUES ('7342f867283b42ca9f98edd055b03a24', 'f1d6ccc3ce844d95a07a3b85a66ed63d', '13', '62', null, null, null, null, '2', null, null, null, '2', null, '5', null, '1', null, 'jerry', '2018-11-20 14:19:53', null, null);
INSERT INTO `report_concludes` VALUES ('e400a43a6bc045faac8e5a32c4f4529a', '66e68c3ed6104db2a62a080fbfef1e6a', '13', '62', null, null, null, null, '2', null, null, null, '2', null, '5', null, '1', null, 'jerry', '2018-11-20 14:19:53', null, null);
INSERT INTO `report_concludes` VALUES ('e425d0961d19468a951a334dc40e5d26', '5b327b1b245d4c4a9380f10e81be4307', '13', '62', null, null, null, null, '2', null, null, null, '2', null, '5', null, '1', null, 'jerry', '2018-11-20 14:19:53', null, null);

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` char(32) NOT NULL DEFAULT '' COMMENT '主键ID',
  `field_id` char(32) DEFAULT NULL COMMENT '字段ID',
  `dict_data` varchar(64) DEFAULT NULL COMMENT '字典资源',
  `dict_display_chinese` varchar(64) DEFAULT NULL COMMENT '字典中文显示值',
  `dict_display_english` varchar(64) DEFAULT NULL COMMENT '字典英文显示值',
  `dict_real_values` int(11) DEFAULT NULL COMMENT '字典真实的值',
  `dict_sort` int(11) DEFAULT NULL COMMENT '字典排序',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态1删除，2正常',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('006031455f054386a7322e068df359d0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶片', 'enteric-coated tablet', '90', '90', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0099779fd2834696a0d0d38aea228ceb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '膜剂', 'membranes', '152', '152', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('00cdd6a8bfc44d9590d376cbd6b9fcbc', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道片', 'vaginal tablet', '68', '68', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('00fa62ea138f47cf8e728a06424be4af', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '醑', 'spirit', '88', '88', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('02a7758d839c414db51c28b35d7b6f23', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '药品检验报告', '', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('02e7202c723d4f8581fe003ac43907f3', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '舌下片', 'sublingual tablet', '93', '93', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('03cacf34babb45d9a79badfceee87b6a', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经鼻给药', 'Nasal', '45', '45', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('06068107671941c0b61317b56fe01b27', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '体内诊断试剂', 'In vivo diagnostic reagents', '141', '141', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('06fee16682114ed9ac90d741ffd38afc', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'IIb期', 'phase IIb clinical trials', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('07314182c80244889ab53ff60efb55fd', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '静脉给药', 'Intravenous (not otherwise specified) ', '42', '42', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('07b3efb9625f4eb3ab3c95215eaa65e5', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释小丸', 'sustained-release pellets', '112', '112', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('07f634935c354c1aa962763a95018cb8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释片', 'sustained-release tablet', '78', '78', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0839163b21634d31bda2132fc761d636', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服液', 'oral liquid', '34', '34', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('090fc6d67f8449ac92d3fb09fe913e54', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '不良事件', 'Adverse Event', '4', '4', 'AE', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0a85cf6e8c7c47e69896d1dd3c458541', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '含服', 'Buccal', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0ad4f48effeb4113b3d1a88d7799d9ef', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '胶囊', 'capsule', '129', '129', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0be54972b902404e9e20555001f96852', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '关节内给药', 'Periarticular', '52', '52', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0e133694d50242febd0e5fb858b6eff4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '油剂', 'oiling agent', '99', '99', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0e4b91fa76134bc4851add5efc09f264', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '膀胱内给药', 'Intravesical', '43', '43', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0ec80cc0d679490c98f07cae2f2a54e4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '熨剂', 'compression formula', '94', '94', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0fbeb3f8d9a44fbb9a99d7abd9ec362a', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '表面麻醉', '', '77', '77', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('0fbfe68326514f68aeb6e6bc9bea583b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '气体', 'gaseous fluid', '14', '14', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('11dbe5e715dd41ee92908b3028fb0e85', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '冠动脉给药', 'Intracoronary', '22', '22', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('126752e25e0548ff8c41d3a425585d41', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '吸入剂', 'inhalant', '105', '105', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('129871899e824d2687b595d69b65783d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道栓', 'vaginal plug', '98', '98', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('14d3543e827f40aeab0f961b5ae1f2ed', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬注射剂', 'acetate suspension for injection', '104', '104', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('159e1147d25241da9f2efdf30367fa73', '8a81497c53c2466f82473409dea6aa91', 'province', '山西省', 'Shanxi', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('15e833306f9a4520a134b8bac0f3e01c', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '术中栓塞', '', '86', '86', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('15fbdeecbbb44b6e9e686330577e4dae', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经胎盘给药', 'Transplacental', '64', '64', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('16240ab0373048908b412f2ed49fd3a2', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '质疑问卷-解答', '', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('16a90567c5d04115afa3c77884fa1541', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬滴剂', 'suspend drops', '96', '96', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('170250cf89c24aec8c20b203d92d28d2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '管道喂养', 'Parenteral', '51', '51', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1728dd3296ff429984b695e979282df5', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '单项选择', '', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('17ad0e1fe1d74f5c9639f9ec40d1a64d', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'OT_country', '美国', 'a', '1', '1', null, '2', null, 'ybb', '2018-09-14 09:55:18', null, null);
INSERT INTO `sys_dictionary` VALUES ('17aee99046c74cc3b63c78b4ce24eadb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶微粒胶囊', 'enteric-coated microsomes capsule', '153', '153', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('181faab1bfdc4cb5bb7865b3c7d8885c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '水煎剂', 'water decoction', '110', '110', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('183fab5c0d5f4d6ab6e5d257846b55a2', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '下拉录入', '', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('185e5fdc56cc429b8b72c3889fcce462', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '放松放松', 'sfs', '6', '6', null, '2', null, 'ybb', '2018-09-26 09:33:30', null, null);
INSERT INTO `sys_dictionary` VALUES ('1887ee180ae84534b0045d946c7c9f06', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴剂', 'drops', '15', '15', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1953fcb740b2489eac9ed790f83e228f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '喷雾剂', 'spray', '150', '150', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('195a218341fb449282cce919939bb7f7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '茶剂', 'medicinal tea', '154', '154', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1960a93aaabe4755babf04848613779e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '喷剂', 'spray', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('19afd2be9de64319b6906b4bd8870b6b', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药3类', 'New drug class 3', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1a860ef9e1724b90938518f1f0ecc777', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '颈丛阻滞', '', '76', '76', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1b88e007839440dabb9d213f015ec915', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '软膏', 'ointment', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1ba55ed2839a41b4aa4888b47f37be91', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释丸剂', 'sustain-released bolus', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1bd9c0af163a477d941cb9c2681db3c4', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', 'ewrwr', 'sfss', '6', '6', null, '1', null, 'ybb', '2018-09-18 11:39:53', 'ybb', '2018-09-18 16:45:12');
INSERT INTO `sys_dictionary` VALUES ('1cbafa6f0f874605909ff88525c54b2d', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'IIa期', 'phase IIa clinical trials', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1cc0401183f241ee8787ea7a5606e4f2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '羊膜腔外给药', 'Extra-amniotic', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1d543dc5dfe84946936d00f450502aad', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '吸入混悬液', 'Inhalation suspension liquid', '160', '160', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1e2db2aeab0f4e489823df1d10e0ea4d', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '所属', 'sa', '6', '6', null, '1', null, 'ybb', '2018-09-18 17:37:49', 'ybb', '2018-09-18 17:37:54');
INSERT INTO `sys_dictionary` VALUES ('1e34a8504e7f47e2a322dac7e50116db', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经淋巴管内灌注', 'Intralymphatic', '27', '27', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('1fdbf07cd6d242fb988178bb58f9374f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '植入剂', 'implant', '62', '62', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('200921568e954cb1a6f88f06f2948d46', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '蛋糕店', 'dgdg', '9', '6', null, '2', null, 'ybb', '2018-09-25 10:06:05', 'ybb', '2018-09-25 11:26:19');
INSERT INTO `sys_dictionary` VALUES ('20d6f9a450624bb8afd0fbbd2d62d54e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释凝胶', 'sustained-release gel', '73', '73', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2102abdc674b4f6ba2bb0d8df079a51f', '8a81497c53c2466f82473409dea6aa91', 'province', '甘肃省', 'Gansu', '25', '25', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('21e0d496ac61444ab53001ff988bac33', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '双释放胶囊', 'double release capsules', '23', '23', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('23035c5331b841c98f9b3909485fea24', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '搽剂', 'liniment', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('23aad6119e334d048f1f120e63bd7926', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '球后注射', '', '80', '80', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('23b621d9eeec4f18bc4660b51d079666', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '药物信息', 'Drug Information', '3', '3', 'DI', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('24348f81d450490d84f2adc0018b56b7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intracorneal', '21', '21', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2481026af3c34afc953546e2e91aaf9e', '689305baa7d748d88aa73836f1c9c9b8', 'mailbox_setting', 'Exchange', 'Exchange', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('249d309c311a487da6c9e553872fcfb5', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intracervical', '19', '19', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('25280612ab7c4424a46231033f078989', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '针对常见疾病的探索性研究', 'exploratory research on common diseases', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('264d0578fef143bdb83cbcccde2d9484', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '水剂', 'water aqua', '123', '123', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('268b438728394578b272c5560843fafc', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '涂剂', 'lotion', '101', '101', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('27b3c50e08424a028e136cb078e5781a', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '泡腾片', 'effervescent tablets', '139', '139', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('27bef430c4164c4faf5351cb25449914', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '患者信息', 'Patient Information', '2', '2', 'PI', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('28072e1f9f24462fa45ed81c4b8a511d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '洗剂', 'lotion', '41', '41', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2872c54b8ca2435c83757477d41f6752', '8a81497c53c2466f82473409dea6aa91', 'province', '广西壮族自治区', 'Guangxi', '29', '29', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('288a2b0d3cc4439d994c80b2868f91f2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '滑膜内给药', 'Intrasynovial', '35', '35', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('289088e0a7c9411fb91cc1b21f5ba581', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '颗粒', 'granule', '133', '133', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('29029d1d0efe42849c455749809772bd', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '粉剂', 'pulveres', '71', '71', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2b2fea065a114332b3d53f283d0ec038', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '划痕剂', 'nick agent', '26', '26', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2b3912eff8d44b4f9c6f16e816b9acbe', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释微粒', 'delay release', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2bd983ed18134af5ac6c26b0d09c7719', '79ee4f58da164d6795029d8012094b04', 'drug-class', '预防用生物制品', 'Vacine', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2bfbc28961fa4e649851cfdb5e31b79b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肿瘤内注射', 'Intratumor', '36', '36', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d124aee39ce44738b4c2095e670f137', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药6类', 'New drug class 6', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d357d03807f48a69d6bc19bd0fafdf1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '浸膏片', 'extract tablets', '43', '43', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d77313b19fa460a97ba0a2c0a9d3bf2', '8a81497c53c2466f82473409dea6aa91', 'province', '江苏省', 'Jiangsu', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2d8ca8340db9497382918249765b6a7f', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '阴道给药', 'Vaginal', '67', '67', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2ec4fc6a860b494394310e1a3cd30593', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道灌注液', 'vagina perfusate', '146', '146', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2ed2677f0dab4030a1f52acee7054f7d', 'b1dbb4b46c6443d68eca08727b9463ea', 'company_info_type', '药企', 'Pharmaceutical Company', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f1063b4bc6b45729c7fd9c6f23df357', '8a81497c53c2466f82473409dea6aa91', 'province', '浙江省', 'Zhejiang', '11', '11', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f55d551d4ed4e7f9fd4135671808a83', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '双释放肠溶胶囊', 'dual release enteric-coated capsules', '145', '145', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f765872beac4faea1cf09add787c860', '8a81497c53c2466f82473409dea6aa91', 'province', '北京市', 'Beijing', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('2f81e5ed2d534e22891913ce61d35d08', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '3', '3', '3', '1', null, '1', null, 'ybb', '2018-09-18 11:38:34', 'ybb', '2018-09-18 16:45:06');
INSERT INTO `sys_dictionary` VALUES ('3015b3c4353149ffb4f65a8dcc85a9a8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '泡沫剂', 'foaming agent', '80', '80', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('31be8f966e004921996d2d1f425145e8', '8a81497c53c2466f82473409dea6aa91', 'province', '山东省', 'Shandong', '15', '15', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('334486c8b4574ede9aad9fe7d5be7ab7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Cutaneous', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('34b9eae2f2d04c38919820ad911ab48d', '8a81497c53c2466f82473409dea6aa91', 'province', '新疆维吾尔自治区', 'Sinkiang', '32', '32', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('34c1383efcb54356bf17b3ccfec08954', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释透皮贴', 'slow-release transdermal stick', '115', '115', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('34e847493c014494a9da0855ab672373', '8a81497c53c2466f82473409dea6aa91', 'province', '四川省', 'Sichuan', '21', '21', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3528a9ab50c04a4ebdc02eef22b8f5eb', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅲ 期', 'Ⅲexpect', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('359c54147b9441d89f587ff0d3aa7284', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '灸剂', 'moxa-preparation', '57', '57', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('364e6cfaa16e4f8c94062c3c023580cf', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '片剂', 'tablet', '70', '70', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3653f910f12d49dfbf09a6fc60646412', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '丹剂', 'sublimed preparation', '75', '75', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3882f918bfa44e9ea2bbe459c0a6e067', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '尿道给药', 'Urethral', '66', '66', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('389974be115a4fcf8d94643cd28ee034', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '敷料', 'surgical dressing', '100', '100', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3a778622e032450c90ee7563b5b10f4c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '外用凝胶', 'gels ', '126', '126', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3ab769a8310b47159fd495e7f34dab88', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '外用', '', '78', '78', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3bc790cbc0504f2bbe76db8b2e769c62', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '多项选择', '', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3c96674ac35c41ea9bb000b3384ab84d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经眼给药', 'Ophthalmic', '47', '47', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3cf234be0b4b4f3fa1ebf8a61c55ca0d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道软胶囊', 'vaginal soft capsule', '54', '54', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3cf5c9137f9a43c690fac2faade162ff', '8a81497c53c2466f82473409dea6aa91', 'province', '天津市', 'Tianjin', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3d356215c2634781bd2bec007e5250fa', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅳ期', 'Ⅳexpect', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3def1547a85649ffac7b85e045131d80', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '局部浸润麻醉', 'Iontophoresis', '44', '44', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3e427901ede445e2adebb36556ca3c9b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '酊剂', 'tincture', '48', '48', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3ec6d314be6c477bb25366ab8b712534', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '分散片', 'dispersible tablet', '132', '132', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3f0f4d66bdb5435e87838d75621fb606', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'Ia期', 'phase Ia clinical trials', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3f97073c4d1d48efabcfdaab8059faa6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '露剂', 'Distillate medicinal water', '16', '16', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3fce0b91e513493298b357248f8e7965', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '植入给药', '', '70', '70', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('3fe2cd388fd5424e876396f81d4d4d08', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '皮下给药', 'Subcutaneous', '58', '58', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('40204a3f153149c1a20ff7d3db6a695f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '乳胶', 'latex', '50', '50', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4118b7b710844d9799edde00dc1f90e6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '试剂', 'reagent', '74', '74', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('42220316b8bd48d98f35b5d2e3c33337', '1b7d555940284fe6b0b0bf527042c02d', 'research-design', '开放', 'Open Label', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('426de0eda00e4d31ac0470a518fe1b08', '8a81497c53c2466f82473409dea6aa91', 'province', '安徽省', 'Anhui', '12', '12', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('42fb4cdf5a284e3d9b9a598f7aade897', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '漱口', '', '71', '71', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('457ea0b3c2d9405a8bc3414ef7a51aa0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '胶浆剂', 'mucilage', '19', '19', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('45dd93b736144a259736d117394dd8de', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '明胶纤维', 'gelatin fibre', '84', '84', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('45fd170009934445966b3d16447ed668', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '含漱液', 'gargle', '138', '138', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4692a31bba374d12a8ba635ba6f16d97', '1b7d555940284fe6b0b0bf527042c02d', 'research-design', '双盲', 'Double Blinded', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('46f9b4cfb72c49eeaf082f5d4452aa9f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '煎膏剂', 'soft extract', '67', '67', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('472530752d3f4b2db1e3d942565ebf20', '8a81497c53c2466f82473409dea6aa91', 'province', '广东省', 'Guangdong', '19', '19', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4830190e8ece4fcda913ef850cb6fdfb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '细粒', 'fine stuff', '122', '122', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('48511434e9774299b25b58856f1dc47e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '糖浆', 'syrup', '136', '136', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4b19e47f696f4a71b2aed23adf9f', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '病例', '', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('4d91dcfd6be944bd8bae79613a0a7f2d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '病灶内给药', 'Intralesional', '26', '26', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('50647e82c8ce4f8199598ad9ce2918a9', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'country', '中国', 'china', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('50843a86aae0473998d18d88c467383f', '8a81497c53c2466f82473409dea6aa91', 'province', '海南省', 'Hainan', '20', '20', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('53679fb12ad44d79981243692893a225', '8a81497c53c2466f82473409dea6aa91', 'province', '青海省', 'Qinghai', '26', '26', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('53d856949fc84185a2095b44374ba8b4', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '单行文本', '', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('53ff4d8e10604541a4a2c80b10407797', '8a81497c53c2466f82473409dea6aa91', 'province', '台湾省', 'Taiwan', '27', '27', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('54a26c97704245e6bfc2ff877a9e2e32', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '针对特殊人群的探索性研究', 'exploratory research on special populations', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('559f31dc443145d396d49476d8d04698', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '下拉选择', '', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('56253fd1b4d14e338c28380819e939c0', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '包膜内给药', 'Intrathecal', '37', '37', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5642f1af6ba849768f065512529fbfaa', '8a81497c53c2466f82473409dea6aa91', 'province', '上海市', 'Shanghai', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5826f7ecb27b445281daa0921ebd0a7b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释片', 'controlled-release tablet', '37', '37', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5833a82b558b4b90bd7d22faab8a', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '现场调查报告', '', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5b1c4760614743be8d7fe0b9d32ff592', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '其他', 'Other', '4', '4', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('5b6652946b74475fb1418073d9d8d278', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅰ期', 'Ⅰexpect', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5b7d64ca72794e3188386b427e3fbbeb', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '消毒液', 'disinfectant', '121', '121', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5bf9093db07c482a9823fa29a33680db', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '灌洗液', 'graft caval effluent ', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5d03588baaec4e9fabda79471350edd0', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '气管/支气管内给药', 'Endotracheal', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5d0a2ecf7dc048a6bd634ac00542fc33', '8a81497c53c2466f82473409dea6aa91', 'province', '湖北省', 'Hubei', '17', '17', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5d6658b2fa96473a9b371a79d760704c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口胶', 'chewing gum', '162', '162', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5ee7419ae01f43e39cc2b87efe80dace', '8a81497c53c2466f82473409dea6aa91', 'province', '宁夏回族自治区', 'Ningxia', '31', '31', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5fab6b8f69144143afde0b554a19da69', '8a81497c53c2466f82473409dea6aa91', 'province', '澳门特别行政区', 'Macau', '34', '34', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('5fc712ab210843b3a26531386ecb1388', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '乳膏', 'emulsifiable paste', '72', '72', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6002a57610f4420aac375385793cedf0', '8a81497c53c2466f82473409dea6aa91', 'province', '黑龙江省', 'Heilongjiang', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6033a46838b44b0497a30059512dd8f8', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肝动脉灌注', '', '73', '73', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('60eac979b16f4866acf775b0659a9b47', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '胸膜腔内注射', 'Intrapleural', '34', '34', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('61268781f6374e05a828d7596a0d4dfc', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '基本信息', 'Basic Information', '1', '1', 'BI', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('639f1dbc265043d6b028bd0bd534bd56', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '眼用凝胶', 'eye gel', '113', '113', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('64615863889c46c09733419e6516caf7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '流浸膏', 'liquid extract', '116', '116', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('64ced7bc8b4d474f953b044f6d590e53', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '微丸', 'pellet', '24', '24', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('662fbfd411d2448ea38c5de76325ca54', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '泡腾颗粒', 'effervescent granules', '49', '49', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('663a95de3aef463eb30b5d6a8618d940', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '观察性研究', 'observation study', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('669d13e45e8b4e68b66f74e1aae4ff3b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释透皮贴', 'controlled release transdermal stick', '59', '59', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('66b21e2d9d904c13b8fdc8d4df7ec688', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '其他', 'Other', '7', '7', 'OT', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('671e1971a47348d78698f10cc61959b0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '软胶囊', 'soft capsule', '114', '114', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('67c177ac4fda48ff88803e888853a0cf', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '其它', 'newDrug', '5', '2', null, '2', null, 'ybb', '2018-09-25 09:55:50', 'ybb', '2018-09-25 10:06:53');
INSERT INTO `sys_dictionary` VALUES ('6905cc9a68cd45fc8dbb22053a20875b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴眼液', 'eye drops', '155', '155', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('693a2fcf187c4b06b5e7ada04c6d79e8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '染发剂', 'hair dyes', '142', '142', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('699e5b819ea64334a21a6e51d6a82b50', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '贴剂', 'patch', '44', '44', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('69d92dd1768840b2a2d8eb0a0f231477', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '涂膜', 'coating', '89', '89', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6b232efd7ad74e8599e09a9dd35a17a7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经耳给药', 'Auricular (otic)', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6b9a3b6db1734358afb98052e32e019d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '吸入给药', 'Respiratory (inhalation)', '55', '55', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6d57ea0dbcce409aa40dc54cec5c0dd1', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '舌下给药', 'Sublingual', '60', '60', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6d7f8381c12b4f989c4180a2f7261d61', '8a81497c53c2466f82473409dea6aa91', 'province', '福建省', 'Fujian', '13', '13', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6d89644ce5454fa3a2294c94bb134583', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '21', '212', '21', '212', null, '1', null, 'ybb', '2018-09-25 11:06:56', 'ybb', '2018-09-25 11:06:59');
INSERT INTO `sys_dictionary` VALUES ('6d8bc9b51a534cb19f65e8ff790903f8', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '电话记录', '', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6e64022bd75745419647b1257179a621', '689305baa7d748d88aa73836f1c9c9b8', 'mailbox_setting', 'POP3', 'POP3', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6e7b3174a3fb4a7288d8ff8712bbb01f', '8a81497c53c2466f82473409dea6aa91', 'province', '云南省', 'Yunnan', '23', '23', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('6fd02cdf01ba4093a4833c8cf6ca524e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '凝胶', 'hydrogel ', '97', '97', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('71700d62dfe141c79bf29a89b91d10ac', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '萨', 'sa', '3', '3', null, '1', null, 'ybb', '2018-09-18 17:38:18', 'ybb', '2018-09-18 17:38:30');
INSERT INTO `sys_dictionary` VALUES ('71af632d3bea4c4481ef7f3490a4c8a0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服乳', 'oral emulsion', '51', '51', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('71bb6db2b35b486d9e5f3fb56f6628b1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '橡胶膏', 'rubber', '66', '66', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('73738572a4cf417cac436d1f10314804', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '鼻甲注射', '', '72', '72', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('745da395a8914d36870deab583e0d680', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '一般', 'General', '1', '1', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('74c68678693b4cf093e9efec4e50e594', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intrameningeal', '29', '29', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('74d0d87ec6f44f29a62d5ea82c4077c4', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '灌注', '', '68', '68', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7602e5745bef4f899ddd382a6c26cbe4', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '心包内给药', 'Intrapericardial', '32', '32', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('76b9745f78a24b4794afb1f3abf9bcb4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬注射液', 'suspension injection', '29', '29', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('76dee0424d914f8a951e604528a49da9', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '密码', '', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('77618b99db144406a221d5e3a43ed2a2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '椎管给药', '', '87', '87', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('787a643568e5402ba12d8c5146c8496b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '粉雾剂', 'powder ', '108', '108', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('796b951d82a84ead9fb131682e7f165e', '54d8c772d67c41abaf2f7c9ad7ebf5be', 'BI_country', '我', '12', '21212', '1', null, '2', null, 'ybb', '2018-09-21 14:30:55', null, null);
INSERT INTO `sys_dictionary` VALUES ('79a0b0f3c33443e096b1b4b4fbd25541', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服冻干粉', 'oral lyophilized powder', '156', '156', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('79b7d60da9dc4dd681c53d2792fbdd62', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '严重', 'Serious', '2', '2', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('7c129f232ce04df19991aa8f57f185d3', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '局部注射', '', '82', '82', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7c1c23edf70647c5904adb87d46e9aa2', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经皮给药', 'Transdermal', '62', '62', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7cfa0dc48acf4c0eb1f24ae421d03388', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '化学药', 'Chemicals', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7df6dc4249874c43afcbd5a32ad8a4e3', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '外用冻干制剂', 'freeze-dried preparation for external use ', '109', '109', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7e59d9287ff841e0bdd17d2a489245ac', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '尸检报告', '', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7ea84c41278d4704a17b19bb4a954002', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经乳房给药', 'Transmammary', '63', '63', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7f01de8c78bb439bb9de6010d081c1f7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '合剂', 'mixture', '79', '79', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('7fc0d24d3496400d958da82928670c9a', '79ee4f58da164d6795029d8012094b04', 'drug-class', '治疗用生物制品', 'Biopharmaceutical', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8018986098094351bcda93ca9d3360e4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴鼻液', 'nasal drops', '102', '102', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('80b1382a8ad34218a547252ccac58b43', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '膏剂', 'paste', '55', '55', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8157c9f2ff394fefa4d308cc29bc6639', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '造瘘管注入', '', '75', '75', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('835d6a4de53946019e37d8ab046293fb', '5515eba38a1541c59820b5440acbb5e1', 'drug_info_type', '进口', '', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8587c6657fe848209991c138522d949d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '羊膜腔内给药', 'Intra-amniotic', '12', '12', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('86606fe59fb04a6daa4048aed0820be7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '胶剂', 'colloids', '143', '143', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('866c12e14bf248f999c91359f7ef5aff', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '微粒', 'particle', '30', '30', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('86ece8f32a454906b970a5120910fd84', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '直肠给药', 'Rectal', '54', '54', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('871052fb050941c4a32198e2983ed155', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '酏', 'elixir', '144', '144', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('898f3cd86b31470eb359262eedc876f5', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '速释片', 'rapid-release tablets', '53', '53', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('89ddaf4edb6145f3a70b6428672c314c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '雾化溶液', 'nebulising solution', '63', '63', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8a03b5efb0e34d4da473982f87e260f1', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '骶管注射', '', '79', '79', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8b14fcc927f44060b3956f641ed9711b', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '2', '2', '2', '2', null, '1', null, 'ybb', '2018-09-18 17:42:28', 'ybb', '2018-09-18 17:42:30');
INSERT INTO `sys_dictionary` VALUES ('8c3f486df0394bea9f6d1f0146965171', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '中药材', 'traditional chinese medicine', '106', '106', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8cd358aaeb1e42568c2ddc1490d6f532', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '报告评价', 'Report Evaluation', '5', '5', 'RE', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8f294ac476a64df0879dca03058e106d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释干混悬剂', 'sustained release suspension', '27', '27', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8f5176e58ea94629ac10696f6ca2bf76', '8a81497c53c2466f82473409dea6aa91', 'province', '陕西省', 'Shanxi', '24', '24', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8f89ddea3e0047c5a4efb5d66d05b58b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '泵内注射', '', '83', '83', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('8fe3725d0bf34b2291d4ee528b678201', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶胶丸', 'enteric-coated soft capsules', '83', '83', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('91b84a1c73504025957b5a870be96e6f', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '关节内给药', 'Intra-articular', '14', '14', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('91ec8ff89b994b33887dfa28394abbfd', '79ee4f58da164d6795029d8012094b04', 'drug-class', '化学药', 'Chemicals', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9202b02ce85a42b685e7b16e0d99541f', '8a81497c53c2466f82473409dea6aa91', 'province', '香港特别行政区', 'HongKong', '33', '33', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9259830e73694d3ea99265536ebbbdca', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', '生物等效性试验', 'bioequivalence test', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92acd83bfea04ba899c7e296077b50bc', '8a81497c53c2466f82473409dea6aa91', 'province', '辽宁省', 'Liaoning', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92b2a2f0d22f45b183f3a96ef13e2ec4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '洗液', 'washing liquor', '32', '32', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92d48b8b2d0d4859aeabe877ccfaa566', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '消毒剂', 'sanitizer', '28', '28', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('92da23dde8464554af98fe3c3cc42356', 'b1dbb4b46c6443d68eca08727b9463ea', 'company_info_type', 'CRO公司', 'CRO', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9396d45f59784853be3465170de54375', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '口腔/咽喉给药', 'Oropharingeal', '49', '49', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('940d471630404de786182eb4ecd7af3e', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '皮内注射', 'Intradermal', '23', '23', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('942b685b53214be38b26758f6b88e1da', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '鼻饲', '', '69', '69', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('95202b30aaa648a6958c15ef4e5c8889', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '湿敷剂', 'wet packing', '45', '45', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('956e4e66a01241adae8ffcacea8c64ec', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '气雾剂', 'aerosol', '92', '92', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('95fff34d1a7c46b282a30be7194eff89', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '121', '21', '34', '5', null, '1', null, 'ybb', '2018-09-25 10:22:12', 'ybb', '2018-09-25 10:26:35');
INSERT INTO `sys_dictionary` VALUES ('96a90b9d0b87463087ea153684bccff3', 'c5f5c4ed3e0c41798f5676e1940bf175', 'report-regulations', '死亡', 'Death', '3', '3', null, '2', null, null, null, null, null);
INSERT INTO `sys_dictionary` VALUES ('971631501ba64e5fa1a37fcc608b3435', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '大蜜丸', 'big honeyed pills', '130', '130', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('978ae2c6dbae4b7181f19d6e1f779dbd', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '注射剂', 'injection', '39', '39', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9963c101efa34a4298986e968b371193', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释胶囊', 'controlled-release pellet', '11', '11', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9c50bf44f32240aaaaa7ae8ae1fd8768', '8a81497c53c2466f82473409dea6aa91', 'province', '河南省', 'Henan', '16', '16', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9d29d72b984949dd9071df8064ea6608', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '撒币', 'sb', '7', '7', null, '1', null, 'ybb', '2018-09-21 15:12:55', 'ybb', '2018-09-21 17:47:56');
INSERT INTO `sys_dictionary` VALUES ('9e1ad5988d684ec2965d3a9ce4c078f2', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '多行文本', '', '7', '7', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9f3cfbdfa24f412582f173b6567801c6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '干混悬剂', 'dry suspension', '18', '18', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9fa1825c571c43a8982dfd157bd38242', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶缓释片', 'enteric-coated and sustained-release tablets', '58', '58', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9fb756fe2bc44d6a84b90fe12caf820c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道泡腾胶囊', 'vaginal effervescent capsule', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('9fb7a4b867184b1188788c6eb1758d70', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '脊髓内给药', 'Intradiscal (intraspinal)', '24', '24', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a02c0c58b80b4144adcf2431198d90c5', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '粉针剂', 'powder-injection', '120', '120', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a0acaabc665442f09045156ff4580dd6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '眼膏', 'eye ointment ', '124', '124', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a0f5298b05b54d369ccb7b56209cd3c7', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '浓缩丸', 'condensed pill', '81', '81', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a11396ca2c1f4383821020106dd6bf58', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '冲洗液', 'Irrigation solution', '119', '119', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a18ea73a827a4c68aed5a4a9eb190534', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肌内注射', 'Intramuscular', '30', '30', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a27a4dbfcabc4e3386d7daed4198720e', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '牙科给药', 'Dental', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a374e0eb13f841ab939cdff6ce2a41e7', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药1类', 'New drug class 1', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a385eb18055f416b9499970075791545', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '涂膜剂', 'liniment', '61', '61', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a55e7a1c1ef14dd48daf024c61a8b9e4', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道药膜', 'medical film for vaginal use', '151', '151', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('a97d423cd44c413cb559af22a95a52b7', 'a641be4ed58b47ac98ad47895227f48e', 'maintain_control', '日期', '', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('aa1690787bd84ebba57ad8e0f6421abf', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服缓释混悬液', 'oral sustained-release suspension liquid', '35', '35', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ab3251c2029549108ceb4fb4b9917f28', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '鞘内给药', '', '88', '88', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ac1fbca02471466e939e95e6ed9fc403', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '真皮下给药', 'Subdermal', '59', '59', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('acac1f8cf94f4cf0a2471bfc16755626', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '子宫颈给药', 'Endocervical', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ad80d8fa8625428da4c1e32fba746cae', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '新药5类', 'New drug class 5', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('adbd88f1c80f44adb52c01b92f1556cb', '5515eba38a1541c59820b5440acbb5e1', 'drug_info_type', '国产', '', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('aeb688ca30614fb8b89dde70d42f4074', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intracavernous', '17', '17', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b11969dbe7594455ad4bf42030586ac0', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肾内给药', 'Intracisternal', '20', '20', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b1457da8408f4eaf95b438bc0299a05e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬颗粒', 'suspended granules', '46', '46', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b1c9313c5141463aa89ddd91b870681e', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Endosinusial', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b1eeb16359e14a36b7f14f789628d619', '8a81497c53c2466f82473409dea6aa91', 'province', '河北省', 'Hebei', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b2c09bc2239e4312913dfb591af6cef0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '锭剂', 'lozenge', '95', '95', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b308bb90c17441b594e96b720ad7b72d', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '心内注射', 'Intracardiac', '16', '16', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b3c48d7d7598463a98349d89cd713747', '8a81497c53c2466f82473409dea6aa91', 'province', '重庆市', 'Chongqing', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b80fb8c0e8664523b9d2619600c6c014', '79ee4f58da164d6795029d8012094b04', 'drug-class', '中药', 'Traditional Chinese Medicine', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b8451a77d47641c18a34bdd82d20913e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '干糖浆', 'dry syrup', '125', '125', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b92c935621a0416591d1b672b8f16482', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '洗发剂', 'shampoo', '38', '38', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('b95c2713a653464093c294388bc53a9c', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '口服', 'Oral', '48', '48', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ba7447b712cc4874ab5f958942cbd472', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '', 'Intra corpus cavernosum', '11', '11', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bb43f25f26484b1795c88b72a2fc007d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '溶液', 'solution', '87', '87', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bb502b227f854e9093f06410a335ad5c', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '胜多负少', 'gsf', '6', '6', null, '1', null, 'ybb', '2018-09-25 10:00:05', 'ybb', '2018-09-25 10:05:35');
INSERT INTO `sys_dictionary` VALUES ('bc7b8eda1c4a4937a27e8b34fc864b4f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶颗粒', 'enteric coated granules ', '60', '60', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bd6702e2c36c48738b23c2f6a7e2d872', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '蛛网膜下腔给药', 'Intracerebral', '18', '18', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('be9cab5c08714a39af90fa1b6d9d60d9', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '硬膏', 'plaster', '47', '47', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bec377a0791a4a10986d7df79ca90f45', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释混悬液', 'sustained release suspension', '31', '31', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bf4897cb523a4b349a1645e40359d01c', '8a81497c53c2466f82473409dea6aa91', 'province', '贵州省', 'Guizhou', '22', '22', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bf768add9fe84d858fa159901cc4a740', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '注射液', 'Injection', '20', '20', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('bfa8cc629f5b419c9de1bf596f511606', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '冲洗', '', '84', '84', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c02d4a3136b3491da0cc82b276defd8d', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '爽肤水', 'ssfs', '8', '5', null, '1', null, 'ybb', '2018-09-21 14:46:23', 'ybb', '2018-09-21 17:47:58');
INSERT INTO `sys_dictionary` VALUES ('c0447c66b0d14be2b1acea2c649cc77f', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '预防用生物制品', 'Preventive Biological Products ', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c10cddcab2ce4aa0bdf387a944880b43', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '外用片', 'tablet', '85', '85', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c2f6385bff604d9c974faa4009cb0d7b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '硬膜外给药', 'Epidural', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c3e8f3d033054b83846207921953014b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '栓剂', 'suppository', '117', '117', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c43cf03b139848ecaf40662e4688e10b', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', 'Ib期', 'phase Ib clinical trials', '4', '4', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c54cf46e501443848670e8848972c47d', '366aa471ea73449ea1217f0e26739b87', 'product-categories', '临床前药物', 'Preclinical drug', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c5bedc3a300e48e3a49f0a4a01e12b5e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '灌肠剂', 'enema', '128', '128', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c633ee5b31b24198bfa817474514cbe8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '冻干制剂', 'lyophilized formulation', '36', '36', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c65e49551f294122941c01d13199b2a6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '含片', 'lozenge', '135', '135', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c6f7366f531349c193cee74736c7e635', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '巴布膏', 'cataplasm', '134', '134', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c758be0bb26945eaa648905d2b7308c8', '8a81497c53c2466f82473409dea6aa91', 'province', '江西省', 'Jiangxi', '14', '14', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c82d40debec04e61b10fbd71a48ecd0b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '眼球内给药', 'Retrobulbar', '56', '56', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c89d54e7471944e9b6e3f93435db8e98', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '阴道泡腾片', 'vaginal effervescent tablets', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c94e0694566d4263b2277ec8b4349dbe', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '浸膏', 'extract', '82', '82', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('c9c8f3fe570b4cfb936284b059004243', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶胶囊', 'capsulae enterosolubilis', '111', '111', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ca1a6b17ed984c9eb58e62467b2c9ae4', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '前房内注射', '', '85', '85', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cad6ae30dec543049d1d3c589bdcf52b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口服溶液', 'oral solution', '158', '158', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cbae31f48d564aed9841911c85c2607d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '咀嚼胶', 'chewing-gum', '21', '21', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cbc24a3bd0d24cedbce92e0a7165721b', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '中药', 'Traditional Chinese Medicine', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cc9a4bdf0a21421ab1ff9c03434bcf63', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', 'dfg', '电饭锅', '8456', '4', null, '1', null, 'ybb', '2018-09-21 16:55:18', 'ybb', '2018-09-21 17:47:59');
INSERT INTO `sys_dictionary` VALUES ('ccc137d698fd4df4ac390d75311feb7b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '肝内给药', 'Intrahepatic', '25', '25', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cf642d6f2b5643f396a91592cf50d2b0', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬剂', 'suspension', '148', '148', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('cfd5e2a61e434c168aa8ecf3f3d017df', '8a81497c53c2466f82473409dea6aa91', 'province', '吉林省', 'Jilin', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d0180498425a42ae934f56d5b0dcadd6', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '胸腔内给药', 'Intrathoracic', '38', '38', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d06db8a553c342e6a3bee97022f64dc7', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '骨髓内给药', 'Intramedullar (bone marrow)', '28', '28', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d1cf8fb10c644640b0b992aa4609ba98', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '咀嚼片', 'chewable tablet', '25', '25', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d2950a6a30cc4a7eae063349b12c8b67', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '静脉滴注', 'Intravenous drip', '41', '41', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d3b46234abbc46d789fbf1162fc02d76', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口腔贴片', 'buccal tablets', '137', '137', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d40f17b224854d70aa8dd2fc3054c602', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '封闭', 'Occlusive dressing technique', '46', '46', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d43e99309d0242f1ab4356036abb8d04', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', 'Ⅱ期', 'Ⅱexpect', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d459b60fb629472f958ed72b5e8ecf19', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '臂丛麻醉', '', '74', '74', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d4c4727fe7224f6a843796870e06b4ed', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '鼻用喷雾剂', 'nasal spray', '118', '118', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d554b66365ba4d1c92218f8fafa326e3', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '吸入溶液', 'Inhalation solution', '13', '13', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d610d741bfa44b57a5dad72b843f8e44', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶缓释胶囊', 'enteric sustained-release capsules', '157', '157', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d6135ceafb5b4cbd913760113f2b593c', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '动脉给药', 'Intra-arterial', '13', '13', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d79d8bb71eed4177927e7962c49124c8', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '颗粒剂', 'granules', '69', '69', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d8d0229375684677b14b57f4eaf654aa', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '乳剂', 'emulsion', '22', '22', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('d944acf949964019a801f270368892a0', '79ee4f58da164d6795029d8012094b04', 'drug-class', '其他', 'Other', '5', '5', '', '1', null, '', null, 'ybb', '2018-09-21 17:47:57');
INSERT INTO `sys_dictionary` VALUES ('daa84d64653c49559a29a9d316b514a9', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '腹膜腔内注射', 'Intraperitoneal', '33', '33', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('dc2c85089135419d9b8a309aacf08655', 'eab1a4857e744b0ea43c23c36c09d8bb', 'maintain_page', '事件描述', 'Event Description', '6', '6', 'ED', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('dd8c4400b6314d58acefbb7ba6a66c31', 'cfca673980cd4b20a5a131eae56cb12a', 'research-subdivision', '0期', 'phase 0 clinical trials', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('dda97b41daaa4c5db8d412b2fb5d23b9', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释贴', 'controlled-release patches', '86', '86', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ddae4b81e5cf4496922334ddd1fdb19f', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '未知', 'Unknown', '65', '65', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e2b841adc83146b295c55a9b581682da', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '气管/支气管内给药', 'Intratracheal', '39', '39', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e3d21831fca7474093a0c2868abcaca1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '糊剂', 'paste', '163', '163', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e3e036fe91094c4da153e667f756d7ee', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴耳剂', 'ear drops', '161', '161', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e3ec55e91e3c4fe79f8d5730a6dfe4fc', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '液体', 'liquid', '33', '33', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e407bd59f13f4155b0ccc852964a7ebd', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '文献', '', '8', '8', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e4b09ffaaac544919426d1af6d48dabe', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '滴丸', 'dropping pill', '91', '91', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e5fb5c0b450a4078b0d7c64298d04f51', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '电风扇', '诉讼费', '6', '4', null, '1', null, 'ybb', '2018-09-25 10:07:14', 'ybb', '2018-09-25 10:26:39');
INSERT INTO `sys_dictionary` VALUES ('e66430678aeb4f87846e934d9c279f34', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '其他', 'Other', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e68674e47fea4239adaf4b361070f969', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释颗粒', 'sustained-release granules', '107', '107', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e7cf3f3f70a1405680f50c9889e33a1b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释植入剂', 'sustained-release implant', '17', '17', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e84889b10bc7464986d38b8d59c1e2e7', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '爽肤水', '上市', '6', '4', null, '1', null, 'ybb', '2018-09-18 17:03:30', 'ybb', '2018-09-18 17:03:33');
INSERT INTO `sys_dictionary` VALUES ('e8c30156117341fc8bc9ef9c7a28c8ec', '1b7d555940284fe6b0b0bf527042c02d', 'research-design', '单盲', 'Single Blinded', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('e9ecde8f20dc4d01aa11d8e911dccdde', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '血液透析', 'Hemodialysis', '10', '10', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eac0cadf287f42a4b711409bb9101fb6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '口腔崩解片', 'orally disintegrating tablet', '147', '147', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eac5ffcc123f40ccacd9f2547d53b0d1', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶微丸', 'enteric coated micropil', '131', '131', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb040276b32a4c6d8e3392583d79f5ed', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '透皮贴剂', 'transdermal patch', '149', '149', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb0800c964694a3aa1cedf781d68ba13', '50b5143e40c34e8c842c89ca5e35c9a6', 'registration-classification', '治疗用生物制品', 'Therapeutic BIologics', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb6d0b4c56694a07969efe41d04e9445', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '丸剂', 'pilula', '42', '42', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('eb928e08e71043d4a69014e4bac1f32e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '霜剂', 'cream', '12', '12', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ec179db66dc04db6bab0d4015d97744f', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '控释口颊片', 'modified-release bucral tablets', '65', '65', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ecaa59fbd5e34da4afd4e0cb9b18e4dc', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '经眼给药', 'Intraocular', '31', '31', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ede59dc7eff64265a1b0bda00f74f528', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', '临床验证', 'clinical verifications', '5', '5', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ee030a7201a44710be6c3bf156510636', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '静脉注射', 'Intravenous bolus', '40', '40', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ef09fc0345774b909096ad40bb169321', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '出院小结', '', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ef94f30566bc4b86bb88f7f5e3d86d51', '79ee4f58da164d6795029d8012094b04', 'OT_drug-class', '1发送', '1上市', '3', '3', null, '1', null, 'ybb', '2018-09-17 14:49:05', 'ybb', '2018-09-18 16:45:09');
INSERT INTO `sys_dictionary` VALUES ('f1167f7ed730437b9d5befaffbd2f8e0', '8a81497c53c2466f82473409dea6aa91', 'province', '西藏自治区', 'Tibet', '30', '30', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f1e5835ef75343b1a9db99a72b106ee3', '1fd6e3b0ef104b4596b26fb93c8a9a3d', 'clinical-research', '上市后研究', 'post marketing study', '6', '6', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f42afc87b43c47d59f2445700a22862a', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '子宫内给药', 'Intra-uterine', '15', '15', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f4c9bd70c58d4f6db50cdd2aa1fc4975', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释胶囊', 'sustained release capsules', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f51d0c42616c41279c16d931d9bb1b36', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '汤剂', 'decoction', '40', '40', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f536c998792c4d9390deabb48a5c9361', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '注射用乳', 'Injection milk', '56', '56', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f57d686278f94cc08e6b87374d5a310c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '包衣片', 'coating tablet', '164', '164', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f59b6eccb0fc4acdbf171e1add32172b', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '缓释颗粒', 'sustained-release granules', '127', '127', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6033323ed29492496580291294678d6', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '酒剂', 'medicinal liquor', '76', '76', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6126e147e554760bd06cf208d6825ea', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '结膜下给药', 'Sunconjunctival', '57', '57', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6cd29b11b014f21ba96b214d225cf0a', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '试剂', 'reagent', '140', '140', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f6f66cc1829745c68611ccd8741b3d66', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '糖丸', 'sugar pills', '9', '9', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f70ca4ad6c574f9fa28a6696abe0c11c', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '散剂', 'powder', '52', '52', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f7fdebd6ca8347ac83ae88c97480ef94', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '原始资料', '', '1', '1', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f8aa2346586d4cf09b85212ea155acd8', '8a81497c53c2466f82473409dea6aa91', 'province', '内蒙古自治区', 'Neimenggu', '28', '28', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f8c79a19364a480cbdbd549efb1c9a71', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '鼻用吸入剂', 'nasal inhalation', '64', '64', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('f92ed90836f9434c9cb7525b656b1f9e', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '双层片', 'double-layer tablet', '77', '77', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fadf3b085bd9418f92ab0af3ad6025dc', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '局部给药', 'Topical', '61', '61', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fbe92a7408cf44f8b84dd761ee326deb', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '注射', '', '81', '81', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fc476ea8d27a47a6b4ba9c735483610d', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '肠溶微丸胶囊', 'enteric coated micropill capsule', '103', '103', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fd3555cafc90472f990ed52a59e55f7c', '689305baa7d748d88aa73836f1c9c9b8', 'mailbox_setting', 'IMAP', 'IMAP', '2', '2', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fd74f7451fe9492ab2edf2213b80570d', '8a81497c53c2466f82473409dea6aa91', 'province', '湖南省', 'Hunan', '18', '18', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fdcd543a81634b5da829ec16ba90b0b9', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '周围神经给药', 'Perineural', '53', '53', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fe2288dea5314fcc9594b79d6ac21642', 'a0ccd90132994b48948e7334a7959a45', 'drug-formulation', '混悬液', 'suspension', '159', '159', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('fe2653055db3460cb4b986ea21a62935', 'ffdebcb9ecb445018026acbce70a4a45', 'attach-class', '说明书', 'instruction', '3', '3', '', '2', null, '', null, '', null);
INSERT INTO `sys_dictionary` VALUES ('ff8ecff797a3476193ef12e8da40b43b', 'd4dbeda432e742ea90ebd5f40b467c27', 'drug-way', '其他', 'Other', '50', '50', '', '2', null, '', null, '', null);

-- ----------------------------
-- Table structure for sys_report
-- ----------------------------
DROP TABLE IF EXISTS `sys_report`;
CREATE TABLE `sys_report` (
  `id` varchar(32) NOT NULL COMMENT '报告ID',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司ID',
  `project_id` varchar(32) DEFAULT NULL COMMENT '项目ID',
  `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',
  `event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',
  `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',
  `report_type` int(11) DEFAULT NULL COMMENT '企业报告类型',
  `current_process_node` varchar(32) DEFAULT NULL COMMENT '报告当前处理节点id',
  `current_process_node_name` varchar(32) DEFAULT NULL COMMENT '报告当前处理节点名称',
  `previous_process_node` varchar(32) DEFAULT NULL COMMENT '报告上一处理节点id',
  `previous_process_node_name` varchar(32) DEFAULT NULL COMMENT '报告上一处理节点名称',
  `current_node_user_id` varchar(32) DEFAULT NULL COMMENT '节点处理人id',
  `current_node_user_name` varchar(32) DEFAULT NULL COMMENT '节点处理人名称',
  `previous_node_user_id` varchar(32) DEFAULT NULL COMMENT '节点上一处理人ID',
  `previous_node_user_name` varchar(32) DEFAULT NULL COMMENT '节点上一处理人名称',
  `report_countdown` datetime DEFAULT NULL COMMENT '报告截止时间',
  `report_priority` int(11) DEFAULT NULL COMMENT '报告优先级',
  `report_susar` int(11) DEFAULT NULL COMMENT 'SUSAR报告(1是，2否)',
  `report_repeat` int(11) DEFAULT NULL COMMENT '重复报告(1是，2否)',
  `report_invalid` int(11) DEFAULT NULL COMMENT '无效报告(1是，2否)',
  `create_version_num` int(11) DEFAULT NULL COMMENT '新建版本次数',
  `latest_version` int(11) DEFAULT NULL COMMENT '最新版本(0:不是，1:是)',
  `previous_report_version_id` varchar(32) DEFAULT NULL COMMENT '上一版本报告ID',
  `create_version_reason` varchar(1024) DEFAULT NULL COMMENT '创建版本原因',
  `pv_create_time` datetime DEFAULT NULL COMMENT 'pv获知时间',
  `first_create_time` datetime DEFAULT NULL COMMENT '首次获知时间',
  `drug_name` varchar(3120) DEFAULT NULL COMMENT '药物名称(商品名;通用名称)',
  `primary_adverse_event` varchar(128) DEFAULT NULL COMMENT '首要不良事件',
  `patient_name` varchar(32) DEFAULT NULL COMMENT '患者姓名',
  `principal_rapporteur` varchar(32) DEFAULT NULL COMMENT '首要报告者姓名',
  `causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',
  `national_system_code` varchar(32) DEFAULT NULL COMMENT '国家系统编码',
  `manufacturer` varchar(32) DEFAULT NULL COMMENT '生产厂家',
  `pt_code` int(11) DEFAULT NULL COMMENT 'ptcode',
  `has_intellectual` int(11) DEFAULT NULL COMMENT '已知性',
  `severity` int(11) DEFAULT NULL COMMENT '严重性',
  `rapporteur_evaluation` int(11) DEFAULT NULL COMMENT '报告者评价',
  `rapporteur_unit_evaluation` int(11) DEFAULT NULL COMMENT '报告者单位评价',
  `correction_causation` int(11) DEFAULT NULL COMMENT '因果关系修正',
  `delete_status` int(11) DEFAULT NULL COMMENT '删除状态',
  `REVISION` int(11) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个例报告';

-- ----------------------------
-- Records of sys_report
-- ----------------------------
INSERT INTO `sys_report` VALUES ('1c3345e472b646449dfe446cb6aeab2b', '62', '13', 'FQ2018ASDF000053', '中国', '1', '3', 'e6b832b8143a4c9eb6542754f05a6f14', '数据录入', null, null, null, null, null, null, null, '2', '2', '1', '1', null, '1', null, null, '2018-10-03 00:00:00', '2014-05-04 00:00:00', '抗生素;注射用水溶性维生素', null, '李F', '', null, 'VT230602102755323546788', '成都天台山制药有限公司', null, '2', '1', null, null, null, '1', null, 'jerry', '2018-11-08 16:46:48', null, null);
INSERT INTO `sys_report` VALUES ('1cd645bec004454cb26aec9f4d9e24f3', '62', '13', '2018ASDF000055', '中国', '0', '4', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '1', '1', null, '1', null, null, '2018-09-02 00:00:00', '2018-11-05 00:00:00', ';1', null, '张三', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-09 09:12:51', null, null);
INSERT INTO `sys_report` VALUES ('20e1b4d6eaba4396ad98a0f463fcbee2', '62', '13', 'FQ2018ASDF000052', '中国', '1', '3', '14fdc5afb4a14dba8a262f267d22edff', '原始资料数据导入', null, null, null, null, null, null, '2018-11-14 16:43:50', '2', '2', '1', '1', null, '1', null, null, '2018-09-12 00:00:00', '2014-05-04 00:00:00', '抗生素;注射用水溶性维生素', null, '李G', '', null, 'VT230602102755323546789', '成都天台山制药有限公司', null, '2', '2', null, null, null, '1', null, 'jerry', '2018-11-08 16:43:50', null, null);
INSERT INTO `sys_report` VALUES ('2c8f667b92974ad48b608dd5137a0f79', '62', '13', '2018ASDF000045', '中国', '0', '4', null, '数据录入', null, null, null, null, null, null, null, '1', null, '1', '1', null, '1', null, null, '2018-08-14 00:00:00', '2018-11-05 00:00:00', ';1', null, '212', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 16:46:40', null, null);
INSERT INTO `sys_report` VALUES ('3dd2e560c4ba4c17800edbb708b4d344', '62', '13', '2018ASDF000056', '中国', '1', '5', null, '数据录入', null, null, null, null, null, null, null, '1', null, '1', '2', null, '1', null, null, '2018-07-18 00:00:00', '2018-11-06 00:00:00', ';1', null, '张三', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-09 09:13:57', null, null);
INSERT INTO `sys_report` VALUES ('3e9f40922dc64ae19edaad0d441384ef', '62', '13', 'FQ2018ASDF000051', '中国', '1', '3', 'e6b832b8143a4c9eb6542754f05a6f14', '数据录入', null, null, null, null, null, null, null, '2', '2', '2', '2', null, '1', null, null, '2018-08-22 00:00:00', '2014-05-04 00:00:00', '抗生素;注射用水溶性维生素', null, '李F', '', null, 'VT230602102755323546788', '成都天台山制药有限公司', null, '2', '1', null, null, null, '1', null, 'jerry', '2018-11-08 16:43:50', null, null);
INSERT INTO `sys_report` VALUES ('59f9aaf4958a4249b6a8ea71e3ab6976', '62', '13', '2018ASDF000049', '中国', '1', '1', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', '1', '2', '2', null, '1', null, null, '2018-06-06 10:41:17', '2018-11-08 10:41:15', '1;1', null, '张三', null, null, null, '万千瓦', null, null, null, null, null, null, '1', '1', '33', '2018-11-08 10:42:19', null, null);
INSERT INTO `sys_report` VALUES ('6315dbade5054439aad0b643130d2ac0', '62', '13', '2018ASDF000043', '中国', '1', '6', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '1', '2', null, '1', null, null, '2018-11-14 00:00:00', '2018-11-07 15:41:34', ';1', null, '21', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:42:05', '33', '2018-11-07 15:46:59');
INSERT INTO `sys_report` VALUES ('6430f06ad9be47339007e72125dc557f', '62', '13', '2018ASDF000042', '中国', '1', '6', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '2', '1', null, '1', null, null, '2018-11-08 00:00:00', '2018-11-07 15:31:52', ';1', null, '张三', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:32:36', null, null);
INSERT INTO `sys_report` VALUES ('6c2db958cfb04543b2e49a85c4628e1d', '62', '13', '2018ASDF000041', '中国', '1', '7', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '2', '2', null, '1', null, null, '2018-11-16 00:00:00', '2018-11-15 00:00:00', ';1', null, '张三', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 15:18:14', null, null);
INSERT INTO `sys_report` VALUES ('8aa8cfcfbe384b86862a98c35dcd9107', '62', '13', 'FQ2018ASDF000054', '中国', '1', '3', '14fdc5afb4a14dba8a262f267d22edff', '原始资料数据导入', null, null, null, null, null, null, '2018-11-14 16:46:48', '2', '2', '1', '2', null, '1', null, null, '2018-11-21 00:00:00', '2014-05-04 00:00:00', '抗生素;注射用水溶性维生素', null, '李G', '', null, 'VT230602102755323546789', '成都天台山制药有限公司', null, '2', '2', null, null, null, '1', null, 'jerry', '2018-11-08 16:46:48', null, null);
INSERT INTO `sys_report` VALUES ('96ccddfe5fd641e6bf6989271c941e3e', '62', '13', '2018ASDF000044', '中国', '0', '7', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '2', '1', null, '1', null, null, '2018-06-13 00:00:00', '2018-11-07 16:11:29', ';1', null, '21', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 16:19:25', null, null);
INSERT INTO `sys_report` VALUES ('9b49916d29014f06af228469cef450cf', '62', '13', '2018ASDF000050', '中国', '0', '8', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '1', '2', null, '1', null, null, '2018-11-08 15:38:34', '2018-11-08 15:38:32', ';1', null, '21', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-08 15:39:07', null, null);
INSERT INTO `sys_report` VALUES ('b42588aeddbf4be5ac6d5a66fdd079a7', '62', '13', '2018ASDF000048', '中国', '0', '2', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '1', '2', null, '1', null, null, '2018-04-04 00:00:00', '2018-11-09 00:00:00', ';1', null, '张三', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-08 10:22:06', null, null);
INSERT INTO `sys_report` VALUES ('f0434d95b512457abb15b37014e65cc9', '62', '13', '2018ASDF000047', '中国', '0', '5', null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '2', '2', null, '1', null, null, '2018-04-18 00:00:00', '2018-11-09 00:00:00', ';1', null, '张三', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 18:47:04', null, null);
INSERT INTO `sys_report` VALUES ('ff9d6683bc814dc18235cb55b2689724', '62', '13', '2018ASDF000046', '中国', '0', null, null, '原始资料数据导入', null, null, null, null, null, null, null, '1', null, '1', '1', null, '1', null, null, '2018-05-08 18:35:42', '2018-11-07 18:34:44', ';1', null, '212', null, null, null, '', null, null, null, null, null, null, '1', '1', '33', '2018-11-07 18:36:10', null, null);

-- ----------------------------
-- Procedure structure for pv_1_adverse_event_report
-- ----------------------------
DROP PROCEDURE IF EXISTS `pv_1_adverse_event_report`;
DELIMITER ;;
CREATE DEFINER=`zhouwen`@`10.%` PROCEDURE `pv_1_adverse_event_report`(p_tablename varchar(30))
BEGIN
 declare v_sessionruntime varchar(20);
 declare v_records int;
  set v_sessionruntime = date_format(now(),'%Y-%m-%d %H:%i:%s');
  -- v_records 将记录不良事件报告病例数,分别插入两张快照表中
  SELECT count( DISTINCT s.id) into v_records
							FROM
								sys_report AS s
							LEFT JOIN drug_info AS d ON d.report_id = s.id
							LEFT JOIN psur AS p ON d.active_ingredients = p.ACTIVE_INGREDIENTS -- inner 
							WHERE
								s.delete_status = 1
							AND d.DELETE_STATUS = 1
							AND p.DELETE_STATUS = 1
							AND (
								DATE_FORMAT(
									s.CREATED_TIME,
									'%Y-%m-%d %H:%i:%S'
								) >= DATE_FORMAT(
									p.START_DATE,
									'%Y-%m-%d %H:%i:%S'
								)
								AND DATE_FORMAT(
									s.CREATED_TIME,
									'%Y-%m-%d %H:%i:%S'
								) <= DATE_FORMAT(
									p.EXPIRY_DATE,
									'%Y-%m-%d %H:%i:%S'
								)
							)
							AND p.ACTIVE_INGREDIENTS IS NOT NULL;

-- 如果参数是pv_1_adverse_event_detail,则把"个例药品不良反应病例列表"填满,并填充当天的快照
 if (lower(p_tablename) = 'pv_1_adverse_event_detail') then 	
            truncate table pv_1_adverse_event_detail;          

		/*  讨论后有调整字段,故此注释旧有版本	
			INSERT INTO pv_1_adverse_event_detail (
						id,
						report_no,
						event_from_country,
						first_follow_up,
						drug_production_batch,
						drug_dosage,
						adverse_event_name,
						adverse_event_pt_name,
						event_start_date,
						events_turn,
						patient_age,
						patient_sex,
						medication_start_time,
						medication_end_time,
						report_sources,
						causal_relationship,
            adverse_soc_name ,
            plan_number,
            company_id,
						remark,
						sessionruntime
					) SELECT
						sr.id,
						sr.report_no,
						sr.event_from_country,
						sr.first_follow_up,
						d.drug_production_batch,
						d.drug_dosage,
						ae.adverse_event_name,
						ae.adverse_event_pt_name,
						ae.event_start_date,
						ae.events_turn,
						pb.patient_age,
						(
							CASE
							WHEN pb.patient_sex = 1 THEN
								'男'
							WHEN pb.patient_sex = 0 THEN
								'女'
							END
						) AS patient_sex,
						ppmh.medication_start_time,
						ppmh.medication_end_time,
						bra.report_sources,
						ra.causal_relationship,
            md.adverse_soc_name ,
            pp.PLAN_NUMBER,
            sr.company_id,-- 测试反馈点3)：需要添加sys_report.company_id
						NULL AS remark,
						v_sessionruntime
					FROM
						sys_report AS sr
					LEFT JOIN drug AS d ON sr.drug_name = d.drug_generic_zh_name
          left JOIN psur AS pp ON d.id = pp.DRUG_ID -- 测试反馈点1)：需要添加psur.plan_number
					LEFT JOIN adverse_events AS ae ON ae.report_id = sr.id
					LEFT JOIN patientinfo_basic AS pb ON sr.id = pb.report_id
					LEFT JOIN patientinfo_previous_medical_history AS ppmh ON sr.id = ppmh.report_id
					AND ppmh.drug_indications_pt_name = ae.adverse_event_pt_name
					LEFT JOIN basicinfo_report_attributes AS bra ON sr.id = bra.report_id
					LEFT JOIN report_assessment AS ra ON sr.id = ra.report_id
          LEFT JOIN medical_dictionary AS md ON ae.adverse_event_dict_id = md.id -- 测试反馈点2)：需要添加medical_dictionary.adverse_soc_name
					WHERE
						sr.id IN (
							SELECT DISTINCT
								s.id
							FROM
								sys_report AS s
							LEFT JOIN drug_info AS d ON d.report_id = s.id
							LEFT JOIN psur AS p ON d.active_ingredients = p.ACTIVE_INGREDIENTS -- inner 
							WHERE
								s.delete_status = 1
							AND d.DELETE_STATUS = 1
							AND p.DELETE_STATUS = 1
							AND (
								DATE_FORMAT(
									s.CREATED_TIME,
									'%Y-%m-%d %H:%i:%S'
								) >= DATE_FORMAT(
									p.START_DATE,
									'%Y-%m-%d %H:%i:%S'
								)
								AND DATE_FORMAT(
									s.CREATED_TIME,
									'%Y-%m-%d %H:%i:%S'
								) <= DATE_FORMAT(
									p.EXPIRY_DATE,
									'%Y-%m-%d %H:%i:%S'
								)
							)
							AND p.ACTIVE_INGREDIENTS IS NOT NULL
						);   */


			INSERT INTO pv_1_adverse_event_detail (
				id,
				report_no,
				event_from_country,
				first_follow_up,
				drug_production_batch,
				drug_dosage,
				adverse_event_name,
				adverse_event_pt_name,
				event_start_date,
				events_turn,
				patient_age,
				patient_sex,
				medication_start_time,
				medication_end_time,
				report_sources,
				causal_relationship,
				adverse_soc_name,
				plan_number,
				company_id,
				remark,
				report_type,
				first_create_time,
				drug_name,
				drug_dose,
				drug_dose_unit,
				time_interval,
				time_interval_unit,
				daily_number,
				drug_use_duration,
				drug_use_duration_unit,
				known_new,
				known_serious,
				age_group,
				report_ending,
				drug_generic_zh_name,
				drug_generic_en_name,
				drug_product_zh_name,
				drug_product_en_name,
				report_description,
				company_description
			) SELECT
				sr.id AS '报告ID',
				sr.report_no AS `企业病例号`,
				sr.event_from_country AS `病例发生地`,
				sr.first_follow_up AS `初始/跟踪报告`,
				d.drug_production_batch AS `药品批号`,
				d.drug_dosage AS `用法用量`,
				ae.adverse_event_name AS `不良事件名称`,
				ae.adverse_event_pt_name AS `用药原因`,
				ae.event_start_date AS `不良反应发生时间`,
				ae.events_turn AS `不良反应结果`,
				pb.patient_age AS `年龄`,
				(
					CASE
					WHEN pb.patient_sex = 1 THEN
						'男'
					WHEN pb.patient_sex = 0 THEN
						'女'
					END
				) AS `性别`,
				ppmh.medication_start_time AS `用药开始日期`,
				ppmh.medication_end_time AS `用药结束日期`,
				bra.report_sources AS `企业信息来源`,
				ra.causal_relationship AS `评价意见`,
				md.adverse_soc_name AS 'SOC名称',
				pp.plan_number AS '计划编号',
				sr.company_id AS '公司ID',
				'' AS 备注,
				sr.report_type AS `企业报告类型`,
				sr.first_create_time AS `首次获知时间`,
				sr.drug_name AS `药物名称`,
				dur.drug_dose AS `单次剂量`,
				dur.drug_dose_unit AS `计量单位`,
				dur.time_interval AS `间隔时间`,
				dur.time_interval_unit AS `间隔时间单位`,
				dur.daily_number AS `间隔时间次数`,
				dur.drug_use_duration AS `给药持续时间`,
				dur.drug_use_duration_unit AS `给药持续时间单位`,
				ae.known_new AS `是否已知`,
				ae.known_serious AS `是否严重`,
				pb.age_group AS `年龄层`,
				rc.report_ending AS `报告总结`,
				GROUP_CONCAT(
					DISTINCT IFNULL(
						d.drug_generic_zh_name,
						',*'
					)
				) AS `通用中文名`,
				GROUP_CONCAT(
					DISTINCT IFNULL(
						d.drug_generic_en_name,
						',*'
					)
				) AS `通用英文名`,
				GROUP_CONCAT(
					DISTINCT IFNULL(
						d.drug_product_zh_name,
						',*'
					)
				) AS `商品中文名`,
				GROUP_CONCAT(
					DISTINCT IFNULL(
						d.drug_product_en_name,
						',*'
					)
				) AS `商品英文名`,
				CONCAT(
					IFNULL(sr.company_id, '*'),
					'公司内部编号：',
					IFNULL(sr.report_no, '*'),
					'这是一份来自于',
					IFNULL(sr.report_type, '*'),
					'的报告，收到报告日期为',
					IFNULL(sr.first_create_time, '*'),
					'。 该',
					IFNULL(pb.patient_sex, '*'),
					'性患者',
					IFNULL(pb.patient_age, '*'),
					',岁，于',
					IFNULL(
						ppmh.medication_start_time,
						'*'
					),
					'开始进行药物治疗，药物名称：',
					IFNULL(sr.drug_name, '*'),
					'，单次剂量',
					IFNULL(dur.drug_dose, '*'),
					IFNULL(dur.drug_dose_unit, '*'),
					'，频率为',
					IFNULL(dur.time_interval, '*'),
					IFNULL(dur.time_interval_unit, '*'),
					IFNULL(dur.daily_number, '*'),
					'次，给药持续时间为',
					IFNULL(dur.drug_use_duration, '*'),
					IFNULL(
						dur.drug_use_duration_unit,
						'*'
					)
				) AS `报告描述`,
				CONCAT(
					IFNULL(pb.age_group, '*'),
					IFNULL(pb.patient_sex, '*'),
					'性，使用',
					IFNULL(sr.drug_name, '*'),
					'后出现',
					IFNULL(ae.adverse_event_name, '*'),
					'，为',
					CASE
				WHEN ae.known_new = 1
				AND ae.known_serious = 1 THEN
					'已知严重'
				WHEN ae.known_new = 1
				AND ae.known_serious = 0 THEN
					'已知一般'
				WHEN ae.known_new = 0
				AND ae.known_serious = 1 THEN
					'未知严重'
				WHEN ae.known_new = 0
				AND ae.known_serious = 0 THEN
					'未知一般'
				ELSE
					'*'
				END,
				'的反应，考虑为',
				IFNULL(rc.report_ending, '*')
				) AS `公司评述`
			FROM
				sys_report AS sr
			LEFT JOIN drug_info AS di ON sr.id = di.report_id
			LEFT JOIN drug AS d ON d.drug_generic_zh_name = di.generic_name
			LEFT JOIN psur AS pp ON d.id = pp.DRUG_ID -- 测试反馈点1)：需要添加psur.plan_number
			LEFT JOIN drug_use_result AS dur ON dur.drug_id = d.id
			LEFT JOIN adverse_events AS ae ON ae.report_id = sr.id
			LEFT JOIN report_concludes AS rc ON rc.report_id = sr.id
			LEFT JOIN patientinfo_basic AS pb ON sr.id = pb.report_id
			LEFT JOIN patientinfo_previous_medical_history AS ppmh ON sr.id = ppmh.report_id
			AND ppmh.drug_indications_pt_name = ae.adverse_event_pt_name
			LEFT JOIN basicinfo_report_attributes AS bra ON sr.id = bra.report_id
			LEFT JOIN report_assessment AS ra ON sr.id = ra.report_id
			LEFT JOIN medical_dictionary AS md ON ae.adverse_event_dict_id = md.id -- 测试反馈点2)：需要添加medical_dictionary.adverse_soc_name
			WHERE
				sr.id IN (
					SELECT DISTINCT
						s.id
					FROM
						sys_report AS s
					LEFT JOIN drug_info AS d ON d.report_id = s.id
					LEFT JOIN psur AS p ON d.active_ingredients = p.ACTIVE_INGREDIENTS -- inner 
					WHERE
						s.delete_status = 1
					AND d.DELETE_STATUS = 1
					AND p.DELETE_STATUS = 1
					AND (
						DATE_FORMAT(
							s.CREATED_TIME,
							'%Y-%m-%d %H:%i:%S'
						) >= DATE_FORMAT(
							p.START_DATE,
							'%Y-%m-%d %H:%i:%S'
						)
						AND DATE_FORMAT(
							s.CREATED_TIME,
							'%Y-%m-%d %H:%i:%S'
						) <= DATE_FORMAT(
							p.EXPIRY_DATE,
							'%Y-%m-%d %H:%i:%S'
						)
					)
					AND p.ACTIVE_INGREDIENTS IS NOT NULL
				)
			GROUP BY
				sr.id;


			INSERT INTO pv_1_adverse_event_detail_snapshot (
				id,
				report_no,
				event_from_country,
				first_follow_up,
				drug_production_batch,
				drug_dosage,
				adverse_event_name,
				adverse_event_pt_name,
				event_start_date,
				events_turn,
				patient_age,
				patient_sex,
				medication_start_time,
				medication_end_time,
				report_sources,
				causal_relationship,
				adverse_soc_name,
				plan_number,
				company_id,
				remark,
				report_type,
				first_create_time,
				drug_name,
				drug_dose,
				drug_dose_unit,
				time_interval,
				time_interval_unit,
				daily_number,
				drug_use_duration,
				drug_use_duration_unit,
				known_new,
				known_serious,
				age_group,
				report_ending,
				drug_generic_zh_name,
				drug_generic_en_name,
				drug_product_zh_name,
				drug_product_en_name,
				report_description,
				company_description,
				sessionruntime,
				records
			) SELECT
				id,
				report_no,
				event_from_country,
				first_follow_up,
				drug_production_batch,
				drug_dosage,
				adverse_event_name,
				adverse_event_pt_name,
				event_start_date,
				events_turn,
				patient_age,
				patient_sex,
				medication_start_time,
				medication_end_time,
				report_sources,
				causal_relationship,
				adverse_soc_name,
				plan_number,
				company_id,
				remark,
				report_type,
				first_create_time,
				drug_name,
				drug_dose,
				drug_dose_unit,
				time_interval,
				time_interval_unit,
				daily_number,
				drug_use_duration,
				drug_use_duration_unit,
				known_new,
				known_serious,
				age_group,
				report_ending,
				drug_generic_zh_name,
				drug_generic_en_name,
				drug_product_zh_name,
				drug_product_en_name,
				report_description,
				company_description,
				v_sessionruntime,
				v_records
			FROM
				pv_1_adverse_event_detail;


/* 同理注释调snapshot 表
 INSERT INTO pv_1_adverse_event_detail_snapshot (
						id,
						report_no,
						event_from_country,
						first_follow_up,
						drug_production_batch,
						drug_dosage,
						adverse_event_name,
						adverse_event_pt_name,
						event_start_date,
						events_turn,
						patient_age,
						patient_sex,
						medication_start_time,
						medication_end_time,
						report_sources,
						causal_relationship,
            adverse_soc_name ,
            plan_number,
            company_id,
						remark,
						sessionruntime,
            records
					) SELECT
            id,
						report_no,
						event_from_country,
						first_follow_up,
						drug_production_batch,
						drug_dosage,
						adverse_event_name,
						adverse_event_pt_name,
						event_start_date,
						events_turn,
						patient_age,
						patient_sex,
						medication_start_time,
						medication_end_time,
						report_sources,
						causal_relationship,
            adverse_soc_name ,
            plan_number,
            company_id,
						remark,
						v_sessionruntime,
            v_records
            from 
						pv_1_adverse_event_detail;  */






-- 如果参数是pv_1_adverse_event_summary,则把"个例药品不良反应汇总表"填满,并填充当天的快照
 ELSEIF (lower(p_tablename) = 'pv_1_adverse_event_summary') then 
   truncate table pv_1_adverse_event_summary;  
   INSERT INTO pv_1_adverse_event_summary (
	adverse_soc_name,
	adverse_event_pt_name,
  company_id,
  plan_number,
	adverse_event_records,
	adverse_event_label_known_serious,
	adverse_event_label_know_general,
	adverse_event_label_unknown_serious,
	adverse_event_label_unknown_general
) SELECT
	adverse_soc_name AS 'SOC名称',
	adverse_event_pt_name AS 'PT名称',
	company_id as '公司ID',
	plan_number as '计划编号',
	count(DISTINCT id) AS '病例数',
	count(
		CASE
		WHEN label = '已知|严重' THEN
			id
		END
	) AS '已知|严重',
	count(
		CASE
		WHEN label = '已知|一般' THEN
			id
		END
	) AS '已知|一般',
	count(
		CASE
		WHEN label = '未知|严重' THEN
			id
		END
	) AS '未知|严重',
	count(
		CASE
		WHEN label = '未知|一般' THEN
			id
		END
	) AS '未知|一般'
FROM
	(
			SELECT
			ae.adverse_event_pt_name,
			-- AS 'PT名称',
			ae.adverse_event_name,
			-- AS '不良事件名称',
			ae.adverse_event_dict_id,
			-- AS '药品字典id',
			md.adverse_soc_name,
			-- AS 'SOC名称',
			md.adverse_soc_code,
			-- AS 'SOC编码',
			ae.known_new,
			ae.known_serious,
			CASE
		WHEN ae.known_new = 1
		AND ae.known_serious = 1 THEN
			'已知|严重'
		WHEN ae.known_new = 1
		AND ae.known_serious = 0 THEN
			'已知|一般'
		WHEN ae.known_new = 0
		AND ae.known_serious = 1 THEN
			'未知|严重'
		WHEN ae.known_new = 0
		AND ae.known_serious = 0 THEN
			'未知|一般'
		ELSE
			'其他'
		END 'label',
		sr.id,
    sr.company_id,
    pp.plan_number
	FROM
		adverse_events AS ae
	LEFT JOIN sys_report AS sr ON sr.id = ae.report_id
	LEFT JOIN drug AS d ON sr.drug_name = d.drug_generic_zh_name
	left JOIN psur AS pp ON d.id = pp.DRUG_ID -- 测试反馈点1)：需要添加psur.plan_number
	LEFT JOIN medical_dictionary AS md ON ae.adverse_event_dict_id = md.id
	WHERE
		ae.DELETE_STATUS = 1
	AND sr.id IN (
		SELECT DISTINCT
			s.id
		FROM
			sys_report AS s
		LEFT JOIN drug_info AS d ON d.report_id = s.id
		LEFT JOIN psur AS p ON d.active_ingredients = p.ACTIVE_INGREDIENTS -- inner 
		WHERE
			s.delete_status = 1
		AND d.DELETE_STATUS = 1
		AND p.DELETE_STATUS = 1
		AND (
			DATE_FORMAT(
				s.CREATED_TIME,
				'%Y-%m-%d %H:%i:%S'
			) >= DATE_FORMAT(
				p.START_DATE,
				'%Y-%m-%d %H:%i:%S'
			)
			AND DATE_FORMAT(
				s.CREATED_TIME,
				'%Y-%m-%d %H:%i:%S'
			) <= DATE_FORMAT(
				p.EXPIRY_DATE,
				'%Y-%m-%d %H:%i:%S'
			)
		)
		AND p.ACTIVE_INGREDIENTS IS NOT NULL
	)
	) temp
GROUP BY
	adverse_soc_name,
	adverse_event_pt_name,
	company_id,
	plan_number;

 insert into pv_1_adverse_event_summary_snapshot(
adverse_soc_name,
	adverse_event_pt_name,
  company_id,
  plan_number,
	adverse_event_records,
	adverse_event_label_known_serious,
	adverse_event_label_know_general,
	adverse_event_label_unknown_serious,
	adverse_event_label_unknown_general,
  sessionruntime,
  records)
  select 
  adverse_soc_name,
	adverse_event_pt_name,
  company_id,
  plan_number,
	adverse_event_records,
	adverse_event_label_known_serious,
	adverse_event_label_know_general,
	adverse_event_label_unknown_serious,
	adverse_event_label_unknown_general,
  v_sessionruntime,
  v_records
  from pv_1_adverse_event_summary;
 end if;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pv_1_adverse_event_start_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `pv_1_adverse_event_start_all`;
DELIMITER ;;
CREATE DEFINER=`zhouwen`@`10.%` PROCEDURE `pv_1_adverse_event_start_all`()
BEGIN
call pv_1_adverse_event_report('pv_1_adverse_event_detail');
call pv_1_adverse_event_report('pv_1_adverse_event_summary');
end
;;
DELIMITER ;

-- ----------------------------
-- Event structure for pv_1_adverse_event_scheduler
-- ----------------------------
DROP EVENT IF EXISTS `pv_1_adverse_event_scheduler`;
DELIMITER ;;
CREATE DEFINER=`zhouwen`@`10.%` EVENT `pv_1_adverse_event_scheduler` ON SCHEDULE EVERY 1 DAY STARTS '2018-11-16 00:00:01' ENDS '2018-11-20 00:00:01' ON COMPLETION PRESERVE ENABLE DO call pv_1_adverse_event_start_all()
;;
DELIMITER ;
