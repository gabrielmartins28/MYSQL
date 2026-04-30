-- Cliente
insert into cliente (nome_cliente,email_cliente)
values
('Joao Matoso', 'Joao@Matoso'),
('Jorge Matoso', 'Jorge@Matoso');

-- Produtos
insert into produto (nome_produto,preco_produto)
values
('Cafe',255.00),
('Pao', 16.76);

-- Vendas
insert into venda (data_venda,id_cliente)
values
('2026/03/10',1),
('2026/07/20',2);

-- Item venda
insert into item_venda (id_venda,id_produto,quantidade_item,preco_unitario)
value
(1,2,1,16.76),
(2,1,3,255.00);



