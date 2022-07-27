create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255),
arma varchar(255),
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
raça varchar(255),
ataque int,
defesa int,
primary key (id),
classe_id bigint,
foreign key (classe_id) references tb_classe(id)
);

insert into  tb_classe (nome, arma) values ('Thief','Dagger');
insert into  tb_classe (nome, arma) values ('Dark Wizard','Staff');
insert into  tb_classe (nome, arma) values ('Paladin','Hammer');
insert into  tb_classe (nome, arma) values ('Warrior','Sword');
insert into  tb_classe (nome, arma) values ('Archer','Bow');

insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('João','humano', 2000, 700, 2);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('bruna','elfa', 3000, 500, 1);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('cinthia','humana', 2300,3000, 4);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('maria','anã', 2500, 2000, 3);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('vagner', 'humano', 2000,700, 5);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('bruno','humano', 3000, 500, 2);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('orlando','elfo', 2300,3000, 3);
insert into  tb_personagem (nome, raça, ataque, defesa, classe_id) values ('mário','anão', 2500, 2000, 4);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like '%c%';

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_classe.nome = 'Dark Wizard';