CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
tipoarmazenamento VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
preco DECIMAL (6,2) NOT NULL,
datarecebimento DATE,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (categoria) VALUES 
("Frutas"),
("Verduras"),
("Legumes"),
("Temperos"),
("Ovos"),
("Outros");

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);


INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Pera", 2000, 10.00, "2024-03-01", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Uva", 10000, 14.00, "2024-03-15", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Couve-flor", 5000, 8.00, "2024-03-25", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Pepino", 300, 8.50, "2024-04-01", 3);
INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Caixa de abacaxi", 300, 57.00, "2024-05-10", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Caixa de Morango", 2000, 55.00, "2024-05-01", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, datarecebimento, categoriaid)
VALUES ("Ovos caipira (6dzs)", 200, 60.00, "2024-05-04", 5);


SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco > 50.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, quantidade, tb_categorias.categoria 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.categoria 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.id = 2;
