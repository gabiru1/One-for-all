SELECT 
  user.user_name AS usuario, 
CASE
	WHEN MAX(YEAR(his.history_date)) = 2021 THEN 'Usuário ativo'
  ELSE 'Usuário inativo'
END AS condicao_usuario
FROM SpotifyClone.users AS user, SpotifyClone.history AS his
WHERE user.user_id = his.user_id
GROUP BY user.user_name
ORDER BY user.user_name;