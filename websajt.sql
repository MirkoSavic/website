-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: websajt
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `post_topic`
--

DROP TABLE IF EXISTS `post_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id_UNIQUE` (`post_id`),
  CONSTRAINT `post_id` FOREIGN KEY (`id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `topics_id` FOREIGN KEY (`id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_topic`
--

LOCK TABLES `post_topic` WRITE;
/*!40000 ALTER TABLE `post_topic` DISABLE KEYS */;
INSERT INTO `post_topic` VALUES (1,1,1);
/*!40000 ALTER TABLE `post_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Facebook ulaÅ¾e viÅ¡e od pola milijarde dolara u tehnologiju za ','facebook-ula-e-vi-e-od-pola-milijarde-dolara-u-tehnologiju-za-',0,'','<p>Facebook je objavio da su preuzeli platformu koja stvara raÄunarske korisniÄke interfejse kontrolisane izravno ljudskim neuronima, CTRL-labs. Iako finansijski detalji ove akvizicije nisu objavljeni, Bloomberg je objavio informaciju dobijenu iz pouzdanih izvora koja govori da je Zuckerberg-ova kompanija platila izmeÄ‘u pola i jedne milijarde ameriÄkih dolara za ovaj Äetiri godine star startup.</p>\r\n\r\n<p>CTRL-labs se, sliÄno kao Neuralnik, bavi &quot;Äitanjem misli&quot;, odnosno tumaÄenjem signala koje mozak &scaron;alje u delove ljudskog tela putem neurona, ne bi li se ti signali mogli upotrijebiti kao inputi za kontrolu elektronskih ureÄ‘aja. U CTRL-labsu imaju viziju izraditi narukvicu koja bi mogla tumaÄiti neuronske signale i pretvarati ih u naredbe raÄunaru, &scaron;to bi, smatraju, raÄunare stavilo u poziciju prirodnog produÅ¾etka ljudskog tela.</p>\r\n\r\n<p>Potpredsednik Facebook-ovog odeljenja za AR i VR Andrew Bosworth u svojoj je objavi ukratko pojasnio o kakvoj se ovde tehnologiji radi. Prema njegovim reÄima razvoj ovih tehnologija dove&scaron;Ä‡e do intuitivnijih naÄina interakcije sa raÄunarima tako &scaron;to Ä‡e oni moÄ‡i direktno pretvarati elektriÄne signale iz ljudske mreÅ¾e neurona u digitalne naredbe. Krajnji cilj je ovakav korisniÄki interfejs, koji direktno povezuje mozak i raÄunar (brain-computer interface), uklopiti u iskustva virtualne i pro&scaron;irene stvarnosti, te iz korena promeniti naÄin na koji ljudi upravljaju raÄunarima</p>\r\n\r\n<p>Narukvica koju u CTRL-labsu razvijaju jo&scaron; uvek je duboko u fazi prototipa, ali u Facebook-u se nadaju da Ä‡e uz njihovu pomoÄ‡ u komercijalnu primenu stiÄ‡i ne&scaron;to ranije nego &scaron;to je to sada u planu.</p>\r\n',1,'2019-10-18 20:05:01','2019-10-18 19:58:26'),(10,1,'Sportska jesen','sportska-jesen',0,'','<p>&quot;Sportsko penjanje nije nekontrolisano i opasno penjanje po stenama i zgradama bez opreme i za&scaron;tite. Naprotiv, reÄ je o savremenom i bezbednom sportu, koji ima vi&scaron;edecenijsku tradiciju. U pitanju je aktivnost koja zahteva izvoÄ‘enje odreÄ‘enih pokreta na prirodnim ili ve&scaron;taÄkim stenama. Zbog takve prirode, ova disciplina razvija kod pojedinca paÅ¾nju, koncentraciju i psiholo&scaron;ki ga unapreÄ‘uje. Sportsko penjanje Ä‡e 2020. godine postati i olimpijski sport&quot;, izjavio je Branko Kockica, instruktor i trener u PenjaÄkom klubu Mirijevo, u saradnji sa kojim se organizuje ceo program.</p>\r\n',1,'2019-10-19 11:24:50','2019-10-19 11:14:24'),(19,1,'JAPANCI ODUÅ EVILI ÄOKOVIÄ†A','japanci-odu-evili-okovi-a',0,'','&lt;p&gt;Najbolji teniser sveta Novak ÄokoviÄ‡ odradio je trening pred poÄetak turnira. ÄokoviÄ‡ Ä‡e prvi put u karijeri nastupiti u prestonici Japana.&lt;/p&gt;\r\n\r\n&lt;p&gt;Srpski teniser se za poÄetak turnira pripremao sa mlaÄ‘im sunarodnikom Miomiorom KecmanoviÄ‡em, a na treningu pred start takmiÄenja, radio je pred solidno popunjenim tribinama. Prvi reket sveta trenirao je skoro sat i po vremena, posle Äega je vreme proveo druÅ¾eÄ‡i se sa navijaÄima.&lt;/p&gt;\r\n',1,'2019-10-19 11:57:00','2019-10-19 11:57:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'IT','slug: Informacione Tehnologije'),(2,'Sport','sport'),(3,'Razno','Slug: Razno');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mirko','hgmirko@gmail.com','Author','123','2019-10-14 22:00:00','2019-10-17 22:00:00'),(10,'autor','autor@gmail.com','Admin','202cb962ac59075b964b07152d234b70','2019-10-18 18:25:00','2019-10-18 18:25:00'),(11,'sava','sava@gmail.com','Author','202cb962ac59075b964b07152d234b70','2019-10-18 18:43:34','2019-10-18 18:43:34');
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

-- Dump completed on 2019-10-19 16:10:38
