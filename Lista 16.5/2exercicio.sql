CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
material VARCHAR(255) NOT NULL, 
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Blusa Pink", 200, "veludo", 80.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Bota preta", 250, "couro", 800.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Bolsa prata", 300, "couro", 180.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Calça", 500, "jeans", 630.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Camisa social", 150, "cetim", 160.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Cinto", 100, "plastico", 350.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Sandalia Anabela", 300, "couro", 550.00);
INSERT INTO tb_ecommerce (nome, quantidade, material, preco)
VALUES ("Scapin", 560, "veludo", 900.00);

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE preco > 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;


