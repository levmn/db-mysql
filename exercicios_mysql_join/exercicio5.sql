create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

-- determine 3 atributos da categoria.
create table tb_categoria(
id bigint not null auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- popule a tabela categoria com até 5 dados.
insert into tb_categoria (tipo, ativo) values ("ferramentas", true);
insert into tb_categoria (tipo, ativo) values ("pintura", true);
insert into tb_categoria (tipo, ativo) values ("construção", true);
insert into tb_categoria (tipo, ativo) values ("decoração", true);
insert into tb_categoria (tipo, ativo) values ("climatização", true);

select * from tb_categoria;

-- determine 5 atributos de produtos.
create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
valor decimal (5, 2) not null,
quantidade int not null,
datacadastro timestamp,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- popule a tabela produtos com até 8 dados.
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("pé de cabra", 59.90, 3, current_date(), 1);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("máquina de solda", 559.90, 5, current_date(), 1);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("cimento", 29.90, 18, current_date(), 3);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("tinta acrílica azul", 109.90, 7, current_date(), 2);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("argamassa", 37.90, 11, current_date(), 3);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("climatizador de ar", 349.90, 14, current_date(), 5);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("cortina", 89.90, 38, current_date(), 4);
insert into tb_produtos (nome, valor, quantidade, datacadastro, categoria_id) values ("chave de fenda", 9.50, 54, current_date(), 1);

select * from tb_produtos;

-- faça um select trazendo produtos com o valor maior do que 50 reais.
select * from tb_produtos where valor > 50.00;

-- faça um select trazendo produtos com valor entre 3 e 60 reais.
select * from tb_produtos where valor between 3.00 and 60.00;

-- faça um select utilizando LIKE buscando os produtos com a letra c.
select * from tb_produtos where nome like "%c%";

-- faça um um select com inner join entre tabela categoria e produto.
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

-- faça um select onde traga todos os produtos de uma categoria específica.
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;
