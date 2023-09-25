CREATE DATABASE  IF NOT EXISTS `LittleLemonDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `LittleLemonDB`;
-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bookings` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `BookingDate` date NOT NULL,
  `TableNumber` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `customerid_fk_idx` (`CustomerID`),
  KEY `tablenumber_fk_idx` (`TableNumber`),
  CONSTRAINT `customerid_fk` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tablenumber_fk` FOREIGN KEY (`TableNumber`) REFERENCES `Staff` (`TableNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,'2022-10-10',5,1),(2,'2022-11-12',3,3),(3,'2022-10-11',2,2),(4,'2022-10-13',2,1);
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Andres Chang','555-555-0001','andres@metal23.com','New York','New York','USA'),(2,'Maria Rodriguez','555-555-0002','maria@email.com','Los Angeles','California','USA'),(3,'John Doe','555-555-0003','john@example.com','Chicago','Illinois','USA'),(4,'Michael Smith','555-555-0004','michael@example.com','Miami','Florida','USA'),(5,'Sarah Johnson','555-555-0005','sarah@email.com','Houston','Texas','USA'),(6,'Emily Davis','555-555-0006','emily@example.com','San Francisco','California','USA'),(7,'Robert Wilson','555-555-0007','robert@email.com','Phoenix','Arizona','USA'),(8,'Laura Martinez','555-555-0008','laura@email.com','Dallas','Texas','USA'),(9,'William Johnson','555-555-0009','william@email.com','Denver','Colorado','USA'),(10,'Christopher Lee','555-555-0010','chris@email.com','Seattle','Washington','USA'),(11,'Daniel Thompson','555-555-1001','daniel@g.com','Atlanta','Georgia','USA'),(12,'Jennifer Adams','555-555-1002','jennifer@email.com','Boston','Massachusetts','USA'),(13,'Amanda Harris','555-555-1003','amanda@email.com','Philadelphia','Pennsylvania','USA'),(14,'Jonathan Davis','555-555-1004','jonathan@email.com','Detroit','Michigan','USA'),(15,'Olivia Clark','555-555-1005','oliviac@email.com','San Diego','California','USA'),(16,'Matthew Turner','555-555-1006','matthew@email.com','Seattle','Washington','USA'),(17,'Sophia White','555-555-1007','sophia@email.com','Miami','Florida','USA'),(18,'Ethan King','555-555-1008','ethan@email.com','Dallas','Texas','USA'),(19,'Sophie Baker','555-555-1011','sophie@email.com','New Orleans','Louisiana','USA'),(20,'James Miller','555-555-1012','james@vvvemail.com','San Francisco','California','USA'),(21,'Olivia Garcia','555-555-1013','olivia@email.com','Phoenix','Arizona','USA'),(22,'Daniel Harris','555-555-1014','daniel@email.com','Portland','Oregon','USA'),(23,'Ava Turner','555-555-1015','ava@email.com','Dallas','Texas','USA'),(24,'Liam Jackson','555-555-1016','liam@email.com','Seattle','Washington','USA'),(25,'Sophia Wilson','555-555-1017','sophia@email.com','Denver','Colorado','USA'),(26,'Ella Smith','555-555-1018','ella@email.com','Chicago','Illinois','USA'),(27,'William Brown','555-555-1019','williambrown@email.com','Houston','Texas','USA'),(28,'Mia Rodriguez','555-555-1020','mia@email.com','Los Angeles','California','USA'),(30,'Natalie Turner','555-555-1023','natalie@email.com','New Orleans','Louisiana','USA'),(31,'Ethan Martinez','555-555-1024','ethanm@email.com','New Orleans','Louisiana','USA'),(32,'Marta Lopez','555-555-2001','marta@email.com','New Orleans','Louisiana','USA'),(33,'Alejandro Rodriguez','555-555-2002','alejandro@email.com','New Orleans','Louisiana','USA'),(34,'Lucia Fernandez','555-555-2003','lucia@email.com','New York','New York','USA'),(35,'Diego Garcia','555-555-2004','diego@email.com','Houston','Texas','USA'),(36,'Carmen Martinez','555-555-2005','carmen@email.com','Chicago','Illinois','USA'),(37,'Manuel Sanchez','555-555-2006','manuel@email.com','San Francisco','California','USA'),(38,'Elena Perez','555-555-2007','elena@email.com','Dallas','Texas','USA'),(39,'Javier Gonzalez','555-555-2008','javier@email.com','Phoenix','Arizona','USA'),(40,'Isabel Ramirez','555-555-2009','isabel@email.com','Miami','Florida','USA'),(41,'Sergio Torres','555-555-2010','sergio@email.com','Los Angeles','California','USA'),(42,'Ji-hyun Kim','555-555-3001','jihyun@email.com','Los Angeles','California','USA'),(43,'Min-jun Park','555-555-3002','minjun@email.com','New York','New York','USA'),(44,'Eun-ji Lee','555-555-3003','eunji@email.com','Chicago','Illinois','USA'),(45,'Sang-hoon Choi','555-555-3004','sanghoon@email.com','San Francisco','California','USA'),(46,'Hae-won Kang','555-555-3005','haewon@email.com','Houston','Texas','USA'),(47,'Yoon-hee Park','555-555-3006','yoonhee@email.com','Miami','Florida','USA'),(48,'Joon-ho Kim','555-555-3007','joonho@email.com','Phoenix','Arizona','USA'),(49,'Seo-yeon Lee','555-555-3008','seoyeon@email.com','Dallas','Texas','USA'),(50,'Min-seok Cho','555-555-3009','minseok@email.com','Seattle','Washington','USA'),(51,'Ji-eun Kim','555-555-3010','jieun@email.com','Denver','Colorado','USA'),(52,'Claire Dubois','555-555-4001','claire@email.com','New Orleans','Louisiana','USA'),(53,'Pierre Leclerc','555-555-4002','pierre@email.com','New Orleans','Louisiana','USA'),(54,'Isabelle Dupont','555-555-4003','isabelle@email.com','New Orleans','Louisiana','USA'),(55,'François Martin','555-555-4004','francois@email.com','New Orleans','Louisiana','USA'),(56,'Amélie Renaud','555-555-4005','amelie@email.com','New Orleans','Louisiana','USA'),(57,'Louis Dupuis','555-555-4006','louis@email.com','New Orleans','Louisiana','USA'),(58,'Sophie Lambert','555-555-4007','sophie@v.com','New Orleans','Louisiana','USA'),(59,'Luc Dubois','555-555-4008','luc@email.com','New Orleans','Louisiana','USA'),(60,'Marie Leclerc','555-555-4009','marie@email.com','New Orleans','Louisiana','USA'),(61,'Antoine Blanc','555-555-4010','antoine@email.com','New Orleans','Louisiana','USA'),(62,'Renata Patel','555-555-5001','renata@email.com','Boulder','Colorado','USA'),(63,'Carlos Kim','555-555-5002','carlos@email.com','Houston','Texas','USA'),(64,'Sofia Nakamura','555-555-5003','sofia@email.com','San Francisco','California','USA'),(65,'Fabio Nguyen','555-555-5004','fabio@email.com','Los Angeles','California','USA'),(66,'Michael Johnson','555-555-5005','michael@email.com','New Orleans','Louisiana','USA'),(67,'Emily Thomas','555-555-5006','emily@email.com','New Orleans','Louisiana','USA'),(68,'James Brown','555-555-5007','james@email.com','New Orleans','Louisiana','USA'),(69,'Susan White','555-555-5008','susan@email.com','New Orleans','Louisiana','USA'),(70,'Robert Johnson','555-555-5009','robertjohnson@email.com','New Orleans','Louisiana','USA'),(71,'Lisa Anderson','555-555-5010','lisa@email.com','New Orleans','Louisiana','USA'),(72,'Andrew Brown','555-555-5011','andrew@email.com','New Orleans','Louisiana','USA'),(73,'Karen Wilson','555-555-5012','karen@email.com','New Orleans','Louisiana','USA'),(74,'Mark Davis','555-555-5013','mark@email.com','New Orleans','Louisiana','USA');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Desserts`
--

