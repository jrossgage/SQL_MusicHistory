select * from genre

select * from artist
order by artistName

select s.*,
a. ArtistName
from song s 
left join Artist a on s.artistId = a.id 

select album.title,
artist.artistName,
genre.[Name]
from Album
join Artist  on album.artistid = artist.id
join genre on album.genreid = genre.id 
Where [Name] = 'Rock' or [Name] = 'Jazz'

select album.title
from album
left join song on album.id = song.AlbumId
where song.AlbumId is null 

insert into artist (artistName, YearEstablished) values ('Fleet Foxes', 2006)
insert into album (title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) values ('Shore', '09/22/2020', 3262, 'Anti-Records', 28, 2)
insert into song (Title, Songlength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Wading in Waist-High Water', 135, '09/22/2020', 2, 28, 23),
('Sunblind', 135, '09/22/2020', 2, 28, 23),
('Can I Believe You', 135, '09/22/2020', 2, 28, 23),
('Jara', 135, '09/22/2020', 2, 28, 23);

select song.Title,
album.Title,
Artist.ArtistName
from song
left join album on album.id = song.AlbumId
left join Artist on artist.id = song.ArtistId
where artist.ArtistName = 'Fleet Foxes'

select count(*), song.AlbumId
from song
group by song.AlbumId;








