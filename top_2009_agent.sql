SELECT SupportRepName, MAX(TotalSum) AS TopAgent
FROM 
    (SELECT e.FirstName || ' ' || e.LastName AS SupportRepName, 
    SUM(i.Total) AS TotalSum
    FROM Invoice i 
    JOIN Customer c ON c.CustomerId = i.CustomerId
    JOIN Employee e ON c.SupportRepId = e.EmployeeId
    WHERE i.InvoiceDate LIKE '%2009%'
    GROUP BY e.EmployeeId)