UPDATE invoicecopy
SET TermsID = 2
SELECT Vendors.VendorID, TermsID
 FROM Vendors JOIN InvoiceCopy
	ON Vendors.VendorID = InvoiceCopy.VendorID
 WHERE DefaultTermsID = 2