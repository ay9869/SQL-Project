CREATE DATABASE SpotifyAnalysis;
USE SpotifyAnalysis;
CREATE TABLE Listeners (
    ListenerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50),
    DateJoined DATE
);

CREATE TABLE Playlists (
    PlaylistID INT AUTO_INCREMENT PRIMARY KEY,
    ListenerID INT,
    PlaylistName VARCHAR(100),
    DateCreated DATE,
    FOREIGN KEY (ListenerID) REFERENCES Listeners(ListenerID)
);

CREATE TABLE Artists (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    ArtistName VARCHAR(100),
    Popularity INT
);

CREATE TABLE Albums (
    AlbumID INT AUTO_INCREMENT PRIMARY KEY,
    AlbumName VARCHAR(100),
    ReleaseDate DATE
);

CREATE TABLE Tracks (
    TrackID INT AUTO_INCREMENT PRIMARY KEY,
    TrackName VARCHAR(100),
    Duration INT,
    Genre VARCHAR(50),
    AlbumID INT,
    ArtistID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE PlaylistTracks (
    PlaylistTrackID INT AUTO_INCREMENT PRIMARY KEY,
    PlaylistID INT,
    TrackID INT,
    PlayCount INT,
    FOREIGN KEY (PlaylistID) REFERENCES Playlists(PlaylistID),
    FOREIGN KEY (TrackID) REFERENCES Tracks(TrackID)
);
INSERT INTO Listeners (Name, Country, DateJoined) VALUES 
('Alice', 'USA', '2020-01-15'),
('Bob', 'Canada', '2019-03-12'),
('Charlie', 'UK', '2021-05-20'),
('Diana', 'India', '2022-03-18'),
('Ethan', 'Australia', '2020-07-10'),
('Fiona', 'Germany', '2019-11-23'),
('George', 'France', '2021-02-14'),
('Hannah', 'Italy', '2020-12-25'),
('Ian', 'Spain', '2022-01-05'),
('Jade', 'Brazil', '2023-03-03'),
('Karen', 'South Africa', '2021-07-09'),
('Luke', 'New Zealand', '2020-09-18'),
('Mia', 'Singapore', '2019-10-27'),
('Noah', 'Japan', '2022-06-14'),
('Olivia', 'China', '2021-08-01'),
('Peter', 'Russia', '2020-11-10');

INSERT INTO Artists (ArtistName, Popularity)
VALUES
('Taylor Swift', 95),
('Drake', 90),
('Ed Sheeran', 85),
('Billie Eilish', 88),
('The Weeknd', 92),
('BTS', 97),
('Adele', 89),
('Imagine Dragons', 80),
('Dua Lipa', 91),
('Post Malone', 87),
('Coldplay', 85),
('Maroon 5', 82),
('Shawn Mendes', 88),
('Selena Gomez', 86),
('Khalid', 84),
('Ariana Grande', 90),
('Lady Gaga', 89),
('Harry Styles', 87),
('Bruno Mars', 88),
('Sam Smith', 86);

INSERT INTO Albums (AlbumName, ReleaseDate)
VALUES
('Folklore', '2020-07-24'),
('Certified Lover Boy', '2021-09-03'),
('Divide', '2017-03-03'),
('Happier Than Ever', '2021-07-30'),
('After Hours', '2020-03-20'),
('BE', '2020-11-20'),
('25', '2015-11-20'),
('Evolve', '2017-06-23'),
('Future Nostalgia', '2020-03-27'),
('Hollywood\'s Bleeding', '2019-09-06'),
('Evermore', '2020-12-11'),
('Red', '2012-10-22'),
('Revival', '2015-10-09'),
('Stoney', '2016-12-09'),
('Justice', '2021-03-19'),
('Fine Line', '2019-12-13'),
('Unorthodox Jukebox', '2012-12-07'),
('The Thrill of It All', '2017-11-03'),
('Wasteland, Baby!', '2019-03-01'),
('Golden Hour', '2018-03-30');

INSERT INTO Tracks (TrackName, Duration, Genre, AlbumID, ArtistID)
VALUES
('Cardigan', 240, 'Pop', 1, 1),
('Willow', 242, 'Pop', 11, 1),
('Blank Space', 231, 'Pop', 12, 1),
('Way 2 Sexy', 225, 'Hip-Hop', 2, 2),
('Laugh Now Cry Later', 250, 'Hip-Hop', 2, 2),
('Shape of You', 233, 'Pop', 3, 3),
('Perfect', 263, 'Pop', 3, 3),
('Bad Guy', 194, 'Alternative', 4, 4),
('Ocean Eyes', 217, 'Alternative', 4, 4),
('Blinding Lights', 200, 'Pop', 5, 5),
('Save Your Tears', 214, 'Pop', 5, 5),
('Dynamite', 199, 'K-Pop', 6, 6),
('Butter', 175, 'K-Pop', 6, 6),
('Hello', 295, 'Soul', 7, 7),
('Rolling in the Deep', 228, 'Soul', 7, 7),
('Believer', 204, 'Rock', 8, 8),
('Thunder', 211, 'Rock', 8, 8),
('Don\'t Start Now', 183, 'Pop', 9, 9),
('Levitating', 203, 'Pop', 9, 9),
('Circles', 215, 'Pop', 10, 10),
('Fix You', 258, 'Rock', 13, 11),
('Sugar', 225, 'Pop', 13, 12),
('Senorita', 191, 'Pop', 14, 13),
('Wolves', 185, 'Pop', 15, 14),
('Young Dumb & Broke', 204, 'R&B', 16, 15),
('Rain on Me', 183, 'Pop', 17, 16),
('Adore You', 207, 'Pop', 18, 17),
('Treasure', 215, 'Funk', 19, 18),
('Stay with Me', 202, 'Soul', 20, 19);

INSERT INTO Playlists (ListenerID, PlaylistName, DateCreated)
VALUES
(1, 'Chill Vibes', '2023-01-01'),
(2, 'Workout Beats', '2023-02-15'),
(3, 'Top Hits 2023', '2023-03-01'),
(4, 'Relaxing Evenings', '2023-04-20'),
(5, 'Party Mix', '2023-05-10'),
(6, 'Road Trip', '2023-06-05'),
(7, 'Morning Motivation', '2023-02-10'),
(8, 'Late Night Grooves', '2023-01-25'),
(9, 'Throwback Hits', '2023-07-15'),
(10, 'Pop Favorites', '2023-08-01');

INSERT INTO PlaylistTracks (PlaylistID, TrackID, PlayCount)
VALUES
(1, 1, 120),
(1, 3, 150),
(1, 5, 90),
(2, 2, 180),
(2, 6, 110),
(2, 8, 95),
(3, 4, 140),
(3, 7, 100),
(3, 9, 160),
(4, 10, 80),
(4, 11, 70),
(4, 13, 60),
(5, 12, 130),
(5, 14, 190),
(5, 15, 170),
(6, 16, 85),
(6, 17, 75),
(6, 18, 105),
(7, 19, 200),
(7, 20, 220),
(8, 1, 60),
(8, 4, 55),
(8, 9, 50),
(9, 2, 40),
(9, 7, 30),
(9, 12, 25),
(10, 18, 15),
(10, 20, 10),
(10, 19, 5);

SELECT t.TrackName, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Tracks t ON pt.TrackID = t.TrackID
GROUP BY t.TrackID
ORDER BY TotalPlays ASC
LIMIT 5;

SELECT t.Genre, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Tracks t ON pt.TrackID = t.TrackID
GROUP BY t.Genre
ORDER BY TotalPlays DESC;

SELECT l.Name, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Playlists p ON pt.PlaylistID = p.PlaylistID
JOIN Listeners l ON p.ListenerID = l.ListenerID
GROUP BY l.ListenerID
ORDER BY TotalPlays DESC
LIMIT 5;

SELECT t.TrackName, COUNT(pt.PlaylistID) AS PlaylistCount
FROM PlaylistTracks pt
JOIN Tracks t ON pt.TrackID = t.TrackID
GROUP BY t.TrackID
ORDER BY PlaylistCount DESC
LIMIT 10;

SELECT a.ArtistName, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Tracks t ON pt.TrackID = t.TrackID
JOIN Artists a ON t.ArtistID = a.ArtistID
GROUP BY a.ArtistID
ORDER BY TotalPlays DESC
LIMIT 1;

SELECT t.TrackName, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Tracks t ON pt.TrackID = t.TrackID
GROUP BY t.TrackID
ORDER BY TotalPlays DESC
LIMIT 10;

SELECT t.Genre, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Tracks t ON pt.TrackID = t.TrackID
GROUP BY t.Genre
ORDER BY TotalPlays DESC;

SELECT l.Name AS ListenerName, p.PlaylistName, SUM(pt.PlayCount) AS TotalPlays
FROM PlaylistTracks pt
JOIN Playlists p ON pt.PlaylistID = p.PlaylistID
JOIN Listeners l ON p.ListenerID = l.ListenerID
GROUP BY l.ListenerID, p.PlaylistID;