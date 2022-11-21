-- Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida

create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment,
nome varchar(150),
ativa boolean,
primary key (id)
);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Programação", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Idiomas", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Gestão", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Ferramentas de escritório", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Marketing", true);

create table tb_cursos(
id bigint auto_increment,
nome varchar(100),
descricao varchar(250),
turno varchar(50),
preco decimal(8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Java iniciante", "curso básico", "noturno", 40, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Inglês básico", "curso introdutório", "noturno", 44, 2);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Metodologia SCRUM", "metodologia ágil", "matutino", 34, 3);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Pacote office", "básico do office", "matutino", 42, 4);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Vendas", "melhorar vendas", "noturno", 60, 5);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Javascript iniciante", "curso básico", "vespertino", 66, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Espanhol básico", "curso introdutório", "integral", 70, 2);

select * from tb_categorias;

select * from tb_cursos;

select * from tb_cursos where preco > 50;

select * from tb_cursos where preco between 3 and 60;

select * from tb_cursos where nome like"%j%";

select tb_cursos.nome, descricao, turno, preco, tb_categorias.nome
from tb_cursos inner join tb_categorias
on tb_cursos.categoria_id = tb_categorias.id;

select tb_cursos.nome, descricao, turno, preco, tb_categorias.nome
from tb_cursos inner join tb_categorias
on tb_cursos.categoria_id = tb_categorias.id;
where tb_categorias.id = 1;
 