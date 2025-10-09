CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
tamanho varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (categoria, tamanho)
VALUES ("Tradicional","Grande");

INSERT INTO tb_categorias (categoria, tamanho)
VALUES ("Tradicional","Média");

INSERT INTO tb_categorias (categoria, tamanho)
VALUES ("Tradicional","Brotinho");

INSERT INTO tb_categorias (categoria, tamanho)
VALUES ("Doce","Grande");

INSERT INTO tb_categorias (categoria, tamanho)
VALUES ("Doce","Brotinho");

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
descricao varchar(255),
tipo_massa varchar(255) NOT NULL,
tipo_borda varchar(255) NOT NULL,
preco decimal(6,2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (2,"Frango com Catupiry", "Frango desfiado temperado, catupiry cremoso e orégano sobre base de mussarela.", "Tradicional", "Borda de Catupiry", 40.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (1,"Calabresa Tradicional", "Molho de tomate, mussarela, calabresa fatiada e cebola roxa levemente dourada.", "Fina", "Sem borda", 52.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (3, "Marguerita", "Molho de tomate artesanal, mussarela de búfala, rodelas de tomate e folhas frescas de manjericão.", "Fina", "Borda de Catupiry", 25.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (1,"Quatro Queijos", "Combinação cremosa de mussarela, provolone, gorgonzola e parmesão.", "Tradicional", "Sem borda", 56.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (4, "Chocolate com Morango", "Creme de chocolate ao leite derretido coberto com fatias frescas de morango.", "Fina", "Borda de Chocolate ao Leite", 45.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (5, "Romeu e Julieta", "Camada de queijo mussarela com generosa cobertura de goiabada cremosa.", "Tradicional", "Sem Borda", 22.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (5, "Banana com Canela", "Fatias de banana caramelizadas com açúcar e canela sobre creme doce.", "Fina", "Bor de Doce de Leite", 20.00);

INSERT INTO tb_pizza (categoria_id, sabor, descricao, tipo_massa, tipo_borda, preco)
VALUES (4, "Nutella com Leite Ninho", "Cobertura de Nutella, raspas de chocolate e toque final de leite em pó.", "Tradicional", "Borda de Nutella", 58.00);

SELECT* FROM tb_pizza WHERE preco > 45.00;

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categorias
ON tb_pizza.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizza INNER JOIN tb_categorias
ON tb_pizza.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Tradicional";
