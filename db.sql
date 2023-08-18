 select playlists.Name, count(*) as Total from playlists 
join playlist_track
 on playlists.PlaylistId=playlist_track.PlaylistId
 group by playlists.Name
 order by Total desc limit 1;

  select playlists.Name, count(*) as Total from playlists 
join playlist_track
 on playlists.PlaylistId=playlist_track.PlaylistId
 group by playlists.Name
 order by Total asc limit 1;

 select * from invoices where invoices.InvoiceId=17;
 --fint min/max 
 select InvoiceId, MIN(Total) as Total from invoices;

  select InvoiceId, MAX(Total) as Total from invoices;

select SUM(Total) as Total from invoices;

select 
artists.Name, count(*) as TotalTracks
from artists
join albums on albums.ArtistId=artists.ArtistId
join tracks on tracks.AlbumId=albums.AlbumId
GROUP BY artists.Name
ORDER BY TotalTracks ASC
limit 1 ;--OFFSET 3;
