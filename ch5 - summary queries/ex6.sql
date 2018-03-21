SELECT AccountNo, SUM (InvoiceTotal) AS InvoiceTotalAmount
FROM InvoiceLineItems JOIN Invoices
	ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
GROUP BY AccountNo WITH ROLLUP