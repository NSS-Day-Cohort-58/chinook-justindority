SELECT COUNT(l.InvoiceId) AS LineItemCount
FROM Invoice i
JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceID
WHERE l.InvoiceId = 37