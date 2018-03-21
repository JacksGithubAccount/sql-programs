SELECT VendorName AS Vendor, InvoiceDate AS Date, InvoiceNumber AS Number, InvoiceSequence AS #, InvoiceLineItemAmount AS LineItem
FROM Vendors AS Vend JOIN Invoices AS Inv ON Vend.VendorID = Inv.VendorID
	JOIN InvoiceLineItems AS LineItem ON Inv.InvoiceID = LineItem.InvoiceID
ORDER BY Vendor, Date, Number, #