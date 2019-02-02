create database pizzaria;
use pizzaria;

create table clientes
(
	id int primary key auto_increment,
	nome varchar(100),
	endereco varchar(100),
	telefone varchar(100)
);

create table categorias
(
	id int primary key auto_increment,
	nome varchar(100) unique
);

create table produtos
(
	id int primary key auto_increment,
	nome varchar(100),
    preco decimal(5,2),
	ingredientes varchar(100),
    categoria_id int,
    
    foreign key(categoria_id) references categorias(id)
);

create table entregadores
(
	id int primary key auto_increment,
	cliente_id int,
    dt_inicio date,
    valor_entrega decimal(5,2),
    foreign key(cliente_id) references clientes(id)
);

create table pedidos
(
	id int primary key auto_increment,
    data date,
    status varchar(50),
	cliente_id int,
    entregador_id int,
    
    foreign key(cliente_id) references clientes(id),
    foreign key(entregador_id) references entregadores(id)
);

create table pedido_itens
(
	id int primary key auto_increment,    
    preco decimal(5,2),
    pedido_id int,
    produto_id int,
    
    foreign key(pedido_id) references pedidos(id),
    foreign key(produto_id) references produtos(id)
);