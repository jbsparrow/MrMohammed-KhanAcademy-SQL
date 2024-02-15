--			Create Tables

-- Artists Table
CREATE TABLE artists (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	stage_name TEXT NOT NULL,
	real_name TEXT,
	age INTEGER,
	place_of_birth TEXT,
	school_attended TEXT
);

-- Artist Discography Table
CREATE TABLE artist_discography (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	artist_id INTEGER,
	song_name TEXT NOT NULL,
	featured_artist_id INTEGER,
	rating INTEGER,
	release_year INTEGER,
	genre TEXT,
	album_id INTEGER,
	FOREIGN KEY (artist_id) REFERENCES artists(id),
	FOREIGN KEY (featured_artist_id) REFERENCES artists(id),
	FOREIGN KEY (album_id) REFERENCES albums(id)
);

-- Albums Table
CREATE TABLE albums (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	artist_id INTEGER,
	album_name TEXT NOT NULL,
	release_date TEXT,
	rating INTEGER,
	album_cover_image_url TEXT,
	FOREIGN KEY (artist_id) REFERENCES artists(id)
);


-- Foreign keys are used to make sure that the referenced ids exist in the artists table.

--			Insert Data

--      Artists

INSERT INTO artists (stage_name, real_name, age, place_of_birth, school_attended) VALUES
('Chief Keef', 'Keith Cozart', 26, 'Chicago, Illinois', 'Dyett High School'),
('Katy Perry', 'Katheryn Elizabeth Hudson', 37, 'Santa Barbara, California', 'Dos Pueblos High School'),
('Pitbull', 'Armando Christian Pérez', 40, 'Miami, Florida', 'Miami Coral Park High School'),
('Kesha', 'Kesha Rose Sebert', 34, 'Los Angeles, California', NULL),
('Rihanna', 'Robyn Rihanna Fenty', 33, 'Saint Michael, Barbados', 'Combermere High School'),
('LMFAO', 'Stefan Kendal Gordy (Redfoo) & Skyler Austen Gordy (Sky Blu)', '48 (Redfoo) and 37 (Sky Blu)', 'Pacific Palisades, Los Angeles', NULL),
('TJR', 'Thomas Joseph Rozdilsky', 40, 'Connecticut, USA', NULL),
('Snoop Dogg', 'Calvin Cordozar Broadus Jr.', 51, 'Long Beach, California', NULL),
('King Louie', 'Louis King Johnson Jr.', 36, 'Chicago, Illinois', NULL),
('Soulja Boy', 'DeAndre Cortez Way', 32, 'Chicago, Illinois', NULL),
('Christina Aguilera', 'Christina María Aguilera', 42, 'Staten Island, New York', 'North Allegheny Intermediate High School'),
('Chris Brown', 'Christopher Maurice Brown', 33, 'Tappahannock, Virginia', 'Essex High School'),
('Marc Anthony', 'Marco Antonio Muñiz', 54, 'New York City, New York', NULL),
('T-Pain', 'Faheem Rashad Najm', 37, 'Tallahassee, Florida', NULL),
('3OH!3', 'Sean Foreman & Nathaniel Motte', '38 (Sean Foreman) and 40 (Nathaniel Motte)', 'Boulder, Colorado', 'University of Colorado (both members)'),
('Jay-Z', 'Shawn Corey Carter', 53, 'Brooklyn, New York', 'Eli Whitney High School'),
('Drake', 'Aubrey Drake Graham', 36, 'Toronto, Ontario, Canada', 'Forest Hill Collegiate Institute'),
('David Guetta', 'Pierre David Guetta', 55, 'Paris, France', NULL),
('Calvin Harris', 'Adam Richard Wiles', 39, 'Dumfries, Scotland', 'Dumfries High School'),
('Lil Jon', 'Jonathan Smith', 52, 'Atlanta, Georgia', 'Frederick Douglass High School'),
('GoonRock', 'David Jamahl Listenbee', 48, 'Los Angeles, California', NULL),
('Lauren Bennett', 'Lauren Bennett', 33, 'Meopham, England', NULL),
('Natalia Kills', 'Natalia Noemi Keery-Fisher', 36, 'Bradford, England', NULL);


--      Albums


