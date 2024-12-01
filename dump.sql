-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `code_exp` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Germany','DE','DEU'),(2,'Italy','IT','ITA'),(3,'Austria','AT','AUT'),(4,'Ukraine','UA','UKR'),(5,'Sri Lanka','LK','LKA'),(6,'United Kingdom of Great B','GB','GBR'),(7,'Slovakia','SK','SVK'),(8,'France','FR','FRA'),(9,'Bulgaria','BG','BGR'),(10,'Poland','PL','POL'),(11,'Switzerland','CH','CHE'),(12,'Taiwan','TW','TWN'),(13,'Slovenia','SI','SVN'),(14,'Hungary','HU','HUN'),(15,'Czechia','CZ','CZE'),(16,'Romania','RO','ROU'),(17,'Georgia','GE','GEO'),(18,'Netherlands','NL','NLD'),(19,'United States of America','US','USA'),(20,'Afghanistan','AF','AFG'),(21,'Albania','AL','ALB'),(22,'Algeria','DZ','DZA'),(23,'American Samoa','AS','ASM'),(24,'Andorra','AD','AND'),(25,'Angola','AO','AGO'),(26,'Anguilla','AI','AIA'),(27,'Antarctica','AQ','ATA'),(28,'Antigua and Barbuda','AG','ATG'),(29,'Argentina','AR','ARG'),(30,'Armenia','AM','ARM'),(31,'Aruba','AW','ABW'),(32,'Australia','AU','AUS'),(33,'Azerbaijan','AZ','AZE'),(34,'Bahamas','BS','BHS'),(35,'Bahrain','BH','BHR'),(36,'Bangladesh','BD','BGD'),(37,'Barbados','BB','BRB'),(38,'Belarus','BY','BLR'),(39,'Belgium','BE','BEL'),(40,'Belize','BZ','BLZ'),(41,'Benin','BJ','BEN'),(42,'Bermuda','BM','BMU'),(43,'Bhutan','BT','BTN'),(44,'Bolivia','BO','BOL'),(45,'Bonaire, Sint Eustatius a','BQ','BES'),(46,'Bosnia and Herzegovina','BA','BIH'),(47,'Botswana','BW','BWA'),(48,'Bouvet Island','BV','BVT'),(49,'Brazil','BR','BRA'),(50,'British Indian Ocean Terr','IO','IOT'),(51,'Brunei Darussalam','BN','BRN'),(52,'Burkina Faso','BF','BFA'),(53,'Burundi','BI','BDI'),(54,'Cabo Verde','CV','CPV'),(55,'Cambodia','KH','KHM'),(56,'Cameroon','CM','CMR'),(57,'Canada','CA','CAN'),(58,'Cayman Islands','KY','CYM'),(59,'Central African Republic','CF','CAF'),(60,'Chad','TD','TCD'),(61,'Chile','CL','CHL'),(62,'China','CN','CHN'),(63,'Christmas Island','CX','CXR'),(64,'Cocos Islands','CC','CCK'),(65,'Colombia','CO','COL'),(66,'Comoros','KM','COM'),(67,'Congo (the Democratic Rep','CD','COD'),(68,'Congo','CG','COG'),(69,'Cook Islands','CK','COK'),(70,'Costa Rica','CR','CRI'),(71,'Croatia','HR','HRV'),(72,'Cuba','CU','CUB'),(73,'Curaçao','CW','CUW'),(74,'Cyprus','CY','CYP'),(75,'Côte d\'Ivoire','CI','CIV'),(76,'Denmark','DK','DNK'),(77,'Djibouti','DJ','DJI'),(78,'Dominica','DM','DMA'),(79,'Dominican Republic','DO','DOM'),(80,'Ecuador','EC','ECU'),(81,'Egypt','EG','EGY'),(82,'El Salvador','SV','SLV'),(83,'Equatorial Guinea','GQ','GNQ'),(84,'Eritrea','ER','ERI'),(85,'Estonia','EE','EST'),(86,'Eswatini','SZ','SWZ'),(87,'Ethiopia','ET','ETH'),(88,'Falkland Islands  [Malvin','FK','FLK'),(89,'Faroe Islands','FO','FRO'),(90,'Fiji','FJ','FJI'),(91,'Finland','FI','FIN'),(92,'French Guiana','GF','GUF'),(93,'French Polynesia','PF','PYF'),(94,'French Southern Territori','TF','ATF'),(95,'Gabon','GA','GAB'),(96,'Gambia','GM','GMB'),(97,'Ghana','GH','GHA'),(98,'Gibraltar','GI','GIB'),(99,'Greece','GR','GRC'),(100,'Greenland','GL','GRL'),(101,'Grenada','GD','GRD'),(102,'Guadeloupe','GP','GLP'),(103,'Guam','GU','GUM'),(104,'Guatemala','GT','GTM'),(105,'Guernsey','GG','GGY'),(106,'Guinea','GN','GIN'),(107,'Guinea-Bissau','GW','GNB'),(108,'Guyana','GY','GUY'),(109,'Haiti','HT','HTI'),(110,'Heard Island and McDonald','HM','HMD'),(111,'Holy See','VA','VAT'),(112,'Honduras','HN','HND'),(113,'Hong Kong','HK','HKG'),(114,'Iceland','IS','ISL'),(115,'India','IN','IND'),(116,'Indonesia','ID','IDN'),(117,'Iran','IR','IRN'),(118,'Iraq','IQ','IRQ'),(119,'Ireland','IE','IRL'),(120,'Isle of Man','IM','IMN'),(121,'Israel','IL','ISR'),(122,'Jamaica','JM','JAM'),(123,'Japan','JP','JPN'),(124,'Jersey','JE','JEY'),(125,'Jordan','JO','JOR'),(126,'Kazakhstan','KZ','KAZ'),(127,'Kenya','KE','KEN'),(128,'Kiribati','KI','KIR'),(129,'Korea (the Democratic Peo','KP','PRK'),(130,'Korea (the Republic of)','KR','KOR'),(131,'Kuwait','KW','KWT'),(132,'Kyrgyzstan','KG','KGZ'),(133,'Lao People\'s Democratic R','LA','LAO'),(134,'Latvia','LV','LVA'),(135,'Lebanon','LB','LBN'),(136,'Lesotho','LS','LSO'),(137,'Liberia','LR','LBR'),(138,'Libya','LY','LBY'),(139,'Liechtenstein','LI','LIE'),(140,'Lithuania','LT','LTU'),(141,'Luxembourg','LU','LUX'),(142,'Macao','MO','MAC'),(143,'Madagascar','MG','MDG'),(144,'Malawi','MW','MWI'),(145,'Malaysia','MY','MYS'),(146,'Maldives','MV','MDV'),(147,'Mali','ML','MLI'),(148,'Malta','MT','MLT'),(149,'Marshall Islands','MH','MHL'),(150,'Martinique','MQ','MTQ'),(151,'Mauritania','MR','MRT'),(152,'Mauritius','MU','MUS'),(153,'Mayotte','YT','MYT'),(154,'Mexico','MX','MEX'),(155,'Micronesia (Federated Sta','FM','FSM'),(156,'Moldova','MD','MDA'),(157,'Monaco','MC','MCO'),(158,'Mongolia','MN','MNG'),(159,'Montenegro','ME','MNE'),(160,'Montserrat','MS','MSR'),(161,'Morocco','MA','MAR'),(162,'Mozambique','MZ','MOZ'),(163,'Myanmar','MM','MMR'),(164,'Namibia','NA','NAM'),(165,'Nauru','NR','NRU'),(166,'Nepal','NP','NPL'),(167,'New Caledonia','NC','NCL'),(168,'New Zealand','NZ','NZL'),(169,'Nicaragua','NI','NIC'),(170,'Niger','NE','NER'),(171,'Nigeria','NG','NGA'),(172,'Niue','NU','NIU'),(173,'Norfolk Island','NF','NFK'),(174,'Northern Mariana Islands','MP','MNP'),(175,'Norway','NO','NOR'),(176,'Oman','OM','OMN'),(177,'Pakistan','PK','PAK'),(178,'Palau','PW','PLW'),(179,'Palestine, State of','PS','PSE'),(180,'Panama','PA','PAN'),(181,'Papua New Guinea','PG','PNG'),(182,'Paraguay','PY','PRY'),(183,'Peru','PE','PER'),(184,'Philippines','PH','PHL'),(185,'Pitcairn','PN','PCN'),(186,'Portugal','PT','PRT'),(187,'Puerto Rico','PR','PRI'),(188,'Qatar','QA','QAT'),(189,'Republic of North Macedon','MK','MKD'),(190,'Russian Federation','RU','RUS'),(191,'Rwanda','RW','RWA'),(192,'Réunion','RE','REU'),(193,'Saint Barthélemy','BL','BLM'),(194,'Saint Helena, Ascension a','SH','SHN'),(195,'Saint Kitts and Nevis','KN','KNA'),(196,'Saint Lucia','LC','LCA'),(197,'Saint Martin (French part','MF','MAF'),(198,'Saint Pierre and Miquelon','PM','SPM'),(199,'Saint Vincent and the Gre','VC','VCT'),(200,'Samoa','WS','WSM'),(201,'San Marino','SM','SMR'),(202,'Sao Tome and Principe','ST','STP'),(203,'Saudi Arabia','SA','SAU'),(204,'Senegal','SN','SEN'),(205,'Serbia','RS','SRB'),(206,'Seychelles','SC','SYC'),(207,'Sierra Leone','SL','SLE'),(208,'Singapore','SG','SGP'),(209,'Sint Maarten','SX','SXM'),(210,'Solomon Islands','SB','SLB'),(211,'Somalia','SO','SOM'),(212,'South Africa','ZA','ZAF'),(213,'South Georgia and the Sou','GS','SGS'),(214,'South Sudan','SS','SSD'),(215,'Spain','ES','ESP'),(216,'Sudan','SD','SDN'),(217,'Suriname','SR','SUR'),(218,'Svalbard and Jan Mayen','SJ','SJM'),(219,'Sweden','SE','SWE'),(220,'Syrian Arab Republic','SY','SYR'),(221,'Tajikistan','TJ','TJK'),(222,'Tanzania','TZ','TZA'),(223,'Thailand','TH','THA'),(224,'Timor-Leste','TL','TLS'),(225,'Togo','TG','TGO'),(226,'Tokelau','TK','TKL'),(227,'Tonga','TO','TON'),(228,'Trinidad and Tobago','TT','TTO'),(229,'Tunisia','TN','TUN'),(230,'Turkey','TR','TUR'),(231,'Turkmenistan','TM','TKM'),(232,'Turks and Caicos Islands','TC','TCA'),(233,'Tuvalu','TV','TUV'),(234,'Uganda','UG','UGA'),(235,'United Arab Emirates','AE','ARE'),(236,'United States Minor Outly','UM','UMI'),(237,'Uruguay','UY','URY'),(238,'Uzbekistan','UZ','UZB'),(239,'Vanuatu','VU','VUT'),(240,'Venezuela (Bolivarian Rep','VE','VEN'),(241,'Viet Nam','VN','VNM'),(242,'Virgin Islands (British)','VG','VGB'),(243,'Virgin Islands (U.S.)','VI','VIR'),(244,'Wallis and Futuna','WF','WLF'),(245,'Western Sahara','EH','ESH'),(246,'Yemen','YE','YEM'),(247,'Zambia','ZM','ZMB'),(248,'Zimbabwe','ZW','ZWE'),(249,'Åland Islands','AX','ALA ');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'auth','group'),(1,'auth','permission'),(6,'authentication','user'),(4,'authtoken','token'),(5,'authtoken','tokenproxy'),(3,'contenttypes','contenttype'),(8,'user','notificationtemplate');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'en','EN'),(2,'de','DE');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_category`
--

DROP TABLE IF EXISTS `notification_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_category`
--

LOCK TABLES `notification_category` WRITE;
/*!40000 ALTER TABLE `notification_category` DISABLE KEYS */;
INSERT INTO `notification_category` VALUES (1,'import','Imports'),(2,'assessment','Conformity Assessment');
/*!40000 ALTER TABLE `notification_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_template`
--

DROP TABLE IF EXISTS `notification_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_category_id` int DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `txt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-notification_template-notification_category_id` (`notification_category_id`),
  CONSTRAINT `fk-notification_template-notification_category_id` FOREIGN KEY (`notification_category_id`) REFERENCES `notification_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_template`
--

LOCK TABLES `notification_template` WRITE;
/*!40000 ALTER TABLE `notification_template` DISABLE KEYS */;
INSERT INTO `notification_template` VALUES (1,1,'import_finished','The import for <a href=\"/project/{0}/\">{1}</a> has been successfully completed.'),(2,2,'assessment_completed','The assessment for <a href=\"/project/assessment/{0}/\">{1}</a> has been successfully completed.');
/*!40000 ALTER TABLE `notification_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(510) DEFAULT NULL,
  `address` varchar(510) DEFAULT NULL,
  `started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lat` float DEFAULT '0',
  `lng` float DEFAULT '0',
  `country_id` int NOT NULL,
  `archived` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_project_user` (`user_id`),
  KEY `project_country_FK` (`country_id`),
  CONSTRAINT `fk_project_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_country_FK` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4656 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (655,235,'Test project 1','Willy-Brandt-Platz 1, 86153 Augsburg, Deutschland','2018-12-31 22:00:00',0,0,1,0),(656,235,'Test project 2','Am Bahnhof 40, 57072 Siegen, Deutschland','2018-12-31 22:00:00',0,0,1,0);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation_string`
