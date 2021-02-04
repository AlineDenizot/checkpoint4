-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: checkpoint4
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Velit itaque ipsum autem quidem enim.','Mollitia dolores libero explicabo nemo sequi quis. Quia quia enim qui dicta recusandae vel. Ea deserunt esse eveniet qui.','2020-12-10 18:35:36','https://via.placeholder.com/150','UX design','mollitia'),(2,'Beatae sed est maxime.','Ipsum rem enim ut et labore aut. Magni optio placeat delectus. Aut placeat id ducimus quasi nihil.','2020-10-14 12:22:19','https://via.placeholder.com/150','Back-end','ipsum'),(3,'Omnis tempora ipsa ut aliquam.','Et numquam et voluptatibus deserunt. Dolor nisi error qui perspiciatis. Deleniti sit ab tenetur.','2018-02-22 11:29:15','https://via.placeholder.com/150','Front-end','et-numquam'),(4,'Iure sed nobis occaecati qui.','Ipsam similique sed illo debitis. Et fuga et aut ducimus. Aut esse nobis possimus fuga. Ut voluptate et dolor sequi.','2018-06-10 03:56:40','https://via.placeholder.com/150','Front-end','ipsam'),(5,'Sint assumenda perspiciatis ullam pariatur laudantium.','Hic sed aliquam quas vel aliquam eaque nemo. Cum qui id ea officia distinctio nam. Similique similique reiciendis qui velit quibusdam repellat quae.','2018-10-18 23:49:41','https://via.placeholder.com/150','UX design','sint'),(6,'Laudantium nisi accusantium aspernatur est.','Nesciunt consectetur velit quaerat consequatur ea id. Qui et voluptas quibusdam iusto et beatae. Nostrum nostrum eos quibusdam illo nihil tempora.','2019-02-28 07:06:29','https://via.placeholder.com/150','Front-end','laudantium'),(7,'Magni in labore velit hic.','Recusandae quia illo quidem dolore omnis. Harum harum consequuntur quibusdam ut.','2018-12-12 20:47:40','https://via.placeholder.com/150','Front-end','magni-in'),(8,'Quas quia ad qui ut.','Provident tempora dolor aliquid debitis qui facere velit. Aut adipisci atque dolorem incidunt vero. Animi mollitia quis occaecati eligendi dolor. Sapiente architecto enim ab ullam.','2019-10-28 22:09:10','https://via.placeholder.com/150','Back-end','quas-quia'),(9,'Qui harum ea itaque sit.','Quis vero vero odio. Rem similique repudiandae et est. Assumenda ut tempora ut aut nihil dolorum quia.','2020-01-30 22:43:47','https://via.placeholder.com/150','Front-end','qui-harum'),(10,'Ut aspernatur quia voluptas aliquid.','Voluptatem amet est non est ut amet sed. Eveniet similique libero assumenda dignissimos libero quam. Tempore voluptatem sint nam.','2019-09-29 23:12:11','https://via.placeholder.com/150','UX design','ut-aspernatur'),(11,'Harum commodi nobis.','Nemo nihil harum architecto quis unde in. Odio expedita sunt voluptas ut ipsam consequatur facilis. Illo et voluptas voluptate esse aliquam ut molestiae.','2018-08-05 09:48:49','https://via.placeholder.com/150','Front-end','harum'),(12,'Natus libero voluptatem ut cumque quidem.','Eaque rerum veritatis odit. Ea saepe iure doloremque ipsa. Qui quia voluptas sed et.','2019-06-24 07:04:19','https://via.placeholder.com/150','Back-end','natus'),(13,'Aliquid modi pariatur voluptatem voluptatibus esse.','Excepturi unde sint incidunt exercitationem ut dignissimos sunt. Voluptatibus veniam eos aliquid officiis non vel.','2018-02-19 14:19:47','https://via.placeholder.com/150','Front-end','aliquid'),(14,'Ut dolor officia.','Dolor ab rerum corporis autem aut amet nisi. Et explicabo minima assumenda aut. Quae quisquam similique rerum ut nihil.','2020-06-03 16:33:18','https://via.placeholder.com/150','UX design','ut-dolor'),(15,'Vitae et placeat ipsum vel.','Quae itaque eius rerum sunt adipisci nesciunt aliquam. Illo hic aut corrupti. Similique nihil quas voluptates accusantium consequatur qui dolores.','2019-01-31 23:43:56','https://via.placeholder.com/150','Front-end','vitae'),(16,'Accusamus consequatur ut quod et.','Ut nihil provident consequuntur asperiores pariatur quasi ut cum. Non in unde saepe ipsa. Laudantium necessitatibus sit in minima.','2020-02-05 18:23:49','https://via.placeholder.com/150','Front-end','accusamu'),(17,'A quidem deserunt cumque.','Mollitia dolore voluptate dicta quo quisquam. Accusamus consequatur necessitatibus commodi qui et iusto animi.','2020-03-24 14:29:40','https://via.placeholder.com/150','Back-end','a-quidem'),(18,'Blanditiis voluptas quae et consequatur animi.','Nisi iure unde in. Sapiente quia assumenda optio. Error nemo in iusto consequatur itaque et sint.','2018-04-26 01:38:47','https://via.placeholder.com/150','Back-end','blanditis'),(19,'Fugiat fugiat architecto.','Sequi corporis ipsum ipsam sed. Eos placeat praesentium accusantium eos. Corporis nisi non numquam debitis.','2019-10-27 04:22:27','https://via.placeholder.com/150','Front-end','fugiat'),(20,'In enim praesentium ipsam dolor aut.','Qui adipisci et quis dicta quasi reprehenderit dignissimos. Dicta aperiam autem illo sit necessitatibus voluptas qui.','2020-01-25 10:29:41','https://via.placeholder.com/150','Back-end','in-enim'),(21,'Quisquam ut qui laudantium quam.','Ut autem quas et autem dicta tempora. Ea sunt nemo accusamus est adipisci voluptas blanditiis. Hic ut odio aut et. Est expedita quis et sint doloremque.','2020-07-29 23:11:35','https://via.placeholder.com/150','Back-end','quisquam');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`),
  KEY `IDX_9474526CF675F31B` (`author_id`),
  CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,2,'Super article !',2,'2021-02-01 10:02:02'),(5,2,'Tip top',2,'2021-02-03 23:54:14');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20210203105321','2021-02-03 11:53:28',117),('DoctrineMigrations\\Version20210203105833','2021-02-03 11:58:46',42);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Projet personnel','https://github.com/AlineDenizot/integration_training','screencapture-inte.png','Exemple d\'intégration pour entrainement personnel','Intégration'),(2,'Projet personnel','https://github.com/AlineDenizot/training_flexbox','screencapture-inte2.png','Exemple d\'utilisation de flexbox dans un projet à partir d\'un exemple photographique','Intégration'),(3,'Entretien technique','https://github.com/AlineDenizot/WildCodeSchool_projet','screencapture-inte3.png','Site réalisé suivant un wireframe afin de présenter mes compétences en test technique d\'entrée à la Wild Code School','Test technique'),(4,'Projet scolaire','https://github.com/AlineDenizot/projet1-CV','screencapture-inte4.png','Site réalisé en équipe les premieres semaines de la formation de développeuse web. Réalisation de l\'espace contact avec liaison en DB ','Projet de groupe'),(5,'Projet scolaire','https://github.com/AlineDenizot/projet2-StrasZik','screencapture-inte5.png','Site réalisé en groupe afin de créer un site vitrine avec boutique pour groupe de musique. Espace administrateur pour modifier toutes les informations du site et récupérer les commandes réalisée sur le site','Projet de groupe'),(6,'Projet client','En cours','screencapture-inte5.png','Site réalisé pour créer une plateforme numérique personnalisée aux partenaire d\'Orators afin d\'accéder aux Masterclass en fonction de leur formule. Accès administrateur pour générer les informations relatifs aux contenus vidéos et animation du blog','Projet client');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Aline','Admin','admin@gmail.com','$argon2id$v=19$m=65536,t=4,p=1$gZLEauCC0sHZscIUDAYcsw$GvSRBc8ZmdEf0Sky66gXvsH68huocODXCn8hLwGT1c4','[\"ROLE_ADMIN\"]'),(3,'User','User','user@gmail.com','$argon2id$v=19$m=65536,t=4,p=1$iG9zpOCYsJ8aThUJ96hjfA$Wq/1qXSHAUnYrx0+nzgZsv0Dvzp3dweuAJQHb1DqmSQ','[\"ROLE_USER\"]');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 16:34:17
