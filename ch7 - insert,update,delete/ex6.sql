UPDATE invoicecopy
SET TermsID = 2
WHERE (VendorID IN
 (SELECT VendorID
 FROM Vendors
 WHERE (DefaultTermsID = 2)))