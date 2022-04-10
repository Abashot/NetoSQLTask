import sqlalchemy

def find_album_release_2018(connection):
    res = connection.execute("""
    SELECT title, release_date FROM Album
        WHERE release_date = 2018;
    """).fetchall()
    print(f'Альбомы, вышедшие в 2018 году: {res}\n')

def find_longest_track(connection):
    res = connection.execute("""
    SELECT title, duration FROM Track
        ORDER BY duration DESC
        LIMIT 1;
    """).fetchall()
    print(f'Самый длинный трек: {res}\n')

def find_track_duration(connection):
    res = connection.execute("""
    SELECT title FROM Track
        WHERE duration >= 210;
    """).fetchall()
    print(f'Треки продолжительностью не менее 3,5 минут: {res}\n')

def find_album_by_date(connection):
    res = connection.execute("""
    SELECT title FROM Collection
        WHERE release_date BETWEEN 2018 AND 2020;
    """).fetchall()
    print(f'Сборники, вышедшие с 2018 по 2020 год: {res}\n')

def find_oneword_singer(connection):
    res = connection.execute("""
    SELECT alias FROM Singer
        WHERE alias not LIKE '%% %%';
    """).fetchall()
    print(f'Исполнитель, чье имя состоит из 1 слова: {res}\n')

def find_singer_by_word(connection):
    res = connection.execute("""
    SELECT title FROM Track
        WHERE title iLIKE '%%мой%%' 
        OR title iLIKE '%%my%%';
    """).fetchall()
    print(f'Треки, названия которых содержат слово "мой"/"my": {res}\n')

if __name__ == '__main__':
    db = 'postgresql://postgres:qEw13222@localhost:5432/netosql3'
    engine = sqlalchemy.create_engine(db)
    connection = engine.connect()

    find_album_release_2018(connection)
    find_longest_track(connection)
    find_track_duration(connection)
    find_album_by_date(connection)
    find_oneword_singer(connection)
    find_singer_by_word(connection)
