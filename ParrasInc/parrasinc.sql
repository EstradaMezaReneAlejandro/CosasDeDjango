-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: parrasinc
-- ------------------------------------------------------
-- Server version	8.0.30

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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add orden',7,'add_orden'),(26,'Can change orden',7,'change_orden'),(27,'Can delete orden',7,'delete_orden'),(28,'Can view orden',7,'view_orden'),(29,'Can add linea produccion',8,'add_lineaproduccion'),(30,'Can change linea produccion',8,'change_lineaproduccion'),(31,'Can delete linea produccion',8,'delete_lineaproduccion'),(32,'Can view linea produccion',8,'view_lineaproduccion'),(33,'Can add producto',9,'add_producto'),(34,'Can change producto',9,'change_producto'),(35,'Can delete producto',9,'delete_producto'),(36,'Can view producto',9,'view_producto'),(37,'Can add empleado',10,'add_empleado'),(38,'Can change empleado',10,'change_empleado'),(39,'Can delete empleado',10,'delete_empleado'),(40,'Can view empleado',10,'view_empleado'),(41,'Can add area',11,'add_area'),(42,'Can change area',11,'change_area'),(43,'Can delete area',11,'delete_area'),(44,'Can view area',11,'view_area');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$DCH8YwCxQNB81dFiEsMkc9$0xfm20FrNU26oR6Qe+lVjuEvYxZ/J4+JoC3jeuTVyP4=','2022-10-21 10:07:06.752731',1,'admin','','','admin@admin.com',1,1,'2022-10-20 08:55:07.337493'),(2,'pbkdf2_sha256$390000$F3Qui1D6nUTx3Yl2YKIPQ8$Ne+JI5QXLXs2pUeDOOzWNd9Ur8eWAlVcBxjdExdpkbw=','2022-10-21 09:38:14.029193',0,'usuario1','','','usuario@usuario.com',0,1,'2022-10-21 08:32:45.664165'),(3,'pbkdf2_sha256$390000$N3tfUSVELA4HQA5qoJBRAt$djTXyJwKmb0AhNTkx0ARJfLaCTyHl3s/fYMiPAianCY=','2022-10-21 08:35:30.619081',0,'usuario2','','','usuario2@usuario.com',0,1,'2022-10-21 08:35:30.359194'),(4,'pbkdf2_sha256$390000$tM0SPsq9Se7leA0lYNNOCT$tU4PpX6sJjmLwEYUkBSdvhO0ru67Eyesomi5e3PoFLc=','2022-10-21 09:50:30.561802',0,'usuario3','','','usuario3@usuario.com',0,1,'2022-10-21 09:46:36.181035');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-10-20 08:59:10.215611','1','Area: Automotriz - Jefes de calidad:Rene Estrada, Jose Meza, Cristiano Ronaldo',1,'[{\"added\": {}}]',11,1),(2,'2022-10-20 09:00:01.631391','2','Area: MIcrotecnologia - Jefes de calidad:Karim Benzama, Federico Valverde, Luka Modric',1,'[{\"added\": {}}]',11,1),(3,'2022-10-20 09:01:17.831101','1','Empleado object (1)',1,'[{\"added\": {}}]',10,1),(4,'2022-10-20 09:05:58.765192','1','producto 1',1,'[{\"added\": {}}]',9,1),(5,'2022-10-20 09:07:59.080024','1','Linea de produccion - Area: Area: Automotriz - Jefes de calidad: Rene Estrada, Jose Meza, Cristiano Ronaldo',1,'[{\"added\": {}}]',8,1),(6,'2022-10-20 09:09:17.152527','1','Orden object (1)',1,'[{\"added\": {}}]',7,1),(7,'2022-10-20 09:14:11.326674','1','Nombre: Franco Escamilla - Area: Automotriz - Jefes de calidad: Rene Estrada, Jose Meza, Cristiano Ronaldo',2,'[{\"changed\": {\"fields\": [\"Salida\"]}}]',10,1),(8,'2022-10-20 10:32:17.156129','2','Linea de produccion - Area: MIcrotecnologia - Jefes de calidad: Karim Benzama, Federico Valverde, Luka Modric',1,'[{\"added\": {}}]',8,1),(9,'2022-10-20 10:34:32.255049','2','Orden object (2)',1,'[{\"added\": {}}]',7,1),(10,'2022-10-21 05:59:27.148663','2','Area: Microtecnologia - Jefes de calidad: Karim Benzama, Federico Valverde, Luka Modric',2,'[{\"changed\": {\"fields\": [\"Area\"]}}]',11,1),(11,'2022-10-21 05:59:35.932133','1','Area: Automotriz - Jefes de calidad: Rene Estrada, Jose Meza, Cristiano Ronaldo',2,'[]',11,1),(12,'2022-10-21 06:38:47.043244','2','Nombre: John Wick - Automotriz',2,'[{\"changed\": {\"fields\": [\"Area\"]}}]',10,1),(13,'2022-10-21 06:39:05.850068','1','Nombre: Franco Escamilla - Microtecnologia',2,'[{\"changed\": {\"fields\": [\"Area\"]}}]',10,1),(14,'2022-10-21 07:31:31.502580','2','producto 2',2,'[{\"changed\": {\"fields\": [\"NoPiezas\"]}}]',9,1),(15,'2022-10-21 07:31:38.752233','1','producto 1',2,'[{\"changed\": {\"fields\": [\"NoPiezas\"]}}]',9,1),(16,'2022-10-21 07:31:43.796754','2','producto 2',2,'[]',9,1),(17,'2022-10-21 07:31:46.142005','1','producto 1',2,'[]',9,1),(18,'2022-10-21 11:34:51.444255','2','producto 2',2,'[{\"changed\": {\"fields\": [\"Area\"]}}]',9,1),(19,'2022-10-21 11:34:58.551942','1','producto 1',2,'[{\"changed\": {\"fields\": [\"Area\"]}}]',9,1),(20,'2022-10-21 11:36:24.244890','3','producto 3',1,'[{\"added\": {}}]',9,1),(21,'2022-10-21 11:38:14.313424','3','Orden object (3)',1,'[{\"added\": {}}]',7,1),(22,'2022-10-21 11:48:54.586341','3','producto 3',2,'[]',9,1),(23,'2022-10-21 11:49:00.860546','2','producto 2',2,'[{\"changed\": {\"fields\": [\"PruebaCalidad\"]}}]',9,1),(24,'2022-10-21 11:51:09.933446','1','producto 1',2,'[]',9,1),(25,'2022-10-21 11:51:13.077903','3','producto 3',2,'[]',9,1),(26,'2022-10-21 11:51:15.292486','2','producto 2',2,'[]',9,1),(27,'2022-10-21 11:51:18.624341','1','producto 1',2,'[{\"changed\": {\"fields\": [\"PruebaCalidad\"]}}]',9,1),(28,'2022-10-21 11:53:03.981300','4','producto 4',1,'[{\"added\": {}}]',9,1);
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'lineas','area'),(10,'lineas','empleado'),(8,'lineas','lineaproduccion'),(7,'lineas','orden'),(9,'lineas','producto'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-10-20 08:53:31.741972'),(2,'auth','0001_initial','2022-10-20 08:53:32.221298'),(3,'admin','0001_initial','2022-10-20 08:53:32.331059'),(4,'admin','0002_logentry_remove_auto_add','2022-10-20 08:53:32.343040'),(5,'admin','0003_logentry_add_action_flag_choices','2022-10-20 08:53:32.350966'),(6,'contenttypes','0002_remove_content_type_name','2022-10-20 08:53:32.425681'),(7,'auth','0002_alter_permission_name_max_length','2022-10-20 08:53:32.497816'),(8,'auth','0003_alter_user_email_max_length','2022-10-20 08:53:32.536371'),(9,'auth','0004_alter_user_username_opts','2022-10-20 08:53:32.546055'),(10,'auth','0005_alter_user_last_login_null','2022-10-20 08:53:32.599703'),(11,'auth','0006_require_contenttypes_0002','2022-10-20 08:53:32.603728'),(12,'auth','0007_alter_validators_add_error_messages','2022-10-20 08:53:32.614701'),(13,'auth','0008_alter_user_username_max_length','2022-10-20 08:53:32.672002'),(14,'auth','0009_alter_user_last_name_max_length','2022-10-20 08:53:32.724168'),(15,'auth','0010_alter_group_name_max_length','2022-10-20 08:53:32.744851'),(16,'auth','0011_update_proxy_permissions','2022-10-20 08:53:32.754695'),(17,'auth','0012_alter_user_first_name_max_length','2022-10-20 08:53:32.810088'),(18,'sessions','0001_initial','2022-10-20 08:53:32.843890'),(19,'lineas','0001_initial','2022-10-20 08:53:47.391895'),(20,'lineas','0002_rename_procudto_lineaproduccion_producto','2022-10-20 08:56:25.150291'),(21,'lineas','0003_alter_empleado_salida','2022-10-20 09:11:18.715536'),(22,'lineas','0004_alter_empleado_area','2022-10-21 06:37:43.001438'),(23,'lineas','0005_producto_nopiezas','2022-10-21 07:30:47.273646'),(24,'lineas','0006_producto_area','2022-10-21 11:33:04.097125'),(25,'lineas','0007_alter_producto_pruebacalidad','2022-10-21 11:48:37.482554'),(26,'lineas','0008_producto_fecha','2022-10-21 12:25:21.533887'),(27,'lineas','0009_alter_orden_fecha_alter_producto_fecha','2022-10-21 12:49:56.521383');
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
INSERT INTO `django_session` VALUES ('dw4n1jxwoj0zrll3klvy4vq2hsxxwkdu','.eJxVjMsOwiAQRf-FtSFAGR4u3fsNBJhBqgaS0q6M_65NutDtPefcFwtxW2vYBi1hRnZmkp1-txTzg9oO8B7brfPc27rMie8KP-jg1470vBzu30GNo37rTOC9RSmUA9AOyJWk_CSlQJssqknEUhCk8YJAaXA2kc-TNqkoQ9Gw9wfGHjdV:1olovi:oOUl1qsaiAsUi4hblmeff2_8YCk7R_il3OerQRFSVoQ','2022-11-04 10:07:06.754994');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineas_area`
--

DROP TABLE IF EXISTS `lineas_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineas_area` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `area` varchar(50) NOT NULL,
  `jefeCalidad1` varchar(150) NOT NULL,
  `jefeCalidad2` varchar(150) NOT NULL,
  `jefeCalidad3` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineas_area`
--

LOCK TABLES `lineas_area` WRITE;
/*!40000 ALTER TABLE `lineas_area` DISABLE KEYS */;
INSERT INTO `lineas_area` VALUES (1,'Automotriz','Rene Estrada','Jose Meza','Cristiano Ronaldo'),(2,'Microtecnologia','Karim Benzama','Federico Valverde','Luka Modric');
/*!40000 ALTER TABLE `lineas_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineas_empleado`
--

DROP TABLE IF EXISTS `lineas_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineas_empleado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `entrada` time(6) NOT NULL,
  `salida` time(6) NOT NULL,
  `horasExtra` int NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineas_empleado`
--

LOCK TABLES `lineas_empleado` WRITE;
/*!40000 ALTER TABLE `lineas_empleado` DISABLE KEYS */;
INSERT INTO `lineas_empleado` VALUES (1,'Franco Escamilla','06:00:00.000000','15:00:00.000000',4,'Microtecnologia'),(2,'John Wick','06:00:00.000000','15:00:00.000000',2,'Automotriz');
/*!40000 ALTER TABLE `lineas_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineas_lineaproduccion`
--

DROP TABLE IF EXISTS `lineas_lineaproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineas_lineaproduccion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jefeLinea1` varchar(150) NOT NULL,
  `jefeLinea2` varchar(150) NOT NULL,
  `jefeLinea3` varchar(150) NOT NULL,
  `area_id` bigint NOT NULL,
  `producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lineas_lineaproduccion_area_id_7bc6400a_fk_lineas_area_id` (`area_id`),
  KEY `lineas_lineaproducci_producto_id_5323c031_fk_lineas_pr` (`producto_id`),
  CONSTRAINT `lineas_lineaproducci_producto_id_5323c031_fk_lineas_pr` FOREIGN KEY (`producto_id`) REFERENCES `lineas_producto` (`id`),
  CONSTRAINT `lineas_lineaproduccion_area_id_7bc6400a_fk_lineas_area_id` FOREIGN KEY (`area_id`) REFERENCES `lineas_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineas_lineaproduccion`
--

LOCK TABLES `lineas_lineaproduccion` WRITE;
/*!40000 ALTER TABLE `lineas_lineaproduccion` DISABLE KEYS */;
INSERT INTO `lineas_lineaproduccion` VALUES (1,'Bruce Wyne','Peter Parker','Ben Parker',1,1),(2,'Josep Pedrerol','Sergio Mejorado','Alfredo Adame',2,2);
/*!40000 ALTER TABLE `lineas_lineaproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineas_orden`
--

DROP TABLE IF EXISTS `lineas_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineas_orden` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cedente` varchar(150) NOT NULL,
  `jefeLinea` varchar(150) NOT NULL,
  `noPiezas` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `actualizacion` datetime(6) NOT NULL,
  `linea_id` bigint NOT NULL,
  `producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lineas_orden_linea_id_9e4a4a73_fk_lineas_lineaproduccion_id` (`linea_id`),
  KEY `lineas_orden_producto_id_7e8c6c79_fk_lineas_producto_id` (`producto_id`),
  CONSTRAINT `lineas_orden_linea_id_9e4a4a73_fk_lineas_lineaproduccion_id` FOREIGN KEY (`linea_id`) REFERENCES `lineas_lineaproduccion` (`id`),
  CONSTRAINT `lineas_orden_producto_id_7e8c6c79_fk_lineas_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `lineas_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineas_orden`
--

LOCK TABLES `lineas_orden` WRITE;
/*!40000 ALTER TABLE `lineas_orden` DISABLE KEYS */;
INSERT INTO `lineas_orden` VALUES (1,'Toni Kroos','Bruce Wyne',7,1,'2022-10-20','2022-10-20 09:09:17.151527',1,1),(2,'Ivan Fematt','Sergio Mejorado',16,0,'2022-10-20','2022-10-20 10:34:32.255049',2,2),(3,'Ivan Fematt','Sergio Mejorado',16,1,'2022-10-21','2022-10-21 11:38:14.312424',2,3);
/*!40000 ALTER TABLE `lineas_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineas_producto`
--

DROP TABLE IF EXISTS `lineas_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineas_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `pruebaCalidad` tinyint(1) NOT NULL,
  `noPiezas` int DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineas_producto`
--

LOCK TABLES `lineas_producto` WRITE;
/*!40000 ALTER TABLE `lineas_producto` DISABLE KEYS */;
INSERT INTO `lineas_producto` VALUES (1,'producto 1',0,16,'Microtecnologia','2022-10-21'),(2,'producto 2',1,7,'Automotriz','2022-10-21'),(3,'producto 3',1,16,'Microtecnologia','2022-10-21'),(4,'producto 4',0,7,'Automotriz','2022-10-21');
/*!40000 ALTER TABLE `lineas_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21  6:18:44
