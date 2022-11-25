CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminsystem`
--

DROP TABLE IF EXISTS `adminsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminsystem` (
                               `No` int DEFAULT NULL,
                               `Username` varchar(50) NOT NULL,
                               `Firstname` varchar(50) DEFAULT NULL,
                               `Lastname` varchar(50) DEFAULT NULL,
                               `Phone` varchar(10) DEFAULT NULL,
                               `Email` varchar(100) DEFAULT NULL,
                               `Password` varchar(50) DEFAULT NULL,
                               PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminsystem`
--

LOCK TABLES `adminsystem` WRITE;
/*!40000 ALTER TABLE `adminsystem` DISABLE KEYS */;
INSERT INTO `adminsystem` VALUES (1,'useradmin1','Papavarin','Khamim','0955555551','papavarin.kha@student.mahidol.edu','Ohmyim5630'),(2,'useradmin2','Panpasa','Areewongsatit','0972998174','panpasa.are@student.mahidol.edu','Apapasa321'),(3,'useradmin3','Ravipitch','Laosaengchaiyawat','0942915497','Ravipitch.lao@student.mahidol.edu','yuyulao4321'),(4,'useradmin4','Sirada','Namboot','0839201832','sirada.nam@student.mahidol.edu','Sirada6695'),(5,'useradmin5','AAA','BBB','0101','asd@ads.asd','Sasda');
/*!40000 ALTER TABLE `adminsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allmusic`
--

DROP TABLE IF EXISTS `allmusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allmusic` (
                            `PlaylistID` int NOT NULL AUTO_INCREMENT,
                            `Type` varchar(100) NOT NULL,
                            `NamePlaylist` varchar(100) NOT NULL,
                            `Time` time NOT NULL,
                            `LinkYoutube` varchar(200) DEFAULT NULL,
                            `Channel` varchar(100) DEFAULT NULL,
                            `CoverUrl` varchar(1000) DEFAULT NULL,
                            PRIMARY KEY (`PlaylistID`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allmusic`
--

LOCK TABLES `allmusic` WRITE;
/*!40000 ALTER TABLE `allmusic` DISABLE KEYS */;
INSERT INTO `allmusic` VALUES (100,'cafe','running away to your own world','04:00:59','https://youtu.be/EOAPMhaCtuw','Cafe Music BGM channel',NULL),(101,'cafe','relaxing inspired coffee music','05:02:50','https://youtu.be/IGkdvnuqsIsY','Candy Music Room',NULL),(102,'cafe','restaurant ambience','10:00:30','https://youtu.be/h2zkV-l_TbY','myNoise • Focus • Relax • Sleep',NULL),(103,'cafe','i will leave you notes under your door','04:07:38','https://youtu.be/K2Q6YO3Ez44','Cafe Music BGM channel',NULL),(104,'cafe','busy friday cafe ambience','03:00:23','https://youtu.be/unxrg8UfGx8','Candy Music Room',NULL),(105,'cafe','coffee shop sounds','10:00:01','https://youtu.be/0QKdqm5TX6c','EnvironMental',NULL),(106,'cafe','winter aid','04:01:11','https://youtu.be/BywDOO99Ia0','Cafe Music BGM channel',NULL),(200,'library','Study Jazz - Relaxing Piano Jazz for Study, Work, Reading in Library ASMR','03:18:24','https://youtu.be/mlbZE-0A2EM','Musictag',NULL),(201,'library','Hogwarts Library Ambience | Harry potter inspired ASMR','01:00:02','hhttps://youtu.be/oI9bqFUBJ9E','Enchanted ASMR',NULL),(202,'library','COZY Rainy Library with Fireplace','08:00:57','https://youtu.be/YQc4WT0yDH4','dreamy sound',NULL),(203,'library','Quiet Library Ambience Background Noise for Study | White Noise','04:09:58','https://youtu.be/5TtBW2FnFdk','Winter Whale',NULL),(204,'library','You\'re in the Hogwarts Library w/ Harry, Ron & Hermione','01:01:17','https://youtu.be/9dKxKNfVYVs','ASMR Weekly',NULL),(205,'library','studying alone at the library at midnight (classical music)','01:01:12','https://youtu.be/aSOXiETcXDw','The Dreamers',NULL),(206,'library','Hogwarts Library REMAKE - Animated ambient soundscape cinemagraph','01:00:10','https://youtu.be/pAHciSqi1-8','ASMR rooms',NULL),(300,'rain','Reading an old love story in the rain while waiting for your train','00:40:00','https://youtu.be/Adfk3qNAErM','Ivoryyy',NULL),(301,'rain','Relaxing Sleep Music + Rain Sounds','10:01:00','https://youtu.be/TFXK3c3SYvU','The Soul of Wind',NULL),(302,'rain','Sleep in the tent on a rainy day','08:00:13','https://youtu.be/-N9rb2QDqrw','dreamy sound',NULL),(303,'rain','Rain Sound On Window with Thunder Sounds','08:00:13','https://youtu.be/mPZkdNFkNps','Relaxing Ambience ASMR',NULL),(304,'rain','Relaxing Sleep Music','03:08:01','https://youtu.be/EBSegrHpreY','The Soul of Wind',NULL),(305,'rain','Relaxing Sleep Music with Rain Sounds','10:06:07','https://youtu.be/MYTfTKGSRr8','The Soul of Wind',NULL),(306,'rain','It is raining. I will sleep in the car!','08:01:12','https://youtu.be/qJwPrKtHCv0','dreamy sound',NULL),(400,'forest','Magic Bookstore in the Woods','02:04:54','https://youtu.be/acsLxmnjMho','The Vault of Ambience',NULL),(401,'forest','Forest Sounds | Woodland Ambience, Bird Song','03:00:00','https://youtu.be/xNN7iTA57jM','The Guild of Ambience',NULL),(402,'forest','Enchanted Forest - Music & Ambience','02:01:40','https://youtu.be/XxEhuSJF780','The Vault of Ambience',NULL),(403,'forest','Birdsong in the Caucasus forest','11:59:58','https://youtu.be/M0AWBnAv8VE','Music Of Nature',NULL),(404,'forest','Forest sounds, lyrebirds in Australia ','01:35:00','https://youtu.be/QT7jEGC06vA','ABC Science',NULL),(405,'forest','Gentle wind in the mountains','04:00:13','https://youtu.be/iO-mUnSjMKM','Study-Sound-Girl',NULL),(406,'forest','Relaxing Meadow with Ambient Nature Sounds','08:03:27','https://youtu.be/ipf7ifVSeDU','Calmed By Nature',NULL),(500,'waterfall','Roaring Waterfall White Noise','10:00:38','https://youtu.be/RTYe1MO9-10','Relaxing White Noise',NULL),(501,'waterfall','Nature Sounds-Waterfall-Relaxing Meditation W/O Birdsong','08:20:17','https://youtu.be/02NQkhbjALg','johnnielawson',NULL),(502,'waterfall','Relaxing Waterfall Sounds for Sleep | Fall Asleep & Stay Sleeping','10:00:00','https://youtu.be/HchoJcYNYlU','Relaxing White Noise',NULL),(503,'waterfall','Relaxing River Sounds-Peaceful Forest River','03:00:26','https://youtu.be/IvjMgVS6kng','TheSilentWatcher',NULL),(504,'waterfall','The Calming Sound of Water','00:30:12','https://youtu.be/FF2bhR7s3VY','BoydTV',NULL),(505,'waterfall','Tropical Waterfall & Audio - relaxing, meditation, nature','10:00:28','https://youtu.be/vemLEwjIxow','Relaxation Windows 4K Nature',NULL),(506,'waterfall','Peaceful Waterfall Sounds White Noise for Sleep, Relaxation','10:00:36','https://youtu.be/WwSFmC5FtX0','Relaxing White Noise',NULL),(600,'spring','playlist spring has sprung','01:23:00','https://www.youtube.com/watch?v=zSGOF-dnImk','TAKE A LOOK',NULL),(601,'spring','morning walks','01:59:18','https://youtu.be/TGan48YE9Us','The Jazz Hop Café',NULL),(602,'spring','spring day | a feel good','01:09:01','https://youtu.be/Z6IkH1iapks','Lemon',NULL),(603,'spring','flower in spring | warm spring vibes','01:02:26','https://youtu.be/Xay_BqDKR70','LEMON',NULL),(604,'spring','The most comfortable and refreshing music that you will wanna listen to from the morning','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji',NULL),(605,'spring','Playlist A pop song that wakes up the love cells','01:01:05','https://youtu.be/qobz9lNDe28','weety Cat',NULL),(606,'spring','Western Music','00:42:45','https://youtu.be/4fNIL4-QwrM','meow',NULL),(700,'night','sleep is the best meditation','01:00:08',' https://youtu.be/OAx0W0ZI2Uk','The Hanoi Chamomile',NULL),(701,'night','goodnight noises everywhere','01:36:45','https://youtu.be/Zkgzg5wK-4A','alexrainbirdMusic',NULL),(702,'night','All Night','01:58:49','https://youtu.be/Hc10febKlX8','sunsetdreams',NULL),(703,'night','enjoy your night','00:22:59','https://youtu.be/09plQRBWAds','whosme',NULL),(704,'night','nice night','00:36:52','https://youtu.be/QCg_MoTrm9Q','may i choose a song for u?',NULL),(705,'night','time for yourself','02:17:09','https://youtu.be/Lz0xou5xsSg','alexrainbirdMusic',NULL),(706,'night','music is moonlight in the gloomy night of life','02:18:59','https://youtu.be/XS7D_0EIcgs','alexrainbirdMusic',NULL),(800,'relaxing','relax english songs','00:32:08','https://youtu.be/USOG2lAzBeQ','kan lnwza',NULL),(801,'relaxing','songs to comfort you after an exhausting day','00:49:31','https://youtu.be/O5zmcJTgwtE','Mellow Sounds',NULL),(802,'relaxing','good mood vibe relax','00:30:43','https://youtu.be/loL8g6Y5KNgQ','kan lnwza',NULL),(803,'relaxing','late morning chill playlist','00:24:20','https://youtu.be/SsPE3H_Upjow','nanas dreams',NULL),(804,'relaxing','playlist that makes you comfortable','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji',NULL),(805,'relaxing','Playlist A pop song that wakes up the love cells','00:20:40','https://youtu.be/SqMFN_Bz2Sk','wowrrenjun',NULL),(806,'relaxing','you and me','00:32:05','https://youtu.be/HxKwZxF5ifg','Gibong',NULL),(900,'working','work hard listen sound harder','00:30:25','https://youtu.be/KigLH_U04oA','Shape of Music',NULL),(901,'working','nothing will work unless you do','00:32:08','https://youtu.be/USOG2lAzBeQw','Kan lnwza',NULL),(902,'working','keep it going','01:03:37','https://youtu.be/32mYJRUeAOE','Lemon',NULL),(903,'working','reflect on all you have done','00:33:29','https://youtu.be/HgeuDIERqjs','Circlemusic',NULL),(904,'working','busy friday','00:33:12','https://youtu.be/Ey0F1cnyC70','Circlemusic',NULL),(905,'working','conquer you fear','00:53:54','https://youtu.be/hWxFohhGOnM','Saturday Melody',NULL),(906,'working','get motivated','01:18:59','https://youtu.be/k-VYl-jw7sQ','Lemon',NULL),(1000,'chill','Saturday Nights','00:52:09','https://youtu.be/Gs_RYfATT2Y','Shape of Music',NULL),(1001,'chill','keep you happy and motivated','01:03:00','https://youtu.be/mJW57E7GpSo','Lily\'s Corner',NULL),(1002,'chill','hug me, it\'s gonna be alright','00:57:36','https://youtu.be/lPKc4NmVd0Q','sunsetdreams',NULL),(1003,'chill','chill soft korean songse','00:36:29','https://youtu.be/-Lt1FpeHBTo','beyondthehorizon',NULL),(1004,'chill','chill korean r&b','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji',NULL),(1005,'chill','late morning chill playlist','00:24:21','https://youtu.be/SsPE3H_Upjo','nana\'s dreams',NULL),(1006,'chill','songs that make your day awesome','00:37:32','https://youtu.be/UB_IV0f6hwU','Mellow Sounds',NULL),(2000,'summer','wake up happy','00:52:09','https://youtu.be/Gs_RYfATT2Y','Shape of Music',NULL),(2001,'summer','krelaxing time','01:03:00','https://youtu.be/mJW57E7GpSo','Lily\'s Corner',NULL),(2002,'summer','sundancing this summer','00:57:36','https://youtu.be/lPKc4NmVd0Q','sunsetdreams',NULL),(2003,'summer','a playlist because i miss last summer','00:36:29','https://youtu.be/-Lt1FpeHBTo','beyondthehorizon',NULL),(2004,'summer','friends, sun, sand and sea','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji',NULL),(2005,'summer','together, for a summer','00:24:21','https://youtu.be/SsPE3H_Upjo','nana\'s dreams',NULL),(2006,'summer','a little happiness everyday','00:37:32','https://youtu.be/UB_IV0f6hwU','Mellow Sounds',NULL),(2008,'Summer55566666666','testName','00:37:32','LinkYoutube','Channel','CoverUrl');
/*!40000 ALTER TABLE `allmusic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafe`
--

DROP TABLE IF EXISTS `cafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe` (
                        `PlaylistID` varchar(100) NOT NULL,
                        `NamePlaylist` varchar(100) NOT NULL,
                        `Time` time NOT NULL,
                        `LinkYoutube` varchar(200) DEFAULT NULL,
                        `Channel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe`
--

LOCK TABLES `cafe` WRITE;
/*!40000 ALTER TABLE `cafe` DISABLE KEYS */;
INSERT INTO `cafe` VALUES ('1','running away to your own world','04:00:59','https://youtu.be/EOAPMhaCtuw','Cafe Music BGM channel'),('2','relaxing inspired coffee music','05:02:50','https://youtu.be/IGkdvnuqsIsY','Candy Music Room'),('3','restaurant ambience','10:00:30','https://youtu.be/h2zkV-l_TbY','myNoise • Focus • Relax • Sleep'),('4','i will leave you notes under your door','04:07:38','https://youtu.be/K2Q6YO3Ez44','Cafe Music BGM channel'),('5','busy friday cafe ambience','03:00:23','https://youtu.be/unxrg8UfGx8','Candy Music Room'),('6','coffee shop sounds','10:00:01','https://youtu.be/0QKdqm5TX6c','EnvironMental'),('7','winter aid','04:01:11','https://youtu.be/BywDOO99Ia0','Cafe Music BGM channel');
/*!40000 ALTER TABLE `cafe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chill`
--

DROP TABLE IF EXISTS `chill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chill` (
                         `PlaylistID` varchar(100) NOT NULL,
                         `NamePlaylist` varchar(100) NOT NULL,
                         `Mood` varchar(20) NOT NULL,
                         `Time` time NOT NULL,
                         `LinkYoutube` varchar(200) DEFAULT NULL,
                         `Channel` varchar(50) DEFAULT NULL,
                         `Month` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chill`
--

LOCK TABLES `chill` WRITE;
/*!40000 ALTER TABLE `chill` DISABLE KEYS */;
INSERT INTO `chill` VALUES ('1','Saturday Nights','chill','00:52:09','https://youtu.be/Gs_RYfATT2Y','Shape of Music','November'),('2','keep you happy and motivated','chill','01:03:00','https://youtu.be/mJW57E7GpSo','Lily\'s Corner','April'),('3','hug me, it\'s gonna be alright','chill','00:57:36','https://youtu.be/lPKc4NmVd0Q','sunsetdreams','November'),('4','chill soft korean songse','chill','00:36:29','https://youtu.be/-Lt1FpeHBTo','beyondthehorizon','January'),('5','chill korean r&b','chill','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji','October'),('6','late morning chill playlist','chill','00:24:21','https://youtu.be/SsPE3H_Upjo','nana\'s dreams','December'),('7','songs that make your day awesome','chill','00:37:32','https://youtu.be/UB_IV0f6hwU','Mellow Sounds','December');
/*!40000 ALTER TABLE `chill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forest`
--

DROP TABLE IF EXISTS `forest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forest` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forest`
--

LOCK TABLES `forest` WRITE;
/*!40000 ALTER TABLE `forest` DISABLE KEYS */;
INSERT INTO `forest` VALUES ('1','Magic Bookstore in the Woods','02:04:54','https://youtu.be/acsLxmnjMho','The Vault of Ambience'),('2','Forest Sounds | Woodland Ambience, Bird Song','03:00:00','https://youtu.be/xNN7iTA57jM','The Guild of Ambience'),('3','Enchanted Forest - Music & Ambience','02:01:40','https://youtu.be/XxEhuSJF780','The Vault of Ambience'),('4','Birdsong in the Caucasus forest','11:59:58','https://youtu.be/M0AWBnAv8VE','Music Of Nature'),('5','Forest sounds, lyrebirds in Australia ','01:35:00','https://youtu.be/QT7jEGC06vA','ABC Science'),('6','Gentle wind in the mountains','04:00:13','https://youtu.be/iO-mUnSjMKM','Study-Sound-Girl'),('7','Relaxing Meadow with Ambient Nature Sounds','08:03:27','https://youtu.be/ipf7ifVSeDU','Calmed By Nature');
/*!40000 ALTER TABLE `forest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `PlaylistID` varchar(100) NOT NULL,
  `NamePlaylist` varchar(100) NOT NULL,
  `Time` time NOT NULL,
  `LinkYoutube` varchar(200) DEFAULT NULL,
  `Channel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES ('1','Study Jazz - Relaxing Piano Jazz for Study, Work, Reading in Library ASMR','03:18:24','https://youtu.be/mlbZE-0A2EM','Musictag'),('2','Hogwarts Library Ambience | Harry potter inspired ASMR','01:00:02','hhttps://youtu.be/oI9bqFUBJ9E','Enchanted ASMR'),('3','COZY Rainy Library with Fireplace','08:00:57','https://youtu.be/YQc4WT0yDH4','dreamy sound'),('4','Quiet Library Ambience Background Noise for Study | White Noise','04:09:58','https://youtu.be/5TtBW2FnFdk','Winter Whale'),('5','You\'re in the Hogwarts Library w/ Harry, Ron & Hermione','01:01:17','https://youtu.be/9dKxKNfVYVs','ASMR Weekly'),('6','studying alone at the library at midnight (classical music)','01:01:12','https://youtu.be/aSOXiETcXDw','The Dreamers'),('7','Hogwarts Library REMAKE - Animated ambient soundscape cinemagraph','01:00:10','https://youtu.be/pAHciSqi1-8','ASMR rooms');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
                         `Email` varchar(100) NOT NULL,
                         `Username` varchar(50) DEFAULT NULL,
                         `Password` varchar(50) DEFAULT NULL,
                         PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('JeongJaehyun@kwangya.com','Jay','14021997'),('Peter@gmail.com','peter','peter123'),('Somjai@gmail.com','somjai','somjai123'),('Somruk@kwangya.com','SomInwza','Inwza1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `night`
--

DROP TABLE IF EXISTS `night`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `night` (
                         `PlaylistID` varchar(100) NOT NULL,
                         `NamePlaylist` varchar(100) NOT NULL,
                         `Mood` varchar(20) NOT NULL,
                         `Time` time NOT NULL,
                         `LinkYoutube` varchar(200) DEFAULT NULL,
                         `Channel` varchar(50) DEFAULT NULL,
                         `Month` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `night`
--

LOCK TABLES `night` WRITE;
/*!40000 ALTER TABLE `night` DISABLE KEYS */;
INSERT INTO `night` VALUES ('1','sleep is the best meditation','night','01:00:08',' https://youtu.be/OAx0W0ZI2Uk','The Hanoi Chamomile','February'),('2','goodnight noises everywhere','night','01:36:45','https://youtu.be/Zkgzg5wK-4A','alexrainbirdMusic','April'),('3','All Night','night','01:58:49','https://youtu.be/Hc10febKlX8','sunsetdreams','January'),('4','enjoy your night','night','00:22:59','https://youtu.be/09plQRBWAds','whosme','May'),('5','nice night','night','00:36:52','https://youtu.be/QCg_MoTrm9Q','may i choose a song for u?','June'),('6','time for yourself','night','02:17:09','https://youtu.be/Lz0xou5xsSg','alexrainbirdMusic','July'),('7','music is moonlight in the gloomy night of life','night','02:18:59','https://youtu.be/XS7D_0EIcgs','alexrainbirdMusic','March');
/*!40000 ALTER TABLE `night` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rain`
--

DROP TABLE IF EXISTS `rain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rain` (
                        `PlaylistID` varchar(100) NOT NULL,
                        `NamePlaylist` varchar(100) NOT NULL,
                        `Time` time NOT NULL,
                        `LinkYoutube` varchar(200) DEFAULT NULL,
                        `Channel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rain`
--

LOCK TABLES `rain` WRITE;
/*!40000 ALTER TABLE `rain` DISABLE KEYS */;
INSERT INTO `rain` VALUES ('1','Reading an old love story in the rain while waiting for your train','00:40:00','https://youtu.be/Adfk3qNAErM','Ivoryyy'),('2','Relaxing Sleep Music + Rain Sounds','10:01:00','https://youtu.be/TFXK3c3SYvU','The Soul of Wind'),('3','Sleep in the tent on a rainy day','08:00:13','https://youtu.be/-N9rb2QDqrw','dreamy sound'),('4','Rain Sound On Window with Thunder Sounds','08:00:13','https://youtu.be/mPZkdNFkNps','Relaxing Ambience ASMR'),('5','Relaxing Sleep Music','03:08:01','https://youtu.be/EBSegrHpreY','The Soul of Wind'),('6','Relaxing Sleep Music with Rain Sounds','10:06:07','https://youtu.be/MYTfTKGSRr8','The Soul of Wind'),('7','It is raining. I will sleep in the car!','08:01:12','https://youtu.be/qJwPrKtHCv0','dreamy sound');
/*!40000 ALTER TABLE `rain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relaxing`
--

DROP TABLE IF EXISTS `relaxing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relaxing` (
                            `PlaylistID` varchar(100) NOT NULL,
                            `NamePlaylist` varchar(100) NOT NULL,
                            `Mood` varchar(20) NOT NULL,
                            `Time` time NOT NULL,
                            `LinkYoutube` varchar(200) DEFAULT NULL,
                            `Channel` varchar(50) DEFAULT NULL,
                            `Month` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relaxing`
--

LOCK TABLES `relaxing` WRITE;
/*!40000 ALTER TABLE `relaxing` DISABLE KEYS */;
INSERT INTO `relaxing` VALUES ('1','relax english songs','relaxing','00:32:08','https://youtu.be/USOG2lAzBeQ','kan lnwza','June'),('2','songs to comfort you after an exhausting day','relaxing','00:49:31','https://youtu.be/O5zmcJTgwtE','Mellow Sounds','May'),('3','good mood vibe relax','relaxing','00:30:43','https://youtu.be/loL8g6Y5KNgQ','kan lnwza','April'),('4','late morning chill playlist','relaxing','00:24:20','https://youtu.be/SsPE3H_Upjow','nanas dreams','February'),('5','playlist that makes you comfortable','relaxing','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji','December'),('6','Playlist A pop song that wakes up the love cells','relaxing','00:20:40','https://youtu.be/SqMFN_Bz2Sk','wowrrenjun','August'),('7','you and me','relaxing','00:32:05','https://youtu.be/HxKwZxF5ifg','Gibong','September');
/*!40000 ALTER TABLE `relaxing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring`
--

DROP TABLE IF EXISTS `spring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring` (
                          `PlaylistID` varchar(100) NOT NULL,
                          `NamePlaylist` varchar(100) NOT NULL,
                          `Mood` varchar(20) NOT NULL,
                          `Time` time NOT NULL,
                          `LinkYoutube` varchar(200) DEFAULT NULL,
                          `Channel` varchar(50) DEFAULT NULL,
                          `Month` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring`
--

LOCK TABLES `spring` WRITE;
/*!40000 ALTER TABLE `spring` DISABLE KEYS */;
INSERT INTO `spring` VALUES ('1','playlist spring has sprung','spring','01:23:00','https://www.youtube.com/watch?v=zSGOF-dnImk','TAKE A LOOK','January'),('2','morning walks','spring','01:59:18','https://youtu.be/TGan48YE9Us','The Jazz Hop Café','February'),('3','spring day | a feel good','spring','01:09:01','https://youtu.be/Z6IkH1iapks','Lemon','March'),('4','flower in spring | warm spring vibes','spring','01:02:26','https://youtu.be/Xay_BqDKR70','LEMON','April'),('5','The most comfortable and refreshing music that you will wanna listen to from the morning','spring','00:56:01','https://youtu.be/I0q6kNC6jqM','wutoji','May'),('6','Playlist A pop song that wakes up the love cells','spring','01:01:05','https://youtu.be/qobz9lNDe28','weety Cat','June'),('7','Western Music','spring','00:42:45','https://youtu.be/4fNIL4-QwrM','meow','July');
/*!40000 ALTER TABLE `spring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterfall`
--

DROP TABLE IF EXISTS `waterfall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waterfall` (
                             `PlaylistID` varchar(100) NOT NULL,
                             `NamePlaylist` varchar(100) NOT NULL,
                             `Time` time NOT NULL,
                             `LinkYoutube` varchar(200) DEFAULT NULL,
                             `Channel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterfall`
--

LOCK TABLES `waterfall` WRITE;
/*!40000 ALTER TABLE `waterfall` DISABLE KEYS */;
INSERT INTO `waterfall` VALUES ('1','Roaring Waterfall White Noise','10:00:38','https://youtu.be/RTYe1MO9-10','Relaxing White Noise'),('2','Nature Sounds-Waterfall-Relaxing Meditation W/O Birdsong','08:20:17','https://youtu.be/02NQkhbjALg','johnnielawson'),('3','Relaxing Waterfall Sounds for Sleep | Fall Asleep & Stay Sleeping','10:00:00','https://youtu.be/HchoJcYNYlU','Relaxing White Noise'),('4','Relaxing River Sounds - Peaceful Forest River','03:00:26','https://youtu.be/IvjMgVS6kng','TheSilentWatcher'),('5','The Calming Sound of Water','00:30:12','https://youtu.be/FF2bhR7s3VY','BoydTV'),('6','Tropical Waterfall & Audio - relaxing, meditation, nature','10:00:28','https://youtu.be/vemLEwjIxow','Relaxation Windows 4K Nature'),('7','Peaceful Waterfall Sounds White Noise for Sleep, Relaxation','10:00:36','https://youtu.be/WwSFmC5FtX0','Relaxing White Noise');
/*!40000 ALTER TABLE `waterfall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working`
--

DROP TABLE IF EXISTS `working`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working` (
                           `PlaylistID` varchar(100) NOT NULL,
                           `NamePlaylist` varchar(100) NOT NULL,
                           `Mood` varchar(20) NOT NULL,
                           `Time` time NOT NULL,
                           `LinkYoutube` varchar(200) DEFAULT NULL,
                           `Channel` varchar(50) DEFAULT NULL,
                           `Month` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working`
--

LOCK TABLES `working` WRITE;
/*!40000 ALTER TABLE `working` DISABLE KEYS */;
INSERT INTO `working` VALUES ('1','work hard listen sound harder','working','00:30:25','https://youtu.be/KigLH_U04oA','Shape of Music','September'),('2','nothing will work unless you do','working','00:32:08','https://youtu.be/USOG2lAzBeQw','Kan lnwza','october'),('3','keep it going','working','01:03:37','https://youtu.be/32mYJRUeAOE','Lemon','April'),('4','reflect on all you have done','working','00:33:29','https://youtu.be/HgeuDIERqjs','Circlemusic','August'),('5','busy friday','working','00:33:12','https://youtu.be/Ey0F1cnyC70','Circlemusic','November'),('6','conquer you fear','working','00:53:54','https://youtu.be/hWxFohhGOnM','Saturday Melody','January'),('7','get motivated','working','01:18:59','https://youtu.be/k-VYl-jw7sQ','Lemon','October');
/*!40000 ALTER TABLE `working` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26  0:26:51
