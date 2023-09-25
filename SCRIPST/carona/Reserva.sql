-- Complemente o script para:
-- Criar a tabela Reserva;

-- Adicionar a chave primária e as chaves estrangeiras de Reserva;
-- Reserva(cpf_pessoa, id_carona)

-- Criar a tabela Local(id, nome, ponto_referencia, rua, num, cidade)
-- Adicionar a coluna local_chegada na tabela Carona
-- Adicionar as chaves estrangeiras de carona para local.

CREATE TABLE Reserva(
	cpf_pessoa char(11),
	id_carona int
);

ALTER TABLE Reserva
ADD CONSTRAINT reserva_fk_cpf
FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa (cpf);

SELECT * FROM Reserva;

CREATE TABLE Local_de_chegada(
	id_local serial,
	nome varchar[100],
	ponto_referencia varchar[100],
	rua varchar[100],
	numero int,
	cidade varchar[50]
);

ALTER TABLE carona
ADD local_chegada varchar[100]
FOREIGN KEY (local_chegada) REFERENCES Local_de_chegada(rua)



			


