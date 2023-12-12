--Obtenha o título da música cujo código é 10.
SELECT titulo
FROM Musica
WHERE cod_musica = 10;


-- Obtenha os dados da música cujo título é ‘Infinita Highway’.
SELECT m.cod_musica, m.titulo, m.id_gravadora
FROM Musica m
JOIN Musica_Artista ma
ON m.cod_musica = ma.cod_musica
WHERE m.titulo = 'Infinita Highway';


-- Obtenha os títulos de todas as músicas.
SELECT titulo
FROM Musica
ORDER BY titulo;


-- Obtenha o título e nome da gravadora de todas as músicas.
SELECT m.titulo, g.nome
FROM Musica m
JOIN Gravadora g
ON m.id_gravadora = g.id_gravadora
ORDER BY m.titulo;


--Obtenha os dados das playlists da Ana.
SELECT p.id_playlist, p.nome, p.descricao, u.nome
FROM Playlist p
JOIN Usuario u
ON p.id_usu = u.id_usuario
WHERE u.nome = 'Ana';


--Obtenha as músicas que começam com a letra A.
SELECT titulo
FROM Musica
WHERE titulo LIKE 'A%';


--Obtenha as músicas que terminam com a letra A e tem 5 letras no título.
SELECT titulo
FROM Musica
WHERE titulo LIKE '%A'
AND LENGTH(titulo) = 5;


--Obtenha os dados dos artistas com código entre 3 e 10. Use o operador Between.
SELECT *
FROM Artista
WHERE cod_artista BETWEEN 3 AND 10;


--Obter, sem repetição, o título das músicas e a nome da gravadora das músicas que estão em
--alguma playlist de Bruno.
SELECT DISTINCT m.titulo, g.nome
FROM Playlist p
JOIN Playlist_Musica playlist_musica
ON p.id_playlist = playlist_musica.id_playlist
JOIN Musica m
ON playlist_musica.id_musica = m.id_musica
WHERE p.id_usu = (
  SELECT id_usuario
  FROM Usuario
  WHERE nome = 'Bruno'
);



--Obter, sem repetição, os artistas das músicas que estão em alguma playlist da Ana.
SELECT a.nome
FROM Playlist p
JOIN Playlist_Musica pm
ON p.id_playlist = pm.id_playlist
JOIN Musica m
ON pm.id_musica = m.id_musica
JOIN Artista a
ON m.cod_artista = a.cod_artista
WHERE p.id_usu = (
  SELECT id_usuario
  FROM Usuario
  WHERE nome = 'Ana'
)
GROUP BY a.nome;


--Insira cinco novas músicas no banco de dados e seus respectivos artistas.
INSERT INTO Musica (titulo, duracao, cod_artista, cod_genero)
VALUES
  ('Dancing Queen', 3.15, 1, 1),
  ('I Will Always Love You', 4.39, 9, 2),
  ('Sweet Caroline', 2.52, 10, 3),
  ('Hey Jude', 7.09, 6, 4),
  ('Imagine', 3.05, 3, 5);


--Insira cada música da questão em uma das playlists já criadas.
INSERT INTO Playlist_Musica (id_playlist, id_musica)
VALUES
  (1, 10),
  (1, 21),
  (2, 10),
  (2, 22);
