USE ecommerce;

-- Populando a tabela 'categoria' (5 registros)
INSERT INTO categoria (nome, descricao) VALUES
('Eletrônicos', 'Smartphones, notebooks e acessórios'),
('Vestuário', 'Roupas masculinas e femininas'),
('Livros', 'Ficção, não-ficção e técnicos'),
('Casa e Cozinha', 'Eletrodomésticos e utensílios'),
('Esportes', 'Equipamentos e vestuário esportivo');

-- Populando a tabela 'produto' (5 registros, vinculados às categorias acima)
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES
('Smartphone XYZ', 'Smartphone com 128GB e câmera 48MP', 1500.00, 50, 1),
('Camiseta Algodão', 'Camiseta básica preta 100% algodão', 49.90, 200, 2),
('Livro SQL para Iniciantes', 'Guia prático de SQL', 89.90, 100, 3),
('Cafeteira Express', 'Cafeteira 15 bars de pressão', 350.00, 30, 4),
('Tapete de Yoga', 'Tapete antiderrapante emborrachado', 120.00, 80, 5);

-- Verificando os dados
SELECT * FROM categoria;
SELECT * FROM produto;


--Sintaxe atual
UPDATE nome_da_tabela
SET
coluna1= valor1,
-- Coluna
coluna2= valor2
WHERE condição;

SELECT*FROM produto

UPDATE produto
SET categoria_id=1 -- Aqui é onde vai mudar
WHERE id=8; -- Aqui procura pelo id que vai ser mudado a caract. acima

UPDATE produto
SET categoria_id=2
WHERE nome LIKE'M%';

UPDATE produto
SET categoria_id=3
WHERE preco>=500;

UPDATE produto
set estoque = estoque + 20
where id = 1;

UPDATE produto
SET
    nome = 'pc usado - notebook',
    descricao='Notebook com SSD e 16GB de RAM',
    estoque=15,
    categoria_id =1
WHERE id = 4;

delete from produto where id = 1

INSERT into produto()
VALUE(default, 'telefoneX', 'telefone legal', 50.00, 200, 1 );

DELETE FROM produto
WHERE nome='telefoneX'OR id=5;