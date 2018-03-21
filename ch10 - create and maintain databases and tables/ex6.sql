ALTER TABLE Invoices WITH CHECK 
ADD check ( 
    (PaymentTotal = 0 AND PaymentDate is NULL) 
    OR 
    (PaymentTotal > 0 AND PaymentDate is NOT NULL) 
) 
go

ALTER TABLE Invoices WITH CHECK
ADD CHECK ( 
    (PaymentTotal + CreditTotal) <= InvoiceTotal 
) 
go