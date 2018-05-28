# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.20)
# Database: laraquiz
# Generation Time: 2018-05-28 11:27:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_100000_create_password_resets_table',1),
	(2,'2016_11_22_155331_create_roles_table',1),
	(3,'2016_11_22_155331_create_users_table',1),
	(4,'2016_11_22_155332_create_user_actions_table',1),
	(5,'2016_11_22_160552_create_topics_table',1),
	(6,'2016_11_22_160943_create_questions_table',1),
	(7,'2016_11_22_161439_create_questions_options_table',1),
	(8,'2016_11_23_140354_create_results_table',1),
	(9,'2016_11_28_161439_create_tests_table',1),
	(10,'2016_11_28_161440_create_test_answers_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `question_text` text COLLATE utf8_unicode_ci,
  `code_snippet` text COLLATE utf8_unicode_ci,
  `answer_explanation` text COLLATE utf8_unicode_ci,
  `more_info_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_256_topic_topic_id_question` (`topic_id`),
  KEY `questions_deleted_at_index` (`deleted_at`),
  CONSTRAINT `fk_256_topic_topic_id_question` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `topic_id`, `question_text`, `code_snippet`, `answer_explanation`, `more_info_link`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,NULL,'Which state?',NULL,NULL,NULL,'2018-05-28 13:53:07','2018-05-28 08:05:08','2018-05-28 08:05:08'),
	(2,1,'Символ сложения ? ','PS','Потому что это сложение','PS link','2018-05-28 08:10:08','2018-05-28 11:12:49','2018-05-28 11:12:49'),
	(3,1,'Найдите площадь прямоугольника, если его длина равна 9,6 см, а ширина равна 3,8 см. ','','Вычислить','','2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(4,1,'Упростите выражение: (5а + b)(b – 5a) ','','Вычислить','','2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(5,1,'Упростить выражение: (1 + )2 - 2 ','','Вычислить','','2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(6,1,'Разложить на множители: 2х2 - 18 ','','Вычислить','','2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(7,1,'Периметр ромба равен 15 см. Найдите сторону ромба ','','Найти','','2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(8,1,'Решите систему уравнений: ','','Найти','','2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(9,1,'Решите систему уравнений: ','','Найти','','2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(10,1,'Катеты прямоугольного треугольника равны 12 и 16. Найдите медиану, проведенную к гипотенузе ','','Вычислить','','2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(11,1,'Радиусы оснований усеченного конуса 3 дм и 7 дм, образующая 5 дм. Найдите площадь осевого сечения','','Вычислить','','2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(12,1,'Радиус круга увеличен на 15%. На сколько процентов увеличится площадь круга? ','','Вычислить','','2018-05-28 11:11:17','2018-05-28 11:11:17',NULL);

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions_options`;

CREATE TABLE `questions_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned DEFAULT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_257_question_question_id_questions_option` (`question_id`),
  KEY `questions_options_deleted_at_index` (`deleted_at`),
  CONSTRAINT `fk_257_question_question_id_questions_option` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `questions_options` WRITE;
/*!40000 ALTER TABLE `questions_options` DISABLE KEYS */;

INSERT INTO `questions_options` (`id`, `question_id`, `option`, `correct`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'Virginia',1,'2018-05-28 13:55:15','2018-05-28 08:05:08','2018-05-28 08:05:08'),
	(2,1,'California',0,'2018-05-28 13:55:09','2018-05-28 08:05:08','2018-05-28 08:05:08'),
	(3,2,'+',1,'2018-05-28 08:10:08','2018-05-28 11:12:49','2018-05-28 11:12:49'),
	(4,2,'-',0,'2018-05-28 08:10:08','2018-05-28 11:12:49','2018-05-28 11:12:49'),
	(5,2,'=',0,'2018-05-28 08:10:08','2018-05-28 11:12:49','2018-05-28 11:12:49'),
	(6,2,'/',0,'2018-05-28 08:10:08','2018-05-28 11:12:49','2018-05-28 11:12:49'),
	(7,2,'*',0,'2018-05-28 08:10:08','2018-05-28 11:12:49','2018-05-28 11:12:49'),
	(8,3,'116,544 см2 ',0,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(9,3,'55,68 см2 ',0,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(10,3,'128,64 см2 ',0,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(11,3,'36,48 см2',1,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(12,3,'50,92 см2',0,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(13,4,'25a2 – b2 ',0,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(14,4,' a2 + b2 ',0,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(15,4,'5a2 + b2 ',0,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(16,4,'b2 – 25a2 ',1,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(17,4,'10a2 – b2',0,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(18,5,'с',0,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(19,5,' 2 - с ',0,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(20,5,' 3 + с ',0,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(21,5,'1 + с ',1,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(22,5,'1 - с',0,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(23,6,'2(х2 + 9) ',0,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(24,6,'2(х – 3)(х + 3) ',1,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(25,6,'2(х – 9)(x + 9)',0,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(26,6,'(2x – 3)(2x + 3)',0,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(27,6,'(2x – 9)(2x + 9)',0,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(28,7,'3,25 см ',1,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(29,7,'3,5 см ',0,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(30,7,' 7,5 см',0,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(31,7,' 3,75 см ',0,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(32,7,'5 см',0,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(33,8,'(2; 4); (4; 2) ',1,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(34,8,'(1; 5); (2; 4)',0,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(35,8,'(1; 5) ',0,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(36,8,'(3; 3); (1; 5) ',0,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(37,8,'(3; 3); (4; 2)',0,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(38,9,'(1; 2) ',0,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(39,9,'(3; 4) ',0,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(40,9,'(3; 2)',0,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(41,9,'(0; 1) ',0,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(42,9,'(2; 1)',1,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(43,10,'20 ',0,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(44,10,'16 ',0,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(45,10,'10',1,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(46,10,'12 ',0,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(47,10,'14',0,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(48,11,'80 дм2',0,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(49,11,'120 дм2 ',0,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(50,11,'30 дм2 ',1,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(51,11,'60 дм2 ',0,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(52,11,'100 дм2',0,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(53,12,' 45%',0,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(54,12,'15% ',0,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(55,12,'32,25%',1,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(56,12,' 30%',0,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(57,12,'21%',0,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL);

/*!40000 ALTER TABLE `questions_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `results`;

CREATE TABLE `results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `correct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `question_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_254_user_user_id_result` (`user_id`),
  KEY `fk_257_question_question_id_result` (`question_id`),
  KEY `results_deleted_at_index` (`deleted_at`),
  CONSTRAINT `fk_254_user_user_id_result` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_257_question_question_id_result` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Administrator (can create other users)',NULL,NULL,NULL),
	(2,'Simple user',NULL,NULL,NULL);

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test_answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_answers`;

CREATE TABLE `test_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `test_id` int(10) unsigned DEFAULT NULL,
  `question_id` int(10) unsigned DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `option_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_answers_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `test_answers` WRITE;
/*!40000 ALTER TABLE `test_answers` DISABLE KEYS */;

INSERT INTO `test_answers` (`id`, `user_id`, `test_id`, `question_id`, `correct`, `option_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,2,1,1,1,1,'2018-05-28 07:55:34','2018-05-28 07:55:34',NULL),
	(2,2,2,1,0,NULL,'2018-05-28 07:56:51','2018-05-28 07:56:51',NULL),
	(3,1,3,2,1,3,'2018-05-28 08:10:40','2018-05-28 08:10:40',NULL),
	(4,1,4,7,1,28,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(5,1,4,3,0,10,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(6,1,4,10,0,44,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(7,1,4,6,0,25,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(8,1,4,8,0,NULL,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(9,1,4,11,0,52,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(10,1,4,4,0,17,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(11,1,4,12,0,53,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(12,1,4,5,1,21,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(13,1,4,9,0,40,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(14,5,5,7,0,32,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(15,5,5,9,1,42,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(16,5,5,5,1,21,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(17,5,5,6,0,26,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(18,5,5,10,0,46,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(19,5,5,8,1,33,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(20,5,5,12,0,56,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(21,5,5,11,0,49,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(22,5,5,3,0,12,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL),
	(23,5,5,4,0,14,'2018-05-28 11:14:01','2018-05-28 11:14:01',NULL);

/*!40000 ALTER TABLE `test_answers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tests`;

CREATE TABLE `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;

INSERT INTO `tests` (`id`, `user_id`, `result`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,2,'1','2018-05-28 07:55:34','2018-05-28 07:55:34',NULL),
	(2,2,'0','2018-05-28 07:56:51','2018-05-28 07:56:51',NULL),
	(3,1,'1','2018-05-28 08:10:40','2018-05-28 08:10:40',NULL),
	(4,1,'2','2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(5,5,'3','2018-05-28 11:14:01','2018-05-28 11:14:01',NULL);

/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;

INSERT INTO `topics` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Математика','2018-05-28 14:08:58','2018-05-28 14:09:02',NULL);

/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_actions`;

CREATE TABLE `user_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_254_user_user_id_user_action` (`user_id`),
  KEY `user_actions_deleted_at_index` (`deleted_at`),
  CONSTRAINT `fk_254_user_user_id_user_action` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `user_actions` WRITE;
/*!40000 ALTER TABLE `user_actions` DISABLE KEYS */;

INSERT INTO `user_actions` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(9,1,'deleted','questions',1,'2018-05-28 08:05:08','2018-05-28 08:05:08',NULL),
	(10,1,'created','questions',2,'2018-05-28 08:10:08','2018-05-28 08:10:08',NULL),
	(11,1,'created','questions_options',3,'2018-05-28 08:10:08','2018-05-28 08:10:08',NULL),
	(12,1,'created','questions_options',4,'2018-05-28 08:10:08','2018-05-28 08:10:08',NULL),
	(13,1,'created','questions_options',5,'2018-05-28 08:10:08','2018-05-28 08:10:08',NULL),
	(14,1,'created','questions_options',6,'2018-05-28 08:10:08','2018-05-28 08:10:08',NULL),
	(15,1,'created','questions_options',7,'2018-05-28 08:10:08','2018-05-28 08:10:08',NULL),
	(16,1,'created','tests',3,'2018-05-28 08:10:40','2018-05-28 08:10:40',NULL),
	(17,1,'created','test_answers',3,'2018-05-28 08:10:40','2018-05-28 08:10:40',NULL),
	(18,1,'created','tests',3,'2018-05-28 08:10:40','2018-05-28 08:10:40',NULL),
	(19,1,'deleted','users',2,'2018-05-28 08:10:58','2018-05-28 08:10:58',NULL),
	(20,1,'updated','users',1,'2018-05-28 08:53:46','2018-05-28 08:53:46',NULL),
	(21,1,'updated','users',1,'2018-05-28 09:41:25','2018-05-28 09:41:25',NULL),
	(22,1,'updated','users',1,'2018-05-28 09:43:28','2018-05-28 09:43:28',NULL),
	(24,1,'created','questions',3,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(25,1,'created','questions_options',8,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(26,1,'created','questions_options',9,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(27,1,'created','questions_options',10,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(28,1,'created','questions_options',11,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(29,1,'created','questions_options',12,'2018-05-28 10:59:42','2018-05-28 10:59:42',NULL),
	(30,1,'created','questions',4,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(31,1,'created','questions_options',13,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(32,1,'created','questions_options',14,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(33,1,'created','questions_options',15,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(34,1,'created','questions_options',16,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(35,1,'created','questions_options',17,'2018-05-28 11:00:30','2018-05-28 11:00:30',NULL),
	(36,1,'created','questions',5,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(37,1,'created','questions_options',18,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(38,1,'created','questions_options',19,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(39,1,'created','questions_options',20,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(40,1,'created','questions_options',21,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(41,1,'created','questions_options',22,'2018-05-28 11:01:49','2018-05-28 11:01:49',NULL),
	(42,1,'created','questions',6,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(43,1,'created','questions_options',23,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(44,1,'created','questions_options',24,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(45,1,'created','questions_options',25,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(46,1,'created','questions_options',26,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(47,1,'created','questions_options',27,'2018-05-28 11:03:16','2018-05-28 11:03:16',NULL),
	(48,1,'created','questions',7,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(49,1,'created','questions_options',28,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(50,1,'created','questions_options',29,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(51,1,'created','questions_options',30,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(52,1,'created','questions_options',31,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(53,1,'created','questions_options',32,'2018-05-28 11:06:26','2018-05-28 11:06:26',NULL),
	(54,1,'created','questions',8,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(55,1,'created','questions_options',33,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(56,1,'created','questions_options',34,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(57,1,'created','questions_options',35,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(58,1,'created','questions_options',36,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(59,1,'created','questions_options',37,'2018-05-28 11:07:24','2018-05-28 11:07:24',NULL),
	(60,1,'created','questions',9,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(61,1,'created','questions_options',38,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(62,1,'created','questions_options',39,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(63,1,'created','questions_options',40,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(64,1,'created','questions_options',41,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(65,1,'created','questions_options',42,'2018-05-28 11:07:57','2018-05-28 11:07:57',NULL),
	(66,1,'created','questions',10,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(67,1,'created','questions_options',43,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(68,1,'created','questions_options',44,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(69,1,'created','questions_options',45,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(70,1,'created','questions_options',46,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(71,1,'created','questions_options',47,'2018-05-28 11:10:08','2018-05-28 11:10:08',NULL),
	(72,1,'created','questions',11,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(73,1,'created','questions_options',48,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(74,1,'created','questions_options',49,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(75,1,'created','questions_options',50,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(76,1,'created','questions_options',51,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(77,1,'created','questions_options',52,'2018-05-28 11:10:41','2018-05-28 11:10:41',NULL),
	(78,1,'created','questions',12,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(79,1,'created','questions_options',53,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(80,1,'created','questions_options',54,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(81,1,'created','questions_options',55,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(82,1,'created','questions_options',56,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(83,1,'created','questions_options',57,'2018-05-28 11:11:17','2018-05-28 11:11:17',NULL),
	(84,1,'deleted','questions',2,'2018-05-28 11:12:49','2018-05-28 11:12:49',NULL),
	(85,1,'created','tests',4,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(86,1,'created','test_answers',4,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(87,1,'created','test_answers',5,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(88,1,'created','test_answers',6,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(89,1,'created','test_answers',7,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(90,1,'created','test_answers',8,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(91,1,'created','test_answers',9,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(92,1,'created','test_answers',10,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(93,1,'created','test_answers',11,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(94,1,'created','test_answers',12,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(95,1,'created','test_answers',13,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(96,1,'created','tests',4,'2018-05-28 11:13:23','2018-05-28 11:13:23',NULL),
	(97,1,'updated','users',1,'2018-05-28 11:13:36','2018-05-28 11:13:36',NULL),
	(111,1,'updated','users',1,'2018-05-28 11:18:17','2018-05-28 11:18:17',NULL);

/*!40000 ALTER TABLE `user_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_253_role_role_id_user` (`role_id`),
  KEY `users_deleted_at_index` (`deleted_at`),
  CONSTRAINT `fk_253_role_role_id_user` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Admin','admin@admin.com','$2y$10$GdubO8p..1F4Ic60m0e6Nu3H.0T5k6fhRmd3ozDuqaN.dBD83J9ue',1,'iZs7sbJ0CMWXnHQJKGiZWKAshkA8c8mdzc3c7uOHRNE7z5uJVEUCPDATpCdh',NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
