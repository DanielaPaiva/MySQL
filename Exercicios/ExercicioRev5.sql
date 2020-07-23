create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
create table tb_categoria(
id bigint auto_increment,
Departamento varchar (30),
Promoção varchar(3),
Estoque varchar(3),
primary key(id)
);
insert into tb_categoria(Departamento, Promoção,Estoque)
values
("Tinta","Sim","Sim"),
("Portas e Janelas","Sim","Não"),
("Iluminação","Não","Sim"),
("Hidraulica","Não","Sim"),
("Ferramentas","Sim","Sim");

/*Tabela2*/
create table tb_produto(
id bigint auto_increment,
codigo int,
Produto varchar(35) not null,
Preço decimal(8,2),
Marca varchar(35),
Qnt int,
categoria_id bigint not null,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_produto(codigo, Produto,Preço,Marca,Qnt,categoria_id)
values
(0231,"Rolo de tinta",9.00,"Tigre",5,1),
(7535,"Janela",289.90,"Tlinex",2,2),
(0011,"Luminaria",80.00,"Luzwes",7,3),
(7411,"Caixa d'agua",1897.00,"Aqqa",5,4),
(9856,"Alicate",29.00,"Broc",4,5),
(4231,"Massa Corrida",79.00,"Suvinil",8,1),
(2013,"Tinta acrilica",139.90,"Coral",4,1),
(5429,"Tubo PVC",6.10,"Tigre",14,4);
/*Select*/
select * from tb_produto where preço>50;
select * from tb_produto where preço between 5 and 60;
select * from tb_produto where produto like"%r%";
select * from tb_produto 
	inner join tb_categoria on tb_categoria.id= tb_produto.categoria_id;
select  tb_produto. Codigo, tb_produto.Produto,tb_produto.Preço, tb_categoria.Departamento from tb_produto
	inner join tb_categoria on tb_categoria.id= tb_produto.categoria_id where tb_categoria.departamento="Tinta";

