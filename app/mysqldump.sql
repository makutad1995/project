-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: site
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Review` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `beer_id` mediumint(8) unsigned NOT NULL,
  `userName` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `body` varchar(180) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beerid_idx` (`beer_id`),
  KEY `userid_idx` (`user_id`),
  KEY `user_name_idx` (`userName`),
  CONSTRAINT `beerid` FOREIGN KEY (`beer_id`) REFERENCES `beer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,99,18,'',3,'Lorem ipsum dolor','2018-07-27'),(2,66,22,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet','2019-12-31'),(3,16,75,'',3,'Lorem ipsum dolor sit amet,','2020-01-14'),(4,58,69,'',5,'Lorem ipsum','2019-03-28'),(5,20,18,'',3,'Lorem ipsum dolor sit amet,','2019-10-09'),(6,48,95,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2018-12-02'),(7,76,34,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing','2019-02-01'),(8,28,41,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.','2019-10-19'),(9,47,38,'',3,'Lorem ipsum','2019-11-14'),(10,67,33,'',4,'Lorem ipsum dolor sit amet,','2018-11-26'),(11,79,29,'',5,'Lorem ipsum','2018-07-23'),(12,66,38,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut','2018-11-06'),(13,46,20,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna','2018-07-11'),(14,6,79,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.','2018-06-23'),(15,27,95,'',2,'Lorem ipsum','2019-02-13'),(16,64,62,'',3,'Lorem ipsum dolor sit amet, consectetuer','2020-02-20'),(17,27,6,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna','2020-05-31'),(18,67,70,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2019-06-06'),(19,85,63,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis','2020-03-03'),(20,79,25,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2020-05-11'),(21,16,56,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis','2019-03-25'),(22,94,93,'',5,'Lorem ipsum','2020-01-02'),(23,36,90,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2019-09-27'),(24,34,56,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut','2020-04-21'),(25,86,25,'',3,'Lorem ipsum dolor sit','2019-01-15'),(26,19,30,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2019-08-04'),(27,33,57,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing','2019-05-23'),(28,43,66,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing','2020-04-15'),(29,16,69,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec','2020-03-07'),(30,7,87,'',1,'Lorem ipsum dolor sit amet,','2020-04-27'),(31,70,38,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer','2019-11-08'),(32,7,36,'',3,'Lorem ipsum dolor sit amet,','2020-06-08'),(33,31,48,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer','2020-01-30'),(34,13,68,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at','2018-08-19'),(35,32,31,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis','2019-07-09'),(36,29,29,'',1,'Lorem ipsum dolor sit amet, consectetuer','2019-12-13'),(37,25,21,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut','2018-07-19'),(38,62,68,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at','2019-02-15'),(39,90,18,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis','2018-12-24'),(40,32,79,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et','2018-09-05'),(41,100,74,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer','2019-05-14'),(42,57,16,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.','2019-02-17'),(43,10,86,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.','2019-06-09'),(44,41,25,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et','2019-09-06'),(45,10,31,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam','2019-07-02'),(46,60,9,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.','2019-09-24'),(47,29,13,'',2,'Lorem ipsum dolor sit','2019-11-11'),(48,59,17,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et','2018-12-16'),(49,75,86,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.','2018-06-30'),(50,21,98,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et','2020-03-16'),(51,18,48,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam','2020-01-28'),(52,47,74,'',4,'Lorem ipsum','2019-01-02'),(53,18,3,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna','2019-12-14'),(54,14,84,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2018-12-02'),(55,89,17,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2018-10-29'),(56,39,41,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2019-12-03'),(57,35,64,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.','2020-03-29'),(58,3,76,'',2,'Lorem ipsum dolor sit','2019-10-11'),(59,64,57,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2019-05-23'),(60,9,24,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at','2018-10-27'),(61,92,77,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2020-01-11'),(62,65,99,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.','2020-04-08'),(63,74,64,'',3,'Lorem ipsum','2020-03-28'),(64,49,38,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam','2018-09-05'),(65,28,18,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','2018-08-20'),(66,24,94,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.','2018-09-25'),(67,65,60,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis','2019-02-24'),(68,12,76,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam','2018-08-08'),(69,10,20,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.','2019-09-12'),(70,18,43,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam','2018-06-21'),(71,91,33,'',3,'Lorem ipsum dolor','2019-09-23'),(72,42,38,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet','2018-08-03'),(73,18,75,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec','2019-05-26'),(74,9,31,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.','2020-06-14'),(75,95,37,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2019-02-27'),(76,6,52,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing','2019-12-02'),(77,29,29,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','2018-08-23'),(78,5,44,'',4,'Lorem ipsum dolor sit amet,','2019-07-22'),(79,50,27,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.','2019-02-19'),(80,44,98,'',2,'Lorem ipsum dolor sit','2019-06-01'),(81,39,47,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing','2018-08-22'),(82,20,92,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2019-10-27'),(83,83,33,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam','2019-06-17'),(84,77,90,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2018-07-18'),(85,50,36,'',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec','2019-09-20'),(86,16,6,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','2020-05-13'),(87,73,85,'',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet','2018-08-19'),(88,95,78,'',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer','2019-04-28'),(89,92,82,'',2,'Lorem ipsum dolor','2019-01-31'),(90,29,40,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et','2020-05-04'),(91,65,37,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2020-03-20'),(92,97,90,'',2,'Lorem ipsum dolor','2019-05-11'),(93,53,58,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.','2018-11-23'),(94,11,81,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut','2018-11-09'),(95,47,1,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.','2020-05-28'),(96,58,4,'',1,'Lorem','2018-09-09'),(97,90,23,'',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec','2019-12-27'),(98,11,61,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2019-06-28'),(99,55,77,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','2019-09-18'),(100,26,98,'',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut','2018-12-10'),(101,2,5,'',3,'Great BEER!!!','2019-06-24'),(102,8,12,'',1,'Terrible BEER!!!','2019-06-24'),(103,37,59,'',3,'OK BEER!!!','2019-06-24'),(108,101,101,'testuser3',1,'meh','2019-08-23'),(109,101,100,'testuser3',4,'Better than regular Heineken.','2019-08-26');
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beer`
--

