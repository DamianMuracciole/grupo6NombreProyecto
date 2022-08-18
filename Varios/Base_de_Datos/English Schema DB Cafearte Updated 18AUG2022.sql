CREATE DATABASE  IF NOT EXISTS `cafearte_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `cafearte_db`;
-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: cafearte_db
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `weight` int(10) NOT NULL,
  `detail` varchar(1000) COLLATE utf8_bin NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) COLLATE utf8_bin NOT NULL,
  `session` varchar(50) COLLATE utf8_bin NOT NULL,
  `image` varchar(200) COLLATE utf8_bin NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Cafe Etiopia nuevo',250,'El café etíope rece a grandes altitudes, lo que produce un grano denso y duro. Los granos más densos tienden a contener una mayor cantidad de azúcares y precursores de sabor, lo cual resulta en más sabores luego del tueste. Para elegir un perfil de tueste efectivo, la clave es conocer la densidad del grano.',500.00,'Molido','Destacado','cafeEtiopia.jpg',0,'A',NULL,NULL),(2,'Cafe Etiopia',500,'El café etíope crece a grandes altitudes, lo que produce un grano denso y duro. Los granos más densos tienden a contener una mayor cantidad de azúcares y precursores de sabor, lo cual resulta en más sabores luego del tueste. Para elegir un perfil de tueste efectivo, la clave es conocer la densidad del grano.',999.00,'Molido','Destacado','cafeEtiopia.jpg',0,'A',NULL,NULL),(3,'Cafe Brasil Tres',250,'El café de Brasil corresponde a la variedad arábica, por ello predomina el sabor dulzón, similar a los cafés procedentes de África, aunque sin la acidez característica de estos. El café de Brasil se caracteriza por su aroma suave y fino y cuerpo alto.',489.00,'Capsulas','Oferta','imagenescafeBrasil.jpg',0,'A',NULL,NULL),(4,'Cafe Brasil',500,'El café de Brasil corresponde a la variedad arábica, por ello predomina el sabor dulzón, similar a los cafés procedentes de África, aunque sin la acidez característica de estos. El café de Brasil se caracteriza por su aroma suave y fino y cuerpo alto.',889.00,'Molido','Destacado','cafeBrasil.jpg',0,'A',NULL,NULL),(5,'Cafe Colombia',250,'Se trata de una variante de grano 100% arábica. Una de las principales características de este café, es que se siembra a grandes alturas, principalmente en zonas montañosas. ',500.00,'En Granos','Destacado','cafeColombia.jpg',0,'A',NULL,NULL),(6,'Cafe Colombia',500,'Se trata de una variante de grano 100% arábica. Una de las principales características de este café, es que se siembra a grandes alturas, principalmente en zonas montañosas. ',980.00,'En Granos','Normal','cafeColombia.jpg',0,'A',NULL,NULL),(7,'Cafe Mexico',250,'Café de especialidad mexicano, de cuerpo equilibrado y de acidez cítrica media. Cultivado a lo largo de la frontera sur, donde las montañas y las selvas le dan a las plantas los nutrientes y la altitud necesaria para un excelente café.',466.00,'Molido','Oferta','cafeMexico.jpg',0,'A',NULL,NULL),(8,'Cafe Mexico',500,'Café de especialidad mexicano, de cuerpo equilibrado y de acidez cítrica media. Cultivado a lo largo de la frontera sur, donde las montañas y las selvas le dan a las plantas los nutrientes y la altitud necesaria para un excelente café.',950.00,'En Granos','Normal','cafeMexico.jpg',0,'A',NULL,NULL),(9,'Cafe El Salvador',250,'Café 100% El Salvador es un rico café de cuerpo completo con un sabor suave y sofisticado y un aroma intenso.',488.00,'Molido','Destacado','cafeMexico.jpg',0,'A',NULL,NULL),(10,'Cafe El Salvador',500,'Café 100% El Salvador es un rico café de cuerpo completo con un sabor suave y sofisticado y un aroma intenso.',899.00,'En Granos','Normal','cafeMexico.jpg',0,'A',NULL,NULL),(11,'Cafe Honduras',250,'Se trata de una variante de grano 100% arábica. Se caracteriza por ser más aromático, equilibrado y con una acidez muy agradable. En comparación con el robusta, tiene menos cafeína, entre un 0,7- 1,5%. El nivel de cafeína del robusta oscila entre 2 y 4% o más. Es, sin duda, un café muy elegante con un perfecto equilibrio entre sabor y cuerpo. En el caso del café descafeinado de este tipo de grano, el porcentaje se reduce al mínimo, lo que hace que puedas disfrutar del café hasta por la noche.',399.00,'En Granos','Normal','cafeMexico.jpg',0,'A',NULL,NULL),(12,'Cafe Honduras',250,'Se trata de una variante de grano 100% arábica. Se caracteriza por ser más aromático, equilibrado y con una acidez muy agradable. En comparación con el robusta, tiene menos cafeína, entre un 0,7- 1,5%. El nivel de cafeína del robusta oscila entre 2 y 4% o más. Es, sin duda, un café muy elegante con un perfecto equilibrio entre sabor y cuerpo. En el caso del café descafeinado de este tipo de grano, el porcentaje se reduce al mínimo, lo que hace que puedas disfrutar del café hasta por la noche.',399.00,'Molido','Normal','cafeMexico.jpg',0,'A',NULL,NULL),(13,'Pack Trio Varios Paises',500,'Pack compuesto por 250 de Café Colombia, 250 de Café Brasil y 250 de Cafe Etiopia. Se sumo café de Costa Rica.\r\nSigo agregando cosas aca. Sigoooooo',1500.00,'Molido','Destacado','OfertaPackTrio.jpg',0,'A',NULL,NULL),(14,'Pack Trio',500,'Pack compuesto por 500 de Cafe Colombia, 500 de Cafe Brasil y 500 de Cafe Etiopia',2699.00,'Molido','Oferta','OfertaPackTrio.jpg',0,'A',NULL,NULL),(15,'Cafe Alajuela',3000,'Es un cafe de Alajuela que sube por el norte',500.00,'En Granos','Normal','imagenCafeAlajuela.jpg',0,'A',NULL,NULL),(16,'Cafe Tarrazu',350,'Es un cafe de montaña',3000.00,'Capsulas','Normal','imagencafeCostaRica.JPG',0,'A',NULL,NULL),(17,'',0,'',0.00,'En Granos','Normal','default-image.png',0,'A','2022-07-30 17:01:12','2022-07-30 17:01:12'),(18,'Cafe Volcan',300,'Es un cafe volcancio del volcan',200000.00,'En Granos','Normal','imagecafe_01.JPG',3,'A','2022-07-30 19:30:53','2022-07-30 19:30:53'),(19,'Cafe Volcano',350,'El cafe volcano viene de un volcan',2000.00,'En Granos','Destacado','imagecafe_01.JPG',34,'A','2022-07-31 16:51:24','2022-07-31 16:51:24');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_purchases`
