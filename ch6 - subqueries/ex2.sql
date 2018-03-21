SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE PaymentTotal >
	(SELECT AVG(PaymentTotal)
	 From Invoices
	 WHERE PaymentTotal > 0)