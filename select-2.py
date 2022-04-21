import sqlalchemy

def count_singer_in_genre(connection):
    res = connection.execute("""
    SELECT genre_name, COUNT(singer_id) FROM Genre
        JOIN SingerGenre ON genre.id = SingerGenre.genre_id
        GROUP BY genre_name;
    """).fetchall()
    print(f'Количество исполнителей в жанре: {res}\n')

def count_traсks_in_albums_2020_2021(connection):
    res = connection.execute("""
    SELECT COUNT(title) FROM Track
        WHERE album_id = (SELECT id FROM Album
        WHERE release_date = 2020 OR release_date = 2019);
    """).fetchall()
    print(f'Количество треков, вошедших в альбомы 2019-2020 годов: {res}\n')

def count_tracks_average_duration(connection):
    res = connection.execute("""
    SELECT album.title, AVG(duration) FROM Track
        JOIN Album ON track.album_id = album.id
        GROUP BY album.title;
    """).fetchall()
    print(f'Cредняя продолжительность треков в альбоме: {res}\n')

def count_singer_without_album_2020(connection):
    res = connection.execute("""
    SELECT alias FROM Singer
        JOIN SingerAlbum ON singer.id = SingerAlbum.singer_id
        JOIN album ON SingerAlbum.album_id = album.id
        WHERE release_date != 2020;
    """).fetchall()
    print(f'Исполнители, не выпустившие альбомы в 2020 году: {res}\n')

def find_ludacris_in_collections(connection):
    res = connection.execute("""
    SELECT DISTINCT collection.title FROM Collection
        JOIN CollectionTrack ON collectiontrack.collection_id = collection.id
        JOIN Track ON collectiontrack.track_id = track.id
        JOIN Album ON track.album_id = album.id
        JOIN SingerAlbum ON singeralbum.album_id = album.id
        JOIN Singer ON singer.id = singeralbum.singer_id
        WHERE alias = 'Ludacris';
    """).fetchall()
    print(f'Сборники, в которых присутствует Ludacris: {res}\n')

def find_album_more_than_one_genre(connection):
    res = connection.execute("""
    SELECT alias, album.title, COUNT(genre_id) FROM Singer
        JOIN SingerGenre ON singer.id = singergenre.singer_id
        JOIN SingerAlbum ON singer.id = singeralbum.singer_id
        JOIN album ON singeralbum.album_id = album.id
        GROUP BY alias, album.title
        HAVING COUNT(genre_id)>1;
    """).fetchall()
    print(f'Альбомы, в которых присутствуют исполнители более 1 жанра: {res}\n')

def find_no_colllection_tracks(connection):
    res = connection.execute("""
    SELECT track.title FROM Track
        LEFT JOIN CollectionTrack ON track.id = collectiontrack.track_id
        WHERE collectiontrack.track_id IS NULL;
    """).fetchall()
    print(f'Треки, которые не входят в сборники: {res}\n')

def find_shortest_track_singer(connection):
    res = connection.execute("""
    SELECT alias, title, duration FROM Track
        JOIN SingerAlbum ON track.album_id = singeralbum.album_id
        JOIN Singer ON singer.id = singeralbum.singer_id
        WHERE duration = (SELECT MIN(duration) FROM Track);
    """).fetchall()
    print(f'Исполнитель, написавший самый короткий по продолжительности трек: {res}\n')

def find_smallest_number_of_tracks_album(connection):
    res = connection.execute("""
    SELECT DISTINCT album.title FROM Album
        LEFT JOIN Track ON track.album_id = album.id
        WHERE track.album_id IN (SELECT album_id FROM Track
            GROUP BY album_id
            HAVING COUNT(id) = (SELECT COUNT(id) FROM Track
            GROUP BY album_id
            ORDER BY COUNT
            LIMIT 1
            )
        )
    ORDER BY album.title
    """).fetchall()
    print(f'Альбомы, содержащие наименьшее количество треков: {res}\n')

if __name__ == '__main__':
    db = 'postgresql://postgres:qEw13222@localhost:5432/netosql3'
    engine = sqlalchemy.create_engine(db)
    connection = engine.connect()

    count_singer_in_genre(connection)
    count_traсks_in_albums_2020_2021(connection)
    count_tracks_average_duration(connection)
    count_singer_without_album_2020(connection)
    find_ludacris_in_collections(connection)
    find_album_more_than_one_genre(connection)
    find_no_colllection_tracks(connection)
    find_shortest_track_singer(connection)
    find_smallest_number_of_tracks_album(connection)