DROP TABLE IF EXISTS `beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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

--
-- Temporary table structure for view `front_view`
--

DROP TABLE IF EXISTS `front_view`;
/*!50001 DROP VIEW IF EXISTS `front_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `front_view` AS SELECT 
 1 AS `Name`,
 1 AS `BrandName`,
 1 AS `Style`,
 1 AS `ABV`,
 1 AS `IBU`,
 1 AS `EstCal`,
 1 AS `AverageScore`,
 1 AS `TotalReviews`,
 1 AS `LastUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_Admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Battle','ZVY60ANA0LY','nunc@at.co.uk',NULL),(2,'Burns','SPP18PRV4MP','dolor@dictumauguemalesuada.net',NULL),(3,'Chen','PVI70ZTB1YA','libero.at@eget.org',NULL),(4,'Roberson','HHT61AVS3VZ','In.scelerisque.scelerisque@velitCraslorem.org',NULL),(5,'Benton','TIG72RMW3HC','ultrices.posuere.cubilia@Donecfeugiatmetus.ca',NULL),(6,'Douglas','AET80OMK9LD','a.tortor.Nunc@nasceturridiculus.co.uk',NULL),(7,'Beasley','XLN33IQN2DT','odio.auctor@necligula.edu',NULL),(8,'Powers','SNW14PGS0XX','justo.nec@tortordictum.net',NULL),(9,'Dunn','GVL65PSM0NG','scelerisque.lorem@In.co.uk',NULL),(10,'Burns','IBH35IEE1TH','Sed.nunc.est@arcu.org',NULL),(11,'Buckley','LOS88KSE6GU','Maecenas@convallisconvallis.co.uk',NULL),(12,'Haley','KDH28KJN6LM','odio.semper@cursus.com',NULL),(13,'Vasquez','FGX45UVC9BX','aliquam.eu@ametmassa.net',NULL),(14,'Foster','YEI29RVO4NN','et.malesuada.fames@CuraePhasellus.com',NULL),(15,'Randolph','TTX68PHS4LT','felis.adipiscing.fringilla@erat.org',NULL),(16,'Hurley','EPC47MNA8LP','facilisis@vitaemauris.ca',NULL),(17,'Taylor','ZXF07GRO0TM','a.sollicitudin@nisl.edu',NULL),(18,'Bird','TJN89XFS0AI','turpis@enimnisl.org',NULL),(19,'Baxter','YWN79TXB1GS','ac.turpis.egestas@Cumsociis.org',NULL),(20,'Blake','FEZ50BED9RR','dui.quis.accumsan@id.com',NULL),(21,'Oconnor','DFQ42ZYS9OK','et.magnis.dis@risus.edu',NULL),(22,'French','DOQ72GLL3OJ','Donec.egestas.Duis@infaucibus.co.uk',NULL),(23,'Noel','ASX94OPK3US','inceptos.hymenaeos.Mauris@metus.org',NULL),(24,'Fletcher','KJD58TGV4ZS','scelerisque.scelerisque@neceleifend.edu',NULL),(25,'Holland','BDI81VIC3AD','fames.ac.turpis@tristiqueac.edu',NULL),(26,'Stevenson','DXX77LGN0KU','in@malesuadautsem.co.uk',NULL),(27,'Bennett','PFJ49NYV2ZA','non.leo.Vivamus@velitAliquam.edu',NULL),(28,'Hayden','CQO48AAA5JH','nunc.nulla.vulputate@consectetueradipiscingelit.net',NULL),(29,'Merritt','RCP06GEG5SZ','enim@mi.edu',NULL),(30,'Brennan','HAC65VDA0KN','Suspendisse@velest.ca',NULL),(31,'Brooks','CTH68CKJ9YG','nisl.Nulla.eu@dictum.net',NULL),(32,'Dorsey','IQW30BVH5QX','diam.Proin@et.ca',NULL),(33,'Carr','MKU00WSU0PE','dignissim.lacus.Aliquam@orcisemeget.net',NULL),(34,'Higgins','IGA19TES4DS','libero.est@lectus.com',NULL),(35,'Huffman','RVL67EBV6KC','luctus.ipsum@risusInmi.com',NULL),(36,'Martinez','ALK83PWV5AN','facilisis@ametmetusAliquam.com',NULL),(37,'Livingston','LDR60JKB0JO','ipsum@Sedeunibh.co.uk',NULL),(38,'Lucas','BQR27MSI8NB','interdum@Phasellusdapibusquam.edu',NULL),(39,'Ewing','RCI81ZBB2SP','mauris.Morbi@Maurisutquam.net',NULL),(40,'Turner','IDG20VVY6YS','augue.malesuada@rhoncus.net',NULL),(41,'Newman','MZO92FVP4EN','Sed.eget.lacus@perconubianostra.net',NULL),(42,'Meyers','LOA04UVL2HY','cursus.vestibulum.Mauris@nec.com',NULL),(43,'Barry','FUK92LQR0KH','in.dolor@amet.ca',NULL),(44,'Baird','GHA44ZMR2ST','Quisque@ultricies.co.uk',NULL),(45,'Nunez','PBA49SLT4QF','dui.nec@dis.edu',NULL),(46,'Olsen','ORN17SJX1JT','vitae.dolor.Donec@nasceturridiculusmus.ca',NULL),(47,'Maddox','HCM33KBY7GR','lorem@sit.net',NULL),(48,'Wilson','AKJ29JXZ3BJ','velit.eget.laoreet@vulputaterisus.org',NULL),(49,'Pacheco','DBQ80DNW9MX','nisi.dictum@felisDonectempor.co.uk',NULL),(50,'Holden','ZIQ43SAQ0PR','purus.accumsan.interdum@feugiatSed.co.uk',NULL),(51,'Riggs','GEY88LOE9FN','pretium.aliquet@orciUtsemper.org',NULL),(52,'Jefferson','PGK87WYM5IO','luctus.lobortis@urna.com',NULL),(53,'Wright','ABC21FZI1YB','scelerisque@malesuadavel.org',NULL),(54,'Mathews','XDT87FFM8GX','Curabitur.vel.lectus@egestas.ca',NULL),(55,'Cole','DLC67YUS9RT','ipsum.nunc.id@egestasSed.ca',NULL),(56,'Pacheco','DXP18YFD2MW','et.ultrices@posuerecubiliaCurae.net',NULL),(57,'Potts','YKO25RRW3BW','dolor@etmagnisdis.co.uk',NULL),(58,'Noel','EUH61RCD4SV','justo.faucibus@orciconsectetuereuismod.net',NULL),(59,'Rich','VKE57NSN6QP','eu.nulla.at@Sedcongueelit.edu',NULL),(60,'Hensley','ULW33NGV2NF','elit.a.feugiat@mifringillami.ca',NULL),(61,'Bradford','QVL18VCY2PR','dui.nec.urna@magnis.ca',NULL),(62,'Miranda','SKV86UGA7CS','lectus.Nullam.suscipit@ornarefacilisiseget.net',NULL),(63,'Rocha','KNM30WNA9MJ','Phasellus.elit.pede@anteblanditviverra.org',NULL),(64,'Boone','BLA59UWS6ZE','Nunc.sollicitudin.commodo@semperrutrumFusce.ca',NULL),(65,'Middleton','ZFK51OEF2JG','commodo.tincidunt@et.edu',NULL),(66,'Rosario','RJC90SQA0WS','molestie.pharetra@laciniavitaesodales.org',NULL),(67,'Cochran','FMT26IUF3EK','mauris.blandit.mattis@Donecestmauris.org',NULL),(68,'Wood','JRZ12WDD7VP','non@Nullamscelerisqueneque.ca',NULL),(69,'Bolton','QNA84RQS3LZ','lorem@Sedpharetrafelis.ca',NULL),(70,'Cooper','QVU79DGD7VG','risus.Nulla@Sed.net',NULL),(71,'Walter','RRZ75CUW0PH','accumsan.convallis.ante@atnisi.co.uk',NULL),(72,'Slater','GUP81EKI3JT','egestas@NullainterdumCurabitur.net',NULL),(73,'Nichols','QOE04YXT1IS','mus@dictumeu.com',NULL),(74,'Baxter','SCW13NXL9BM','enim.Mauris.quis@sodalesat.org',NULL),(75,'Carson','RGE91SMQ0WD','rhoncus@parturientmontesnascetur.org',NULL),(76,'Yates','EYQ30EKN1OO','risus.In.mi@quispedePraesent.ca',NULL),(77,'Davis','TAY63ZYK4OQ','metus.In@mi.ca',NULL),(78,'Wiley','IIA46DGW5DP','vitae@ipsum.ca',NULL),(79,'Strong','XSE44BBS3AD','a.facilisis.non@volutpatnuncsit.com',NULL),(80,'Callahan','CIS56IQF4ZJ','non.ante@dui.com',NULL),(81,'Ratliff','ADX54CPO9DI','ipsum.Suspendisse.non@adipiscingnon.com',NULL),(82,'Jacobson','GQZ67MGY5QD','sem.Pellentesque.ut@idmollis.co.uk',NULL),(83,'Holmes','JGO87WGU8ZM','Aenean.euismod.mauris@nonhendrerit.ca',NULL),(84,'Briggs','NXV53GUY3CR','semper.pretium@Suspendisse.ca',NULL),(85,'Valenzuela','XEP62YAO4GR','aliquet.diam.Sed@nonummy.com',NULL),(86,'Guzman','ZXC03TSC4DM','neque.In@rutrumloremac.co.uk',NULL),(87,'Hall','BYL67VFR5VK','Quisque.porttitor@malesuadamalesuada.ca',NULL),(88,'Garrett','NIV11WOB8WQ','cursus@est.ca',NULL),(89,'Gilliam','FVZ80XGW4KH','id.ante.Nunc@tincidunt.com',NULL),(90,'Reeves','SWK11VCQ4AY','eros.Proin@porttitor.ca',NULL),(91,'Mills','SOP48DWL5MR','mattis@Maecenasornareegestas.ca',NULL),(92,'Hull','DCK69DSC3QK','at.nisi@sagittisfelis.co.uk',NULL),(93,'Fitzgerald','PXI65HCL0KB','dictum.Proin@telluseuaugue.net',NULL),(94,'Holden','UTN35LTP7UG','netus.et.malesuada@magnaLorem.co.uk',NULL),(95,'Henderson','STR70FNF0QJ','erat.eget@natoquepenatibuset.net',NULL),(96,'Stephenson','TEI73TNM7AW','molestie.orci.tincidunt@veliteget.com',NULL),(97,'Manning','JCG89ERT9YV','lorem@risusat.ca',NULL),(98,'Prince','GCW99NTI6MT','sagittis@amet.org',NULL),(99,'Owen','YOT58JWV5WV','adipiscing.Mauris.molestie@nibh.co.uk',NULL),(100,'Carter','WWQ39RZQ1JP','volutpat@egestasadui.ca',NULL),(101,'testuser3','$5$rounds=535000$A3boeXppW9/ySsXT$ods4/1tE61TDBzhTe0CHaTLwoPFt1.zUtx7i3fGopaD','tester@test.com',NULL),(102,'testuser','$5$rounds=535000$LwCTEruKTPN2Lq5W$P5YLbfG78GPm9VxMldybLZnbNYfV1utexz9xrjwyT5/','tester@test.com',NULL),(103,'testuser2','$5$rounds=535000$0wQvtIwZ4UF0shDv$LekWqtMxqTpELEpxRaBFAVhUi6DH6QBeKqWX/LfpqW6','tester@test.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `front_view`
--

/*!50001 DROP VIEW IF EXISTS `front_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `front_view` AS select `beer`.`name` AS `Name`,`beer`.`brandName` AS `BrandName`,`beer`.`Style` AS `Style`,`beer`.`abv` AS `ABV`,`beer`.`ibu` AS `IBU`,`beer`.`estCal` AS `EstCal`,avg(`Review`.`score`) AS `AverageScore`,count(`beer`.`id`) AS `TotalReviews`,max(`Review`.`date`) AS `LastUpdated` from (`Review` join `beer`) where (`beer`.`id` = `Review`.`beer_id`) group by `Review`.`beer_id`,`beer`.`id` order by max(`Review`.`date`) desc */;
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

-- Dump completed on 2019-11-02 15:44:23
