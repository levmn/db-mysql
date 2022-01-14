use db_estoque;

create table tb_marcas(
id bigint(5) auto_increment,
nome varchar(20) not null,
ativo boolean,
primary key (id)
);

insert into tb_marcas(nome, ativo) values ("nike", true);
insert into tb_marcas(nome, ativo) values ("red nose", false);

update tb_marcas set ativo = true where id = 2;

insert into tb_marcas(nome, ativo) values ("gucci", true);
insert into tb_marcas(nome, ativo) values ("dior", true);
insert into tb_marcas(nome, ativo) values ("balenciaga", true);

-- select * from tb_marcas;

create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal(10, 2),
marca_id bigint not null,
primary key (id),
foreign key (marca_id) references tb_marcas (id)
);

insert into tb_produtos (nome, preco, marca_id) values ("Camisa", 22.99, 1);

delete from tb_produtos where id = 2;

insert into tb_produtos (nome, preco, marca_id) values ("Tênis", 2000.00, 5);
insert into tb_produtos (nome, preco, marca_id) values ("Bolsa", 10000.00, 3);
insert into tb_produtos (nome, preco, marca_id) values ("Cardigan", 8000.00, 4);
insert into tb_produtos (nome, preco, marca_id) values ("Boné", 150.00, 1);

-- inner join: cruza tabelas

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;


