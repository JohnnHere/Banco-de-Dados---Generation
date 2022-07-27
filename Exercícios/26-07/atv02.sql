create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
vegetariana boolean,
salgada boolean,
primary key (id)
);

create table tb_pizzas(
id bigint auto_increment,
nome varchar(255),
descrição varchar (1000),
preço double,
tamanho varchar(255),
primary key (id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

insert into  tb_categorias (vegetariana, salgada) values (false, true);
insert into  tb_categorias (vegetariana, salgada) values (true, false);
insert into  tb_categorias (vegetariana, salgada) values (true, false);
insert into  tb_categorias (vegetariana, salgada) values (false, true);
insert into  tb_categorias (vegetariana, salgada) values (true, true);

insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Calabresa','Calabresa com cebola', 40, 'grande', 1);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Mussarela','Apenas mussarela', 40, 'grande', 6);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Quatro Queijos','provolone, prato, mussarela e catupiry', 48, 'grande', 6);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Toscana','Calabresa com queijo e cebola', 48, 'grande', 1);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Portuguesa', 'Ovo, cebola e queijo', 55, 'grande', 1);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Camarão','Camarão com catupiry', 60, 'grande', 1);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Brigadeiro','Granulado com chocolate', 70, 'grande', 3);
insert into  tb_pizzas (nome, descrição, preço, tamanho, categorias_id) values ('Prestígio','Coco com chocolate', 70, 'grande', 3);

select * from tb_pizzas where preço > 45;

select * from tb_pizzas where preço between 50 and 100;

select * from tb_pizzas where nome like '%m%';

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id
where categorias_id = 3;
