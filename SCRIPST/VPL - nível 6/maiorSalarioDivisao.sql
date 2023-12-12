SELECT
  empregado.nome,
  cast(ROUND(SUM(DISTINCT COALESCE(vencimento.valor, 0)) - SUM(DISTINCT COALESCE(desconto.valor, 0)), 2) AS INT) AS salario
FROM empregado
left JOIN emp_desc 
ON emp_desc.matr = empregado.matr
left JOIN desconto 
ON desconto.cod_desc = emp_desc.cod_desc
inner JOIN emp_venc 
ON emp_venc.matr = empregado.matr
inner JOIN vencimento 
ON vencimento.cod_venc = emp_venc.cod_venc
GROUP BY empregado.nome, empregado.lotacao
HAVING ROUND(SUM(DISTINCT COALESCE(vencimento.valor, 0)) - SUM(DISTINCT COALESCE(desconto.valor, 0)), 2) > 8000
order by empregado.lotacao asc;