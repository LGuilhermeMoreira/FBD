SELECT c.name AS NomeCliente, o.id AS NumeroPedido
FROM customers c
JOIN orders o ON c.id = o.id_customers
WHERE o.orders_date BETWEEN '2016-01-01' AND '2016-06-30';
