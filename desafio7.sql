SELECT 
	artists.artist_name AS 'artista',
    albums.album_name AS 'album',
    COUNT(followers.artist_id) AS 'seguidores'
FROM
	SpotifyClone.artists AS artists,
	SpotifyClone.albums AS albums,
    SpotifyClone.`following` AS followers
WHERE
	artists.artist_id = albums.artist_id
AND
	albums.artist_id = followers.artist_id;