SELECT track_name, track_duration FROM track
WHERE track_duration = (SELECT MAX(track_duration) FROM track);

SELECT track_name FROM track
WHERE track_duration >= 210;

SELECT collection_name FROM collection
WHERE collection_release_year BETWEEN '2018-01-01' AND '2020-12-31';

SELECT alias FROM singer
WHERE alias NOT IN
(SELECT alias FROM singer
	WHERE alias LIKE '% %');

SELECT track_name FROM track
WHERE track_name LIKE '%My%' OR track_name LIKE '%my%';

SELECT genres, COUNT(singer_id) singer_q FROM genre g
JOIN singergenre s ON g.id = s.genre_id
GROUP BY g.genres
ORDER BY singer_q DESC;

SELECT COUNT(track_name) FROM track t
JOIN album a ON t.id = a.id
WHERE album_release_year BETWEEN '2019-01-01' AND '2020-12-31';

SELECT track_name, AVG(track_duration) duration_avg FROM track t
JOIN album a ON t.id = a.id 
GROUP BY t.track_name
ORDER BY duration_avg DESC;

SELECT DISTINCT alias FROM singer s
JOIN albumsinger a ON s.id = a.singer_id
JOIN album b ON a.album_id = b.id
EXCEPT
SELECT DISTINCT alias FROM singer s
JOIN albumsinger a ON s.id = a.singer_id
JOIN album b ON a.album_id = b.id
WHERE b.album_release_year BETWEEN '2020-01-01' AND '2020-12-31';

SELECT DISTINCT collection_name FROM collection c
JOIN collectiontrack c2 ON c.id = c2.collection_id
JOIN track t ON c2.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN albumsinger a2 ON a.id = a2.album_id 
JOIN singer s ON a2.album_id = s.id 
WHERE alias LIKE '%Eminem%';