SELECT VendorName, 'CA' AS VendorState
FROM Vendors
WHERE VendorState = 'CA'
UNION
SELECT VendorName, 'Outside CA' AS VendorState
FROM Vendors
WHERE VendorState != 'CA'
ORDER BY VendorName