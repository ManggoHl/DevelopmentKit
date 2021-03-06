1、查询出所有psur筛选的报告id和编号（未按活性成份分组）

SELECT DISTINCT
	s.id AS `报告Id` -- ,
	-- s.report_no AS `报告编号`
FROM
	sys_report AS s
LEFT JOIN drug_info AS d ON d.report_id = s.id
LEFT JOIN psur AS p ON d.active_ingredients = p.ACTIVE_INGREDIENTS
WHERE
	s.delete_status = 1
AND d.DELETE_STATUS = 1
AND p.DELETE_STATUS = 1
AND (
	DATE_FORMAT(s.CREATED_TIME, '%Y-%m-%d %H:%i:%S') >= DATE_FORMAT(p.START_DATE, '%Y-%m-%d %H:%i:%S')
	AND DATE_FORMAT(s.CREATED_TIME, '%Y-%m-%d %H:%i:%S') <= DATE_FORMAT(p.EXPIRY_DATE, '%Y-%m-%d %H:%i:%S')
);

2、查询报告的不良事件信息（未统计PT和SOC）

SELECT
	ae.adverse_event_pt_name AS `PT名称`,
	ae.adverse_event_name AS `不良事件名称`,
	ae.adverse_event_dict_id AS `药品字典id`,
	md.adverse_soc_name AS `SOC名称`,
	md.adverse_soc_code AS `SOC编码`
FROM
	adverse_events AS ae
LEFT JOIN sys_report AS sr ON sr.id = ae.report_id
LEFT JOIN medical_dictionary AS md ON ae.adverse_event_dict_id = md.id
WHERE
	ae.DELETE_STATUS = 1
AND sr.id IN (1的查询结果);



3、其他相关信息关联报告id查询

SELECT
	sr.id,
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
	(CASE WHEN pb.patient_sex = 1 THEN '男' WHEN pb.patient_sex = 0 THEN '女' END) AS `性别`,
	ppmh.medication_start_time AS `用药开始日期`,
	ppmh.medication_end_time AS `用药结束日期`,
	bra.report_sources AS `企业信息来源`,
	ra.causal_relationship AS `评价意见`,
	'' AS 备注
FROM
	sys_report AS sr
LEFT JOIN drug AS d ON sr.drug_name = d.drug_generic_zh_name
LEFT JOIN adverse_events AS ae ON ae.report_id = sr.id
LEFT JOIN patientinfo_basic AS pb ON sr.id = pb.report_id
LEFT JOIN patientinfo_previous_medical_history AS ppmh ON sr.id = ppmh.report_id AND ppmh.drug_indications_pt_name = ae.adverse_event_pt_name
LEFT JOIN basicinfo_report_attributes AS bra ON sr.id = bra.report_id
LEFT JOIN report_assessment AS ra ON sr.id = ra.report_id;


-- sys_report
--   `report_no` varchar(32) DEFAULT NULL COMMENT '报告编号',（企业病例号）
--     `first_follow_up` int(11) DEFAULT NULL COMMENT '首次/随访报告',（初始/跟踪报告）
--     	`event_from_country` varchar(32) DEFAULT NULL COMMENT '事件发生国家',（病例发生地）
-- drug
--   `drug_production_batch` varchar(50) DEFAULT NULL COMMENT '生产批号',（药品批号）
--     `drug_dosage` varchar(500) DEFAULT '' COMMENT '用法用量',（用法用量）

-- adverse_events
--   `adverse_event_name` varchar(32) DEFAULT NULL COMMENT '不良事件名称',    
--     `event_start_date` datetime DEFAULT NULL COMMENT '事件开始日期',（不良反应发生时间）
--         `events_turn` int(11) DEFAULT NULL COMMENT '事件转归情况',（不良反应结果）

-- patientinfo_basic
--   `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
--     `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',

-- patientinfo_previous_medical_history
--   `medication_start_time` varchar(32) DEFAULT NULL COMMENT '用药开始日期',
--     `medication_end_time` varchar(32) DEFAULT NULL COMMENT '用药结束日期',

-- basicinfo_report_attributes   
-- 	`report_sources` int(11) DEFAULT NULL COMMENT '企业信息来源',

-- report_assessment
-- 	`causal_relationship` int(11) DEFAULT NULL COMMENT '因果关系',（评价意见）
