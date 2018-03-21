SELECT VendorID, SUM(PaymentTotal) AS PaymentSum
FROM invoices
GROUP BY VendorID