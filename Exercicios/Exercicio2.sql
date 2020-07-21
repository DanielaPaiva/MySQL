create database loja;
use loja;
create table produtos(
id bigint (5) auto_increment,
Código int(4),
Nome varchar (25) not null,
Marca varchar(20),
Fornecedor varchar (25),
Preço decimal(6,2),
primary key(id)
);

insert into produtos(Código,Nome,Marca,Fornecedor,Preço)
values
("1256","Luminária","Luuz","Granstore","452.99"),
("2563","Torneira","Aqqua","Permatti","352.99"),
("3596","Jogo de chaves","Fritt","Fiotex","780.99"),
("1452","Mangueira","Equation","Cromos","80.99"),
("7533","Suporte de banheiro","Sontt","Permatti","125.89"),
("0018","Furadeira","Dexter","Dexter","350.99"),
("7854","Lampada","Luux","Granstore","7.99"),
("9685","Tinta","Coral","Coral","121.99"),
("1236","Porcelanato","Porc","House","32.99"),
("7452","Lixeiras","Pratice","Gramp","29.99"),
("4512","Armario","MadeiraFinn","Maden","652.99"),
("9635","Janela","Home","Blintex","530.99"),
("4521","Porta","Home","Blintex","890.99"),
("0322","Forro","plastice","Housetime","49.99"),
("3254","Tomada","Radiol","EletricLou","2.99");


select * from produtos;
select * from produtos where Preço>500;
select * from produtos where Preço<500;
update produtos  set Nome="Porta de madeira", Preço="875.99" where id=13;

