select t.name as TrackName, l.*
from InvoiceLine l
join Track t on l.TrackId = t.TrackId