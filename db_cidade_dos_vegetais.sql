CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50),
tipoVenda varchar(50),
primary key (id)
);

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Fruta", "Atacado");

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Fruta", "Varejo");


INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Legumes", "Atacado");

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Legumes", "Varejo");


INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Produtos Diversos", "Atacado");

INSERT INTO tb_categorias(tipo, tipoVenda)
VALUES ("Produtos Diversos", "Verejo");


CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (50)not null,
preco decimal (8,2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);


-- FRUTAS 
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Uva", 10.00, 1);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Uva", 15.00, 2);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Pera", 10.00, 1);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Pera", 15.00, 2);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Laranja", 10.00, 1);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Laranja", 15.00, 2);


-- LEGUMES 
INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Cenoura", 7.00, 3);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Cenoura", 15.00, 4);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Beterraba", 7.00, 3);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Beterraba", 15.00, 4);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Alface", 7.00, 3);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Alface", 15.00, 4);

-- DIVERSOS

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Agua Mineral", 3.00, 5);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Agua Mineral", 5.00, 6);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de uva", 7.00, 5);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de uva", 10.00, 6);


INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de Laranja", 7.00, 5);

INSERT INTO tb_produtos(nome, preco, categorias_id)
VALUES ("Suco de Laranja", 10.00, 6);

select * from tb_produtos where preco > 13.00;

select * from tb_produtos where preco between 3.0 and 5.0;

select * from tb_produtos where nome LIKE ("%c%");

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;


select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id and tipo = "Fruta";
