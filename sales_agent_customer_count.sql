SELECT e.FirstName || ' ' || e.LastName AS EmployeeName, COUNT(c.CustomerId) AS CustomerCount
FROM Customer c
JOIN Employee e on c.SupportRepId = e.EmployeeId
Group By e.EmployeeId