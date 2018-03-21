CREATE TRIGGER InvoicesUPDATEShipping
ON Invoices
AFTER INSERT, UPDATE
AS
INSERT ShippingLabels
SELECT VendorName, VendorAddress1, VendorAddress2,
VendorCity, VendorState, VendorZipCode
FROM Vendors JOIN inserted
ON Vendors.VendorID = (SELECT VendorID FROM Vendors)
WHERE inserted.InvoiceTotal - inserted.PaymentTotal
- inserted.CreditTotal = 0

UPDATE Invoices
SET PaymentTotal = 662, PaymentDate = '2006-06-23'
WHERE InvoiceID = 100