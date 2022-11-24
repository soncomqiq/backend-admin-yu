CREATE database if not exists Project;
use `Project`;

-- BGM
DROP TABLE IF EXISTS `cafe`;
DROP TABLE IF EXISTS `library`;
DROP TABLE IF EXISTS `rain`;
DROP TABLE IF EXISTS `forest`;
DROP TABLE IF EXISTS `waterfall`;

-- Database_yourmood
DROP TABLE IF EXISTS `spring`;
DROP TABLE IF EXISTS `night`;
DROP TABLE IF EXISTS `relaxing`;
DROP TABLE IF EXISTS `working`;
DROP TABLE IF EXISTS `chill`;

-- loginadmin
DROP TABLE IF EXISTS `adminsystem`;
DROP TABLE IF EXISTS `login`;

-- BGM
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

-- Database_yourmood
CREATE TABLE `spring` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Mood` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL,
  `Month` varchar(20) NOT NULL);
  
INSERT INTO `spring` (`PlaylistID`,`NamePlaylist`, `Mood`, `Time`, `LinkYoutube`, `Channel`,`Month`) VALUES
(1, 'playlist spring has sprung', 'spring' , '01:23:00','https://www.youtube.com/watch?v=zSGOF-dnImk', 'TAKE A LOOK','January'), 
(2, 'morning walks', 'spring' , '01:59:18','https://youtu.be/TGan48YE9Us', 'The Jazz Hop Café','February'),
(3, 'spring day | a feel good', 'spring' , '01:09:01','https://youtu.be/Z6IkH1iapks', 'Lemon','March'),
(4, 'flower in spring | warm spring vibes' , 'spring','01:02:26','https://youtu.be/Xay_BqDKR70', 'LEMON','April'),
(5, 'The most comfortable and refreshing music that you will wanna listen to from the morning', 'spring' , '00:56:01','https://youtu.be/I0q6kNC6jqM', 'wutoji','May'),
(6, 'Playlist A pop song that wakes up the love cells' ,'spring', '01:01:05','https://youtu.be/qobz9lNDe28', 'weety Cat','June'),
(7, 'Western Music', 'spring','00:42:45','https://youtu.be/4fNIL4-QwrM', 'meow','July');

CREATE TABLE `night` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Mood` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL,
  `Month` varchar(20) NOT NULL);

INSERT INTO `night` (`PlaylistID`,`NamePlaylist`, `Mood`, `Time`, `LinkYoutube`, `Channel`,`Month`) VALUES
(1, 'sleep is the best meditation', 'night' , '01:00:08',' https://youtu.be/OAx0W0ZI2Uk', 'The Hanoi Chamomile','February'), 
(2, 'goodnight noises everywhere', 'night' , '01:36:45','https://youtu.be/Zkgzg5wK-4A', 'alexrainbirdMusic','April'),
(3, 'All Night', 'night' , '01:58:49','https://youtu.be/Hc10febKlX8', 'sunsetdreams','January'),
(4, 'enjoy your night' , 'night','00:22:59','https://youtu.be/09plQRBWAds', 'whosme','May'),
(5, 'nice night', 'night' , '00:36:52','https://youtu.be/QCg_MoTrm9Q', 'may i choose a song for u?','June'),
(6, 'time for yourself' ,'night', '02:17:09','https://youtu.be/Lz0xou5xsSg', 'alexrainbirdMusic','July'),
(7, 'music is moonlight in the gloomy night of life', 'night','02:18:59','https://youtu.be/XS7D_0EIcgs', 'alexrainbirdMusic','March');

#drop table `night`;

select*from `night`;

CREATE TABLE `relaxing` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Mood` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL,
  `Month` varchar(20) NOT NULL);

INSERT INTO `relaxing` (`PlaylistID`,`NamePlaylist`, `Mood`, `Time`, `LinkYoutube`, `Channel`,`Month`) VALUES
(1, 'relax english songs', 'relaxing' , '00:32:08','https://youtu.be/USOG2lAzBeQ', 'kan lnwza','June'), 
(2, 'songs to comfort you after an exhausting day', 'relaxing' , '00:49:31','https://youtu.be/O5zmcJTgwtE', 'Mellow Sounds','May'),
(3, 'good mood vibe relax', 'relaxing' , '00:30:43','https://youtu.be/loL8g6Y5KNgQ', 'kan lnwza','April'),
(4, 'late morning chill playlist' , 'relaxing','00:24:20','https://youtu.be/SsPE3H_Upjow', 'nanas dreams','February'),
(5, 'playlist that makes you comfortable', 'relaxing' , '00:56:01','https://youtu.be/I0q6kNC6jqM', 'wutoji','December'),
(6, 'Playlist A pop song that wakes up the love cells' ,'relaxing', '00:20:40','https://youtu.be/SqMFN_Bz2Sk', 'wowrrenjun','August'),
(7, 'you and me', 'relaxing','00:32:05','https://youtu.be/HxKwZxF5ifg', 'Gibong','September');

select*from `relaxing`;

CREATE TABLE `working` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Mood` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL,
  `Month` varchar(20) NOT NULL);

