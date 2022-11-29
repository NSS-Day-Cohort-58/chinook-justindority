SELECT STRFTIME('%Y', i.InvoiceDate) AS Year, SUM(i.Total) as InvoiceSum
FROM Invoice i
WHERE i.InvoiceDate like '%2009%'
    or i.invoiceDate like '%2011%'
Group by Year