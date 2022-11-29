SELECT c.FirstName || ' ' || c.LastName AS FullName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
JOIN Customer c ON Invoice.CustomerId = c.CustomerId
WHERE Country = 'Brazil'