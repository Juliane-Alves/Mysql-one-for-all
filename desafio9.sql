SELECT 
  COUNT(his.music_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historic AS his 
INNER JOIN SpotifyClone.userr AS us ON us.id_user = his.id_user
WHERE us.name_user = 'Bill';