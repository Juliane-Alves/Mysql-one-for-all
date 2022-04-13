SELECT 
   COUNT(DISTINCT mus.music_id) AS cancoes,
   COUNT(DISTINCT art.artist_id) AS artistas,
   COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artist AS art ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.music AS mus ON mus.album_id = alb.album_id;