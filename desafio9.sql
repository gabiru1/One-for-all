SELECT
  COUNT(his.track_id) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.`history` AS his
INNER JOIN SpotifyClone.users AS user
ON his.user_id = user.user_id
WHERE
  user.user_name = 'Bill';