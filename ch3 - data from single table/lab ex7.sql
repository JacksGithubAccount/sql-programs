SELECT PaymentDate
FROM Invoices
WHERE CreditTotal LIKE '[1-9]%' AND CreditTotal IS NULL OR CreditTotal is NULL and CreditTotal Like '0%'