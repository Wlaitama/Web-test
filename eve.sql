-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: eve
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_category`
--

DROP TABLE IF EXISTS `_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_category`
--

LOCK TABLES `_category` WRITE;
/*!40000 ALTER TABLE `_category` DISABLE KEYS */;
INSERT INTO `_category` VALUES (1,'Концерт'),(4,'Конкурс'),(5,'Кружок'),(6,'Секция');
/*!40000 ALTER TABLE `_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_event`
--

DROP TABLE IF EXISTS `_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` text COLLATE utf8mb4_general_ci,
  `adress` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `classroom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `num_of_reg` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_event`
--

LOCK TABLES `_event` WRITE;
/*!40000 ALTER TABLE `_event` DISABLE KEYS */;
INSERT INTO `_event` VALUES (8,'Growing up your beard','Just two good ol\' boys Never mean no harm. law since the day.','Image/LNImg1.png','Минск-Арена, Минск','-',1,1,3000,20000),(9,'Being introvert is cool','Just two good ol\' boys Never mean no harm. law since the day.','Image/LNImg2.png','Минск-Арена, Минск','-',1,1,3000,20000),(10,'Text header','Just two good ol\' boys Never mean no harm. law since the day.','Image/CntImg1.png',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Punk style? Why not','Just two good ol\' boys Never mean no harm. law since the day.','Image/LNImg3.png',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_favorites`
--

DROP TABLE IF EXISTS `_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_favorites` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `type_event` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_favorites`
--

LOCK TABLES `_favorites` WRITE;
/*!40000 ALTER TABLE `_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_single`
--

DROP TABLE IF EXISTS `_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_single` (
  `single_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`single_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_single`
--

