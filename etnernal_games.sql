USE db_eternalgames;
 
INSERT INTO tb_produtos (titulo, descricao, estudio, foto, preco, categoria_id) 
VALUES ('FIFA 23', 'FIFA 23 proporciona ainda mais ação e realismo do futebol aos campos do Jogo de Todo Mundo com avanços na tecnologia HyperMotion2*, que agora tem o dobro de capturas de movimentos do mundo real, criando animações de futebol mais reais do que nunca.',
"Electronic Arts Inc", "https://ik.imagekit.io/techbloom/imagens_api-20251017T131356Z-1-001/imagens_api/fifa_23-min.png?updatedAt=1760712128404", 35.00, 4);

INSERT INTO tb_produtos (titulo, descricao, estudio, foto, preco, categoria_id) 
VALUES ("Hogwarts Legacy", "Hogwarts Legacy é um RPG de ação imersivo de mundo aberto. Agora você pode assumir o controle da ação e estar no centro de sua própria aventura no mundo bruxo",
"Warner Bros. Games", "https://ik.imagekit.io/techbloom/imagens_api-20251017T131356Z-1-001/imagens_api/hogwarts.png?updatedAt=1760712129499", 249.99, 3);

INSERT INTO tb_categorias (nome, descricao) 
VALUES ('Ação', 'Jogos com foco em reflexos rápidos, combate e desafios diretos.');
INSERT INTO tb_categorias (nome, descricao) 
VALUES ('Aventura', 'Exploração, narrativa envolvente e resolução de enigmas.');
INSERT INTO tb_categorias (nome, descricao) 
VALUES ('RPG (Role-Playing Game)', 'Evolução de personagens e decisões que moldam a história.');
INSERT INTO tb_categorias (nome, descricao) 
VALUES ('Esportes', 'Simulam modalidades esportivas reais ou fictícias.');
 
SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;
