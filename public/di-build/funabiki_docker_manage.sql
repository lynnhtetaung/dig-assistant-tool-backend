-- MySQL dump 10.13  Distrib 5.7.42, for osx10.17 (x86_64)
--
-- Host: localhost    Database: funabiki_docker_manage
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `os_type` tinyint(2) DEFAULT '0' COMMENT '0 - window, 1 - linux/macOS',
  `programming` int(11) DEFAULT '0' COMMENT '0 - no-programming',
  `image_status` tinyint(2) DEFAULT '0',
  `status` tinyint(2) DEFAULT '0' COMMENT '0 -active, 1-inactive, 2-delete',
  `created_by` varchar(255) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT '0',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'test1','testing 1',1,1,1,2,'0','2023-05-09 01:55:27','0','2023-05-09 01:55:27'),(2,'test2','22',0,0,1,2,'0','2023-05-08 06:20:58','0','2023-05-08 06:20:58'),(3,'Nodejs','Nodejsproject',0,0,1,2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(4,'Test4','Testproject',1,1,0,2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(5,'Test5','T5',1,0,0,2,'0','2023-05-08 07:14:14','0','2023-05-08 07:14:14'),(6,'T6','Testing',1,3,0,2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(7,'KU-Test','KUser',1,0,1,2,'0','2023-05-09 02:44:13','0','2023-05-09 02:44:13'),(8,'FFmpeg','FFmpeg',0,11,0,2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(9,'laravel','laravel',0,3,0,2,'0','2023-05-08 12:01:47','0','2023-05-08 12:01:47'),(10,'python','python',0,4,1,0,'0','2023-05-08 12:48:59','0','2023-05-08 12:48:59'),(11,'CakePHP','CakePHP',0,1,0,2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(12,'java','java',0,2,1,0,'0','2023-05-08 12:58:43','0','2023-05-08 12:58:43'),(13,'javascript','javascript',0,1,1,0,'0','2023-05-08 12:47:34','0','2023-05-08 12:47:34'),(14,'php','php',0,3,2,0,'0','2023-05-09 01:24:41','0','2023-05-09 01:24:41'),(15,'lynn','lynn testing',1,0,1,0,'0','2023-05-09 01:50:20','0','2023-05-09 01:50:20'),(16,'NS-3','ns docker file',1,6,1,0,'0','2023-05-09 02:05:35','0','2023-05-09 02:05:35'),(17,'multi-format-changing','multi-format-changing description',0,19,1,0,'0','2023-05-09 02:14:26','0','2023-05-09 02:14:26'),(18,'testing','testing description',0,0,0,0,'0','2023-05-09 02:43:39','0','2023-05-09 02:43:39'),(19,'Soe','djkashdjahs',1,1,2,0,'0','2023-05-09 04:47:59','0','2023-05-09 04:47:59'),(20,'htet','gdhjasgd',1,0,1,0,'0','2023-05-09 04:45:45','0','2023-05-09 04:45:45'),(21,'funabiki','shgdhasgdhsag',1,1,1,0,'0','2023-05-09 05:00:55','0','2023-05-09 05:00:55'),(22,'khaing','dsjashdjas',1,2,0,0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_instruction_mapping`
--

DROP TABLE IF EXISTS `application_instruction_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_instruction_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `instruction_key` int(11) DEFAULT NULL,
  `instruction_value` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0' COMMENT '0 -active, 1-inactive, 2-delete',
  `created_by` varchar(255) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT '0',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_instruction_mapping`
--

LOCK TABLES `application_instruction_mapping` WRITE;
/*!40000 ALTER TABLE `application_instruction_mapping` DISABLE KEYS */;
INSERT INTO `application_instruction_mapping` VALUES (1,1,7,'xxxx',0,'0','2023-05-07 14:12:49','0','2023-05-07 14:12:49');
/*!40000 ALTER TABLE `application_instruction_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_instruction_mapping_test`
--

DROP TABLE IF EXISTS `application_instruction_mapping_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_instruction_mapping_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `instruction_key` varchar(255) DEFAULT NULL,
  `instruction_value` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0' COMMENT '0 -active, 1-inactive, 2-delete',
  `created_by` varchar(255) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT '0',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_instruction_mapping_test`
--

LOCK TABLES `application_instruction_mapping_test` WRITE;
/*!40000 ALTER TABLE `application_instruction_mapping_test` DISABLE KEYS */;
INSERT INTO `application_instruction_mapping_test` VALUES (1,1,'FROM','node:12.18.1',2,'0','2023-05-09 01:55:27','0','2023-05-09 01:55:27'),(2,1,'ENV','NODE_ENV=production',2,'0','2023-05-09 01:55:27','0','2023-05-09 01:55:27'),(3,1,'WORKDIR','/app',2,'0','2023-05-09 01:55:27','0','2023-05-09 01:55:27'),(4,1,'COPY','[\'package.json\', \'package-lock.json*\', \'./\']',2,'0','2023-05-09 01:55:27','0','2023-05-09 01:55:27'),(5,6,'ENTRYPOINT','New',2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(6,6,'CMD@@','new',2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(7,1,'CMD','[\'node\', \'server.js\']',2,'0','2023-05-09 01:55:27','0','2023-05-09 01:55:27'),(11,3,'FROM','node:12.18.1',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(12,3,'ENV','NODE_ENV=production',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(13,3,'WORKDIR','/app',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(14,3,'COPY','[\'package.json\', \'package-lock.json*\', \'./\']',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(15,3,'RUN','npm install --production',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(16,3,'COPY@@','. .',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(17,3,'CMD','[\'node\', \'server.js\']',2,'0','2023-05-09 02:44:28','0','2023-05-09 02:44:28'),(18,4,'FROM','node:12.18.1',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(19,4,'ENV','NODE_ENV=production',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(20,4,'WORKDIR','/app',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(21,4,'COPY','[\'package.json\', \'package-lock.json*\', \'./\']',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(22,4,'RUN','npm install --production',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(23,4,'COPY@@','. .',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(24,4,'CMD','[\'node\', \'server.js\']',2,'0','2023-05-08 12:58:26','0','2023-05-08 12:58:26'),(25,5,'FROM','ubuntu6',2,'0','2023-05-08 07:14:14','0','2023-05-08 07:14:14'),(26,5,'MAINTAINER','lynnhtetaung@gmail.com',2,'0','2023-05-08 07:14:14','0','2023-05-08 07:14:14'),(27,2,'FROM','ubuntu',0,'0','2023-05-08 05:59:58','0','2023-05-08 05:59:58'),(28,6,'FROM','php:7.4-cli',2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(29,6,'COPY','. /usr/src/myapp',2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(30,6,'WORKDIR','/usr/src/myapp',2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(31,6,'CMD','[ \'php\', \'./your-script.php\' ]',2,'0','2023-05-08 07:08:43','0','2023-05-08 07:08:43'),(32,7,'FROM','ubuntu',2,'0','2023-05-09 02:44:13','0','2023-05-09 02:44:13'),(33,7,'ADD','testing',2,'0','2023-05-09 02:44:13','0','2023-05-09 02:44:13'),(34,7,'LABEL','lynn',2,'0','2023-05-09 02:44:13','0','2023-05-09 02:44:13'),(35,7,'MAINTAINER','lynnhtetaung@gmail.com',2,'0','2023-05-09 02:44:13','0','2023-05-09 02:44:13'),(36,8,'FROM','node:12.18.5',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(37,8,'ENV','NODE_ENV=production',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(38,8,'WORKDIR','/app',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(39,8,'COPY','[\'package.json\', \'package-lock.json*\', \'./\']',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(40,8,'RUN','npm install --production',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(41,8,'COPY@@','. .',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(42,8,'CMD','[\'node\', \'server.js\']',2,'0','2023-05-08 12:58:24','0','2023-05-08 12:58:24'),(43,9,'FROM','php:7.4-cli',2,'0','2023-05-08 12:01:47','0','2023-05-08 12:01:47'),(44,9,'COPY','. /usr/src/myapp',2,'0','2023-05-08 12:01:47','0','2023-05-08 12:01:47'),(45,9,'WORKDIR','/usr/src/myapp',2,'0','2023-05-08 12:01:47','0','2023-05-08 12:01:47'),(46,9,'CMD','[ \'php\', \'./your-script.php\' ]',2,'0','2023-05-08 12:01:47','0','2023-05-08 12:01:47'),(47,9,'FROM','php:7.4-cli',0,'0','2023-05-08 12:02:11','0','2023-05-08 12:02:11'),(48,9,'COPY','. /usr/src/myapp',0,'0','2023-05-08 12:02:11','0','2023-05-08 12:02:11'),(49,9,'WORKDIR','/usr/src/myapp',0,'0','2023-05-08 12:02:11','0','2023-05-08 12:02:11'),(50,9,'CMD','[ \'php\', \'./your-script.php\' ]',0,'0','2023-05-08 12:02:11','0','2023-05-08 12:02:11'),(51,10,'FROM','python3.8-slim-buster',0,'0','2023-05-08 12:03:48','0','2023-05-08 12:03:48'),(52,10,'WORKDIR','/app',0,'0','2023-05-08 12:03:48','0','2023-05-08 12:03:48'),(53,10,'COPY','requirements.txt requirements.txt',0,'0','2023-05-08 12:03:48','0','2023-05-08 12:03:48'),(54,10,'RUN','pip3 install -r requirements.txt',0,'0','2023-05-08 12:03:48','0','2023-05-08 12:03:48'),(55,10,'COPY@','. .',0,'0','2023-05-08 12:03:48','0','2023-05-08 12:03:48'),(56,10,'CMD','[\'python3\', \'-m\' , \'flask\', \'run\', \'--host=0.0.0.0\']',0,'0','2023-05-08 12:03:48','0','2023-05-08 12:03:48'),(57,11,'FROM','node:12.18.1',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(58,11,'ENV','NODE_ENV=production',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(59,11,'WORKDIR','/app',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(60,11,'COPY','[\'package.json\', \'package-lock.json*\', \'./\']',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(61,11,'RUN','npm install --production',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(62,11,'COPY@@','. .',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(63,11,'CMD','[\'node\', \'server.js\']',2,'0','2023-05-08 12:58:33','0','2023-05-08 12:58:33'),(64,12,'FROM','eclipse-temurin:17-jdk-jammy',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(65,12,'COPY','..mvn/ .mvn',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(66,12,'COPY@@','mvnw pom.xml ./',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(67,12,'WORRDIR','/usr/src/app',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(68,12,'RUN','./mvnw dependency:resolve',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(69,12,'COPY@@','src ./src',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(70,12,'CMD','[\'./mvnw\', \'spring-boot:run\']',0,'0','2023-05-08 12:16:03','0','2023-05-08 12:16:03'),(71,13,'FROM','node:12.18.1',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(72,13,'ENV','NODE_ENV=production',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(73,13,'WORKDIR','/app',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(74,13,'COPY','[\'package.json\', \'package-lock.json*\', \'./\']',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(75,13,'RUN','npm install --production',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(76,13,'COPY@@','. .',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(77,13,'CMD','[\'node\', \'server.js\']',0,'0','2023-05-08 12:28:47','0','2023-05-08 12:28:47'),(78,13,'FROM','node:16',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(79,13,'ENV','NODE_ENV=production',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(80,13,'WORKDIR','/app',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(81,13,'COPY','package*.json ./',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(82,13,'RUN','npm install --production',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(83,13,'COPY@@','. .',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(84,13,'CMD','[\'node\', \'server.js\']',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(85,13,'EXPOSE','8080',0,'0','2023-05-08 12:35:50','0','2023-05-08 12:35:50'),(86,13,'FROM','nginx:alpine',0,'0','2023-05-08 12:47:09','0','2023-05-08 12:47:09'),(87,13,'LABEL','maintainer=docker-maint@nginx.com',0,'0','2023-05-08 12:47:09','0','2023-05-08 12:47:09'),(88,13,'ENV','NODE_VERSION=1.21.1',0,'0','2023-05-08 12:47:09','0','2023-05-08 12:47:09'),(89,13,'ENV','NJS_VERSION=0.6.1',0,'0','2023-05-08 12:47:09','0','2023-05-08 12:47:09'),(90,13,'ENV','PKG_RELEASE=1',0,'0','2023-05-08 12:47:09','0','2023-05-08 12:47:09'),(91,10,'FROM','python3.8-slim-buster',0,'0','2023-05-08 12:48:44','0','2023-05-08 12:48:44'),(92,10,'WORKDIR','/app',0,'0','2023-05-08 12:48:44','0','2023-05-08 12:48:44'),(93,10,'MAINTAINER','python-admin@gmail.com',0,'0','2023-05-08 12:48:44','0','2023-05-08 12:48:44'),(94,10,'EXPOSE','8000',0,'0','2023-05-08 12:48:44','0','2023-05-08 12:48:44'),(95,14,'FROM','php:7.4-cli',0,'0','2023-05-08 12:50:59','0','2023-05-08 12:50:59'),(96,14,'COPY','. /usr/src/myapp',0,'0','2023-05-08 12:50:59','0','2023-05-08 12:50:59'),(97,14,'WORKDIR','/usr/src/myapp',0,'0','2023-05-08 12:50:59','0','2023-05-08 12:50:59'),(98,14,'EXPOSE','8000',0,'0','2023-05-08 12:50:59','0','2023-05-08 12:50:59'),(99,12,'FROM','ubuntu:16.04',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(100,12,'MAINTAINER','Java <clh960524@gmail.com>',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(101,12,'ENV','TEMP_MRCNN_DIR /tmp/mrcnn',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(102,12,'EXPOSE','4404',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(103,12,'RUN','mkdir java',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(104,12,'WORKDIR','/root',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(105,12,'CMD','[\'/bin/bash\']',0,'0','2023-05-08 12:52:52','0','2023-05-08 12:52:52'),(106,14,'FROM','ubuntu:alpine',0,'0','2023-05-08 12:55:41','0','2023-05-08 12:55:41'),(107,14,'ENV','PHP_VERSIN=8.0',0,'0','2023-05-08 12:55:41','0','2023-05-08 12:55:41'),(108,14,'WORKDIR','/usr/src/myapp',0,'0','2023-05-08 12:55:41','0','2023-05-08 12:55:41'),(109,14,'EXPOSE','8000',0,'0','2023-05-08 12:55:41','0','2023-05-08 12:55:41'),(110,15,'FROM','nginx:alpine',0,'0','2023-05-09 01:50:09','0','2023-05-09 01:50:09'),(111,15,'LABEL','Testing=1',0,'0','2023-05-09 01:51:23','0','2023-05-09 01:51:23'),(112,15,'MAINTAINER','lynn@gmail.com',0,'0','2023-05-09 01:50:09','0','2023-05-09 01:50:09'),(113,16,'FROM','nginx:alpine',0,'0','2023-05-09 02:05:21','0','2023-05-09 02:05:21'),(114,16,'LABEL','maintainer=docker-maint@nginx.com',0,'0','2023-05-09 02:05:21','0','2023-05-09 02:05:21'),(115,16,'ENV','NODE_VERSION=1.21.1',0,'0','2023-05-09 02:05:21','0','2023-05-09 02:05:21'),(116,16,'ENV','NJS_VERSION=0.6.1',0,'0','2023-05-09 02:05:21','0','2023-05-09 02:05:21'),(117,16,'ENV','PKG_RELEASE=1',0,'0','2023-05-09 02:05:21','0','2023-05-09 02:05:21'),(118,17,'FROM','nginx:alpine',0,'0','2023-05-09 02:13:21','0','2023-05-09 02:13:21'),(119,17,'LABEL','maintainer=docker-maint@nginx.com',0,'0','2023-05-09 02:13:21','0','2023-05-09 02:13:21'),(120,18,'FROM','ubuntu',0,'0','2023-05-09 02:43:39','0','2023-05-09 02:43:39'),(121,18,'MAINTAINER','lynnhtetaung@gmail.com',0,'0','2023-05-09 02:43:39','0','2023-05-09 02:43:39'),(122,18,'ENV','Version=1',0,'0','2023-05-09 02:43:39','0','2023-05-09 02:43:39'),(123,19,'FROM','nginx:alpine',0,'0','2023-05-09 04:41:46','0','2023-05-09 04:41:46'),(124,19,'LABEL','maintainer=docker-maint@nginx.com',0,'0','2023-05-09 04:41:46','0','2023-05-09 04:41:46'),(125,19,'ENV','NODE_VERSION=1.22.1',0,'0','2023-05-09 04:47:34','0','2023-05-09 04:47:34'),(126,19,'ENV','NJS_VERSION=0.6.1',0,'0','2023-05-09 04:41:46','0','2023-05-09 04:41:46'),(127,19,'ENV','PKG_RELEASE=1',0,'0','2023-05-09 04:41:46','0','2023-05-09 04:41:46'),(128,20,'FROM','ubuntu',0,'0','2023-05-09 04:45:27','0','2023-05-09 04:45:27'),(129,20,'MAINTAINER','htet',0,'0','2023-05-09 04:45:27','0','2023-05-09 04:45:27'),(130,20,'ENV','version=1',0,'0','2023-05-09 04:45:27','0','2023-05-09 04:45:27'),(131,21,'FROM','nginx:alpine',0,'0','2023-05-09 04:59:35','0','2023-05-09 04:59:35'),(132,21,'LABEL','maintainer=docker-maint@nginx.com',0,'0','2023-05-09 04:59:35','0','2023-05-09 04:59:35'),(133,21,'ENV','NODE_VERSION=1.21.1',0,'0','2023-05-09 04:59:35','0','2023-05-09 04:59:35'),(134,21,'ENV','NJS_VERSION=0.6.1',0,'0','2023-05-09 04:59:35','0','2023-05-09 04:59:35'),(135,21,'ENV','PKG_RELEASE=1',0,'0','2023-05-09 04:59:35','0','2023-05-09 04:59:35'),(136,22,'FROM','ubuntu:16.04',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33'),(137,22,'MAINTAINER','Java <clh960524@gmail.com>',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33'),(138,22,'ENV','TEMP_MRCNN_DIR /tmp/mrcnn',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33'),(139,22,'EXPOSE','4404',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33'),(140,22,'RUN','mkdir java',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33'),(141,22,'WORKDIR','/root',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33'),(142,22,'CMD','[\'/bin/bash\']',0,'0','2023-05-09 05:25:33','0','2023-05-09 05:25:33');
/*!40000 ALTER TABLE `application_instruction_mapping_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docker_instructions`
--

DROP TABLE IF EXISTS `docker_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docker_instructions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL COMMENT '0 -active, 1-inactive, 2-delete',
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docker_instructions`
--

LOCK TABLES `docker_instructions` WRITE;
/*!40000 ALTER TABLE `docker_instructions` DISABLE KEYS */;
INSERT INTO `docker_instructions` VALUES (1,'ENTRYPOINT',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(2,'ARGS',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(3,'ENV',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(4,'ADD',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(5,'LABEL',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(6,'MAINTAINER',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(7,'USER',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(8,'FROM',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(9,'EXPOSE',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(10,'WORKDIR',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(11,'COPY',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(12,'RUN',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(13,'CMD',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57'),(14,'VOLUME',0,'0','2023-05-07 13:58:57','0','2023-05-07 13:58:57');
/*!40000 ALTER TABLE `docker_instructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programmings`
--

DROP TABLE IF EXISTS `programmings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programmings` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '0- no-programming',
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0' COMMENT '0 -active, 1-inactive, 2-delete',
  `created_by` varchar(255) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT '0',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programmings`
--

LOCK TABLES `programmings` WRITE;
/*!40000 ALTER TABLE `programmings` DISABLE KEYS */;
INSERT INTO `programmings` VALUES (1,'javascript',1,0,'0','2023-05-07 13:47:50','0','2023-05-07 13:47:50'),(2,'java',1,0,'0','2023-05-07 13:47:50','0','2023-05-07 13:47:50'),(3,'php',1,0,'0','2023-05-07 13:47:50','0','2023-05-07 13:47:50'),(4,'python',1,0,'0','2023-05-07 13:47:50','0','2023-05-07 13:47:50'),(5,'rubyonrails',1,0,'0','2023-05-07 13:47:50','0','2023-05-07 13:47:50'),(6,'ns3',2,0,'0','2023-05-09 02:08:09','0','2023-05-09 02:08:09'),(7,'optimization algorithms',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(8,'DCGAN',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(0,'non-program',1,0,'0','2023-05-07 14:20:04','0','2023-05-07 14:20:04'),(9,'RNN',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(10,'CNN',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(11,'FFmpeg',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(12,'Converter',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(13,'Palabos',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(14,'Flow',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(15,'Block c-mining',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(16,'C-19 detection',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(17,'C-19 outbreak prediction',1,0,'0','2023-05-09 02:11:24','0','2023-05-09 02:11:24'),(18,'Multi C-Resizing',1,0,'0','2023-05-09 02:12:01','0','2023-05-09 02:12:01'),(19,'Multi F-Changing',1,0,'0','2023-05-09 02:12:01','0','2023-05-09 02:12:01');
/*!40000 ALTER TABLE `programmings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'funabiki_docker_manage'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 16:44:02
