CREATE database if not exists Project;
use `Project`;

DROP TABLE IF EXISTS `cafe`;
DROP TABLE IF EXISTS `library`;
DROP TABLE IF EXISTS `rain`;
DROP TABLE IF EXISTS `forest`;
DROP TABLE IF EXISTS `waterfall`;

CREATE TABLE `cafe` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL);
  
INSERT INTO `cafe` (`PlaylistID`,`NamePlaylist`, `Time`, `LinkYoutube`, `Channel`) VALUES
(1, 'running away to your own world', '04:00:59','https://youtu.be/EOAPMhaCtuw', 'Cafe Music BGM channel'), 
(2, 'relaxing inspired coffee music', '05:02:50','https://youtu.be/IGkdvnuqsIsY', 'Candy Music Room'),
(3, 'restaurant ambience', '10:00:30','https://youtu.be/h2zkV-l_TbY', 'myNoise • Focus • Relax • Sleep'),
(4, 'i will leave you notes under your door','04:07:38','https://youtu.be/K2Q6YO3Ez44', 'Cafe Music BGM channel'),
(5, 'busy friday cafe ambience', '03:00:23','https://youtu.be/unxrg8UfGx8', 'Candy Music Room'),
(6, 'coffee shop sounds' ,'10:00:01','https://youtu.be/0QKdqm5TX6c', 'EnvironMental'),
(7, 'winter aid','04:01:11','https://youtu.be/BywDOO99Ia0', 'Cafe Music BGM channel');

CREATE TABLE `library` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL);
  
INSERT INTO `library` (`PlaylistID`,`NamePlaylist`, `Time`, `LinkYoutube`, `Channel`) VALUES
(1, 'Study Jazz - Relaxing Piano Jazz for Study, Work, Reading in Library ASMR', '03:18:24','https://youtu.be/mlbZE-0A2EM', 'Musictag'), 
(2, 'Hogwarts Library Ambience | Harry potter inspired ASMR', '01:00:02','hhttps://youtu.be/oI9bqFUBJ9E', 'Enchanted ASMR'),
(3, 'COZY Rainy Library with Fireplace', '08:00:57','https://youtu.be/YQc4WT0yDH4', 'dreamy sound'),
(4, 'Quiet Library Ambience Background Noise for Study | White Noise','04:09:58','https://youtu.be/5TtBW2FnFdk', 'Winter Whale'),
(5, "You're in the Hogwarts Library w/ Harry, Ron & Hermione", '01:01:17','https://youtu.be/9dKxKNfVYVs', 'ASMR Weekly'),
(6, 'studying alone at the library at midnight (classical music)' ,'01:01:12','https://youtu.be/aSOXiETcXDw', 'The Dreamers'),
(7, 'Hogwarts Library REMAKE - Animated ambient soundscape cinemagraph','01:00:10','https://youtu.be/pAHciSqi1-8', 'ASMR rooms');

CREATE TABLE `rain` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL);
  
INSERT INTO `rain` (`PlaylistID`,`NamePlaylist`, `Time`, `LinkYoutube`, `Channel`) VALUES
(1, 'Reading an old love story in the rain while waiting for your train', '00:40:00','https://youtu.be/Adfk3qNAErM', 'Ivoryyy'), 
(2, 'Relaxing Sleep Music + Rain Sounds', '10:01:00','https://youtu.be/TFXK3c3SYvU', 'The Soul of Wind'),
(3, 'Sleep in the tent on a rainy day', '08:00:13','https://youtu.be/-N9rb2QDqrw', 'dreamy sound'),
(4, 'Rain Sound On Window with Thunder Sounds','08:00:13','https://youtu.be/mPZkdNFkNps', 'Relaxing Ambience ASMR'),
(5, 'Relaxing Sleep Music', '03:08:01','https://youtu.be/EBSegrHpreY', 'The Soul of Wind'),
(6, 'Relaxing Sleep Music with Rain Sounds' ,'10:06:07','https://youtu.be/MYTfTKGSRr8', 'The Soul of Wind'),
(7, 'It is raining. I will sleep in the car!','08:01:12','https://youtu.be/qJwPrKtHCv0', 'dreamy sound');

CREATE TABLE `forest` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL);
  
INSERT INTO `forest` (`PlaylistID`,`NamePlaylist`, `Time`, `LinkYoutube`, `Channel`) VALUES
(1, 'Magic Bookstore in the Woods', '02:04:54','https://youtu.be/acsLxmnjMho', 'The Vault of Ambience'), 
(2, 'Forest Sounds | Woodland Ambience, Bird Song', '03:00:00','https://youtu.be/xNN7iTA57jM', 'The Guild of Ambience'),
(3, 'Enchanted Forest - Music & Ambience', '02:01:40','https://youtu.be/XxEhuSJF780', 'The Vault of Ambience'),
(4, 'Birdsong in the Caucasus forest','11:59:58','https://youtu.be/M0AWBnAv8VE', 'Music Of Nature'),
(5, 'Forest sounds, lyrebirds in Australia ', '01:35:00','https://youtu.be/QT7jEGC06vA', 'ABC Science'),
(6, 'Gentle wind in the mountains' ,'04:00:13','https://youtu.be/iO-mUnSjMKM', 'Study-Sound-Girl'),
(7, 'Relaxing Meadow with Ambient Nature Sounds','08:03:27','https://youtu.be/ipf7ifVSeDU', 'Calmed By Nature');

CREATE TABLE `waterfall` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL);
  
INSERT INTO `waterfall` (`PlaylistID`,`NamePlaylist`, `Time`, `LinkYoutube`, `Channel`) VALUES
(1, 'Roaring Waterfall White Noise', '10:00:38','https://youtu.be/RTYe1MO9-10', 'Relaxing White Noise'), 
(2, 'Nature Sounds-Waterfall-Relaxing Meditation W/O Birdsong', '08:20:17','https://youtu.be/02NQkhbjALg', 'johnnielawson'),
(3, 'Relaxing Waterfall Sounds for Sleep | Fall Asleep & Stay Sleeping', '10:00:00','https://youtu.be/HchoJcYNYlU', 'Relaxing White Noise'),
(4, 'Relaxing River Sounds - Peaceful Forest River','03:00:26','https://youtu.be/IvjMgVS6kng', 'TheSilentWatcher'),
(5, 'The Calming Sound of Water', '00:30:12','https://youtu.be/FF2bhR7s3VY', 'BoydTV'),
(6, 'Tropical Waterfall & Audio - relaxing, meditation, nature' ,'10:00:28','https://youtu.be/vemLEwjIxow', 'Relaxation Windows 4K Nature'),
(7, 'Peaceful Waterfall Sounds White Noise for Sleep, Relaxation','10:00:36','https://youtu.be/WwSFmC5FtX0', 'Relaxing White Noise');