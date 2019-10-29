CREATE DATABASE  IF NOT EXISTS `site` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `site`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: site
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `beer`
--

DROP TABLE IF EXISTS `beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `beer` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `brandName` varchar(255) DEFAULT NULL,
  `Style` varchar(255) DEFAULT NULL,
  `abv` decimal(3,1) DEFAULT NULL,
  `ibu` decimal(3,1) DEFAULT NULL,
  `estCal` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beer`
--

LOCK TABLES `beer` WRITE;
/*!40000 ALTER TABLE `beer` DISABLE KEYS */;
INSERT INTO `beer` VALUES (1,'diam','Tristique Senectus Corp.','Pilsner',34.0,77.0,435),(2,'Cras','Maecenas Mi Felis Corporation','IPA',1.0,99.0,303),(3,'Donec','Ut Nec Urna Institute','Porter',61.0,55.0,426),(4,'dis','Lobortis Ultrices Vivamus Corporation','Belgian Ale',68.0,73.0,54),(5,'ipsum','Aliquam Nisl Nulla Ltd','Lager',35.0,54.0,431),(6,'ultrices.','Phasellus Nulla Consulting','Sour Beer',11.0,58.0,119),(7,'elit.','Leo Consulting','Stout',44.0,28.0,243),(8,'turpis.','Sed Inc.','Lager',61.0,59.0,48),(9,'Fusce','Rhoncus PC','Cider',83.0,1.0,282),(10,'et','Nonummy Ipsum PC','Lager',27.0,28.0,224),(11,'Donec','Vestibulum Nec Inc.','Other',88.0,61.0,510),(12,'facilisis','Nullam Scelerisque Neque PC','Belgian Ale',2.0,12.0,416),(13,'commodo','In Company','IPA',39.0,73.0,360),(14,'mattis','Morbi Tristique Associates','Belgian Ale',98.0,74.0,519),(15,'iaculis','Dapibus Quam Quis Incorporated','Sour Beer',73.0,95.0,318),(16,'sed','Lobortis Mauris Limited','Cider',30.0,81.0,479),(17,'neque.','Maecenas Ornare Incorporated','Pilsner',73.0,95.0,347),(18,'auctor','Libero Proin Company','Lager',48.0,84.0,554),(19,'metus.','Vitae Sodales LLP','Other',83.0,82.0,502),(20,'Cras','Aptent PC','Other',60.0,42.0,497),(21,'eleifend','Elit Company','Sour Beer',66.0,5.0,292),(22,'Donec','Facilisis Facilisis Associates','Pilsner',91.0,1.0,314),(23,'adipiscing','Viverra Donec Inc.','Porter',89.0,96.0,208),(24,'laoreet','Nulla Incorporated','Stout',29.0,26.0,1),(25,'vitae,','Sodales Elit Erat Associates','Lager',71.0,4.0,225),(26,'blandit','Mauris Sagittis Placerat Industries','Cider',60.0,27.0,311),(27,'tellus','Sed Facilisis Vitae Institute','IPA',35.0,71.0,502),(28,'Nam','Tristique Senectus Et Foundation','Porter',85.0,39.0,532),(29,'fermentum','Malesuada Fames Limited','Other',38.0,42.0,214),(30,'Aliquam','Nunc Lectus Pede Ltd','Lager',53.0,89.0,543),(31,'lacus,','Phasellus Vitae Ltd','IPA',73.0,51.0,335),(32,'posuere,','Bibendum Ullamcorper PC','Wheat Beer',82.0,45.0,174),(33,'pharetra,','Feugiat Incorporated','Stout',28.0,68.0,582),(34,'a','Rhoncus Ltd','Lager',21.0,21.0,103),(35,'erat','In Inc.','Lager',36.0,11.0,445),(36,'per','Arcu Nunc Foundation','Belgian Ale',32.0,81.0,526),(37,'ac','A LLC','Porter',30.0,23.0,270),(38,'eu','Lorem Luctus Ut LLC','Porter',24.0,78.0,82),(39,'id,','Libero Et Tristique Associates','Lager',85.0,70.0,289),(40,'ac','Cras Foundation','Lager',21.0,6.0,256),(41,'nibh','Dapibus Associates','Pilsner',48.0,4.0,416),(42,'sociis','Vulputate Lacus Incorporated','Other',58.0,76.0,40),(43,'Suspendisse','Mauris Quis Turpis Industries','Stout',71.0,77.0,103),(44,'ut','Nibh Phasellus Foundation','Other',18.0,36.0,271),(45,'lacus.','Vel Arcu Eu LLP','IPA',92.0,39.0,419),(46,'sed','Nec Ligula Consectetuer Ltd','Other',59.0,86.0,87),(47,'ac','Nulla Aliquet Ltd','IPA',61.0,6.0,87),(48,'enim','Tincidunt Corporation','Cider',55.0,52.0,353),(49,'vehicula','Dapibus Inc.','Belgian Ale',86.0,33.0,482),(50,'ultricies','Facilisis LLP','Wheat Beer',40.0,75.0,8),(51,'mauris','Diam Sed Diam Consulting','IPA',97.0,92.0,340),(52,'nisl','Non Justo Proin Inc.','Porter',96.0,93.0,373),(53,'vulputate','Hendrerit Ltd','Cider',35.0,79.0,566),(54,'sed','Varius Corp.','Cider',91.0,61.0,29),(55,'auctor,','Etiam Bibendum Inc.','Belgian Ale',97.0,80.0,442),(56,'Etiam','Interdum Enim Non Corporation','Belgian Ale',10.0,56.0,98),(57,'Maecenas','Feugiat Placerat Velit Limited','Cider',86.0,24.0,351),(58,'gravida','Placerat Orci Limited','Lager',31.0,62.0,28),(59,'mollis.','Lectus Corporation','Belgian Ale',47.0,61.0,460),(60,'urna.','Aenean Massa Consulting','Other',67.0,92.0,70),(61,'ipsum','Molestie Ltd','Wheat Beer',44.0,92.0,484),(62,'diam.','Nullam Nisl Associates','Cider',26.0,33.0,135),(63,'sed,','Turpis Corporation','Other',80.0,54.0,490),(64,'sit','Congue Elit Sed Industries','Porter',42.0,44.0,66),(65,'ipsum','Feugiat Non Lobortis LLC','Belgian Ale',13.0,15.0,402),(66,'a,','Magna Cras Convallis Foundation','Cider',36.0,6.0,453),(67,'eu','Lorem Eget Mollis Ltd','Lager',74.0,9.0,523),(68,'ultrices','Varius Orci In Corp.','Sour Beer',5.0,15.0,319),(69,'sagittis','Erat Volutpat Nulla PC','Cider',70.0,3.0,329),(70,'mattis.','Pellentesque Massa Lobortis Consulting','Cider',67.0,72.0,25),(71,'et','Tellus Sem Corporation','Cider',50.0,63.0,409),(72,'ac','Ac Limited','Stout',57.0,79.0,209),(73,'leo','Amet Corp.','Stout',65.0,73.0,346),(74,'massa.','Risus In Inc.','Porter',14.0,10.0,233),(75,'pretium','Mauris Foundation','Pilsner',37.0,22.0,190),(76,'senectus','Rutrum Lorem Corporation','Other',7.0,64.0,135),(77,'elit,','Lorem Lorem Limited','Belgian Ale',39.0,4.0,179),(78,'Donec','In Company','IPA',70.0,77.0,551),(79,'Suspendisse','Eget Tincidunt Foundation','Cider',97.0,81.0,211),(80,'per','Neque Ltd','Wheat Beer',90.0,73.0,413),(81,'Lorem','Sed Dui Ltd','Lager',31.0,55.0,246),(82,'mi','Conubia Nostra Per Corporation','Lager',33.0,92.0,395),(83,'quam','Natoque Penatibus Et Associates','Porter',86.0,76.0,322),(84,'eu','Aliquet Proin Consulting','Belgian Ale',71.0,68.0,452),(85,'arcu.','Aenean Massa PC','Cider',41.0,80.0,277),(86,'tellus','Orci Lobortis LLC','Cider',38.0,56.0,434),(87,'Nam','Tincidunt Dui Associates','Cider',55.0,32.0,286),(88,'pede,','Purus Mauris Corporation','Lager',60.0,66.0,240),(89,'aliquet.','Dapibus Gravida Inc.','Other',80.0,27.0,1),(90,'lobortis','At Libero Morbi Consulting','Pilsner',31.0,77.0,243),(91,'Aliquam','Mi Corp.','Belgian Ale',39.0,80.0,586),(92,'mollis','Risus Duis A PC','IPA',44.0,42.0,46),(93,'Sed','Lectus Justo Eu Consulting','Pilsner',60.0,54.0,433),(94,'molestie','Vel Quam Consulting','Belgian Ale',21.0,78.0,31),(95,'vulputate,','Magnis Dis Associates','Pilsner',28.0,33.0,461),(96,'Mauris','Pellentesque Associates','Lager',17.0,52.0,183),(97,'Integer','Turpis Foundation','Pilsner',2.0,10.0,350),(98,'Vestibulum','Lobortis Tellus LLP','Belgian Ale',89.0,35.0,269),(99,'Fusce','In Associates','Porter',14.0,77.0,283),(100,'Heineken Plus','Purus Maecenas Corp.','Cider',25.0,26.0,264),(101,'Heineken','Heineken','lag',4.5,2.0,100),(102,'Bud light','Budweiser','pil',3.5,10.0,90);
/*!40000 ALTER TABLE `beer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-28 16:04:46
