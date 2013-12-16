# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: schema.sql
# Generation Time: 2013-12-16 21:34:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `choice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table choices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `choices`;

CREATE TABLE `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `correct` tinyint(1) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;

INSERT INTO `choices` (`id`, `content`, `correct`, `question_id`)
VALUES
	(1,'Not at all',0,1),
	(2,'A little',0,1),
	(3,'A lot',0,1),
	(4,'An incredible amount',1,1),
	(5,'Not at all',1,2),
	(6,'A little',0,2),
	(7,'A lot',0,2),
	(8,'An incredible amount',1,2),
	(9,'A month',0,3),
	(10,'A year',1,3),
	(11,'A decade',0,3),
	(12,'A century',0,3),
	(13,'24',0,4),
	(14,'26',1,4),
	(15,'28',0,4),
	(16,'30',0,4),
	(17,'1',0,5),
	(18,'2',0,5),
	(19,'3',1,5),
	(20,'4',0,5),
	(21,'1',0,6),
	(22,'2',0,6),
	(23,'3',1,6),
	(24,'4',0,6),
	(25,'Oink',0,7),
	(26,'Naaay',0,7),
	(27,'Moo',1,7),
	(28,'cock-a-doodle-do',0,7),
	(29,'Oink',0,8),
	(30,'Naaay',0,8),
	(31,'Moo',0,8),
	(32,'Too much',1,8),
	(33,'Juice',0,9),
	(34,'Soda',0,9),
	(35,'Water',0,9),
	(36,'Bleach',1,9),
	(37,'Stop tormenting me with riddles',1,10),
	(38,'Nothing',0,10),
	(39,'All the wood',0,10),
	(40,'One piece',0,10);

/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `quiz_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `content`, `quiz_id`)
VALUES
	(1,'How much do I love apples?',1),
	(2,'How much do I love blueberries?',1),
	(3,'How old is the class pet?',1),
	(4,'How many letters are in the alphabet?',1),
	(5,'How many primary colors are there?',1),
	(6,'How many parts do bananas naturally split into?',2),
	(7,'What do cows say?',2),
	(8,'What does the fox say?',2),
	(9,'What liquid is most hazardous to your health?',2),
	(10,'How much wood would a woodchuck chuck if a woodchuck could chuck wood?',2);

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quizzes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quizzes`;

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`)
VALUES
	(1,'Katie'),
	(2,'Sara'),
	(3,'Jon');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
