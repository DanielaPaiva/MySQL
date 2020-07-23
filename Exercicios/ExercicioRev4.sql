create database db_cidade_das_carnes;
use db_cidade_das_carnes;
create table  tb_categoria(
id bigint auto_increment,
Promoçao varchar(3),
Tipo varchar(20),
Categoria varchar(12),
primary key(id)
);
insert into tb_categoria(Promoçao, Tipo, Categoria)
values
("Sim","Bovino","Segunda"),
("Não","Suino","Primeira"),
("Sim","Avino","Primeira"),
("Não","Peixe","Primeira"),
("Não","Outros","Primeira");

/*Tabela 2*/
create table tb_produto(
id bigint auto_increment,
Codigo int,
Nome varchar (35) not null,
Preço decimal(5,2),
Embalagem varchar(8),
Estoque varchar(3),
categoria_id bigint not null,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_produto(Codigo, Nome, Preço, Embalagem, Estoque, categoria_id)
values
(0001,"Coxão mole bovino",25.00,"Normal","Sim",1),
(1256,"Bisteca Suina",11.99,"Normal","Não",2),
(5896,"Linguiça",15.99,"Vacuo","Sim",2),
(7481,"Peito de Frango",9.99,"Normal","Sim",3),
(1236,"File de Merluza",12.99,"Vacuo","Não",4),
(2356,"Salsicha",6.99,"Vacuo","Não",5),
(4663,"Patinho",17.89,"Normal","Sim",1),
(9856,"Alcatra",22.99,"Normal","Sim",1);


/*Select*/
select * from tb_produto where Preço>9;
select * from tb_produto where Preço between 9 and 15;
select * from tb_produto where nome like "%e%";
select * from tb_produto
	inner join tb_categoria on tb_categoria.id= tb_produto.categoria_id;
 select tb_produto.Nome,tb_produto.Preço,tb_produto.Codigo,tb_categoria.Tipo from tb_produto
	inner join tb_categoria on tb_categoria.id= tb_produto.categoria_id;

