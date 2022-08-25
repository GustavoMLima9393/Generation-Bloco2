CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;
  
CREATE TABLE tb_categorias(
id bigint auto_increment primary key not null,
nome varchar(255),
receita boolean
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key not null,
nome varchar(255),
preco decimal (6,2),
codigo int,
quantidade int,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(nome, receita)VALUES("Medicamentos",true);
INSERT INTO tb_categorias(nome, receita)VALUES("Academia",false);
INSERT INTO tb_categorias(nome, receita)VALUES("Cosméticos",false);
INSERT INTO tb_categorias(nome, receita)VALUES("Infantil",false);
INSERT INTO tb_categorias(nome, receita)VALUES("Saúde Sexual",false);

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Neosaldina",10,58965,52,1);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Whey Protein",120,62346,50,2);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Perfume",60,62347,62,3);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Fralda",30,62348,52,1);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Preservativo",5,62349,30,5);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Dipirona",35.99,62350,87,1);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Creme",15.50,62351,52,3);
INSERT INTO tb_produtos(nome, preco, codigo, quantidade, categoria_id)VALUES("Hipogloss",25.90,62352,52,4);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;