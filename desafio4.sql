SELECT 
   us.name_user AS usuario,
   IF(MAX(his.play_date) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.historic AS his 
INNER JOIN SpotifyClone.userr AS us ON us.id_user = his.id_user 
GROUP BY usuario
ORDER BY usuario; 