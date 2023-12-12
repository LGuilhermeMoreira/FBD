SELECT E.cpf, E.enome, D.dnome
FROM empregados E
JOIN departamentos D ON E.dnumero = D.dnumero
LEFT JOIN trabalha T ON E.cpf = T.cpf_emp
WHERE T.cpf_emp IS NULL
ORDER BY E.cpf;
