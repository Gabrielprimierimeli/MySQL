CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores(
matricula BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
setor VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
PRIMARY KEY (matricula));

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Gabriel", "Desenvolvedor de Software", "TI", 6000.00);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Vitoria", "Advogada", "Juridico", 3000.00);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Arlinda", "Engenheira", "Engenharia", 4000.00);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Carlos", "Auxiliar Administrativo", "Administrativo", 2000.00);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Bruna", "Analista de Marketing", "Marketing", 2000.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUE("Camila", "Contadora", "Marketing", 2000.00);

UPDATE tb_colaboradores SET salario = 1500.00 WHERE matricula = 3;
SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;


