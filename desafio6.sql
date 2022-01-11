SELECT
	MIN(SpotifyClone.plans.plan_value) AS 'faturamento_minimo',
    MAX(SpotifyClone.plans.plan_value) AS 'faturamento_maximo',
    'faturamento_medio',
    'faturamento_total'
FROM SpotifyClone.plans