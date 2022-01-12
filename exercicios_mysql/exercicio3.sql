create database db_escola;

use db_escola;

-- determinar 5 atributos.
create table tb_estudantes(
	id bigint auto_increment,
	nome varchar(50) not null,
	nasc date not null,
	turma varchar(2) not null,
	periodo varchar(50) not null,
	nota decimal(2, 1) not null,	
	primary key (id)
);

-- popular a tabela com até 8 dados.
insert into tb_estudantes(nome, nasc, turma, periodo, nota) value("Frida", "2006-04-27", "3B", "Matutino", 5.7);
insert into tb_estudantes(nome, nasc, turma, periodo, nota) value("Aya", "2006-08-20", "3G", "Noturno", 6.5);
insert into tb_estudantes(nome, nasc, turma, periodo, nota) value("Vincent", "2007-02-03", "2I", "Noturno", 7.5);
insert into tb_estudantes(nome, nasc, turma, periodo, nota) value("Yoshi", "2007-12-12", "2A", "Matutino", 8.0) ;
insert into tb_estudantes(nome, nasc, turma, periodo, nota) value("Michelangelo", "2008-12-09", "1C", "Vespertino", 9.5);
insert into tb_estudantes(nome, nasc, turma, periodo, nota) value("Claude", "2008-08-18", "1H", "Vespertino", 3.0);

-- retorne o/as estudantes com a nota maior do que 7.
select * from tb_estudantes where nota > 7;

-- retorne o/as estudantes com a nota menor do que 7.
select * from tb_estudantes where nota < 7;

-- atualize um dado da tabela.
update tb_estudantes set nota = 5.0 where id = 6;

select * from tb_estudantes;
