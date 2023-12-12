-- 01) Quais são as médias de idade dos usuários por tipo sanguíneo, em ordem decrescente?

SELECT Tipo_sanguineo, AVG(Idade) AS Media_de_Idade
FROM Usuario
GROUP BY Tipo_sanguineo
ORDER BY Media_de_Idade DESC;

-- 02) Qual é a quantidade média de refeições por objetivo de dieta (dieta) registrada no banco de dados?

SELECT Objetivo, AVG(Quantidade_de_refeicoes) AS Média_de_Refeicoes
FROM Dieta
GROUP BY Objetivo;

-- 03) Quantos exames médicos de tipo "Hemograma" foram realizados no ano de 2023, com o nome do usuário?

SELECT U.Nome AS Nome_do_Usuário, COUNT(*) AS Total_de_Exames_de_Hemograma
FROM Exame AS E
JOIN Usuario AS U ON E.CpfUsuario = U.CpfUsuario
WHERE E.Tipo = 'Hemograma' AND E.Ano = 2023
GROUP BY U.Nome;

-- 04) Qual é o total de usuários que têm parentesco do tipo "Pai" (na tabela "Usuario_Parentesco")?

SELECT COUNT(DISTINCT CpfUsuario) AS Total_de_Usuários_com_Parentesco_Pai
FROM Usuario_Parentesco
WHERE Parentesco = 'Pai';

-- 05) Quais são os nomes e os objetivos das dietas associadas a um usuário específico?
SELECT D.Meta_Calorica, D.Objetivo
FROM Usuario U
JOIN Dieta D ON U.CpfUsuario = D.CpfUsuario
WHERE U.Nome = 'NomeDoUsuario';

-- 06) Quais exames médicos foram realizados por um usuário em uma data específica?
SELECT E.Tipo, E.Nome, E.Finalidade
FROM Usuario U
JOIN Exame E ON U.CpfUsuario = E.CpfUsuario
WHERE U.Nome = 'NomeDoUsuario' AND E.Dia = DiaDesejado AND E.Mes = MesDesejado AND E.Ano = AnoDesejado;

-- 07) Quais são as possíveis doenças registradas nos registros médicos de um usuário?
SELECT RM.RegistroId, RM.CpfUsuario, RMPD.Possiveis_Doencas_
FROM Registro_Medico RM
JOIN Registro_Medico_Possiveis_Doencas RMPD ON RM.RegistroId = RMPD.RegistroId
WHERE RM.CpfUsuario = ''; --- cpf que deseja buscar

-- 08) Liste os nomes dos usuários que têm como dieta o arroz integral.
SELECT Nome
FROM Usuario 
JOIN Dieta ON Usuario.CpfUsuario = Dieta.CpfUsuario
JOIN Dieta_Alimentos ON Dieta.DietaId = Dieta_Alimentos.DietaId
WHERE Dieta_Alimentos.Alimentos LIKE '%arroz integral%';

-- 09) Liste os parentes do usuário chamado Lucas.

SELECT Parentesco, CpfUsuario
FROM Usuario_Parentesco
WHERE CpfUsuario IN (SELECT CpfUsuario FROM Usuario WHERE Nome = 'Lucas');

-- 10) Liste os efeitos colaterais de uma medicação do tipo X referentes a um usuário Y.
select mec.Efeitos_Colaterais_, u.Nome
from Medicacao_Efeitos_Colaterais_ mec
join Medicacao m on m.MedicacaoId = mec.MedicacaoId
join Usuario u on u.CpfUsuario = m.CpfUsuario
where u.CpfUsuario = '' --- adicionar Cpf aqui
and m.Nome = '' --- adicionar Nome da medicao aqui
