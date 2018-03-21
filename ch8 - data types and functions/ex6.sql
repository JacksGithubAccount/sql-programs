SELECT InvoiceNumber, (InvoiceTotal - CreditTotal - PaymentTotal) AS Balance,
	CONVERT(varchar, InvoiceDueDate, 101),
CASE
	 WHEN (InvoiceTotal - CreditTotal - PaymentTotal) <= 0 THEN 'Paid in Full'
	 WHEN (InvoiceTotal - CreditTotal - PaymentTotal) >0 THEN 'Balance Due'
END AS Status
FROM Invoices