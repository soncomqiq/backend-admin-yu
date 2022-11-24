CREATE database if not exists Project;
use `Project`;

DROP TABLE IF EXISTS `spring`;
DROP TABLE IF EXISTS `night`;
DROP TABLE IF EXISTS `relaxing`;
DROP TABLE IF EXISTS `working`;
DROP TABLE IF EXISTS `chill`;

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

