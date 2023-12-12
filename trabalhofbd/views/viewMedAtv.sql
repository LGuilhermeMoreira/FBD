CREATE VIEW ResumoAtividadeMedicacao AS
SELECT
    u.cpfusuario AS cpf_usuario,
    u.nome AS nome_usuario,
    COUNT(DISTINCT a.atividadeid) AS total_atividades_fisicas,
    COUNT(DISTINCT m.medicacaoid) AS total_medicacoes,
    STRING_AGG(DISTINCT a.tempo, ', ') AS tempos_atividades
FROM usuario u
LEFT JOIN atividade_fisica a ON u.cpfusuario = a.cpfusuario
LEFT JOIN medicacao m ON u.cpfusuario = m.cpfusuario
GROUP BY u.cpfusuario, u.nome;

--- view criada para o relatório de atividade física e dieta
CREATE VIEW AtividadeFisica_Dieta AS
SELECT u.Nome, u.CpfUsuario,
       da.Alimentos, d.Objetivo AS Objetivo_Dieta,
       af.Tempo AS Tempo_Atividade, af.Objetivo AS Objetivo_Atividade
FROM Usuario u
LEFT JOIN Dieta d ON u.CpfUsuario = d.CpfUsuario
LEFT JOIN Dieta_Alimentos da ON d.DietaId = da.DietaId
LEFT JOIN Atividade_Fisica af ON u.CpfUsuario = af.CpfUsuario;