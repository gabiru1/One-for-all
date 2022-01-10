SELECT
  user.user_name AS usuario, 
	COUNT(his.track_id) AS qtde_musicas_ouvidas, 
  ROUND(SUM(track.track_duration/60), 2) AS total_minutos
FROM
  SpotifyClone.users AS user
INNER JOIN
  SpotifyClone.history AS his
ON his.user_id = user.user_id
INNER JOIN SpotifyClone.track AS track
ON track.track_id = his.track_id
GROUP BY user.user_name
ORDER BY user.user_name;