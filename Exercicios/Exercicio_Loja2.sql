create database loja2;
use loja2;
create table categoria(
id bigint auto_increment,
Departamento varchar (30),
Promoção varchar(3),
Estoque varchar(3),
primary key(id)
);
insert into categoria (Departamento,Promoção,Estoque)
values
("Decoração","Sim","Sim"),
("Material de Construção","Sim","Sim"),
("Ferramentas","Não","Sim"),
("Produto essencial","Não","Não"),
("Jardim","Sim","Não");

/*Tabela 2*/

create table produtos(
id bigint (5) auto_increment,
Código int(4),
Nome varchar (25) not null,
Marca varchar(20),
Fornecedor varchar (25),
Preço decimal(6,2),
categoria_id bigint not null,

primary key(id),
foreign key(categoria_id) references categoria(id)
);

/*Inserir dados da tabela 2 */

insert into produtos(Código,Nome,Marca,Fornecedor,Preço,categoria_id)
values
("1256","Luminária","Luuz","Granstore","452.99",1),
("2563","Torneira","Aqqua","Permatti","352.99",4),
("3596","Jogo de chaves","Fritt","Fiotex","780.99",3),
("1452","Mangueira","Equation","Cromos","80.99",4),
("7533","Suporte de banheiro","Sontt","Permatti","125.89",1),
("0018","Furadeira","Dexter","Dexter","350.99",3),
("7854","Lampada","Luux","Granstore","7.99",4),
("9685","Tinta","Coral","Coral","121.99",2),
("1236","Porcelanato","Porc","House","32.99",2),
("7452","Lixeiras","Pratice","Gramp","29.99",4),
("4512","Armario","MadeiraFinn","Maden","652.99",4),
("9635","Janela","Home","Blintex","530.99",2),
("4521","Porta","Home","Blintex","890.99",2),
("0322","Forro","plastice","Housetime","49.99",2),
("3254","Tomada","Radiol","EletricLou","2.99",4);


select * from produtos where preço>500;
select * from produtos where preço between 250 and 500;
select * from produtos where nome like "P%";
select * from produtos
	inner join categoria on categoria.id=produtos.categoria_id;

select produtos.nome, produtos.marca, produtos.preço, categoria.Departamento 
from produtos inner join categoria on categoria.id= produtos.categoria_id where categoria.departamento like"pro%";

