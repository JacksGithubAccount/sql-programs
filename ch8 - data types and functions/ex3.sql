SELECT(VendorContactFName+' '+LEFT(VendorContactLName,1)+'.') AS Contact, 
 SUBSTRING(VendorPhone,6,15) AS Phone 
FROM Vendors 
WHERE PATINDEX ('%559%',SUBSTRING(VendorPhone,1,5))>0 
ORDER BY VendorContactFName,VendorContactLName