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

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
select count(*), song.AlbumId
from song
group by song.AlbumId;
--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
select count(*), song.ArtistId
from song
group by song.ArtistId
--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
select count(*) as NumberOfSongs, Genre.[Name] as Genre
from Song
left join Genre on song.GenreId = Genre.Id
group by song.GenreId, genre.Name
--14 Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
select artist.ArtistName,
Album.Label
from Album
left join Artist on album.ArtistId = Artist.Id
group by album.Label, artist.ArtistName
having count(album.label) > 1;
--15 Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
select title, AlbumLength
from album
where AlbumLength = (
select MAX(AlbumLength)
from album) 

select max(albumlength), title
from album

--16 Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
select songLength, title
from song
where SongLength = (
select max(songlength)
from song)

--17 Modify the previous query to also display the title of the album.
select song.songLength, song.title, Album.Title
from song
left join Album on song.AlbumId = Album.Id
where SongLength = (
select max(songlength)
from song)







