-- MariaDB dump 10.17  Distrib 10.4.12-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	10.4.12-MariaDB

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
-- Current Database: `store`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `store` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `store`;

--
-- Table structure for table `chips`
--

DROP TABLE IF EXISTS `chips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chips` (
  `chips_id` int(11) NOT NULL AUTO_INCREMENT,
  `chips_name` varchar(64) NOT NULL,
  `chips_description` varchar(255) NOT NULL,
  `chips_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`chips_id`),
  UNIQUE KEY `chips_name` (`chips_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chips`
--

LOCK TABLES `chips` WRITE;
/*!40000 ALTER TABLE `chips` DISABLE KEYS */;
INSERT INTO `chips` VALUES (1,'Simba','Simba Chips is a popular South African brand of potato crisps',13.75),(2,'Lays','We pack them with the utmost care to create the superb quality chips you have come to expect from Lay\'s',21.50);
/*!40000 ALTER TABLE `chips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cooldrink`
--

DROP TABLE IF EXISTS `cooldrink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cooldrink` (
  `cooldrink_id` int(11) NOT NULL AUTO_INCREMENT,
  `cooldrink_name` varchar(64) NOT NULL,
  `cooldrink_description` varchar(255) NOT NULL,
  `cooldrink_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`cooldrink_id`),
  UNIQUE KEY `cooldrink_name` (`cooldrink_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooldrink`
--

LOCK TABLES `cooldrink` WRITE;
/*!40000 ALTER TABLE `cooldrink` DISABLE KEYS */;
INSERT INTO `cooldrink` VALUES (1,'Coke','Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company',11.00),(2,'Fata','Fanta is a brand of fruit-flavored carbonated drinks created by Coca-Cola Deutschland under the leadership of German businessman Max Keith.',11.00),(3,'Sprite','Sprite is a colorless, lemon and lime-flavored soft drink created by The Coca-Cola Company',11.00);
/*!40000 ALTER TABLE `cooldrink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupcake`
--

DROP TABLE IF EXISTS `cupcake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupcake` (
  `cupcake_id` int(11) NOT NULL AUTO_INCREMENT,
  `cupcake_name` varchar(64) NOT NULL,
  `cupcake_description` varchar(255) NOT NULL,
  `cupcake_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`cupcake_id`),
  UNIQUE KEY `cupcake_name` (`cupcake_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupcake`
--

LOCK TABLES `cupcake` WRITE;
/*!40000 ALTER TABLE `cupcake` DISABLE KEYS */;
INSERT INTO `cupcake` VALUES (1,'Vanilla','Vanilla Cupcake',16.00),(2,'Chocolate','Chocolate Cupcake',18.00);
/*!40000 ALTER TABLE `cupcake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruit`
--

DROP TABLE IF EXISTS `fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fruit` (
  `fruit_id` int(11) NOT NULL AUTO_INCREMENT,
  `fruit_name` varchar(64) NOT NULL,
  `fruit_description` varchar(255) NOT NULL,
  `fruit_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`fruit_id`),
  UNIQUE KEY `fruit_name` (`fruit_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruit`
--

LOCK TABLES `fruit` WRITE;
/*!40000 ALTER TABLE `fruit` DISABLE KEYS */;
INSERT INTO `fruit` VALUES (1,'Pear','Pear Fruit',5.00),(2,'Orange','Orange Fruit',5.00),(3,'Apple','Apple Fruit',5.00),(4,'Banana','Banana Fruit',5.00);
/*!40000 ALTER TABLE `fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pie`
--

DROP TABLE IF EXISTS `pie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pie` (
  `pie_id` int(11) NOT NULL AUTO_INCREMENT,
  `pie_name` varchar(64) NOT NULL,
  `pie_description` varchar(255) NOT NULL,
  `pie_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`pie_id`),
  UNIQUE KEY `pie_name` (`pie_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pie`
--

LOCK TABLES `pie` WRITE;
/*!40000 ALTER TABLE `pie` DISABLE KEYS */;
INSERT INTO `pie` VALUES (1,'Simba','Simba Chips is a popular South African brand of potato crisps',23.50),(2,'Chicken','Chicken Pie',23.50),(3,'Pepper Steak','Pepper Steak Pie',23.50),(4,'Steak and Kidney','Steak and Kidney Pie',23.50),(5,'Salami and Cheese','Salami and Cheese Pie',23.50),(6,'Spinach and Feta','Spinach and Feta Pie',23.50),(7,'Cornish','Cornish Pie',23.50),(8,'Steak and Onion','Steak and Onion Pie',23.50),(9,'Sausage Roll','Sausage Roll Pie',23.50),(10,'Peri Peri Chicken Liver','Peri Peri Chicken Liver Pie',23.50),(11,'Mutton Curry','Mutton Curry Pie',23.50);
/*!40000 ALTER TABLE `pie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) NOT NULL,
  `product_type` varchar(64) NOT NULL,
  `product_available` int(5) NOT NULL DEFAULT 0,
  `product_price` decimal(6,2) NOT NULL DEFAULT 1.00,
  `product_description` varchar(255) DEFAULT NULL,
  `product_avg_cost` decimal(6,2) NOT NULL DEFAULT (`product_price` * 0.75),
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Simba','Chips',26,16.00,NULL,12.00),(2,'Lays','Chips',37,22.50,NULL,16.88),(3,'Coke','Cooldrinks',100,15.74,NULL,11.81),(4,'Fanta','Cooldrinks',85,14.60,NULL,10.95),(5,'Cadbury','Chocolates',45,12.00,NULL,9.00),(6,'Tex','Chocolates',13,16.00,NULL,12.00),(7,'Pepper Steak','Pies',10,18.99,NULL,14.24),(8,'Chicken','Pies',34,16.00,NULL,12.00),(9,'Pear','Fruit',92,9.00,NULL,6.75),(10,'Apple','Fruit',120,5.45,NULL,4.09),(11,'Orange','Fruit',120,7.00,NULL,5.25),(12,'Vanilla','Cupcakes',150,12.70,NULL,9.53),(13,'Chocolate','Cupcakes',150,14.00,NULL,10.50),(14,'Spinich','Veggies',46,10.00,NULL,7.50),(15,'Cabbage','Veggies',50,10.00,NULL,7.50);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soap`
--

DROP TABLE IF EXISTS `soap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soap` (
  `soap_id` int(11) NOT NULL AUTO_INCREMENT,
  `soap_name` varchar(64) NOT NULL,
  `soap_description` varchar(255) NOT NULL,
  `soap_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`soap_id`),
  UNIQUE KEY `soap_name` (`soap_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soap`
--

LOCK TABLES `soap` WRITE;
/*!40000 ALTER TABLE `soap` DISABLE KEYS */;
INSERT INTO `soap` VALUES (1,'Sunlight','Sunlight Soap',7.50),(2,'OMO','OMO Soap',18.00);
/*!40000 ALTER TABLE `soap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetable`
--

DROP TABLE IF EXISTS `vegetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vegetable` (
  `vegetable_id` int(11) NOT NULL AUTO_INCREMENT,
  `vegetable_name` varchar(64) NOT NULL,
  `vegetable_description` varchar(255) NOT NULL,
  `vegetable_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`vegetable_id`),
  UNIQUE KEY `vegetable_name` (`vegetable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetable`
--

LOCK TABLES `vegetable` WRITE;
/*!40000 ALTER TABLE `vegetable` DISABLE KEYS */;
INSERT INTO `vegetable` VALUES (1,'Spinach','Spinach is a leafy green flowering plant native to central and western Asia',12.00),(2,'Cabbage','Cabbage is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads.',10.90);
/*!40000 ALTER TABLE `vegetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16  3:09:02
