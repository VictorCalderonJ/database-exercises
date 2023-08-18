USE codeup_test_db;
#Finding album name
SELECT * FROM albums
WHERE artist = 'Pink Floyd';
#finding year of release
SELECT release_date FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
#finding genre
SELECT genre FROM albums
where name = 'Nevermind';
#Finding the release date
SELECT * FROM albums
where release_date = 1990;
#Which sales has less than set number
SELECT * FROM albums
where sales < 20;
#All genre with all pick
SELECT * FROM albums
where genre = "Rock";
