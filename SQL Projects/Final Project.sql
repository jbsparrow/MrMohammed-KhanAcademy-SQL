CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m NUMERIC,
    weight_kg NUMERIC,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER);
    
INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4); 
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4); 
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 1, 7, 3, 7, 5, 4); 
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7);
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 2, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3);
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4);
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3);
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4);
INSERT INTO marvels VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4);
INSERT INTO marvels VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7);
INSERT INTO Marvels VALUES(13, "Storm", 2, "Good", "Female", 1.80, 66, "Kenya", 2, 2, 3, 2, 5, 4);
INSERT INTO Marvels VALUES(14, "Nightcrawler", 6, "Good", "Male", 1.75, 73, "Germany", 3, 2, 7, 2, 1, 3);
INSERT INTO Marvels VALUES(15, "Gambit", 7, "Good", "Male", 1.88, 81, "EUA", 2, 2, 2, 2, 2, 4);
INSERT INTO Marvels VALUES(16, "Captain America", 9, "Good", "Male", 1.88, 108, "EUA", 3, 3, 2, 3, 1, 6);
INSERT INTO Marvels VALUES(17, "Cyclops", 10, "Good", "Male", 1.90, 88, "EUA", 3, 2, 2, 2, 5, 4);
INSERT INTO Marvels VALUES(18, "Emma Frost", 12, "Neutral", "Female", 1.78, 65, "EUA", 4, 4, 2, 5, 5, 3);
INSERT INTO Marvels VALUES(19, "Kitty Pryde", 13, "Good", "Female", 1.68, 50, "EUA", 4, 2, 2, 3, 1, 5);
INSERT INTO Marvels VALUES(20, "Daredevil", 14, "Good", "Male", 1.83, 91, "EUA", 3, 3, 2, 2, 4, 5);
INSERT INTO Marvels VALUES(21, "Punisher", 50, "Neutral", "Male", 1.85, 91, "EUA", 3, 3, 2, 2, 1, 6);
INSERT INTO Marvels VALUES(22, "Silver Surfer", 33, "Good", "Male", 1.93, 102, "Zenn-La", 3, 7, 7, 6, 7, 2);
INSERT INTO Marvels VALUES(23, "Ghost Rider", 86, "Good", "Male", 1.88, 99, "EUA", 2, 4, 3, 5, 4, 2);
INSERT INTO Marvels VALUES(24, "Venon", 78, "Neutral", "Male", 1.90, 118, "EUA", 3, 4, 2, 6, 1, 4);
INSERT INTO Marvels VALUES(25, "Juggernaut", 76, "Neutral", "Male", 2.87, 862, "EUA", 2, 7, 2, 7, 1, 4);
INSERT INTO Marvels VALUES(26, "Professor X", 58, "Good", "Male", 1.83, 86, "EUA", 5, 2, 2, 2, 5, 3);

-- Add 4 new entries
INSERT INTO marvels (ID, name, popularity, alignment, gender, height_m, weight_kg, hometown, intelligence, strength, speed, durability, energy_Projection, fighting_Skills)
VALUES
(27, 'ComSciWoman', 77, 'Good', 'Female', 1.70, 60, 'USA', 6, 2, 4, 3, 6, 5),
(28, 'ByteMan', 34, 'Neutral', 'Male', 1.82, 85, 'Canada', 5, 3, 3, 2, 5, 4),
(29, 'CodeMaster', 22, 'Good', 'Male', 1.75, 70, 'Canada', 7, 2, 5, 4, 7, 3),
(30, 'PixelPuncher', 65, 'Bad', 'Female', 1.68, 58, 'Canada', 4, 4, 6, 3, 4, 6);

-- Add a TEAM_ID column
ALTER TABLE marvels ADD COLUMN Team_ID INTEGER;

-- Update the table to assign TEAM_ID values
UPDATE marvels SET Team_ID = CASE
    WHEN ID BETWEEN 1 AND 6 THEN 1
    WHEN ID BETWEEN 7 AND 12 THEN 2
    WHEN ID BETWEEN 13 AND 18 THEN 3
    WHEN ID BETWEEN 19 AND 24 THEN 4
    WHEN ID BETWEEN 25 AND 30 THEN 5
