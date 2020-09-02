CREATE DATABASE  IF NOT EXISTS `schema101296632` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schema101296632`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: schema101296632
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `branch_id` int NOT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `total_packages` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Clients_client_id` int NOT NULL,
  `fees` int DEFAULT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `fk_Branches_Clients1_idx` (`Clients_client_id`),
  CONSTRAINT `fk_Branches_Clients1` FOREIGN KEY (`Clients_client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'Islington',50,'2019-12-14',2,900),(2,'Old Mill',30,'2019-12-05',1,450),(3,'Spadina',60,'2019-12-03',5,1050),(4,'Museum',30,'2019-12-24',3,500),(5,'Yonge',40,'2019-12-09',4,700),(6,'Summerhill',30,'2019-12-13',7,400),(7,'Fairbank',50,'2019-12-10',9,800),(8,'Oakwood',40,'2019-12-22',6,600),(9,'Caledonia',30,'2019-12-16',10,450),(10,'Bayview',20,'2019-12-09',8,300);
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL,
  `client_name` varchar(45) DEFAULT NULL,
  `client_address` varchar(45) DEFAULT NULL,
  `receiver_name` varchar(45) DEFAULT NULL,
  `receiver_address` varchar(45) DEFAULT NULL,
  `number_of_packages` int DEFAULT NULL,
  `courier_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Korah Blanca','1555 W Lane, Ave','Yash Randall','11 E Rancho Madera Rd',1,'Elmner Jones'),(2,'Johnathon Millerton','60 Madison Ave','Mikayla Damion','2021 K Street Nw',3,'Olivia Hernandez'),(3,'Kendall Mayte','4775 E Miami River Rd','Kaitlin Hostlery','3250 Spring Grove Ave',2,'Cindy Smith'),(4,'Derek Chadick','9022 E Merchant Wy','Hanna Moos','1778 N Bovine Ave',1,'Robert Aaronsen'),(5,'Fred Citeaux','1234 Main St','Martin Summer','1877 Ete Ct',2,'Ralph Simonian'),(6,'Elizabeth Lincoln','4562 Rt 78 E','Howard Synder','2732 Baker Blvd',5,'Vanessa Wilson'),(7,'Yoshi Latimer','City Center Plaza 516 Main St','John Steel','12 Ochestra Terrace',4,'Thomas Hardy'),(8,'Jaime Yorres','87 Polk St Suite 5','Fran Moores','89 Chiaroscuro Rd',2,'Paulo Locareo'),(9,'Rene Phillips','2743 Bering St','Paula Floyd','2817 Milton Dr',1,'Rhea O\'Leary'),(10,'Jose Pavarotti','187 Suffolk ln','Liz Nixon','89 Jefferson Way Suite 2',3,'Denise Watson');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couriers`
--

DROP TABLE IF EXISTS `couriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couriers` (
  `courier_id` int NOT NULL,
  `courier_name` varchar(45) DEFAULT NULL,
  `total_packages_delivered` int DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `couriers_address` varchar(45) DEFAULT NULL,
  `Clients_client_id` int NOT NULL,
  PRIMARY KEY (`courier_id`),
  KEY `fk_Couriers_Clients1_idx` (`Clients_client_id`),
  CONSTRAINT `fk_Couriers_Clients1` FOREIGN KEY (`Clients_client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couriers`
--

LOCK TABLES `couriers` WRITE;
/*!40000 ALTER TABLE `couriers` DISABLE KEYS */;
INSERT INTO `couriers` VALUES (1,'Cindy Smith',5,'2019-12-13','500 Macpherson Ave',3),(2,'Elmer Jones',4,'2019-12-15','200 King St West',1),(3,'Ralph Simonian',5,'2019-12-23','51 Dockside Dr',5),(4,'Olivia Hernandez',3,'2019-12-02','3 Lower Jarvis St',2),(5,'Robert Aaronsen',4,'2019-12-10','27 King\'s College Cir',4),(6,'Denise Watson',6,'2019-12-08','350 Victoria St',10),(7,'Paulo Locareo',3,'2019-12-05','389 Meadowvale Dr',8),(8,'Thomas Hardy',5,'2019-12-03','243 Green Lanes',7),(9,'Rhea O\'Leary',4,'2019-12-06','72 Clissold Rd',9),(10,'Vanessa Wilson',2,'2019-12-28','89 Islington Ave',6);
/*!40000 ALTER TABLE `couriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `employee_name` varchar(45) DEFAULT NULL,
  `working_hour` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `Branches_branch_id` int NOT NULL,
  `employee_address` varchar(45) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_Employees_Branches1_idx` (`Branches_branch_id`),
  CONSTRAINT `fk_Employees_Branches1` FOREIGN KEY (`Branches_branch_id`) REFERENCES `branches` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Andrea Wilson','8','2019-12-01',5,'2299 E Baylor Dr',3),(2,'Matthew Lim','6','2019-12-01',1,'722 Davichi Blvd',10),(3,'Steven Stribell','8','2019-12-01',4,'55 Grizzly Peak Rd',8),(4,'Tony Crawford','5','2019-12-01',3,'P.O Box 555',1),(5,'Chris Weber','8','2019-12-01',2,'305-14th Ave.S.Suite 3B',5),(6,'James Mckenzie','7','2019-12-13',10,'41 Monkton Ave',9),(7,'Mark Dedier','5','2019-12-16',6,'90 Cordova Ave',6),(8,'Leo Bacon','6','2019-12-09',8,'51 Mabelle St Islington',4),(9,'Dean Hawkin','8','2019-12-05',9,'38 Royalavon Crescent',7),(10,'Adrian Gonzale','7','2019-12-20',7,'110 Burnhamthrope Rd',2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hands over packages`
--

DROP TABLE IF EXISTS `hands over packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hands over packages` (
  `Employees_employee_id` int NOT NULL,
  `Couriers_courier_id` int NOT NULL,
  `package_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`Employees_employee_id`,`Couriers_courier_id`),
  KEY `fk_Employees_has_Couriers_Couriers1_idx` (`Couriers_courier_id`),
  KEY `fk_Employees_has_Couriers_Employees1_idx` (`Employees_employee_id`),
  CONSTRAINT `fk_Employees_has_Couriers_Couriers1` FOREIGN KEY (`Couriers_courier_id`) REFERENCES `couriers` (`courier_id`),
  CONSTRAINT `fk_Employees_has_Couriers_Employees1` FOREIGN KEY (`Employees_employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hands over packages`
--

LOCK TABLES `hands over packages` WRITE;
/*!40000 ALTER TABLE `hands over packages` DISABLE KEYS */;
INSERT INTO `hands over packages` VALUES (1,1,1,3),(2,4,2,2),(3,6,3,10),(4,2,4,1),(5,8,5,7),(6,10,6,6),(7,9,7,9),(8,3,8,5),(9,7,9,8),(10,5,10,4);
/*!40000 ALTER TABLE `hands over packages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-24 22:12:01
