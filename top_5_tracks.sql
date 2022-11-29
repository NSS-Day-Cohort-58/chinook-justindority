SELECT t.Name AS TrackName, Count(il.InvoiceLineId) AS Purchases
FROM InvoiceLine il
JOIN Track t on il.TrackId = t.TrackId
JOIN Invoice i on i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY Purchases DESC
LIMIT 5