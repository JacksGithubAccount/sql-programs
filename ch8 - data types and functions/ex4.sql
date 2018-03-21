SELECT InvoiceNumber, (InvoiceTotal - CreditTotal - PaymentTotal) AS BalanceDue , CONVERT(varchar, InvoiceDueDate, 101)AS DueDate
FROM Invoices
WHERE (InvoiceTotal - CreditTotal - PaymentTotal) >0
	AND (DATEDIFF(DAY, GETDATE(),InvoiceDueDate) <30)