DROP TABLE IF EXISTS `Desserts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Desserts` (
  `DessertID` int NOT NULL,
  `DessertName` varchar(45) NOT NULL,
  PRIMARY KEY (`DessertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Desserts`
--

LOCK TABLES `Desserts` WRITE;
/*!40000 ALTER TABLE `Desserts` DISABLE KEYS */;
INSERT INTO `Desserts` VALUES (1,'IceCream'),(2,'Tiramisu'),(3,'Cheesecake'),(4,'Apple Pie');
/*!40000 ALTER TABLE `Desserts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drinks`
--

DROP TABLE IF EXISTS `Drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Drinks` (
  `DrinkID` int NOT NULL,
  `DrinkName` varchar(45) NOT NULL,
  PRIMARY KEY (`DrinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drinks`
--

LOCK TABLES `Drinks` WRITE;
/*!40000 ALTER TABLE `Drinks` DISABLE KEYS */;
INSERT INTO `Drinks` VALUES (1,'Water'),(2,'Barolo Red Wine'),(3,'Merlot'),(4,'Lemonade');
/*!40000 ALTER TABLE `Drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuItems`
--

DROP TABLE IF EXISTS `MenuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItems` (
  `MenuName` varchar(45) NOT NULL,
  `StarterName` varchar(45) NOT NULL,
  `CourseName` varchar(45) NOT NULL,
  `Sides` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MenuName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItems`
--

LOCK TABLES `MenuItems` WRITE;
/*!40000 ALTER TABLE `MenuItems` DISABLE KEYS */;
INSERT INTO `MenuItems` VALUES ('Alahamaha','Falafel','Kebab','Tabouleh'),('Athenea','Tzatziki','Gyros','Hummus'),('AztecNoon','Calamari','Tacos','Onion Rings'),('Cappone','Caprese Salad','Pizza','Garlic Knots'),('Fuji','Spring Rolls','Sushi','Edamame'),('GreekDay','Olives','Greek Salad','Tapas'),('Harakara','Hummus','Sushi','Fries'),('Mafia33','Bruschetta','Pasta','Salad'),('Maya3','Guacamole','Tacos','Rice and Beans'),('SeattleWink','Shrimp Cocktail','Steak','Smashed Potatoes'),('Yosemite','Mozzarella','Steak','Coleslaw');
/*!40000 ALTER TABLE `MenuItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menus`
--

DROP TABLE IF EXISTS `Menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Menus` (
  `MenuID` int NOT NULL,
  `MenuName` varchar(45) NOT NULL,
  `Cuisine` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `menuname_fk_idx` (`MenuName`),
  CONSTRAINT `menuname_fk` FOREIGN KEY (`MenuName`) REFERENCES `MenuItems` (`MenuName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menus`
--

LOCK TABLES `Menus` WRITE;
/*!40000 ALTER TABLE `Menus` DISABLE KEYS */;
INSERT INTO `Menus` VALUES (1,'GreekDay','Greek'),(2,'Harakara','Japanese'),(3,'Mafia33','Italian'),(4,'AztecNoon','Mexican'),(5,'Yosemite','American'),(6,'Alahamaha','Middle Eastern'),(7,'Athenea','Greek'),(8,'Fuji','Japanese'),(9,'Cappone','Italian'),(10,'Maya3','Mexican'),(11,'SeattleWink','American');
/*!40000 ALTER TABLE `Menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `MenuID` int NOT NULL,
  `DessertID` int DEFAULT NULL,
  `DrinkID` int DEFAULT NULL,
  `Quantity` int NOT NULL,
  `CustomerID` int NOT NULL,
  `TotalCost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `menuid_fk_idx` (`MenuID`),
  KEY `orders_fk_idx` (`CustomerID`),
  KEY `drinkid_fk_idx` (`DrinkID`),
  KEY `dessert_id_idx` (`DessertID`),
  CONSTRAINT `dessert_id` FOREIGN KEY (`DessertID`) REFERENCES `Desserts` (`DessertID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `drinkid_fk` FOREIGN KEY (`DrinkID`) REFERENCES `Drinks` (`DrinkID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menuid_fk` FOREIGN KEY (`MenuID`) REFERENCES `Menus` (`MenuID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_fk` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,1,1,3,1,4,100.80),(2,2,4,4,2,5,341.60),(3,3,3,3,1,6,72.80),(4,4,3,3,1,8,93.80),(5,5,4,3,4,2,291.20),(6,6,1,1,1,19,151.20),(7,7,2,2,1,18,65.80),(8,8,4,3,1,20,109.20),(9,9,3,2,3,21,235.20),(10,10,2,2,1,39,140.00),(11,11,1,3,1,11,169.40);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `OrdersView`
--

DROP TABLE IF EXISTS `OrdersView`;
/*!50001 DROP VIEW IF EXISTS `OrdersView`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrdersView` AS SELECT 
 1 AS `OrderID`,
 1 AS `Quantity`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff` (
  `TableNumber` int NOT NULL,
  `EmployeeID` int NOT NULL,
  `EmployeeName` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`TableNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,1,'John Smith','Chief Waiter',3500.00),(2,2,'Ava Wilson','Waiter',1800.00),(3,3,'Olivia Smith','Waiter',1400.00),(4,4,'Emma Brown','Waiter',1100.00),(5,5,'Rodrigo Guedes','Waiter',1500.00),(6,6,'Slavik Kinski','Waiter',2000.00);
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'LittleLemonDB'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddValidBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`%` PROCEDURE `AddValidBooking`(IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
	DECLARE msg VARCHAR(100);
	START TRANSACTION;
	INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) VALUES (booking_date, table_number, customer_id);

	IF (SELECT COUNT(*) FROM Bookings WHERE BookingDate = booking_date AND TableNumber = table_number) > 1 THEN
		SET msg = CONCAT('Table ',table_number,' is already booked - booking cancelled');
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;

	SELECT * FROM Bookings; 
	SELECT msg AS "Booking status";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`%` PROCEDURE `CancelOrder`(IN o_id INT)
BEGIN
DECLARE msg VARCHAR(100);
DELETE FROM Orders WHERE OrderID=o_id;
SET msg = CONCAT('Order ',o_id, ' is cancelled');
SELECT msg AS Confirmation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`%` PROCEDURE `CheckBooking`(IN book_date DATE, IN table_num INT)
BEGIN
DECLARE msg VARCHAR(100);
IF (SELECT COUNT(*) FROM Bookings WHERE BookingDate = book_date AND TableNumber = table_num) > 0 THEN
SET msg = CONCAT('Table ', table_num, ' is already booked');
ELSE
SET msg = CONCAT('Table ', table_num, ' is free! Booking set.');
END IF;

SELECT msg AS "Booking status"; -- Return the message as "Booking status"
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaxQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN SELECT MAX(Quantity) AS 'Max Quantity in Order' FROM Orders;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `OrdersView`
--

/*!50001 DROP VIEW IF EXISTS `OrdersView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrdersView` AS select `Orders`.`OrderID` AS `OrderID`,`Orders`.`Quantity` AS `Quantity`,`Orders`.`TotalCost` AS `Cost` from `Orders` where (`Orders`.`Quantity` > 2) */;
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

-- Dump completed on 2023-09-24 21:42:01
