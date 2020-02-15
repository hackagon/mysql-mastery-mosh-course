use sql_inventory;

SELECT *
FROM products
WHERE unit_price > (
  SELECT unit_price
  FROM products
  WHERE product_id = 3
)
