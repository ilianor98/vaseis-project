-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vas
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'John Smith'),(2,'Emma Johnson'),(3,'Michael Brown'),(4,'Olivia Davis'),(5,'William Wilson'),(6,'Sophia Thompson'),(7,'James Anderson'),(8,'Isabella Martinez'),(9,'Benjamin Taylor'),(10,'Mia Garcia'),(11,'Jacob Hernandez'),(12,'Charlotte Clark'),(13,'Alexander Robinson'),(14,'Amelia Lewis'),(15,'Daniel Lee'),(16,'Emily Hall'),(17,'Matthew Baker'),(18,'Harper Green'),(19,'Joseph Carter'),(20,'Abigail Adams');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `titleBK` varchar(150) NOT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `ISBN` int(11) NOT NULL,
  `num_pages` int(11) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Addams Family Reunion','Oyonder',110584,473,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.','Spanish'),('DEFCON: The Documentary','Mynte',116633,297,'Suspendisse potenti.','Fusce posuere felis sed lacus.','Spanish'),('Leaving Las Vegas','Mynte',117151,616,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.','Nam dui.','French'),('Snowpiercer','Demimbu',117267,132,'Nulla ac enim.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.','Aymara'),('Ten Tall Men','Fiveclub',117276,391,'Nullam sit amet turpis elementum ligula vehicula consequat.','Quisque porta volutpat erat.','Hindi'),('Manito','Twiyo',117936,474,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','Swahili'),('Name for Evil, A','Buzzshare',119602,402,'Curabitur in libero ut massa volutpat convallis.','Vestibulum rutrum rutrum neque.','Tajik'),('Hunchback of Notre Dame, The','Browsebug',119670,650,'Aenean auctor gravida sem.','Nulla suscipit ligula in lacus.','Latvian'),('Croupier','Myworks',125228,984,'Praesent blandit.','In eleifend quam a odio.','Nepali'),('Man Called Gannon, A','Feedfish',132263,666,'Cras in purus eu magna vulputate luctus.','Duis at velit eu est congue elementum.','Montenegrin'),('Style Wars','Jaxnation',145535,820,'Aenean auctor gravida sem.','Ut at dolor quis odio consequat varius.','Thai'),('Play Time (a.k.a. Playtime)','Brainsphere',152738,903,'Curabitur gravida nisi at nibh.','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','Portuguese'),('Destiny Turns on the Radio','Youtags',155233,757,'Morbi porttitor lorem id ligula.','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','Malay'),('Dirties, The','Trudeo',175404,483,'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Fusce consequat.','Kyrgyz'),('Asterix and the Vikings (Ast?rix et les Vikings)','Livefish',176212,548,'Aliquam erat volutpat.','Proin interdum mauris non ligula pellentesque ultrices.','Norwegian'),('13B','Yodel',193085,454,'Duis aliquam convallis nunc.','Morbi ut odio.','Chinese'),('Blood Relatives (Liens de sang, Les)','Oyoba',195411,842,'Vestibulum rutrum rutrum neque.','Aliquam sit amet diam in magna bibendum imperdiet.','Dzongkha'),('Bus Stop','Oyope',196122,484,'In est risus, auctor sed, tristique in, tempus sit amet, sem.','Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Malayalam'),('Rum Diary, The','Photobug',196684,421,'In blandit ultrices enim.','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','Kyrgyz'),('Where the Road Meets the Sun','Kwilith',199780,174,'Nulla mollis molestie lorem.','Nunc nisl.','Punjabi');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_author` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  KEY `author_id` (`author_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
