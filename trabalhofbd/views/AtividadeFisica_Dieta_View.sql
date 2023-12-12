CREATE VIEW AtividadeFisica_Dieta AS
SELECT
    U.Nome AS NomeUsuario,
    U.CpfUsuario,
    DA.Alimentos,
    D.Objetivo AS ObjetivoDieta,
    AF.Tempo AS TempoAtividade,
    AF.Objetivo AS ObjetivoAtividade
FROM
    Usuario U
JOIN Atividade_Fisica AF ON U.CpfUsuario = AF.CpfUsuario
JOIN Dieta D ON U.CpfUsuario = D.CpfUsuario
JOIN Dieta_Alimentos DA ON D.DietaId = DA.DietaId;
