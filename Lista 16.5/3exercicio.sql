CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
serie INT,
nomeresponsavel VARCHAR(255) NOT NULL, 
medianota DECIMAL NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Joao", 7, "Augusto", 8.00);
INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Alice", 8, "Kleber", 5.00);
INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Estela", 9, "Maria", 7.00);
INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Julia", 6, "Matheus", 9.00);
INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Bento", 7, "Camille", 10.00);
INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Antonio", 8, "Carlos", 9.00);
INSERT INTO tb_escola (nome, serie, nomeresponsavel, medianota)
VALUES ("Marina", 7, "Mauricio", 6.00);


ALTER TABLE tb_escola MODIFY medianota DECIMAL(6,2);

SELECT * FROM tb_escola;

SELECT * FROM tb_escola WHERE medianota > 7;

SELECT * FROM tb_escola WHERE medianota < 7;

