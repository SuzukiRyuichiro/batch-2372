-- Write the SQL queries to answer these questions:

-- quick check
select count(*) from artists;
select count(*) from tracks;

-- List all artists (only names)
select name from artists;

-- Count the number of tracks that are shorter than 2 minutes
select count(*) from tracks where milliseconds < 60 * 2 * 1000;

-- List the first ten albums of the Jukebox DB, sorted alphabetically
select title from albums order by title limit 10;
