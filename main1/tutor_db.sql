-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: tutor_db
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `assitance`
--

DROP TABLE IF EXISTS `assitance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assitance` (
  `assitance_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_assitance_type` int(11) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL,
  `id_usr_student` int(11) DEFAULT NULL,
  `id_subject` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`assitance_id`),
  KEY `fk_id_assitance_type_idx` (`id_assitance_type`),
  KEY `fk_ assitance_course_idx` (`id_course`),
  KEY `fk_assitance_usr_idx` (`id_usr_student`),
  KEY `fk_ assitance_subject_idx` (`id_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assitance`
--

LOCK TABLES `assitance` WRITE;
/*!40000 ALTER TABLE `assitance` DISABLE KEYS */;
INSERT INTO `assitance` VALUES (2,1,1,11,9,1,'2019-01-23 19:52:42',NULL),(16,1,1,11,9,1,'2019-01-29 18:15:15',NULL),(17,1,1,11,9,1,'2019-01-29 18:20:13',NULL),(18,2,1,11,9,1,'2019-01-29 18:20:27',NULL),(19,1,1,13,9,1,'2019-01-29 18:20:48',NULL),(20,1,1,11,9,1,'2019-01-29 18:21:30',NULL),(25,1,1,11,9,1,'2019-01-29 18:28:49',NULL),(26,1,1,11,9,1,'2019-01-29 18:28:55',NULL),(27,1,1,11,9,1,'2019-01-29 18:28:55',NULL),(28,1,1,11,9,1,'2019-01-29 18:28:56',NULL),(29,1,1,11,9,1,'2019-01-29 18:28:57',NULL),(30,2,1,11,9,1,'2019-01-29 18:29:04',NULL),(31,2,1,11,9,1,'2019-01-29 18:29:04',NULL),(32,1,1,13,9,1,'2019-01-31 19:30:26',NULL),(33,1,1,11,1,1,NULL,NULL),(34,1,9,11,32,1,NULL,NULL),(35,1,1,1,1,1,NULL,NULL),(36,1,9,81,21,1,NULL,'es un estudiante ejemplar'),(37,1,NULL,NULL,NULL,1,NULL,NULL),(38,3,0,79,12,1,NULL,'no vino'),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `assitance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assitance_type`
--

DROP TABLE IF EXISTS `assitance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assitance_type` (
  `assitance_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `weight_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`assitance_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assitance_type`
--

LOCK TABLES `assitance_type` WRITE;
/*!40000 ALTER TABLE `assitance_type` DISABLE KEYS */;
INSERT INTO `assitance_type` VALUES (1,'Presente',NULL),(2,'Ausente',NULL),(3,'Excusa',NULL);
/*!40000 ALTER TABLE `assitance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `id_grade` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`course_id`),
  KEY `fk_ course_grade_idx` (`id_grade`),
  CONSTRAINT `fk_ course_grade` FOREIGN KEY (`id_grade`) REFERENCES `grade` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (7,'PRE-KINDER',NULL,3,1),(8,'PRE-KINDER',NULL,2,1),(9,'3ro A',NULL,4,1),(10,'4to A',NULL,4,1),(16,'20vo-A',NULL,NULL,NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `id_school` int(11) DEFAULT NULL,
  `grade_code` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`grade_id`),
  KEY `grade_fk_school_idx` (`id_school`),
  CONSTRAINT `grade_fk_school` FOREIGN KEY (`id_school`) REFERENCES `school` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (2,'Pre-Kinder','Pre-Kinder',3,NULL,1),(3,'Pre Primario','Pre Primario',3,NULL,1),(4,'Bachiller',NULL,3,NULL,1),(5,'NuevaAula',NULL,3,NULL,1),(6,'2018',NULL,NULL,NULL,1),(7,'Aula Pruebita',NULL,3,NULL,1),(8,'Frt',NULL,3,NULL,1),(9,'1ro Primaria B',NULL,3,NULL,1),(10,'Aula2018',NULL,5,NULL,1),(11,'1 primaria',NULL,4,NULL,1),(12,'4to A',NULL,3,NULL,1),(13,'Matemática',NULL,3,NULL,1),(14,'Matematica',NULL,3,NULL,1),(15,'Matematica',NULL,3,NULL,1),(16,'Matematica',NULL,4,NULL,1),(17,NULL,NULL,NULL,NULL,1),(18,NULL,NULL,NULL,NULL,1),(19,'1A',NULL,4,NULL,1),(20,'3RO',NULL,3,NULL,1),(21,'qimono',NULL,3,NULL,1),(22,'tercero',NULL,3,NULL,1),(23,'tercero',NULL,3,NULL,1),(24,'20vo',NULL,3,NULL,1);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logged_users`
--

DROP TABLE IF EXISTS `logged_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logged_users` (
  `logged_users_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`logged_users_id`),
  KEY `fk_ logged_users_id_idx` (`id_user`),
  CONSTRAINT `fk_ logged_users_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logged_users`
--

LOCK TABLES `logged_users` WRITE;
/*!40000 ALTER TABLE `logged_users` DISABLE KEYS */;
INSERT INTO `logged_users` VALUES (2,22,'csalazar','1234',1,NULL,2),(3,23,'csantos','abcd',1,NULL,3),(4,24,'csantos','abcd',1,NULL,3),(5,25,'psantos','123',1,NULL,4),(6,26,'puruttia','12345',1,NULL,2),(7,27,'csantos','12345',1,NULL,2),(8,28,'cpedro','12345',1,NULL,2),(9,30,'pvela','5678',1,NULL,2),(10,31,'psantiago','1234',1,NULL,2),(11,32,'PAZZOPADILLA','1234',1,NULL,2),(12,33,'cplaca','1234',1,NULL,2),(13,34,'+5+48484984','123456',1,NULL,4),(14,35,'54544','123456',1,NULL,4),(15,36,'jperez','123456',1,NULL,4),(16,37,'jperez','123456',1,NULL,4),(17,38,'josejos','123456',1,NULL,4),(18,39,'adsads','123456',1,NULL,4),(19,40,'123121','123456',1,NULL,4),(20,41,'21321','123456',1,NULL,4),(21,42,'123','123456',1,NULL,4),(22,43,'juanp','123456',1,NULL,2),(23,44,'21231','123123',1,NULL,4),(24,45,'123121','123123',1,NULL,4),(25,46,'eldire','123456',1,NULL,3),(26,47,'Juangaaa','789789',1,NULL,3),(27,48,'121231321','123456',1,NULL,4),(28,49,'jimenez','123123',1,NULL,2),(29,50,'eldiree','123456',1,NULL,3),(30,51,'dtest','123456',1,NULL,3),(31,52,'21231351231','123456',1,NULL,4),(32,53,'231321231','123456',1,NULL,3),(33,54,'231321231','123456',1,NULL,3),(34,55,'231321231','123456',1,NULL,3),(35,56,'231321231','123456',1,NULL,4),(36,57,'5548798','123456',1,NULL,3),(37,58,'21654564','123456',1,NULL,3),(38,59,'2198484894984','123456',1,NULL,4),(39,60,'csalazo','1234',1,NULL,4),(40,61,'lpeguero24','1234',1,NULL,3),(41,62,'lpeguero24','1234',1,NULL,3),(42,63,'nesquik','1234',1,NULL,2),(43,64,'omo','1234',1,NULL,4),(44,65,'afrodiciaco','1234',1,NULL,3),(45,66,'papito','1234',1,NULL,4),(46,67,'director','1234',1,NULL,2),(47,68,'repacvar','1234',1,NULL,4),(48,69,'mramos','123456',1,NULL,3),(49,70,'JuanCito','123456',1,NULL,4),(50,71,'oguillen','123456',1,NULL,4),(51,72,'jperez','123456',1,NULL,4),(52,73,'Ogaston','123456',1,NULL,4),(53,74,'Jmendez','123456',1,NULL,3),(54,75,'juancito','123456',1,NULL,2),(55,76,'docen','123456',1,NULL,3),(56,77,'ipereyra','1234',1,NULL,4),(57,16,'athomsom','1234',1,NULL,3),(58,82,'stringsalazar','1234',1,NULL,4),(59,83,'papaaparicio','1234',1,NULL,3),(60,84,'Ismael','1234',1,NULL,2),(61,85,'userdocente','123456',1,NULL,3),(62,87,'Dire','123456',1,NULL,2),(63,88,'Tuto','123456',1,NULL,4),(64,89,'Dire2','123456',1,NULL,2),(65,90,'Dire3','123456',1,NULL,4),(66,91,'Dire5','123456',1,NULL,2),(67,92,'palalo','1234',1,NULL,4),(68,93,'pandco','1234',1,NULL,3),(69,94,'ppancio','1234',1,NULL,3),(70,96,'precio','1234',1,NULL,3);
/*!40000 ALTER TABLE `logged_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo` (
  `memo_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_memo_type` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`memo_id`),
  KEY `fk_id_memo_type_idx` (`id_memo_type`),
  KEY `fk_user_id_idx` (`user_id`),
  KEY `fk_school_id` (`school_id`),
  CONSTRAINT `fk_id_memo_type` FOREIGN KEY (`id_memo_type`) REFERENCES `memo_type` (`memo_type_id`),
  CONSTRAINT `fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
INSERT INTO `memo` VALUES (13,1,'las clases cerraran muy pronto','2019-03-18 15:12:01','no hay clases',26,NULL),(15,1,'no hay clases nunca','2019-04-02 14:39:10','para idiotas',27,NULL),(16,3,'no hay clases para nadie','2019-04-02 14:56:51','idioatas',27,NULL);
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo_distribution`
--

DROP TABLE IF EXISTS `memo_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo_distribution` (
  `memo_distribution_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_memo` int(11) DEFAULT NULL,
  `id_user_pather` int(11) DEFAULT NULL,
  PRIMARY KEY (`memo_distribution_id`),
  KEY `fk_id_memo_idx` (`id_memo`),
  KEY `fk_id_user_pather_idx` (`id_user_pather`),
  CONSTRAINT `fk_id_memo` FOREIGN KEY (`id_memo`) REFERENCES `memo` (`memo_id`),
  CONSTRAINT `fk_id_user_pather` FOREIGN KEY (`id_user_pather`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo_distribution`
--

LOCK TABLES `memo_distribution` WRITE;
/*!40000 ALTER TABLE `memo_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo_type`
--

DROP TABLE IF EXISTS `memo_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo_type` (
  `memo_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `name_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`memo_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo_type`
--

LOCK TABLES `memo_type` WRITE;
/*!40000 ALTER TABLE `memo_type` DISABLE KEYS */;
INSERT INTO `memo_type` VALUES (1,'Padres y Tutores',NULL),(2,'Docentes',NULL),(3,'Centro Educativo',NULL);
/*!40000 ALTER TABLE `memo_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neighborhood`
--

DROP TABLE IF EXISTS `neighborhood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neighborhood` (
  `neighborhood_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_province` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`neighborhood_id`),
  KEY `neighborhood_province_idx` (`id_province`),
  CONSTRAINT `neighborhood_province` FOREIGN KEY (`id_province`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighborhood`
--

LOCK TABLES `neighborhood` WRITE;
/*!40000 ALTER TABLE `neighborhood` DISABLE KEYS */;
INSERT INTO `neighborhood` VALUES (1,1,'Naco'),(2,1,'bello campo');
/*!40000 ALTER TABLE `neighborhood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Distrito Nacional'),(2,'pedro brand');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `qualification_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_qualification_type` int(11) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL,
  `id_usr_student` int(11) DEFAULT NULL,
  `id_subject` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`qualification_id`),
  KEY `fk_id_qualification_type_idx` (`id_qualification_type`),
  KEY `fk_ qualification_course_idx` (`id_course`),
  KEY `fk_qualification_usr_idx` (`id_usr_student`),
  KEY `fk_ qualification_subject_idx` (`id_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (7,1,1,11,9,90),(10,1,1,11,9,95),(11,1,1,13,9,87),(12,1,1,1,1,1),(13,1,9,79,7,80);
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification_type`
--

DROP TABLE IF EXISTS `qualification_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification_type` (
  `qualification_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `weight_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`qualification_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification_type`
--

LOCK TABLES `qualification_type` WRITE;
/*!40000 ALTER TABLE `qualification_type` DISABLE KEYS */;
INSERT INTO `qualification_type` VALUES (1,'Tarea','Tarea',70),(2,'Practica','Practica',60),(3,'Examen','Examen',NULL),(4,'Examen Final','Examen Final',NULL);
/*!40000 ALTER TABLE `qualification_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule_type_usr`
--

DROP TABLE IF EXISTS `rule_type_usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_type_usr` (
  `rule_type_usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_type` int(11) DEFAULT NULL,
  `menu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rule_type_usr_id`),
  KEY `fk_rule_id_user_type_idx` (`id_user_type`),
  CONSTRAINT `fk_rule_id_user_type` FOREIGN KEY (`id_user_type`) REFERENCES `user_type` (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule_type_usr`
--

LOCK TABLES `rule_type_usr` WRITE;
/*!40000 ALTER TABLE `rule_type_usr` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule_type_usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `datetime_todo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usr_teacher` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `id_province` int(11) DEFAULT NULL,
  `id_neighborhood` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `apartment` varchar(45) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `location` varchar(60) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `document_id` varchar(45) DEFAULT NULL,
  `school_code` varchar(45) DEFAULT NULL,
  `public_id_school` varchar(100) DEFAULT NULL,
  `latitude` decimal(6,4) DEFAULT NULL,
  `longitude` decimal(6,4) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`school_id`),
  UNIQUE KEY `school_code_UNIQUE` (`school_code`),
  KEY `school_province_idx` (`id_province`),
  KEY `school_neighbor_idx` (`id_neighborhood`),
  CONSTRAINT `school_neighbor` FOREIGN KEY (`id_neighborhood`) REFERENCES `neighborhood` (`neighborhood_id`),
  CONSTRAINT `school_province` FOREIGN KEY (`id_province`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (3,'Colegio New Horizons',1,1,'Calle Sarasota','Bloque D','586','string','',NULL,'551655151','C-0003','61aebe6r',18.4575,-69.9385,NULL,'(809)555-5555'),(4,'Prueba school',1,1,'alog','bloque a','51','string','string',NULL,'51445151','C-0004','43f71dd8',18.4700,-69.9327,NULL,'(809)555-5555'),(5,'Instituto Tecnologico Perez',1,1,'Manuela Diez','string','','','',NULL,'873747','C-0005','1f9f92b4',18.4879,-69.9645,NULL,'(809)555-5555');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_course` (
  `student_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usr_student` int(11) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`student_course_id`),
  KEY `fk_id_usr_student_idx` (`id_usr_student`),
  KEY `fk_student_id_course_idx` (`id_course`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (1,11,1,'2018-11-22 20:44:43'),(2,13,1,'2018-11-22 20:44:49'),(3,11,2,'2018-11-22 20:44:55'),(4,29,1,NULL),(5,79,9,NULL),(6,80,7,NULL),(8,86,1,NULL),(9,94,16,NULL);
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grade` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`subject_id`),
  KEY `fk_ subject_grade_idx` (`id_grade`),
  CONSTRAINT `fk_ subject_grade` FOREIGN KEY (`id_grade`) REFERENCES `grade` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (2,3,'Pablo','12:00','13:00',1),(3,2,'Numeros','08:00AM','09:30AM',1),(7,4,'Math','10:00AM','8:00AM',0),(8,4,'Matematicas','10:00AM','03:00PM',1),(9,3,'Lengua y Literatura','03:00PM','05:00PM',1),(10,3,'Sociales','08:00AM','09:00AM',1),(19,4,'AUla3','12:00PM','02:00PM',1),(21,4,'911','1970-01-01T09:45:00.','1970-01-01T12:30:00.',0),(28,4,'CALCULO','08:30','10:00',1),(29,4,'au87','03:07','06:09',1),(30,7,'Inteligencia Artificial','02:00','03:01',0),(31,12,'asd','12:12','12:12',NULL),(32,20,'IELTS','4:00PM','6:00PM',0),(33,21,'caracatu','4:00PM','6:00PM',NULL),(34,23,'Matematica','string','string',0),(35,23,'Fisica','08:00AM','10:00AM',NULL),(36,12,'Casanova','08:00','10:00',NULL),(37,24,'palito','4:00PM','6:00PM',NULL);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subject`
--

DROP TABLE IF EXISTS `teacher_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_subject` (
  `teacher_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usr_teacher` int(11) DEFAULT NULL,
  `id_subject` int(11) DEFAULT NULL,
  `id_school` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`teacher_subject_id`),
  KEY `fk_id_usr_teach_idx` (`id_usr_teacher`),
  KEY `fk_teacher_id_subject_idx` (`id_subject`),
  KEY `fk_teacher_id_school_idx` (`id_school`),
  CONSTRAINT `fk_id_usr_school` FOREIGN KEY (`id_school`) REFERENCES `school` (`school_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_usr_subject` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`subject_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_usr_teacher_subject` FOREIGN KEY (`id_usr_teacher`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subject`
--

LOCK TABLES `teacher_subject` WRITE;
/*!40000 ALTER TABLE `teacher_subject` DISABLE KEYS */;
INSERT INTO `teacher_subject` VALUES (1,16,7,3,'2019-01-10 18:25:29',1),(2,16,8,3,'2019-01-10 18:25:36',1),(3,16,9,3,'2019-01-10 18:25:44',1),(5,21,2,3,'2019-01-16 20:05:05',1),(6,22,2,3,NULL,1),(17,83,21,3,NULL,NULL),(20,94,37,3,NULL,NULL),(21,94,37,3,NULL,NULL);
/*!40000 ALTER TABLE `teacher_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_type` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `cell_phone` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `public_id` varchar(200) NOT NULL,
  `user_code` varchar(45) DEFAULT NULL,
  `id_neighborhood` int(11) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL,
  `residencial` varchar(45) DEFAULT NULL,
  `apartment` varchar(45) DEFAULT NULL,
  `edif` varchar(45) DEFAULT NULL,
  `document_id` varchar(45) DEFAULT NULL,
  `date_birth` varchar(40) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `usercol_UNIQUE` (`user_code`),
  KEY `user_user_type_idx` (`id_type`),
  KEY `user_neighbor_idx` (`id_neighborhood`),
  CONSTRAINT `user_neighbor` FOREIGN KEY (`id_neighborhood`) REFERENCES `neighborhood` (`neighborhood_id`),
  CONSTRAINT `user_user_type` FOREIGN KEY (`id_type`) REFERENCES `user_type` (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,1,'Teulys','Jimenez','809-279-1896','809-849-1029','1','2018-09-06 14:52:43','f452baf3-6168-44b9-b271-bdbda9d60c8c','ADM-00003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,'Luz Melanny','Peguero Reynoso','809-279-1896','8299874512','1','2018-09-17 20:32:24','ab4e502f-648b-478d-98b5-83459529915e','D-00004',NULL,NULL,NULL,NULL,NULL,NULL,'40220454702','2019-01-17T06:00:00.000Z',28,'Femenino','luzpeguero08@gmail.com'),(6,4,'Randy','Pereyra','8099153716','8099153716','1','2018-09-18 01:33:24','75c1046a-d756-491b-bdca-66a2b0f44d21','T-00006',NULL,NULL,NULL,NULL,NULL,NULL,'0023445659','1986-08-16',32,'Masculino','rpereyra@gmail.com'),(7,2,'jose','Morales','8299236045','8299236045','1','2018-09-18 19:32:40','61d73e10-b1b9-43c7-a51f-96a22ffa0aa1','D-00007',NULL,NULL,NULL,NULL,NULL,NULL,'40220226548','1990-01-15T04:00:00.000Z',28,'Masculino','lamorsa15@hotmail.com'),(8,2,'John','Inojosa','8299604953','8299604953','1','2018-09-19 19:21:38','fae8bbfc-3cc3-4a26-8497-22d74e0135cb','D-00008',NULL,NULL,NULL,NULL,NULL,NULL,'33333333333','1980-03-01',40,'Masculino','jinojosa@everyone.com.do'),(9,2,'Ismael','Clase','809','809','1','2018-09-25 00:19:22','cafb73cd-7619-47a1-9d9c-b3f335a54414','D-00009',NULL,NULL,NULL,NULL,NULL,NULL,'223','1989-08-22T04:00:00.000Z',30,'Masculino','onezirow@gmail.com'),(10,4,'Danny','Hilario Suarez',NULL,NULL,'1','2018-10-04 19:14:33','6056f59e-8833-4da7-a826-190f91b32081','T-00010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dannyhilariosuarez@gmail.com'),(11,5,'Randol','Berroa','5262','21515','1','2018-10-09 13:54:30','f1beee8e-8776-4953-894c-32810ec2a54c','E-00011',NULL,NULL,NULL,NULL,NULL,NULL,'864684','1999-06-14',12,'Masculino','rberroa@gmail.com'),(12,3,'Massiel','Tiburcio','65451','5144651','1','2018-10-09 14:16:03','29d1ad16-558f-4348-8be2-1c34a41c51e3','D-00012',NULL,NULL,NULL,NULL,NULL,NULL,'854854','1990-05-30',27,'Femenino','mtuburcio@gmail.com'),(13,5,'William','Mingo Algo','444111','8522222','1','2018-10-09 14:18:16','3f9ab33a-65a2-4b1d-b9f2-fff30bb60722','E-00013',NULL,NULL,NULL,NULL,NULL,NULL,'988944','1986-05-23',38,'M','wmingo@gmail.com'),(14,3,'Alvaro','Perez','8092550840','8092550840','AC','2018-10-19 11:34:24','0ed60aca-4de1-4e88-ac23-829afa44ed22','U-51515',NULL,NULL,NULL,NULL,NULL,NULL,'456','2018-10-19T06:00:00.000Z',15,'2','lamorsa14@hotmail.com'),(15,2,'Amalla','Saloe','8093456789','8093456789','1','2018-10-23 21:59:48','29ba44c0-d95b-4e3a-8cc2-65a07576ef5d','D-00015',NULL,NULL,NULL,NULL,NULL,NULL,'4052034567','2018-01-11T06:00:00.000Z',19,'Femenino','amalla@hotmail.com'),(16,3,'Abraham','Thomson','8663868368','4583687638','1','2018-11-01 20:16:29','1e2d3108-217b-40e8-968c-7f9fbc894821','P-00016',NULL,NULL,NULL,NULL,NULL,NULL,'58282832','15-07-1984',34,'M','athomsom@gmail.com'),(17,3,'jose','jose','80934','8909','AC','2018-11-01 20:16:36','c61bef32-dd81-4cef-bbba-af11b72f13f5','P-00017',NULL,NULL,NULL,NULL,NULL,NULL,'89','2018-11-10T06:00:00.000Z',16,'2','la@hotmail.com'),(18,4,'manuel','manuel','123','13','AC','2019-01-09 21:28:18','fa142316-3d0e-4158-845c-3c0b87788d9d','T-00018',NULL,NULL,NULL,NULL,NULL,NULL,'123','2019-01-01T06:00:00.000Z',15,'1','ll@hot.com'),(19,3,'Carlos','Hernandez','8095334342','8095334342','AC','2019-01-16 20:00:41','d881c7fd-3732-4aba-a797-8f1b5739e19f','P-00019',NULL,NULL,NULL,NULL,NULL,NULL,'40120345679','2019-01-01T06:00:00.000Z',15,'2','lahoz@hotmail.com'),(20,3,'DFDFDFFDD','docente1','45254245245','51515','1','2019-01-16 20:02:34','d1067837-2931-4449-857f-73e5db829e92','P-00020',NULL,NULL,NULL,NULL,NULL,NULL,'51521521052','2018-01-01',15,'M','docente1'),(21,3,'DFDFDFFDD','docente2','45254245245','51515','1','2019-01-16 20:05:05','61298657-4111-4a6d-828b-d68fb96dc5ef','P-00021',NULL,NULL,NULL,NULL,NULL,NULL,'522000699220','2018-01-01',15,'M','docente2'),(22,2,'carlos salaza','salazar','829-752-9900','809123454','1','2019-03-18 00:30:05','2d8b2ae0-e79f-4db7-8649-82e654d3c895','D-00022',NULL,NULL,NULL,NULL,NULL,NULL,'061-0027696-0','2019-03-22T06:00:00.000Z',30,'Masculino','carlos-salazar15@hotmail.com'),(23,3,'pedro','salazar','809-335-3208','809-335-3208','1','2019-03-18 00:50:24','c37eceb9-4a4b-49c4-bcf6-663676fa121a','P-00023',NULL,NULL,NULL,NULL,NULL,NULL,'061-0027696-0','15/11/1988',20,'m','csantos@gmail.com'),(24,3,'pedro','salazar','809-335-3208','809-335-3208','1','2019-03-18 00:51:04','c085a15c-7274-4f30-8bcf-701abc99e5a0','P-00024',NULL,NULL,NULL,NULL,NULL,NULL,'061-0027696-0','15/11/1988',20,'m','csanto12@gmail.com'),(25,4,'pala','salazar','829-457-7845','829-457-7845','1','2019-03-18 00:59:45','982723d9-88c5-47fb-8f38-bbd3590bca31','T-00025',NULL,NULL,NULL,NULL,NULL,NULL,'01456','16/11/1988',25,'f','psantos@hotmail.com'),(26,2,'pedro uruttia','vilorio','8093353208','8297529900','1','2019-03-18 13:32:13','0cbfd9df-3d75-4114-871e-ed2314e7dd91','D-00026',NULL,NULL,NULL,NULL,NULL,NULL,'12546484','15/11/1998',30,'f','purrutia@hotmail.com'),(27,2,'carlos alberto','bonilla','809-335-3208','829-752-9900','1','2019-03-20 03:39:22','36b24dd2-0b7d-49a8-968a-ef798ba0adb6','D-00027',NULL,NULL,NULL,NULL,NULL,NULL,'521121','15/11/1988',30,'m','csantos@hotmail.com'),(28,2,'carlos alberto','salazar','809-335-3208','829-752-9900','1','2019-03-20 11:51:26','a7fe0321-e475-4c23-b9fe-a050a7b5c498','D-00028',NULL,NULL,NULL,NULL,NULL,NULL,'5154211','15/11/1988',25,'m','cpedro@gmail.com'),(29,5,'Candy','Reynoso','809922422','1515151','1','2019-03-29 21:39:28','ce1a4fad-1d63-40cd-9b23-34ab47f925a3','E-00029',NULL,NULL,NULL,NULL,NULL,NULL,'5222222','2007-05-30',10,'F','creynoso'),(30,2,'pedro','jesus vela','809553-5658','8526479831','1','2019-04-01 03:36:50','d934e341-18f7-4da0-b917-ccc271067e4b','D-00030',NULL,NULL,NULL,NULL,NULL,NULL,'5542315434','15/11/1988',15,'m','pvela@hotmail.com'),(31,2,'perla','santiago','715454548','1213212','1','2019-04-01 14:07:18','57236900-cf70-4a63-b5b5-bf14286be00c','D-00031',NULL,NULL,NULL,NULL,NULL,NULL,'2124521','16/11/1988',25,'f','psantiago@gmail.com'),(32,2,'PAZO','padilla','212121','21213210','1','2019-04-04 13:21:11','40c010c6-5501-4a69-9327-62579f825e66','D-00032',NULL,NULL,NULL,NULL,NULL,NULL,'string','string',15,'M','PAZOPADILAL@GMIAL.CON'),(33,2,'carlos','baez','6121321','21212231','1','2019-04-04 15:21:31','653cf3fe-3518-450d-b775-0dabd7a9f1a5','D-00033',NULL,NULL,NULL,NULL,NULL,NULL,'212121','15/11/1988',15,'M','cplaca@hotmail.com'),(34,4,'5+4545448','5465498489','987897897','787897','1','2019-04-05 11:44:22','2685ca91-4474-48c5-8e91-0b1c2857bf52','T-00034',NULL,NULL,NULL,NULL,NULL,NULL,'654595498489','2019-12-31',2,'f','omijihuhuiy'),(35,4,'8498484','4894894','8498484','84984894','1','2019-04-05 11:52:58','4e765bea-7c14-47db-9d28-d8ccb44728d8','T-00035',NULL,NULL,NULL,NULL,NULL,NULL,'4894984','275760-04-08',98484949,'m','8498498'),(36,4,'Jan','Perez','8095564125','8095564125','1','2019-04-05 13:32:58','81312c06-9f20-4616-9110-8675c6ee1a1a','T-00036',NULL,NULL,NULL,NULL,NULL,NULL,'4849848498','2010-08-04',8,'f','jperex.com'),(37,4,'kjjhjh','jhjhkjhj','3055130441','8095564125','1','2019-04-05 13:36:12','63010d18-06e0-4f51-b01b-884f54d1cd28','T-00037',NULL,NULL,NULL,NULL,NULL,NULL,'','2018-12-31',2,'f','hjkh'),(38,4,'jose','pablo','8095564125','8095564125','1','2019-04-05 13:39:26','93d040a1-e2f0-4aaf-ba6e-3f0dcd34803c','T-00038',NULL,NULL,NULL,NULL,NULL,NULL,'49498448','2019-12-31',1231549849,'f','m.c@gmail.com'),(39,4,'544894894','848489','89489498','844894','1','2019-04-05 13:41:26','4ebf09b2-8137-4708-807c-cc23c8084faf','T-00039',NULL,NULL,NULL,NULL,NULL,NULL,'8489498','275760-08-04',894,'f','498484'),(40,4,'23132123','123132123','123132123','132123132','1','2019-04-05 13:44:04','d3e69e7c-a57f-4134-b1f2-10b930d608c6','T-00040',NULL,NULL,NULL,NULL,NULL,NULL,'12123123','1231-03-12',11321321,'f','123132132'),(41,4,'2123132','12312132','13212','123132','1','2019-04-05 13:46:28','b9598aeb-47a9-4c7f-9188-b179360b4d81','T-00041',NULL,NULL,NULL,NULL,NULL,NULL,'1321231','2123-12-31',32123123,'f','12132123'),(42,4,'123','123','1231','23132','1','2019-04-05 13:48:23','07a9483f-92c1-470f-93f4-a329548d487f','T-00042',NULL,NULL,NULL,NULL,NULL,NULL,'132','0132-02-13',1321,'f','123'),(43,2,'Juan','Pablo','3055130441','809545489','1','2019-04-05 13:54:59','a3f37927-0765-4e9f-892d-f74b66067483','D-00043',NULL,NULL,NULL,NULL,NULL,NULL,'121654894984','',4,'f','jpablo@gmail.com'),(44,4,'21213','12123','1231','123123','1','2019-04-05 14:21:44','4d2c9e64-fa60-4251-9874-6124dc9430ed','T-00044',NULL,NULL,NULL,NULL,NULL,NULL,'13212','0021-03-31',231,'m','132132'),(45,4,'21231','3212313','321','321231','1','2019-04-05 14:22:44','96598cf5-e706-4b99-90cf-d235d0294f83','T-00045',NULL,NULL,NULL,NULL,NULL,NULL,'32132','0123-02-13',1,'m','21231'),(46,3,'Elvu','Mar','13132','132123123','1','2019-04-05 14:32:38','209742cc-4e5d-4afe-ab37-f30e97e04a83','P-00046',NULL,NULL,NULL,NULL,NULL,NULL,'21321321','2132-12-23',12132123,'m','123132'),(47,3,'Magan','Pouullll','8978978978','7897','1','2019-04-05 14:33:45','5cf35c54-b53b-4156-ad50-574dba987072','P-00047',NULL,NULL,NULL,NULL,NULL,NULL,'4556489987878','2019-01-01',3,'f','1651489'),(48,4,'2121321','231321231','1231321231','132132132','1','2019-04-05 14:37:27','c0a63c1c-3f87-4348-8eca-fa2ee3f2b817','T-00048',NULL,NULL,NULL,NULL,NULL,NULL,'23132132','12312-02-13',21321321,'f','2131321'),(49,2,'jimenez','cruz','1231321','123123132','1','2019-04-05 14:42:37','4a7568f4-6e50-49b4-a01b-a29ae4628029','D-00049',NULL,NULL,NULL,NULL,NULL,NULL,'31321231','2132-12-23',132132,'f','213212'),(50,3,'51564','1651564','456465465','56465456','1','2019-04-05 14:46:34','d0846d99-bd16-42b4-9686-77be396287aa','P-00050',NULL,NULL,NULL,NULL,NULL,NULL,'456456465','54654-06-04',10,'f','65456456456'),(51,3,'Duarte','Pablo','8095564125','8095564125','1','2019-04-05 14:52:41','15598bc4-39ce-4049-a4e0-710667f4127a','P-00051',NULL,NULL,NULL,NULL,NULL,NULL,'455977945848','1997-12-31',33,'m','dpablo@gmail.com'),(52,4,'32132123132','12121321','132132132','3223123','1','2019-04-05 15:10:11','d0ebd532-49d6-48c7-bbf5-413522a26a18','T-00052',NULL,NULL,NULL,NULL,NULL,NULL,'31231321','21321-03-21',213212321,'f','212313212'),(53,3,'21132132','123132123','2313212','1231231','1','2019-04-05 15:10:51','d8338b01-f4b7-4c15-838e-0958f9519fee','P-00053',NULL,NULL,NULL,NULL,NULL,NULL,'132123132','1231-03-12',23121231,'f','123123132'),(54,3,'21132132','123132123','2313212','1231231','1','2019-04-05 15:32:14','60c7e8e1-9fdf-41b7-b128-920e296998fa','P-00054',NULL,NULL,NULL,NULL,NULL,NULL,'132123132','1231-03-12',23121231,'f','d5d6s4c46'),(55,3,'21132132','123132123','2313212','1231231','1','2019-04-05 15:32:38','1edff33b-5eb9-46d8-8e87-f2e3c8570c5a','P-00055',NULL,NULL,NULL,NULL,NULL,NULL,'132123132','1231-03-12',23121231,'f','15oo23132'),(56,4,'21132132','123132123','2313212','1231231','1','2019-04-05 15:34:58','3278d18d-2f07-4f7a-b798-cbc37b5defc9','T-00056',NULL,NULL,NULL,NULL,NULL,NULL,'132123132','1231-03-12',23121231,'f','1eeee3132'),(57,3,'48498489489','789789789789','545646546545','54564654564','1','2019-04-05 15:40:55','3bedf321-7021-40b7-9c88-f7e5d9b2c510','P-00057',NULL,NULL,NULL,NULL,NULL,NULL,'89789798798','2000-09-07',87897987,'m','7897897897'),(58,3,'11651651','561651561','81981891','1891981','1','2019-04-05 15:48:25','e3f31844-df61-4b8b-b990-d798e33e453d','P-00058',NULL,NULL,NULL,NULL,NULL,NULL,'516516151','2000-06-05',10,'f','561651651'),(59,4,'884894984','8889494','4848','98489498','1','2019-04-05 15:54:15','06621bf6-db2c-4d97-ac9f-681bf39bd8be','T-00059',NULL,NULL,NULL,NULL,NULL,NULL,'8498484','7879-04-08',88,'f','844894'),(60,4,'ceneyda','salazo','809-335-3208','829-752-9900','1','2019-04-06 12:10:16','70d31761-93fb-40f5-a2dc-656b9c32b607','T-00060',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-06',15,'f','c@gmail.com'),(61,3,'luz','Peguer','809220155','8058025','1','2019-04-06 20:04:10','856f45e2-4541-41e2-ac23-8980aa171cbd','P-00061',NULL,NULL,NULL,NULL,NULL,NULL,'528585858','string',52,'m','lpeguero24'),(62,3,'luz','Peguer','809220155','8058025','1','2019-04-06 20:04:57','e3dbaa7c-d003-4a65-b659-b6d820fe6509','P-00062',NULL,NULL,NULL,NULL,NULL,NULL,'528585858','15/11/1988',52,'m','lpeguero25'),(63,2,'alex','buanaventura','809-335-3208','829-752-9900','1','2019-04-07 13:34:32','d4e982be-8089-4f38-8328-05dfde36916b','D-00063',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-07',15,'m','alex@gamil.com'),(64,4,'omito','paralalito','809-456-4564','829-45678-985','1','2019-04-07 13:40:43','9db08ece-db61-4c3e-8683-016496d04caf','T-00064',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-07',20,'f','paralalito@hotmail.com'),(65,3,'afro','pelo','511-15151','829-5615-15','1','2019-04-07 13:44:18','d1134dc0-cf7a-4bed-83cf-dc592a5542d8','P-00065',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-07',20,'m','pelo@gmail.com'),(66,4,'papo','pablito','26151515','15-15484-55','1','2019-04-07 13:58:44','da07595d-e68f-4a02-9976-78ebbab1d8a1','T-00066',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-07',15,'m','papo@gmail.com'),(67,2,'direc','tor','1515-151561','151-151-1515','1','2019-04-07 14:02:58','eff7970a-952d-42f6-996e-ca3f21178508','D-00067',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-07',20,'m','direc@gmail.com'),(68,4,'repasar','todo','1212121','52151515','1','2019-04-07 14:22:45','e6ef2df9-ed02-469f-8b46-2bfbf0ffe037','T-00068',NULL,NULL,NULL,NULL,NULL,NULL,'','2019-04-07',16,'m','todo@gmail.com'),(69,3,'manuel','ramos','8095541255','8095564125','1','2019-04-09 16:37:44','884df675-4751-44e6-99d5-19b081381f00','P-00069',NULL,NULL,NULL,NULL,NULL,NULL,'54948489498','2019-12-31',20,'m','mramos@h.com'),(70,4,'Pablo','Duarte','8095542565','8095564125','1','2019-04-09 16:45:17','0e76e071-9585-4dc6-ac7e-38ed4c9741fe','T-00070',NULL,NULL,NULL,NULL,NULL,NULL,'42589777785','1990-12-31',22,'m','jduarte@mm.com'),(71,4,'oscar','guillen','8481689849','8095564158','1','2019-04-09 16:55:41','0eeffec4-8320-4856-b245-3ac0d4df6287','T-00071',NULL,NULL,NULL,NULL,NULL,NULL,'402597789987','1981-12-31',36,'m','og@gmail.com'),(72,4,'Juan','Perez','8095564125','8095564125','1','2019-04-09 22:49:47','e5cb430c-2c97-4401-87e3-60eb60b2c3ed','T-00072',NULL,NULL,NULL,NULL,NULL,NULL,'45468646846','1990-12-31',30,'m','jperez@gmail.com'),(73,4,'Guen','Lima','8095564785','8095564125','1','2019-04-10 19:16:54','cee01c46-92a0-41bc-8d39-6fafb36e2e9e','T-00073',NULL,NULL,NULL,NULL,NULL,NULL,'45855512688','2019-04-27',25,'m','in@gm.com'),(74,3,'Juam ','Mendez','8095564125','8095564125','1','2019-04-11 22:26:31','8dbc1637-dfd5-42fb-9015-c746ffe5a296','P-00074',NULL,NULL,NULL,NULL,NULL,NULL,'40225668563','2018-11-06',25,'m','jm@df.com'),(75,2,'juancito','pablo','80959654848','8095564125','1','2019-04-11 22:58:09','ee13fad9-82e4-48e0-a57e-1846ac30b984','D-00075',NULL,NULL,NULL,NULL,NULL,NULL,'48545987897','2019-04-11',25,'m','p@m.com'),(76,3,'Delio','Pall','1848978788','8095487987','1','2019-04-11 23:52:39','fda5dcab-ecc8-4d1d-a96d-0893b9e75bb6','P-00076',NULL,NULL,NULL,NULL,NULL,NULL,'4878978464','2017-01-09',55,'m','ll@m.com'),(77,4,'Ismael','Pereyra','8228288','5828288','1','2019-04-12 01:00:26','e9c83ae8-1d4d-4104-8d98-8c882bf9a3de','T-00077',NULL,NULL,NULL,NULL,NULL,NULL,'8522215663','1986-05-02',52,'F','ipereyra'),(79,5,'Mabel','Geronimo','828828','2882828','1','2019-04-12 01:12:48','06d15517-e1d6-48ca-a59a-ac777eb227d6','E-00079',NULL,NULL,NULL,NULL,NULL,NULL,'5522255','2011-05-03',10,'F','mabelgero'),(80,5,'Pedro','Geronimo','828828','2882828','1','2019-04-12 01:13:40','0fd0a7da-db1a-436c-aa9a-1e155c46b64d','E-00080',NULL,NULL,NULL,NULL,NULL,NULL,'8863322','2000-05-03',15,'M','pedrogeron'),(81,5,'Pedro','Geronimo','828828','2882828','1','2019-04-12 01:13:46','303d2758-9bca-46c5-a1cc-d844b9da6750',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8863322','2000-05-03',15,'M','pedrogeron'),(82,4,'pinguilo','string','string','string','string','2019-04-12 03:11:43','20ab1a32-8905-4e5a-b5b1-6972b014bb41','T-00082',NULL,NULL,NULL,NULL,NULL,NULL,'2122020','15/11/1988',15,'string','string'),(83,3,'Delio','Malm','1848978788','8095487987','1','2019-04-12 13:47:52','15ac181e-5ea8-46ce-920d-89c68bf6b800','P-00083',NULL,NULL,NULL,NULL,NULL,NULL,'1215145121231','15/11/1988',20,'m','ll@m.com'),(84,2,'ismaelito','string','string','string','string','2019-04-13 14:33:42','324ce1a3-2695-4ec8-a105-297957fdeee0','D-00084',NULL,NULL,NULL,NULL,NULL,NULL,'string','22/08/1989',29,'string','string'),(85,3,'Oscar','Garcia','8095664128','8095564125','1','2019-04-14 15:54:42','d55e0086-f3f7-4ba6-8dd7-beacb559ad8c','P-00085',NULL,NULL,NULL,NULL,NULL,NULL,'1154984887','1998-02-22',20,'m','d@m.vom'),(86,5,'parigua','pariguayo','22132113','4545454','1','2019-04-15 01:58:16','6366e30a-febc-485c-b63e-5d4648593300','E-00086',NULL,NULL,NULL,NULL,NULL,NULL,'515155151','15/11/1988',10,'m','papa@gmail.com'),(87,2,'Pedro','Perez','8095564125','8095564125','1','2019-04-18 00:20:51','007492a4-0625-43ac-b226-0a366a402069','D-00087',NULL,NULL,NULL,NULL,NULL,NULL,'54370131846','2019-04-27',25,'m','mm@gm.com'),(88,4,'Hugo','Ball','88957573466','80955641258','1','2019-04-18 00:30:07','1102243b-3aac-4010-9bdc-c8c7878201f7','T-00088',NULL,NULL,NULL,NULL,NULL,NULL,'584646425788','2019-04-27',25,'m','bb@hm.net'),(89,2,'Jose','Jil','809558755','885555248','1','2019-04-18 00:42:06','1166124d-2cbd-42f5-a753-9009129a6a63','D-00089',NULL,NULL,NULL,NULL,NULL,NULL,'12508985585','2019-04-27',25,'m','mn@hh.com'),(90,4,'Doll','Pill','80956824586','25','1','2019-04-18 00:49:22','868297a5-6242-476c-812f-d232d79d4c35','T-00090',NULL,NULL,NULL,NULL,NULL,NULL,'286227665','2019-04-30',25,'m','oyvn.com'),(91,2,'Dire5 ','Que ','8098558625','208838855','1','2019-04-18 00:57:39','da0f6c0a-b79f-4905-99ba-e69363aa052f','D-00091',NULL,NULL,NULL,NULL,NULL,NULL,'548464513','2019-04-30',30,'m','jgho@.com'),(92,4,'palo','palito','32352656','13262562','1','2019-04-18 10:27:36','b47fc2a4-ce6b-4fe1-a608-4f2e3b8328ee','T-00092',NULL,NULL,NULL,NULL,NULL,NULL,'0610025454','2019-04-15',20,'m','palito@gmail.com'),(93,3,'dskfnd','klmf','541545','454135145','1','2019-04-18 10:29:00','bf59dc5a-89c1-4b14-b96c-5e8a24dfcf4d','P-00093',NULL,NULL,NULL,NULL,NULL,NULL,'0515454','2019-04-16',15,'f','skcnfndflk'),(94,3,'pancio','pancho','61454545','112121','1','2019-04-22 22:27:10','1c1bd6b9-c8a6-442d-b07e-c73451988304','P-00094',NULL,NULL,NULL,NULL,NULL,NULL,'21312121','15/11/1988',20,'m','pancho@gmail.com'),(95,5,'plato','pecho','61454545','112121','1','2019-04-22 22:42:52','99e94b67-f0b9-4cbf-9f2c-58340ee4a3ec','E-00095',NULL,NULL,NULL,NULL,NULL,NULL,'21312121','15/11/1988',20,'m','preco@gmail.com'),(96,3,'placido','docen','61454545','112121','1','2019-04-22 23:13:09','768d1145-fc30-4d38-9e72-04044aa67409','P-00096',NULL,NULL,NULL,NULL,NULL,NULL,'21312121','15/11/1988',20,'m','precio@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_image`
--

DROP TABLE IF EXISTS `user_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_image` (
  `user_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `url_image` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_image_id`),
  KEY `user_image_user_idx` (`user_id`),
  CONSTRAINT `user_image_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_image`
--

LOCK TABLES `user_image` WRITE;
/*!40000 ALTER TABLE `user_image` DISABLE KEYS */;
INSERT INTO `user_image` VALUES (15,4,'../ades/imgs/users/58a855c56edfef8b6919fcc318c39fc7f5e3cec7.png','2019-01-17 10:16:03'),(16,17,'../ades/imgs/users/c61bef32-dd81-4cef-bbba-af11b72f13f5.jpg','2019-01-03 16:56:02'),(17,6,'../ades/imgs/users/75c1046a-d756-491b-bdca-66a2b0f44d21.jpg','2019-01-03 16:48:58'),(18,12,'../ades/imgs/users/a7ce9d23957ac1fcfa66c1f0516338365eed5404.png','2019-01-16 19:00:16'),(19,8,'../ades/imgs/users/fae8bbfc-3cc3-4a26-8497-22d74e0135cb.jpg','2019-01-13 07:40:10'),(20,16,'../ades/imgs/users/f5b45499b16163a791b9302c5da4bac70219689a.jpg','2019-01-25 16:11:48');
/*!40000 ALTER TABLE `user_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_parent`
--

DROP TABLE IF EXISTS `user_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_parent` (
  `user_parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_parent_id`),
  KEY `user_student_user_idx` (`user_id`),
  KEY `user_parent_user_idx` (`parent_id`),
  CONSTRAINT `user_parent_school` FOREIGN KEY (`parent_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_student_school` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_parent`
--

LOCK TABLES `user_parent` WRITE;
/*!40000 ALTER TABLE `user_parent` DISABLE KEYS */;
INSERT INTO `user_parent` VALUES (1,11,6,'2018-11-06 13:33:49'),(2,13,6,'2018-11-06 13:38:10'),(6,29,6,NULL),(7,79,77,NULL),(8,80,77,NULL),(10,86,3,NULL),(11,94,88,NULL);
/*!40000 ALTER TABLE `user_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_school`
--

DROP TABLE IF EXISTS `user_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_school` (
  `user_school_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_school_id`),
  KEY `user_school_user_idx` (`user_id`),
  KEY `user_school_school_idx` (`school_id`),
  CONSTRAINT `user_school_school` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`),
  CONSTRAINT `user_school_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_school`
--

LOCK TABLES `user_school` WRITE;
/*!40000 ALTER TABLE `user_school` DISABLE KEYS */;
INSERT INTO `user_school` VALUES (2,8,4,'2018-10-08 19:56:18',2),(3,12,3,'2018-10-09 14:17:14',3),(4,13,3,'2018-10-09 14:18:35',5),(7,16,3,'2018-11-01 20:16:28',3),(8,6,3,'2018-11-01 20:16:36',4),(9,11,3,'2018-11-20 20:52:25',5),(10,18,3,'2019-01-09 21:28:18',4),(11,21,3,'2019-01-16 20:05:05',3),(13,24,3,NULL,3),(14,25,3,NULL,4),(22,34,3,NULL,4),(23,35,3,NULL,4),(24,36,3,NULL,4),(25,37,3,NULL,4),(26,38,3,NULL,4),(27,39,3,NULL,4),(28,40,3,NULL,4),(29,41,3,NULL,4),(30,42,3,NULL,4),(32,44,3,NULL,4),(33,45,3,NULL,4),(34,48,3,NULL,4),(36,52,3,NULL,4),(37,56,3,NULL,4),(38,59,3,NULL,4),(39,60,3,NULL,4),(41,64,3,NULL,4),(42,66,3,NULL,4),(44,68,3,NULL,4),(45,70,3,NULL,4),(46,71,3,NULL,4),(47,72,3,NULL,4),(48,73,3,NULL,4),(50,77,3,NULL,4),(51,82,3,NULL,4),(52,22,3,NULL,2),(53,83,3,NULL,3),(54,84,3,NULL,2),(55,79,3,'2019-04-13 19:17:47',5),(56,80,3,'2019-04-13 19:17:54',5),(57,86,3,NULL,5),(58,87,3,NULL,2),(59,88,3,NULL,4),(60,89,3,NULL,2),(61,90,3,NULL,4),(62,91,3,NULL,2),(63,92,3,NULL,4),(64,94,3,NULL,3),(65,95,3,NULL,5),(66,96,3,NULL,3);
/*!40000 ALTER TABLE `user_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'Administrador','A'),(2,'Director','D'),(3,'Docente','P'),(4,'Tutor','T'),(5,'Estudiante','E'),(6,'Empleado','E');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23  1:48:57
