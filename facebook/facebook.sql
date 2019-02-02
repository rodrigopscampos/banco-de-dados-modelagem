create database facebook;
use facebook;

create table usuarios
(
	id int primary key auto_increment,
	nome varchar(100),
	email varchar(100),
	nascimento date,
	sexo char(1)
);

create table posts
(
	id int primary key auto_increment,
    data date,
	texto varchar(1000),
    usuario_id int,
    
    foreign key(usuario_id) references usuarios(id)
);

create table relacionamentos
(
	usuario_1 int,
    usuario_2 int,
    date date,  
    
    primary key(usuario_1, usuario_2),
    
    foreign key(usuario_1) references usuarios(id),
    foreign key(usuario_2) references usuarios(id)
);

create table marcacoes
(
	post_id int,
    usuario_id int,
    
    primary key(post_id, usuario_id),
    foreign key(post_id) references posts(id),
    foreign key(usuario_id) references usuarios(id)
);

