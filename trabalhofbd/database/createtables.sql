CREATE TABLE Usuario
(
  Nome VARCHAR ,
  Dia INT ,
  Mes INT ,
  Ano INT ,
  Idade INT ,
  CpfUsuario VARCHAR ,
  Numero INT ,
  Endereco VARCHAR ,
  Tipo_sanguineo VARCHAR ,
  Historico_medico VARCHAR ,
  Peso FLOAT ,
  PRIMARY KEY (CpfUsuario),
  UNIQUE (Numero)
);

CREATE TABLE Atividade_Fisica
(
  Tempo VARCHAR ,
  Tipo VARCHAR ,
  Objetivo VARCHAR ,
  AtividadeId INT ,
  CpfUsuario VARCHAR ,
  PRIMARY KEY (AtividadeId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE
);

CREATE TABLE Dieta
(
  Meta_Calorica FLOAT ,
  Quantidade_de_refeicoes INT ,
  Intervalo_entre_refeicoes INT ,
  Objetivo VARCHAR ,
  DietaId INT ,
  CpfUsuario VARCHAR ,
  PRIMARY KEY (DietaId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE
);

CREATE TABLE Medicacao
(
  Nome VARCHAR ,
  Dosagem INT ,
  Tipo VARCHAR ,
  Intervalo_ VARCHAR ,
  MedicacaoId INT ,
  CpfUsuario VARCHAR ,
  PRIMARY KEY (MedicacaoId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE
);

CREATE TABLE Registro_Medico
(
  RegistroId INT ,
  CpfUsuario VARCHAR ,
  AtividadeId INT ,
  MedicacaoId INT ,
  DietaId INT ,
  PRIMARY KEY (RegistroId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE,
  FOREIGN KEY (AtividadeId) REFERENCES Atividade_Fisica(AtividadeId) ON DELETE CASCADE,
  FOREIGN KEY (MedicacaoId) REFERENCES Medicacao(MedicacaoId) ON DELETE CASCADE,
  FOREIGN KEY (DietaId) REFERENCES Dieta(DietaId) ON DELETE CASCADE
);

CREATE TABLE Exame
(
  Tipo VARCHAR ,
  Dia INT ,
  Mes INT ,
  Ano INT ,
  Nome VARCHAR ,
  ExameId INT ,
  Finalidade VARCHAR ,
  CpfUsuario VARCHAR ,
  PRIMARY KEY (ExameId),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE
);

CREATE TABLE Usuario_Parentesco
(
  Parentesco VARCHAR ,
  CpfUsuario VARCHAR ,
  PRIMARY KEY (CpfUsuario),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE
);

CREATE TABLE Dieta_Alimentos
(
  Alimentos VARCHAR ,
  DietaId INT ,
  PRIMARY KEY (DietaId),
  FOREIGN KEY (DietaId) REFERENCES Dieta(DietaId) ON DELETE CASCADE
);

CREATE TABLE Medicacao_Contraindicacao
(
  Contraindicacao VARCHAR ,
  MedicacaoId INT ,
  PRIMARY KEY (MedicacaoId),
  FOREIGN KEY (MedicacaoId) REFERENCES Medicacao(MedicacaoId) ON DELETE CASCADE
);

CREATE TABLE Medicacao_Efeitos_Colaterais_
(
  Efeitos_Colaterais_ VARCHAR ,
  MedicacaoId INT ,
  PRIMARY KEY (MedicacaoId),
  FOREIGN KEY (MedicacaoId) REFERENCES Medicacao(MedicacaoId) ON DELETE CASCADE
);

CREATE TABLE Registro_Medico_Possiveis_Doencas_
(
  Possiveis_Doencas_ VARCHAR ,
  RegistroId INT ,
  PRIMARY KEY (RegistroId),
  FOREIGN KEY (RegistroId) REFERENCES Registro_Medico(RegistroId) ON DELETE CASCADE
);

CREATE TABLE Usuario_Reponsavel
(
  CpfUsuario VARCHAR ,
  RegistroId INT ,
  PRIMARY KEY (CpfUsuario),
  FOREIGN KEY (CpfUsuario) REFERENCES Usuario(CpfUsuario) ON DELETE CASCADE,
  FOREIGN KEY (RegistroId) REFERENCES Registro_Medico(RegistroId) ON DELETE CASCADE
);