--

DROP TABLE IF EXISTS `products_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_purchases` (
  `id` int(10) NOT NULL,
  `products_id` int(10) NOT NULL,
  `purchases_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_compras_productos_id_foreign_idx` (`products_id`),
  KEY `productos_compras_compras_id_foreign_idx` (`purchases_id`),
  CONSTRAINT `products_purchases_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_purchases_purchases_id_foreign` FOREIGN KEY (`purchases_id`) REFERENCES `purchases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_purchases`
--

LOCK TABLES `products_purchases` WRITE;
/*!40000 ALTER TABLE `products_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` int(10) NOT NULL,
  `invoice_num` int(10) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `prod_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `prod_price` decimal(10,2) DEFAULT NULL,
  `total_amt` decimal(10,2) DEFAULT NULL,
  `users_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compras_usuario_id_foreign_idx` (`users_id`),
  KEY `purchases_users_id_foreign_idx` (`users_id`),
  CONSTRAINT `purchases_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rols`
--

DROP TABLE IF EXISTS `rols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rols` (
  `id` int(10) NOT NULL,
  `rol_name` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rols_id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rols`
--

LOCK TABLES `rols` WRITE;
/*!40000 ALTER TABLE `rols` DISABLE KEYS */;
INSERT INTO `rols` VALUES (1,'user',NULL,NULL),(2,'admin',NULL,NULL),(3,'guest',NULL,NULL);
/*!40000 ALTER TABLE `rols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `confirm_password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `rols_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_rols_id_foreign_idx` (`rols_id`),
  CONSTRAINT `users_rols_id_foreign` FOREIGN KEY (`rols_id`) REFERENCES `rols` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Almeda','Shieber','ashieber0','ashieber0@mayoclinic.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(2,'Robena','Hentzeler','rhentzeler1','rhentzeler1@ocn.ne.jp','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(3,'Darelle','Brogiotti','dbrogiotti2','dbrogiotti2@behance.net','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(4,'Paulo','Hutley','phutley3','phutley3@gravatar.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(5,'Lacee','Durrell','ldurrell4','ldurrell4@goo.gl','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(6,'Melamie','Bofield','mbofield5','mbofield5@i2i.jp','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(7,'Dorri','Riseborough','driseborough6','driseborough6@instagram.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(8,'Michaella','Narramore','mnarramore7','mnarramore7@mediafire.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(9,'Gothart','Prestidge','gprestidge8','gprestidge8@rambler.ru','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(10,'Herbert','Skrzynski','hskrzynski9','hskrzynski9@amazon.co.jp','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(11,'Sianna','Landrieu','slandrieua','slandrieua@vinaora.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(12,'Zonda','Di Franceshci','zdifranceshcib','zdifranceshcib@goodreads.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(13,'Ronny','Sleith','rsleithc','rsleithc@scientificamerican.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(14,'Conroy','Geratt','cgerattd','cgerattd@japanpost.jp','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(15,'Giffy','Boggas','gboggase','gboggase@cocolog-nifty.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(16,'Justen','Brooking','jbrookingf','jbrookingf@ifeng.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(17,'Vincents','Jorn','vjorng','vjorng@oaic.gov.au','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Vincents.jpg','A',1,NULL,NULL),(18,'Philly','Cowlam','pcowlamh','pcowlamh@angelfire.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Philly.jpg','A',1,NULL,NULL),(19,'Zorina','Folonin','zfolonini','zfolonini@ox.ac.uk','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','default.png','A',1,NULL,NULL),(20,'Regine','Artinstall','rartinstallj','rartinstallj@omniture.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Regine.jpg','A',1,NULL,NULL),(21,'Benjamen','Marler','bmarlerk','bmarlerk@samsung.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Benjamen.jpg','A',1,NULL,NULL),(22,'Lorraine','Fripps','lfrippsl','lfrippsl@godaddy.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Lorraine.jpg','A',1,NULL,NULL),(23,'Konstantin','McKitterick','kmckitterickm','kmckitterickm@mashable.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Konstantin.jpg','A',1,NULL,NULL),(24,'Nanon','Headford','nheadfordn','nheadfordn@sourceforge.net','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Nanon.jpg','A',1,NULL,NULL),(25,'Hill','Isbell','hisbello','hisbello@berkeley.edu','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Hill.jpg','A',1,NULL,NULL),(26,'Darb','Thunders','dthundersp','dthundersp@phpbb.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Darb.jpg','A',1,NULL,NULL),(27,'Demetra','Horlick','dhorlickq','dhorlickq@4shared.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Demetra.jpg','A',1,NULL,NULL),(28,'Ignazio','Kattenhorn','ikattenhornr','ikattenhornr@prweb.com','0000-00-00','pNalKjyJ','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Ignazio.jpg','A',1,NULL,NULL),(29,'Harriett','Yacobsohn','hyacobsohns','hyacobsohns@cbc.ca','0000-00-00','2WRTkYQP','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Harriett.jpg','A',1,NULL,NULL),(30,'Frankie','Celier','fceliert','fceliert@latimes.com','0000-00-00','3XQqalbIUo','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','Frankie.jpg','A',1,NULL,NULL),(31,'Luis','Martirena','vuelveDanubio','luismartirena@yahoo.com','2022-05-31','$2a$10$fYTNSQER4W34pVQLeRHs3ub/D/Y1Lzvgflvp0e1IyvbxUCiN5qOBC','$2a$10$vfBhX6Dqnymv0Ij68O7NZuiiFN9JtcKCCjZR4DzBu7e7ayr63IVw6','1658457731199_img.JPG','D',2,NULL,'2022-07-22 02:42:11'),(32,'Pedro','Ramirez','pepito','pepito@yahoo.com','2022-06-28','$2a$10$9ME9FnNenYyyunIEszTm9OTf0QFiKcM7fGFggrp2TnLyc8//219p6','$2a$10$itKBTb6X5b/tje26.CxLROMHHY8Al/1u7y5mVBwSWzj9kt0WbzSXm','1657819703446_img.JPG','A',1,'2022-07-14 17:28:23','2022-07-14 17:28:23'),(33,'Jose','Perez','jose','jose@jose.com','2022-06-30','$2a$10$MWZgikGjlGh4LDcI3nL5YubB9HtTjrB20SR0fjH/bdnehgVHOziU.','$2a$10$trIUt4tuhBu4vgYuU6icwOUd.EIMKzgcCiiAfOPT5tAf434DKkaF.','1657836927624_img.JPG','A',2,'2022-07-14 22:15:27','2022-07-14 22:15:27'),(34,'Pablo','Martirena','pmartirena','pablo@pablo.com','2022-06-29','$2a$10$rGLHo.EN0MDJXTsiLWV.JuEIyj8xYg1zT2ff1jsbaBnbxTbYsyljK','$2a$10$IRr82k/tpCCohKuHqSD03.2dEPqo/wV9jp7c7fiGJA35Z7pBmmV8S','1657926143018_img.JPG','A',2,'2022-07-15 23:02:23','2022-07-15 23:02:23'),(35,'Luis','Martirena','pepito','luismartirena@lm.com','2022-06-30','$2a$10$WEyG0QfzGuskM/wkB3AnReZX3uF6hEmK7r6mHU.FYl4Udpy/EdT72','$2a$10$57ag.C7fKnexij/qIrkJoOyyY.p6k27rn3catY.9f4Vs/isM8PpY.','1659288342040_img.JPG','A',NULL,'2022-07-31 17:25:42','2022-07-31 17:25:42');
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

-- Dump completed on 2022-08-18 16:05:18
