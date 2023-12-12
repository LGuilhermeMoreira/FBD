 --você deve exibir o nome do projeto, a quantidade de funcionários que trabalham no projeto, 
 --o salário médio dos funcionários que trabalham no projeto, o número máximo, mínimo e médio de horas trabalhadas  
 --de cada um desses projetos. Para os valores numéricos, 
 --utilize até duas casas decimais. O resultado deve ser ordenado em ordem alfabética do nome dos projeto
 
 
 SELECT 
    p.Projnome,
    COUNT(e.Fcpf),
    ROUND(AVG(f.Salario), 2),
    ROUND(MAX(e.Horas),2),
    ROUND(MIN(e.Horas),2),
    ROUND(AVG(e.Horas), 2)
FROM PROJETO p
JOIN TRABALHA_EM e ON p.Projnumero = e.Pnr
JOIN FUNCIONARIO f on f.Cpf = e.Fcpf
GROUP BY p.Projnome
ORDER BY p.Projnome;
