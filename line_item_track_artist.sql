select t.name as TrackName, a.Name, l.*
from InvoiceLine l
join Track t on l.TrackId = t.TrackId
join Album aa on t.AlbumId = aa.AlbumId
join Artist a on aa.ArtistId = a.ArtistId