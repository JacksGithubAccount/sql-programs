SELECT VendorContactLName + ', ' + VendorContactFName
FROM Vendors
WHERE VendorContactLName LIKE '[A,B,C,E]%'
ORDER BY VendorContactLName, VENDORContactFName
