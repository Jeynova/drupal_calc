-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: drupal_calc
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `cache_entity`
--

DROP TABLE IF EXISTS `cache_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_entity` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_entity`
--

LOCK TABLES `cache_entity` WRITE;
/*!40000 ALTER TABLE `cache_entity` DISABLE KEYS */;
INSERT INTO `cache_entity` VALUES ('values:shortcut:1',_binary 'O:31:\"Drupal\\shortcut\\Entity\\Shortcut\":28:{s:9:\"\0*\0values\";a:8:{s:2:\"id\";a:1:{s:9:\"x-default\";s:1:\"1\";}s:12:\"shortcut_set\";a:1:{s:9:\"x-default\";s:7:\"default\";}s:4:\"uuid\";a:1:{s:9:\"x-default\";s:36:\"85909588-b460-4069-a57d-b3287fdc2b88\";}s:8:\"langcode\";a:1:{s:9:\"x-default\";s:2:\"en\";}s:5:\"title\";a:1:{s:9:\"x-default\";s:11:\"Add content\";}s:6:\"weight\";a:1:{s:9:\"x-default\";s:3:\"-20\";}s:4:\"link\";a:1:{s:9:\"x-default\";a:3:{s:3:\"uri\";s:18:\"internal:/node/add\";s:5:\"title\";N;s:7:\"options\";a:0:{}}}s:16:\"default_langcode\";a:1:{s:9:\"x-default\";s:1:\"1\";}}s:9:\"\0*\0fields\";a:0:{}s:19:\"\0*\0fieldDefinitions\";N;s:12:\"\0*\0languages\";N;s:14:\"\0*\0langcodeKey\";s:8:\"langcode\";s:21:\"\0*\0defaultLangcodeKey\";s:16:\"default_langcode\";s:17:\"\0*\0activeLangcode\";s:9:\"x-default\";s:18:\"\0*\0defaultLangcode\";s:2:\"en\";s:15:\"\0*\0translations\";a:1:{s:9:\"x-default\";a:1:{s:6:\"status\";i:1;}}s:24:\"\0*\0translationInitialize\";b:0;s:14:\"\0*\0newRevision\";b:0;s:20:\"\0*\0isDefaultRevision\";b:1;s:13:\"\0*\0entityKeys\";a:3:{s:6:\"bundle\";s:7:\"default\";s:2:\"id\";s:1:\"1\";s:4:\"uuid\";s:36:\"85909588-b460-4069-a57d-b3287fdc2b88\";}s:25:\"\0*\0translatableEntityKeys\";a:3:{s:5:\"label\";a:1:{s:9:\"x-default\";s:11:\"Add content\";}s:8:\"langcode\";a:1:{s:9:\"x-default\";s:2:\"en\";}s:16:\"default_langcode\";a:1:{s:9:\"x-default\";s:1:\"1\";}}s:12:\"\0*\0validated\";b:0;s:21:\"\0*\0validationRequired\";b:0;s:19:\"\0*\0loadedRevisionId\";N;s:33:\"\0*\0revisionTranslationAffectedKey\";s:29:\"revision_translation_affected\";s:37:\"\0*\0enforceRevisionTranslationAffected\";a:0:{}s:15:\"\0*\0entityTypeId\";s:8:\"shortcut\";s:15:\"\0*\0enforceIsNew\";N;s:12:\"\0*\0typedData\";N;s:16:\"\0*\0cacheContexts\";a:0:{}s:12:\"\0*\0cacheTags\";a:0:{}s:14:\"\0*\0cacheMaxAge\";i:-1;s:14:\"\0*\0_serviceIds\";a:0:{}s:18:\"\0*\0_entityStorages\";a:0:{}s:12:\"\0*\0isSyncing\";b:0;}',-1,1572971829.375,1,'entity_field_info shortcut_values','52'),('values:shortcut:2',_binary 'O:31:\"Drupal\\shortcut\\Entity\\Shortcut\":28:{s:9:\"\0*\0values\";a:8:{s:2:\"id\";a:1:{s:9:\"x-default\";s:1:\"2\";}s:12:\"shortcut_set\";a:1:{s:9:\"x-default\";s:7:\"default\";}s:4:\"uuid\";a:1:{s:9:\"x-default\";s:36:\"8b3fcba1-6285-45bf-8a1f-0fd513db88e2\";}s:8:\"langcode\";a:1:{s:9:\"x-default\";s:2:\"en\";}s:5:\"title\";a:1:{s:9:\"x-default\";s:11:\"All content\";}s:6:\"weight\";a:1:{s:9:\"x-default\";s:3:\"-19\";}s:4:\"link\";a:1:{s:9:\"x-default\";a:3:{s:3:\"uri\";s:23:\"internal:/admin/content\";s:5:\"title\";N;s:7:\"options\";a:0:{}}}s:16:\"default_langcode\";a:1:{s:9:\"x-default\";s:1:\"1\";}}s:9:\"\0*\0fields\";a:0:{}s:19:\"\0*\0fieldDefinitions\";N;s:12:\"\0*\0languages\";N;s:14:\"\0*\0langcodeKey\";s:8:\"langcode\";s:21:\"\0*\0defaultLangcodeKey\";s:16:\"default_langcode\";s:17:\"\0*\0activeLangcode\";s:9:\"x-default\";s:18:\"\0*\0defaultLangcode\";s:2:\"en\";s:15:\"\0*\0translations\";a:1:{s:9:\"x-default\";a:1:{s:6:\"status\";i:1;}}s:24:\"\0*\0translationInitialize\";b:0;s:14:\"\0*\0newRevision\";b:0;s:20:\"\0*\0isDefaultRevision\";b:1;s:13:\"\0*\0entityKeys\";a:3:{s:6:\"bundle\";s:7:\"default\";s:2:\"id\";s:1:\"2\";s:4:\"uuid\";s:36:\"8b3fcba1-6285-45bf-8a1f-0fd513db88e2\";}s:25:\"\0*\0translatableEntityKeys\";a:3:{s:5:\"label\";a:1:{s:9:\"x-default\";s:11:\"All content\";}s:8:\"langcode\";a:1:{s:9:\"x-default\";s:2:\"en\";}s:16:\"default_langcode\";a:1:{s:9:\"x-default\";s:1:\"1\";}}s:12:\"\0*\0validated\";b:0;s:21:\"\0*\0validationRequired\";b:0;s:19:\"\0*\0loadedRevisionId\";N;s:33:\"\0*\0revisionTranslationAffectedKey\";s:29:\"revision_translation_affected\";s:37:\"\0*\0enforceRevisionTranslationAffected\";a:0:{}s:15:\"\0*\0entityTypeId\";s:8:\"shortcut\";s:15:\"\0*\0enforceIsNew\";N;s:12:\"\0*\0typedData\";N;s:16:\"\0*\0cacheContexts\";a:0:{}s:12:\"\0*\0cacheTags\";a:0:{}s:14:\"\0*\0cacheMaxAge\";i:-1;s:14:\"\0*\0_serviceIds\";a:0:{}s:18:\"\0*\0_entityStorages\";a:0:{}s:12:\"\0*\0isSyncing\";b:0;}',-1,1572971829.385,1,'entity_field_info shortcut_values','52');
/*!40000 ALTER TABLE `cache_entity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-05 17:55:12
