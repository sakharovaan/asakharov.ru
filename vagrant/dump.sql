-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Editors'),(1,'Moderators');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (4,1,1),(5,1,2),(6,1,3),(8,1,4),(12,1,5),(13,1,6),(14,1,7),(1,2,1),(2,2,2),(3,2,3),(7,2,4),(9,2,5),(10,2,6),(11,2,7);
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add image',2,'add_image'),(2,'Can change image',2,'change_image'),(3,'Can delete image',2,'delete_image'),(4,'Can access Wagtail admin',3,'access_admin'),(5,'Can add document',4,'add_document'),(6,'Can change document',4,'change_document'),(7,'Can delete document',4,'delete_document'),(8,'Can add Blog',5,'add_blogpage'),(9,'Can change Blog',5,'change_blogpage'),(10,'Can delete Blog',5,'delete_blogpage'),(11,'Can view Blog',5,'view_blogpage'),(12,'Can add Category',6,'add_category'),(13,'Can change Category',6,'change_category'),(14,'Can delete Category',6,'delete_category'),(15,'Can view Category',6,'view_category'),(16,'Can add category entry page',7,'add_categoryentrypage'),(17,'Can change category entry page',7,'change_categoryentrypage'),(18,'Can delete category entry page',7,'delete_categoryentrypage'),(19,'Can view category entry page',7,'view_categoryentrypage'),(20,'Can add Entry',8,'add_entrypage'),(21,'Can change Entry',8,'change_entrypage'),(22,'Can delete Entry',8,'delete_entrypage'),(23,'Can view Entry',8,'view_entrypage'),(24,'Can add entry page related',9,'add_entrypagerelated'),(25,'Can change entry page related',9,'change_entrypagerelated'),(26,'Can delete entry page related',9,'delete_entrypagerelated'),(27,'Can view entry page related',9,'view_entrypagerelated'),(28,'Can add tag entry page',10,'add_tagentrypage'),(29,'Can change tag entry page',10,'change_tagentrypage'),(30,'Can delete tag entry page',10,'delete_tagentrypage'),(31,'Can view tag entry page',10,'view_tagentrypage'),(32,'Can add tag',11,'add_tag'),(33,'Can change tag',11,'change_tag'),(34,'Can delete tag',11,'delete_tag'),(35,'Can view tag',11,'view_tag'),(36,'Can add form submission',12,'add_formsubmission'),(37,'Can change form submission',12,'change_formsubmission'),(38,'Can delete form submission',12,'delete_formsubmission'),(39,'Can view form submission',12,'view_formsubmission'),(40,'Can add redirect',13,'add_redirect'),(41,'Can change redirect',13,'change_redirect'),(42,'Can delete redirect',13,'delete_redirect'),(43,'Can view redirect',13,'view_redirect'),(44,'Can add embed',14,'add_embed'),(45,'Can change embed',14,'change_embed'),(46,'Can delete embed',14,'delete_embed'),(47,'Can view embed',14,'view_embed'),(48,'Can add user profile',15,'add_userprofile'),(49,'Can change user profile',15,'change_userprofile'),(50,'Can delete user profile',15,'delete_userprofile'),(51,'Can view user profile',15,'view_userprofile'),(52,'Can view document',4,'view_document'),(53,'Can view image',2,'view_image'),(54,'Can add rendition',16,'add_rendition'),(55,'Can change rendition',16,'change_rendition'),(56,'Can delete rendition',16,'delete_rendition'),(57,'Can view rendition',16,'view_rendition'),(58,'Can add query',17,'add_query'),(59,'Can change query',17,'change_query'),(60,'Can delete query',17,'delete_query'),(61,'Can view query',17,'view_query'),(62,'Can add Query Daily Hits',18,'add_querydailyhits'),(63,'Can change Query Daily Hits',18,'change_querydailyhits'),(64,'Can delete Query Daily Hits',18,'delete_querydailyhits'),(65,'Can view Query Daily Hits',18,'view_querydailyhits'),(66,'Can add page',1,'add_page'),(67,'Can change page',1,'change_page'),(68,'Can delete page',1,'delete_page'),(69,'Can view page',1,'view_page'),(70,'Can add group page permission',19,'add_grouppagepermission'),(71,'Can change group page permission',19,'change_grouppagepermission'),(72,'Can delete group page permission',19,'delete_grouppagepermission'),(73,'Can view group page permission',19,'view_grouppagepermission'),(74,'Can add page revision',20,'add_pagerevision'),(75,'Can change page revision',20,'change_pagerevision'),(76,'Can delete page revision',20,'delete_pagerevision'),(77,'Can view page revision',20,'view_pagerevision'),(78,'Can add page view restriction',21,'add_pageviewrestriction'),(79,'Can change page view restriction',21,'change_pageviewrestriction'),(80,'Can delete page view restriction',21,'delete_pageviewrestriction'),(81,'Can view page view restriction',21,'view_pageviewrestriction'),(82,'Can add site',22,'add_site'),(83,'Can change site',22,'change_site'),(84,'Can delete site',22,'delete_site'),(85,'Can view site',22,'view_site'),(86,'Can add collection',23,'add_collection'),(87,'Can change collection',23,'change_collection'),(88,'Can delete collection',23,'delete_collection'),(89,'Can view collection',23,'view_collection'),(90,'Can add group collection permission',24,'add_groupcollectionpermission'),(91,'Can change group collection permission',24,'change_groupcollectionpermission'),(92,'Can delete group collection permission',24,'delete_groupcollectionpermission'),(93,'Can view group collection permission',24,'view_groupcollectionpermission'),(94,'Can add collection view restriction',25,'add_collectionviewrestriction'),(95,'Can change collection view restriction',25,'change_collectionviewrestriction'),(96,'Can delete collection view restriction',25,'delete_collectionviewrestriction'),(97,'Can view collection view restriction',25,'view_collectionviewrestriction'),(98,'Can add Tag',26,'add_tag'),(99,'Can change Tag',26,'change_tag'),(100,'Can delete Tag',26,'delete_tag'),(101,'Can view Tag',26,'view_tag'),(102,'Can add Tagged Item',27,'add_taggeditem'),(103,'Can change Tagged Item',27,'change_taggeditem'),(104,'Can delete Tagged Item',27,'delete_taggeditem'),(105,'Can view Tagged Item',27,'view_taggeditem'),(106,'Can add log entry',28,'add_logentry'),(107,'Can change log entry',28,'change_logentry'),(108,'Can delete log entry',28,'delete_logentry'),(109,'Can view log entry',28,'view_logentry'),(110,'Can add permission',29,'add_permission'),(111,'Can change permission',29,'change_permission'),(112,'Can delete permission',29,'delete_permission'),(113,'Can view permission',29,'view_permission'),(114,'Can add group',30,'add_group'),(115,'Can change group',30,'change_group'),(116,'Can delete group',30,'delete_group'),(117,'Can view group',30,'view_group'),(118,'Can add user',31,'add_user'),(119,'Can change user',31,'change_user'),(120,'Can delete user',31,'delete_user'),(121,'Can view user',31,'view_user'),(122,'Can add content type',32,'add_contenttype'),(123,'Can change content type',32,'change_contenttype'),(124,'Can delete content type',32,'delete_contenttype'),(125,'Can view content type',32,'view_contenttype'),(126,'Can add session',33,'add_session'),(127,'Can change session',33,'change_session'),(128,'Can delete session',33,'delete_session'),(129,'Can view session',33,'view_session'),(130,'Can add flat menu',34,'add_flatmenu'),(131,'Can change flat menu',34,'change_flatmenu'),(132,'Can delete flat menu',34,'delete_flatmenu'),(133,'Can view flat menu',34,'view_flatmenu'),(134,'Can add menu item',35,'add_flatmenuitem'),(135,'Can change menu item',35,'change_flatmenuitem'),(136,'Can delete menu item',35,'delete_flatmenuitem'),(137,'Can view menu item',35,'view_flatmenuitem'),(138,'Can add main menu',36,'add_mainmenu'),(139,'Can change main menu',36,'change_mainmenu'),(140,'Can delete main menu',36,'delete_mainmenu'),(141,'Can view main menu',36,'view_mainmenu'),(142,'Can add menu item',37,'add_mainmenuitem'),(143,'Can change menu item',37,'change_mainmenuitem'),(144,'Can delete menu item',37,'delete_mainmenuitem'),(145,'Can view menu item',37,'view_mainmenuitem');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$lSdeN8N1VK2L$LsfYwFW/F4BsWpf6mkebpm2Yq0LirM3iDTsR+G5+j2Q=','2019-08-03 22:10:42.999408',1,'admin','','','admin@example.com',1,1,'2019-08-03 22:07:11.471748');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_blogpage`
--

DROP TABLE IF EXISTS `core_blogpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_blogpage` (
  `page_ptr_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `display_comments` tinyint(1) NOT NULL,
  `display_categories` tinyint(1) NOT NULL,
  `display_tags` tinyint(1) NOT NULL,
  `display_popular_entries` tinyint(1) NOT NULL,
  `display_last_entries` tinyint(1) NOT NULL,
  `display_archive` tinyint(1) NOT NULL,
  `disqus_api_secret` longtext NOT NULL,
  `disqus_shortname` varchar(128) NOT NULL,
  `num_entries_page` int(11) NOT NULL,
  `num_last_entries` int(11) NOT NULL,
  `num_popular_entries` int(11) NOT NULL,
  `num_tags_entry_header` int(11) NOT NULL,
  `header_image_id` int(11) DEFAULT NULL,
  `short_feed_description` tinyint(1) NOT NULL,
  `main_color` varchar(7) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `core_blogpage_header_image_id_d40da6f6_fk_wagtailimages_image_id` (`header_image_id`),
  CONSTRAINT `core_blogpage_header_image_id_d40da6f6_fk_wagtailimages_image_id` FOREIGN KEY (`header_image_id`) REFERENCES `wagtailimages_image` (`id`),
  CONSTRAINT `core_blogpage_page_ptr_id_e3293d32_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_blogpage`
