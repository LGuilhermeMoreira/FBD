--Recuperar a data de nascimento e o endere¸co dos funcin´arios cujo nome
--seja ’João B. Silva'

-- estrutura padrão do SQL
SELECT Datanasc,Endereco
FROM Funcionario
WHERE (Pnome = 'João' and Minicial = 'B' and Unome = 'Silva');

--Listar o nome e o endere¸co dos funcion´arios do departamento de
--’Pesquisa’.

SELECT Pnome,Endereco
FROM Funcionario, Departamento
WHERE Dnome = 'Pesquisa' and Dnumero = Funcionario.Dnr; 

--Para cada projeto localizado em ’Maua’, liste o numero do projeto, o
--numero do departamento que o controla e o sobrenome, endereco e a data
--de nascimento do gerente do departamento.
SELECT P.Projnumero, P.Dnum, F.Unome, F.Endereco, F.Datanasc
FROM Funcionario as F, Projeto as P, Departamento as D
WHERE P.Projnome = 'Maua' and F.Cpf = D.Cpf_gerente and P.Dnum = D.Dnumero;

--Selecione todos os Cpfs de Funcionario
Select Cpf
FROM Funcionario;

--Selecione todas as combinações de CPF de Funcionario e nome do departamento
SELECT F.Cpf D.Dnome
FROM Funcionario, Departamento;

--Selecione todos os valores de Funcionario onde o numero de departamento é 5
SElECT * 
FROM Funcionario
WHere Dnr = 5

--Recupere o salario de cada funcionario
SELECT ALL Salario
FROM Funcionario

--Recupere os Salarios de todos os funcionarios sem repetição
select distinct Salario
from Funcionario

--Suponha que você tenha duas tabelas, "FuncionariosA" e "FuncionariosB," e deseja obter uma 
--lista de todos os funcionários de ambas as tabelas sem repetição
SELECT Nome FROM FuncionariosA
UNION
SELECT Nome FROM FuncionariosB;

--Suponha que você tenha duas tabelas, "FuncionariosA" e "FuncionariosB," e deseja obter uma 
--lista de todos os funcionários de ambas as tabelas com repetição
SELECT Nome FROM FuncionariosA
UNION ALL
SELECT Nome FROM FuncionariosB;

--Suponha que você tenha duas tabelas, "VendedoresA" e "VendedoresB," e deseja obter uma lista --de vendedores que estão apenas na tabela "VendedoresA" e não na tabela "VendedoresB":
SELECT Nome FROM VendedoresA
EXCEPT
SELECT Nome FROM VendedoresB;

--Suponha que você tenha duas tabelas, "ClientesA" e "ClientesB," e deseja obter uma lista de 
--clientes que estão presentes em ambas as tabelas:
SELECT Nome FROM ClientesA
INTERSECT
SELECT Nome FROM ClientesB;

/*
Fazer uma lista de todos os numeros de projeto para aqueles que envolvam
um funcionario cujo ultimo nome e ’Silva’, seja como um trabalhador ou
como um gerente do departamento que controla o projeto.
*/

select distinct P.Projnumero
from Projeto as P,Funcionario as F, Departamento as D
where Dnum = Dnumero and Cpf = Cpf_gerente and Unome = 'Silva'
union
select distinct P.Projnumero
from Projeto as P,Funcionario as F,Trabalha_em as T
where Dnum = Dnumero and FCpf = Cpf and Unome = 'Silva'

-- Operador Like % e _

--seleciona os funcionarios que comecem com B
select * from funcionario where nome like 'B%'

--seleciona os funcinarios que começem com B e tem 5 caracteres
select * from funcionario where nome like 'B____'


-- Operador between utilizado para delimitar um espaço que contenha inicio e fim
SELECT * from funcionario where data_contrarto between '2007' and ; '2008'

-- cláusula ORDER BT

--no fim da consulta é utilizada para ordenar de forma ascendente ou descendente

-- ASC
SELECT Nome, Sobrenome
FROM Clientes
ORDER BY Sobrenome;

-- DESC
SELECT Nome, Sobrenome
FROM Clientes
ORDER BY Sobrenome DESC;

-- ASC DESC
SELECT Nome, Sobrenome, DataContrato
FROM Funcionarios
ORDER BY DataContrato DESC, Sobrenome ASC;

-- ORDENADO POR EXPREÇÃO CALCULADA
SELECT Nome, Preco * Quantidade as ValorTotal
FROM Produtos
ORDER BY ValorTotal DESC;


====================================================================================================
--JOIN FAZ A JUNÇÃO DE DUAS TABELAS

-- inner join	
	
	--Também conhecido como simplesmente JOIN.
        --Retorna apenas as linhas que têm correspondências nas duas tabelas.
        --As linhas que não têm correspondências nas duas tabelas não são incluídas no resultado.
    
SELECT orders.order_id, customers.customer_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

-- left join

	--Retorna todas as linhas da tabela à esquerda (a primeira tabela especificada) e as 
        --correspondentes da tabela à direita (a segunda tabela especificada).
        --Se não houver correspondência na tabela à direita, os campos da tabela à direita 
        --serão preenchidos com valores NULL no resultado.
    
SELECT employees.employee_id, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

-- right join

	-- é oposto do left

SELECT departments.department_id, employees.employee_name
FROM departments
RIGHT JOIN employees ON departments.department_id = employees.department_id;

-- full join
	--Retorna todas as linhas de ambas as tabelas, incluindo aquelas que não têm 
	--correspondências 					
	--na outra tabela.
	--Os campos sem correspondências na tabela oposta são preenchidos com valores NULL.

SELECT customers.customer_id, orders.order_id
FROM customers
FULL OUTER JOIN orders ON customers.customer_id = orders.customer_id;

