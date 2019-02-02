create database ecommerce;
use ecommerce;

create table clientes
(
	id int primary key auto_increment,
	nome varchar(100),
	email varchar(100),
    telefone varchar(100),
	tipo_cliente char(2)
);

create table clientes_pj
(
	id int primary key auto_increment,
    cnpj varchar(100),
    razao_social varchar(100),
    cliente_id int,
    
    foreign key (cliente_id) references clientes(id)
);

create table clientes_pf
(
	id int primary key auto_increment,
    cpf varchar(100),
    rg varchar(100),
    cliente_id int,
    
    foreign key (cliente_id) references clientes(id)
);

create table categorias
(
	id int primary key auto_increment,
    nome varchar(200) not null unique
);

create table produtos
(
	id int primary key auto_increment,
    nome varchar(200),
    descricao varchar(200),
    preco decimal(5,2),
    categoria_id int,
    
    foreign key(categoria_id) references categorias(id)
);

create table pedidos
(
	id int primary key auto_increment,
    cliente_id int,
    status varchar(20),
    
    foreign key(cliente_id) references clientes(id)
);

create table pedido_itens
(
	id int primary key auto_increment,
    produto_id int,
    pedido_id int,
    quantidade int,
    preco decimal(5,2),
    
    foreign key(produto_id) references produtos(id),
    foreign key(pedido_id) references pedidos(id)
);
