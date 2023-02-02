-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: nttdata
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `idorder` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(45) DEFAULT NULL,
  `customer` varchar(150) DEFAULT NULL,
  `taxes_amounts` double DEFAULT NULL,
  `total_taxes` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Pending',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (12,'1','hector bazalar',27.234800000000003,27.234800000000003,127.23479999999999,'Pending','2023-02-01'),(17,'2','dayanna neyra',27.234800000000003,27.234800000000003,127.23479999999999,'Rejected','2023-02-01'),(18,'3','dayanna neyra',27.234800000000003,27.234800000000003,127.23479999999999,'Completed','2023-02-01'),(19,'4','dayanna neyra',27.234800000000003,27.234800000000003,127.23479999999999,'Pending','2023-02-01'),(20,'5','dayanna neyra',27.234800000000003,27.234800000000003,127.23479999999999,'Pending','2023-02-01'),(21,'6','dayanna neyra',27.234800000000003,27.234800000000003,127.23479999999999,'Pending','2023-02-01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_items`
--

DROP TABLE IF EXISTS `orders_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_items` (
  `idorder_item` int NOT NULL AUTO_INCREMENT,
  `idorder` int DEFAULT NULL,
  `product` varchar(150) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`idorder_item`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_items`
--

LOCK TABLES `orders_items` WRITE;
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
INSERT INTO `orders_items` VALUES (6,NULL,'12 kola inglesa de 3L',100,1),(8,NULL,'12 coca cola de 3L',100,1),(9,NULL,'12 coca cola de 3L',100,1),(10,NULL,'12 coca cola de 3L',100,1),(11,NULL,'12 coca cola de 3L',100,1),(12,NULL,'12 coca cola de 3L',100,1);
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orders_items`
--

DROP TABLE IF EXISTS `orders_orders_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_orders_items` (
  `order_idorder` int NOT NULL,
  `order_items_idorder_item` int NOT NULL,
  PRIMARY KEY (`order_idorder`,`order_items_idorder_item`),
  KEY `fk_orderitemid_idx` (`order_items_idorder_item`),
  CONSTRAINT `fk_orderid` FOREIGN KEY (`order_idorder`) REFERENCES `orders` (`idorder`),
  CONSTRAINT `fk_orderitem` FOREIGN KEY (`order_items_idorder_item`) REFERENCES `orders_items` (`idorder_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orders_items`
--

LOCK TABLES `orders_orders_items` WRITE;
/*!40000 ALTER TABLE `orders_orders_items` DISABLE KEYS */;
INSERT INTO `orders_orders_items` VALUES (12,6),(17,8),(18,9),(19,10),(20,11),(21,12);
/*!40000 ALTER TABLE `orders_orders_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 22:00:41
