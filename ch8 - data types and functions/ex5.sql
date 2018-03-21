SELECT InvoiceNumber, (InvoiceTotal - CreditTotal - PaymentTotal) AS BalanceDue , 
	CONVERT(varchar, InvoiceDueDate, 101)AS DueDate, 
	RANK() OVER(ORDER BY (InvoiceTotal - CreditTotal - PaymentTotal) DESC) AS BalanceRank
FROM Invoices
WHERE (InvoiceTotal - CreditTotal - PaymentTotal) >0
	AND (DATEDIFF(DAY, GETDATE(),InvoiceDueDate) <30)