-- Criando o Banco de Dados

CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco) 
VALUES ("tomate",100, "2022-11-14", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã",20, "2022-04-12", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("laranja",50, "2022-04-10", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana",200, "2022-04-13", 12.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("uva",1200, "2022-04-14", 30.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("pêra",500, "2022-04-15", 2.90);

SELECT * FROM tb_produtos;

SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome = "maçã";

SELECT * FROM tb_produtos WHERE nome = "maçã";

SHOW CREATE DATABASE db_quitanda;

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos MODIFY preco decimal(6,2); -- 0000.00 / 4000.00 / 2.20

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET preco = 10.00 WHERE id = 5;

DELETE FROM tb_produtos WHERE id = 7;

SELECT * FROM tb_produtos;

