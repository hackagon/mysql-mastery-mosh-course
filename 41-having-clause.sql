use sql_invoicing;

SELECT
  client_id,
  SUM(invoice_total) AS total_sales,
  COUNT(*) AS number_of_voices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500;