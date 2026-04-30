-- BUSCAR POR PRODUTO DENTRO DA VENDA
-- QUERY - select - LEITURA
-- * TODAS AS COLUNAS
-- SELECT NOMES DE TABLES (FILTRA)
select id_produto, preco_unitario
from item_venda
where id_venda = 1 and id_produto =2;

-- PESQUISANDO POR NOME
select iv.preco_unitario, p.nome_produto
from item_venda as iv -- AS=APELIDO
join produto as p on iv.id_produto = p.id_produto  -- JUNTAR
where iv.id_venda = 2 and p.nome_produto like'%Cafe%';


-- BUSCANDO TODAS AS VENDAS DE UM CLIENTE
select *
from venda
where id_cliente = 1;

-- BUSCAR PRODUTO MAIS VENDIDO
select p.nome_produto, sum(iv.quantidade_item) as total_vendido
from item_venda as iv
join produto p on p.id_produto = iv.id_produto
group by p.nome_produto;