create database db_rh;

use db_rh;

-- determinar 5 atributos.
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(50) not null,
nasc date not null,
cargo varchar(50) not null,
sal decimal(6, 3) not null,
cargaH int not null,
primary key (id)
);

-- popular a tabela com até 5 dados.
insert into tb_funcionarios(nome, nasc, cargo, sal, cargaH) value("Michael Scott", "1965-03-15", "Gerente", 10.000, 8);
insert into tb_funcionarios(nome, nasc, cargo, sal, cargaH) value("Dwight Schrute", "1970-01-20", "Diretor de vendas", 3.000, 8);
insert into tb_funcionarios(nome, nasc, cargo, sal, cargaH) value("Pam Beesly", "1979-03-25", "Recepcionista", 1.600, 8);
insert into tb_funcionarios(nome, nasc, cargo, sal, cargaH) value("Jim Halpert", "1978-10-01", "Auxiliar de vendas", 2.500, 8);
insert into tb_funcionarios(nome, nasc, cargo, sal, cargaH) value("Ryan Howard", "1979-05-05", "Estagiário", 1.200, 6);

-- retorne os funcionários com o salário maior do que 2000.
select * from tb_funcionarios where sal > 2.000;

-- retorne os funcionários com o salário menor do que 2000.
select * from tb_funcionarios where sal < 2.000;

--  atualize um dado da tabela.
update tb_funcionarios set sal = 1.300 where id = 5;

select * from tb_funcionarios;
