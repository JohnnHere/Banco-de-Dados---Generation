create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
bemPassado varchar(255),
malPassado varchar(255),
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
descrição varchar (1000),
preço double,
pesoEmKg double,
primary key (id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

insert into  tb_categorias (bemPassado, malPassado) values ('sim', 'não');
insert into  tb_categorias (bemPassado, malPassado) values ('não', 'sim');
insert into  tb_categorias (bemPassado, malPassado) values ('no ponto', 'no ponto');
insert into  tb_categorias (bemPassado, malPassado) values ('muito', 'nada');
insert into  tb_categorias (bemPassado, malPassado) values ('nada', 'muito');

insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Picanha','Corte nobre', 120, 1, 3);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Frango a passarinho','Parte com pouca gordura', 15, 1, 1);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Coxa','Coxa do frango', 15, 1, 4);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Coxa com sobrecoxa','Parte do frango muito gordurosa', 40, 3, 3);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Peito de frango','Pouca gordura', 80, 4, 5);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Coxão duro','Carne dura', 120, 2, 2);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Coxão mole','Carne macia', 60, 1, 2);
insert into  tb_produtos (nome, descrição, preço, pesoEmKg, categorias_id) values ('Paleta','Carne vermelha com muita gordura', 40, 1, 3);

select * from tb_produtos where preço > 50;

select * from tb_produtos where preço between 50 and 150;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id
where categorias_id = 3;