INSERT INTO `book_author` VALUES (110584,1),(116633,2),(117151,3),(117267,4),(117276,5),(117936,6),(119602,7),(119670,8),(125228,9),(132263,10),(145535,11),(152738,12),(155233,13),(175404,14),(176212,15),(193085,16),(195411,17),(196122,18),(196684,19),(199780,20),(110584,5);
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_category` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  KEY `category_id` (`category_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
INSERT INTO `book_category` VALUES (110584,7),(110584,9),(110584,2),(116633,8),(116633,2),(116633,7),(117151,6),(117151,5),(117151,8),(117267,1),(117267,7),(117267,3),(117276,7),(117276,6),(117276,5),(117936,10),(117936,7),(117936,6),(119602,4),(119602,8),(119602,10),(119670,8),(119670,1),(119670,5),(125228,8),(125228,7),(125228,9),(132263,1),(132263,4),(132263,5),(145535,9),(145535,7),(145535,10),(152738,6),(152738,4),(152738,1),(155233,2),(155233,6),(155233,1),(175404,10),(175404,1),(175404,4),(176212,9),(176212,4),(176212,10),(193085,3),(193085,1),(193085,5),(195411,4),(195411,6),(195411,3),(196122,6),(196122,10),(196122,3),(196684,1),(196684,5),(196684,10),(199780,5),(199780,3),(199780,9);
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `book_inventory_view`
--

