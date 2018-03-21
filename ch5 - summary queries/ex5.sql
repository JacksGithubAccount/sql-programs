SELECT AccountDescription, COUNT(*) AS LineItemCount,SUM(InvoiceLineItemAmount) LineItemSum
FROM GLAccounts JOIN InvoiceLineItems
	ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
	JOIN Invoices ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
WHERE invoiceDate BETWEEN 'April 1, 2008' AND 'June 30, 2008'
GROUP BY AccountDescription
HAVING COUNT(*) > 1
ORDER BY LineItemCount DESC