LOCK TABLES `_single` WRITE;
/*!40000 ALTER TABLE `_single` DISABLE KEYS */;
INSERT INTO `_single` VALUES (8,'2019-11-09 19:00:00','3'),(9,'2019-11-09 19:00:00','3');
/*!40000 ALTER TABLE `_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_type`
--

DROP TABLE IF EXISTS `_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_type`
--

LOCK TABLES `_type` WRITE;
/*!40000 ALTER TABLE `_type` DISABLE KEYS */;
INSERT INTO `_type` VALUES (1,'Один'),(2,'Много');
/*!40000 ALTER TABLE `_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_user`
--

DROP TABLE IF EXISTS `_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` int(11) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verification` int(2) DEFAULT NULL,
  `activation` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user`
--

LOCK TABLES `_user` WRITE;
/*!40000 ALTER TABLE `_user` DISABLE KEYS */;
INSERT INTO `_user` VALUES (2,11,'root@gamil.com','eefe83ada41f43ad19357b788a88ddec','Вадим','Десятов','+375 29 284 78 27',0,0),(3,31,'roo@gmail.com','eefe83ada41f43ad19357b788a88ddec','fds','fds','312',0,0),(4,223,'ffdns','fsdfds','fsfds','fdfds','323323',1,0),(5,51,'rt@gmai.com','a75d4930656ba67e7761ba235d69df25','dsfs','fsd','432432',0,0),(6,61,'fdsfsd@gmail.com','0decf2e926011bf53eb22c7e6e73094d','fddsf','vfsdf','42432',0,0),(7,71,'alxlis2309@mail.ru','38ff45f227925eb3bbf2fc74dc188502','Вадим','Десятов','+375(29)784-43-54',0,0),(8,81,'Vadim.Diesiatov@gmail.com','025c1e37b069dcd4129f02c842b705af','fds','fds','+375(29)784-43-54',0,0),(9,91,'alexlisdream@gmail.com','ca056016d0ee76e71d397f9f42ba822b','Вадим','Десятов','+375(29)784-43-54',0,0),(10,101,'alexlisdream@gmail.com','39fdff1591e1a0ac0d6960f58b5ef104','Вадим','Десятов','+375(29)784-43-54',0,0),(11,101,'alexlisdream@gmail.com','39fdff1591e1a0ac0d6960f58b5ef104','Вадим','Десятов','+375(29)784-43-54',0,0),(12,121,'alexlisdream@gmail.com','39fdff1591e1a0ac0d6960f58b5ef104','Вадим','Десятов','+375(29)784-43-54',0,0),(13,131,'alexlisdream@gmail.com','3ca7b5be8ab33446a269f9e67f0c66c3','Вадим','Десятов','+375(29)784-43-54',0,0),(14,141,'alexlisdream@gmail.com','3ca7b5be8ab33446a269f9e67f0c66c3','Вадим','Десятов','+375(29)784-43-54',0,0),(15,151,'alexlisdream@gmail.com','b651d90372cc0f5c3aa8b509a598ff6b','efe','ef','+375(29)784-43-54',0,0),(16,161,'alexlisdream@gmail.com','b651d90372cc0f5c3aa8b509a598ff6b','efe','ef','+375(29)784-43-54',0,0),(17,171,'tfd@gmail.com','e4de7f5478bfe421dbc42bc12f676c91','trte','Десятов','+375(29)784-43-54',0,0),(18,181,'alexlisdream@gmail.com','cb7bf7efa6d652046abd2f7d84ee18c1','Вадим','Десятов','+375 29 284 78 27',0,0),(19,191,'alexlisdream@gmail.com','dd9aaeb1bed133c0c4e174cf14681fe1','efef','ef','+375(29)784-43-54',0,0),(20,191,'alexlisdream@gmail.com','dd9aaeb1bed133c0c4e174cf14681fe1','efef','ef','+375(29)784-43-54',0,0),(21,201,'alexlisdream@gmail.com','dd9aaeb1bed133c0c4e174cf14681fe1','efef','ef','+375(29)784-43-54',0,0),(22,211,'alexlisdream@gmail.com','dd9aaeb1bed133c0c4e174cf14681fe1','efef','ef','+375(29)784-43-54',0,0),(23,231,'alexlisdream@gmail.com','97d7cced51c312a5be07ba54b8de1dfd','Вадим','Десятов','+375(29)784-43-54',0,0),(24,241,'alexlisdream@gmail.com','54dd11685d504aa2eff075007900b41f','Вадим','Десятов','+375(29)784-43-54',0,0),(25,251,'alexlisdream@gmail.com','54dd11685d504aa2eff075007900b41f','Вадим','Десятов','+375(29)784-43-54',0,0),(26,261,'fsdfds@gmail.com','cb7bf7efa6d652046abd2f7d84ee18c1','fdsfds','fdsfdsfds','+375(29)454-45-55',0,0),(27,271,'vadim.dies@gamil.com','827ccb0eea8a706c4c34a16891f84e7b','Вадим','Десятов','+375 29 284 78 27',0,0),(28,281,'Vadim.Diesiatov@gmail.com','a384b6463fc216a5f8ecb6670f86456a','Вадим','Десятов','+375(29)784-43-54',0,0),(60,2,'vadim@gmail.com','vadim','fdfd','fdf','4342f',1,0),(61,611,'root@gmai.com','a5820e2e2e2b1260fed3ea431f131859','Вадим','Десятов','+375 29 284 78 27',0,0),(62,621,'qwer@gmail.com','962012d09b8170d912f0669f6d7d9d07','Вадим','Десятов','+375 29 284 78 27',0,0),(63,631,'vadim12@gmail.com','c399799e3f3eb9a6b2b7e3a4d8e9a263','Вадим','Десятов','+375 9999999999',0,0),(64,641,'q@a.c','7694f4a66316e53c8cdd9d9954bd611d','fddsf','df','fds',0,0),(65,651,'zxcv@gmail.com','fd2cc6c54239c40495a0d3a93b6380eb','rewrwe','rewr','rew',0,0),(66,661,'vadim123@gmail.com','cb5b62d24a9f05b4ffd98f9f2eb6ff97','Vadim','Dies','232323',0,0);
/*!40000 ALTER TABLE `_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-15 10:16:40