-- Chief Keef's Albums
INSERT INTO albums (artist_id, album_name, release_date, rating, album_cover_image_url) VALUES
(1, 'Finally Rich', '2012-12-18', 4.7, 'https://upload.wikimedia.org/wikipedia/en/4/4f/CKFinallyRichStandard.png'),
(1, 'Back from the Dead', '2012-03-12', 4.2, 'https://upload.wikimedia.org/wikipedia/en/8/8c/Chief-keef-cover-mixtape.png');

-- Katy Perry's Albums
INSERT INTO albums (artist_id, album_name, release_date, rating, album_cover_image_url) VALUES
(2, 'Teenage Dream', '2010-08-24', 4.8, 'https://upload.wikimedia.org/wikipedia/en/9/9d/Katy_Perry_-_Teenage_Dream_%28album%29.png'),
(2, 'The Complete Confection', '2012-03-23', 4.6, 'https://upload.wikimedia.org/wikipedia/en/5/5e/TheCompleteConfectionCover.png'),
(2, 'One of the Boys', '2008-06-17', 4.3, 'https://upload.wikimedia.org/wikipedia/en/2/2b/Katy_Perry_-_One_of_the_Boys.png'),
(2, 'Prism', '2013-10-18', 4.5, 'https://upload.wikimedia.org/wikipedia/en/b/b7/Katy_Perry_-_Prism_cover.png');

-- Pitbull's Albums
INSERT INTO albums (artist_id, album_name, release_date, rating, album_cover_image_url) VALUES
(3, 'Global Warming', '2012-11-19', 4.1, 'https://upload.wikimedia.org/wikipedia/en/6/6d/Global_Warming_album.png'),
(3, 'Pitbull Starring in Rebelution', '2009-09-01', 4.0, 'https://upload.wikimedia.org/wikipedia/en/0/06/Rebelution.png'),
(3, 'Planet Pit', '2011-06-17', 4.2, 'https://upload.wikimedia.org/wikipedia/en/f/ff/Pitbull_Planet_Pit_Official_Album_Cover.jpg');

-- Kesha's Albums
INSERT INTO albums (artist_id, album_name, release_date, rating, album_cover_image_url) VALUES
(4, 'Animal', '2010-01-01', 4.4, 'https://upload.wikimedia.org/wikipedia/en/8/8d/AnimalKesha.jpg'),
(4, 'Cannibal', '2010-11-19', 4.3, 'https://upload.wikimedia.org/wikipedia/en/8/85/Cannibal_cover.jpg'),
(4, 'Warrior', '2012-11-30', 4.2, 'https://upload.wikimedia.org/wikipedia/en/5/59/Kesha_Warrior.jpeg'),
(4, 'We R Who We R', '2010-10-22', 4.1, 'https://upload.wikimedia.org/wikipedia/en/7/7a/Keha-We-R-Who-We-R-Official-Single-Cover.jpg');

-- Rihanna's Albums
INSERT INTO albums (artist_id, album_name, release_date, rating, album_cover_image_url) VALUES
(5, 'Good Girl Gone Bad', '2007-05-31', 4.9, 'https://upload.wikimedia.org/wikipedia/en/f/f7/Good_Girl_Gone_Bad.png'),
(5, 'Loud', '2010-11-12', 4.7, 'https://upload.wikimedia.org/wikipedia/en/d/d1/Rihanna_-_Loud.png'),
(5, 'Talk That Talk', '2011-11-18', 4.5, 'https://upload.wikimedia.org/wikipedia/en/8/8e/Rihanna_-_Talk_That_Talk_%28standard%29.png');

-- LMFAO's Albums
INSERT INTO albums (artist_id, album_name, release_date, rating, album_cover_image_url) VALUES
(6, 'Party Rock', '2009-07-07', 4.0, 'https://upload.wikimedia.org/wikipedia/en/8/82/Party_Rock.jpg'),
(6, 'Sorry For Party Rocking', '2011-06-21', 4.2, 'https://upload.wikimedia.org/wikipedia/en/4/49/LMFAO_-_Sorry_For_Party_Rocking.png');



--      Songs


-- Chief Keef's Songs
INSERT INTO artist_discography (artist_id, song_name, release_year, genre, album_id, rating, featured_artist_id) VALUES
(1, 'Love Sosa', 2012, 'Hip Hop', 1, 4.5, NULL),
(1, 'Winnin', 2012, 'Hip Hop', 1, 4.0, 9), 
(1, 'Don''t Know Dem', 2012, 'Hip Hop', 1, 4.2, NULL),
(1, 'Save That Shit', 2012, 'Hip Hop', 2, 3.8, 10); 

