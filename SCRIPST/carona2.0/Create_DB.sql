CREATE TABLE Pessoa{
    idPessoa SERIAL NOT NULL,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    rua    VARCHAR(50) NOT NULL,
    Numero VARCHAR(50) NOT NULL,
    PRIMARY KEY telefone
}

CREATE TABLE Carona{
    idCarona SERIAL NOT NULL,
    data_ VARCHAR(10) NOT NULL,
    hora VARCHAR (5) NOT NULL,
    num_vagas INT,
    vagas_disponiveis INT,
    local_partida VARCHAR(50) NOT NULL,
    local_destino VARCHAR(50) NOT NULL, 
}
FOREIGN KEY (local_partida) REFERENCES Local(nome),
FOREIGN KEY (local_destino) REFERENCES Local(nome),

CREATE TABLE Local{
    nome VARCHAR(50) NOT NULL,
    geolocalizacao VARCHAR(50) NOT NULL,
    ponto_referencia VARCHAR(50) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    PRIMARY KEY nome
}

CREATE TABLE Reserva{
    telefone-pas VARCHAR(50) NOT NULL,
    telefone-mot VARCHAR(50) NOT NULL,
    data_ VARCHAR(10) NOT NULL,
    hora VARCHAR(5) NOT NULL,
}
FOREIGN KEY (telefone-pas) REFERENCES Pessoa(telefone),
FOREIGN KEY (data_,hora,telefone-mot) REFERENCES Carona(data_,hora,telefone), 