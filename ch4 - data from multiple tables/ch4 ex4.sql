SELECT VendorName, DefaultAccountNo, AccountDescription
FROM Vendors, GLAccounts
WHERE Vendors.DefaultAccountNo = GLAccounts.AccountNo
ORDER BY AccountDescription, VendorName