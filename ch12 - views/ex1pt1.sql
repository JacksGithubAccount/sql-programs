CREATE VIEW InvoiceBasic AS
SELECT VendorName, InvoiceNumber, InvoiceTotal
FROM Invoices JOIN Vendors ON vendors.VendorID = invoices.VendorID

