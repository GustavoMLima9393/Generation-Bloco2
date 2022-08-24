/*Comando de criação de banco de dados*/
CREATE DATABASE db_escola_generation;

/*Seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);

/*Seleciona todos os dados da tabela de alunes*/
SELECT * FROM tb_alunes;

/*Inserir dados da tabela (8 registros)*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Antônio", "1983-10-14", 57, 7);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("João", "1974-11-30", 57, 6);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Carlos", "1965-02-25", 57, 9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Nelson", "1989-03-28", 57, 8);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jean", "1982-06-17", 57, 9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jesse", "1981-09-03", 57, 2);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Michael", "1993-05-25", 57, 4);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("José", "1987-10-29", 57, 5);

/*Seleciona todos os dados da tabela de alunes ONDE a nota for maior ou igual a 7*/
SELECT * FROM tb_alunes WHERE nota >= 7;

/*Seleciona todos os dados da tabela de alunes ONDE a nota for menor que 7*/
SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 7 WHERE id=7;

SET SQL_SAFE_UPDATES = 1;