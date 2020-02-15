USE sql_store;

-- SOLUTION 1
SELECT *
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  WHERE order_id IN (
    SELECT order_id
    FROM order_items
    WHERE product_id = 3
  )
);

-- SOLUTION 2
SELECT DISTINCT customer_id, *
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3