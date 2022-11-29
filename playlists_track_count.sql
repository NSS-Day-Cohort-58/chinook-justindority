SELECT p.Name, Count(pt.TrackId) AS NumberOfTracks
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
Group by p.PlaylistId