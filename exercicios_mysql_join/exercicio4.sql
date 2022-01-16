create database db_cidade_das_frutas;

use db_cidade_das_frutas;

-- determine 3 atributos da categoria.
create table tb_categoria(
id bigint not null auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- popule a tabela categoria com até 5 dados.
insert into tb_categoria (categoria, ativo) values ("fruta", true);
insert into tb_categoria (categoria, ativo) values ("verdura", true);
insert into tb_categoria (categoria, ativo) values ("grão", true);

select * from tb_categoria; 

-- determine 5 atributos de produtos.
create table tb_produtos(
id bigint not null auto_increment,
produto varchar(255) not null,
kg int not null,
valor decimal(5,2) not null,
quantidade int not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- popule a tabela produtos com até 8 dados.
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("banana nanica", 1, 3.78, 20, 1);
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("banana prata", 2, 12.00, 28, 1);
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("abacate", 6, 54.00, 48, 1);
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("abobrinha", 3, 9.90, 13, 2);
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("berinjela", 5, 64.50, 36, 2);
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("quinoa", 1, 31.90, 100, 3);
insert into tb_produtos (produto, kg, valor, quantidade, categoria_id) values ("grão de bico", 1, 10.29, 63, 3);

select * from tb_produtos;

-- faça um select trazendo produtos com o valor maior do que 50 reais.
select * from tb_produtos where valor > 50.00;

-- faça um select trazendo produtos com valor entre 3 e 60 reais.
select * from tb_produtos where valor between 3.00 and 60.00;

-- faça um select utilizando LIKE buscando os produtos com a letra c.
select * from tb_produtos where produto like "%c%";

-- faça um um select com inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

-- faça um select onde traga todos os produtos de uma categoria específica.
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;