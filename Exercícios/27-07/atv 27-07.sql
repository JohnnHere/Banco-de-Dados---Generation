CREATE DATABASE db_blog_pessoal;

USE db_blog_pessoal;

CREATE TABLE tb_temas(
id bigint auto_increment,
descricao VARCHAR(1000),
primary key(id)
);

CREATE TABLE tb_usuarios(
id bigint auto_increment,
nome VARCHAR(255),
senha VARCHAR(255),
foto VARCHAR(100),
primary key(id)
);

CREATE TABLE tb_postagens(
id bigint auto_increment,
titulo VARCHAR(255),
texto VARCHAR(2000),
data DATE,
primary key(id),
temas_id bigint,
foreign key(temas_id) references tb_temas(id),
usuarios_id bigint,
foreign key(usuarios_id) references tb_usuarios(id)
);