SELECT FirstName || ' ' || LastName AS FullName, CustomerId, Country
FROM Customer
WHERE Country NOT IN ('US', 'United States', 'USA')