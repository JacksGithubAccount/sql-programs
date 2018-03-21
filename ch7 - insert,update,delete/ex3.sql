set IDENTITY_INSERT vendorcopy ON

INSERT INTO vendorcopy
 (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorPhone, VendorContactLName, VendorContactFName, 
 DefaultTermsID, DefaultAccountNo)
SELECT VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorPhone, VendorContactLName, VendorContactFName, 
 DefaultTermsID, DefaultAccountNo
FROM Vendors AS vnd
WHERE (VendorState <> 'CA')