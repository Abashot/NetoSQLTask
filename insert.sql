INSERT INTO Singer
	VALUES(1, 'ISAN');
	
INSERT INTO Singer
	VALUES(2, 'Би-2');
	
INSERT INTO Singer
	VALUES(3, 'Монеточка');
	
INSERT INTO Singer
	VALUES(4, 'Сплин');
	
INSERT INTO Singer
	VALUES(5, 'Татьяна Буланова');
	
INSERT INTO Singer
	VALUES(6, 'Shantel');
	
INSERT INTO Singer
	VALUES(7, 'Jefferson Airplane');
	
INSERT INTO Singer
	VALUES(8, 'Ludacris');

INSERT INTO Singer
	VALUES(9, 'DMX');
		
INSERT INTO Genre 
	VALUES(1, 'Rock');
	
INSERT INTO Genre 
	VALUES(2, 'Pop');
	
INSERT INTO Genre
	VALUES(3, 'Folk');
	
INSERT INTO Genre 
	VALUES(4, 'Electronic');
	
INSERT INTO Genre 
	VALUES(5, 'R&B');

INSERT INTO Genre
	VALUES(6, 'Hip-Hop');

INSERT INTO Album 
	VALUES(1, 'Clockwork Menagerie', 2002); 
	
INSERT INTO Album 
	VALUES(2, 'Пекло', 2020);

INSERT INTO Album 
	VALUES(3, 'Раскраски для взрослых', 2018);

INSERT INTO Album 
	VALUES(4, 'Обман зрения', 2012);

INSERT INTO Album 
	VALUES(5, 'Мой сон', 2000);

INSERT INTO Album 
	VALUES(6, 'Disko Partizani', 2007);

INSERT INTO Album 
	VALUES(7, 'Surrealistic Pillow', 1967);
	
INSERT INTO Album 
	VALUES(8, 'The Red Light District', 2004);

INSERT INTO Album
	VALUES(9, 'The Definition of X, Pick Of The Litter', 2007);	

INSERT INTO Track 
	VALUES(1, 'Remegio', 410, 1);
	
INSERT INTO Track 
	VALUES(2, 'Calf', 284, 1);
	
INSERT INTO Track 
	VALUES(3, 'Пекло', 296, 2);
	
INSERT INTO Track 
	VALUES(4, 'Мосты', 321, 2);
	
INSERT INTO Track 
	VALUES(5, 'Каждый раз', 208, 3);
	
INSERT INTO Track 
	VALUES(6, 'Нимфоманка', 160, 3);
	
INSERT INTO Track 
	VALUES(7, 'Дочь самурая', 216, 4);
	
INSERT INTO Track 
	VALUES(8, 'Чудак', 149, 4);
	
INSERT INTO Track 
	VALUES(9, 'Мой сон', 303, 5);
	
INSERT INTO Track 
	VALUES(10, 'Лето-зима', 275, 5);
	
INSERT INTO Track 
	VALUES(11, 'Disco Boy', 259, 6);
	
INSERT INTO Track 
	VALUES(12, 'Immigrant Child', 232, 6);
	
INSERT INTO Track 
	VALUES(13, 'Somebody to Love', 175, 7);
	
INSERT INTO Track 
	VALUES(14, 'White Rabbit', 150, 7);
	
INSERT INTO Track 
	VALUES(15, 'Get Back', 270, 8);
	
INSERT INTO Track 
	VALUES(16, 'Pass Out', 261, 8);

INSERT INTO Track 
	VALUES(17, 'Party Up', 272, 9);
	
INSERT INTO Collection  
	VALUES(1, 'Большая коллекция', 2014);
	
INSERT INTO Collection  
	VALUES(2, 'The Hits That Never Were', 2016);
	
INSERT INTO Collection  
	VALUES(3, 'Nice 60s', 2016);
	
INSERT INTO Collection  
	VALUES(4, 'How Deep...', 2019);
	
INSERT INTO Collection  
	VALUES(5, 'Retromania', 2007);
	
INSERT INTO Collection  
	VALUES(6, 'Pure... Psychedelic Rock', 2013);
	
INSERT INTO Collection  
	VALUES(7, 'Rap Stars', 2022);
	
INSERT INTO Collection  
	VALUES(8, 'Rap Hits', 2022);
	
INSERT INTO Collection  
	VALUES(9, 'Angry Rap', 2020);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(1, 4);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(2, 1);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(2, 2);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(3, 2);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(4, 1);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(5, 2);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(6, 2);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(6, 3);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(7, 1);
	
INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(8, 5);

INSERT INTO SingerGenre(singer_id, genre_id)
	VALUES(9, 6);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(1, 1);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(2, 2);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(3, 3);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(4, 4);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(5, 5);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(6, 6);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(7, 7);
	
INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(8, 8);

INSERT INTO SingerAlbum(singer_id, album_id)
	VALUES(9, 9);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(1, 9);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(2, 13);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(3, 13);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(4, 13);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(5, 14);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(6, 14);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(7, 15);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(8, 15);
	
INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(9, 15);

INSERT INTO CollectionTrack(collection_id, track_id)
	VALUES(8, 17);