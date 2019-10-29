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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-28 16:04:46
