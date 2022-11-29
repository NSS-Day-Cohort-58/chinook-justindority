select i.Total, c.FirstName || ' ' || c.LastName AS CustomerFullName, c.Country, e.FirstName || ' ' || e.LastName AS SalesAgentFullName
FROM Invoice i
JOIN Customer c on i.CustomerId = c.CustomerId
JOIN Employee e on e.EmployeeId = c.SupportRepId

