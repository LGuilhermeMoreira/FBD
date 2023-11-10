SELECT 
    p.name AS NomeProduto, 
    pr.name AS NomeFornecedor, 
    c.name AS NomeCategoria
FROM 
    products p
JOIN 
    providers pr ON p.id_providers = pr.id
JOIN 
    categories c ON p.id_categories = c.id
WHERE 
    pr.name = 'Sansul SA'
    AND c.name = 'Imported';
