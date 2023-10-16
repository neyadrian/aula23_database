create database eeep;
use eeep;

CREATE TABLE usuarios (
	id integer auto_increment primary key,
    nomeUsuario varchar(45),
    emailUsuario varchar(45),
    dtnascimento varchar(45),
    senha varchar(32),
    ultimoAcesso datetime
);

CREATE TABLE categorias (
	id integer auto_increment primary key,
    nome varchar(45),
    dtCadastro date
);

CREATE TABLE posts (
	id integer auto_increment primary key,
    idCategoria int,
    idAutor int,
    tituloPost varchar(250),
    conteudo text,
    dtPostagem date,
    flativo char(1),
    img varchar(150)
);

CREATE TABLE comentarios (
	id integer auto_increment primary key,
    idPost int,
    dtComentario date,
    conteudo text,
    dataAlteracao date
);
