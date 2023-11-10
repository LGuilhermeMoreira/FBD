SELECT
    p.id AS CodigoProduto,
    p.name AS NomeProduto
FROM
    products p
JOIN
    categories c ON p.id_categories = c.id
WHERE
    c.name LIKE 'super%';