--

DROP TABLE IF EXISTS `translation_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translation_string` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_type_id` int DEFAULT NULL,
  `object_id` int DEFAULT NULL,
  `translation_field_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-translation_string-cxid` (`object_id`),
  KEY `idx-translation_string-content_type_id` (`content_type_id`),
  KEY `idx-translation_string-language_id` (`language_id`),
  CONSTRAINT `fk-translation_string-content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-translation_string-language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation_string`
--

LOCK TABLES `translation_string` WRITE;
/*!40000 ALTER TABLE `translation_string` DISABLE KEYS */;
INSERT INTO `translation_string` VALUES (7,8,1,4,1,'The import for <a href=\"/project/{0}/\">{1}</a> has been successfully completed.'),(8,8,1,4,2,'Der Import für <a href=\"/project/{0}/\">{1}</a> wurde erfolgreich abgeschlossen.');
/*!40000 ALTER TABLE `translation_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role_id` tinyint unsigned DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `verified` tinyint DEFAULT NULL,
  `language_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx-user-language_id` (`language_id`),
  CONSTRAINT `fk-user-language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2364 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (235,'Common','User','common@gmail.com',4,'d29c4c2e3243abfe6cf45878d934df3beb275fb2',1,1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `notification_template_id` int DEFAULT NULL,
  `notification_type` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx-user_notification-user_id` (`user_id`),
  KEY `idx-user_notification-notification_template_id` (`notification_template_id`),
  CONSTRAINT `fk-user_notification-notification_template_id` FOREIGN KEY (`notification_template_id`) REFERENCES `notification_template` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-user_notification-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification`
--

LOCK TABLES `user_notification` WRITE;
/*!40000 ALTER TABLE `user_notification` DISABLE KEYS */;
INSERT INTO `user_notification` VALUES (1,235,1,2,0,'2024-10-10 10:06:49');
/*!40000 ALTER TABLE `user_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification_option`
--

DROP TABLE IF EXISTS `user_notification_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_notification_id` int DEFAULT NULL,
  `field_id` tinyint DEFAULT NULL,
  `txt` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-user_notification_option-user_notification_id` (`user_notification_id`),
  CONSTRAINT `fk-user_notification_option-user_notification_id` FOREIGN KEY (`user_notification_id`) REFERENCES `user_notification` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification_option`
--

LOCK TABLES `user_notification_option` WRITE;
/*!40000 ALTER TABLE `user_notification_option` DISABLE KEYS */;
INSERT INTO `user_notification_option` VALUES (1,1,1,'655'),(2,1,2,'Test project 1');
/*!40000 ALTER TABLE `user_notification_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification_setting`
--

DROP TABLE IF EXISTS `user_notification_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `notification_template_id` int DEFAULT NULL,
  `system_notification` tinyint NOT NULL DEFAULT '1',
  `push_notification` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx-user_notification_setting-user_id` (`user_id`),
  KEY `idx-user_notification_setting-notification_template_id` (`notification_template_id`),
  CONSTRAINT `fk-user_notification_setting-notification_template_id` FOREIGN KEY (`notification_template_id`) REFERENCES `notification_template` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-user_notification_setting-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification_setting`
--

LOCK TABLES `user_notification_setting` WRITE;
/*!40000 ALTER TABLE `user_notification_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notification_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (4,'Licensed sustainability assessor');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10 11:04:28
