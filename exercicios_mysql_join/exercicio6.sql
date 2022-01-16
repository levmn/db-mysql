create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

-- determine 3 atributos da categoria.
create table tb_categoria(
id bigint not null auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- popule a tabela categoria com até 5 dados.
insert into tb_categoria (categoria, ativo) values ("técnico", true);
insert into tb_categoria (categoria, ativo) values ("graduação", true);
insert into tb_categoria (categoria, ativo) values ("pós-graduação", true);
insert into tb_categoria (categoria, ativo) values ("doutorado", true);
insert into tb_categoria (categoria, ativo) values ("mestrado", true);

select * from tb_categoria;

-- determine 5 atributos de curso.
create table tb_curso(
id bigint not null auto_increment,
nome varchar(255) not null,
modalidade varchar(255) not null,
período varchar(255) not null,
valor decimal(5, 2) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- popule a tabela curso com até 8 dados.
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("técnologia da informação", "ead", "noturno", 48.90, 2);
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("gastronomia", "presencial", "matutino", 61.00, 1); 
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("artes visuais", "semi-presencial", "noturno", 54.00, 2);
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("design gráfico", "ead", "noturno", 38.99, 1); 
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("história da arte", "ead", "noturno", 49.99, 3);
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("ciências políticas", "presencial", "matutino", 87.00, 5);
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("filosofia", "semi-presencial", "matutino", 93.99, 4); 
insert into tb_curso (nome, modalidade, período, valor, categoria_id) values ("arte-educação", "presencial", "matutino", 24.00, 3); 

select * from tb_curso;

-- faça um select trazendo cursos com o valor maior do que 50 reais.
select * from tb_curso where valor > 50.00;

-- faça um select trazendo cursos com valor entre 3 e 60 reais.
select * from tb_curso where valor between 3.00 and 60.00;

-- faça um select utilizando LIKE buscando os cursos com a letra t.
select * from tb_curso where nome like "%t%";

-- faça um um select com inner join entre tabela categoria e curso.
select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

-- faça um select onde traga todos os cursos de uma categoria específica.
select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 3;
