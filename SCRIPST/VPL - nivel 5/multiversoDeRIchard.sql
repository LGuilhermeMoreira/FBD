SELECT
  life_registry.name AS richard,
  ROUND(omega * 1.618, 3) AS factor_n
FROM
  life_registry
JOIN
  dimensions
ON
  life_registry.dimensions_id = dimensions.id
WHERE
  dimensions.name IN ('C875', 'C774')
ORDER BY
  omega;
