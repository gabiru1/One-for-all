SELECT
	COUNT(DISTINCT track_id) AS cancoes, 
	COUNT(DISTINCT artists.artist_id) AS artistas, 
	COUNT(DISTINCT albums.album_id) AS albuns 
FROM
	SpotifyClone.track,
	SpotifyClone.artists AS artists,
	SpotifyClone.albums AS albums;