SELECT TOP 10 VendorName, SUM(PaymentTotal) AS PaymentSum
FROM Invoices JOIN Vendors
	on Invoices.VendorID = Vendors.VendorID
GROUP BY VendorName
ORDER BY PaymentSum DESC