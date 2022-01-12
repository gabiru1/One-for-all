SELECT
    MIN(plans.plan_value) AS 'faturamento_minimo',
    MAX(plans.plan_value) AS 'faturamento_maximo',
    FORMAT(AVG(plans.plan_value), 2) AS 'faturamento_medio',
    CAST(SUM(plans.plan_value) AS DECIMAL(4,2)) AS 'faturamento_total'
FROM
	SpotifyClone.plans as plans,
	SpotifyClone.users as users
WHERE
	users.plan_id = plans.plan_id;