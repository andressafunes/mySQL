CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL,
    estoque int,
    preco decimal(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Caderno Universitário", "Material Escolar",35, 24.90);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Impressora Multifuncional", "Equipamentos de Escritório",5, 749.90);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Grampeador Mini", "Material de Escritório",25, 18.90);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Papel Sulfite A4 500 FOlhas", "Material de Escritório",50, 29.90);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Cadeira Ergonômica Presidente", "Móveis de Escritório", 2, 1249.99);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Lápis Grafite HB nº2", "Material Escolar",120, 2.50);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Monitor LED 27”", "Informática", 7, 1199.99);
INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUES ("Caneta Esferográfica Azul", "Material de Escritório", 500, 2.50);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET nome = "Papel Sulfite A4 500 Folhas" WHERE id=4;