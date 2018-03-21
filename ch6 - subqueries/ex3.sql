SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE PaymentTotal > ALL
	(SELECT TOP 50 PERCENT PaymentTotal
	 From Invoices
	 WHERE PaymentTotal > 0
	 ORDER BY PaymentTotal)