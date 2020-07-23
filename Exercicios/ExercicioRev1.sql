create database db_generation_game_online;
use db_generation_game_online;
/*Tabela 1*/
create table tb_classe(
id bigint auto_increment,
Genero varchar (35),
Cenário varchar (35),
Adversário varchar (3),
primary key(id)
);
insert into tb_classe(Genero, Cenário, Adversário)
values
("Ação","Futurista","Não"),
("Aventura","Medieval","Não"),
("Luta","Urbano","Sim"),
("RPG","Fantástico","Sim"),
("Tiro","Realistas", "Sim");

/*Tabela 2*/
use db_generation_game_online;
create table tb_personagem(
id bigint auto_increment,
Nome varchar(35) not null,
Arma varchar(35),
Poder varchar(35),
PoderDefesa int,
Versão int,
classe_id bigint not null,

primary key (id),
foreign key(classe_id) references tb_classe(id)
 );


insert into tb_personagem
 (Nome, Arma, Poder,PoderDefesa, Versão, classe_id)
 values
 ("Trex","Submetralhadora","Velocidade",5000,2,1),
 ("Lem","Espada","Invisibilidade",950,3,2),
 ("Garlux","Mãos","Fogo",2400,1,3),
 ("Roib","Granada","Feitiço",1200,1,4),
 ("Wilst","Facão","Mental",500,2,5),
 ("Thyz","Granada","Natureza",758,1,4),
 ("Ressa","Submetralhadora","Gelo",3000,3,1),
 ("Ulnon","Metralhadora X-154","Velocidade",1993,2,5);

/*Select*/
select * from tb_personagem where PoderDefesa> 2000;
select * from tb_personagem where PoderDefesa between 1000 and 2000;
select * from  tb_personagem where Nome like "%r%";
select * from tb_personagem
	inner join tb_classe on tb_classe.id=tb_personagem.classe_id;
select  tb_personagem.Nome, tb_personagem.Arma, tb_personagem.Poder, tb_classe.Genero from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;



 
