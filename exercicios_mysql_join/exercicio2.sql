create database db_pizzaria_legal;

use db_pizzaria_legal;

-- determine 3 atributos da categoria.
create table tb_categoria(
id bigint not null auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
primary key (id)
);

-- popule a tabela categoria com até 5 dados.
insert into tb_categoria (tipo, tamanho) values ("salgada", "broto");
insert into tb_categoria (tipo, tamanho) values ("salgada", "média");
insert into tb_categoria (tipo, tamanho) values ("salgada", "grande");
insert into tb_categoria (tipo, tamanho) values ("doce", "broto");
insert into tb_categoria (tipo, tamanho) values ("doce", "média");

select * from tb_categoria;

-- determine 5 atributos de pizza.
create table tb_pizza(
id bigint not null auto_increment,
sabor varchar(255) not null,
borda varchar(255),
preco decimal(5,2) not null,
disponivel boolean not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- popule a tabela pizza com até 8 dados.
insert into tb_pizza (sabor, borda, preco, disponivel, categoria_id) values ("mussarela", "catupiry", 46.00, 9, 3);
insert into tb_pizza (sabor, borda, preco, disponivel, categoria_id) values ("brócolis com queijo", null, 35.00, 11, 2);
insert into tb_pizza (sabor, borda, preco, disponivel, categoria_id) values ("chocolate com m&m", null, 15.00, 0, 4);
insert into tb_pizza (sabor, borda, preco, disponivel, categoria_id) values ("4 queijos", "cheddar", 20.00, 7, 1);
insert into tb_pizza (sabor, borda, preco, disponivel, categoria_id) values ("toscana", "catupiry", 46.00, 10, 2);
insert into tb_pizza (sabor, borda, preco, disponivel, categoria_id) values ("chocolate com morango", "chocolate belga", 50.00, 4, 5);

select * from tb_pizza;

-- faça um select trazendo as pizzas com o valor maior do que 45 reais.
select * from tb_pizza where preco > 45.00;

-- faça um select trazendo as pizzas com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29.00 and 60.00; 

-- faça um select utilizando LIKE buscando as pizzas com a letra c.
select * from tb_pizza where sabor like "%c%";

-- faça um um select com inner join entre tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

-- faça um select onde traga todos as pizzas de uma classe específica.
select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;
