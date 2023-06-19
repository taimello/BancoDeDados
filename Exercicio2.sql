CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_classes(
id bigint auto_increment,
poder varchar (255) not null,
habilidade int not null,
PRIMARY KEY(id)
);

INSERT INTO tb_classes(poder, habilidade)
values ("ataque", 5);
INSERT INTO tb_classes (poder, habilidade)
values ("defesa", 6);
INSERT INTO tb_classes (poder, habilidade)
values ("soco", 3);
INSERT INTO tb_classes (poder, habilidade)
values ("chute", 4);
INSERT INTO tb_classes (poder, habilidade)
values ("voar", 9);

SELECT * FROM tb_classes;

USE db_generation_game_online;
CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar (255) not null,
nivel int not null,
classe varchar (255) not null,
idade int not null,
PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Aiden", 5, "Mago", 27);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Marcus", 10, "Guerreiro", 35);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Helenea", 3, "Ladra", 22);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Thomas", 8, "Sacerdote", 28);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Katrina", 6, "Cavaleira", 34);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Ariana", 5, "Deusa Grega", 27);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Axel", 2, "Soldado", 17);
INSERT INTO tb_personagens (nome, nivel, classe, idade)
values ("Lea", 7, "Princesa", 24);
INSERT INTO tb_personagens (nome, nivel, classe, idade, classes_id)
values ("Lea", 7, "Princesa", 24, 3);
INSERT INTO tb_personagens (nome, nivel, classe, idade, classes_id)
values ("Axel", 2, "Soldado", 17, 5);
INSERT INTO tb_personagens (nome, nivel, classe, idade, classes_id)
values ("Ariana", 5, "Deusa Grega", 27, 1);
INSERT INTO tb_personagens (nome, nivel, classe, idade,classes_id)
values ("Aiden", 5, "Mago", 27, 4);
INSERT INTO tb_personagens (nome, nivel, classe, idade, classes_id)
values ("Mario", 2, "Soldado", 40, 2);
INSERT INTO tb_personagens (nome, nivel, classe, idade, classes_id)
values ("Luidi", 1, "Soldado", 40, 2);

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classes_id bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classes_id) REFERENCES tb_classes(id);

SELECT * FROM tb_personagens WHERE nivel > 5;

SELECT * FROM tb_personagens WHERE nivel BETWEEN 3 AND 9;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, nivel, classe from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT nome, nivel, classe from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE classes_id =2;
