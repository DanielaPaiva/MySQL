create database exEscola;
use exEscola;
create table alunos(
id bigint (5) auto_increment,
Nome varchar (30) not null,
Turno varchar(15),
Serie int (2),
Professor varchar(30),
Nota int(2),
primary key (id)
);

insert into alunos
 (Nome,Turno, Serie,Professor, Nota)
values
("Amanda","Manhã","4","Aline","8"),
("Bianca","Manhã","4","Aline","8"),
("Juliana","Tarde","5","Roberto","5"),
("Luan","Manhã","4","Aline","7"),
("Ester","Manhã","8","Fernando","7"),
("Mariana","Manhã","7","Patricia","10"),
("Fabio","Manhã","4","Aline","9"),
("Rodrigo","Tarde","8","Fernando","9"),
("Danilo","Manhã","6","Marli","4"),
("Thiago","Tarde","4","Aline","6"),
("Fabiana","Tarde","5","Roberto","5"),
("Carlos","Tarde","6","Marli","7"),
("João","Manhã","7","Patricia","4"),
("Melissa","Tarde","8","Fernando","5"),
("Samara","Manhã","7","Patricia","4");

select *from alunos;
select * from alunos  where nota>=7;
select * from alunos  where nota<7;
update alunos set Nome="Matheus", Nota="6" where id=9;


