SELECT AccountNo, AccountDescription
FROM GLAccounts
WHERE NOT EXISTS
	(SELECT AccountNo
	 FROM InvoiceLineItems
	 WHERE InvoiceLineItems.AccountNo = GLAccounts.AccountNo)