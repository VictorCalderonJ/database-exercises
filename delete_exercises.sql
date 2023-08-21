USE codeup_test_db;

SELECT * from albums;


DELETE FROM albums
       WHERE release_date > 1991;

DELETE FROM albums
       WHERE albums.genre = 'disco';

DELETE FROM albums
       WHERE artist = 'Whitney Houston';


SELECT * FROM albums;

