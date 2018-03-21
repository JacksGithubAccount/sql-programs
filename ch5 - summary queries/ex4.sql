SELECT AccountDescription, COUNT(*) AS LineItemCount,SUM(InvoiceLineItemAmount) LineItemSum
FROM GLAccounts JOIN InvoiceLineItems
	ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
GROUP BY AccountDescription
HAVING COUNT(*) > 1
ORDER BY LineItemCount DESC