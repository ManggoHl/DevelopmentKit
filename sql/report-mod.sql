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
AND s.CREATED_TIME >= p.START_DATE
AND s.CREATED_TIME <= p.EXPIRY_DATE;


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
	GROUP_CONCAT(distinct IFNULL(d.drug_generic_zh_name,',*')) AS `通用中文名`,
	GROUP_CONCAT(distinct IFNULL(d.drug_generic_en_name,',*')) AS `通用英文名`,
	GROUP_CONCAT(distinct IFNULL(d.drug_product_zh_name,',*')) AS `商品中文名`,
	GROUP_CONCAT(distinct IFNULL(d.drug_product_en_name,',*')) AS `商品英文名`,
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
	'' AS 备注,
	-- sr.report_type AS `企业报告类型`,-- add
	-- sr.first_create_time AS `首次获知时间`, -- add
	-- dur.drug_use_duration AS `给药的持续时间`, -- add
	-- dur.drug_use_duration_unit AS `给药的持续时间单位`, -- add 
	-- dur.daily_number AS `间隔时间次数`, -- add
	-- pb.age_group `年龄层`,	-- add 
	-- ae.known_new AS `已知/新的`, -- add
	-- ae.known_serious AS `是否严重`, -- add
	-- rc.report_ending AS `报告结局`, -- add
	CONCAT(IFNULL(sr.company_id,'*'),'公司内部编号：',IFNULL(sr.report_no,'*'),'这是一份来自于'
			,IFNULL(sr.report_type,'*'),'的报告，收到报告日期为',IFNULL(sr.first_create_time,'*')
			,'。 该',IFNULL(pb.patient_sex,'*'),'性患者',IFNULL(pb.patient_age,'*'),',岁，于'
			,IFNULL(ppmh.medication_start_time,'*'),'开始进行药物治疗，药物名称：',IFNULL(sr.drug_name,'*')
			,'，单次剂量',IFNULL(dur.drug_dose,'*'),IFNULL(dur.drug_dose_unit,'*'),
			'，频率为',IFNULL(dur.time_interval,'*'),IFNULL(dur.time_interval_unit,'*')
			,IFNULL(dur.daily_number,'*'),'次，给药持续时间为',IFNULL(dur.drug_use_duration,'*')
			,IFNULL(dur.drug_use_duration_unit,'*')) AS `报告描述`,

	CONCAT(IFNULL(pb.age_group,'*'),IFNULL(pb.patient_sex,'*'),'性，使用',IFNULL(sr.drug_name,'*')
			,'后出现',IFNULL(ae.adverse_event_name,'*'),'，为',
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
		END,'的反应，考虑为',IFNULL(rc.report_ending,'*')) AS `公司评述`
FROM
	sys_report AS sr
LEFT JOIN drug_info AS di ON sr.id = di.report_id  
LEFT JOIN drug AS d ON d.drug_generic_zh_name = di.generic_name
LEFT JOIN drug_use_result AS dur ON dur.drug_id = d.id
LEFT JOIN adverse_events AS ae ON ae.report_id = sr.id
LEFT JOIN report_concludes AS rc ON rc.report_id = sr.id
LEFT JOIN patientinfo_basic AS pb ON sr.id = pb.report_id
LEFT JOIN patientinfo_previous_medical_history AS ppmh ON sr.id = ppmh.report_id AND ppmh.drug_indications_pt_name = ae.adverse_event_pt_name
LEFT JOIN basicinfo_report_attributes AS bra ON sr.id = bra.report_id
LEFT JOIN report_assessment AS ra ON sr.id = ra.report_id 
WHERE sr.id IN () group by sr.id;






4、对下面结果统计
SELECT
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
			'*'
		END AS lable,
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
AND sr.id IN (SELECT DISTINCT
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
AND s.CREATED_TIME >= p.START_DATE
AND s.CREATED_TIME <= p.EXPIRY_DATE);