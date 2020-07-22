create database rh2;
use rh2;
create table cargo(
id bigint auto_increment,
HoraExtra boolean,
Lider varchar (35),
Terceirizado varchar(3),
primary key(id)
);
insert into cargo (HoraExtra, Lider, Terceirizado) 
values
(1,"Tatiana","sim"),
(0,"João","sim"),
(1,"Manoel","não"),
(0,"Vanessa","não"),
(0,"Carol","sim");

/*Tabela 2*/
use rh2;
create table funcionarios(
id bigint (5) auto_increment,
Nome varchar (30) not null,
Setor varchar(15),
Telefone varchar(9),
Email varchar(35),
Localização varchar (35),
Salario decimal(8),
cargo_id bigint not null,

primary key(id),
foreign key(cargo_id) references cargo(idfuncionarios)
);

/*Inserir dados da tabela 2 */

insert into funcionarios
(Nome, Setor, Telefone, Email,Localização, Salario, cargo_id)
values
("Luiza","Administrativo","1515-2160", "luiza45@gmail.com", "São Paulo","3550.00",1),
("Cristhian","Atendimento","4521-0012", "cris@outlook.com", "Curitiba","1250.00",2),
("Lucas","Marketing","7852-0120", "lucasouz@hotmail.com", "Curitiba","4100.00",3),
("Mayara","Administrativo","3256-0125", "may.guedes@gmail.com", "Curitiba","3550.00",1),
("Bruno","Comercial","4521-7854", "brunols@outlook.com", "São Paulo","5000.00",4),
("Leandro","TI","4002-8922", "leo@hotmail.com", "Rio de janeiro","5590.00",5),
("Camila","Administrativo","4863-2160", "camilaoli@gmail.com", "São Paulo","3550.00",1),
("Isabel","RH","1450-9038", "isa@outlook.com", "São Paulo","5000.00",1),
("Geraldo","Atendimento","4652-0180", "gerald@hotmail.com", "São Paulo","1250.00",2),
("Maria","Administrativo","3256-0125", "may.guedes@gmail.com", "Curitiba","3550.00",1),
("Thiago","Comercial","4521-7854", "brunols@outlook.com", "Rio de janeiro","5000.00",4),
("Soraia","Marketing","4002-8922", "leo@hotmail.com", "Rio de janeiro","4100.00",3),
("Marcela","TI","4863-2160", "camilaoli@gmail.com", "São Paulo","5590.00",5),
("Francine","RH","1450-9038", "isa@outlook.com", "São Paulo","5000.00",1),
("Mauro","Atendimento","4652-0180", "gerald@hotmail.com", "São Paulo","1250.00",2);

select * from funcionarios where salario>2000;

select * from funcionarios where salario between 1000 and 2000;

select * from funcionarios where Nome like "C%";

select * from funcionarios
	inner join cargo on cargo.id= funcionarios.cargo_id;

select funcionarios.nome, funcionarios.setor, cargo.lider, cargo.Terceirizado from funcionarios 
	inner join cargo on cargo.id= funcionarios.cargo_id where funcionarios.setor like "adm%";
