SELECT 
  art.name_artist AS artista,
  alb.name_album AS album
FROM SpotifyClone.artist AS art 
INNER JOIN SpotifyClone.album AS alb ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.following AS fol ON fol.artist_id = art.artist_id
WHERE art.name_artist = 'Walter Phoenix'
GROUP BY alb.album_id
ORDER BY alb.name_album;