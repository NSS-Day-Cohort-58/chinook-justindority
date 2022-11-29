SELECT COUNT(i.InvoiceId) as YearInvoices
FROM Invoice i
WHERE i.InvoiceDate like '%2009%'
    or i.invoiceDate like '%2011%'