create database escola;
use escola;


create table alunos
(
	id int primary key 
		auto_increment,
        
	nome varchar(100),
    documento varchar(200),
    email varchar(100)
);

create table professores
(
	id int primary key 
		auto_increment,
	nome varchar(100),
    documento varchar(200),
    email varchar(100)
);

create table cursos
(
	id int primary key 
		auto_increment,
        
	nome varchar(100)
);

create table turmas
(
	id int primary key 
		auto_increment,
        
	dt_inicio date,
    dt_fim date,
    curso_id int null,
    professor_id int null,
    
    foreign key(curso_id) references cursos(id),
    foreign key(professor_id) references professores(id)
);

create table aluno_turma
(
	aluno_id int,
    turma_id int,
    
    primary key(aluno_id, turma_id)
);

