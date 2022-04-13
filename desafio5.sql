SELECT 
  mus.music AS cancao, 
  COUNT(his.play_date) AS reproducoes
FROM SpotifyClone.historic AS his 
INNER JOIN SpotifyClone.music AS mus ON mus.music_id = his.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;