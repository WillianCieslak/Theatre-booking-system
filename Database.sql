CREATE DATABASE  IF NOT EXISTS `gct` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gct`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: gct
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `house` varchar(60) NOT NULL,
  `street` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `county` varchar(60) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_user1_idx` (`user_id`),
  CONSTRAINT `fk_address_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (0,0,'GCT','Greenwich','London','London','SE9'),(1,1,'41','sad','ashford','3342','44 343'),(153,4,'61','Mill Court','Ashford','Kent','TN24 8DN'),(221,1075,'61','Street','City','Kent','TN24 8SN'),(222,1076,'Greenwich','London','London','London','SE10');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `user_id` int(11) NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_customer_user1_idx` (`user_id`),
  KEY `fk_customer_customer_type1_idx` (`customer_type_id`),
  CONSTRAINT `fk_customer_customer_type1` FOREIGN KEY (`customer_type_id`) REFERENCES `customer_type` (`id`),
  CONSTRAINT `fk_customer_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10,1),(12,1),(17,1),(20,1),(25,1),(40,1),(42,1),(47,1),(59,1),(70,1),(72,1),(83,1),(86,1),(87,1),(94,1),(97,1),(101,1),(104,1),(105,1),(110,1),(112,1),(121,1),(136,1),(137,1),(142,1),(146,1),(147,1),(149,1),(158,1),(159,1),(160,1),(165,1),(176,1),(183,1),(196,1),(198,1),(2,2),(5,2),(14,2),(16,2),(18,2),(21,2),(27,2),(28,2),(29,2),(31,2),(36,2),(38,2),(39,2),(41,2),(51,2),(52,2),(53,2),(57,2),(58,2),(61,2),(64,2),(65,2),(67,2),(71,2),(76,2),(77,2),(78,2),(84,2),(88,2),(89,2),(93,2),(95,2),(98,2),(113,2),(118,2),(119,2),(126,2),(128,2),(138,2),(140,2),(144,2),(162,2),(163,2),(167,2),(169,2),(187,2),(190,2),(192,2),(193,2),(3,3),(4,3),(7,3),(11,3),(32,3),(33,3),(45,3),(46,3),(54,3),(55,3),(56,3),(74,3),(75,3),(79,3),(81,3),(90,3),(102,3),(111,3),(124,3),(125,3),(139,3),(150,3),(152,3),(155,3),(161,3),(180,3),(182,3),(184,3),(186,3),(195,3),(1,4),(6,4),(8,4),(9,4),(15,4),(19,4),(22,4),(23,4),(30,4),(37,4),(43,4),(44,4),(49,4),(50,4),(68,4),(69,4),(73,4),(92,4),(96,4),(99,4),(100,4),(106,4),(107,4),(115,4),(130,4),(134,4),(141,4),(143,4),(148,4),(166,4),(178,4),(185,4),(189,4),(13,5),(24,5),(26,5),(34,5),(35,5),(48,5),(60,5),(62,5),(63,5),(66,5),(80,5),(82,5),(85,5),(91,5),(103,5),(108,5),(109,5),(114,5),(127,5),(129,5),(131,5),(132,5),(133,5),(135,5),(153,5),(168,5),(179,5),(181,5),(188,5),(191,5),(197,5),(199,5),(200,5),(1081,5),(1082,5),(1083,5),(1084,5),(1085,5),(1086,5),(116,6),(117,6),(120,6),(122,6),(123,6),(145,6),(151,6),(154,6),(156,6),(157,6),(164,6),(170,6),(171,6),(172,6),(173,6),(174,6),(175,6),(177,6),(194,6),(1075,7),(1076,7);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES (1,'Staff'),(2,'Agency'),(3,'Age Pensioner'),(4,'Child'),(5,'Adult'),(6,'Student'),(7,'Guest');
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` float NOT NULL,
  `reservation_number` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_user1_idx` (`user_id`),
  KEY `fk_order_address1_idx` (`address_id`),
  CONSTRAINT `fk_order_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_order_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (282,0,0,' ','01/04/2019',5,195,'22167'),(283,0,0,' ','01/04/2019',6,165,'15876'),(284,0,0,' ','01/04/2019',6,165,'15876'),(285,0,0,' ','01/04/2019',5,108,'13596'),(286,1075,221,'SirWillian Cieslak','01/04/2019',53,1872,'15456'),(287,1076,222,'Florin Mihali','01/04/2019',25,925.4,'13360'),(288,1083,0,'lulz asd','01/04/2019',2,62.4,'17246');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_detail`
--

DROP TABLE IF EXISTS `payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `card_number` varchar(30) NOT NULL,
  `expire_date` varchar(10) NOT NULL,
  `security_code` varchar(20) DEFAULT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_payment_detail_customer1_idx` (`customer_user_id`),
  CONSTRAINT `fk_payment_detail_customer1` FOREIGN KEY (`customer_user_id`) REFERENCES `customer` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_detail`
