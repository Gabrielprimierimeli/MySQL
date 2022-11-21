-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal.

-- Criando o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionar o Banco de Dados
USE db_pizzaria_legal;

-- Crie a tabela tb_categorias
  create table tb_categorias(
   id bigint auto_increment,
   promocao varchar(255) not null,
   tamanho varchar(255) not null,
   primary key(id)
   );
   
   -- Crie a tabela tb_pizzas.
   create table tb_pizzas(
    id bigint auto_increment,
    sabor varchar(100),
    preco decimal (8,2),
    categorias_id bigint,
    primary key (id),
    foreign key (categorias_id) references tb_categorias(id)
   );
   
   -- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(promocao,tamanho)
VALUES("10%","20cm");

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("15%","25cm");
   
INSERT INTO tb_categorias(promocao,tamanho)
VALUES("12%","30cm"); 

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("15","35cm");

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("18%","40cm");

-- Insira 8 registros na tabela tb_pizzas
  INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Calabresa",40.00,1);
  
  INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Mussarela",40.00,2);

  INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Portuguesa",45.00,3);
  
  INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Atum",50.00,4);

INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("A moda da casa",70.00,5);

INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Frango",50.00,6);

INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Marguerita",60.00,7);
  
INSERT INTO tb_pizzas (sabor ,preco ,categorias_id)
VALUES ("Frango com cheddar",80.00,8);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tamanho LIKE "60cm";

