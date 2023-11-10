CREATE TABLE Usuario
(
  Nome VARCHAR NOT NULL,
  Dia INT NOT NULL,
  Mes INT NOT NULL,
  Ano INT NOT NULL,
  Idade INT NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  Numero INT NOT NULL,
  Endereco VARCHAR NOT NULL,
  Tipo_sanguineo VARCHAR NOT NULL,
  Historico_medico VARCHAR NOT NULL,
  Peso FLOAT NOT NULL,
  PRIMARY KEY (CpfUsuario),
  UNIQUE (Numero)
);

CREATE TABLE Dieta
(
  Meta_Calorica FLOAT NOT NULL,
  Quantidade_de_refeicoes INT NOT NULL,
  Intervalo_entre_refeicoes VARCHAR NOT NULL,
  Objetivo VARCHAR NOT NULL,
  DietaId INT NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  PRIMARY KEY (DietaId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario)
);

CREATE TABLE Registro_Medico
(
  RegistroId INT NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  DietaId INT NOT NULL,
  PRIMARY KEY (RegistroId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario),
  FOREIGN KEY (DietaId) REFERENCES Dieta(DietaId)
);

CREATE TABLE Exame
(
  Tipo VARCHAR NOT NULL,
  Dia INT NOT NULL,
  Mes INT NOT NULL,
  Ano INT NOT NULL,
  Nome VARCHAR NOT NULL,
  ExameId INT NOT NULL,
  Finalidade VARCHAR NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  PRIMARY KEY (ExameId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario)
);

CREATE TABLE Usuario_Parentesco
(
  Parentesco VARCHAR NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario)
);

CREATE TABLE Dieta_Alimentos
(
  Alimentos VARCHAR NOT NULL,
  DietaId INT NOT NULL,
  FOREIGN KEY (DietaId) REFERENCES Dieta(DietaId)
);

CREATE TABLE Registro_Medico_Possiveis_Doencas_
(
  Possiveis_Doencas_ VARCHAR NOT NULL,
  RegistroId INT NOT NULL,
  FOREIGN KEY (RegistroId) REFERENCES Registro_Medico(RegistroId)
);

CREATE TABLE Usuario_Reponsavel
(
  CpfUsuario VARCHAR NOT NULL,
  RegistroId INT NOT NULL,
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario),
  FOREIGN KEY (RegistroId) REFERENCES Registro_Medico(RegistroId)
);

CREATE TABLE Atividade_Fisica
(
  Tempo VARCHAR NOT NULL,
  Tipo VARCHAR NOT NULL,
  Objetivo VARCHAR NOT NULL,
  AtividadeId INT NOT NULL,
  RegistroId INT NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  PRIMARY KEY (AtividadeId),
  FOREIGN KEY (RegistroId) REFERENCES Registro_Medico(RegistroId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario)
);

CREATE TABLE Medicacao
(
  Nome VARCHAR NOT NULL,
  Dosagem FLOAT NOT NULL,
  Tipo VARCHAR NOT NULL,
  Intervalo_ VARCHAR NOT NULL,
  MedicacaoId VARCHAR NOT NULL,
  RegistroId INT NOT NULL,
  CpfUsuario VARCHAR NOT NULL,
  PRIMARY KEY (MedicacaoId),
  FOREIGN KEY (RegistroId) REFERENCES Registro_Medico(RegistroId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario)
);

CREATE TABLE Medicacao_Contraindicacao
(
  Contraindicacao VARCHAR NOT NULL,
  MedicacaoId VARCHAR NOT NULL,
  FOREIGN KEY (MedicacaoId) REFERENCES Medicacao(MedicacaoId)
);

CREATE TABLE Medicacao_Efeitos_Colaterais_
(
  Efeitos_Colaterais_ VARCHAR NOT NULL,
  MedicacaoId VARCHAR NOT NULL,
  FOREIGN KEY (MedicacaoId) REFERENCES Medicacao(MedicacaoId)
);
