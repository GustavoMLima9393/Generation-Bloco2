CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
	raca varchar(255),
    nacionalidade varchar(255)
);

CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    nickname varchar (255),
    arma varchar(255),
    armadura varchar(255),
    ataque int,
    defesa int,
    categoria_id bigint,
        
    FOREIGN KEY (categoria_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Mago", "Chinês");
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Mago", "Inglês");
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Guerreiro", "Chinês");
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Guerreiro", "Inglês");
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Curandeiro", "Chinês");
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Curandeiro", "Inglês");
INSERT INTO tb_classes(raca, nacionalidade)VALUES("Gatuno", "Chinês");
INSERT INTO tb_classes(raca,nacionalidade)VALUES("Gatuno", "Inglês");


SELECT * FROM tb_personagens;
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Gandalfinho", "Cajado", "Manto", 5000, 800, 1);
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Lucianinho", "Espada", "Armadura Pesada", 3400, 2200, 2);
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Geromas", "Adaga", "Armadura Leve", 2900, 1800, 3);
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Otonho", "Varinha", "Manto", 1500, 3500, 4);
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Destruidora", "Cajado", "Manto", 6000, 300, 5);
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Dona Florinda", "Espada", "Armadura Pesada", 3300, 2600, 6);
INSERT INTO tb_personagens(nickname, arma, armadura, ataque, defesa, categoria_id)VALUES("Carlinhos Blau Blau", "Adaga", "Armadura Leve", 2700, 2100, 7);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nickname LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id;