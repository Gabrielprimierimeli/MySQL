CREATE DATABASE db_ecommerce;

USE db_ecommerce;

create table tb_produtos(
   id bigint auto_increment,
   nome varchar(255) not null,
   quantidade int,
   garantia varchar(255) not null,
   preco decimal not null,
   primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Notebook", 50, "1 ano",1000.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("video game", 30, "1 ano",2000.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("teclado", 20, "1 ano",100.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Mouse", 60, "1 ano",90.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Monitor", 40, "1 ano",900.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Cadeira gamer", 40, "1 ano",900.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Mesa", 40, "1 ano",900.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Impressora", 30, "1 ano",1000.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("Roteador", 50, "1 ano",300.00);

insert into tb_produtos(nome, quantidade, garantia, preco)
values("headset", 70, "1 ano",400.00);

select * from tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

update tb_produtos set preco = 200 where id = 3;

select * from tb_produtos;

















