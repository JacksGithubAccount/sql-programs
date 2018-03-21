WITH Summary AS
(
	SELECT VendorID, MAX(InvoiceTotal) AS InvoiceMax
		FROM Invoices
		WHERE (InvoiceTotal - CreditTotal - PaymentTotal) > 0
		GROUP BY VendorID
)
SELECT SUM(Summary.InvoiceMax) AS SumOfMaximums
From Summary
