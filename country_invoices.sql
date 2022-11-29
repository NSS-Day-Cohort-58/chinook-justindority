SELECT BillingCountry, Count(InvoiceId) AS InvoicesPerCountry
FROM Invoice
Group by BillingCountry