-- Katy Perry's Songs
INSERT INTO artist_discography (artist_id, song_name, release_year, genre, album_id, rating, featured_artist_id) VALUES
(2, 'The One That Got Away', 2010, 'Pop', 3, 4.6, NULL),
(2, 'California Gurls', 2010, 'Pop', 3, 4.5, 8), 
(2, 'Wide Awake', 2012, 'Pop', 3, 4.7, NULL),
(2, 'Part of Me', 2012, 'Pop', 4, 4.5, NULL),
(2, 'Roar', 2013, 'Pop', 4, 4.8, NULL),
(2, 'Hot N Cold', 2008, 'Pop', 5, 4.4, NULL),
(2, 'I Kissed A Girl', 2008, 'Pop', 5, 4.5, NULL);

-- Pitbull's Songs
INSERT INTO artist_discography (artist_id, song_name, release_year, genre, album_id, rating, featured_artist_id) VALUES
(3, 'Don''t Stop The Party', 2012, 'Pop', 7, 4.1, 7), 
(3, 'Feel This Moment', 2012, 'Pop', 7, 4.3, 11), 
(3, 'Timber', 2013, 'Pop', 7, 4.7, 4), 
(3, 'Hotel Room Service', 2009, 'Pop', 8, 4.0, NULL),
(3, 'I Know You Want Me', 2009, 'Pop', 8, 4.2, NULL),
(3, 'International Love', 2011, 'Pop', 9, 4.4, 12), 
(3, 'Rain Over Me', 2011, 'Pop', 9, 4.5, 13), 
(3, 'Hey Baby', 2010, 'Pop', 9, 4.3, 14); 

-- Kesha's Songs
INSERT INTO artist_discography (artist_id, song_name, release_year, genre, album_id, rating, featured_artist_id) VALUES
(4, 'Your Love Is My Drug', 2010, 'Pop', 10, 4.5, NULL),
(4, 'Take It Off', 2009, 'Pop', 10, 4.2, NULL),
(4, 'TikTok', 2009, 'Pop', 10, 4.8, NULL),
(4, 'Blah Blah Blah', 2010, 'Pop', 11, 4.0, 15), 
(4, 'We R Who We R', 2010, 'Pop', 11, 4.6, NULL),
(4, 'Grow A Pear', 2010, 'Pop', 11, 3.9, NULL),
(4, 'Cannibal', 2010, 'Pop', 11, 4.1, NULL),
(4, 'Blow', 2010, 'Pop', 11, 4.4, NULL),
(4, 'C''Mon', 2012, 'Pop', 12, 4.3, NULL),
(4, 'Die Young', 2012, 'Pop', 12, 4.7, NULL);

-- Rihanna's Songs
INSERT INTO artist_discography (artist_id, song_name, release_year, genre, album_id, rating, featured_artist_id) VALUES
(5, 'Don''t Stop The Music', 2007, 'Pop', 14, 4.6, NULL),
(5, 'Shut Up and Drive', 2007, 'Pop', 14, 4.3, NULL),
(5, 'Disturbia', 2007, 'Pop', 14, 4.7, NULL),
(5, 'Umbrella', 2007, 'Pop', 14, 4.9, 16), 
(5, 'Who''s That Chick', 2010, 'Pop', 15, 4.4, 18), 
(5, 'What''s My Name', 2010, 'Pop', 15, 4.8, 17), 
(5, 'S&M', 2010, 'Pop', 15, 4.7, NULL),
(5, 'We Found Love', 2011, 'Pop', 16, 4.9, 19); 

-- LMFAO's Songs
INSERT INTO artist_discography (artist_id, song_name, release_year, genre, album_id, rating, featured_artist_id) VALUES
(6, 'Get Crazy', 2009, 'Dance', 17, 3.8, NULL),
(6, 'La La La', 2009, 'Dance', 17, 4.0, NULL),
(6, 'Shots', 2009, 'Dance', 17, 4.2, 20), 
(6, 'Yes', 2009, 'Dance', 17, 4.1, NULL),
(6, 'Hot Dog', 2011, 'Dance', 18, 3.9, NULL),
(6, 'One Day', 2011, 'Dance', 18, 4.3, NULL),
(6, 'Party Rock Anthem', 2011, 'Dance', 18, 4.8, 21), 
(6, 'Champagne Showers', 2011, 'Dance', 18, 4.4, 22), 
(6, 'Sexy and I Know It', 2011, 'Dance', 18, 4.7, NULL),
(6, 'Sorry For Party Rocking', 2011, 'Dance', 18, 4.5, NULL);


