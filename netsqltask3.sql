CREATE TABLE IF NOT EXISTS Singer (
	id serial PRIMARY KEY,
	alias varchar(40) NOT NULL
);	

CREATE TABLE IF NOT EXISTS Genre (
	id serial PRIMARY KEY,
	genre_name varchar(40)
);

CREATE TABLE IF NOT EXISTS SingerGenre (
	id serial PRIMARY KEY,
	singer_id integer NOT NULL REFERENCES Singer(id),
	genre_id integer NOT NULL REFERENCES Genre(id)
);
	
CREATE TABLE IF NOT EXISTS Album (
	id serial PRIMARY KEY,
	title varchar(80) NOT NULL,
	release_date date
);

CREATE TABLE IF NOT EXISTS SingerAlbum (
	id serial PRIMARY KEY,
	singer_id integer NOT NULL REFERENCES Singer(id),
	album_id integer NOT NULL REFERENCES Album(id)
);	

CREATE TABLE IF NOT EXISTS Track (
	id serial PRIMARY KEY,
	title varchar(80) NOT NULL,
	duration numeric,
	album_id integer NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id serial PRIMARY KEY,
	title varchar(80) NOT NULL,
	release_date date
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	id serial PRIMARY KEY,
	collection_id integer NOT NULL REFERENCES Collection(id),
	track_id integer NOT NULL REFERENCES Track(id)
);
	