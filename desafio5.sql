SELECT 
	SpotifyClone.track.track_name AS cancao,
	COUNT(SpotifyClone.`history`.track_id) AS reproducoes
FROM
	SpotifyClone.track,
	SpotifyClone.`history`
WHERE SpotifyClone.track.track_id = SpotifyClone.`history`.track_id
GROUP BY SpotifyClone.track.track_name
ORDER BY reproducoes DESC, SpotifyClone.track.track_name
LIMIT 2;

-- Fiz sem alias para fins didaticos.
-- Creditos ao meu amigo Rafael (https://github.com/perchespierri) que me ajudou a entender