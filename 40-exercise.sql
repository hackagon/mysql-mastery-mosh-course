use sql_invoicing;

SELECT
  date,
  pm.name as payment_method,
  SUM(amount) AS total_payments
FROM payments p
  JOIN payment_methods pm
  ON p.payment_method = pm.payment_method_id
GROUP BY date, payment_method