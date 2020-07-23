create database db_farmacia_do_bem;
use db_farmacia_do_bem;
/*Tabela 1*/
create table tb_categoria(
id bigint auto_increment,
Promoção varchar(3),
Generico  varchar(3),
Receita  varchar(3),
primary key(id)
);

insert into tb_categoria(Promoção, Generico, Receita)
values
("Sim","Não","Sim"),
("Sim","Sim","Não"),
("Não","Sim","Não"),
("Não","Não","Sim"),
("Não","Sim","Sim");

/*Tabela 2*/
create table tb_produto(
id bigint auto_increment,
Codigo int(4),
Nome varchar(30) not null,
Marca varchar(30),
Fornecedor varchar(30),
Preco decimal(5,2),
categoria_id bigint not null,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_produto(Codigo,Nome,Marca,Fornecedor,Preco, categoria_id)
values
(0012,"Buscopan","BOEHRINGER","BOEHRINGER",13.48,3),
(2256,"Leite Ninho","Nestle","Lactens",32.89,3),
(6520,"Creme Cicatriz","Cicatrimed","Lietr",36.87,2),
(1145,"Anlodipo 5MG","Teuto","Teulax",7.17,1),
(8450,"Dipirona","Dipimed","Lablev",2.40,2),
(7400,"Ursacol","Zambon","labfarm",111.99,4),
(0582,"Cetaphil","Galderma","Louisfarm",86.39,3),
(1452,"Shampoo Elseve","Loreal","Unileve",17.99,5);
  
/*Select*/
select * from tb_produto where Preco>50;
select * from tb_produto where Preco between 3 and 60;
select * from tb_produto where Nome like"%b%";
select * from tb_produto
	inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id;
select tb_produto.Nome,tb_produto.Marca,tb_produto.Preco,tb_categoria.Receita,tb_categoria.Promoção from tb_produto
	inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id;
