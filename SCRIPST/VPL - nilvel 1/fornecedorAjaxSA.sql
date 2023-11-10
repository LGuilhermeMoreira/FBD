SELECT p.name AS product_name, pr.name AS provider_name
FROM products p
JOIN providers pr ON p.id_providers = pr.id
WHERE pr.name = 'Ajax SA';
