TRUNCATE TABLE artists RESTART IDENTITY; 
TRUNCATE TABLE albums RESTART IDENTITY; 

INSERT INTO artists (name, genre) VALUES ('Pixies', 'Rock');

INSERT INTO albums (title, release_year, artist_id) VALUES ('Bossonova', '1989', '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ('Surfer Rosa', '2001', '1');