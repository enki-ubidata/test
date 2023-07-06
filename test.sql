DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ad_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ad_guid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_street` varchar(255) NOT NULL,
  `ad_house_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ad_box` varchar(10) DEFAULT NULL,
  `ad_postal_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_country_code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_creation_datetime_utc` datetime NOT NULL DEFAULT (utc_timestamp()),
  `ad_creation_u_id` bigint unsigned NOT NULL,
  `ad_db_creation_timestamp_utc` datetime NOT NULL DEFAULT (now()),
  `ad_db_modification_timestamp_utc` datetime NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ad_id`),
  KEY `idx_address_ad_guid` (`ad_guid`),
  KEY `ad_creation_u_id` (`ad_creation_u_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`ad_creation_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'8d276ebc-7bbd-4032-83e2-c72915d6dcb5','ubidata','Rue de Francs','87',NULL,'1040','Etterbeek','BE','2023-02-24 14:28:19',1,'2023-02-24 14:28:19','2023-03-14 15:55:42');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

