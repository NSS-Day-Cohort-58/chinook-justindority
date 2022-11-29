SELECT m.name AS MediaType, COUNT(il.InvoiceLineId) AS TrackSales
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.MediaTypeId
ORDER BY TrackSales DESC
LIMIT 1
