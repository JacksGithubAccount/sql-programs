SELECT InvoiceTotal, InvoiceTotal * .1 AS [10%], InvoiceTotal  * 1.1 AS [Plus 10%]
FROM Invoices
WHERE CreditTotal > 1000