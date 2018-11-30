
1、 查询出有效的报告并按计划编号排序

SELECT
	s.id           -- AS `报告Id`
FROM
	sys_report AS s
LEFT JOIN drug_info AS d ON d.report_id = s.id
LEFT JOIN psur AS p ON d.active_ingredients = p.ACTIVE_INGREDIENTS
WHERE
	s.delete_status = 1
AND d.DELETE_STATUS = 1
AND p.DELETE_STATUS = 1
AND s.CREATED_TIME >= p.START_DATE
AND s.CREATED_TIME <= p.EXPIRY_DATE
AND p.PLAN_NUMBER = #{request.planNumber}

2、