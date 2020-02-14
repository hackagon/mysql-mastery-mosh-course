use sql_invoicing;

SELECT
  state, city,
  SUM(invoice_total) AS total_sales
FROM invoices
  JOIN clients USING (client_id) 
WHERE invoice_date >= '2019-07-01'
GROUP BY state, city