SELECT InvoiceNumber AS [Number], Total = InvoiceTotal, PaymentTotal + CreditTotal AS [Credits] , InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance 
FROM Invoices