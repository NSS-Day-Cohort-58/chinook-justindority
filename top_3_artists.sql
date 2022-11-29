SELECT ar.Name AS ArtistName, COUNT(il.InvoiceLineId) AS TrackSales
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId
Group By ar.ArtistId
Order By TrackSales DESC
LIMIT 3