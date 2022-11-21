-- Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online.

-- Criando o banco de dados
CREATE DATABASE db_generation_game_online;

-- Selecionar o Banco de Dados db_generation_game_online
USE db_generation_game_online;

-- Criar a tabela tb_classes
create table tb_classes(
id bigint auto_increment,

funcao varchar(50) not null,
primary key(id)
);

-- Criar a tabela tb_personagens
create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
idade int,
sexo varchar(10),
Ataque int,
defesa int,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id)
);

-- Insira 5 registros na tabela tb_classes.

insert into tb_classes (funcao)
values ("Atleta");

insert into tb_classes (funcao)
values ("lutador");

insert into tb_classes (funcao)
values ("Super heroi");

insert into tb_classes (funcao)
values ("piloto");

insert into tb_classes (funcao)
values ("ficticio");

-- Insira 8 registros na tabela tb_personagens

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem1", 18, "masculino",100,200,1);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem2", 18, "masculino",200,100,2);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem3", 19, "masculino",200,300,1);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem4", 20, "feminino",300,400,2);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem5", 25, "feminino",1000,400,2);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem6", 30, "feminino",300,1000,2);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem7", 35, "masculino",1500,1000,1);

insert into tb_personagens (nome,idade,sexo,ataque,defesa,classes_id)
values ("personagem8", 40, "feminino",2000,1000,2);

select * from tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

select * from tb_personagens where Ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
   
   select * from tb_personagens where Defesa between 1000 and 2000;
   
   -- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
    
    select * from tb_personagens where nome like "%c%";
    
    -- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
      
		select * from tb_personagens inner join tb_classes
	    on tb_personagens.classe_id = tb_classes.id;


        
        
         






















