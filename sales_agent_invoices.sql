SELECT e.FirstName || ' ' || e.LastName AS FullName, i.InvoiceId
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'