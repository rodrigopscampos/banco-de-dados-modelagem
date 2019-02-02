create database Spotify;
use Spotify;

create table generos
(
	id int primary key auto_increment,
	nome varchar(100) not null unique
);

create table banda
(
	id int primary key auto_increment,
	nome varchar(100),
	dt_criançao date,
	genero_id int,
    
    foreign key (genero_id) references generos(id)
);

create table album
(
	id int primary key auto_increment,
	nome varchar(100),
	ano_lancamento int unsigned,
	banda_id int,
    
    foreign key(banda_id) references banda(id)
);

create table usuarios
(
	id int primary key auto_increment,
    nome varchar(100)
);

create table playlists
(
	id int primary key auto_increment,
	nome varchar(200),
    usuario_id int,
	
    foreign key(usuario_id) references usuarios(id)
);

create table musicas
(
	id int primary key auto_increment,
    nome varchar(100),
    bytes blob
);

create table album_musicas
(
	album_id int,
    musica_id int,
    
    primary key(album_id, musica_id),
	foreign key(album_id) references album(id),
    foreign key(musica_id) references musicas(id)
);

create table playlist_musicas
(
	playlist_id int,
    musica_id int,
    
    primary key(playlist_id, musica_id),
    foreign key(playlist_id) references playlists(id),
    foreign key(musica_id) references musicas(id)
);

create table playlist_seguidores
(
	usuario_id int,
    playlist_id int,
    
	primary key(usuario_id, playlist_id),
    foreign key(usuario_id) references usuarios(id),
    foreign key(playlist_id) references playlists(id)
);

create table musica_seguidores
(
	usuario_id int,
    musica_id int,
    
    primary key(usuario_id, musica_id),
    foreign key(usuario_id) references usuarios(id),
    foreign key(musica_id) references musicas(id)
);