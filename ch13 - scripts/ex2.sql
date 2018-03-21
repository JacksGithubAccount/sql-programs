Declare @tempTable Table
SELECT VendorName, FirstInvoiceDate, InvoiceTotal
FROM Invoices JOIN
(SELECT VendorID, MIN(InvoiceDate) AS FirstInvoiceDate
FROM Invoices
GROUP BY VendorID) AS FirstInvoice
ON (Invoices.VendorID = FirstInvoice.VendorID AND
Invoices.InvoiceDate = FirstInvoice.FirstInvoiceDate)
JOIN Vendors
ON Invoices.VendorID = Vendors.VendorID
ORDER BY VendorName, FirstInvoiceDate