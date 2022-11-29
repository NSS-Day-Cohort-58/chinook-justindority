SELECT t.Name AS TrackName, Count(il.InvoiceLineId) AS Purchases
FROM InvoiceLine il
JOIN Track t on il.TrackId = t.TrackId
JOIN Invoice i on i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE '%2013%'
GROUP BY t.Name
ORDER BY Purchases DESC