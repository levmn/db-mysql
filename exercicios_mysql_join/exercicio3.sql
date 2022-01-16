create database db_farmacia_do_bem;

use db_farmacia_do_bem;

-- determine 3 atributos da categoria.
create table tb_categoria(
id bigint not null auto_increment,
tipo varchar(20) not null,
ativo boolean not null,
primary key (id)
);

-- popule a tabela categoria com até 5 dados.
insert into tb_categoria (tipo, ativo) values ("remédios", true);
insert into tb_categoria (tipo, ativo) values ("cosméticos", true);
insert into tb_categoria (tipo, ativo) values ("alimentício", true);
insert into tb_categoria (tipo, ativo) values ("energéticos", true);

select * from tb_categoria;

-- determine 5 atributos de produtos.
create table tb_produtos(
id bigint not null auto_increment,
nome varchar(100) not null,
quantidade int not null,
preco decimal(5,2) not null,
datacadastro timestamp,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- popule a tabela produtos com até 8 dados.
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("zolpidem", 25, 42.60, current_date(), 1);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("creme hidratante cerave", 10, 89.90, current_date(), 2);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("monster", 13, 7.99, current_date(), 4);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("barra de cereal nutry", 42, 3.90, current_date(), 3);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("neosaldina", 21, 21.90, current_date(), 1);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("maracugina", 10, 32.12, current_date(), 1);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("bepantol", 25, 34.99, current_date(), 1);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("base boca rosa", 25, 41.99, current_date(), 2);
insert into tb_produtos (nome, quantidade, preco, datacadastro, categoria_id) values ("redbull", 25, 8.49, current_date(), 4);

select * from tb_produtos;

-- faça um select trazendo produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50.00;

-- faça um select trazendo produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco between 3.00 and 60.00;

-- faça um select utilizando LIKE buscando os produtos com a letra b.
select * from tb_produtos where nome like "%b%";

-- faça um um select com inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

-- faça um select onde traga todos os produtos de uma categoria específica.
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;