SELECT SUM(PurchPrice)
FROM Purchases
WHERE CustID = 3
GROUP BY CustID