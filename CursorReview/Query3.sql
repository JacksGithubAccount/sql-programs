Create table PurchaseTotal
(PurchasesID Int Identity Primary Key,
PurchasesCustId int NOT NULL,
PurchasesTotal money not null)

create table PurchasedItems
(PurchasedItemsId int not null,
LineNumber int not null,
ProductId Char(5) not null,
PurchasedQuantity Int not null,
PurchasedPrice money not null)