--

LOCK TABLES `core_blogpage` WRITE;
/*!40000 ALTER TABLE `core_blogpage` DISABLE KEYS */;
INSERT INTO `core_blogpage` VALUES (3,'Development site',0,1,1,1,1,1,'','',5,3,3,5,NULL,1,'#4d6ae0');
/*!40000 ALTER TABLE `core_blogpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_category`
--

DROP TABLE IF EXISTS `core_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `description` varchar(500) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  KEY `core_category_parent_id_f82a0951_fk_core_category_id` (`parent_id`),
  CONSTRAINT `core_category_parent_id_f82a0951_fk_core_category_id` FOREIGN KEY (`parent_id`) REFERENCES `core_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_category`
--

LOCK TABLES `core_category` WRITE;
/*!40000 ALTER TABLE `core_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_categoryentrypage`
--

DROP TABLE IF EXISTS `core_categoryentrypage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_categoryentrypage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_categoryentrypage_category_id_92aed1a5_fk_core_category_id` (`category_id`),
  KEY `core_categoryentrypage_page_id_81e3dd22` (`page_id`),
  CONSTRAINT `core_categoryentrypa_page_id_81e3dd22_fk_core_entr` FOREIGN KEY (`page_id`) REFERENCES `core_entrypage` (`page_ptr_id`),
  CONSTRAINT `core_categoryentrypage_category_id_92aed1a5_fk_core_category_id` FOREIGN KEY (`category_id`) REFERENCES `core_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_categoryentrypage`
--

LOCK TABLES `core_categoryentrypage` WRITE;
/*!40000 ALTER TABLE `core_categoryentrypage` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_categoryentrypage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_entrypage`
--

DROP TABLE IF EXISTS `core_entrypage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_entrypage` (
  `page_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `excerpt` longtext NOT NULL,
  `num_comments` int(11) NOT NULL,
  `header_image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `core_entrypage_header_image_id_e3b2fdd8_fk_wagtailim` (`header_image_id`),
  CONSTRAINT `core_entrypage_header_image_id_e3b2fdd8_fk_wagtailim` FOREIGN KEY (`header_image_id`) REFERENCES `wagtailimages_image` (`id`),
  CONSTRAINT `core_entrypage_page_ptr_id_e01c4bc2_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_entrypage`
--

LOCK TABLES `core_entrypage` WRITE;
/*!40000 ALTER TABLE `core_entrypage` DISABLE KEYS */;
INSERT INTO `core_entrypage` VALUES (4,'<p>test body</p>','2019-08-03 22:12:00.000000','<p>test excerpt</p>',0,NULL);
/*!40000 ALTER TABLE `core_entrypage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_entrypagerelated`
--

DROP TABLE IF EXISTS `core_entrypagerelated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_entrypagerelated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entrypage_from_id` int(11) NOT NULL,
  `entrypage_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_entrypagerelated_entrypage_from_id_f45fbebd` (`entrypage_from_id`),
  KEY `core_entrypagerelated_entrypage_to_id_ed9725dc` (`entrypage_to_id`),
  CONSTRAINT `core_entrypagerelate_entrypage_from_id_f45fbebd_fk_core_entr` FOREIGN KEY (`entrypage_from_id`) REFERENCES `core_entrypage` (`page_ptr_id`),
  CONSTRAINT `core_entrypagerelate_entrypage_to_id_ed9725dc_fk_core_entr` FOREIGN KEY (`entrypage_to_id`) REFERENCES `core_entrypage` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_entrypagerelated`
--

LOCK TABLES `core_entrypagerelated` WRITE;
/*!40000 ALTER TABLE `core_entrypagerelated` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_entrypagerelated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tagentrypage`
--

DROP TABLE IF EXISTS `core_tagentrypage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tagentrypage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_object_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_tagentrypage_tag_id_89f72217_fk_taggit_tag_id` (`tag_id`),
  KEY `core_tagentrypage_content_object_id_8d6e30cd` (`content_object_id`),
  CONSTRAINT `core_tagentrypage_content_object_id_8d6e30cd_fk_core_entr` FOREIGN KEY (`content_object_id`) REFERENCES `core_entrypage` (`page_ptr_id`),
  CONSTRAINT `core_tagentrypage_tag_id_89f72217_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tagentrypage`
--

LOCK TABLES `core_tagentrypage` WRITE;
/*!40000 ALTER TABLE `core_tagentrypage` DISABLE KEYS */;
INSERT INTO `core_tagentrypage` VALUES (1,4,1),(2,4,2);
/*!40000 ALTER TABLE `core_tagentrypage` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (28,'admin','logentry'),(30,'auth','group'),(29,'auth','permission'),(31,'auth','user'),(32,'contenttypes','contenttype'),(5,'core','blogpage'),(6,'core','category'),(7,'core','categoryentrypage'),(8,'core','entrypage'),(9,'core','entrypagerelated'),(11,'core','tag'),(10,'core','tagentrypage'),(33,'sessions','session'),(26,'taggit','tag'),(27,'taggit','taggeditem'),(3,'wagtailadmin','admin'),(23,'wagtailcore','collection'),(25,'wagtailcore','collectionviewrestriction'),(24,'wagtailcore','groupcollectionpermission'),(19,'wagtailcore','grouppagepermission'),(1,'wagtailcore','page'),(20,'wagtailcore','pagerevision'),(21,'wagtailcore','pageviewrestriction'),(22,'wagtailcore','site'),(4,'wagtaildocs','document'),(14,'wagtailembeds','embed'),(12,'wagtailforms','formsubmission'),(2,'wagtailimages','image'),(16,'wagtailimages','rendition'),(34,'wagtailmenus','flatmenu'),(35,'wagtailmenus','flatmenuitem'),(36,'wagtailmenus','mainmenu'),(37,'wagtailmenus','mainmenuitem'),(13,'wagtailredirects','redirect'),(17,'wagtailsearch','query'),(18,'wagtailsearch','querydailyhits'),(15,'wagtailusers','userprofile');
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
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-03 22:06:02.087826'),(2,'auth','0001_initial','2019-08-03 22:06:02.555442'),(3,'admin','0001_initial','2019-08-03 22:06:04.742796'),(4,'admin','0002_logentry_remove_auto_add','2019-08-03 22:06:05.180648'),(5,'admin','0003_logentry_add_action_flag_choices','2019-08-03 22:06:05.188979'),(6,'contenttypes','0002_remove_content_type_name','2019-08-03 22:06:05.553398'),(7,'auth','0002_alter_permission_name_max_length','2019-08-03 22:06:05.586106'),(8,'auth','0003_alter_user_email_max_length','2019-08-03 22:06:05.613798'),(9,'auth','0004_alter_user_username_opts','2019-08-03 22:06:05.634621'),(10,'auth','0005_alter_user_last_login_null','2019-08-03 22:06:05.821788'),(11,'auth','0006_require_contenttypes_0002','2019-08-03 22:06:05.831151'),(12,'auth','0007_alter_validators_add_error_messages','2019-08-03 22:06:05.853232'),(13,'auth','0008_alter_user_username_max_length','2019-08-03 22:06:05.875187'),(14,'auth','0009_alter_user_last_name_max_length','2019-08-03 22:06:05.906740'),(15,'auth','0010_alter_group_name_max_length','2019-08-03 22:06:05.932971'),(16,'auth','0011_update_proxy_permissions','2019-08-03 22:06:05.948828'),(17,'wagtailcore','0001_initial','2019-08-03 22:06:06.722403'),(18,'wagtailcore','0002_initial_data','2019-08-03 22:06:06.731598'),(19,'wagtailcore','0003_add_uniqueness_constraint_on_group_page_permission','2019-08-03 22:06:06.734284'),(20,'wagtailcore','0004_page_locked','2019-08-03 22:06:06.746810'),(21,'wagtailcore','0005_add_page_lock_permission_to_moderators','2019-08-03 22:06:06.755296'),(22,'wagtailcore','0006_add_lock_page_permission','2019-08-03 22:06:06.772141'),(23,'wagtailcore','0007_page_latest_revision_created_at','2019-08-03 22:06:06.783954'),(24,'wagtailcore','0008_populate_latest_revision_created_at','2019-08-03 22:06:06.800723'),(25,'wagtailcore','0009_remove_auto_now_add_from_pagerevision_created_at','2019-08-03 22:06:06.809107'),(26,'wagtailcore','0010_change_page_owner_to_null_on_delete','2019-08-03 22:06:06.818077'),(27,'wagtailcore','0011_page_first_published_at','2019-08-03 22:06:06.827915'),(28,'wagtailcore','0012_extend_page_slug_field','2019-08-03 22:06:06.846098'),(29,'wagtailcore','0013_update_golive_expire_help_text','2019-08-03 22:06:06.861132'),(30,'wagtailcore','0014_add_verbose_name','2019-08-03 22:06:06.869858'),(31,'wagtailcore','0015_add_more_verbose_names','2019-08-03 22:06:06.878424'),(32,'wagtailcore','0016_change_page_url_path_to_text_field','2019-08-03 22:06:06.897214'),(33,'wagtailcore','0017_change_edit_page_permission_description','2019-08-03 22:06:09.112229'),(34,'wagtailcore','0018_pagerevision_submitted_for_moderation_index','2019-08-03 22:06:09.173581'),(35,'wagtailcore','0019_verbose_names_cleanup','2019-08-03 22:06:09.232771'),(36,'wagtailcore','0020_add_index_on_page_first_published_at','2019-08-03 22:06:09.327317'),(37,'wagtailcore','0021_capitalizeverbose','2019-08-03 22:06:11.653291'),(38,'wagtailcore','0022_add_site_name','2019-08-03 22:06:11.879678'),(39,'wagtailcore','0023_alter_page_revision_on_delete_behaviour','2019-08-03 22:06:12.140191'),(40,'wagtailcore','0024_collection','2019-08-03 22:06:12.234111'),(41,'wagtailcore','0025_collection_initial_data','2019-08-03 22:06:12.256902'),(42,'wagtailcore','0026_group_collection_permission','2019-08-03 22:06:12.412050'),(43,'taggit','0001_initial','2019-08-03 22:06:13.264753'),(44,'wagtailimages','0001_initial','2019-08-03 22:06:14.182881'),(45,'wagtailimages','0002_initial_data','2019-08-03 22:06:14.191809'),(46,'wagtailimages','0003_fix_focal_point_fields','2019-08-03 22:06:14.193450'),(47,'wagtailimages','0004_make_focal_point_key_not_nullable','2019-08-03 22:06:14.205030'),(48,'wagtailimages','0005_make_filter_spec_unique','2019-08-03 22:06:14.215014'),(49,'wagtailimages','0006_add_verbose_names','2019-08-03 22:06:14.223732'),(50,'wagtailimages','0007_image_file_size','2019-08-03 22:06:14.232586'),(51,'wagtailimages','0008_image_created_at_index','2019-08-03 22:06:14.251178'),(52,'wagtailimages','0009_capitalizeverbose','2019-08-03 22:06:14.261338'),(53,'wagtailimages','0010_change_on_delete_behaviour','2019-08-03 22:06:14.270375'),(54,'wagtailimages','0011_image_collection','2019-08-03 22:06:14.297657'),(55,'wagtailimages','0012_copy_image_permissions_to_collections','2019-08-03 22:06:14.299206'),(56,'wagtailimages','0013_make_rendition_upload_callable','2019-08-03 22:06:14.308014'),(57,'wagtailimages','0014_add_filter_spec_field','2019-08-03 22:06:14.309658'),(58,'wagtailimages','0015_fill_filter_spec_field','2019-08-03 22:06:14.322462'),(59,'wagtailimages','0016_deprecate_rendition_filter_relation','2019-08-03 22:06:14.324344'),(60,'wagtailimages','0017_reduce_focal_point_key_max_length','2019-08-03 22:06:14.335313'),(61,'wagtailimages','0018_remove_rendition_filter','2019-08-03 22:06:14.336966'),(62,'wagtailimages','0019_delete_filter','2019-08-03 22:06:14.348956'),(63,'wagtailimages','0020_add-verbose-name','2019-08-03 22:06:14.350393'),(64,'wagtailimages','0021_image_file_hash','2019-08-03 22:06:14.369141'),(65,'core','0001_initial','2019-08-03 22:06:16.554075'),(66,'core','0002_auto_20150919_0925','2019-08-03 22:06:19.700734'),(67,'core','0003_add_short_feed_description_to_blog_page','2019-08-03 22:06:19.863076'),(68,'core','0004_auto_20170912_0928','2019-08-03 22:06:19.885051'),(69,'core','0005_blogpage_main_color','2019-08-03 22:06:20.045304'),(70,'sessions','0001_initial','2019-08-03 22:06:20.121116'),(71,'taggit','0002_auto_20150616_2121','2019-08-03 22:06:20.291757'),(72,'wagtailadmin','0001_create_admin_access_permissions','2019-08-03 22:06:20.355591'),(73,'wagtailcore','0027_fix_collection_path_collation','2019-08-03 22:06:20.388723'),(74,'wagtailcore','0024_alter_page_content_type_on_delete_behaviour','2019-08-03 22:06:20.741288'),(75,'wagtailcore','0028_merge','2019-08-03 22:06:20.750120'),(76,'wagtailcore','0029_unicode_slugfield_dj19','2019-08-03 22:06:20.771494'),(77,'wagtailcore','0030_index_on_pagerevision_created_at','2019-08-03 22:06:20.855715'),(78,'wagtailcore','0031_add_page_view_restriction_types','2019-08-03 22:06:21.149793'),(79,'wagtailcore','0032_add_bulk_delete_page_permission','2019-08-03 22:06:21.667681'),(80,'wagtailcore','0033_remove_golive_expiry_help_text','2019-08-03 22:06:21.696704'),(81,'wagtailcore','0034_page_live_revision','2019-08-03 22:06:21.976305'),(82,'wagtailcore','0035_page_last_published_at','2019-08-03 22:06:22.716617'),(83,'wagtailcore','0036_populate_page_last_published_at','2019-08-03 22:06:22.753459'),(84,'wagtailcore','0037_set_page_owner_editable','2019-08-03 22:06:23.046186'),(85,'wagtailcore','0038_make_first_published_at_editable','2019-08-03 22:06:23.073121'),(86,'wagtailcore','0039_collectionviewrestriction','2019-08-03 22:06:23.681568'),(87,'wagtailcore','0040_page_draft_title','2019-08-03 22:06:24.944685'),(88,'wagtailcore','0041_group_collection_permissions_verbose_name_plural','2019-08-03 22:06:24.965849'),(89,'wagtaildocs','0001_initial','2019-08-03 22:06:25.060255'),(90,'wagtaildocs','0002_initial_data','2019-08-03 22:06:25.326175'),(91,'wagtaildocs','0003_add_verbose_names','2019-08-03 22:06:25.582412'),(92,'wagtaildocs','0004_capitalizeverbose','2019-08-03 22:06:25.890408'),(93,'wagtaildocs','0005_document_collection','2019-08-03 22:06:26.059060'),(94,'wagtaildocs','0006_copy_document_permissions_to_collections','2019-08-03 22:06:26.329768'),(95,'wagtaildocs','0005_alter_uploaded_by_user_on_delete_action','2019-08-03 22:06:26.798570'),(96,'wagtaildocs','0007_merge','2019-08-03 22:06:26.815576'),(97,'wagtaildocs','0008_document_file_size','2019-08-03 22:06:26.982077'),(98,'wagtaildocs','0009_document_verbose_name_plural','2019-08-03 22:06:27.082303'),(99,'wagtaildocs','0010_document_file_hash','2019-08-03 22:06:27.271464'),(100,'wagtailembeds','0001_initial','2019-08-03 22:06:27.424566'),(101,'wagtailembeds','0002_add_verbose_names','2019-08-03 22:06:27.438973'),(102,'wagtailembeds','0003_capitalizeverbose','2019-08-03 22:06:27.450769'),(103,'wagtailembeds','0004_embed_verbose_name_plural','2019-08-03 22:06:27.466003'),(104,'wagtailembeds','0005_specify_thumbnail_url_max_length','2019-08-03 22:06:27.491603'),(105,'wagtailforms','0001_initial','2019-08-03 22:06:27.742430'),(106,'wagtailforms','0002_add_verbose_names','2019-08-03 22:06:27.984031'),(107,'wagtailforms','0003_capitalizeverbose','2019-08-03 22:06:28.004186'),(108,'wagtailmenus','0001_initial','2019-08-03 22:06:28.451791'),(109,'wagtailmenus','0002_auto_20160129_0901','2019-08-03 22:06:30.045342'),(110,'wagtailmenus','0003_auto_20160129_2339','2019-08-03 22:06:30.159397'),(111,'wagtailmenus','0004_auto_20160130_0024','2019-08-03 22:06:30.184392'),(112,'wagtailmenus','0005_auto_20160130_2209','2019-08-03 22:06:30.596136'),(113,'wagtailmenus','0006_auto_20160131_1347','2019-08-03 22:06:30.630786'),(114,'wagtailmenus','0007_auto_20160131_2000','2019-08-03 22:06:31.444591'),(115,'wagtailmenus','0008_auto_20160131_2327','2019-08-03 22:06:32.688538'),(116,'wagtailmenus','0009_auto_20160201_0859','2019-08-03 22:06:32.705316'),(117,'wagtailmenus','0010_auto_20160201_1558','2019-08-03 22:06:32.746278'),(118,'wagtailmenus','0011_auto_20160415_1519','2019-08-03 22:06:32.790850'),(119,'wagtailmenus','0012_auto_20160419_0039','2019-08-03 22:06:33.655097'),(120,'wagtailmenus','0013_auto_20160423_1124','2019-08-03 22:06:33.887014'),(121,'wagtailmenus','0014_auto_20160423_1339','2019-08-03 22:06:33.917734'),(122,'wagtailmenus','0015_auto_20160423_1348','2019-08-03 22:06:33.949748'),(123,'wagtailmenus','0016_auto_20160930_0645','2019-08-03 22:06:34.410488'),(124,'wagtailmenus','0017_auto_20161013_1658','2019-08-03 22:06:35.513831'),(125,'wagtailmenus','0018_auto_20161204_2043','2019-08-03 22:06:35.546292'),(126,'wagtailmenus','0019_auto_20161204_2143','2019-08-03 22:06:35.561416'),(127,'wagtailmenus','0020_auto_20161210_0004','2019-08-03 22:06:36.076302'),(128,'wagtailmenus','0021_auto_20170106_2352','2019-08-03 22:06:36.192996'),(129,'wagtailmenus','0022_auto_20170913_2125','2019-08-03 22:06:36.224867'),(130,'wagtailredirects','0001_initial','2019-08-03 22:06:36.334497'),(131,'wagtailredirects','0002_add_verbose_names','2019-08-03 22:06:37.447368'),(132,'wagtailredirects','0003_make_site_field_editable','2019-08-03 22:06:37.711175'),(133,'wagtailredirects','0004_set_unique_on_path_and_site','2019-08-03 22:06:38.075519'),(134,'wagtailredirects','0005_capitalizeverbose','2019-08-03 22:06:38.751831'),(135,'wagtailredirects','0006_redirect_increase_max_length','2019-08-03 22:06:38.791144'),(136,'wagtailsearch','0001_initial','2019-08-03 22:06:39.473919'),(137,'wagtailsearch','0002_add_verbose_names','2019-08-03 22:06:40.579693'),(138,'wagtailsearch','0003_remove_editors_pick','2019-08-03 22:06:40.616977'),(139,'wagtailsearch','0004_querydailyhits_verbose_name_plural','2019-08-03 22:06:40.623209'),(140,'wagtailusers','0001_initial','2019-08-03 22:06:40.736280'),(141,'wagtailusers','0002_add_verbose_name_on_userprofile','2019-08-03 22:06:41.001693'),(142,'wagtailusers','0003_add_verbose_names','2019-08-03 22:06:41.099509'),(143,'wagtailusers','0004_capitalizeverbose','2019-08-03 22:06:41.149911'),(144,'wagtailusers','0005_make_related_name_wagtail_specific','2019-08-03 22:06:41.442390'),(145,'wagtailusers','0006_userprofile_prefered_language','2019-08-03 22:06:41.704935'),(146,'wagtailusers','0007_userprofile_current_time_zone','2019-08-03 22:06:41.924668'),(147,'wagtailusers','0008_userprofile_avatar','2019-08-03 22:06:42.071099'),(148,'wagtailusers','0009_userprofile_verbose_name_plural','2019-08-03 22:06:42.093769'),(149,'wagtailimages','0001_squashed_0021','2019-08-03 22:06:42.097505'),(150,'wagtailcore','0001_squashed_0016_change_page_url_path_to_text_field','2019-08-03 22:06:42.106779');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('kt1qr30et2guxp45frgn0l697jdcaqun','NDZkZjQxMTE3YTBiNTQwYTI5ZTk4YmEwNjFhNDViZGRmZmJhNTJjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYjJlYjRlZGJkYjBkY2JiY2M1YjczNmRiOGE3MTZhMzM2YThmYjBmIn0=','2019-08-17 22:10:43.010342');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'test_label2','test_label2'),(2,'test_label1','test_label1');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collection`
--

DROP TABLE IF EXISTS `wagtailcore_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collection`
--

LOCK TABLES `wagtailcore_collection` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collection` DISABLE KEYS */;
INSERT INTO `wagtailcore_collection` VALUES (1,'0001',1,0,'Root');
/*!40000 ALTER TABLE `wagtailcore_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collectionviewrestriction`
--

DROP TABLE IF EXISTS `wagtailcore_collectionviewrestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_collectionviewrestriction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restriction_type` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `collection_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` (`collection_id`),
  CONSTRAINT `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collectionviewrestriction`
--

LOCK TABLES `wagtailcore_collectionviewrestriction` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collectionviewrestriction_groups`
--

DROP TABLE IF EXISTS `wagtailcore_collectionviewrestriction_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_collectionviewrestriction_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collectionviewrestriction_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq` (`collectionviewrestriction_id`,`group_id`),
  KEY `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco` FOREIGN KEY (`collectionviewrestriction_id`) REFERENCES `wagtailcore_collectionviewrestriction` (`id`),
  CONSTRAINT `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collectionviewrestriction_groups`
--

LOCK TABLES `wagtailcore_collectionviewrestriction_groups` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_groupcollectionpermission`
--

DROP TABLE IF EXISTS `wagtailcore_groupcollectionpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_groupcollectionpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq` (`group_id`,`collection_id`,`permission_id`),
  KEY `wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco` (`collection_id`),
  KEY `wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm` (`permission_id`),
  CONSTRAINT `wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtailcore_groupcol_group_id_05d61460_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_groupcollectionpermission`
--

LOCK TABLES `wagtailcore_groupcollectionpermission` WRITE;
/*!40000 ALTER TABLE `wagtailcore_groupcollectionpermission` DISABLE KEYS */;
INSERT INTO `wagtailcore_groupcollectionpermission` VALUES (2,1,1,1),(4,1,1,2),(6,1,1,5),(8,1,1,6),(1,1,2,1),(3,1,2,2),(5,1,2,5),(7,1,2,6);
/*!40000 ALTER TABLE `wagtailcore_groupcollectionpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_grouppagepermission`
--

DROP TABLE IF EXISTS `wagtailcore_grouppagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_grouppagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_type` varchar(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq` (`group_id`,`page_id`,`permission_type`),
  KEY `wagtailcore_grouppag_page_id_710b114a_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_grouppag_page_id_710b114a_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_grouppagepermission`
--

LOCK TABLES `wagtailcore_grouppagepermission` WRITE;
/*!40000 ALTER TABLE `wagtailcore_grouppagepermission` DISABLE KEYS */;
INSERT INTO `wagtailcore_grouppagepermission` VALUES (1,'add',1,1),(2,'edit',1,1),(6,'lock',1,1),(3,'publish',1,1),(4,'add',2,1),(5,'edit',2,1);
/*!40000 ALTER TABLE `wagtailcore_grouppagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_page`
--

DROP TABLE IF EXISTS `wagtailcore_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `live` tinyint(1) NOT NULL,
  `has_unpublished_changes` tinyint(1) NOT NULL,
  `url_path` longtext NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `show_in_menus` tinyint(1) NOT NULL,
  `search_description` longtext NOT NULL,
  `go_live_at` datetime(6) DEFAULT NULL,
  `expire_at` datetime(6) DEFAULT NULL,
  `expired` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `latest_revision_created_at` datetime(6) DEFAULT NULL,
  `first_published_at` datetime(6) DEFAULT NULL,
  `live_revision_id` int(11) DEFAULT NULL,
  `last_published_at` datetime(6) DEFAULT NULL,
  `draft_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `wagtailcore_page_slug_e7c11b8f` (`slug`),
  KEY `wagtailcore_page_first_published_at_2b5dd637` (`first_published_at`),
  KEY `wagtailcore_page_content_type_id_c28424df_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_page_live_revision_id_930bd822_fk_wagtailco` (`live_revision_id`),
  KEY `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `wagtailcore_page_content_type_id_c28424df_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `wagtailcore_page_live_revision_id_930bd822_fk_wagtailco` FOREIGN KEY (`live_revision_id`) REFERENCES `wagtailcore_pagerevision` (`id`),
  CONSTRAINT `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_page`
--

LOCK TABLES `wagtailcore_page` WRITE;
/*!40000 ALTER TABLE `wagtailcore_page` DISABLE KEYS */;
INSERT INTO `wagtailcore_page` VALUES (1,'0001',1,1,'Root','root',1,0,'/','',0,'',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'Root'),(3,'00010001',2,1,'Development site','development-site',1,0,'/development-site/','development-site',0,'',NULL,NULL,0,5,1,0,'2019-08-03 22:12:00.066332','2019-08-03 22:12:00.093728',1,'2019-08-03 22:12:00.093728','Development site'),(4,'000100010001',3,0,'test','test',1,0,'/development-site/test/','',0,'',NULL,NULL,0,8,1,0,'2019-08-03 22:12:47.939750','2019-08-03 22:12:47.992310',2,'2019-08-03 22:12:47.992310','test');
/*!40000 ALTER TABLE `wagtailcore_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pagerevision`
--

DROP TABLE IF EXISTS `wagtailcore_pagerevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_pagerevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted_for_moderation` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `content_json` longtext NOT NULL,
  `approved_go_live_at` datetime(6) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pagerevision_submitted_for_moderation_c682e44c` (`submitted_for_moderation`),
  KEY `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` (`page_id`),
  KEY `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_pagerevision_created_at_66954e3b` (`created_at`),
  CONSTRAINT `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pagerevision`
--

LOCK TABLES `wagtailcore_pagerevision` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pagerevision` DISABLE KEYS */;
INSERT INTO `wagtailcore_pagerevision` VALUES (1,0,'2019-08-03 22:12:00.066332','{\"pk\": 3, \"path\": \"00010001\", \"depth\": 2, \"numchild\": 0, \"title\": \"Development site\", \"draft_title\": \"Development site\", \"slug\": \"development-site\", \"content_type\": 5, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/development-site/\", \"owner\": 1, \"seo_title\": \"development-site\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"description\": \"Development site\", \"header_image\": null, \"main_color\": \"#4d6ae0\", \"display_comments\": false, \"display_categories\": true, \"display_tags\": true, \"display_popular_entries\": true, \"display_last_entries\": true, \"display_archive\": true, \"disqus_api_secret\": \"\", \"disqus_shortname\": \"\", \"num_entries_page\": 5, \"num_last_entries\": 3, \"num_popular_entries\": 3, \"num_tags_entry_header\": 5, \"short_feed_description\": true}',NULL,3,1),(2,0,'2019-08-03 22:12:47.939750','{\"pk\": 4, \"path\": \"000100010001\", \"depth\": 3, \"numchild\": 0, \"title\": \"test\", \"draft_title\": \"test\", \"slug\": \"test\", \"content_type\": 8, \"live\": true, \"has_unpublished_changes\": false, \"url_path\": \"/development-site/test/\", \"owner\": 1, \"seo_title\": \"\", \"show_in_menus\": false, \"search_description\": \"\", \"go_live_at\": null, \"expire_at\": null, \"expired\": false, \"locked\": false, \"first_published_at\": null, \"last_published_at\": null, \"latest_revision_created_at\": null, \"live_revision\": null, \"body\": \"<p>test body</p>\", \"date\": \"2019-08-03T22:12:00Z\", \"header_image\": null, \"excerpt\": \"<p>test excerpt</p>\", \"num_comments\": 0, \"entry_categories\": [], \"entry_tags\": [{\"pk\": 1, \"tag\": 1, \"content_object\": 4}, {\"pk\": 2, \"tag\": 2, \"content_object\": 4}], \"related_entrypage_from\": [], \"related_entrypage_to\": []}',NULL,4,1);
/*!40000 ALTER TABLE `wagtailcore_pagerevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pageviewrestriction`
--

DROP TABLE IF EXISTS `wagtailcore_pageviewrestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_pageviewrestriction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  `restriction_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pageviewrestriction`
--

LOCK TABLES `wagtailcore_pageviewrestriction` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pageviewrestriction_groups`
--

DROP TABLE IF EXISTS `wagtailcore_pageviewrestriction_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_pageviewrestriction_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageviewrestriction_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq` (`pageviewrestriction_id`,`group_id`),
  KEY `wagtailcore_pageview_group_id_6460f223_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_pageview_group_id_6460f223_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco` FOREIGN KEY (`pageviewrestriction_id`) REFERENCES `wagtailcore_pageviewrestriction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pageviewrestriction_groups`
--

LOCK TABLES `wagtailcore_pageviewrestriction_groups` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_site`
--

DROP TABLE IF EXISTS `wagtailcore_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `is_default_site` tinyint(1) NOT NULL,
  `root_page_id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_site_hostname_port_2c626d70_uniq` (`hostname`,`port`),
  KEY `wagtailcore_site_hostname_96b20b46` (`hostname`),
  KEY `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` (`root_page_id`),
  CONSTRAINT `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` FOREIGN KEY (`root_page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_site`
--

LOCK TABLES `wagtailcore_site` WRITE;
/*!40000 ALTER TABLE `wagtailcore_site` DISABLE KEYS */;
INSERT INTO `wagtailcore_site` VALUES (2,'localhost',80,1,3,'Development site');
/*!40000 ALTER TABLE `wagtailcore_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtaildocs_document`
--

DROP TABLE IF EXISTS `wagtaildocs_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtaildocs_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `uploaded_by_user_id` int(11) DEFAULT NULL,
  `collection_id` int(11) NOT NULL,
  `file_size` int(10) unsigned DEFAULT NULL,
  `file_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtaildocs_document_collection_id_23881625_fk_wagtailco` (`collection_id`),
  KEY `wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user` (`uploaded_by_user_id`),
  CONSTRAINT `wagtaildocs_document_collection_id_23881625_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtaildocs_document`
--

LOCK TABLES `wagtaildocs_document` WRITE;
/*!40000 ALTER TABLE `wagtaildocs_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtaildocs_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailembeds_embed`
--

DROP TABLE IF EXISTS `wagtailembeds_embed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailembeds_embed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `max_width` smallint(6) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `html` longtext NOT NULL,
  `title` longtext NOT NULL,
  `author_name` longtext NOT NULL,
  `provider_name` longtext NOT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailembeds_embed_url_max_width_8a2922d8_uniq` (`url`,`max_width`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailembeds_embed`
--

LOCK TABLES `wagtailembeds_embed` WRITE;
/*!40000 ALTER TABLE `wagtailembeds_embed` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailembeds_embed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailforms_formsubmission`
--

DROP TABLE IF EXISTS `wagtailforms_formsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailforms_formsubmission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_data` longtext NOT NULL,
  `submit_time` datetime(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailforms_formsubmission`
--

LOCK TABLES `wagtailforms_formsubmission` WRITE;
/*!40000 ALTER TABLE `wagtailforms_formsubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailforms_formsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_image`
--

DROP TABLE IF EXISTS `wagtailimages_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailimages_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `focal_point_x` int(10) unsigned DEFAULT NULL,
  `focal_point_y` int(10) unsigned DEFAULT NULL,
  `focal_point_width` int(10) unsigned DEFAULT NULL,
  `focal_point_height` int(10) unsigned DEFAULT NULL,
  `uploaded_by_user_id` int(11) DEFAULT NULL,
  `file_size` int(10) unsigned DEFAULT NULL,
  `collection_id` int(11) NOT NULL,
  `file_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` (`uploaded_by_user_id`),
  KEY `wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco` (`collection_id`),
  KEY `wagtailimages_image_created_at_86fa6cd4` (`created_at`),
  CONSTRAINT `wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_image`
--

LOCK TABLES `wagtailimages_image` WRITE;
/*!40000 ALTER TABLE `wagtailimages_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailimages_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_rendition`
--

DROP TABLE IF EXISTS `wagtailimages_rendition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailimages_rendition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `focal_point_key` varchar(16) NOT NULL,
  `filter_spec` varchar(255) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq` (`image_id`,`filter_spec`,`focal_point_key`),
  KEY `wagtailimages_rendition_filter_spec_1cba3201` (`filter_spec`),
  CONSTRAINT `wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim` FOREIGN KEY (`image_id`) REFERENCES `wagtailimages_image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_rendition`
--

LOCK TABLES `wagtailimages_rendition` WRITE;
/*!40000 ALTER TABLE `wagtailimages_rendition` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailimages_rendition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailmenus_flatmenu`
--

DROP TABLE IF EXISTS `wagtailmenus_flatmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailmenus_flatmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `handle` varchar(100) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `site_id` int(11) NOT NULL,
  `max_levels` smallint(5) unsigned NOT NULL,
  `use_specific` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailmenus_flatmenu_site_id_handle_7b0cab3a_uniq` (`site_id`,`handle`),
  KEY `wagtailmenus_flatmenu_handle_fd420cad` (`handle`),
  CONSTRAINT `wagtailmenus_flatmenu_site_id_516a598d_fk_wagtailcore_site_id` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailmenus_flatmenu`
--

LOCK TABLES `wagtailmenus_flatmenu` WRITE;
/*!40000 ALTER TABLE `wagtailmenus_flatmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailmenus_flatmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailmenus_flatmenuitem`
--

DROP TABLE IF EXISTS `wagtailmenus_flatmenuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailmenus_flatmenuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `url_append` varchar(255) NOT NULL,
  `allow_subnav` tinyint(1) NOT NULL,
  `handle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailmenus_flatmenuitem_menu_id_757c39da` (`menu_id`),
  KEY `wagtailmenus_flatmen_link_page_id_36779c0f_fk_wagtailco` (`link_page_id`),
  CONSTRAINT `wagtailmenus_flatmen_link_page_id_36779c0f_fk_wagtailco` FOREIGN KEY (`link_page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailmenus_flatmen_menu_id_757c39da_fk_wagtailme` FOREIGN KEY (`menu_id`) REFERENCES `wagtailmenus_flatmenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailmenus_flatmenuitem`
--

LOCK TABLES `wagtailmenus_flatmenuitem` WRITE;
/*!40000 ALTER TABLE `wagtailmenus_flatmenuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailmenus_flatmenuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailmenus_mainmenu`
--

DROP TABLE IF EXISTS `wagtailmenus_mainmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailmenus_mainmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `max_levels` smallint(5) unsigned NOT NULL,
  `use_specific` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`),
  CONSTRAINT `wagtailmenus_mainmenu_site_id_84b0fde4_fk_wagtailcore_site_id` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailmenus_mainmenu`
--

LOCK TABLES `wagtailmenus_mainmenu` WRITE;
/*!40000 ALTER TABLE `wagtailmenus_mainmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailmenus_mainmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailmenus_mainmenuitem`
--

DROP TABLE IF EXISTS `wagtailmenus_mainmenuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailmenus_mainmenuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `allow_subnav` tinyint(1) NOT NULL,
  `url_append` varchar(255) NOT NULL,
  `handle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailmenus_mainmenuitem_menu_id_6505d4c4` (`menu_id`),
  KEY `wagtailmenus_mainmen_link_page_id_208a4a4d_fk_wagtailco` (`link_page_id`),
  CONSTRAINT `wagtailmenus_mainmen_link_page_id_208a4a4d_fk_wagtailco` FOREIGN KEY (`link_page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailmenus_mainmen_menu_id_6505d4c4_fk_wagtailme` FOREIGN KEY (`menu_id`) REFERENCES `wagtailmenus_mainmenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailmenus_mainmenuitem`
--

LOCK TABLES `wagtailmenus_mainmenuitem` WRITE;
/*!40000 ALTER TABLE `wagtailmenus_mainmenuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailmenus_mainmenuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailredirects_redirect`
--

DROP TABLE IF EXISTS `wagtailredirects_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailredirects_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_path` varchar(255) NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `redirect_link` varchar(255) NOT NULL,
  `redirect_page_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailredirects_redirect_old_path_site_id_783622d7_uniq` (`old_path`,`site_id`),
  KEY `wagtailredirects_redirect_old_path_bb35247b` (`old_path`),
  KEY `wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco` (`redirect_page_id`),
  KEY `wagtailredirects_red_site_id_780a0e1e_fk_wagtailco` (`site_id`),
  CONSTRAINT `wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco` FOREIGN KEY (`redirect_page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailredirects_red_site_id_780a0e1e_fk_wagtailco` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailredirects_redirect`
--

LOCK TABLES `wagtailredirects_redirect` WRITE;
/*!40000 ALTER TABLE `wagtailredirects_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailredirects_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_editorspick`
--

DROP TABLE IF EXISTS `wagtailsearch_editorspick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailsearch_editorspick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `page_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse` (`query_id`),
  KEY `wagtailsearch_editor_page_id_28cbc274_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailsearch_editor_page_id_28cbc274_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_editorspick`
--

LOCK TABLES `wagtailsearch_editorspick` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_editorspick` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_editorspick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_query`
--

DROP TABLE IF EXISTS `wagtailsearch_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailsearch_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_string` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `query_string` (`query_string`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_query`
--

LOCK TABLES `wagtailsearch_query` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_querydailyhits`
--

DROP TABLE IF EXISTS `wagtailsearch_querydailyhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailsearch_querydailyhits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hits` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq` (`query_id`,`date`),
  CONSTRAINT `wagtailsearch_queryd_query_id_2185994b_fk_wagtailse` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_querydailyhits`
--

LOCK TABLES `wagtailsearch_querydailyhits` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_querydailyhits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_querydailyhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailusers_userprofile`
--

DROP TABLE IF EXISTS `wagtailusers_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailusers_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted_notifications` tinyint(1) NOT NULL,
  `approved_notifications` tinyint(1) NOT NULL,
  `rejected_notifications` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `preferred_language` varchar(10) NOT NULL,
  `current_time_zone` varchar(40) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailusers_userprofile`
--

LOCK TABLES `wagtailusers_userprofile` WRITE;
/*!40000 ALTER TABLE `wagtailusers_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailusers_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-03 22:31:57
