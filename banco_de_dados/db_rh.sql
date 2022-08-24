CREATE DATABASE de_rh_generation;
USE db_rh_generation;
CREATE TABLE tb_funcionarios(
id bigint auto_increment primary key,
nome varchar(255),
data_nascimento date,
cargo varchar(255),
salario decimal(8,2)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome,data_nascimento,cargo,salario)VALUES("Lucas", "1987-01-09", "Vendedor", 1500);
INSERT INTO tb_funcionarios(nome,data_nascimento,cargo,salario)VALUES("Josias", "1987-09-14", "Vendedor", 1500);
INSERT INTO tb_funcionarios(nome,data_nascimento,cargo,salario)VALUES("Genivaldo", "1985-09-23", "Gerente", 4000);
INSERT INTO tb_funcionarios(nome,data_nascimento,cargo,salario)VALUES("Gustavo", "1993-04-02", "Desenvolvedor Java", 9000);
INSERT INTO tb_funcionarios(nome,data_nascimento,cargo,salario)VALUES("Luis", "1992-09-14", "Motorista", 2500);

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET nome = "Juliano" WHERE id=2;