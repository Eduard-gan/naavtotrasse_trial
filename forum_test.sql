-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: forum_test
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add crontab',7,'add_crontabschedule'),(26,'Can change crontab',7,'change_crontabschedule'),(27,'Can delete crontab',7,'delete_crontabschedule'),(28,'Can view crontab',7,'view_crontabschedule'),(29,'Can add interval',8,'add_intervalschedule'),(30,'Can change interval',8,'change_intervalschedule'),(31,'Can delete interval',8,'delete_intervalschedule'),(32,'Can view interval',8,'view_intervalschedule'),(33,'Can add periodic task',9,'add_periodictask'),(34,'Can change periodic task',9,'change_periodictask'),(35,'Can delete periodic task',9,'delete_periodictask'),(36,'Can view periodic task',9,'view_periodictask'),(37,'Can add periodic tasks',10,'add_periodictasks'),(38,'Can change periodic tasks',10,'change_periodictasks'),(39,'Can delete periodic tasks',10,'delete_periodictasks'),(40,'Can view periodic tasks',10,'view_periodictasks'),(41,'Can add solar event',11,'add_solarschedule'),(42,'Can change solar event',11,'change_solarschedule'),(43,'Can delete solar event',11,'delete_solarschedule'),(44,'Can view solar event',11,'view_solarschedule'),(45,'Can add clocked',12,'add_clockedschedule'),(46,'Can change clocked',12,'change_clockedschedule'),(47,'Can delete clocked',12,'delete_clockedschedule'),(48,'Can view clocked',12,'view_clockedschedule'),(49,'Can add Forum',13,'add_forum'),(50,'Can change Forum',13,'change_forum'),(51,'Can delete Forum',13,'delete_forum'),(52,'Can view Forum',13,'view_forum'),(53,'Can add Post',14,'add_post'),(54,'Can change Post',14,'change_post'),(55,'Can delete Post',14,'delete_post'),(56,'Can view Post',14,'view_post'),(57,'Can add Topic',15,'add_topic'),(58,'Can change Topic',15,'change_topic'),(59,'Can delete Topic',15,'delete_topic'),(60,'Can view Topic',15,'view_topic'),(61,'Can add Attachment',16,'add_attachment'),(62,'Can change Attachment',16,'change_attachment'),(63,'Can delete Attachment',16,'delete_attachment'),(64,'Can view Attachment',16,'view_attachment'),(65,'Can add Topic poll',17,'add_topicpoll'),(66,'Can change Topic poll',17,'change_topicpoll'),(67,'Can delete Topic poll',17,'delete_topicpoll'),(68,'Can view Topic poll',17,'view_topicpoll'),(69,'Can add Topic poll option',18,'add_topicpolloption'),(70,'Can change Topic poll option',18,'change_topicpolloption'),(71,'Can delete Topic poll option',18,'delete_topicpolloption'),(72,'Can view Topic poll option',18,'view_topicpolloption'),(73,'Can add Topic poll vote',19,'add_topicpollvote'),(74,'Can change Topic poll vote',19,'change_topicpollvote'),(75,'Can delete Topic poll vote',19,'delete_topicpollvote'),(76,'Can view Topic poll vote',19,'view_topicpollvote'),(77,'Can add Forum track',20,'add_forumreadtrack'),(78,'Can change Forum track',20,'change_forumreadtrack'),(79,'Can delete Forum track',20,'delete_forumreadtrack'),(80,'Can view Forum track',20,'view_forumreadtrack'),(81,'Can add Topic track',21,'add_topicreadtrack'),(82,'Can change Topic track',21,'change_topicreadtrack'),(83,'Can delete Topic track',21,'delete_topicreadtrack'),(84,'Can view Topic track',21,'view_topicreadtrack'),(85,'Can add Forum profile',22,'add_forumprofile'),(86,'Can change Forum profile',22,'change_forumprofile'),(87,'Can delete Forum profile',22,'delete_forumprofile'),(88,'Can view Forum profile',22,'view_forumprofile'),(89,'Can add Forum permission',23,'add_forumpermission'),(90,'Can change Forum permission',23,'change_forumpermission'),(91,'Can delete Forum permission',23,'delete_forumpermission'),(92,'Can view Forum permission',23,'view_forumpermission'),(93,'Can add Group forum permission',24,'add_groupforumpermission'),(94,'Can change Group forum permission',24,'change_groupforumpermission'),(95,'Can delete Group forum permission',24,'delete_groupforumpermission'),(96,'Can view Group forum permission',24,'view_groupforumpermission'),(97,'Can add User forum permission',25,'add_userforumpermission'),(98,'Can change User forum permission',25,'change_userforumpermission'),(99,'Can delete User forum permission',25,'delete_userforumpermission'),(100,'Can view User forum permission',25,'view_userforumpermission');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$mVALSQ6lder2$obC99caDyeJRfVWD0WDJdEFlL29cnTdeMCMXTbWMEyw=','2021-06-17 19:15:59.987623',1,'sadmin','','','',1,1,'2021-05-19 19:02:39.844358'),(2,'pbkdf2_sha256$150000$uOEwWt52O5Wp$1IBNIbTD3jL1Xko4zhEc/BI8db/kIpwOiUhtOlibzwI=',NULL,0,'ivanov','','','',0,1,'2021-06-17 19:21:50.098998'),(3,'pbkdf2_sha256$150000$0yYz6fYuNxVe$6j6p2Uv25/st7Zl4ZZUGQ7k1lH+e6+hcyV4+3AlJuN8=',NULL,0,'petrov','','','',0,1,'2021-06-17 19:22:07.665726'),(4,'pbkdf2_sha256$150000$v7PKFoQTju0v$QOM8jblM2QCOmTOYYDrDG5nqALyI4FIYSihAskKS+Ws=',NULL,0,'sidorov','','','',0,1,'2021-06-17 19:22:22.267937'),(5,'pbkdf2_sha256$150000$1PjKXVUSdzSs$AzkOJze+dILDRJ/ysSD8M/qqB+lsm5fDHUr91QgGj50=',NULL,0,'esenin','','','',0,1,'2021-06-17 19:22:32.591697'),(6,'pbkdf2_sha256$150000$nt8A7eyF4J5z$+BdV3AXUNR1LNZSadlruUYS6KDWHmAY/EHISXbds4WY=',NULL,0,'smirnov','','','',0,1,'2021-06-17 19:22:46.149688'),(7,'pbkdf2_sha256$150000$i0IrR8TeC5xO$JTM0pxhdS9gD/xkmIZSJYuST2D00K7Utsa8/5LR8cWc=',NULL,0,'glazunov','','','',0,1,'2021-06-17 19:22:56.087401'),(8,'pbkdf2_sha256$150000$wst0VbJ3pD1t$/OXKoAtLO1OGmyX9DPDx/4aoK+wWewIYhyebKnamiOM=',NULL,0,'frosin','','','',0,1,'2021-06-17 19:23:09.319797'),(9,'pbkdf2_sha256$150000$FPPKRuYreZRs$DpRC4Cjjc+u76pj35XAgBceBg+d/dZG/JVTk9yHrO5Q=',NULL,0,'doe','','','',0,1,'2021-06-17 19:23:19.736382'),(10,'pbkdf2_sha256$150000$8EcGzVwNTtVd$scPbLM7EljXDX9ll6tdhBpvWsRLQea8LCDD3pLuOHwE=',NULL,0,'krasavin','','','',0,1,'2021-06-17 19:23:28.230530'),(11,'pbkdf2_sha256$150000$liRcsYEij64W$eEDj/y40baL5diJxEYMKU+aEs5JmNWxfX8+DjUSSKsE=',NULL,0,'almentiev','','','',0,1,'2021-06-17 19:23:35.807193'),(12,'pbkdf2_sha256$150000$uKfXAM05AfiB$jGx2zYegULTQkcSr1E8QblxQ6JUk7QJ/BYGoZkAbUhg=',NULL,0,'baranov','','','',0,1,'2021-06-17 19:23:41.294987'),(13,'pbkdf2_sha256$150000$LzDHcw6WF3zV$YwDEyK7CtS/h7jCLit4zkAq8yRKSz6RvFnABtuS4TJI=',NULL,0,'kirov','','','',0,1,'2021-06-17 19:24:15.993701'),(14,'pbkdf2_sha256$150000$HoWM7EAtEZE7$+j1HRSX6a9BZAf+D1tUI2ICgI4ARBBtvYQvJxLWQCd8=',NULL,0,'slepin','','','',0,1,'2021-06-17 19:24:26.681564'),(15,'pbkdf2_sha256$150000$tXg1KTEzdpGm$ZGPzR0Tf/ncTOhnu41rMwm23oRndD/VRrpfqr8jbi24=',NULL,0,'kirillov','','','',0,1,'2021-06-17 19:24:37.682042'),(16,'pbkdf2_sha256$150000$uP9uZNacw2Rw$rqIeYpF5jXJMfcfmqAXIuYveF8Re0xvdtOi8iG/9Nv4=',NULL,0,'baburin','','','',0,1,'2021-06-17 19:24:52.448916'),(17,'pbkdf2_sha256$150000$ifxiDdyBLbmc$jcgmIfYForzbtpScCRQUAgsLfHksDsPkCQ5ZL6++Gr0=',NULL,0,'gulin','','','',0,1,'2021-06-17 19:25:04.497799'),(18,'pbkdf2_sha256$150000$rbBld8xDyv8Y$Bb6/sS0oTWWVkLH0Tpmr6DvsObITp3D/Bo73W+kK1VY=',NULL,0,'mamonov','','','',0,1,'2021-06-17 19:25:11.263128'),(19,'pbkdf2_sha256$150000$6OL5SsQUx1K9$qUpDgJu9zHeCZHNQA67WI246HKTYxyq2wSi0dZf7Yhw=',NULL,0,'sergeev','','','',0,1,'2021-06-17 19:25:17.917406'),(20,'pbkdf2_sha256$150000$oThwE3neqZSg$+HgrPA8bcJ++8Dzz+jLf9wABC6WcezFXRLlJ+2wg+Gs=',NULL,0,'evplampiev','','','',0,1,'2021-06-17 19:25:29.335225'),(21,'pbkdf2_sha256$150000$8VvGAUqVoDEW$b2Gg0MQViWUoEWVcwDfIHYTxdmc1vaKk8zH0V12+DMU=',NULL,0,'kurskiy','','','',0,1,'2021-06-17 19:25:49.766671');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-06-17 19:20:01.012834','1','Main',1,'[{\"added\": {}}]',13,1),(2,'2021-06-17 19:20:43.261405','2','Submain 1',1,'[{\"added\": {}}]',13,1),(3,'2021-06-17 19:20:57.979120','3','Submain 2',1,'[{\"added\": {}}]',13,1),(4,'2021-06-17 19:21:50.185506','2','ivanov',1,'[{\"added\": {}}]',4,1),(5,'2021-06-17 19:22:07.755866','3','petrov',1,'[{\"added\": {}}]',4,1),(6,'2021-06-17 19:22:22.356302','4','sidorov',1,'[{\"added\": {}}]',4,1),(7,'2021-06-17 19:22:32.696845','5','esenin',1,'[{\"added\": {}}]',4,1),(8,'2021-06-17 19:22:46.249441','6','smirnov',1,'[{\"added\": {}}]',4,1),(9,'2021-06-17 19:22:56.191938','7','glazunov',1,'[{\"added\": {}}]',4,1),(10,'2021-06-17 19:23:09.428748','8','frosin',1,'[{\"added\": {}}]',4,1),(11,'2021-06-17 19:23:19.838811','9','doe',1,'[{\"added\": {}}]',4,1),(12,'2021-06-17 19:23:28.336034','10','krasavin',1,'[{\"added\": {}}]',4,1),(13,'2021-06-17 19:23:35.908938','11','almentiev',1,'[{\"added\": {}}]',4,1),(14,'2021-06-17 19:23:41.395238','12','baranov',1,'[{\"added\": {}}]',4,1),(15,'2021-06-17 19:24:16.094914','13','kirov',1,'[{\"added\": {}}]',4,1),(16,'2021-06-17 19:24:26.787940','14','slepin',1,'[{\"added\": {}}]',4,1),(17,'2021-06-17 19:24:37.774602','15','kirillov',1,'[{\"added\": {}}]',4,1),(18,'2021-06-17 19:24:52.545784','16','baburin',1,'[{\"added\": {}}]',4,1),(19,'2021-06-17 19:25:04.604293','17','gulin',1,'[{\"added\": {}}]',4,1),(20,'2021-06-17 19:25:11.355788','18','mamonov',1,'[{\"added\": {}}]',4,1),(21,'2021-06-17 19:25:18.019856','19','sergeev',1,'[{\"added\": {}}]',4,1),(22,'2021-06-17 19:25:29.442644','20','evplampiev',1,'[{\"added\": {}}]',4,1),(23,'2021-06-17 19:25:49.857601','21','kurskiy',1,'[{\"added\": {}}]',4,1),(24,'2021-06-17 19:26:18.460401','1','almentiev - Main',1,'[{\"added\": {}}]',20,1),(25,'2021-06-17 19:26:22.313447','2','almentiev - Submain 1',1,'[{\"added\": {}}]',20,1),(26,'2021-06-17 19:26:28.727929','3','almentiev - Submain 2',1,'[{\"added\": {}}]',20,1),(27,'2021-06-17 19:26:37.362372','4','baburin - Main',1,'[{\"added\": {}}]',20,1),(28,'2021-06-17 19:26:43.517044','5','baburin - Submain 1',1,'[{\"added\": {}}]',20,1),(29,'2021-06-17 19:26:48.933672','6','baburin - Submain 2',1,'[{\"added\": {}}]',20,1),(30,'2021-06-17 19:35:06.903814','64','kurskiy - Submain 2',3,'',20,1),(31,'2021-06-17 19:35:06.907989','60','evplampiev - Submain 1',3,'',20,1),(32,'2021-06-17 19:35:06.911893','56','sergeev - Main',3,'',20,1),(33,'2021-06-17 19:35:06.915353','45','slepin - Submain 1',3,'',20,1),(34,'2021-06-17 19:35:06.918890','36','krasavin - Submain 2',3,'',20,1),(35,'2021-06-17 19:35:06.922849','31','doe - Main',3,'',20,1),(36,'2021-06-17 19:35:06.929921','26','glazunov - Submain 1',3,'',20,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_clockedschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_clockedschedule`
--

LOCK TABLES `django_celery_beat_clockedschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_week` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_month` varchar(124) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_of_year` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_crontabschedule`
--

LOCK TABLES `django_celery_beat_crontabschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` DISABLE KEYS */;
INSERT INTO `django_celery_beat_crontabschedule` VALUES (1,'0','4','*','*','*','Europe/Moscow');
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_intervalschedule`
--

LOCK TABLES `django_celery_beat_intervalschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictask`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kwargs` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_key` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `clocked_id` int(11) DEFAULT NULL,
  `expire_seconds` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`),
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictask`
--

LOCK TABLES `django_celery_beat_periodictask` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` DISABLE KEYS */;
INSERT INTO `django_celery_beat_periodictask` VALUES (1,'celery.backend_cleanup','celery.backend_cleanup','[]','{}',NULL,NULL,NULL,NULL,1,NULL,0,'2021-06-17 09:42:20.980889','',1,NULL,NULL,0,NULL,NULL,'{}',NULL,43200);
/*!40000 ALTER TABLE `django_celery_beat_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictasks`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictasks`
--

LOCK TABLES `django_celery_beat_periodictasks` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` DISABLE KEYS */;
INSERT INTO `django_celery_beat_periodictasks` VALUES (1,'2021-06-17 09:42:20.975227');
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_solarschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_solarschedule`
--

LOCK TABLES `django_celery_beat_solarschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'django_celery_beat','clockedschedule'),(7,'django_celery_beat','crontabschedule'),(8,'django_celery_beat','intervalschedule'),(9,'django_celery_beat','periodictask'),(10,'django_celery_beat','periodictasks'),(11,'django_celery_beat','solarschedule'),(13,'forum','forum'),(16,'forum_attachments','attachment'),(14,'forum_conversation','post'),(15,'forum_conversation','topic'),(22,'forum_member','forumprofile'),(23,'forum_permission','forumpermission'),(24,'forum_permission','groupforumpermission'),(25,'forum_permission','userforumpermission'),(17,'forum_polls','topicpoll'),(18,'forum_polls','topicpolloption'),(19,'forum_polls','topicpollvote'),(20,'forum_tracking','forumreadtrack'),(21,'forum_tracking','topicreadtrack'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-19 07:04:02.759946'),(2,'auth','0001_initial','2021-05-19 07:04:02.946604'),(3,'admin','0001_initial','2021-05-19 07:04:03.438674'),(4,'admin','0002_logentry_remove_auto_add','2021-05-19 07:04:03.552177'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-19 07:04:03.572892'),(6,'contenttypes','0002_remove_content_type_name','2021-05-19 07:04:03.653200'),(7,'auth','0002_alter_permission_name_max_length','2021-05-19 07:04:03.705981'),(8,'auth','0003_alter_user_email_max_length','2021-05-19 07:04:03.740545'),(9,'auth','0004_alter_user_username_opts','2021-05-19 07:04:03.751953'),(10,'auth','0005_alter_user_last_login_null','2021-05-19 07:04:03.798257'),(11,'auth','0006_require_contenttypes_0002','2021-05-19 07:04:03.804943'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-19 07:04:03.832188'),(13,'auth','0008_alter_user_username_max_length','2021-05-19 07:04:03.886916'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-19 07:04:03.952996'),(15,'auth','0010_alter_group_name_max_length','2021-05-19 07:04:03.969577'),(16,'auth','0011_update_proxy_permissions','2021-05-19 07:04:03.981523'),(17,'django_celery_beat','0001_initial','2021-05-19 07:04:04.116174'),(18,'django_celery_beat','0002_auto_20161118_0346','2021-05-19 07:04:04.505629'),(19,'django_celery_beat','0003_auto_20161209_0049','2021-05-19 07:04:04.602717'),(20,'django_celery_beat','0004_auto_20170221_0000','2021-05-19 07:04:04.612666'),(21,'django_celery_beat','0005_add_solarschedule_events_choices','2021-05-19 07:04:04.627329'),(22,'django_celery_beat','0006_auto_20180322_0932','2021-05-19 07:04:04.725288'),(23,'django_celery_beat','0007_auto_20180521_0826','2021-05-19 07:04:04.832967'),(24,'django_celery_beat','0008_auto_20180914_1922','2021-05-19 07:04:04.876572'),(25,'django_celery_beat','0006_auto_20180210_1226','2021-05-19 07:04:04.890266'),(26,'django_celery_beat','0006_periodictask_priority','2021-05-19 07:04:04.946295'),(27,'django_celery_beat','0009_periodictask_headers','2021-05-19 07:04:05.004472'),(28,'django_celery_beat','0010_auto_20190429_0326','2021-05-19 07:04:05.393071'),(29,'django_celery_beat','0011_auto_20190508_0153','2021-05-19 07:04:05.479406'),(30,'django_celery_beat','0012_periodictask_expire_seconds','2021-05-19 07:04:05.618154'),(31,'django_celery_beat','0013_auto_20200609_0727','2021-05-19 07:04:05.636834'),(32,'django_celery_beat','0014_remove_clockedschedule_enabled','2021-05-19 07:04:05.690768'),(33,'django_celery_beat','0015_edit_solarschedule_events_choices','2021-05-19 07:04:05.698588'),(34,'forum','0001_initial','2021-05-19 07:04:05.731653'),(35,'forum_conversation','0001_initial','2021-05-19 07:04:06.164317'),(36,'forum_conversation','0002_post_anonymous_key','2021-05-19 07:04:06.668117'),(37,'forum_conversation','0003_auto_20160228_2051','2021-05-19 07:04:06.700199'),(38,'forum_conversation','0004_auto_20160427_0502','2021-05-19 07:04:06.830724'),(39,'forum_conversation','0005_auto_20160607_0455','2021-05-19 07:04:06.924474'),(40,'forum_conversation','0006_post_enable_signature','2021-05-19 07:04:07.006126'),(41,'forum_conversation','0007_auto_20160903_0450','2021-05-19 07:04:07.199574'),(42,'forum_conversation','0008_auto_20160903_0512','2021-05-19 07:04:07.391288'),(43,'forum_conversation','0009_auto_20160925_2126','2021-05-19 07:04:07.405279'),(44,'forum_conversation','0010_auto_20170120_0224','2021-05-19 07:04:07.534359'),(45,'forum','0002_auto_20150725_0512','2021-05-19 07:04:07.556196'),(46,'forum','0003_remove_forum_is_active','2021-05-19 07:04:07.640143'),(47,'forum','0004_auto_20170504_2108','2021-05-19 07:04:07.798811'),(48,'forum','0005_auto_20170504_2113','2021-05-19 07:04:07.847085'),(49,'forum','0006_auto_20170523_2036','2021-05-19 07:04:07.991475'),(50,'forum','0007_auto_20170523_2140','2021-05-19 07:04:08.039377'),(51,'forum','0008_forum_last_post','2021-05-19 07:04:08.117325'),(52,'forum','0009_auto_20170928_2327','2021-05-19 07:04:08.241392'),(53,'forum','0010_auto_20181103_1401','2021-05-19 07:04:08.282398'),(54,'forum','0011_auto_20190627_2132','2021-05-19 07:04:08.345127'),(55,'forum_attachments','0001_initial','2021-05-19 07:04:08.380445'),(56,'forum_attachments','0002_auto_20181103_1404','2021-05-19 07:04:08.464998'),(57,'forum_conversation','0011_remove_post_poster_ip','2021-05-19 07:04:08.534235'),(58,'forum_conversation','0012_auto_20200423_1049','2021-05-19 07:04:08.569769'),(59,'forum_conversation','0013_auto_20201220_1745','2021-05-19 07:04:08.701333'),(60,'forum_member','0001_initial','2021-05-19 07:04:08.738863'),(61,'forum_member','0002_auto_20160225_0515','2021-05-19 07:04:08.816280'),(62,'forum_member','0003_auto_20160227_2122','2021-05-19 07:04:08.840506'),(63,'forum_member','0004_auto_20181103_1406','2021-05-19 07:04:08.856110'),(64,'forum_member','0005_auto_20200423_1049','2021-05-19 07:04:08.868474'),(65,'forum_permission','0001_initial','2021-05-19 07:04:09.075655'),(66,'forum_permission','0002_auto_20160607_0500','2021-05-19 07:04:09.564733'),(67,'forum_permission','0003_remove_forumpermission_name','2021-05-19 07:04:09.607482'),(68,'forum_permission','0004_auto_20190319_2240','2021-05-19 07:04:09.709021'),(69,'forum_permission','0005_userforumpermission_authenticated_user','2021-05-19 07:04:09.805364'),(70,'forum_polls','0001_initial','2021-05-19 07:04:09.952067'),(71,'forum_polls','0002_auto_20151105_0029','2021-05-19 07:04:10.338887'),(72,'forum_tracking','0001_initial','2021-05-19 07:04:10.496691'),(73,'forum_tracking','0002_auto_20160607_0502','2021-05-19 07:04:10.808264'),(74,'sessions','0001_initial','2021-05-19 07:04:10.839316');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('941ju67zimsi7au5fuqc6vv2fk5b9m00','OTc3MjA5YmE1ZmI0NWJkODRmYTk4ZDg0MGVhZDQ5OGI1MmQwMmVjYTp7Il9hbm9ueW1vdXNfZm9ydW1fa2V5IjoiNzU0MTdkMjVkYzg3NDg4MDhiYTgxMDcxZDkwYWQ4YmIiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDBlOWQxZWExOTY0MmUxYzE3YzQ2MzBkZmMwMmE2MWI2ZTdjNDI0MyJ9','2021-07-01 19:35:07.088746'),('bcwebg7ypvleem8c09rf64tc9kp6snlr','ZmJjMGJjYzVhNDExMDVlNjU4YTQ0MTg5OTY4NmM0M2NjMzk0ZTg5Mzp7Il9hbm9ueW1vdXNfZm9ydW1fa2V5IjoiYWVlMjQxZTQ3ZDM3NDNlMzhmYmUzYzcwMDFmMzAxYjAiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDBlOWQxZWExOTY0MmUxYzE3YzQ2MzBkZmMwMmE2MWI2ZTdjNDI0MyJ9','2021-06-02 19:02:49.288634'),('vxrzn57veg2cq1bm33pnkmf388kuo9r4','YTc5MmMwZGUwYjI2M2Q5N2Q2Yzg1MmNjZWQ3OGNlZmVkOTFmYjQxNjp7Il9hbm9ueW1vdXNfZm9ydW1fa2V5IjoiYjk2MGI5YzE3ZDYxNDA0Y2E0NWRlMmUwNTU3N2VkYjYifQ==','2021-06-02 07:30:14.553519');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_attachments_attachment`
--

DROP TABLE IF EXISTS `forum_attachments_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_attachments_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_attachments_at_post_id_0476a843_fk_forum_con` (`post_id`),
  CONSTRAINT `forum_attachments_at_post_id_0476a843_fk_forum_con` FOREIGN KEY (`post_id`) REFERENCES `forum_conversation_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_attachments_attachment`
--

LOCK TABLES `forum_attachments_attachment` WRITE;
/*!40000 ALTER TABLE `forum_attachments_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_attachments_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_conversation_post`
--

DROP TABLE IF EXISTS `forum_conversation_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_conversation_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) NOT NULL,
  `update_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updates_count` int(10) unsigned NOT NULL,
  `_content_rendered` longtext COLLATE utf8mb4_unicode_ci,
  `poster_id` int(11) DEFAULT NULL,
  `topic_id` int(11) NOT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `anonymous_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_signature` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_conversation_post_poster_id_19c4e995_fk_auth_user_id` (`poster_id`),
  KEY `forum_conversation_p_topic_id_f6aaa418_fk_forum_con` (`topic_id`),
  KEY `forum_conversation_post_updated_by_id_86093355_fk_auth_user_id` (`updated_by_id`),
  KEY `forum_conversation_post_approved_a1090910` (`approved`),
  KEY `forum_conversation_post_enable_signature_b1ce8b55` (`enable_signature`),
  CONSTRAINT `forum_conversation_p_topic_id_f6aaa418_fk_forum_con` FOREIGN KEY (`topic_id`) REFERENCES `forum_conversation_topic` (`id`),
  CONSTRAINT `forum_conversation_post_poster_id_19c4e995_fk_auth_user_id` FOREIGN KEY (`poster_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `forum_conversation_post_updated_by_id_86093355_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_conversation_post`
--

LOCK TABLES `forum_conversation_post` WRITE;
/*!40000 ALTER TABLE `forum_conversation_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_conversation_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_conversation_topic`
--

DROP TABLE IF EXISTS `forum_conversation_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_conversation_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `posts_count` int(10) unsigned NOT NULL,
  `views_count` int(10) unsigned NOT NULL,
  `last_post_on` datetime(6) DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `first_post_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_conversation_topic_forum_id_e9cfe592_fk_forum_forum_id` (`forum_id`),
  KEY `forum_conversation_topic_poster_id_0dd4fa07_fk_auth_user_id` (`poster_id`),
  KEY `forum_conversation_topic_slug_c74ce2cc` (`slug`),
  KEY `forum_conversation_topic_type_92971eb5` (`type`),
  KEY `forum_conversation_topic_status_e78d0ae4` (`status`),
  KEY `forum_conversation_topic_approved_ad3fcbf9` (`approved`),
  KEY `forum_conversation_t_last_post_id_e14396a2_fk_forum_con` (`last_post_id`),
  KEY `forum_conversation_t_first_post_id_ca473bd1_fk_forum_con` (`first_post_id`),
  KEY `forum_conversation_topic_created_4e06996f` (`created`),
  KEY `forum_conversation_topic_last_post_on_a287686b` (`last_post_on`),
  KEY `forum_conversation_topic_updated_3a9e00a1` (`updated`),
  KEY `forum_conve_type_cc96d0_idx` (`type`,`last_post_on`),
  CONSTRAINT `forum_conversation_t_first_post_id_ca473bd1_fk_forum_con` FOREIGN KEY (`first_post_id`) REFERENCES `forum_conversation_post` (`id`),
  CONSTRAINT `forum_conversation_t_last_post_id_e14396a2_fk_forum_con` FOREIGN KEY (`last_post_id`) REFERENCES `forum_conversation_post` (`id`),
  CONSTRAINT `forum_conversation_topic_forum_id_e9cfe592_fk_forum_forum_id` FOREIGN KEY (`forum_id`) REFERENCES `forum_forum` (`id`),
  CONSTRAINT `forum_conversation_topic_poster_id_0dd4fa07_fk_auth_user_id` FOREIGN KEY (`poster_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_conversation_topic`
--

LOCK TABLES `forum_conversation_topic` WRITE;
/*!40000 ALTER TABLE `forum_conversation_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_conversation_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_conversation_topic_subscribers`
--

DROP TABLE IF EXISTS `forum_conversation_topic_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_conversation_topic_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_conversation_topic_topic_id_user_id_b2c961d5_uniq` (`topic_id`,`user_id`),
  KEY `forum_conversation_t_user_id_7e386a79_fk_auth_user` (`user_id`),
  CONSTRAINT `forum_conversation_t_topic_id_34ebca87_fk_forum_con` FOREIGN KEY (`topic_id`) REFERENCES `forum_conversation_topic` (`id`),
  CONSTRAINT `forum_conversation_t_user_id_7e386a79_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_conversation_topic_subscribers`
--

LOCK TABLES `forum_conversation_topic_subscribers` WRITE;
/*!40000 ALTER TABLE `forum_conversation_topic_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_conversation_topic_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_forum`
--

DROP TABLE IF EXISTS `forum_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_redirects` tinyint(1) NOT NULL,
  `type` smallint(5) unsigned NOT NULL,
  `link_redirects_count` int(10) unsigned NOT NULL,
  `last_post_on` datetime(6) DEFAULT NULL,
  `display_sub_forum_list` tinyint(1) NOT NULL,
  `_description_rendered` longtext COLLATE utf8mb4_unicode_ci,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `direct_posts_count` int(10) unsigned NOT NULL,
  `direct_topics_count` int(10) unsigned NOT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_forum_slug_b9acc50d` (`slug`),
  KEY `forum_forum_type_30239563` (`type`),
  KEY `forum_forum_tree_id_84a9227d` (`tree_id`),
  KEY `forum_forum_parent_id_22edea05` (`parent_id`),
  KEY `forum_forum_last_post_id_81b59e37_fk_forum_conversation_post_id` (`last_post_id`),
  CONSTRAINT `forum_forum_last_post_id_81b59e37_fk_forum_conversation_post_id` FOREIGN KEY (`last_post_id`) REFERENCES `forum_conversation_post` (`id`),
  CONSTRAINT `forum_forum_parent_id_22edea05_fk_forum_forum_id` FOREIGN KEY (`parent_id`) REFERENCES `forum_forum` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_forum`
--

LOCK TABLES `forum_forum` WRITE;
/*!40000 ALTER TABLE `forum_forum` DISABLE KEYS */;
INSERT INTO `forum_forum` VALUES (1,'2021-06-17 19:20:01.009568','2021-06-17 19:20:01.009607','Main','main','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',NULL,0,0,0,NULL,1,'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',1,6,1,0,NULL,0,0,NULL),(2,'2021-06-17 19:20:43.260668','2021-06-17 19:20:43.260706','Submain 1','submain-1','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',NULL,0,1,0,NULL,1,'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',2,3,1,1,1,0,0,NULL),(3,'2021-06-17 19:20:57.977359','2021-06-17 19:20:57.977420','Submain 2','submain-2','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',NULL,0,1,0,NULL,1,'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',4,5,1,1,1,0,0,NULL);
/*!40000 ALTER TABLE `forum_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_member_forumprofile`
--

DROP TABLE IF EXISTS `forum_member_forumprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_member_forumprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` longtext COLLATE utf8mb4_unicode_ci,
  `posts_count` int(10) unsigned NOT NULL,
  `_signature_rendered` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `forum_member_forumprofile_user_id_9d6b9b6b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_member_forumprofile`
--

LOCK TABLES `forum_member_forumprofile` WRITE;
/*!40000 ALTER TABLE `forum_member_forumprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_member_forumprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_permission_forumpermission`
--

DROP TABLE IF EXISTS `forum_permission_forumpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_permission_forumpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codename` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codename` (`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_permission_forumpermission`
--

LOCK TABLES `forum_permission_forumpermission` WRITE;
/*!40000 ALTER TABLE `forum_permission_forumpermission` DISABLE KEYS */;
INSERT INTO `forum_permission_forumpermission` VALUES (18,'can_approve_posts'),(12,'can_attach_file'),(10,'can_create_polls'),(7,'can_delete_own_posts'),(17,'can_delete_posts'),(13,'can_download_file'),(8,'can_edit_own_posts'),(16,'can_edit_posts'),(14,'can_lock_topics'),(15,'can_move_topics'),(5,'can_post_announcements'),(6,'can_post_stickies'),(9,'can_post_without_approval'),(2,'can_read_forum'),(19,'can_reply_to_locked_topics'),(4,'can_reply_to_topics'),(1,'can_see_forum'),(3,'can_start_new_topics'),(11,'can_vote_in_polls');
/*!40000 ALTER TABLE `forum_permission_forumpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_permission_groupforumpermission`
--

DROP TABLE IF EXISTS `forum_permission_groupforumpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_permission_groupforumpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `has_perm` tinyint(1) NOT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_permission_groupfo_permission_id_forum_id_g_a1e477c8_uniq` (`permission_id`,`forum_id`,`group_id`),
  KEY `forum_permission_gro_forum_id_d59d5cac_fk_forum_for` (`forum_id`),
  KEY `forum_permission_gro_group_id_b515635b_fk_auth_grou` (`group_id`),
  KEY `forum_permission_groupforumpermission_has_perm_48cae01d` (`has_perm`),
  CONSTRAINT `forum_permission_gro_forum_id_d59d5cac_fk_forum_for` FOREIGN KEY (`forum_id`) REFERENCES `forum_forum` (`id`),
  CONSTRAINT `forum_permission_gro_group_id_b515635b_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `forum_permission_gro_permission_id_2475fe70_fk_forum_per` FOREIGN KEY (`permission_id`) REFERENCES `forum_permission_forumpermission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_permission_groupforumpermission`
--

LOCK TABLES `forum_permission_groupforumpermission` WRITE;
/*!40000 ALTER TABLE `forum_permission_groupforumpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_permission_groupforumpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_permission_userforumpermission`
--

DROP TABLE IF EXISTS `forum_permission_userforumpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_permission_userforumpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `has_perm` tinyint(1) NOT NULL,
  `anonymous_user` tinyint(1) NOT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `authenticated_user` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_permission_userfor_permission_id_forum_id_u_024a3693_uniq` (`permission_id`,`forum_id`,`user_id`),
  KEY `forum_permission_use_forum_id_f781f4d6_fk_forum_for` (`forum_id`),
  KEY `forum_permission_use_user_id_8106d02d_fk_auth_user` (`user_id`),
  KEY `forum_permission_userforumpermission_anonymous_user_8aabbd9d` (`anonymous_user`),
  KEY `forum_permission_userforumpermission_has_perm_1b5ee7ac` (`has_perm`),
  KEY `forum_permission_userforumpermission_authenticated_user_b677afa4` (`authenticated_user`),
  CONSTRAINT `forum_permission_use_forum_id_f781f4d6_fk_forum_for` FOREIGN KEY (`forum_id`) REFERENCES `forum_forum` (`id`),
  CONSTRAINT `forum_permission_use_permission_id_9090e930_fk_forum_per` FOREIGN KEY (`permission_id`) REFERENCES `forum_permission_forumpermission` (`id`),
  CONSTRAINT `forum_permission_use_user_id_8106d02d_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_permission_userforumpermission`
--

LOCK TABLES `forum_permission_userforumpermission` WRITE;
/*!40000 ALTER TABLE `forum_permission_userforumpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_permission_userforumpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_polls_topicpoll`
--

DROP TABLE IF EXISTS `forum_polls_topicpoll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_polls_topicpoll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `max_options` smallint(5) unsigned NOT NULL,
  `user_changes` tinyint(1) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `topic_id` (`topic_id`),
  CONSTRAINT `forum_polls_topicpol_topic_id_1b827b83_fk_forum_con` FOREIGN KEY (`topic_id`) REFERENCES `forum_conversation_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_polls_topicpoll`
--

LOCK TABLES `forum_polls_topicpoll` WRITE;
/*!40000 ALTER TABLE `forum_polls_topicpoll` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_polls_topicpoll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_polls_topicpolloption`
--

DROP TABLE IF EXISTS `forum_polls_topicpolloption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_polls_topicpolloption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_polls_topicpol_poll_id_a54cbd58_fk_forum_pol` (`poll_id`),
  CONSTRAINT `forum_polls_topicpol_poll_id_a54cbd58_fk_forum_pol` FOREIGN KEY (`poll_id`) REFERENCES `forum_polls_topicpoll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_polls_topicpolloption`
--

LOCK TABLES `forum_polls_topicpolloption` WRITE;
/*!40000 ALTER TABLE `forum_polls_topicpolloption` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_polls_topicpolloption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_polls_topicpollvote`
--

DROP TABLE IF EXISTS `forum_polls_topicpollvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_polls_topicpollvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `poll_option_id` int(11) NOT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `anonymous_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_polls_topicpol_poll_option_id_a075b665_fk_forum_pol` (`poll_option_id`),
  KEY `forum_polls_topicpollvote_voter_id_0a287559_fk_auth_user_id` (`voter_id`),
  CONSTRAINT `forum_polls_topicpol_poll_option_id_a075b665_fk_forum_pol` FOREIGN KEY (`poll_option_id`) REFERENCES `forum_polls_topicpolloption` (`id`),
  CONSTRAINT `forum_polls_topicpollvote_voter_id_0a287559_fk_auth_user_id` FOREIGN KEY (`voter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_polls_topicpollvote`
--

LOCK TABLES `forum_polls_topicpollvote` WRITE;
/*!40000 ALTER TABLE `forum_polls_topicpollvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_polls_topicpollvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_tracking_forumreadtrack`
--

DROP TABLE IF EXISTS `forum_tracking_forumreadtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_tracking_forumreadtrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark_time` datetime(6) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_tracking_forumreadtrack_user_id_forum_id_3e64777a_uniq` (`user_id`,`forum_id`),
  KEY `forum_tracking_forum_forum_id_bbd3fb47_fk_forum_for` (`forum_id`),
  KEY `forum_tracking_forumreadtrack_mark_time_72eec39e` (`mark_time`),
  CONSTRAINT `forum_tracking_forum_forum_id_bbd3fb47_fk_forum_for` FOREIGN KEY (`forum_id`) REFERENCES `forum_forum` (`id`),
  CONSTRAINT `forum_tracking_forumreadtrack_user_id_932d4605_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_tracking_forumreadtrack`
--

LOCK TABLES `forum_tracking_forumreadtrack` WRITE;
/*!40000 ALTER TABLE `forum_tracking_forumreadtrack` DISABLE KEYS */;
INSERT INTO `forum_tracking_forumreadtrack` VALUES (1,'2021-06-17 19:26:18.458725',1,11),(2,'2021-06-17 19:26:22.312096',2,11),(3,'2021-06-17 19:26:28.727199',3,11),(4,'2021-06-17 19:26:37.361620',1,16),(5,'2021-06-17 19:26:43.516162',2,16),(6,'2021-06-17 19:26:48.932817',3,16),(7,'2021-06-17 19:34:19.385285',1,1),(8,'2021-06-17 19:34:19.390272',2,1),(9,'2021-06-17 19:34:19.393716',3,1),(10,'2021-06-17 19:34:19.400998',1,2),(11,'2021-06-17 19:34:19.404836',2,2),(12,'2021-06-17 19:34:19.408552',3,2),(13,'2021-06-17 19:34:19.410461',1,3),(14,'2021-06-17 19:34:19.414005',2,3),(15,'2021-06-17 19:34:19.417550',3,3),(16,'2021-06-17 19:34:19.421147',1,4),(17,'2021-06-17 19:34:19.429109',2,4),(18,'2021-06-17 19:34:19.433676',3,4),(19,'2021-06-17 19:34:19.437209',1,5),(20,'2021-06-17 19:34:19.440769',2,5),(21,'2021-06-17 19:34:19.443624',3,5),(22,'2021-06-17 19:34:19.447904',1,6),(23,'2021-06-17 19:34:19.452161',2,6),(24,'2021-06-17 19:34:19.456394',3,6),(25,'2021-06-17 19:34:19.460550',1,7),(27,'2021-06-17 19:34:19.468862',3,7),(28,'2021-06-17 19:34:19.472715',1,8),(29,'2021-06-17 19:34:19.477310',2,8),(30,'2021-06-17 19:34:19.481753',3,8),(32,'2021-06-17 19:34:19.490117',2,9),(33,'2021-06-17 19:34:19.494170',3,9),(34,'2021-06-17 19:34:19.498526',1,10),(35,'2021-06-17 19:34:19.502958',2,10),(38,'2021-06-17 19:34:29.466739',1,12),(39,'2021-06-17 19:34:29.470809',2,12),(40,'2021-06-17 19:34:29.474951',3,12),(41,'2021-06-17 19:34:29.478883',1,13),(42,'2021-06-17 19:34:29.483073',2,13),(43,'2021-06-17 19:34:29.487028',3,13),(44,'2021-06-17 19:34:29.491344',1,14),(46,'2021-06-17 19:34:29.500376',3,14),(47,'2021-06-17 19:34:29.504996',1,15),(48,'2021-06-17 19:34:29.509298',2,15),(49,'2021-06-17 19:34:29.514191',3,15),(50,'2021-06-17 19:34:29.522045',1,17),(51,'2021-06-17 19:34:29.526422',2,17),(52,'2021-06-17 19:34:29.531156',3,17),(53,'2021-06-17 19:34:29.535745',1,18),(54,'2021-06-17 19:34:29.540107',2,18),(55,'2021-06-17 19:34:29.544464',3,18),(57,'2021-06-17 19:34:29.553955',2,19),(58,'2021-06-17 19:34:29.558572',3,19),(59,'2021-06-17 19:34:29.563032',1,20),(61,'2021-06-17 19:34:29.572520',3,20),(62,'2021-06-17 19:34:29.577027',1,21),(63,'2021-06-17 19:34:29.581369',2,21);
/*!40000 ALTER TABLE `forum_tracking_forumreadtrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_tracking_topicreadtrack`
--

DROP TABLE IF EXISTS `forum_tracking_topicreadtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_tracking_topicreadtrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark_time` datetime(6) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_tracking_topicreadtrack_user_id_topic_id_6fe3e105_uniq` (`user_id`,`topic_id`),
  KEY `forum_tracking_topic_topic_id_9a53bd45_fk_forum_con` (`topic_id`),
  KEY `forum_tracking_topicreadtrack_mark_time_7dafc483` (`mark_time`),
  CONSTRAINT `forum_tracking_topic_topic_id_9a53bd45_fk_forum_con` FOREIGN KEY (`topic_id`) REFERENCES `forum_conversation_topic` (`id`),
  CONSTRAINT `forum_tracking_topicreadtrack_user_id_2762562b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_tracking_topicreadtrack`
--

LOCK TABLES `forum_tracking_topicreadtrack` WRITE;
/*!40000 ALTER TABLE `forum_tracking_topicreadtrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_tracking_topicreadtrack` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 19:55:48
