DELETE FROM VendorCopy
WHERE VendorState NOT IN
(SELECT DISTINCT VendorState
 FROM VendorCopy)