INSERT INTO `working` (`PlaylistID`,`NamePlaylist`, `Mood`, `Time`, `LinkYoutube`, `Channel`,`Month`) VALUES
(1, 'work hard listen sound harder', 'working' , '00:30:25','https://youtu.be/KigLH_U04oA', 'Shape of Music','September'), 
(2, 'nothing will work unless you do', 'working' , '00:32:08','https://youtu.be/USOG2lAzBeQw', 'Kan lnwza','october'),
(3, 'keep it going', 'working' , '01:03:37','https://youtu.be/32mYJRUeAOE', 'Lemon','April'),
(4, 'reflect on all you have done' , 'working','00:33:29','https://youtu.be/HgeuDIERqjs', 'Circlemusic','August'),
(5, 'busy friday', 'working' , '00:33:12','https://youtu.be/Ey0F1cnyC70', 'Circlemusic','November'),
(6, 'conquer you fear' ,'working', '00:53:54','https://youtu.be/hWxFohhGOnM', 'Saturday Melody','January'),
(7, 'get motivated', 'working','01:18:59','https://youtu.be/k-VYl-jw7sQ', 'Lemon','October');

select*from `working`;

CREATE TABLE `chill` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Mood` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50)  DEFAULT NULL,
  `Month` varchar(20) NOT NULL);

INSERT INTO `chill` (`PlaylistID`,`NamePlaylist`, `Mood`, `Time`, `LinkYoutube`, `Channel`,`Month`) VALUES
(1, 'Saturday Nights', 'chill' , '00:52:09','https://youtu.be/Gs_RYfATT2Y', 'Shape of Music','November'), 
(2, 'keep you happy and motivated', 'chill' , '01:03:00','https://youtu.be/mJW57E7GpSo', "Lily's Corner",'April'),
(3, "hug me, it's gonna be alright", 'chill' , '00:57:36','https://youtu.be/lPKc4NmVd0Q', 'sunsetdreams','November'),
(4, 'chill soft korean songse' , 'chill','00:36:29','https://youtu.be/-Lt1FpeHBTo', 'beyondthehorizon','January'),
(5, 'chill korean r&b', 'chill' , '00:56:01','https://youtu.be/I0q6kNC6jqM', 'wutoji','October'),
(6, 'late morning chill playlist' ,'chill', '00:24:21','https://youtu.be/SsPE3H_Upjo', "nana's dreams",'December'),
(7, 'songs that make your day awesome', 'chill','00:37:32','https://youtu.be/UB_IV0f6hwU', 'Mellow Sounds','December');

select*from `chill`;


-- loginuser&admin
Create table `adminsystem`(
	`No` int,
	`Username` varchar(50) NOT NULL primary key,
	`Firstname` varchar(50),
	`Lastname` varchar(50),
	`Phone` varchar(10),
	`Email` varchar(100),
	`Password` varchar(50)
);

Insert into `adminsystem` values (1,'useradmin1','Jirapat','Suwanlamai','0955555551','Jirapat.sua@student.mahidol.edu','sunny5630'),
(2,'useradmin2','Panpasa','Areewongsatit','0972998174','panpasa.are@student.mahidol.edu','Apapasa321'),
(3,'useradmin3','Ravipitch','Laosaengchaiyawat','0942915497','Ravipitch.lao@student.mahidol.edu','yuyulao4321'),
(4,'useradmin4','Sirada','Namboot','0839201832','sirada.nam@student.mahidol.edu','Sirada6695');


Create table `login`(
    `Email` varchar(100) NOT NULL primary key,
	`Username` varchar(50),
	`Password` varchar(50)
);

Insert into `login` values ('Somjai@gmail.com','somjai','somjai123'),
('Peter@gmail.com','peter','peter123'),
('JeongJaehyun@kwangya.com','Jay','14021997'),
('Somruk@kwangya.com','SomInwza','Inwza1234');








