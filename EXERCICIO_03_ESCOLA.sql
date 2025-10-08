CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    data_matricula date,
    curso varchar(255) NOT NULL,
    media_final decimal(3,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Ana Paula Martins", "2023-02-10", "Administração", 8.4);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("João Pedro Almeida", "2022-08-05", "Engenharia Civil", 5.6);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Larissa Nogueira Santos", "2023-03-01", "Psicologia", 9.0);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Felipe Andrade Costa", "2021-09-15", "Ciência da Computação", 7.1);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Camila Ribeiro Torres", "2022-02-20", "Direito", 6.8);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Gabriela Souza Menezes", "2023-01-25", "Sistemas de Informação", 9.3);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Bruno Ferreira Lima", "2021-08-10", "Enfermagem", 8.7);
INSERT INTO tb_estudante(nome, data_matricula, curso, media_final)
VALUES ("Ricardo Oliveira Pires", "2022-07-18", "Arquitetura e Urbanismo", 6.9);

SELECT * FROM tb_estudante WHERE media_final > 7.00;

SELECT * FROM tb_estudante WHERE media_final < 7.00;

UPDATE tb_estudante SET curso = "Análise e Desenvolvimento de Dados" WHERE id=5;