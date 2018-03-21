SELECT VendorName, Invoices.InvoiceID, InvoiceSequence, InvoiceLineItemAmount
FROM InvoiceLineItems JOIN Invoices
	ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
	JOIN Vendors ON Vendors.VendorID = Invoices.VendorID
WHERE InvoiceLineItems.InvoiceID IN
	(SELECT InvoiceID
	 FROM InvoiceLineItems
	 WHERE InvoiceSequence > 1)