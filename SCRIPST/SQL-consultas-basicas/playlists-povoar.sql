--- povoando o banco 
INSERT INTO public.usuario(id_usuario, nome)
	VALUES (10, 'Ana'), (11,'Bruno');

	
INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (10, 'Engenheiros do Hawai');

INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (11, 'Coldplay');

 INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (12, 'Marisa Monte');

INSERT INTO public.gravadora(
            nome, id_gravadora, endereco)
    VALUES ('Som Livre', 1, 'Av. Itinerante, 10'), ('Max Discos', 2, 'Rua Pedro I, 20');
    

INSERT INTO public.musica(
            cod_musica, id_gravadora, titulo)
    VALUES (10, 1, 'Infinita Highway'), (21, 2, 'The Scientist'), (22,2,'Vilarejo');

INSERT INTO public.musica_artista(
            cod_musica, cod_artista)
    VALUES (10, 10), (22,12), (21,11) ;

INSERT INTO public.playlist(
            id_playlist, id_usu, nome, descricao)
    VALUES 
    (1, 10, 'Variadas', 'Minhas preferidas'), 
    (2, 11, 'Nacionais', 'Músicas do Brasil');

INSERT INTO public.playlist_musica(
            id_playlist, cod_musica)
    VALUES (1,10), (1,21), (2,10),(2,22);






	