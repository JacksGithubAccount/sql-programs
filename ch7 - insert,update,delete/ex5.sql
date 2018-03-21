UPDATE invoicecopy
SET PaymentDate = GETDATE()


UPDATE invoicecopy
SET PaymentTotal = CreditTotal
WHERE (CreditTotal > 0)