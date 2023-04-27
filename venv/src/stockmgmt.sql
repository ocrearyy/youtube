-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: stockmgmt
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add stock',8,'add_stock'),(30,'Can change stock',8,'change_stock'),(31,'Can delete stock',8,'delete_stock'),(32,'Can view stock',8,'view_stock'),(33,'Can add registration profile',9,'add_registrationprofile'),(34,'Can change registration profile',9,'change_registrationprofile'),(35,'Can delete registration profile',9,'delete_registrationprofile'),(36,'Can view registration profile',9,'view_registrationprofile'),(37,'Can add supervised registration profile',10,'add_supervisedregistrationprofile'),(38,'Can change supervised registration profile',10,'change_supervisedregistrationprofile'),(39,'Can delete supervised registration profile',10,'delete_supervisedregistrationprofile'),(40,'Can view supervised registration profile',10,'view_supervisedregistrationprofile'),(41,'Can add stock history',11,'add_stockhistory'),(42,'Can change stock history',11,'change_stockhistory'),(43,'Can delete stock history',11,'delete_stockhistory'),(44,'Can view stock history',11,'view_stockhistory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$390000$FvrQB8AGq5fa1njRD5G40g$4fvFbb72aPeA6Yp9laNfpMO79rPUemf5PQQQiJLhAEw=','2023-03-13 21:38:28.922095',1,'ocreary','','','ocreary@seprod.com',1,1,'2023-02-17 15:53:58.101610');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-02-17 15:54:57.093963','1','sclarke',3,'',4,2),(2,'2023-02-17 15:55:33.845298','1','MIDL',1,'[{\"added\": {}}]',7,2),(3,'2023-02-17 15:55:57.318580','2','JGC',1,'[{\"added\": {}}]',7,2),(4,'2023-02-17 15:56:13.944240','4','CPL',1,'[{\"added\": {}}]',7,2),(5,'2023-02-17 15:56:18.384605','5','SERGE',1,'[{\"added\": {}}]',7,2),(6,'2023-02-17 15:58:53.113010','6','ISL',1,'[{\"added\": {}}]',7,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'registration','registrationprofile'),(10,'registration','supervisedregistrationprofile'),(6,'sessions','session'),(7,'stockmgmt','category'),(8,'stockmgmt','stock'),(11,'stockmgmt','stockhistory');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-16 15:57:35.149983'),(2,'auth','0001_initial','2023-02-16 15:57:35.449797'),(3,'admin','0001_initial','2023-02-16 15:57:35.512475'),(4,'admin','0002_logentry_remove_auto_add','2023-02-16 15:57:35.519500'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-16 15:57:35.525853'),(6,'contenttypes','0002_remove_content_type_name','2023-02-16 15:57:35.572322'),(7,'auth','0002_alter_permission_name_max_length','2023-02-16 15:57:35.612591'),(8,'auth','0003_alter_user_email_max_length','2023-02-16 15:57:35.635333'),(9,'auth','0004_alter_user_username_opts','2023-02-16 15:57:35.647304'),(10,'auth','0005_alter_user_last_login_null','2023-02-16 15:57:35.682090'),(11,'auth','0006_require_contenttypes_0002','2023-02-16 15:57:35.685418'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-16 15:57:35.691866'),(13,'auth','0008_alter_user_username_max_length','2023-02-16 15:57:35.731177'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-16 15:57:35.770516'),(15,'auth','0010_alter_group_name_max_length','2023-02-16 15:57:35.787501'),(16,'auth','0011_update_proxy_permissions','2023-02-16 15:57:35.795065'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-16 15:57:35.829422'),(18,'sessions','0001_initial','2023-02-16 15:57:35.852316'),(19,'stockmgmt','0001_initial','2023-02-16 15:57:35.896072'),(20,'registration','0001_initial','2023-02-20 02:05:28.176335'),(21,'registration','0002_registrationprofile_activated','2023-02-20 02:05:28.223852'),(22,'registration','0003_migrate_activatedstatus','2023-02-20 02:05:28.239810'),(23,'registration','0004_supervisedregistrationprofile','2023-02-20 02:05:28.336857'),(24,'registration','0005_activation_key_sha256','2023-02-20 02:05:28.407333'),(25,'stockmgmt','0002_stockhistory','2023-02-20 12:47:13.606433');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('sdjvjlclhp88mxskzvqb6gpy1ecxpiu9','.eJxVjDsOwjAQBe_iGlle_01JnzNYtneNAyiR4qRC3J1ESgHtm5n3ZjFta4tbpyWOyK5MssvvllN50nQAfKTpPvMyT-syZn4o_KSdDzPS63a6fwct9bbXQoE0xlHQVBR5B2hstdmiACu1BqUwFA3gqzeV0LnihdJBORJiT4B9vrZlNrs:1pbpsC:qzUsItq-QdNMehCKOffNXnr1kkrfsM2TQ4Q-FK676LQ','2023-03-27 21:38:28.927512');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(64) NOT NULL,
  `user_id` int NOT NULL,
  `activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_registr_user_id_5fcbf725_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_supervisedregistrationprofile`
--

DROP TABLE IF EXISTS `registration_supervisedregistrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_supervisedregistrationprofile` (
  `registrationprofile_ptr_id` int NOT NULL,
  PRIMARY KEY (`registrationprofile_ptr_id`),
  CONSTRAINT `registration_supervi_registrationprofile__0a59f3b2_fk_registrat` FOREIGN KEY (`registrationprofile_ptr_id`) REFERENCES `registration_registrationprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_supervisedregistrationprofile`
--

LOCK TABLES `registration_supervisedregistrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_supervisedregistrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_supervisedregistrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockmgmt_category`
--

DROP TABLE IF EXISTS `stockmgmt_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockmgmt_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockmgmt_category`
--

LOCK TABLES `stockmgmt_category` WRITE;
/*!40000 ALTER TABLE `stockmgmt_category` DISABLE KEYS */;
INSERT INTO `stockmgmt_category` VALUES (1,'MIDL'),(2,'JGC'),(4,'CPL'),(5,'SERGE'),(6,'ISL');
/*!40000 ALTER TABLE `stockmgmt_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockmgmt_stock`
--

DROP TABLE IF EXISTS `stockmgmt_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockmgmt_stock` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `receive_quantity` int DEFAULT NULL,
  `receive_by` varchar(50) DEFAULT NULL,
  `issue_quantity` int DEFAULT NULL,
  `issue_by` varchar(50) DEFAULT NULL,
  `issue_to` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `reorder_level` int DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stockmgmt_stock_category_id_04f65671_fk_stockmgmt_category_id` (`category_id`),
  CONSTRAINT `stockmgmt_stock_category_id_04f65671_fk_stockmgmt_category_id` FOREIGN KEY (`category_id`) REFERENCES `stockmgmt_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockmgmt_stock`
--

LOCK TABLES `stockmgmt_stock` WRITE;
/*!40000 ALTER TABLE `stockmgmt_stock` DISABLE KEYS */;
INSERT INTO `stockmgmt_stock` VALUES (1,'pallets',130,6,'ocreary',0,'ocreary','isl',NULL,NULL,89,'2023-03-01 20:00:18.132070','2023-02-17 16:00:24.140481',1),(2,'pallets',128,23,'ocreary',0,'ocreary','user 4',NULL,NULL,20,'2023-02-20 14:33:14.799882','2023-02-17 16:00:39.207679',2),(3,'pallets',63,43,'ocreary',0,NULL,NULL,NULL,NULL,10,'2023-02-20 14:34:16.941938','2023-02-17 16:00:50.289339',4),(4,'pallets',66,2,NULL,0,'ocreary','Jane doe',NULL,NULL,0,'2023-02-20 13:25:21.455183','2023-02-17 16:01:02.253697',5),(5,'pallets',67,0,NULL,23,'ocreary','Mary Jane',NULL,NULL,0,'2023-02-20 13:24:08.374280','2023-02-17 16:01:17.324890',6),(6,'pallets',70,0,NULL,0,NULL,NULL,NULL,NULL,0,'2023-03-13 21:39:12.722691','2023-03-13 21:39:12.722691',1);
/*!40000 ALTER TABLE `stockmgmt_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockmgmt_stockhistory`
--

DROP TABLE IF EXISTS `stockmgmt_stockhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockmgmt_stockhistory` (
  `id` bigint DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `receive_quantity` int DEFAULT NULL,
  `receive_by` varchar(50) DEFAULT NULL,
  `issue_quantity` int DEFAULT NULL,
  `issue_by` varchar(50) DEFAULT NULL,
  `issue_to` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `reorder_level` int DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  KEY `stockmgmt_stockhisto_category_id_88838458_fk_stockmgmt` (`category_id`),
  CONSTRAINT `stockmgmt_stockhisto_category_id_88838458_fk_stockmgmt` FOREIGN KEY (`category_id`) REFERENCES `stockmgmt_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockmgmt_stockhistory`
--

LOCK TABLES `stockmgmt_stockhistory` WRITE;
/*!40000 ALTER TABLE `stockmgmt_stockhistory` DISABLE KEYS */;
INSERT INTO `stockmgmt_stockhistory` VALUES (2,'pallets',45,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-20 13:21:39.151554',NULL,2),(3,'pallets',20,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-20 13:23:29.077144',NULL,4),(4,'pallets',67,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-20 13:23:46.569615',NULL,5),(5,'pallets',67,NULL,NULL,23,'ocreary','Mary Jane',NULL,NULL,NULL,'2023-02-20 13:24:08.374280',NULL,6),(4,'pallets',64,NULL,NULL,3,'ocreary','Jane doe',NULL,NULL,NULL,'2023-02-20 13:24:57.185372',NULL,5),(4,'pallets',66,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-20 13:25:21.455183',NULL,5),(2,'pallets',40,0,NULL,5,'ocreary','user 4',NULL,NULL,NULL,'2023-02-20 14:23:45.781998',NULL,2),(2,'pallets',105,65,NULL,0,'ocreary',NULL,NULL,NULL,NULL,'2023-02-20 14:25:56.469253',NULL,2),(1,'pallets',15,0,NULL,5,'ocreary','gjh',NULL,NULL,NULL,'2023-02-20 14:26:20.447608',NULL,1),(1,'pallets',48,33,NULL,0,'ocreary',NULL,NULL,NULL,NULL,'2023-02-20 14:27:04.122275',NULL,1),(1,'pallets',48,0,NULL,0,'ocreary',NULL,NULL,NULL,NULL,'2023-02-20 14:32:50.290946',NULL,1),(2,'pallets',128,23,'ocreary',0,'ocreary',NULL,NULL,NULL,NULL,'2023-02-20 14:33:14.799882',NULL,2),(3,'pallets',63,43,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-02-20 14:34:16.941938',NULL,4),(1,'pallets',71,23,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-02-20 14:38:41.393598',NULL,1),(1,'pallets',71,23,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-02-28 00:51:29.258027',NULL,1),(1,'pallets',81,10,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-03-01 18:53:24.160333',NULL,1),(1,'pallets',61,0,NULL,20,'ocreary','jgc',NULL,NULL,NULL,'2023-03-01 18:58:04.135153',NULL,1),(1,'pallets',61,0,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-03-01 19:48:09.348543',NULL,1),(1,'pallets',139,78,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-03-01 19:48:15.705814',NULL,1),(1,'pallets',134,0,NULL,5,'ocreary','Pricesmart',NULL,NULL,NULL,'2023-03-01 19:48:36.913342',NULL,1),(1,'pallets',124,0,NULL,10,'ocreary','isl',NULL,NULL,NULL,'2023-03-01 19:59:40.404692',NULL,1),(1,'pallets',130,6,'ocreary',0,NULL,NULL,NULL,NULL,NULL,'2023-03-01 20:00:18.132070',NULL,1);
/*!40000 ALTER TABLE `stockmgmt_stockhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-13 16:50:49
