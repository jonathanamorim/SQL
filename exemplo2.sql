create database semana07;
use semana07;
create table professores(
prof_codigo int primary key,
prof_nome varchar(200),
prof_depto varchar(100),
prof_disciplina varchar(200),
prof_salario int,
prof_alunos int);

insert into professores(prof_codigo, prof_nome, prof_depto, prof_disciplina, prof_salario, prof_alunos)
values(1,'Carlos','IMD','Banco de Dados',1000,3),
(2,'Pedro','IMD','Lógica de Programação',2000,2),
(3,'Maria','DEMAp','Desenvolvimento Web 1',1300,0),
(4,'Rita','LECA','Programação Orientada à Objetos',1100,0),
(5,'Renata','IMD','Banco de Dados',1500,0),
(6,'Silvio','DIMAp','Desenvolvimento Web 1',2300,1),
(7,'Eduardo','LECA','Programação Estruturada',2650,1),
(8,'Henrique','LECA','Arquitetura de Computadores',2120,3),
(9,'Camila','IMD','Lógica de Programação',2445,2),
(10,'Brenda','DIMAp','Desenvolvimento Web 2',4100,2);

select * from professores order by prof_codigo;

select count(prof_codigo) from professores;

select prof_codigo, prof_nome prof_salario from professores order by prof_nome;

select prof_depto, prof_nome, prof_salario from professores order by prof_salario desc;

select prof_nome, prof_disciplina from professores where prof_alunos = 0 or null;
