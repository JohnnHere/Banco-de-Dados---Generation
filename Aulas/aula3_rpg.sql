create database db_rpg;

use db_rpg;

create table tb_classe(
id bigint auto_increment,
nome varchar(255),
arma varchar(255),
descricao varchar(1000),
primary key(id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
raca varchar(255),
ataque double,
defesa double,
hp int,
primary key (id),
classe_id bigint,
foreign key (classe_id) references tb_classe(id)
);

select * from tb_classe;
select * from tb_personagem;

insert into  tb_classe (nome, arma, descricao) values ('ladrao','adaga','rouba');
insert into  tb_classe (nome, arma, descricao) values ('mago(a)','cajado','solta magia');
insert into  tb_classe (nome, arma, descricao) values ('oaladido','marreta','é tudo pela fé');


insert into  tb_personagem (nome, raca, ataque, defesa, hp,classe_id) values ('vagner','humano', 2000,700, 1000,2);
insert into  tb_personagem (nome, raca, ataque, defesa, hp,classe_id) values ('bruna','maga', 3000,500, 1000,3);
insert into  tb_personagem (nome, raca, ataque, defesa, hp, classe_id) values ('cinthia','guerreira', 2300,3000, 1000,2);
insert into  tb_personagem (nome, raca, ataque, defesa, hp) values ('maria','guerreira', 2500,2000, 1000);

update tb_clsse set nome = "paladino" where id = 3;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem left join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome , tb_personagem.raca, tb_classe.nome from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.nome, tb_classe.descricao from tb_personagem inner join 
tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.nome = 'mago(a)';



