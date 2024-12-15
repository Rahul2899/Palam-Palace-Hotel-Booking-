-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: palampalace
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  `hb_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `rt_id` int DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `FK9eflsyu6fot2a6e0ovubfj4li` (`cust_id`),
  KEY `FK49l5l3ppjvhaba9ambewf0jv1` (`hb_id`),
  KEY `FKowymy55vrygpdnacvnbck2js3` (`room_id`),
  KEY `FKi45b20vsc5255d36v0e5pp8en` (`rt_id`),
  CONSTRAINT `FK49l5l3ppjvhaba9ambewf0jv1` FOREIGN KEY (`hb_id`) REFERENCES `hotelbranch` (`hb_id`),
  CONSTRAINT `FK9eflsyu6fot2a6e0ovubfj4li` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FKi45b20vsc5255d36v0e5pp8en` FOREIGN KEY (`rt_id`) REFERENCES `roomtype` (`rtid`),
  CONSTRAINT `FKowymy55vrygpdnacvnbck2js3` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_address` varchar(255) DEFAULT NULL,
  `cust_email` varchar(255) DEFAULT NULL,
  `cust_idproof` varchar(255) DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'B-10,Om Krishna Villa,Greenroad,Louiswadi,Thane(West)','shrihari.gosavi2@gmail.com','person_1.jpg','Shrihari','9535773605','123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `e_id` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `eimg` varchar(255) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Banquet','500000','banquet.jfif','AC, Wifi-Connectivity'),(2,'Ring Ceremony','100000','ringCeremony.jfif','AC, Wifi-Connectivity'),(3,'Corporate Event','55000','corporateEvent.jfif','AC, Wifi-Connectivity'),(4,'Concert','250000','Dance.jfif','AC, Wifi-Connectivity');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventbooking`
--

DROP TABLE IF EXISTS `eventbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventbooking` (
  `eventbooking_id` int NOT NULL AUTO_INCREMENT,
  `eventdate` date DEFAULT NULL,
  `event_idfk` int DEFAULT NULL,
  `hb_idfk` int DEFAULT NULL,
  `cust_idfk` int DEFAULT NULL,
  PRIMARY KEY (`eventbooking_id`),
  KEY `FKj1y7h3954e58kfe0p2xr3045x` (`event_idfk`),
  KEY `FKlsk3kjf3qa5me3tuwoklkb4cv` (`hb_idfk`),
  KEY `FKdh8teljx6mx1h7spafh1g6lbj` (`cust_idfk`),
  CONSTRAINT `FKdh8teljx6mx1h7spafh1g6lbj` FOREIGN KEY (`cust_idfk`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FKj1y7h3954e58kfe0p2xr3045x` FOREIGN KEY (`event_idfk`) REFERENCES `event` (`e_id`),
  CONSTRAINT `FKlsk3kjf3qa5me3tuwoklkb4cv` FOREIGN KEY (`hb_idfk`) REFERENCES `hotelbranch` (`hb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventbooking`
--

LOCK TABLES `eventbooking` WRITE;
/*!40000 ALTER TABLE `eventbooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (4);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelbranch`
--

DROP TABLE IF EXISTS `hotelbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelbranch` (
  `hb_id` int NOT NULL AUTO_INCREMENT,
  `branch_email` varchar(255) DEFAULT NULL,
  `branch_location` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_phone` varchar(255) DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  PRIMARY KEY (`hb_id`),
  KEY `FKad2wi63x4oeexv7g5qlgxufvx` (`service_id`),
  CONSTRAINT `FKad2wi63x4oeexv7g5qlgxufvx` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelbranch`
--

LOCK TABLES `hotelbranch` WRITE;
/*!40000 ALTER TABLE `hotelbranch` DISABLE KEYS */;
INSERT INTO `hotelbranch` VALUES (1,'mumbai@palamhotels.com','Mumbai','Palam Palace','123456789',1),(2,'ahmedabad@palamhotels.com','Ahmedabad','Palam Palace','123456789',1);
/*!40000 ALTER TABLE `hotelbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restauranttablebooking`
--

DROP TABLE IF EXISTS `restauranttablebooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restauranttablebooking` (
  `tableId` int NOT NULL AUTO_INCREMENT,
  `noofGuests` varchar(255) DEFAULT NULL,
  `reservationCharges` varchar(255) DEFAULT NULL,
  `reservationDate` date DEFAULT NULL,
  `reservationTime` time DEFAULT NULL,
  `tableno` int NOT NULL,
  `cidfk` int DEFAULT NULL,
  `hbidfk` int DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  KEY `FK12q0hqfymst6fbj20w2a3139j` (`cidfk`),
  KEY `FK5w1am8m7q1tcyvetjusl2lney` (`hbidfk`),
  CONSTRAINT `FK12q0hqfymst6fbj20w2a3139j` FOREIGN KEY (`cidfk`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FK5w1am8m7q1tcyvetjusl2lney` FOREIGN KEY (`hbidfk`) REFERENCES `hotelbranch` (`hb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restauranttablebooking`
--

LOCK TABLES `restauranttablebooking` WRITE;
/*!40000 ALTER TABLE `restauranttablebooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `restauranttablebooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL,
  `bed_capacity` varchar(255) DEFAULT NULL,
  `cancellation_charge` varchar(255) DEFAULT NULL,
  `rent` varchar(255) DEFAULT NULL,
  `room_description` varchar(255) DEFAULT NULL,
  `room_img` varchar(255) DEFAULT NULL,
  `room_no` int NOT NULL,
  `hbid` int DEFAULT NULL,
  `rtid` int DEFAULT NULL,
  `room_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `FKb5ile0q8f13od55i4jnoteh9e` (`hbid`),
  KEY `FKeefvtfdbgvses1786eyqp39y8` (`rtid`),
  CONSTRAINT `FKb5ile0q8f13od55i4jnoteh9e` FOREIGN KEY (`hbid`) REFERENCES `hotelbranch` (`hb_id`),
  CONSTRAINT `FKeefvtfdbgvses1786eyqp39y8` FOREIGN KEY (`rtid`) REFERENCES `roomtype` (`rtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'2','','1000','AC, TV, Shower, Wifi-Connectivity','room-1.jpg',101,2,16,'not available'),(3,'4','','1500','AC, TV, Shower, Wifi-Connectivity','room-4.jpg',103,2,17,'available');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype` (
  `rtid` int NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (15,'Single'),(16,'Double'),(17,'Quad'),(18,'King'),(19,'Suite'),(20,'Apartments'),(21,'Villa');
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `Services` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'hotels');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_designationl` varchar(255) DEFAULT NULL,
  `staff_email` varchar(255) DEFAULT NULL,
  `staff_fname` varchar(255) DEFAULT NULL,
  `staff_geneder` varchar(255) DEFAULT NULL,
  `staff_idproof` varchar(255) DEFAULT NULL,
  `staff_joinDate` varchar(255) DEFAULT NULL,
  `staff_lname` varchar(255) DEFAULT NULL,
  `staff_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 14:07:54
