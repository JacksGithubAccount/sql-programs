SELECT VendorName, AccountDescription,COUNT(*) LineItemCount, SUM(InvoiceLineItemAmount) LineItemSum
FROM GLAccounts JOIN InvoiceLineItems
	ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
	JOIN Invoices ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
	JOIN Vendors ON Vendors.VendorID = Invoices.VendorID
GROUP BY VendorName, AccountDescription
ORDER BY VendorName, AccountDescription