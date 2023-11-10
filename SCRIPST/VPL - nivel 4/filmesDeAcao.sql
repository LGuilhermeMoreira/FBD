SELECT m.id AS codigo_filme, m.name AS nome_filme
FROM movies m
JOIN genres g ON m.id_genres = g.id
WHERE g.description = 'Action';
