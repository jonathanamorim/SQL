create database aula09;
use aula09;

create table alunos(
alu_matricula varchar(100) primary key,
cod_curso int,
alu_nome varchar(300),
curso_nome varchar(100)
);

insert into (alu_matricula, cod_curso, alu_nome, curso_nome),
values (201421510840019,11,'João Café Filho','Técnico em Redes de Computadores'),
(201521097004932,21,'Mariana Godoi','Técnico em Informática para Internet'),
(201676980541223,11,'Silvarson Medeiros','Técnico em Redes de Computadores'),
(201621510970023,31,'Domingos de Prova','Técnico em Automação Industrial');

update alunos
set curso_nome = 'Técnico em Internet das Coisas'
where cod_curso = 11;

select * from alunos

delete from alunos 
where cod_curso = 21;