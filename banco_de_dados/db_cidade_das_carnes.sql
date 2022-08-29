CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key not null,
tipo varchar(255),
congelado boolean
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key not null,
nome varchar(255),
preco_kg decimal(6,2),
codigo int,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(tipo, congelado)VALUES("Bovino",true);
INSERT INTO tb_categorias(tipo, congelado)VALUES("Bovino",false);
INSERT INTO tb_categorias(tipo, congelado)VALUES("Suíno",true);
INSERT INTO tb_categorias(tipo, congelado)VALUES("Suíno",false);
INSERT INTO tb_categorias(tipo, congelado)VALUES("Aves",true);
INSERT INTO tb_categorias(tipo, congelado)VALUES("Aves",false);

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Picanha",70.90,58001,2);
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Maminha",52.90,58002,2);
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Tulipa",34.90,58003,5);
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Picanha Suína",64.90,58004,4);
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Filé Mignon",99.90,58005,2);
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Coxinha da Asa",29.90,58006,6);
INSERT INTO tb_produtos(nome, preco_kg, codigo, categoria_id)VALUES("Coração",36.90,58007,6);

SELECT * FROM tb_produtos WHERE preco_kg > 50;
SELECT * FROM tb_produtos WHERE preco_kg BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;