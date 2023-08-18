USE codeup_test_db;

SELECT * from albums;

SELECT * from albums
WHERE release_date < 1980;

SELECT * from albums
WHERE artist = 'Michael Jackson';

#UPDATING
UPDATE albums
set sales = sales * 10;
SELECT * from albums;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
SELECT * from albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;



