SELECT
  SUBSTRING(cpf, 1, 3) || '.' ||
  SUBSTRING(cpf, 4, 3) || '.' ||
  SUBSTRING(cpf, 7, 3) || '-' ||
  SUBSTRING(cpf, 10, 2) AS cpf_formatado
FROM customers
 JOIN natural_person ON customers.id = natural_person.id_customers;

-- estudando
-- SELECT
--   cpf || '- concatena strings ' || cpf
-- FROM customers
-- JOIN natural_person ON customers.id = natural_person.id_customers;
