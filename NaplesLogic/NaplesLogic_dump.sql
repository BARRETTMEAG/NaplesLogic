-- MySQL dump 10.13  Distrib 9.3.0, for macos15.2 (arm64)
--
-- Host: localhost    Database: NaplesLogic
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `Advertisement`
--

DROP TABLE IF EXISTS `Advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Advertisement` (
  `AdID` int unsigned NOT NULL,
  `StoreID` int unsigned NOT NULL,
  `Platform` varchar(30) DEFAULT NULL,
  `Content` varchar(360) DEFAULT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `TargetAudience` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AdID`),
  KEY `StoreID` (`StoreID`),
  CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`StoreID`) REFERENCES `Store` (`StoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Advertisement`
--

LOCK TABLES `Advertisement` WRITE;
/*!40000 ALTER TABLE `Advertisement` DISABLE KEYS */;
INSERT INTO `Advertisement` VALUES (1,1,'Facebook','Summer specials on pizza!','2025-07-01','2025-08-01','Young adults'),(2,2,'Instagram','Fresh salads now available!','2025-07-05','2025-08-05','Health conscious'),(3,3,'Instagram','The best Italian in new york','2025-08-01','2025-09-01','Italian Lovers'),(4,4,'Twitter','The best Italian in new california','2025-08-01','2025-09-01','Italian Lovers'),(222,368,'Social Media','Video','2020-05-05','2021-05-05','Boomers'),(232,358,'TV','Video','2020-06-15','2022-05-05','GenZ');
/*!40000 ALTER TABLE `Advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Billing`
--

DROP TABLE IF EXISTS `Billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Billing` (
  `BillingID` int unsigned NOT NULL,
  `OrderID` int unsigned NOT NULL,
  `PaymentID` int unsigned NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `Tax` decimal(6,2) NOT NULL,
  `Tip` decimal(6,2) DEFAULT NULL,
  `TotalAmount` decimal(11,2) NOT NULL,
  `BillingDate` date NOT NULL,
  PRIMARY KEY (`BillingID`),
  KEY `OrderID` (`OrderID`),
  KEY `PaymentID` (`PaymentID`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `CustomerOrder` (`OrderID`),
  CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Billing`
--

LOCK TABLES `Billing` WRITE;
/*!40000 ALTER TABLE `Billing` DISABLE KEYS */;
INSERT INTO `Billing` VALUES (1,1,1,23.00,2.99,0.00,25.99,'2025-07-05'),(2,2,2,11.00,1.50,0.00,12.50,'2025-07-06'),(3,3,3,7.99,0.24,17.00,25.23,'2025-08-02'),(4,4,4,155.88,4.68,89.69,250.25,'2025-08-02'),(5,5,5,23.98,0.72,15.55,40.25,'2025-08-02'),(6,6,6,7.99,0.24,11.00,19.23,'2025-08-02'),(7,7,7,43.96,1.32,5.00,50.28,'2025-08-02'),(8,8,8,56.97,1.71,17.00,75.68,'2025-08-02'),(9,9,9,19.98,0.60,5.00,25.58,'2025-08-02'),(10,10,10,10.99,0.33,4.61,15.93,'2025-08-02'),(11,11,11,227.88,6.84,22.48,257.20,'2025-08-02'),(12,12,12,143.91,4.32,11.77,160.00,'2025-08-02'),(13,13,13,12.99,0.39,3.00,16.38,'2025-08-02'),(14,14,14,7.99,0.24,2.02,10.26,'2025-08-02'),(15,15,15,11.99,0.36,0.00,12.35,'2025-08-02'),(16,16,16,39.97,1.20,9.09,12.35,'2025-08-02'),(17,17,17,39.97,1.20,9.09,12.35,'2025-08-02'),(1000,500,129,20.50,2.50,2.00,25.00,'2019-01-01'),(2000,510,128,20.50,2.50,2.00,25.00,'2019-01-01');
/*!40000 ALTER TABLE `Billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int unsigned NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `PhoneNumber` char(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'John','Deer','1234567890','john@example.com','123 Elm Street'),(2,'Jane','Smiths','0987654321','jane@example.com','456 Oak Avenue'),(3,'Loki','Laufeyson','801892701','trickery@gmail.com','1234 Asgardian ST'),(4,'Thor','Odinson','801982701','thunder@gmail.com','1234 Asgardian ST'),(5,'Peter','Parker','801892711','friendlyNeighbor@gmail.com','1234 Wilson Ave'),(6,'Bruce','Banner','801892721','rage@gmail.com','1234 Green Door'),(7,'Bruce','Wayne','801892731','money@gmail.com','1234 Gotham'),(8,'Balfog','Stormbringer','801893701','frost@gmail.com','1234 Plaguelands'),(9,'Sun','Mistnight','801894701','celestial@juno.com','1234 Equestria'),(10,'Abra','Cadabra','801895701','magic@juno.com','1234 Kanto ST'),(11,'Ugradsh','Dragonson','801992701','chaos@gmail.com','1234 Beelzebub Ave'),(12,'Kelly','Churchbearer','801192701','sheep@gmail.com','1234 Not Britan ST'),(13,'Heather','Henderson','801292701','tired@gmail.com','1234 Artist St'),(14,'Andy','Adderson','801812701','inventive@gmail.com','1234 Toy ST'),(15,'Jim','Cartborn','801822701','argumentive@gmail.com','1234 Televsion ST'),(467,'Kyle','Jameson','1234567890','kj@fakemail.com','phoneyBaloney Street'),(487,'Brian','Michaels','1234567809','BrianM@fakemail.com','phoneyMahoney Boulevard');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerOrder`
--

DROP TABLE IF EXISTS `CustomerOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerOrder` (
  `OrderID` int unsigned NOT NULL,
  `CustomerID` int unsigned NOT NULL,
  `PaymentID` int unsigned NOT NULL,
  `OrderDateTime` datetime NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `PaymentID` (`PaymentID`),
  CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `customerorder_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerOrder`
--

LOCK TABLES `CustomerOrder` WRITE;
/*!40000 ALTER TABLE `CustomerOrder` DISABLE KEYS */;
INSERT INTO `CustomerOrder` VALUES (1,1,1,'2025-07-05 13:25:00',25.99),(2,2,2,'2025-07-06 13:55:00',12.50),(3,3,3,'2025-08-02 21:10:00',25.23),(4,4,4,'2025-08-02 21:13:00',250.25),(5,5,5,'2025-08-02 21:17:13',40.25),(6,6,6,'2025-08-02 21:19:24',19.23),(7,7,7,'2025-08-02 21:10:00',50.28),(8,8,8,'2025-08-02 21:20:00',75.68),(9,9,9,'2025-08-02 21:21:34',25.58),(10,10,10,'2025-08-02 21:22:32',15.93),(11,11,11,'2025-08-02 21:23:44',28.54),(12,12,12,'2025-08-02 21:26:46',24.78),(13,13,13,'2025-08-02 21:17:00',12.23),(14,14,14,'2025-08-02 21:19:02',10.26),(15,15,15,'2025-08-02 21:51:30',12.23),(16,3,16,'2025-08-02 21:51:30',50.26),(17,4,17,'2025-08-02 21:51:30',50.26),(500,467,129,'2019-02-02 15:15:10',15.99),(510,487,128,'2020-12-22 16:18:30',25.99);
/*!40000 ALTER TABLE `CustomerOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DinerTable`
--

DROP TABLE IF EXISTS `DinerTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DinerTable` (
  `TableID` int unsigned NOT NULL,
  `TableNumber` tinyint unsigned DEFAULT NULL,
  `Capacity` tinyint unsigned DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DinerTable`
--

LOCK TABLES `DinerTable` WRITE;
/*!40000 ALTER TABLE `DinerTable` DISABLE KEYS */;
INSERT INTO `DinerTable` VALUES (1,10,4,'Window side'),(2,11,6,'Center Hall'),(3,1,4,'section 1 first window'),(4,2,12,'party table 1'),(5,3,4,'section 1 second window'),(6,4,4,'section 2 first window'),(7,5,4,'section 1 corner booth'),(8,6,4,'section 2 central table'),(9,7,4,'section 3 first window'),(10,8,4,'section 4 first window'),(11,9,4,'section 5 first window'),(12,12,12,'party table 2'),(13,13,12,'party table 3'),(14,14,4,'section 5 second window'),(15,15,6,'section 5 corner booth'),(963,15,4,'Antonio\'s'),(966,17,3,'Antonio\'s');
/*!40000 ALTER TABLE `DinerTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `InventoryID` int unsigned NOT NULL,
  `ItemName` varchar(50) DEFAULT NULL,
  `QuantityInStock` int unsigned DEFAULT NULL,
  `Unit` smallint unsigned DEFAULT NULL,
  `ReorderThreshold` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`InventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (1,'Tomatoes',100,1,'50'),(2,'Lettuce',50,1,'20'),(3,'linguini',75,1,'50'),(4,'top round',50,1,'15'),(5,'pepper',200,1,'100'),(6,'carrots',200,1,'120'),(7,'onions',200,1,'120'),(8,'celery',200,1,'120'),(9,'chicken breast',40,1,'75'),(10,'garlic',150,1,'60'),(11,'shrimp',120,1,'40'),(12,'italian sausage',32,1,'60'),(75,'Gnocchi',26,119,'10'),(76,'Potato',23,109,'At 0');
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Management`
--

DROP TABLE IF EXISTS `Management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Management` (
  `ManagerID` int unsigned NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `PhoneNumber` char(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Management`
--

LOCK TABLES `Management` WRITE;
/*!40000 ALTER TABLE `Management` DISABLE KEYS */;
INSERT INTO `Management` VALUES (1,'Mary','Jones','5551112222','mary.j@example.com'),(2,'Steven','Willis','5553334444','steven.w@example.com'),(3,'Kurt','Lenon','801778901','artist@bang.com'),(4,'John','cobain','8016414377','bucky@juno.com'),(235,'Michael','Smith','7123890456','ms@fakemail.com'),(245,'Charles','Dixon','1237890456','cd@fakemail.com');
/*!40000 ALTER TABLE `Management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuItem`
--

DROP TABLE IF EXISTS `MenuItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItem` (
  `MenuItemID` tinyint unsigned NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `ItemDescription` varchar(180) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  `category` varchar(30) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`MenuItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItem`
--

LOCK TABLES `MenuItem` WRITE;
/*!40000 ALTER TABLE `MenuItem` DISABLE KEYS */;
INSERT INTO `MenuItem` VALUES (1,'Margherita Pizza','Classic cheese and tomato pizza',9.99,'Pizza',1),(2,'Caesar Salad','Romaine lettuce with Caesar dressing',6.50,'Salad',1),(3,'penne alla vodka','A very delicious italian dish made using fresh pasta and a tomato based sauce.',7.99,'pasta',1),(4,'shrimp linguini','A simple dish made using a linguini noodles and shrimp, all covered in a white sauce',12.99,'pasta',1),(5,'chicken alfredo','A classic that is sure to please',10.99,'pasta',0),(6,'zuppa soup','A unique soup that many will',11.99,'soup',0),(7,'chicken noodle soup','A dish made to warm the soul',7.99,'soup',1),(8,'beef stew','high quality beef slow cooked in the holy trinity of carrots, celery, and onions',15.99,'stew',1),(9,'away from home','pick one pasta dish and one soup with your choice between breadstick and a salad',18.99,'combo',1),(10,'chicken tenders','Handbreaded breast meat which is double fried for the ultimate crunch',9.99,'entree',1),(11,'spaghetti&meatballs','made with high quality spaghetti and ground in house beef.',10.99,'pasta',1),(89,'Cacio e pepe','Spaghetti with a pepper and cheese sauce',14.99,'Dinner',1),(90,'Fettuccine Alfredo','Pasta with a creamy cheese sauce',12.99,'Dinner',1);
/*!40000 ALTER TABLE `MenuItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OnlineOrder`
--

DROP TABLE IF EXISTS `OnlineOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OnlineOrder` (
  `OnlineOrderID` int unsigned NOT NULL,
  `OrderID` int unsigned NOT NULL,
  `OrderType` varchar(10) NOT NULL,
  `DeliveryAddress` varchar(50) NOT NULL,
  `ScheduledTime` datetime DEFAULT NULL,
  `OrderStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`OnlineOrderID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `onlineorder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `CustomerOrder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OnlineOrder`
--

LOCK TABLES `OnlineOrder` WRITE;
/*!40000 ALTER TABLE `OnlineOrder` DISABLE KEYS */;
INSERT INTO `OnlineOrder` VALUES (1,1,'Delivery','789 Pine Street','2025-07-05 14:00:00','Pending'),(2,2,'Pickup','N/A',NULL,'Completed'),(3,16,'pickup','1234 Asgardian ST','2025-08-12 12:30:00','pending'),(4,17,'delivery','1234 Asgardian ST','2025-08-12 12:30:00','canceled'),(678,500,'Dinner','phoneyBaloney Street','2019-01-01 23:11:10','delivered'),(679,510,'Dinner','phoneyBaloney Street','2019-01-01 12:12:30','canceled');
/*!40000 ALTER TABLE `OnlineOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `OrderItemID` int unsigned NOT NULL,
  `OrderID` int unsigned NOT NULL,
  `MenuItemID` tinyint unsigned DEFAULT NULL,
  `Quantity` tinyint unsigned NOT NULL,
  `ItemPrice` decimal(6,2) NOT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`),
  KEY `MenuItemID` (`MenuItemID`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `CustomerOrder` (`OrderID`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `MenuItem` (`MenuItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
INSERT INTO `OrderItem` VALUES (1,1,1,2,9.99),(2,2,2,1,6.50),(3,3,3,1,7.99),(4,4,4,12,12.99),(5,5,6,2,11.99),(6,6,7,1,7.99),(7,7,5,4,10.99),(8,8,9,3,18.99),(9,9,10,2,9.99),(10,10,11,1,10.99),(11,11,9,12,18.99),(12,12,8,9,15.99),(13,13,4,1,12.99),(14,14,3,1,7.99),(15,15,6,1,11.99),(16,16,8,2,15.99),(17,16,3,1,7.99),(18,17,8,2,15.99),(19,17,3,1,7.99),(987,500,89,1,12.99),(988,510,90,2,24.99);
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment` (
  `PaymentID` int unsigned NOT NULL,
  `PaymentMethod` varchar(10) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentDateTime` datetime NOT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1,'Credit',25.99,'2025-07-05 13:30:00'),(2,'Cash',12.50,'2025-07-06 14:00:00'),(3,'cash',25.23,'2025-08-02 22:00:00'),(4,'credit',250.25,'2025-08-02 22:03:00'),(5,'check',40.25,'2025-08-02 22:07:13'),(6,'credit',19.23,'2025-08-02 22:09:24'),(7,'cash',50.28,'2025-08-02 22:00:00'),(8,'check',75.68,'2025-08-02 22:10:00'),(9,'cash',25.58,'2025-08-02 22:11:34'),(10,'credit',15.93,'2025-08-02 22:12:32'),(11,'credit',257.20,'2025-08-02 22:13:44'),(12,'check',160.00,'2025-08-02 22:16:46'),(13,'cash',16.38,'2025-08-02 22:17:00'),(14,'check',10.26,'2025-08-02 22:19:02'),(15,'cash',12.35,'2025-08-02 22:51:30'),(16,'credit',50.26,'2025-08-12 11:19:02'),(17,'credit',50.26,'2025-08-12 11:21:30'),(128,'Credit',34.50,'2018-11-12 08:28:00'),(129,'Cash',44.95,'2019-01-01 11:29:30');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservation` (
  `ReservationID` int unsigned NOT NULL,
  `CustomerID` int unsigned NOT NULL,
  `TableID` int unsigned NOT NULL,
  `ReservationDateTime` datetime DEFAULT NULL,
  `PartySize` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `TableID` (`TableID`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`TableID`) REFERENCES `DinerTable` (`TableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES (1,1,1,'2025-08-01 19:00:00',3),(2,2,2,'2025-08-02 20:00:00',5),(3,3,14,'2025-08-02 21:00:00',1),(4,4,4,'2025-08-02 21:03:00',12),(5,5,15,'2025-08-02 21:07:13',2),(6,6,5,'2025-08-02 21:09:24',1),(7,7,6,'2025-08-02 21:00:00',4),(8,8,7,'2025-08-02 21:10:00',3),(9,9,8,'2025-08-02 21:11:34',2),(10,10,9,'2025-08-02 21:12:32',1),(11,11,10,'2025-08-02 21:13:44',12),(12,12,11,'2025-08-02 21:16:46',9),(13,13,12,'2025-08-02 21:17:00',1),(14,14,13,'2025-08-02 21:19:02',1),(15,15,3,'2025-08-02 21:51:30',1),(28,467,963,'2020-06-06 15:30:00',6),(29,487,966,'2020-06-06 12:00:00',6);
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `ReviewID` tinyint unsigned NOT NULL,
  `CustomerID` int unsigned NOT NULL,
  `MenuItemID` tinyint unsigned NOT NULL,
  `Rating` decimal(2,1) NOT NULL,
  `ReviewComment` varchar(180) DEFAULT NULL,
  `ReviewDate` date NOT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `MenuItemID` (`MenuItemID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `MenuItem` (`MenuItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,1,1,4.5,'Delicious and Fresh!','2025-07-01'),(2,2,2,3.8,'Good but could be fresher','2025-07-02'),(3,3,3,4.5,'authentic penne alla vodka','2025-08-02'),(4,4,4,2.0,'shrimp was not well prepared','2025-08-02'),(5,5,6,3.0,'Unique flavor but not my style','2025-08-02'),(6,6,7,5.0,'really did warm the soul','2025-08-02'),(7,7,5,3.0,'it was okay','2025-08-03'),(8,8,9,4.5,'I got the shrimp linguini, zupa soup, and breadsticks, and each one of them was great.','2025-08-03'),(9,9,10,3.5,'the chicken tenders were a bit dry but the crunch was incredible','2025-08-03'),(10,10,11,4.0,'simple dish but tasted great','2025-08-03'),(11,11,9,4.0,'Fantastic deal with the away from home meal','2025-08-04'),(12,12,8,4.0,'pricey but the flavor was very rich','2025-08-04'),(13,13,4,3.0,'the shrimp linguini was just okay but the service was great','2025-08-04'),(14,14,3,1.0,'got food poisoning after eating here','2025-08-07'),(15,15,6,2.0,'not very good','2025-08-07'),(120,467,89,4.1,'It\'s good','2021-07-18'),(121,487,90,2.6,'It\'s not good','2022-11-08');
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShiftSchedule`
--

DROP TABLE IF EXISTS `ShiftSchedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ShiftSchedule` (
  `ScheduleID` int unsigned NOT NULL,
  `ShiftDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time DEFAULT NULL,
  PRIMARY KEY (`ScheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShiftSchedule`
--

LOCK TABLES `ShiftSchedule` WRITE;
/*!40000 ALTER TABLE `ShiftSchedule` DISABLE KEYS */;
INSERT INTO `ShiftSchedule` VALUES (1,'2025-07-10','09:00:00','17:00:00'),(2,'2025-07-11','13:00:00','21:00:00'),(3,'2025-08-02','09:00:00','13:00:00'),(4,'2025-08-02','13:00:00','20:00:00'),(5,'2025-08-02','08:00:00','13:00:00'),(6,'2025-08-02','13:00:00','20:00:00'),(555,'2022-08-08','12:34:22','15:00:00'),(565,'2022-07-08','12:34:22','15:00:00');
/*!40000 ALTER TABLE `ShiftSchedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff` (
  `StaffID` int unsigned NOT NULL,
  `ScheduleID` int unsigned NOT NULL,
  `StoreID` int unsigned NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `EmployeeRole` varchar(20) DEFAULT NULL,
  `PhoneNumber` char(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StaffID`),
  KEY `ScheduleID` (`ScheduleID`),
  KEY `StoreID` (`StoreID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`ScheduleID`) REFERENCES `ShiftSchedule` (`ScheduleID`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`StoreID`) REFERENCES `Store` (`StoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,1,1,'Alice','Brown','Chef','5556667777','alice.brown@example.com'),(2,2,2,'Billy','White','Waiter','5558889999','billy.white@example.com'),(3,3,3,'Luigi','Mario','Bartender','8013864833','Innovator@gmail.com'),(4,3,3,'Ludwig','Herber','Bus Boy','8013864834','Noliscence@gmail.com'),(5,3,3,'John','Server','Waiter','8013864835','Server@gmail.com'),(6,3,3,'Nota','Molerat','Waiter','8013864836','RealPerson@gmail.com'),(7,3,3,'Carlos','Gartner','chef','8013864837','Gartner@gmail.com'),(8,4,3,'Mario','Luigi','Bartender','8013864838','NotInnovative@gmail.com'),(9,4,3,'Herber','Ludwig','Bus Boy','8013864839','Yesliscence@gmail.com'),(10,4,3,'Server','John','Waiter','8013864840','NotServer@gmail.com'),(11,4,3,'Isa','Molerat','Waiter','8013864841','FakePerson@gmail.com'),(12,4,3,'Gartner','Carlos','chef','8013864842','Carlos@gmail.com'),(13,5,4,'Waluigi','Wario','Bartender','8013864843','Innovator@gmail.com'),(14,5,4,'Gregory','House','Bus Boy','8013864844','NoThanks@gmail.com'),(15,5,4,'Jane','Ruler','Waiter','8013864845','notruler@gmail.com'),(16,5,4,'Nota','Person','Waiter','801386484','Realmolerat@gmail.com'),(17,5,4,'Hans','Gartner','chef','8013864847','Hans@gmail.com'),(18,6,4,'Wario','Waluigi','Bartender','8013864848','Innovator@gmail.com'),(19,6,4,'House','Gregory','Bus Boy','8013864849','Thanks@gmail.com'),(20,6,4,'Ruler','Jane','Waiter','8013864850','Ruler@gmail.com'),(21,6,4,'Isa','Person','Waiter','8013864851','FakemoleRatn@gmail.com'),(22,6,4,'Hans','Garcia','chef','8013864852','Garcia@gmail.com'),(101,555,368,'Bob','Richards','Clerk','2468135790','bobbyrick@fakemail.com'),(111,565,358,'Richard','Roberts','Mechanic','1357946820','rickyrob@fakemail.com');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Store` (
  `StoreID` int unsigned NOT NULL,
  `ManagerID` int unsigned NOT NULL,
  `StoreName` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `PhoneNumber` char(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `OpeningHours` time DEFAULT NULL,
  PRIMARY KEY (`StoreID`),
  KEY `ManagerID` (`ManagerID`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`ManagerID`) REFERENCES `Management` (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES (1,1,'Downtown Naples','Downtown','5552223333','downtown@naples.com','09:00:00'),(2,2,'Uptown Naples','Uptown','5554445555','uptown@naples.com','10:00:00'),(3,3,'New Yorks Napals','New York 54 Street','8011112222','NewyorkNapals@gmail.com','09:00:00'),(4,4,'California Napals','Route 58','8011112223','CaliforniaNapals@gmail.com','09:00:00'),(358,235,'Mike\'s Bikes','Dallas','1537924680','mikesbikes@fakemail.com','09:00:00'),(368,245,'Chuck\'s','Dallas','1357924680','chucks@fakemail.com','09:00:00');
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `SupplierID` int unsigned NOT NULL,
  `SupplierName` varchar(30) DEFAULT NULL,
  `Contactname` varchar(30) DEFAULT NULL,
  `Phone` char(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'Fresh Farms','Alice Greens','5551234567','alice@freshfarms.com'),(2,'Ocean Supplies','Bobbie Blues','5559876543','bobbie@oceansupplies.com'),(3,'Tonys Delivery','Tony Stark','8012836437','heavyweapons@gmail.com'),(4,'Joe Biten','Sleepy Joe','8017773782','mintchoclatechip@gmail.com'),(30,'ACME Restaurant','Wil.E. Mann','9871234560','acmeMann@fakemail.com'),(39,'Supplier Guy','Jean Guye','0987654321','supplierguye@fakemail.com');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupplyOrder`
--

DROP TABLE IF EXISTS `SupplyOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SupplyOrder` (
  `SupplyOrderID` int unsigned NOT NULL,
  `SupplierID` int unsigned NOT NULL,
  `InventoryID` int unsigned NOT NULL,
  `QuantityOrdered` smallint unsigned NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`SupplyOrderID`),
  KEY `SupplierID` (`SupplierID`),
  KEY `InventoryID` (`InventoryID`),
  CONSTRAINT `supplyorder_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `Supplier` (`SupplierID`),
  CONSTRAINT `supplyorder_ibfk_2` FOREIGN KEY (`InventoryID`) REFERENCES `Inventory` (`InventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupplyOrder`
--

LOCK TABLES `SupplyOrder` WRITE;
/*!40000 ALTER TABLE `SupplyOrder` DISABLE KEYS */;
INSERT INTO `SupplyOrder` VALUES (1,1,1,30,'2025-07-01','2025-07-03'),(2,2,2,20,'2025-07-02','2025-07-04'),(3,3,9,100,'2025-08-28','2025-09-01'),(4,4,12,100,'2025-08-28','2025-09-01'),(880,30,75,15,'2025-11-12','2025-11-24'),(890,39,76,15,'2025-12-12','2025-12-24');
/*!40000 ALTER TABLE `SupplyOrder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-06 14:26:04
