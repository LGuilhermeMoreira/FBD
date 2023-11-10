SELECT DISTINCT c.name
FROM categories c
LEFT JOIN products p on p.id_categories = c.id
where (p.amount  <> 0) and (p.price > 400)
order by c.name 