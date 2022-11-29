SELECT e.FirstName || ' ' || e.LastName as EmployeeName, COUNT(i.invoiceId) AS TotalSales
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY EmployeeName