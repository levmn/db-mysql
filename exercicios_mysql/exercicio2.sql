create database db_ecommerce;

use db_ecommerce;

-- determinar 5 atributos.
create table tb_produtos(
id bigint auto_increment,
nome varchar(50) not null,
marca varchar(50) not null,
quant int not null,
categoria varchar(50) not null,
valor decimal(6, 2) not null,	
primary key (id)
);

-- popular a tabela com até 8 dados.
insert into tb_produtos(nome, marca, quant, categoria, valor) value("Nintendo 3DS", "Nintendo", 3, "Video Game", 625.50);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("PS4", "PlayStation", 6, "Video Game", 2999.99);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("Animal Crossing: New Horizons", "Nintendo", 7, "Jogo Switch", 213.30);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("Monkey D Luffy", "Artshow", 2, "Action Figure", 379.80);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("Yakuza O", "Sega", 2, "Jogo PS4", 249.90);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("Nintendo Switch", "Nintendo", 5, "Video Game", 1889.89);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("Sanji", "Artshow", 3, "Action Figure", 200.00);
insert into tb_produtos(nome, marca, quant, categoria, valor) value("The Legend Of Zelda: Breath of The Wild", "Nintendo", 10, "Jogo Switch", 189.99);

--  retorne os produtos com o valor maior do que 500.
select * from tb_produtos where valor > 500;

-- retorne os produtos com o valor menor do que 500.
select * from tb_produtos where valor < 500;

--  atualize um dado da tabela.
update tb_produtos set quant = 1 where id = 4;

select * from tb_produtos;