SELECT 
  us.name_user AS usuario,
  COUNT(mus.music_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(mus.duration_seconds / 60), 2) AS total_minutos
FROM SpotifyClone.historic AS his 
INNER JOIN SpotifyClone.music AS mus ON mus.music_id = his.music_id
INNER JOIN SpotifyClone.userr AS us ON us.id_user = his.id_user
GROUP BY usuario;
