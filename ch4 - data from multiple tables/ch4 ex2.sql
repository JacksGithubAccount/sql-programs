SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Vendors JOIN Invoices
ON Vendors.VendorID = Invoices.InvoiceID
WHERE InvoiceTotal - (PaymentTotal + CreditTotal) > 0
ORDER BY VendorName ASC