create database semana9;
use semana9;

create table convenios(
con_codigo int primary key,
con_nome varchar(300) not null
);

create table pacientes(
pac_codigo int primary key,
pac_nome varchar(300) not null,
pac_nascimento varchar(10) not null,
con_codigo int not null,
foreign key (con_codigo) references convenios(con_codigo)
);

create table atendimentos(
ate_codigo int primary key,
ate_data varchar(10) not null,
ate_diagnostico varchar(1000) not null,
pac_codigo int not null,
foreign key (pac_codigo) references pacientes(pac_codigo)
);

insert into convenios(con_codigo, con_nome)
values (1,'André Santos Cavalcante');

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (1, 'LaMarcus Aldridge',1985,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (2, 'Tony Parker',1982,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (3, 'Kawhi Leonard',1991,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (4, 'Darrun Hilliard',1993,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (5, 'Danny Green',1987,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (6, 'Manu Ginobili',1997,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (7, 'Pau Gasol',1980,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (8, 'Kyle Anderson',1993,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (9, 'Davis Bertans',1992,1);

insert into pacientes(pac_codigo, pac_nome, pac_nascimento, con_codigo)
values (10, 'Brandon Paul',1991,1);

select pac_nome, pac_nascimento
from pacientes order by pac_nascimento desc;

select pac_nome, con_nome
from pacientes, convenios
where pac_nascimento = (select max(pac_nascimento) from pacientes);