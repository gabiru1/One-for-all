SELECT 
	artists.artist_name AS artista,
    albums.album_name AS album,
    COUNT(followers.artist_id) AS seguidores
FROM
	SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists
  ON albums.artist_id = artists.artist_id
INNER JOIN SpotifyClone.`following` AS followers
  ON followers.artist_id = albums.artist_id
GROUP BY
    album,
    artista
ORDER BY
	seguidores DESC, artista ASC, album ASC; --[1]

	--[1] - a ordem importa