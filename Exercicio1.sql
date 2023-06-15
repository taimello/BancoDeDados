CREATE database db_rhdagen;

USE db_rhdagen;

CREATE table tb_funcionarios(
	id bigint auto_increment,
    nome varchar (100) not null,
    telefone varchar (7) not null,
    cargo varchar (100) not null,
    salario decimal (8,2) not null,
    PIS bigint,
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios(nome, telefone, cargo, salario, pis)
values ("João Silva", "9876543", "Gerente de Desenvolvimento", 90000.00, 12345678901);
INSERT INTO tb_funcionarios(nome, telefone, cargo, salario, pis)
values ("Carlos Santos", "9987342", "Analista de Sistemas Senior", 85000.78, 134566789102);
INSERT INTO tb_funcionarios(nome, telefone, cargo, salario, pis)
values ("Fernanda Gomes", "3456789", "Especialista em redes e segurança da informação", 80000.98, 1432467859);
INSERT INTO tb_funcionarios(nome, telefone, cargo, salario, pis)
values ("Gabriela justino", "2345678", "Coordenadora de TI", 95000.00, 13465789087);
INSERT INTO tb_funcionarios(nome, telefone, cargo, salario, pis)
values ("Juliana Silva", "2378976", "Presidente", 100000.00, 124352759495);

SELECT nome FROM tb_funcionarios WHERE salario > 2000;

SELECT nome  FROM tb_funcionarios WHERE salario < 2000;

SELECT * FROM tb_funcionarios; 

UPDATE tb_funcionarios SET salario = 83549.76 WHERE id = 3;

SELECT * FROM tb_funcionarios; 
