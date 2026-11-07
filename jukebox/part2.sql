-- List the track and album information for the tracks which names are containing a given keyword (case insensitive)
-- 'run'
-- select all the tracks with "run" in it (name)
-- add album title with join
select
  name,
  title
from
  tracks
  join albums on tracks.album_id = albums.id
where
  name like '% run %'
  or name like 'run %'
  or name like '% run';

-- List the top 5 Rock artists with the most tracks
-- step1: select all Rock tracks
-- step1.5: we have to add (join) the info who each tracks are sung by
-- step2: count how many tracks each artists have
select
  -- tracks.name, albums.title, artists.name, genres.name
  count(*) as tracks_count,
  artists.name
from
  tracks
  join genres on genres.id = tracks.genre_id
  join albums on albums.id = tracks.album_id
  join artists on artists.id = albums.artist_id
where
  genres.name like 'Rock%'
group by
  artists.name
order by
  tracks_count desc
limit
  5;
