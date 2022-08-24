CREATE DATABASE db_ecommerce_generation;
USE db_ecommerce_generation;
CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
nome varchar(255),
fabricante varchar(255),
categoria varchar(255),
preco decimal(8,2)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Pato Donald", "Disney", "Pelucia", 250);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Guitarra Les Paul", "Gibson", "Instrumento Musical", 15000);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Precision Bass", "Squier", "Instrumento Musical", 450);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Barraca de Camping", "CampingShow", "Sobrevivência", 3000);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("iPhone X", "Apple", "Eletrônicos", 9000);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Chuveiro", "Lorenzetti", "Banho", 380);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Pneu", "Michellin", "Carros", 400);
INSERT INTO tb_produtos(nome,fabricante,categoria,preco)VALUES("Egeo Bomb", "O Boticário", "Perfumes", 150);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 550 WHERE id=7;