--			Queries


-- Select only songs with features
SELECT main.stage_name AS main_artist, ad.song_name, feat.stage_name AS featured_artist
FROM artist_discography ad
JOIN artists main ON ad.artist_id = main.id
JOIN artists feat ON ad.featured_artist_id = feat.id;

-- Select all songs and use coalesce to set NULL featured artists to 'N/A'
SELECT main.stage_name AS main_artist, ad.song_name, COALESCE(feat.stage_name, 'N/A') AS featured_artist
FROM artist_discography ad
JOIN artists main ON ad.artist_id = main.id
LEFT JOIN artists feat ON ad.featured_artist_id = feat.id;

-- Find all of an artists' songs
SELECT main.stage_name AS main_artist, ad.song_name, COALESCE(feat.stage_name, 'N/A') AS featured_artist, ad.release_year
FROM artist_discography ad
JOIN artists main ON ad.artist_id = main.id
LEFT JOIN artists feat ON ad.featured_artist_id = feat.id
WHERE main.stage_name = 'Rihanna';

-- Find all of an artists songs and sort by rating
SELECT main.stage_name AS main_artist, ad.song_name, COALESCE(feat.stage_name, 'N/A') AS featured_artist, ad.release_year, al.album_name
FROM artist_discography ad
JOIN artists main ON ad.artist_id = main.id
LEFT JOIN artists feat ON ad.featured_artist_id = feat.id
JOIN albums al ON ad.album_id = al.id
WHERE main.stage_name = 'Chief Keef'
ORDER BY ad.rating DESC;

-- Find all of an artists' albums
SELECT main.stage_name, al.album_name, al.rating, COUNT(ad.song_name) AS songs
FROM albums al
JOIN artists main ON al.artist_id = main.id
LEFT JOIN artist_discography ad ON ad.album_id = al.id
WHERE main.stage_name = 'Katy Perry'
GROUP BY al.album_name, al.rating, main.stage_name;

-- Find album details
SELECT a.stage_name, al.album_name, al.release_date, al.rating
FROM albums al
JOIN artists a ON al.artist_id = a.id;

-- Find all songs an artist is featured on
SELECT ad.song_name, main.stage_name AS main_artist, feat.stage_name AS featured_artist, ad.rating
FROM artist_discography ad
JOIN artists main ON ad.artist_id = main.id
JOIN artists feat ON ad.featured_artist_id = feat.id
WHERE feat.stage_name = 'Kesha';

-- Find all songs by Katy Perry released in 2012 with a rating of 4 or higher
SELECT song_name, release_year, rating
FROM artist_discography
JOIN artists ON artist_discography.artist_id = artists.id
WHERE artists.stage_name = 'Katy Perry' AND release_year = 2012 AND rating >= 4.0;

-- Find all songs by Pitbull or Rihanna
SELECT song_name, artists.stage_name AS artist_name, release_year, rating
FROM artist_discography
JOIN artists ON artist_discography.artist_id = artists.id
WHERE artists.stage_name IN ('Pitbull', 'Rihanna')
ORDER BY rating DESC;

-- Find details about an artist
SELECT stage_name, real_name, age, place_of_birth, COALESCE(school_attended, '') AS school_attended
FROM artists
WHERE stage_name = 'Katy Perry';

-- Find all artists from Chicago
SELECT stage_name, real_name, age, place_of_birth, COALESCE(school_attended, '') AS school_attended
FROM artists
WHERE place_of_birth LIKE '%Chicago%';

-- Find all artists whse name starts with a K.
SELECT stage_name, real_name, age, place_of_birth, COALESCE(school_attended, '') AS school_attended
FROM artists
WHERE stage_name LIKE 'K%';

-- Find all artists under the age of 35
SELECT stage_name, real_name, age, place_of_birth, COALESCE(school_attended, '') AS school_attended
FROM artists
WHERE age < 35;