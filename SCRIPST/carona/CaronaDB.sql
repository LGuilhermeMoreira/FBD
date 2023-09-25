select * from pessoa;

create table Pessoa(
		nome varchar(50) not null,
        cpf char(11) primary key,
        telefone char(11) unique not null,
        rua varchar(50),
        cidade varchar(50),
        numero integer);
    
insert into pessoa(nome, cpf, telefone) 
values ('Livia', '00011122232', '85999555555');

create table carona(
		id_carona serial,
          cpf_pessoa char(11),
            data_carona date,
            hora time,
            num_vagas int,
            vagas_disp int);
			
			
alter table carona
add constraint carona_pk
primary key(id_carona);

alter table carona
add constraint carona_uk
unique(cpf_pessoa, data_carona, hora);

alter table carona
add constraint carona_fk_cpf
foreign key(cpf_pessoa) references Pessoa(cpf);

alter table carona
add column local_partida integer;
