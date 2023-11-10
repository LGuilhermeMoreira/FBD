UPDATE virus
SET name = REPLACE(name, 'H1', 'X');

SELECT name
FROM virus
