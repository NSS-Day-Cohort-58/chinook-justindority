SELECT e.FirstName || ' ' || e.LastName AS EmployeeName, SUM(i.Total)
From Invoice i
join Customer c on i.CustomerId = c.CustomerId
join Employee e on c.SupportRepId = e.EmployeeId
Group by e.EmployeeId