SELECT 
 CAST(InvoiceDate AS varchar) AS CastAsVarchar,
 CONVERT(varchar,InvoiceDate, 1) AS ConvertToStyle1,
 CONVERT(varchar,InvoiceDate ,10) AS ConvertToStyle10,
 CONVERT(varchar, InvoiceDate, 7) AS ConvertToStyle7,
 CONVERT(varchar, InvoiceDate, 107) AS ConvertToStyle107
 from invoices