-- Criado a Base de Dados
CREATE DATABASE db_quitanda;
-- Selecionando o Banco de dados
USE db_quitanda;
-- Criando a tabela com seu dads
CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY (id)
);
-- Inserindo dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade,preco)
VALUES ("Abacate", 10, "2025-10-27", 15.90);
-- Selecionar a tabela e mostrar os dados
SELECT* FROM tb_produtos;
-- Modificar a estrutura de um atributo
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
-- Inserindo dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade,preco)
VALUES ("Laranja", 50, "2025-10-17", 12.50);
-- Inserindo dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade,preco)
VALUES ("Banana", 200, "2025-10-25", 12.90);
-- Inserindo dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade,preco)
VALUES ("Morango", 70, "2025-10-11", 10.00);
-- Modificar dado incluido na tabela
UPDATE tb_produtos SET preco = 15.90 WHERE id=1;

-- SET SQL_SAFE_UPATES = 0; desliga a trava de alteração dos dados 
-- SET SQL_SAFE_UPDATES = 1; -- liga novamente
-- Adiciona atributo na tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);
-- Atualizar nome do atributo na tabela
ALTER TABLE tb_produtos CHANGE descricao description varchar(255);
-- Exclui o atributo da tabela **CUIDADO**
ALTER TABLE tb_produtos DROP description;
-- Apagar a linha da tabela **CUIDADO**
DELETE FROM tb_produtos WHERE id=3;
-- Inserindo dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade,preco)
VALUES ("Kiwi", 700, "2025-10-18", 25.00);
-- Mostrar com filtro
SELECT* FROM tb_produtos WHERE preco > 20;
SELECT* FROM tb_produtos WHERE id =4;
SELECT* FROM tb_produtos WHERE id!=4;
SELECT nome, preco FROM tb_produtos;


