CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nome_classe varchar(255) NOT NULL,
habilidade varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome_classe, poder, defesa, habilidade)
VALUES ("Guerreiro", "Golpe Poderoso");

INSERT INTO tb_classes (nome_classe, poder, defesa, habilidade)
VALUES ("Mago", "Bola de Fogo");

INSERT INTO tb_classes (nome_classe, poder, defesa, habilidade)
VALUES ("Arqueiro", "Tirso Certeiro");

INSERT INTO tb_classes (nome_classe, poder, defesa, habilidade)
VALUES ("Clérigo", "Cura Divina");

INSERT INTO tb_classes (nome_classe, poder, defesa, habilidade)
VALUES ("Ladino", "Ataque Furtivo");

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome_personagem varchar(255) NOT NULL,
vida int NOT NULL,
nivel int,
poder_atual bigint,
defesa_atual bigint,
classes_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Thoran Martelo de Ferro", 150, 8, 3400, 18000, 1);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Lyra Ventos da Noite", 95, 6, 2100, 10000, 3);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Eldric, o Sábio", 150, 10, 5400, 700, 2);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Mira Luz Serena", 120, 7, 2900, 900, 4);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Kale Sombrio", 88, 5, 1600, 1000, 5);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Dorn Quebra-Ossos", 130, 3, 700, 17000, 1);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Seren Brilhante", 90, 9, 4300, 9000, 4);

INSERT INTO tb_personagens (nome_personagem, vida, nivel, poder_atual, defesa_atual, classes_id)
VALUES ("Ryn da Sombra", 80, 4, 900, 900, 5);

SELECT* FROM tb_personagens WHERE poder_atual > 2000;

SELECT * FROM tb_personagens WHERE defesa_atual BETWEEN 1000 AND 2000 ORDER BY defesa_atual;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_personagens.classes_id = 5;
