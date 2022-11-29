SELECT al.Title as AlbumTitle, mt.Name as MediaType, g.Name as Genre
FROM Track t
Join Album al On t.AlbumId = al.AlbumId
Join Genre g On t.GenreId = g.GenreId
Join MediaType mt On mt.MediaTypeId = t.MediaTypeId