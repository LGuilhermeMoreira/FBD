   SELECT 
    p.name AS nome_produto,
    pr.name AS nome_fornecedor
FROM products p
INNER JOIN categories c ON p.id_categories = c.id
INNER JOIN providers pr ON p.id_providers = pr.id
WHERE c.id = 6;
