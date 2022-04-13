SELECT 
  mus.music AS nome,
  COUNT(us.id_user) AS reproducoes
FROM SpotifyClone.historic AS his
INNER JOIN SpotifyClone.music AS mus ON mus.music_id = his.music_id
INNER JOIN SpotifyClone.userr AS us ON us.id_user = his.id_user
WHERE us.plan_id = 1 OR us.plan_id = 3
GROUP BY mus.music
ORDER BY mus.music; 
