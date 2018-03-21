SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorCity + VendorState NOT IN
	(SELECT VendorCity+VendorState
	 FROM Vendors
	 GROUP BY VendorCity, VendorState
	 HAVING COUNT(*) > 1)
ORDER BY VendorState, VendorCity