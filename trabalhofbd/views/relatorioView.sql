CREATE OR REPLACE VIEW RelatorioView
AS (
	SELECT
		u.nome AS nomeUsuario,
		u.cpfUsuario,
		m.nome AS medNome,
		m.tipo AS tipoMed,
		r.registroId,
		rpd.possiveis_doencas_
	FROM Usuario u
	JOIN Medicacao m ON m.cpfUsuario = u.cpfUsuario
	JOIN Registro_medico r ON r.cpfUsuario = u.cpfUsuario
	JOIN Registro_medico_possiveis_doencas_ rpd ON rpd.registroId = r.registroId
);