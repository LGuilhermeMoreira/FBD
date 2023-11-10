SELECT name AS NomePessoa, ROUND((salary * 0.10), 2) AS ValorPagarGoverno
FROM people
WHERE salary > 3000;
