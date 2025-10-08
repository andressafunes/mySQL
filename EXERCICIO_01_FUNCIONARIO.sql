CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionario (
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    cargo varchar(255) NOT NULL,
    data_admissao date,
    salario decimal(10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionario(nome, cargo, data_admissao, salario)
VALUES ("Silvana Silva", "Auxiliar de Limpeza", "2022-05-08", 1600.00);
INSERT INTO tb_funcionario(nome, cargo, data_admissao, salario)
VALUES ("Sandra Camargo", "Assistente Administrativo", "2020-06-18", 2200.00);
INSERT INTO tb_funcionario(nome, cargo, data_admissao, salario)
VALUES ("João Vieira", "Operador de Produção", "2023-09-28", 2000.00);
INSERT INTO tb_funcionario(nome, cargo, data_admissao, salario)
VALUES ("Carolina Mendes", "Recepcionista", "2021-02-15", 1900.00);
INSERT INTO tb_funcionario(nome, cargo, data_admissao, salario)
VALUES ("Fabiano Santos", "Atendimento de Suporte", "2024-03-25", 2300.00);

SELECT * FROM tb_funcionario WHERE salario > 2000.00;

SELECT * FROM tb_funcionario WHERE salario < 2000.00;

UPDATE tb_funcionario SET salario = 2100.00 WHERE id=3;