END;


CREATE TABLE team_affiliations (
    Team_ID INTEGER PRIMARY KEY,
    Team_Name TEXT
);

-- Insert team names
INSERT INTO team_affiliations (Team_ID, Team_Name)
VALUES
(1, 'X-Men'),
(2, 'Avengers'),
(3, 'Thunderbolts'),
(4, 'Revengers'),
(5, 'S.H.I.E.L.D');


CREATE TABLE team_descriptions (
    ID INTEGER PRIMARY KEY,
    Team_Name TEXT,
    Team_Description TEXT,
    FOREIGN KEY (ID) REFERENCES team_affiliations(Team_ID)
);

-- Example insertions (You can fill in the descriptions as you see fit)
INSERT INTO team_descriptions (ID, Team_Name, Team_Description)
VALUES
(1, 'X-Men', 'A team of mutants fighting for peace and equality between mutants and humans.'),
(2, 'Avengers', 'Earth''s mightiest heroes united to fight the foes no single hero could withstand.'),
(3, 'Thunderbolts', 'A team of reformed supervillains working towards redemption.'),
(4, 'Revengers', 'A ragtag group seeking vengeance and justice in their own unique way.'),
(5, 'S.H.I.E.L.D', 'An international espionage and peace-keeping agency protecting the world from threats beyond the conventional.');



-- Display All information in Each Table

-- For the marvels table
SELECT * FROM marvels;

-- For the team_affiliations table
SELECT * FROM team_affiliations;

-- For the team_descriptions table
SELECT * FROM team_descriptions;


-- List all the Marvel Characters and group them by alignment

SELECT alignment AS "Alignment", name AS "Hero Name" FROM marvels
ORDER BY "Alignment", "Name";


-- Find the Max, Min and Average popularity that uses HAVING.

SELECT alignment AS "Alignment", MAX(popularity) AS MaxPopularity, MIN(popularity) AS MinPopularity, ROUND(AVG(popularity), 1) AS AvgPopularity
FROM marvels
GROUP BY "Alignment"
HAVING AVG(popularity) > 10; -- Filters nothing when set to ten, but can be modified to remove rows. Setting to 22 will remove the row for good heroes.


-- Create a Query that uses AND, OR and LIKE

SELECT * FROM marvels
WHERE (alignment = 'Good' AND popularity > 10)
    OR (hometown LIKE '%USA%' AND gender = 'Female');


-- Create a query that uses Case Statement

SELECT name AS "Hero Name", 
    CASE 
        WHEN popularity < 10 THEN 'Low Popularity'
        WHEN popularity BETWEEN 10 AND 50 THEN 'Medium Popularity'
        ELSE 'High Popularity'
    END AS "Popularity Level"
FROM marvels
ORDER BY popularity DESC;


-- Select Country and Use Count to list how many characters belong to each country, list in alphabetical order by country

SELECT hometown AS Country, COUNT(*) AS "Number of Characters"
FROM marvels
GROUP BY hometown
ORDER BY hometown;


-- Create a table using Join to connect the two tables Marvels and Teams together

SELECT marvels.*, team_affiliations.Team_Name
FROM marvels
JOIN team_affiliations ON marvels.Team_ID = team_affiliations.Team_ID;


-- Select * for characters that belong to the X-Men (use Sub Queries)

SELECT marvels.*, team_affiliations.Team_Name
FROM marvels
JOIN team_affiliations ON marvels.Team_ID = team_affiliations.Team_ID
WHERE team_affiliations.Team_Name = 'X-Men';


-- Create a table that will display the Marvel Character and their Team Description (you are linking 3 tables together) (Results will have NAME, TEAM ID and DESCRIPTION )

SELECT marvels.name AS "Hero Name", marvels.Team_ID AS "Team ID", team_descriptions.Team_Description AS "Team Description"
FROM marvels
JOIN team_affiliations ON marvels.Team_ID = team_affiliations.Team_ID
JOIN team_descriptions ON team_affiliations.Team_ID = team_descriptions.ID;
