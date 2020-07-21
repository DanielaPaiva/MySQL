create database rh;
use rh;
create table funcionarios (
id bigint (5) auto_increment,
Nome varchar (30) not null,
Setor varchar(15),
Telefone varchar(9),
Email varchar(35),
Localização varchar (35),
Salario decimal(8),
primary key(id)
);


insert into funcionarios
(Nome, Setor, Telefone, Email,Localização, Salario)
values
("Luiza","Administrativo","1515-2160", "luiza45@gmail.com", "São Paulo","3550.00"),
("Cristhian","Atendimento","4521-0012", "cris@outlook.com", "Curitiba","1250.00"),
("Lucas","Marketing","7852-0120", "lucasouz@hotmail.com", "Curitiba","4100.00"),
("Mayara","Administrativo","3256-0125", "may.guedes@gmail.com", "Curitiba","3550.00"),
("Bruno","Comercial","4521-7854", "brunols@outlook.com", "São Paulo","5000.00"),
("Leandro","TI","4002-8922", "leo@hotmail.com", "Rio de janeiro","5590.00"),
("Camila","Administrativo","4863-2160", "camilaoli@gmail.com", "São Paulo","3550.00"),
("Isabel","RH","1450-9038", "isa@outlook.com", "São Paulo","5000.00"),
("Geraldo","Atendimento","4652-0180", "gerald@hotmail.com", "São Paulo","1250.00"),
("Maria","Administrativo","3256-0125", "may.guedes@gmail.com", "Curitiba","3550.00"),
("Thiago","Comercial","4521-7854", "brunols@outlook.com", "Rio de janeiro","5000.00"),
("Soraia","Marketing","4002-8922", "leo@hotmail.com", "Rio de janeiro","4100.00"),
("Marcela","TI","4863-2160", "camilaoli@gmail.com", "São Paulo","5590.00"),
("Francine","RH","1450-9038", "isa@outlook.com", "São Paulo","5000.00"),
("Mauro","Atendimento","4652-0180", "gerald@hotmail.com", "São Paulo","1250.00");




select * from funcionarios where salario>2000;
select * from funcionarios where salario<2000;
update  funcionarios set Salario="1500" where id=4;
select * from funcionarios;
