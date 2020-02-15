USE sql_store;

SELECT 
  o.order_date,
  p.name, 
  oi.quantity, 
  oi.unit_price,
  oi.quantity * oi.unit_price AS total
FROM order_items oi
JOIN products p
  ON oi.product_id = p.product_id
JOIN orders o
  ON oi.order_id = o.order_id