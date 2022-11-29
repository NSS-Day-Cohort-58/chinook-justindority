SELECT STRFTIME('%Y', i.InvoiceDate) AS Year, COUNT(i.InvoiceId) as YearInvoices
FROM Invoice i
WHERE i.InvoiceDate like '%2009%'
    or i.invoiceDate like '%2011%'
Group by Year