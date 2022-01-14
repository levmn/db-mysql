-- criando um banco de dados
create database db_quitanda; 

-- determina qual db eu vou usar na tabela
use db_quitanda;

-- criando tabela
-- not null significa que o elemento não pode ser nulo
-- 255 é o padrão de varchar, é o limite de caracteres
-- primary key é o que vai conectar as tabelas umas as outras

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null, 
quantidade int,
preco decimal not null,
primary key (id)
);

-- alter table altera a estrutura
-- insert insere dados

INSERT INTO tb_produtos(nome, quantidade, preco) values ("kiwi", 500, 2.99);
INSERT INTO tb_produtos(nome, quantidade, preco) values ("amora", 400, 6.00);

alter table tb_produtos modify preco decimal(6, 2);

INSERT INTO tb_produtos(nome, quantidade, preco) values ("cereja", 800, 1.99);
INSERT INTO tb_produtos(nome, quantidade, preco) values ("abacate", 100, 5.98);

-- selecionar informação específica para impressão
select * from tb_produtos;

select nome from tb_produtos;

select nome, preco from tb_produtos;

select nome, preco from tb_produtos where preco >= 5.00;

update tb_produtos set preco = 6.00 where id = 5;

delete from tb_produtos where id = 2;

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao; 