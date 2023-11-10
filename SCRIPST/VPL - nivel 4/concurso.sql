SELECT
  c.name AS NomeDoCandidato,
  ROUND((s.math * 2) + (s.specific * 3) + (s.project_plan * 5)) / 10 AS PontuacaoFinal
FROM
  candidate c
JOIN
  score s ON c.id = s.candidate_id
ORDER BY PontuacaoFinal DESC;
