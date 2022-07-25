CREATE database db_rpg;

use db_rpg;

CREATE table tb_classe(
id bigint auto_increment,
classe varchar(255), 
arma varchar(255),
descricao varchar(1000),
primary key(id)
);

CREATE table tb_personagem(
id bigint auto_increment,
nome varchar(255), 
raça varchar(255),
ataque double,
defesa double,
hp double,
primary key(id),
classe_id bigint,
foreign key (classe_id) references tb_classe(id)
);

insert into tb_classe (classe, arma, descricao) values ('Dark Wizard', 'Staff', 'Cast offensive spells');
insert into tb_classe (classe, arma, descricao) values ('Warrior', 'Sword', 'Attack and deffend in good terms');
insert into tb_classe (classe, arma, descricao) values ('White Mage', 'Staff', 'Heal and protect allies');

insert into tb_personagem (nome, raça, ataque, defesa, hp, classe_id) values ('John', 'Elf', '1000', '600', '1000', 1);
insert into tb_personagem (nome, raça, ataque, defesa, hp, classe_id) values ('Orwell', 'Human', '600', '1500', '2000', 2);
insert into tb_personagem (nome, raça, ataque, defesa, hp, classe_id) values ('Zac', 'Demon', '800', '1200', '1800', 3);

select * from tb_classe;

select * from tb_personagem;