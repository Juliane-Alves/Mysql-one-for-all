SELECT 
   MIN(value_plan) AS faturamento_minimo,
   MAX(value_plan) AS faturamento_maximo,
   ROUND(AVG(value_plan), 2) AS faturamento_medio,
   ROUND(SUM(value_plan), 2) AS faturamento_total
FROM SpotifyClone.userr AS us
INNER JOIN SpotifyClone.plan AS pla ON us.plan_id = pla.plan_id;


