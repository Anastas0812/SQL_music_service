CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
    genres VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	id SERIAL PRIMARY KEY,
    singers VARCHAR(100) NOT NULL,
    alias VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	albums_name VARCHAR(100) NOT NULL,
	album_release_year DATE CHECK (album_release_year >= '1900/01/01')
);

CREATE TABLE IF NOT EXISTS track (
    id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES album(id),
	track_name VARCHAR(100) NOT NULL,
	track_duration INTEGER CHECK (track_duration <= 3540)
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(100) NOT NULL,
	collection_release_year DATE CHECK (collection_release_year >= '1900/01/01')
);

CREATE TABLE IF NOT EXISTS singergenre (
	singer_id INTEGER REFERENCES singer(id),
	genre_id INTEGER REFERENCES genre(id),
	CONSTRAINT pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albumsinger (
	album_id INTEGER REFERENCES album(id),
	singer_id INTEGER REFERENCES singer(id),
	CONSTRAINT fk PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS collectiontrack (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES collection(id),
	track_id INTEGER NOT NULL REFERENCES track(id)
);
