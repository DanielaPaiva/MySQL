create database db_pizzaria_legal;
use  db_pizzaria_legal;
create table tb_categoria(
id bigint auto_increment,
Tipo  varchar(35),
Promoção varchar(3),
Tamanho varchar(35),
primary key(id)
);

insert into tb_categoria(Tipo, Promoção, Tamanho)
values
("Calabresa","Sim","Grande"),
("Mussarela","Sim","Grande"),
("Frango","Não","Grande"),
("Vegetariana", "Não","Broto"),
("Outros","Não", "Broto");

/*Tabela 2*/

create table tb_pizza(
id bigint auto_increment,
Nome varchar (35) not null,
Refri varchar (3),
Preço decimal(4,2),
Pagamento varchar (15),
Entrega varchar (3),
categoria_id bigint not null,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)

);
 insert into  tb_pizza(Nome, Refri, Preço, Pagamento,Entrega, categoria_id)
 values
 ("Calabresa", "Sim",28.00,"Cartão", "Sim",1),
 ("Quatro queijos", "Não",32.50, "Cartão", "Sim",2),
 ("Caipira","Não",30.00,"Dinheiro","Não",3),
 ("Escarola","Não",30.00,"Cartão","Sim",4),
 ("Brigadeiro","Sim",33.00,"Cartão", "Sim",5),
 ("Carne seca", "Não",32.50, "Cartão", "Sim",5),
 ("Toscana", "Sim",29.00,"Cartão", "Sim",1),
 ("Msrguerita", "Não",28.00, "Cartão", "Sim",2);

/*Select*/
select * from tb_pizza where Preço>30;
select * from tb_pizza where Preço between 29 and 31;
select * from tb_pizza where nome like "%ca%";
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id;
select  tb_pizza.Nome,tb_pizza.Preço,tb_categoria.Tamanho,tb_categoria.Promoção from tb_pizza
	inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id;


 
