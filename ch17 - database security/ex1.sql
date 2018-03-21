CREATE ROLE PaymentEntry
GRANT UPDATE
	ON Invoices
	TO PaymentEntry
GRANT INSERT,UPDATE
	ON InvoiceLineItems
	TO PaymentEntry
EXEC sp_AddRoleMember db_datareader, PaymentEntry