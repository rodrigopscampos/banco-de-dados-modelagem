create database cardinalidade;
use cardinalidade;

create table motorista_cnh
(
	id int primary key,
    nome varchar(200),
    
    num_cnh varchar(50) unique,
    dt_expedicao date,
    dt_validade date
);

create table cnh
(
	id int primary key,
    num_cnh varchar(50) unique,
    dt_expedicao date,
    dt_validade date
);

create table motorista
(
	id int primary key,
    nome varchar(200),
    cnh_id int unique,
    foreign key(cnh_id) references cnh(id)
);

create table pessoa
(
	id int primary key,
    nome varchar(200),
    dt_nascimento date
);

create table email
(
	id int primary key,
    endereco varchar(200),
    pessoa_id int,
    
    foreign key (pessoa_id) references pessoa(id)
);

create table aluno
(
	id int primary key,
    nome varchar(200)
);

create table aula
(
	id int primary key,
    dt_inicio datetime,
    dt_fim datetime
);

create table aluno_aula
(
    aluno_id int,
    aula_id int,
    
    foreign key (aluno_id) references aluno(id),
    foreign key (aula_id) references aula(id),
    
    primary key (aluno_id, aula_id)
);
