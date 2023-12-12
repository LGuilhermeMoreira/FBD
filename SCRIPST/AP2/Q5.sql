select distinct F.Pnome, F.Salario, F2.Salario 
from FUNCIONARIO F
join TRABALHA_EM T on F.Cpf = T.Fcpf
join DEPARTAMENTO D on D.Dnumero = F.Dnr
join FUNCIONARIO F2 on D.Cpf_gerente = F2.Cpf
order by F.Pnome


