use sql_invoicing;

SELECT
  state, city,
  SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients c USING (client_id)
GROUP BY state, city WITH ROLLUP;
