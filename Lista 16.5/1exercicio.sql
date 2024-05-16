CREATE DATABASE db_recursosh;

USE db_recursosh;

CREATE TABLE tb_recursosh(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
datanascimento DATE,
setor VARCHAR (255) NOT NULL, 
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_recursosh (nome, datanascimento, setor, salario)
VALUES ("Julia", "1998-06-08", "Administrativo", 2600.00);
INSERT INTO tb_recursosh (nome, datanascimento, setor, salario)
VALUES ("Matheus", "2000-08-25", "TI", 3000.00);
INSERT INTO tb_recursosh (nome, datanascimento, setor, salario)
VALUES ("Maria", "1992-07-19", "Operações", 1800.00);
INSERT INTO tb_recursosh (nome, datanascimento, setor, salario)
VALUES ("Augusto", "1971-10-27", "Logistica", 2200.00);
INSERT INTO tb_recursosh (nome, datanascimento, setor, salario)
VALUES ("Natalia", "1980-08-13", "Financeiro", 2500.00);


SELECT * FROM tb_recursosh;

SELECT * FROM tb_recursosh WHERE salario > 2000.00;

SELECT * FROM tb_recursosh WHERE salario < 2000.00;

UPDATE tb_recursosh SET salario = 2600.00 WHERE id = 1;



