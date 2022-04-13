SELECT
  art.name_artist AS artista,
  alb.name_album AS album,
  COUNT(fol.id_user) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.following AS fol ON fol.artist_id = art.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;