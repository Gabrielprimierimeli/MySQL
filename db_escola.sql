create database db_escola;

use db_escola;

create table tb_estudante (
  id bigint auto_increment,
  nome varchar(255) not null,
  sobrenome varchar(255) not null,
  idade int,
  nota  int,
  sala  int,
  primary key(id)
);

select * from tb_estudante;

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Gabriel","Primieri",28,8,3);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Vitoria","Primieri",25,8,3);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Carlos","Primieri",30,6,3);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Arlinda","Primieri",36,8,2);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Arnaldo","Oliveira",36,8,2);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Ananda","Oliveira",80,7,3);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Marcia","Oliveira",28,4,3);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Rodrigo Catro","Souza",38,8,1);

INSERT INTO tb_estudante (nome, sobrenome,idade, nota,sala) 
VALUES("Rafael","Castro",40,2,3);

SELECT * FROM tb_estudante;

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 8 WHERE id = 6;



    
    