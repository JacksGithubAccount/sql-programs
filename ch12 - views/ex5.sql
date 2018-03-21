ALTER VIEW VendorNames AS
SELECT VendorName
FROM Vendors
WHERE VendorState IN ('NY', 'NJ')