DROP TABLE IF EXISTS `book_inventory_view`;
/*!50001 DROP VIEW IF EXISTS `book_inventory_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `book_inventory_view` AS SELECT
 1 AS `book_id`,
  1 AS `inventory`,
  1 AS `school_id`,
  1 AS `titleBK` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `book_school`
--

DROP TABLE IF EXISTS `book_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `inventory` int(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `book_school_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`ISBN`),
  CONSTRAINT `book_school_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_school`
--

LOCK TABLES `book_school` WRITE;
/*!40000 ALTER TABLE `book_school` DISABLE KEYS */;
INSERT INTO `book_school` VALUES (1,110584,1,9),(2,116633,1,3),(3,117151,1,6),(4,117267,1,1),(5,117276,1,6),(6,117936,1,8),(7,119602,1,9),(8,119670,1,2),(9,125228,1,1),(10,132263,1,8),(11,117276,2,7),(12,117936,2,10),(13,119602,2,8),(14,119670,2,1),(15,125228,2,9),(16,132263,2,3),(17,145535,2,6),(18,152738,2,3),(19,155233,2,3),(20,175404,2,9),(21,176212,3,4),(22,193085,3,1),(23,195411,3,4),(24,196122,3,5),(25,196684,3,3),(26,199780,3,1),(27,110584,3,5),(28,116633,3,2),(29,117151,3,5),(30,117267,3,8);
/*!40000 ALTER TABLE `book_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrow_date` datetime NOT NULL,
  `return_date` datetime NOT NULL,
  `is_delayed` tinyint(1) NOT NULL,
  PRIMARY KEY (`borrow_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fiction'),(2,'Non-Fiction'),(3,'Mystery'),(4,'Romance'),(5,'Science Fiction'),(6,'Fantasy'),(7,'Biography'),(8,'Self-Help'),(9,'History'),(10,'Thriller');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`ISBN`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (513,152738,8,4),(514,132263,7,5),(515,155233,11,2),(516,193085,11,4),(517,196684,8,5),(518,195411,1,5),(519,176212,1,1),(520,195411,6,1),(521,119670,10,1),(522,125228,2,5),(523,193085,12,2),(524,155233,13,5),(525,145535,10,1),(526,119670,12,1),(527,110584,8,2),(528,199780,11,1),(529,193085,7,1),(530,196684,11,3),(531,116633,8,4),(532,117151,12,2),(533,125228,6,5),(534,110584,7,4),(535,193085,9,4),(536,145535,11,2),(537,117276,1,5),(538,117267,9,4),(539,199780,13,3),(540,117151,8,3),(541,196684,10,2),(542,196122,4,1),(543,117276,2,5),(544,145535,3,1),(545,119602,2,1),(546,132263,13,3),(547,125228,1,1),(548,117936,4,2),(549,116633,13,2),(550,117267,5,1),(551,196122,3,3),(552,116633,4,4),(553,119670,13,3),(554,199780,7,2),(555,117936,5,4),(556,117267,7,5),(557,117276,7,5),(558,176212,5,1),(559,199780,1,4),(560,125228,12,2),(561,132263,10,5),(562,196684,12,2),(563,110584,12,1),(564,145535,12,5),(565,193085,5,4),(566,117267,10,4),(567,117936,2,4),(568,152738,12,2),(569,117151,11,2),(570,119670,7,1),(571,125228,8,2),(572,119602,1,1),(573,110584,9,1),(574,175404,6,5),(575,196122,9,5),(576,125228,11,1),(577,116633,2,3),(578,119602,8,3),(579,175404,4,3),(580,155233,8,2),(581,132263,3,3),(582,152738,9,1),(583,145535,6,4),(584,110584,10,4),(585,117276,6,5),(586,117151,7,5),(587,117276,3,3),(588,193085,10,1),(589,110584,2,2),(590,116633,11,1),(591,176212,2,1),(592,117276,5,3),(593,117267,8,3),(594,199780,3,4),(595,176212,10,4),(596,199780,2,2),(597,196684,7,2),(598,152738,10,5),(599,119670,9,5),(600,117936,9,4),(601,152738,1,5),(602,116633,9,3),(603,117267,4,5),(604,175404,11,1),(605,155233,12,5),(606,193085,3,3),(607,132263,1,1),(608,195411,11,3),(609,193085,6,3),(610,145535,2,5),(611,117936,3,3),(612,119602,10,5),(613,145535,13,5),(614,117276,10,3),(615,117151,10,5),(616,117267,11,3),(617,196122,7,4),(618,145535,1,2),(619,176212,11,5),(620,152738,3,4),(621,199780,9,5),(622,155233,5,2),(623,199780,12,4),(624,119602,12,1),(625,195411,5,4),(626,119602,11,2),(627,117267,2,2),(628,116633,7,5),(629,119670,8,3),(630,119670,1,1),(631,193085,4,4),(632,176212,6,4),(633,155233,10,2),(634,199780,6,3),(635,125228,10,2),(636,117151,3,2),(637,119670,6,5),(638,125228,4,1),(639,132263,8,4),(640,119670,2,5),(641,152738,6,1),(642,155233,2,3),(643,175404,13,4),(644,119602,3,5),(645,196122,11,1),(646,196684,4,5),(647,152738,5,2),(648,117267,6,5),(649,119602,6,5),(650,196122,1,1),(651,196684,3,1),(652,195411,13,4),(653,117151,5,4),(654,196684,13,2),(655,199780,10,4),(656,195411,4,4),(657,119602,7,3),(658,117151,6,4),(659,117936,10,3),(660,117936,6,2),(661,195411,2,5),(662,116633,3,2),(663,125228,5,1),(664,152738,7,1),(665,117151,9,5),(666,175404,5,2),(667,193085,13,4),(668,196684,2,3),(669,195411,12,2),(670,117151,4,4),(671,155233,1,4),(672,125228,3,1),(673,117276,11,2),(674,117276,8,3),(675,116633,10,3),(676,196122,12,5),(677,176212,4,1),(678,117276,13,1),(679,119602,9,4),(680,196122,10,3),(681,117936,13,3),(682,116633,12,4),(683,117936,7,2),(684,175404,9,5),(685,117276,12,2),(686,125228,7,2),(687,196684,5,4),(688,196684,6,1),(689,145535,9,2),(690,117267,12,3),(691,196684,9,3),(692,195411,10,1),(693,175404,12,5),(694,176212,13,5),(695,117936,1,1),(696,117151,13,1),(697,199780,8,4),(698,176212,8,5),(699,132263,4,5),(700,175404,2,2),(701,152738,13,4),(702,116633,5,4),(703,195411,3,5),(704,132263,11,5),(705,132263,9,4),(706,155233,6,2),(707,117276,9,1),(708,196122,5,4),(709,152738,11,5),(710,116633,1,5),(711,152738,4,2),(712,145535,5,3),(713,110584,13,3),(714,176212,12,4),(715,193085,2,4),(716,175404,8,2),(717,117276,4,2),(718,119602,5,1),(719,195411,9,2),(720,196684,1,4),(721,193085,1,1),(722,176212,3,3),(723,155233,3,4),(724,110584,11,5),(725,110584,4,5),(726,155233,7,5),(727,119670,5,4),(728,196122,8,4),(729,117267,13,3),(730,196122,6,2),(731,132263,6,4),(732,145535,7,1),(733,110584,5,4),(734,152738,2,2),(735,119670,11,4),(736,132263,12,2),(737,199780,4,1),(738,176212,7,3),(739,132263,5,3),(740,119602,4,5),(741,117151,2,4),(742,196122,13,4),(743,175404,1,1),(744,125228,9,4),(745,195411,7,5),(746,145535,8,2),(747,199780,5,2),(748,176212,9,4),(749,119670,4,1),(750,117936,12,3),(751,155233,9,4),(752,193085,8,3),(753,196122,2,2),(754,125228,13,5),(755,110584,6,3),(756,117936,8,4),(757,175404,10,5),(758,119602,13,4),(759,117151,1,5),(760,119670,3,1),(761,110584,3,4),(762,132263,2,2),(763,117267,1,2),(764,175404,3,2),(765,117936,11,2),(766,175404,7,1),(767,155233,4,5),(768,116633,6,1),(769,110584,1,4),(770,145535,4,4),(771,195411,8,1),(772,117267,3,2);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reservation_status` tinyint(1) NOT NULL DEFAULT 0,
  `reservation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`ISBN`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,3),(7,7,1),(8,8,1),(9,9,1),(11,10,2);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `director_name` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'school1','athens',2105324611,'school1@gmail.com','kyriakopoulos','loupo'),(2,'school2','athens',2105326922,'school2@gmail.com','sotiropoulos','koulis'),(3,'school3','athens',2105324333,'school3@gmail.com','liropoulos','papadakis');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `num_books` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1','password1',3,1,'Doe','John',25),(2,'user2','password2',0,0,'Smith','Jane',32),(3,'user3','password3',5,1,'Johnson','Michael',41),(4,'user4','password4',2,1,'Williams','Emily',28),(5,'user5','password5',1,0,'Brown','Oliver',35),(6,'user6','password6',7,1,'Jones','Sophia',37),(7,'user7','password7',0,0,'Davis','Emma',29),(8,'user8','password8',4,1,'Miller','Liam',31),(9,'user9','password9',6,1,'Wilson','Ava',26),(10,'user10','password10',3,1,'Taylor','Noah',33),(11,'usertest1','12341234',1,1,'testlastname','testfirstname',25),(12,'deme','12341234',2,1,'tse','demet',20),(13,'lialia','123123123',2,1,'liaeponimo','lia',20);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_role_view`
--

DROP TABLE IF EXISTS `user_role_view`;
/*!50001 DROP VIEW IF EXISTS `user_role_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_role_view` AS SELECT
 1 AS `username`,
  1 AS `first_name`,
  1 AS `last_name`,
  1 AS `role` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `book_inventory_view`
--

/*!50001 DROP VIEW IF EXISTS `book_inventory_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `book_inventory_view` AS select `bs`.`book_id` AS `book_id`,`bs`.`inventory` AS `inventory`,`bs`.`school_id` AS `school_id`,`b`.`titleBK` AS `titleBK` from (`book_school` `bs` join `book` `b` on(`bs`.`book_id` = `b`.`ISBN`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_role_view`
--

/*!50001 DROP VIEW IF EXISTS `user_role_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_role_view` AS select `u`.`username` AS `username`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`r`.`role` AS `role` from (`user` `u` join `role` `r` on(`u`.`id` = `r`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 14:58:59
