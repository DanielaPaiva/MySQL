create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
create table tb_categoria(
id bigint auto_increment,
Categoria varchar(35),
Promoção varchar(3),
Professor varchar(35),
primary key(id)
);
insert into tb_categoria(Categoria,Promoção,Professor)
values
("TI","Sim","Leandro"),
("Finanças","Não","Paula"),
("Estrategia","Não","Roberto"),
("Saúde","Sim","Marina"),
("Música","Não","Alex");

/*Tabela 2*/
create table tb_curso(
id bigint auto_increment,
Curso varchar (35) not null,
Preço decimal(5,2),
Modelo varchar(15),
Horas int,
Modulos int,
categoria_id bigint not null,

primary key (id),
foreign key(categoria_id)references tb_categoria(id)
);
 insert into tb_curso(Curso, Preço, Modelo, Horas, Modulos, categoria_id)
values
("Rede e segurança", 75.00, "Presencial",45,3,1),
("Analise Financeira",45.90,"Online",30,2,2),
("Estrategia",89.90,"Presencial",50,4,3),
("Nutrição esportiva",45.90,"Online",30,2,4),
("Produção Musical",45.90,"Presencial",30,2,5),
("Linux",63.99,"Online",35,3,1),
("Macroeconomia",75.89,"Online",35,3,2),
("Composição instrumental",45.90,"Presencial",30,2,5);

/*Select*/
select * from tb_curso where Preço>50;
select * from tb_curso where Preço between 20 and 60;
select * from tb_curso where Curso like "%n%";
select * from tb_curso
	inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id;
select tb_curso.Curso,tb_curso.Preço,tb_curso.Modelo, tb_categoria.Categoria, tb_categoria.Professor from tb_curso
	inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id;
select tb_curso.Curso,tb_curso.Preço,tb_curso.Modelo, tb_categoria.Categoria, tb_categoria.Professor from tb_curso
	inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id where tb_categoria.Categoria ="TI";

