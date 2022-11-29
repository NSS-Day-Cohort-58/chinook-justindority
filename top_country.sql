SELECT i.BillingCountry, SUM(i.Total) AS CountryTotal
FROM Invoice i
Group By i.BillingCountry
ORDER BY CountryTotal DESC
LIMIT 1