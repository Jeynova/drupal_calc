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
-- Table structure for table `cachetags`
--

DROP TABLE IF EXISTS `cachetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cachetags` (
  `tag` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Namespace-prefixed tag string.',
  `invalidations` int(11) NOT NULL DEFAULT '0' COMMENT 'Number incremented when the tag is invalidated.',
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cache table for tracking cache tag invalidations.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cachetags`
--

LOCK TABLES `cachetags` WRITE;
/*!40000 ALTER TABLE `cachetags` DISABLE KEYS */;
INSERT INTO `cachetags` VALUES ('4xx-response',50),('block_content_view',1),('breakpoints',30),('comment_view',1),('config:action_list',4),('config:block.block.bartik_account_menu',2),('config:block.block.bartik_branding',2),('config:block.block.bartik_breadcrumbs',2),('config:block.block.bartik_content',2),('config:block.block.bartik_footer',2),('config:block.block.bartik_help',2),('config:block.block.bartik_local_actions',2),('config:block.block.bartik_local_tasks',2),('config:block.block.bartik_main_menu',2),('config:block.block.bartik_messages',2),('config:block.block.bartik_page_title',2),('config:block.block.bartik_powered',2),('config:block.block.bartik_search',2),('config:block.block.bartik_tools',2),('config:block.block.drupalblock',2),('config:block.block.seven_breadcrumbs',1),('config:block.block.seven_content',1),('config:block.block.seven_help',1),('config:block.block.seven_local_actions',1),('config:block.block.seven_messages',1),('config:block.block.seven_page_title',1),('config:block.block.seven_primary_local_tasks',1),('config:block.block.seven_secondary_local_tasks',1),('config:block_content_type_list',1),('config:block_list',3),('config:comment_type_list',1),('config:contact.form.feedback',1),('config:contact_form_list',3),('config:core.extension',47),('config:editor_list',1),('config:entity_form_display_list',1),('config:entity_form_mode_list',1),('config:entity_view_display_list',1),('config:entity_view_mode_list',5),('config:filter_format_list',2),('config:image_style_list',1),('config:menu_list',1),('config:node_type_list',1),('config:rdf_mapping_list',1),('config:search_page_list',1),('config:shortcut.set.default',1),('config:shortcut_set_list',2),('config:system.date',1),('config:system.file',1),('config:system.menu.account',49),('config:system.menu.admin',50),('config:system.menu.footer',39),('config:system.menu.main',48),('config:system.menu.tools',40),('config:system.site',2),('config:taxonomy_vocabulary_list',1),('config:tour_list',1),('config:update.settings',1),('config:user.role.anonymous',2),('config:user.role.authenticated',2),('config:user_role_list',3),('config:views.view.archive',1),('config:views.view.block_content',1),('config:views.view.comment',1),('config:views.view.comments_recent',1),('config:views.view.content',1),('config:views.view.content_recent',1),('config:views.view.files',1),('config:views.view.frontpage',1),('config:views.view.glossary',1),('config:views.view.taxonomy_term',1),('config:views.view.user_admin_people',1),('config:views.view.watchdog',1),('config:views.view.who_s_new',1),('config:views.view.who_s_online',1),('config:view_list',1),('contact_message_view',1),('contextual_links_plugins',50),('element_info_build',50),('entity_bundles',8),('entity_field_info',52),('entity_types',84),('http_response',50),('link_relation_type',50),('local_action',50),('local_task',51),('node_view',1),('rendered',4),('routes',50),('route_match',51),('taxonomy_term_view',1),('theme_registry',45),('user:1',2),('user_list',3),('user_view',1),('views_data',1);
/*!40000 ALTER TABLE `cachetags` ENABLE KEYS */;
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
