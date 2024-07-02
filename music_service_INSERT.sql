INSERT INTO singer(singers, alias)
VALUES ('Britney Spears', 'River Red'),
	('Madonna Louise Ciccone', 'Madonna'),
	('Elvis Aaron Presley', 'Elvis Presley'),
	('Richard Wayne Penniman', 'Little Richard'),
	('Michael Joseph Jackson', 'Michael Jackson'),
	('Andre Romell Young', 'Dr. Dre'),
	('Marshall Bruce Mathers III', 'Eminem');
	
INSERT INTO genre(genres)
VALUES ('Rock and roll'),
	('Pop music'),
	('Hip hop');
	
INSERT INTO album(albums_name, album_release_year)
VALUES ('Circus', '2019-01-09'),
	('Like a Virgin', '2020-01-02'),
	('Blue Hawaii', '1961-01-01'),
	('The King of Gospel Singers', '1961-01-01'),
	('Thriller', '1982-01-01'),
	('Dretox', '2005-01-01'),
	('Infinite', '1996-01-01');

INSERT INTO track(album_id, track_name, track_duration)
VALUES ('1', 'my Womanizer', '166'),
	('2', 'Material Girl', '241'),
	('3', 'No More', '142'),
	('4', 'Joy, Joy, Joy', '135'),
	('5', 'Beat It', '258'),
	('6', 'Numb Encore', '265'),
	('7', 'Never 2 Far', '218');
	
INSERT INTO collection(collection_name, collection_release_year)
VALUES ('Погрустить', '2008-01-01'),
	('Потанцевать', '2007-01-01'),
	('Лучшее в мире хип-хоп индустрии','2019-01-01'),
	('Rock and roll жив!','2001-01-01');
	
INSERT INTO singergenre(singer_id, genre_id)
VALUES(1, 2),
	(2, 2),
	(3, 1),
	(4, 1),
	(5, 2),
	(6, 3),
	(7, 3);

INSERT INTO albumsinger(album_id, singer_id)
VALUES(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(2, 5),
	(2, 6),
	(4, 7),
	(4, 8),
	(2, 9),
	(1, 10),
	(3, 11);