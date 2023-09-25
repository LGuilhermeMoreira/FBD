CREATE TABLE Estudante(
    numero integer PRIMARY KEY,
    pnome varchar(100),
    sobrenome varchar(100),
    cidade varchar(100),
    cep varchar(100),
    estado varchar(100),
    rua varchar(100),
    num integer,
    data_nascimento date,
    sexo varchar(100),
    classe varchar(100),
    programa_graduacao varchar(100),
    numero_seguro integer
);

CREATE TABLE Estudante_telefone(
    telefone varchar(100) PRIMARY KEY,
    numero integer,
    FOREIGN KEY (numero) REFERENCES Estudante(numero) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Departamento(
    nome varchar(100) PRIMARY KEY,
    codigo integer UNIQUE,
    num_escritorio integer,
    telefone varchar(100),
    faculdade varchar(100)
);

CREATE TABLE Curso(
    numero integer PRIMARY KEY,
    nome varchar(100),
    descricao varchar(100),
    horas integer,
    nivel integer,
    nome_dep varchar(100),
    FOREIGN KEY (nome_dep) REFERENCES Departamento(nome) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Seção(
    numero_secao integer PRIMARY KEY,
    numero_curso integer UNIQUE,
    FOREIGN KEY (numero_curso) REFERENCES Curso(numero) ON DELETE CASCADE ON UPDATE CASCADE,
    instrutor varchar(100),
    semestre integer,
    ano integer
);

CREATE TABLE Relatorio_Notas(
    numero_estudante integer PRIMARY KEY,
    FOREIGN KEY (numero_estudante) REFERENCES Estudante(numero) ON DELETE CASCADE ON UPDATE CASCADE,
    numero_secao integer,
    FOREIGN KEY (numero_secao) REFERENCES Seção(numero_secao) ON DELETE CASCADE ON UPDATE CASCADE,
    numero_curso integer,
    FOREIGN KEY (numero_curso) REFERENCES Seção(numero_curso) ON DELETE CASCADE ON UPDATE CASCADE,
    nota_numerica integer
);

CREATE TABLE Participa(
    nome_dep varchar(100) PRIMARY KEY,
    FOREIGN KEY (nome_dep) REFERENCES Departamento(nome) ON DELETE CASCADE ON UPDATE CASCADE,
    numero_aluno integer,
    FOREIGN KEY (numero_aluno) REFERENCES Estudante(numero) ON DELETE CASCADE ON UPDATE CASCADE,
    proridade integer
);