--

LOCK TABLES `payment_detail` WRITE;
/*!40000 ALTER TABLE `payment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `duration` varchar(3) DEFAULT NULL,
  `price` float NOT NULL,
  `age_restriction` varchar(3) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES (1,'The Lion King','Musical','150',39,'3+',1,'/images/TheLionKing.jpg'),(2,'Aladdin','Musical','150',30,'3+',1,'/images/Alladin.jpg'),(3,'La Bohème','Opera','135',24,'5+',1,'/images/LABoheme.jpg'),(4,'Rip it Up','Dance','140',30,'3+',1,'/images/RipItUp.jpg'),(5,'Cirque du Soleil: Totem','Dance','130',86,'5+',1,'/images/CirqueDuSoleil.jpg'),(6,'The Price','Play','160',15,'3+',1,'/images/ThePrice.jpg'),(7,'Nine Night','Play','105',63,NULL,1,'/images/NineNight.jpg'),(8,'Equus','Play',NULL,12,'14+',1,'/images/Equus.jpg'),(9,'Mama Mia!','Musical','155',21,'5+',1,'/images/MamaMia.jpg'),(10,'Matilda','Musical','160',25,'5+',1,'/images/Matilda.jpg');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_date`
--

DROP TABLE IF EXISTS `performance_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `performance_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `performance_id` int(11) NOT NULL,
  `date` varchar(10) DEFAULT NULL,
  `time` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `performance_id` (`performance_id`),
  CONSTRAINT `performance_date_ibfk_1` FOREIGN KEY (`performance_id`) REFERENCES `performance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_date`
--

LOCK TABLES `performance_date` WRITE;
/*!40000 ALTER TABLE `performance_date` DISABLE KEYS */;
INSERT INTO `performance_date` VALUES (1,1,'08/04/2019','19:30'),(2,1,'15/04/2019','22:00'),(3,1,'22/04/2019','19:30'),(4,2,'09/04/2019','19:45'),(5,2,'16/04/2019','11:00'),(6,2,'23/04/2019','19:45'),(7,3,'03/04/2019','12:00'),(8,3,'10/04/2019','15:00'),(9,3,'17/04/2019','17:00'),(10,4,'11/04/2019','21:00'),(11,4,'18/04/2019','19:30'),(12,4,'25/04/2019','21:00'),(13,5,'12/04/2019','10:00'),(14,5,'19/04/2019','12:00'),(15,5,'26/04/2019','13:50'),(16,6,'13/04/2019','19:00'),(17,6,'20/04/2019','19:00'),(18,6,'27/04/2019','19:45'),(19,7,'14/04/2019','12:00'),(20,7,'21/04/2019','23:00'),(21,7,'28/04/2019','22:30'),(22,8,'10/04/2019','13:45'),(23,8,'12/04/2019','15:00'),(24,9,'10/04/2019','19:00'),(25,9,'15/04/2019','16:00'),(26,10,'10/04/2019','17:50'),(27,10,'20/04/2019','23:00');
/*!40000 ALTER TABLE `performance_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_seat`
--

DROP TABLE IF EXISTS `performance_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `performance_seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_id` int(11) NOT NULL,
  `performance_date_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `order_detail_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seat_id` (`seat_id`),
  KEY `performance_date_id` (`performance_date_id`),
  KEY `fk_order_detail_id` (`order_detail_id`),
  CONSTRAINT `performance_seat_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`),
  CONSTRAINT `performance_seat_ibfk_3` FOREIGN KEY (`performance_date_id`) REFERENCES `performance_date` (`id`),
  CONSTRAINT `performance_seat_ibfk_4` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_seat`
--

LOCK TABLES `performance_seat` WRITE;
/*!40000 ALTER TABLE `performance_seat` DISABLE KEYS */;
INSERT INTO `performance_seat` VALUES (149,3,1,39,282),(150,4,1,39,282),(151,5,1,39,282),(152,12,1,39,282),(153,11,1,39,282),(154,7,4,30,283),(155,6,4,30,283),(156,24,4,27,283),(157,23,4,27,283),(158,34,4,27,283),(159,40,4,24,283),(160,7,4,30,284),(161,6,4,30,284),(162,24,4,27,284),(163,23,4,27,284),(164,34,4,27,284),(165,40,4,24,284),(166,22,7,21.6,285),(167,21,7,21.6,285),(168,30,7,21.6,285),(169,36,7,21.6,285),(170,34,7,21.6,285),(171,1,10,30,286),(172,8,10,30,286),(173,9,10,30,286),(174,16,10,30,286),(175,22,10,27,286),(176,30,10,27,286),(177,23,23,77.4,286),(178,30,23,77.4,286),(179,54,23,68.8,286),(180,47,23,68.8,286),(181,46,23,68.8,286),(182,39,23,68.8,286),(183,49,23,68.8,286),(184,50,23,68.8,286),(185,37,23,68.8,286),(186,11,16,15,286),(187,10,16,15,286),(188,9,16,15,286),(189,12,16,15,286),(190,3,19,63,286),(191,11,19,63,286),(192,10,19,63,286),(193,18,19,63,286),(194,23,19,56.7,286),(195,22,19,56.7,286),(196,27,19,56.7,286),(197,34,19,56.7,286),(198,40,19,50.4,286),(199,47,19,50.4,286),(200,25,26,10.8,286),(201,32,26,10.8,286),(202,24,26,10.8,286),(203,14,26,12,286),(204,1,26,12,286),(205,9,26,12,286),(206,11,26,12,286),(207,22,26,10.8,286),(208,34,26,10.8,286),(209,30,26,18.9,286),(210,29,26,18.9,286),(211,40,26,16.8,286),(212,39,26,16.8,286),(213,46,26,16.8,286),(214,54,26,16.8,286),(215,13,26,25,286),(216,12,26,25,286),(217,4,26,25,286),(218,3,26,25,286),(219,5,26,25,286),(220,23,26,22.5,286),(221,29,26,22.5,286),(222,30,26,22.5,286),(223,22,26,22.5,286),(224,21,25,35.1,287),(225,22,25,35.1,287),(226,20,5,27,287),(227,19,5,27,287),(228,50,7,19.2,287),(229,11,11,30,287),(230,12,11,30,287),(231,20,11,27,287),(232,38,11,24,287),(233,31,14,77.4,287),(234,30,14,77.4,287),(235,29,14,77.4,287),(236,28,14,77.4,287),(237,54,27,12,287),(238,53,27,12,287),(239,52,27,12,287),(240,51,27,12,287),(241,23,20,56.7,287),(242,22,20,56.7,287),(243,18,20,63,287),(244,17,20,63,287),(245,4,23,12,287),(246,5,23,12,287),(247,14,27,25,287),(248,13,27,25,287),(249,54,3,31.2,288),(250,53,3,31.2,288);
/*!40000 ALTER TABLE `performance_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `performance_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` varchar(500) DEFAULT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `date` varchar(10) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_user1_idx` (`user_id`),
  KEY `fk_review_performance1_idx` (`performance_id`),
  CONSTRAINT `fk_review_performance1` FOREIGN KEY (`performance_id`) REFERENCES `performance` (`id`),
  CONSTRAINT `fk_review_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_number` varchar(15) NOT NULL,
  `row` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,'A1',1),(2,'A2',1),(3,'A3',1),(4,'A4',1),(5,'A5',1),(6,'A6',1),(7,'A7',2),(8,'A8',2),(9,'A9',2),(10,'A10',2),(11,'A11',2),(12,'A12',2),(13,'A13',3),(14,'A14',3),(15,'A15',3),(16,'A16',3),(17,'A17',3),(18,'A18',3),(19,'B19',4),(20,'B20',4),(21,'B21',4),(22,'B22',4),(23,'B23',4),(24,'B24',4),(25,'B25',5),(26,'B26',5),(27,'B27',5),(28,'B28',5),(29,'B29',5),(30,'B30',5),(31,'B31',6),(32,'B32',6),(33,'B33',6),(34,'B34',6),(35,'B35',6),(36,'B36',6),(37,'C37',7),(38,'C38',7),(39,'C39',7),(40,'C40',7),(41,'C41',7),(42,'C42',7),(43,'C43',8),(44,'C44',8),(45,'C45',8),(46,'C46',8),(47,'C47',8),(48,'C48',8),(49,'C49',9),(50,'C50',9),(51,'C51',9),(52,'C52',9),(53,'C53',9),(54,'C54',9),(55,'C55',NULL),(56,'C56',NULL);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `user_id` int(11) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_staff_user1_idx` (`user_id`),
  KEY `fk_staff_staff_type1_idx` (`staff_type_id`),
  CONSTRAINT `fk_staff_staff_type1` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`id`),
  CONSTRAINT `fk_staff_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (116,1),(117,1),(120,2),(122,2),(123,2),(145,2),(151,2),(154,2),(156,2),(194,2),(201,2),(202,2),(203,2),(204,2),(205,2),(157,3),(164,3),(170,3),(171,3),(172,3),(173,3),(174,3),(175,3),(177,4);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_type`
--

DROP TABLE IF EXISTS `staff_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_type`
--

LOCK TABLES `staff_type` WRITE;
/*!40000 ALTER TABLE `staff_type` DISABLE KEYS */;
INSERT INTO `staff_type` VALUES (1,'Director'),(2,'Staff'),(3,'Staff'),(4,'Admin');
/*!40000 ALTER TABLE `staff_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1087 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'Greenwich','Theatre','gretheatre@gre.ac.uk','123456','000000000',1),(1,'Jorrie','Poor','jpoor0@liveinternet.ru','OAR27A8','08399135112',1),(2,'Vinson','Davidovicz','vdavidovicz1@berkeley.edu','8IcdJB5CBZ6T','06336480260',1),(3,'Alf','Aumerle','aaumerle2@cdbaby.com','xKW5R5PQxV','01973893709',1),(4,'Rana','Moralee','rmoralee3@yahoo.com','zAb0wc5l','08602827728',1),(5,'Blanche','Hatchman','bhatchman4@ocn.ne.jp','1nadLTq',NULL,1),(6,'Alex','Phlipon','aphlipon5@soundcloud.com','7XyL6WP','03963106186',1),(7,'Sioux','Lawee','slawee6@uol.com.br','B4bJ1Jm','00797116726',1),(8,'Othello','Dodswell','ododswell7@baidu.com','YuLtwnzZy','09986126455',1),(9,'Drona','Iacoviello','diacoviello8@feedburner.com','Y8GF6Nxy3','00236120131',1),(10,'Courtnay','Allsopp','callsopp9@purevolume.com','WVi7uS9PWt1G','05019905960',1),(11,'Ellswerth','Tather','etathera@webmd.com','LAjigyq','07972978680',1),(12,'Donielle','Andreone','dandreoneb@ft.com','c72JxzD','04386230028',1),(13,'Tatiania','Cruickshanks','tcruickshanksc@eventbrite.com','Kh8twoOK','04214823177',1),(14,'Silas','Vertigan','svertigand@addthis.com','Woc4Zad','02501737956',1),(15,'Erica','Hallede','ehalledee@cbsnews.com','bk7Y965m',NULL,1),(16,'Tuckie','Abells','tabellsf@walmart.com','uzZejF','08610612874',1),(17,'Wilek','Aristide','waristideg@icq.com','51N28PSVn',NULL,1),(18,'Artair','Udell','audellh@hp.com','yELyEe3n','06703349025',1),(19,'Liza','Yakushkin','lyakushkini@bloomberg.com','hRRV2hjSD','05380962833',1),(20,'Kassey','Gilcriest','kgilcriestj@msu.edu','wuzHBnUBz','02194365024',1),(21,'Clayson','Waterland','cwaterlandk@typepad.com','1lysOdOkfr','08144203514',1),(22,'Thomas','Opdenorth','topdenorthl@psu.edu','otyKwl4nn',NULL,1),(23,'Therese','Mogie','tmogiem@desdev.cn','Al46joVOIO',NULL,1),(24,'Cirilo','McQueen','cmcqueenn@va.gov','ucd9lcgy35','02196797018',1),(25,'Wayland','Gilhooley','wgilhooleyo@jimdo.com','Tr4EaZw',NULL,1),(26,'Mellisent','Kenryd','mkenrydp@intel.com','b4gLdU8Pd','09900286713',1),(27,'Josselyn','Vicker','jvickerq@skyrock.com','AYBzk58w','01751374353',1),(28,'Janetta','Lishmund','jlishmundr@google.ru','G3iK0D','04834250614',1),(29,'Artus','Bishop','abishops@mozilla.org','sAW0T6I18XH7','08324888507',1),(30,'Patty','Blackah','pblackaht@paginegialle.it','2ujcHjZ','08371485311',1),(31,'Talia','Schoenrock','tschoenrocku@com.com','8UfymDqRB','09385827576',1),(32,'Klarika','Bulford','kbulfordv@friendfeed.com','qffbdkvilU','03745250319',1),(33,'Maggie','Kalinovich','mkalinovichw@ox.ac.uk','phqN85BhTMjc','08462815490',1),(34,'Madalena','Quarterman','mquartermanx@spiegel.de','lff0glMS','03059252749',1),(35,'Joann','Davidwitz','jdavidwitzy@google.es','2IEdiTEWlU9','06182510630',1),(36,'Esdras','Luby','elubyz@theglobeandmail.com','9H30z8d',NULL,1),(37,'Beatrix','Race','brace10@narod.ru','3502bTZp1d01','09158100291',1),(38,'Jermaine','Skea','jskea11@wp.com','D2DIGx','05533357224',1),(39,'Kimball','Maddams','kmaddams12@tinypic.com','XkaHxSJtKE','08557490417',1),(40,'Trueman','Hellin','thellin13@360.cn','E089i5gLXbKN','05272469670',1),(41,'Candie','Ziem','cziem14@toplist.cz','D7f671Z3S5q','08099595211',1),(42,'Katine','Loren','kloren15@trellian.com','IBCFLNmNa','02016015959',1),(43,'Bronson','Axelbee','baxelbee16@businessinsider.com','UjBfWSSoCqb','07792815551',1),(44,'Darci','McDaid','dmcdaid17@mashable.com','FBbgTmKuw6','06748707082',1),(45,'Daria','Hemerijk','dhemerijk18@stumbleupon.com','Fopip5cVd',NULL,1),(46,'Gaye','Atter','gatter19@discovery.com','WLhmb5','04831569713',1),(47,'Wanda','McIlheran','wmcilheran1a@elpais.com','T0I76eUbZhK5','02516363046',1),(48,'Danella','Grafhom','dgrafhom1b@icq.com','XvfLCAxXuz','00772592784',1),(49,'Helge','Pignon','hpignon1c@dagondesign.com','nmgrVsx8EJl5','04583954835',1),(50,'Zulema','Morrill','zmorrill1d@hexun.com','QW3CqPcZ3hQc','09135861459',1),(51,'Coraline','MacCart','cmaccart1e@samsung.com','3HHYV0Poyy','09429198581',1),(52,'Arlina','Grzelak','agrzelak1f@huffingtonpost.com','oexns4LqxsCZ',NULL,1),(53,'Odille','Thorwarth','othorwarth1g@delicious.com','yQBMvl',NULL,1),(54,'Coraline','Rutley','crutley1h@toplist.cz','cEFelcv0Vk','04093415174',1),(55,'Mickey','Stickel','mstickel1i@epa.gov','NKbhl58',NULL,1),(56,'Calvin','Rides','crides1j@cocolog-nifty.com','NMCBqSkSwa',NULL,1),(57,'Kitti','Bottini','kbottini1k@mac.com','G3SlZ2w','08878631797',1),(58,'Zerk','Lowrie','zlowrie1l@weather.com','rRx8GmkJxwu','02344065658',1),(59,'Nap','Fishly','nfishly1m@nsw.gov.au','5p5M1RCfJPR',NULL,1),(60,'Anjanette','Bennedick','abennedick1n@walmart.com','dtHvk8O7T8','00356062623',1),(61,'Vittorio','Girt','vgirt1o@tripod.com','PSQHe44',NULL,1),(62,'Adams','Watkinson','awatkinson1p@privacy.gov.au','33WK5gy1ws','05192441433',1),(63,'Britte','Cisson','bcisson1q@who.int','BswAIjemZd','01717136583',1),(64,'Julianne','Macieiczyk','jmacieiczyk1r@drupal.org','llwJxO','02640240077',1),(65,'Tan','Goodread','tgoodread1s@friendfeed.com','dWc7AgXbv','01006206425',1),(66,'Archie','Minney','aminney1t@booking.com','9rrT2rP2tI6',NULL,1),(67,'Basile','Jaggar','bjaggar1u@devhub.com','hnadwdd3rgj','05735631826',1),(68,'Darn','Phippen','dphippen1v@facebook.com','azXSdDUba',NULL,1),(69,'Micah','Huikerby','mhuikerby1w@lycos.com','nxNXcxbk',NULL,1),(70,'Ladonna','Haining','lhaining1x@dedecms.com','aKnsQxmPgpz',NULL,1),(71,'Wyatan','Paice','wpaice1y@ehow.com','iz48e5','00569185548',1),(72,'Kaila','Balasini','kbalasini1z@soundcloud.com','lCxt9Omg','00495929749',1),(73,'Janie','Gallelli','jgallelli20@hatena.ne.jp','p8XEqK',NULL,1),(74,'Isadore','Iggo','iiggo21@drupal.org','1zU6Id8M1','00877837227',1),(75,'Leonard','Tuther','ltuther22@biblegateway.com','JuQUIS0IW8P','08822222505',1),(76,'Jesselyn','Hayfield','jhayfield23@ebay.com','dtQkThne',NULL,1),(77,'Kingston','Ling','kling24@ebay.co.uk','OQFCL5ZnnTZ','03260993707',1),(78,'Mathilda','Fitzgerald','mfitzgerald25@cnet.com','H3yk45uPEm1','06971417507',1),(79,'Kerrin','Kraut','kkraut26@ox.ac.uk','WGGmJS','04210339141',1),(80,'Wylma','McNeilly','wmcneilly27@cpanel.net','Y7d9hZYgh0k',NULL,1),(81,'Kinsley','Castelli','kcastelli28@umn.edu','kGVfW3C6U',NULL,1),(82,'Menard','Jallin','mjallin29@wordpress.org','sXplJeZ','08013854949',1),(83,'Nellie','Upstell','nupstell2a@w3.org','4RTu6k8','03110253146',1),(84,'Kissie','MacAless','kmacaless2b@rambler.ru','UUs1Ai',NULL,1),(85,'Meredith','Hext','mhext2c@mozilla.com','DTecMYSyknO','08489097425',1),(86,'Alfi','Gard','agard2d@boston.com','NfqgZm1','05465375671',1),(87,'Tomlin','Broomfield','tbroomfield2e@issuu.com','NQVAXgEZ7k',NULL,1),(88,'Roderigo','Mower','rmower2f@canalblog.com','ny1DNN',NULL,1),(89,'Derril','Dufore','ddufore2g@gizmodo.com','P6GY1EY6qVY','01203801623',1),(90,'Hillyer','Currall','hcurrall2h@mlb.com','iSOcZV','03767745062',1),(91,'Joete','Linke','jlinke2i@altervista.org','2VA5SIDl','03693723439',1),(92,'Dorena','Feavyour','dfeavyour2j@sohu.com','ITC4lXc5i4','01190300658',1),(93,'Chrysler','Semkins','csemkins2k@indiatimes.com','12NbXjISTEf',NULL,1),(94,'Merrill','Janiszewski','mjaniszewski2l@51.la','krMrpJFsL',NULL,1),(95,'Jany','McCarrell','jmccarrell2m@netvibes.com','HyAaK0SzGW',NULL,1),(96,'Brunhilda','Willock','bwillock2n@ow.ly','vXmDXoIOuj',NULL,1),(97,'Emmey','McCloch','emccloch2o@123-reg.co.uk','oB0nl99',NULL,1),(98,'Eli','Lightbody','elightbody2p@eepurl.com','2gQQD55mN9s','03445021890',1),(99,'Maurise','Cargon','mcargon2q@phoca.cz','JeOsgm',NULL,1),(100,'Jewell','Garnsworth','jgarnsworth2r@state.gov','nLBpkekK',NULL,1),(101,'Gerry','Sabati','gsabati2s@time.com','y0EDLw','00462804766',1),(102,'Jacob','Sherwyn','jsherwyn2t@fc2.com','APRhJXRZou','04651362672',1),(103,'Loria','Voyce','lvoyce2u@blogtalkradio.com','kHeMVgP0CN','08023351355',1),(104,'Netty','Doxey','ndoxey2v@amazonaws.com','RiXqKH8GRQow','01845088690',1),(105,'Kareem','Standbrooke','kstandbrooke2w@aol.com','VXNFbXhWp8K','01182701623',1),(106,'Adrea','Pickworth','apickworth2x@godaddy.com','uQzBbTQjK',NULL,1),(107,'Jocelyne','Tinker','jtinker2y@example.com','DX35OXz','05666641545',1),(108,'Adelaida','Buxton','abuxton2z@bandcamp.com','dQcKxatg8Hw','03678681276',1),(109,'Ab','Bergen','abergen30@intel.com','HltrSjvi','00019563392',1),(110,'Chandal','Ambrogio','cambrogio31@uiuc.edu','1wnJHqkili','00468361600',1),(111,'Kelsy','Bernth','kbernth32@smh.com.au','3ESSjHFP',NULL,1),(112,'Helena','Haggidon','hhaggidon33@geocities.jp','fJsOy2WjAjH4','09820199572',1),(113,'Bessie','Richard','brichard34@tuttocitta.it','P1k0DfkrD','06594568510',1),(114,'Mandy','Manzell','mmanzell35@washingtonpost.com','FCaw6p5','08524333207',1),(115,'Willdon','Avramovsky','wavramovsky36@huffingtonpost.com','Nv08fQLUU',NULL,1),(116,'Terry','Reeder','treeder37@washington.edu','1bz5mpyxaOte','03712541657',1),(117,'Valentin','Baynom','vbaynom38@illinois.edu','nxBvPalz','09408469161',1),(118,'Steve','Crosen','scrosen39@instagram.com','DHsaSKx','08837582891',1),(119,'Emmaline','Piser','episer3a@cloudflare.com','Xyp5ud4XSO',NULL,1),(120,'Boniface','M\'Quharg','bmquharg3b@indiatimes.com','k5WYsn','04959307847',1),(121,'Ted','Izzat','tizzat3c@cbslocal.com','nKOiEUZA','06449151246',1),(122,'Chryste','Felgate','cfelgate3d@parallels.com','REkOnfrRzJWR','08921083506',1),(123,'Christina','Gomby','cgomby3e@chicagotribune.com','WckGVBzNImUz','04139738074',1),(124,'Hartwell','Glanville','hglanville3f@prnewswire.com','7Y0ZFFrKz','06987182065',1),(125,'Maure','Davidoff','mdavidoff3g@washingtonpost.com','2RrxbK','00446715876',1),(126,'Harlin','Hexum','hhexum3h@amazonaws.com','aglTADl','01120354730',1),(127,'Carlen','Hearson','chearson3i@icq.com','ksOD6Ax76f','03506499597',1),(128,'Ewan','McGrudder','emcgrudder3j@com.com','fQER7mwTtWN','05975331605',1),(129,'Rolando','Freire','rfreire3k@dedecms.com','rFJ7xdifVK5k','07946665113',1),(130,'Tulley','Benneton','tbenneton3l@kickstarter.com','ddUYt1HeyA',NULL,1),(131,'Kellby','Gettone','kgettone3m@usatoday.com','J0fCH5v','02246930423',1),(132,'Wiley','Martinot','wmartinot3n@mapy.cz','NcheYrF4','01055014689',1),(133,'Melesa','Gourdon','mgourdon3o@newsvine.com','pkVkT1','08537676869',1),(134,'Lotty','Leuchars','lleuchars3p@unc.edu','2gWOKCqVg','08043614724',1),(135,'Georgetta','Pala','gpala3q@amazon.de','w4oK4Bkdaw','08071873763',1),(136,'Duncan','Balasin','dbalasin3r@macromedia.com','VYJBugJ99ptC','02810774379',1),(137,'Celinda','Magnay','cmagnay3s@alibaba.com','UnfkDIT','09381392025',1),(138,'Dara','Cheson','dcheson3t@slideshare.net','GM9uVeB','05236256638',1),(139,'Gustave','Scaplehorn','gscaplehorn3u@cpanel.net','KQbpiuAI',NULL,1),(140,'Verena','Mintram','vmintram3v@csmonitor.com','YtgKSrdVMBfk',NULL,1),(141,'Wendell','Billison','wbillison3w@disqus.com','DD9f3p','05749640750',1),(142,'Kiel','Beck','kbeck3x@opensource.org','56cbqoil','02878484275',1),(143,'Jonas','Borrow','jborrow3y@reddit.com','1OsNxrJLH','01214843750',1),(144,'Reube','Leighfield','rleighfield3z@columbia.edu','OEBmqZExZCyu','05861264084',1),(145,'Kenon','Fleming','kfleming40@nsw.gov.au','lXuQJH4EP9B','01201660063',1),(146,'Felisha','Aleso','faleso41@furl.net','rps4E9EUB9ZP','06469712717',1),(147,'Tatiania','Maslen','tmaslen42@baidu.com','IQKLYN85as','07632892654',1),(148,'Rosabel','Triggs','rtriggs43@house.gov','rmSwbkrN','04681647585',1),(149,'Carolina','Liptrod','cliptrod44@usa.gov','zxTtZUheC34','08831757732',1),(150,'Audrey','Yglesia','ayglesia45@google.com','Y30np5','02600294296',1),(151,'Ryun','Callf','rcallf46@mozilla.org','lV7TzZWTLhR','05054712037',1),(152,'Grady','MacKilroe','gmackilroe47@t-online.de','Pfyhr30xilEa',NULL,1),(153,'Cole','Fossick','cfossick48@seesaa.net','ydQN7jcxD',NULL,1),(154,'Clemens','Gorthy','cgorthy49@phpbb.com','y157LjgeF','02805451020',1),(155,'Polly','Trouel','ptrouel4a@washington.edu','Rc2nxBtTp','06218873610',1),(156,'Charin','Yitzovicz','cyitzovicz4b@naver.com','uHogVIP','06030304983',1),(157,'Kit','Golborne','kgolborne4c@sun.com','qrsl3I2KZz','05178253860',1),(158,'Janey','Realy','jrealy4d@uol.com.br','WJ9WRJRT','06208234675',1),(159,'Euell','Heineken','eheineken4e@ca.gov','StPZCJ','06231063361',1),(160,'Ellery','Hurtic','ehurtic4f@wikipedia.org','lPoogE',NULL,1),(161,'Osmond','Trebilcock','otrebilcock4g@guardian.co.uk','lV4jpD',NULL,1),(162,'Tobe','Sheldrick','tsheldrick4h@hexun.com','zJDEkUSRv1',NULL,1),(163,'Nolie','Yeabsley','nyeabsley4i@geocities.jp','YJTojpTey','09032683593',1),(164,'Mikael','Brody','mbrody4j@webmd.com','mCF9HeszQNKB','00214560463',1),(165,'Hayden','Croneen','hcroneen4k@intel.com','Tzg7lz6KJZz',NULL,1),(166,'Dougie','Durning','ddurning4l@nydailynews.com','mpQ36o',NULL,1),(167,'Evy','Sebrook','esebrook4m@e-recht24.de','6ks5oc','01276218320',1),(168,'Wilek','Trill','wtrill4n@google.com','fZNqdFfq8h','02696291264',1),(169,'Tandi','Kinglake','tkinglake4o@kickstarter.com','pCV3os6','01564748057',1),(170,'Tull','Ryland','tryland4p@seattletimes.com','FQF8cDmtJ9','01311917792',1),(171,'Timothy','Rohlfs','trohlfs4q@latimes.com','cktJsv','09810171265',1),(172,'Sergent','Ahmed','sahmed4r@squidoo.com','thLMYilw7n','09748238056',1),(173,'Cirstoforo','Esselen','cesselen4s@oakley.com','ND6T1b1H0gN','01332859713',1),(174,'Winslow','Bygate','wbygate4t@list-manage.com','DpJEoJEczt2S','01740052426',1),(175,'Arte','Myatt','amyatt4u@nih.gov','PcDaNtR1BM','01778474239',1),(176,'Chaddy','Mapother','cmapother4v@sourceforge.net','8GJqs6fiUrq','09258616910',1),(177,'Brandtr','Foan','bfoan4w@deviantart.com','WhmXFtxmgTij',NULL,1),(178,'Maxie','Yanuk','myanuk4x@w3.org','0jTtzJIp66z','07947548643',1),(179,'Elfrieda','Parren','eparren4y@dedecms.com','fC8OPrUwAMCr','05948585201',1),(180,'Egan','Spurritt','espurritt4z@flickr.com','2MSCY0','08883014867',1),(181,'Jules','Swepson','jswepson50@so-net.ne.jp','gYAkhwlrr',NULL,1),(182,'Wendel','Stallan','wstallan51@slideshare.net','lMSnFU',NULL,1),(183,'Bibbye','Graffin','bgraffin52@yahoo.co.jp','XchPjHH','09317663098',1),(184,'Kristal','Larkworthy','klarkworthy53@bandcamp.com','gueD64isi',NULL,1),(185,'Gladys','Jindracek','gjindracek54@bing.com','H6nrSzq05',NULL,1),(186,'Waneta','Kingsley','wkingsley55@technorati.com','Qf8aV6vosYL','05374238367',1),(187,'Nolan','McGarry','nmcgarry56@is.gd','HuRZjyGT','02139102375',1),(188,'Cookie','Sherr','csherr57@sciencedaily.com','GDa34ENF',NULL,1),(189,'Talya','Dray','tdray58@cafepress.com','TybF2gjpflb','07987978794',1),(190,'Tab','Schultz','tschultz59@sogou.com','84Qnps','02044306226',1),(191,'Annelise','Siveyer','asiveyer5a@dion.ne.jp','SWn6g8o','07564787023',1),(192,'Finlay','Gauntley','fgauntley5b@psu.edu','fNoNDldN','06588247386',1),(193,'Kingsley','Rizzardini','krizzardini5c@last.fm','TFJffrfwOLP','06269064832',1),(194,'Test','Staff','testemail@gct.com','asd','09290566908',1),(195,'May','Windrus','mwindrus5e@goo.ne.jp','eq4H6NjQ','00278443071',1),(196,'Casey','Mackro','cmackro5f@cbsnews.com','uZ2XrM','03636926806',1),(197,'Katti','Hardes','khardes5g@ebay.com','ijRJVD','09608925667',1),(198,'Pen','Brissenden','pbrissenden5h@51.la','z0LJ8gO',NULL,1),(199,'Test','Customer','testemail@gmail.com','asd','01522176449',1),(200,'Oliy','Christol','ochristol5j@deliciousdays.com','GK7aoWa1YLx',NULL,1),(201,'Willian','Cieslak','willian@gct.com','1234',NULL,1),(202,'George','Svanidze','george@gct.com','1234',NULL,1),(203,'Fadawa','Fadawa','fadawa@gct.com','1234',NULL,1),(204,'Eugen','Mihali','eugen@gct.com','1234',NULL,1),(205,'Florin','Oprea','florin@gct.com','1234',NULL,1),(206,'Will','Will','will@hotmail.com','1234',NULL,1),(1075,NULL,NULL,'will@hotmail.com',NULL,NULL,1),(1076,NULL,NULL,'London',NULL,NULL,1),(1081,'will22','will22','will22','will22','will22',1),(1082,'will22','will22','will22','will22','will22',1),(1083,'lulz','asd','lulz@lol.com','123','0900 600 500',1),(1084,'will22','will22','will22','will22','will22',1),(1085,'will22','will22','will22','will22','will22',1),(1086,'will22','will22','will22','will22','will22',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01 16:29:04
