CREATE DATABASE  IF NOT EXISTS `electricvehiclepopulation` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `electricvehiclepopulation`;
-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: electricvehiclepopulation
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Temporary view structure for view `avg_electric_range`
--

DROP TABLE IF EXISTS `avg_electric_range`;
/*!50001 DROP VIEW IF EXISTS `avg_electric_range`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_electric_range` AS SELECT 
 1 AS `electric_type`,
 1 AS `average_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `counts_by_make`
--

DROP TABLE IF EXISTS `counts_by_make`;
/*!50001 DROP VIEW IF EXISTS `counts_by_make`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `counts_by_make` AS SELECT 
 1 AS `make`,
 1 AS `CAFV_eligible_vehicle_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `electric_ranges`
--

DROP TABLE IF EXISTS `electric_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electric_ranges` (
  `range_id` int NOT NULL,
  `electric_range` int DEFAULT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electric_ranges`
--

LOCK TABLES `electric_ranges` WRITE;
/*!40000 ALTER TABLE `electric_ranges` DISABLE KEYS */;
INSERT INTO `electric_ranges` VALUES (1,6),(2,12),(3,13),(4,14),(5,17),(6,19),(7,20),(8,21),(9,22),(10,25),(11,26),(12,27),(13,29),(14,31),(15,32),(16,33),(17,35),(18,37),(19,38),(20,40),(21,41),(22,42),(23,58),(24,62),(25,68),(26,73),(27,74),(28,76),(29,81),(30,82),(31,83),(32,93),(33,192),(34,218),(35,222),(36,233),(37,234),(38,238),(39,289);
/*!40000 ALTER TABLE `electric_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electric_types`
--

DROP TABLE IF EXISTS `electric_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electric_types` (
  `electric_type_id` int NOT NULL,
  `electric_type` mediumtext,
  PRIMARY KEY (`electric_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electric_types`
--

LOCK TABLES `electric_types` WRITE;
/*!40000 ALTER TABLE `electric_types` DISABLE KEYS */;
INSERT INTO `electric_types` VALUES (1,'Plug-in Hybrid Vehicle (PHEV)'),(2,'Battery Electric Vehicle (BEV)');
/*!40000 ALTER TABLE `electric_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legislative_districts`
--

DROP TABLE IF EXISTS `legislative_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legislative_districts` (
  `district_id` int NOT NULL,
  `legislative_district` int DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legislative_districts`
--

LOCK TABLES `legislative_districts` WRITE;
/*!40000 ALTER TABLE `legislative_districts` DISABLE KEYS */;
INSERT INTO `legislative_districts` VALUES (1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,11),(10,13),(11,14),(12,15),(13,16),(14,18),(15,20),(16,21),(17,23),(18,24),(19,28),(20,29),(21,31),(22,32),(23,35),(24,36),(25,37),(26,41),(27,42),(28,43),(29,45),(30,47),(31,48),(32,49);
/*!40000 ALTER TABLE `legislative_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `make_model_counts`
--

DROP TABLE IF EXISTS `make_model_counts`;
/*!50001 DROP VIEW IF EXISTS `make_model_counts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `make_model_counts` AS SELECT 
 1 AS `make`,
 1 AS `model`,
 1 AS `vehicle_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `range_and_type`
--

DROP TABLE IF EXISTS `range_and_type`;
/*!50001 DROP VIEW IF EXISTS `range_and_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `range_and_type` AS SELECT 
 1 AS `vehicle_id`,
 1 AS `model`,
 1 AS `model_year`,
 1 AS `electric_range`,
 1 AS `electric_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vehicle_count_by_location`
--

DROP TABLE IF EXISTS `vehicle_count_by_location`;
/*!50001 DROP VIEW IF EXISTS `vehicle_count_by_location`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicle_count_by_location` AS SELECT 
 1 AS `city`,
 1 AS `state`,
 1 AS `vehicle_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!50001 DROP VIEW IF EXISTS `vehicle_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicle_info` AS SELECT 
 1 AS `vehicle_model`,
 1 AS `model_year`,
 1 AS `CAFV_eligibility`,
 1 AS `vehicle_id`,
 1 AS `range_id`,
 1 AS `electric_range`,
 1 AS `make`,
 1 AS `electric_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vehicle_location`
--

DROP TABLE IF EXISTS `vehicle_location`;
/*!50001 DROP VIEW IF EXISTS `vehicle_location`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicle_location` AS SELECT 
 1 AS `vehicle_id`,
 1 AS `county`,
 1 AS `city`,
 1 AS `state`,
 1 AS `postal_code`,
 1 AS `legislative_district`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_locations`
--

DROP TABLE IF EXISTS `vehicle_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_locations` (
  `location_id` int NOT NULL,
  `county` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `postal_code` char(8) DEFAULT NULL,
  `district_id` int NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `fk_Vehicle_locations_legislative_districs1_idx` (`district_id`),
  CONSTRAINT `district_id` FOREIGN KEY (`district_id`) REFERENCES `legislative_districts` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_locations`
--

LOCK TABLES `vehicle_locations` WRITE;
/*!40000 ALTER TABLE `vehicle_locations` DISABLE KEYS */;
INSERT INTO `vehicle_locations` VALUES (1,'Spokane','Spokane','WA','99217',5),(2,'Spokane','Spokane','WA','99204',2),(3,'Spokane','Spokane','WA','99208',6),(4,'King','Kirkland','WA','98034',29),(5,'Whitman','Pullman','WA','99163',8),(6,'King','Enumclaw','WA','98022',21),(7,'Clark','Vancouver','WA','98665',32),(8,'Yakima','Yakima','WA','98908',11),(9,'Pierce','Graham','WA','98338',1),(10,'Whatcom','Deming','WA','98244',27),(11,'King','Shoreline','WA','98133',22),(12,'Klickitat','Glenwood','WA','98619',11),(13,'Walla Walla','College Place','WA','99324',13),(14,'Spokane','Spokane Valley','WA','99206',3),(15,'Kittitas','Cle Elum','WA','98922',10),(16,'King','Renton','WA','98056',26),(17,'Pierce','Lakewood','WA','98499',20),(18,'King','Issaquah','WA','98029',26),(19,'Clark','Brush Prairie','WA','98606',14),(20,'Thurston','Yelm','WA','98597',15),(21,'King','Renton','WA','98058',9),(22,'King','Kirkland','WA','98033',31),(23,'King','Seattle','WA','98105',28),(24,'Benton','Kennewick','WA','99338',7),(25,'King','Kent','WA','98042',30),(26,'King','Bellevue','WA','98006',26),(27,'Walla Walla','Walla Walla','WA','99362',13),(28,'King','Shoreline','WA','98155',22),(29,'Kitsap','Poulsbo','WA','98370',17),(30,'King','Carnation','WA','98014',4),(31,'Snohomish','Lynnwood','WA','98087',16),(32,'Clallam','Port Angeles','WA','98362',18),(33,'King','Seattle','WA','98119',24),(34,'King','Issaquah','WA','98027',26),(36,'Spokane','Spokane','WA','99203',2),(37,'Snohomish','Edmonds','WA','98020',16),(38,'King','Ravensdale','WA','98051',4),(39,'King','Sammamish','WA','98029',4),(40,'Yakima','Yakima','WA','98901',12),(41,'Spokane','Spokane','WA','99224',5),(42,'King','Seattle','WA','98118',25),(43,'Spokane','Spokane','WA','99218',6),(44,'King','Fall City','WA','98024',4),(45,'Mason','Belfair','WA','98528',23);
/*!40000 ALTER TABLE `vehicle_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_makes`
--

DROP TABLE IF EXISTS `vehicle_makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_makes` (
  `make_id` int NOT NULL,
  `make` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_makes`
--

LOCK TABLES `vehicle_makes` WRITE;
/*!40000 ALTER TABLE `vehicle_makes` DISABLE KEYS */;
INSERT INTO `vehicle_makes` VALUES (1,'JEEP'),(2,'FORD'),(3,'CHEVROLET'),(4,'CADILLAC'),(5,'CHRYSLER'),(6,'TESLA'),(7,'VOLVO'),(8,'MITSUBISHI'),(9,'SUBARU'),(10,'HONDA'),(11,'NISSAN'),(12,'TOYOTA'),(13,'LEXUS'),(14,'HYUNDAI'),(15,'KIA'),(16,'POLESTAR'),(17,'JAGUAR'),(18,'LAND ROVER'),(19,'MERCEDES-BENZ'),(20,'BENTLEY'),(21,'AUDI'),(22,'BMW'),(23,'SMART'),(24,'MINI'),(25,'PORSCHE'),(26,'VOLKSWAGEN'),(27,'FISKER');
/*!40000 ALTER TABLE `vehicle_makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_models`
--

DROP TABLE IF EXISTS `vehicle_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_models` (
  `model_id` int NOT NULL,
  `model` mediumtext,
  `model_year` year DEFAULT NULL,
  `CAFV_eligibility` longtext,
  `make_id` int NOT NULL,
  `range_id` int NOT NULL,
  `electric_type_id` int NOT NULL,
  `vehicle_id` varchar(10) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_Vehicle_models_Vehicle_makes1_idx` (`make_id`),
  KEY `fk_Vehicle_models_Electric_ranges1_idx` (`range_id`),
  KEY `fk_Vehicle_models_Electric_types1_idx` (`electric_type_id`),
  KEY `fk_Vehicle_models_Vehicles1_idx` (`vehicle_id`),
  CONSTRAINT `electric_type_id` FOREIGN KEY (`electric_type_id`) REFERENCES `electric_types` (`electric_type_id`),
  CONSTRAINT `make_id` FOREIGN KEY (`make_id`) REFERENCES `vehicle_makes` (`make_id`),
  CONSTRAINT `range_id` FOREIGN KEY (`range_id`) REFERENCES `electric_ranges` (`range_id`),
  CONSTRAINT `vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_models`
--

LOCK TABLES `vehicle_models` WRITE;
/*!40000 ALTER TABLE `vehicle_models` DISABLE KEYS */;
INSERT INTO `vehicle_models` VALUES (1,'WRANGLER',2021,'Not eligible due to low battery range',1,10,1,'1C4JJXP60M'),(2,'WRANGLER',2022,'Not eligible due to low battery range',1,8,1,'1C4JJXP60N'),(3,'WRANGLER',2022,'Not eligible due to low battery range',1,9,1,'1C4JJXR60N'),(4,'FOCUS',2013,'Clean Alternative Fuel Vehicle Eligible',2,28,2,'1FADP3R40D'),(5,'C-MAX',2013,'Not eligible due to low battery range',2,6,1,'1FADP5CU0D'),(6,'C-MAX',2017,'Not eligible due to low battery range',2,7,1,'1FADP5EU0H'),(7,'ESCAPE',2021,'Clean Alternative Fuel Vehicle Eligible',2,19,1,'1FMCU0EZ0M'),(8,'ESCAPE',2022,'Clean Alternative Fuel Vehicle Eligible',2,19,1,'1FMCU0EZ0N'),(9,'RANGER',1999,'Clean Alternative Fuel Vehicle Eligible',2,27,2,'1FTZR0812X'),(10,'RANGER',1999,'Clean Alternative Fuel Vehicle Eligible',2,27,2,'1FTZR0819X'),(11,'RANGER',2000,'Clean Alternative Fuel Vehicle Eligible',2,23,2,'1FTZR0819Y'),(12,'C-MAX',2014,'Not eligible due to low battery range',2,6,1,'1FADP5CU0E'),(13,'C-MAX',2017,'Not eligible due to low battery range',2,7,1,'1FADP5EU8H'),(14,'BOLT EV',2017,'Clean Alternative Fuel Vehicle Eligible',3,38,2,'1G1FW6S00H'),(15,'VOLT',2012,'Clean Alternative Fuel Vehicle Eligible',3,17,1,'1G1RA6E40C'),(16,'ELR',2016,'Clean Alternative Fuel Vehicle Eligible',4,20,1,'1G6RL1E41G'),(17,'PACIFICA',2019,'Clean Alternative Fuel Vehicle Eligible',5,15,1,'2C4RC1H71K'),(18,'MODEL X',2019,'Clean Alternative Fuel Vehicle Eligible',6,39,2,'5YJXCAE20K'),(19,'S60',2021,'Not eligible due to low battery range',7,9,1,'7JRBK0FP0M'),(20,'S60',2022,'Clean Alternative Fuel Vehicle Eligible',7,21,1,'7JRH60FD0N'),(21,'I-MIEV',2012,'Clean Alternative Fuel Vehicle Eligible',8,24,2,'JA3215H10C'),(22,'CROSSTREK',2019,'Not eligible due to low battery range',9,5,1,'JF2GTDNC0K'),(23,'ACCORD',2014,'Not eligible due to low battery range',10,3,1,'JHMCR5F70E'),(24,'LEAF',2011,'Clean Alternative Fuel Vehicle Eligible',11,26,2,'JN1AZ0CP0B'),(25,'PRIUS PRIME',2021,'Not eligible due to low battery range',12,10,1,'JTDKAMFP0M'),(26,'PRIUS PLUG-IN',2012,'Not eligible due to low battery range',12,1,1,'JTDKN3DPXC'),(27,'PRIUS PRIME',2017,'Not eligible due to low battery range',12,10,1,'JTDKARFP8H'),(28,'NX',2022,'Clean Alternative Fuel Vehicle Eligible',13,18,1,'JTJHKCFZ1N'),(29,'RAV4 PRIME',2021,'Clean Alternative Fuel Vehicle Eligible',12,22,1,'JTMAB3FV0M'),(30,'SPARK',2014,'Clean Alternative Fuel Vehicle Eligible',3,30,2,'KL8CK6S00E'),(31,'TUCSON',2022,'Clean Alternative Fuel Vehicle Eligible',14,16,1,'KM8JBDA20N'),(32,'SANTA FE',2022,'Clean Alternative Fuel Vehicle Eligible',14,14,1,'KM8S6DA20N'),(33,'IONIQ',2019,'Not eligible due to low battery range',14,13,1,'KMHC65LD0K'),(34,'SONATA',2017,'Not eligible due to low battery range',14,12,1,'KMHE14L20H'),(35,'OPTIMA',2017,'Not eligible due to low battery range',15,13,1,'KNAGV4LD0H'),(36,'NIRO',2022,'Not eligible due to low battery range',15,11,1,'KNDCM3LDXN'),(37,'SOUL',2016,'Clean Alternative Fuel Vehicle Eligible',15,32,2,'KNDJP3AE0G'),(38,'PS2',2021,'Clean Alternative Fuel Vehicle Eligible',16,36,2,'LPSED3KA0M'),(39,'CT6',2018,'Clean alternative Fuel Vehicle Eligible',4,14,1,'LREKK5RXOJ'),(40,'S90',2018,'Not eligible due to low battery range',7,8,1,'LVYBC0AL0J'),(41,'XC60',2018,'Not eligible due to low battery range',7,5,1,'LYVBR0DK0J'),(42,'I-PACE',2020,'Clean Alternative Fuel Vehicle Eligible',17,37,2,'SADHB2S10L'),(43,'RANGE ROVER',2020,'Not eligible due to low battery range',18,6,1,'SALGS4RY0L'),(44,'GLC-CLASS',2020,'Not eligible due to low battery range',19,9,1,'W1N0G5DB0L'),(45,'FLYING SPUR',2022,'Not eligible due to low battery range',20,8,1,'SCBBR6ZG0N'),(46,'E-TRON SPORTBACK',2021,'Clean Alternative Fuel Vehicle Eligible',21,34,2,'WA11AAGE0M'),(47,'E-TRON',2021,'Clean Alternative Fuel Vehicle Eligible',21,35,2,'WA1AAAGEXM'),(48,'740E',2017,'Not eligible due to low battery range',22,4,1,'WBA7J2C32H'),(49,'I3',2014,'Clean Alternative Fuel Vehicle Eligible',22,29,2,'WBY1Z2C50E'),(50,'FORTWO ELECTRIC DRIVE',2013,'Clean Alternative Fuel Vehicle Eligible',23,25,2,'WMEEJ9AA0D'),(51,'COUNTRYMAN',2018,'Not eligible due to low battery range',24,2,1,'WMZYU7C40J'),(52,'TAYCAN',2020,'Clean Alternative Fuel Vehicle Eligible',25,33,2,'WP0AC2Y10L'),(53,'E-GOLF',2015,'Clean Alternative Fuel Vehicle Eligible',26,31,2,'WVWKP7AU0F'),(54,'KARMA',2012,'Clean Alternative Fuel Vehicle Eligible',27,16,1,'YH4K10BA2C');
/*!40000 ALTER TABLE `vehicle_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` varchar(10) NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `fk_Vehicles_Vehicle_locations1_idx` (`location_id`),
  CONSTRAINT `location_id` FOREIGN KEY (`location_id`) REFERENCES `vehicle_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('1C4JJXP60M',1),('1C4JJXP60N',2),('JTDKARFP8H',2),('1C4JJXR60N',3),('1FADP3R40D',4),('1FADP5CU0D',5),('JN1AZ0CP0B',5),('1FADP5EU0H',6),('1FMCU0EZ0M',7),('KM8JBDA20N',7),('1FMCU0EZ0N',8),('1FTZR0812X',9),('1FTZR0819X',10),('1FTZR0819Y',11),('1FADP5CU0E',12),('1FADP5EU8H',13),('1G1FW6S00H',14),('1G1RA6E40C',15),('1G6RL1E41G',16),('2C4RC1H71K',17),('5YJXCAE20K',18),('SADHB2S10L',18),('7JRBK0FP0M',19),('7JRH60FD0N',20),('JA3215H10C',21),('JF2GTDNC0K',22),('JHMCR5F70E',23),('WA1AAAGEXM',23),('JTDKAMFP0M',24),('JTDKN3DPXC',25),('WMEEJ9AA0D',25),('JTJHKCFZ1N',26),('KNAGV4LD0H',26),('JTMAB3FV0M',27),('KL8CK6S00E',28),('KM8S6DA20N',29),('KMHC65LD0K',30),('KMHE14L20H',31),('KNDCM3LDXN',32),('KNDJP3AE0G',33),('LPSED3KA0M',34),('LREKK5RXOJ',35),('LVYBC0AL0J',36),('WA11AAGE0M',36),('LYVBR0DK0J',37),('SALGS4RY0L',38),('W1N0G5DB0L',39),('SCBBR6ZG0N',40),('WBY1Z2C50E',40),('WBA7J2C32H',41),('WMZYU7C40J',42),('WP0AC2Y10L',43),('WVWKP7AU0F',44),('YH4K10BA2C',45);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `avg_electric_range`
--

/*!50001 DROP VIEW IF EXISTS `avg_electric_range`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_electric_range` AS select `et`.`electric_type` AS `electric_type`,avg(`er`.`electric_range`) AS `average_range` from ((`vehicle_models` `vmo` join `electric_types` `et` on((`vmo`.`electric_type_id` = `et`.`electric_type_id`))) join `electric_ranges` `er` on((`vmo`.`range_id` = `er`.`range_id`))) where (`er`.`electric_range` is not null) group by `et`.`electric_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `counts_by_make`
--

/*!50001 DROP VIEW IF EXISTS `counts_by_make`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `counts_by_make` AS select `em`.`make` AS `make`,count(`vm`.`vehicle_id`) AS `CAFV_eligible_vehicle_count` from (`vehicle_models` `vm` join `vehicle_makes` `em` on((`vm`.`make_id` = `em`.`make_id`))) where (`vm`.`CAFV_eligibility` = 'Clean Alternative Fuel Vehicle Eligible') group by `em`.`make` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `make_model_counts`
--

/*!50001 DROP VIEW IF EXISTS `make_model_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `make_model_counts` AS select `em`.`make` AS `make`,`vm`.`model` AS `model`,count(`vm`.`vehicle_id`) AS `vehicle_count` from (`vehicle_models` `vm` join `vehicle_makes` `em` on((`vm`.`make_id` = `em`.`make_id`))) where `vm`.`range_id` in (select `electric_ranges`.`range_id` from `electric_ranges` where (`electric_ranges`.`electric_range` > 20)) group by `em`.`make`,`vm`.`model` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `range_and_type`
--

/*!50001 DROP VIEW IF EXISTS `range_and_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `range_and_type` AS select `vm`.`vehicle_id` AS `vehicle_id`,`vm`.`model` AS `model`,`vm`.`model_year` AS `model_year`,`er`.`electric_range` AS `electric_range`,`et`.`electric_type` AS `electric_type` from ((`vehicle_models` `vm` join `electric_ranges` `er` on((`vm`.`range_id` = `er`.`range_id`))) join `electric_types` `et` on((`vm`.`electric_type_id` = `et`.`electric_type_id`))) where (`er`.`electric_range` > 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_count_by_location`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_count_by_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_count_by_location` AS select `vl`.`city` AS `city`,`vl`.`state` AS `state`,count(distinct `v`.`vehicle_id`) AS `vehicle_count` from (`vehicles` `v` join `vehicle_locations` `vl` on((`v`.`location_id` = `vl`.`location_id`))) group by `vl`.`city`,`vl`.`state` order by `vehicle_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_info`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_info` AS select `vm`.`model` AS `vehicle_model`,`vm`.`model_year` AS `model_year`,`vm`.`CAFV_eligibility` AS `CAFV_eligibility`,`vm`.`vehicle_id` AS `vehicle_id`,`vm`.`range_id` AS `range_id`,`er`.`electric_range` AS `electric_range`,`em`.`make` AS `make`,`et`.`electric_type` AS `electric_type` from (((`vehicle_models` `vm` join `vehicle_makes` `em` on((`vm`.`make_id` = `em`.`make_id`))) join `electric_ranges` `er` on((`vm`.`range_id` = `er`.`range_id`))) join `electric_types` `et` on((`vm`.`electric_type_id` = `et`.`electric_type_id`))) where (`vm`.`CAFV_eligibility` = 'Clean Alternative Fuel Vehicle Eligible') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_location`
--

/*!50001 DROP VIEW IF EXISTS `vehicle_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_location` AS select `v`.`vehicle_id` AS `vehicle_id`,`vl`.`county` AS `county`,`vl`.`city` AS `city`,`vl`.`state` AS `state`,`vl`.`postal_code` AS `postal_code`,`ld`.`legislative_district` AS `legislative_district` from ((`vehicles` `v` join `vehicle_locations` `vl` on((`v`.`location_id` = `vl`.`location_id`))) join `legislative_districts` `ld` on((`vl`.`district_id` = `ld`.`district_id`))) */;
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

-- Dump completed on 2024-12-09 19:39:38
