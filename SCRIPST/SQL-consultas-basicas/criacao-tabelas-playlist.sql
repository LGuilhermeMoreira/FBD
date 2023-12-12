DROP table Artista Cascade;
DROP table Gravadora Cascade;
DROP table Playlist Cascade;
DROP table Musica Cascade;
DROP table Musica_Artista Cascade;
DROP table Usuario Cascade;
DROP table Playlist_Musica Cascade;


CREATE TABLE Artista
(
  cod_autor INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (cod_autor)
);

CREATE TABLE Gravadora
(
  nome VARCHAR(50) NOT NULL,
  id_gravadora INT NOT NULL,
  endereco VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_gravadora)
);

CREATE TABLE Musica
(
  cod_musica INT NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  id_gravadora INT NOT NULL,
  PRIMARY KEY (cod_musica),
  FOREIGN KEY (id_gravadora) REFERENCES Gravadora(id_gravadora)
);

CREATE TABLE Usuario
(
  id_usuario INT NOT NULL,
  nome VARCHAR(50)  NOT NULL,  
  PRIMARY KEY (id_usuario)
  
);

CREATE TABLE Playlist
(
  id_playlist INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(50) NOT NULL,
  id_usu INT NOT NULL,
  PRIMARY KEY (id_playlist),
  FOREIGN KEY (id_usu) REFERENCES Usuario(id_usuario)
);



CREATE TABLE Musica_Artista
(
  cod_musica INT NOT NULL,
  cod_artista INT NOT NULL,
  PRIMARY KEY (cod_musica, cod_artista),
  FOREIGN KEY (cod_musica) REFERENCES Musica(cod_musica),
  FOREIGN KEY (cod_artista) REFERENCES Artista(cod_autor)
);



CREATE TABLE Playlist_Musica
(
  id_playlist INT NOT NULL,
  cod_musica INT NOT NULL,
  PRIMARY KEY (id_playlist, cod_musica),
  FOREIGN KEY (id_playlist) REFERENCES Playlist(id_playlist),
  FOREIGN KEY (cod_musica) REFERENCES Musica(cod_musica)
);

