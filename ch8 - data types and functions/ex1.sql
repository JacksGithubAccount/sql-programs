SELECT InvoiceTotal, 
	CAST (InvoiceTotal AS decimal(20,2)) AS CastAsDecimal,
	CAST (InvoiceTotal AS varchar) AS CastAsVarchar,
	CONVERT (Decimal(20,2), InvoiceTotal) AS ConvertToDecimal,
	CONVERT (varchar, InvoiceTotal, 1) AS ConvertToVarchar
FROM Invoices