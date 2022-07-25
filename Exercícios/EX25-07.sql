#Exercício01

CREATE database db_rh;

use db_rh;

#Exercício02

CREATE table tb_colaboradores(
id bigint auto_increment,
nome varchar(255),
idade int,
cargo varchar(255), 
salario int,
descricao varchar(1000),
primary key(id)
);

#Exercício03

insert into tb_colaboradores (nome, idade, cargo, salario, descricao) 
values ('João', '26', 'Programador', '4050', 'Programador Java Junior.');

insert into tb_colaboradores (nome, idade, cargo, salario, descricao) 
values ('Aline', '28', 'Designer', '4050', 'Designer da empresa.');

insert into tb_colaboradores (nome, idade, cargo, salario, descricao) 
values ('Márcia', '52', 'Coordenadora', '5000', 'Coordenadora Senior.');

insert into tb_colaboradores (nome, idade, cargo, salario, descricao) 
values ('Paulo', '32', 'Auxiliar Administrativo', '1800', 'Auxilia nos processos da empresa.');

insert into tb_colaboradores (nome, idade, cargo, salario, descricao) 
values ('Fernando', '24', 'Estagiário', '1500', 'Programador Java Estagiário.');

#Exercício04
SELECT * from tb_colaboradores
WHERE salario > 2000;

#Exercício05
SELECT * from tb_colaboradores
WHERE salario < 2000;

#Exercício06
UPDATE tb_colaboradores
SET nome = 'Ricardo'
WHERE id = 4;