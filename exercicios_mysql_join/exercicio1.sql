create database db_generation_game_online;

use db_generation_game_online;

-- determine 3 atributos da classe.
create table tb_classe(
id bigint not null auto_increment,
classe varchar(255),
elemento varchar(255),
primary key (id)
);

-- popule a tabela classe com até 5 dados.
insert into tb_classe (classe, elemento) values ("mago", "terra");
insert into tb_classe (classe, elemento) values ("arqueiro", "água");
insert into tb_classe (classe, elemento) values ("assassino", "eletro");
insert into tb_classe (classe, elemento) values ("paladino", "fogo");
insert into tb_classe (classe, elemento) values ("bardo", "ar");

select * from tb_classe;

-- determine 5 atributos do personagem.
create table tb_personagem(
id bigint not null auto_increment,
nome varchar(255),
vida int not null,
ataque int not null,
defesa int not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

-- popule a tabela personagem com até 8 dados.
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Nemora", 4760, 2000, 950, 2);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Alucard", 5280, 3020, 800, 4);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Lucius", 8350, 1100, 1950, 2);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Safira", 950, 8000, 600, 5);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Ravena", 1600, 100, 1700, 3);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Nubis", 4015, 2030, 950, 1);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Kaeya", 3004, 700, 2000, 3);
insert into tb_personagem (nome, vida, ataque, defesa, classe_id) values ("Venti", 1312, 2000, 950, 5);

select * from tb_personagem;

-- faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;

-- faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa between 1000 and 2000;

-- faça um select utilizando LIKE buscando os personagens com a letra c.
select * from tb_personagem where nome like "%c%";

-- faça um um select com inner join entre tabela classe e personagem.
select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.classe_id;

-- faça um select onde traga todos os personagens de uma classe específica.
select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;