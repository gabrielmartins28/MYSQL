USE CINEMA;

-- 1. Popular Categorias
INSERT INTO categoria (descricao_cat) VALUES 
('Ação'), 
('Comédia'), 
('Drama'), 
('Terror'), 
('Ficção Científica');

-- 2. Popular Clientes
INSERT INTO cliente (nome_cliente, cpf_cliente, email_cliente, statuts_cliente) VALUES 
('João Silva', '123.456.789-01', 'joao@email.com', 'Ativo'),
('Maria Oliveira', '987.654.321-02', 'maria@email.com', 'Ativo'),
('Carlos Souza', '456.789.123-03', 'carlos@email.com', 'inativo'),
('Ana Costa', '321.654.987-04', 'ana@email.com', 'Ativo');

-- 3. Popular Filmes
-- Assumindo IDs das categorias: 1-Ação, 2-Comédia, 3-Drama, etc.
INSERT INTO filme (nome_filme, faixa_etaria, duracao_filme, status_filme, id_categoria_filme) VALUES 
('Vingadores: Ultimato', 12, 181, 'Em cartaz', 1),
('O Auto da Compadecida', 0, 104, 'Fora cartaz', 2),
('Interestelar', 10, 169, 'Em cartaz', 5),
('Invocação do Mal', 16, 112, 'Em cartaz', 4);

-- 4. Popular Salas
INSERT INTO sala (descricao_sala, tipo_sala, capacidade_sala, vip_sala) VALUES 
('Sala Master 01', 'Imax', 300, TRUE),
('Sala Confort 02', '3D', 150, FALSE),
('Sala Standard 03', '2D', 200, FALSE);

-- 5. Popular Sessões
-- Note: As datas são futuras para simular um sistema real
INSERT INTO sessao (data_hora_sessao, id_sala_sessao, id_filme_sessao, status_sessao) VALUES 
('2023-12-01 14:00:00', 1, 1, 'Aberta'),
('2023-12-01 17:00:00', 1, 3, 'Aberta'),
('2023-12-01 20:00:00', 2, 4, 'Aberta'),
('2023-12-02 15:00:00', 3, 1, 'Aberta');

-- 6. Popular Tipos de Ingresso
INSERT INTO tipo_ingresso (descrição_ingresso, valor_ingresso) VALUES 
('Inteira', 40.00),
('Meia-Entrada', 20.00),
('Promocional', 15.00),
('VIP Inteira', 80.00);

-- 7. Popular Pedidos
INSERT INTO pedido (id_cliente, status_pedido) VALUES 
(1, 'pago'),
(2, 'aberto'),
(4, 'pago');

-- 8. Popular Ingressos
-- Relacionando com os pedidos e sessões criados acima
INSERT INTO ingresso (id_pedido, id_sessao, id_tipo_ingresso, valor_pago, status_ingresso) VALUES 
(1, 1, 4, 80.00, 'Pago'),      -- João comprou VIP para Vingadores
(1, 1, 4, 80.00, 'Pago'),      -- João comprou outro VIP (acompanhante)
(2, 2, 2, 20.00, 'Reservado'), -- Maria reservou Meia para Interestelar
(3, 3, 1, 40.00, 'Pago');      -- Ana pagou Inteira para Invocação do Mal
