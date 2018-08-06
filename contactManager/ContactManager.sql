/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 10.1.34-MariaDB : Database - laravel_contact_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel_contact_manager` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `laravel_contact_manager`;

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contacts` */

insert  into `contacts`(`id`,`group_id`,`name`,`company`,`email`,`phone`,`address`,`created_at`,`updated_at`,`user_id`) values 
(1,'2','Carli DuBuque','Oberbrunner-Walsh','ellis01@gmail.com','451.599.4219 x66982','Corrine Motorway Jaidenchester','2018-07-30 19:33:12','2018-07-30 19:33:12',2),
(2,'2','Dr. Johnpaul Littel','Hamill, Rosenbaum and Fay','tamara.yundt@schamberger.org','1-867-545-3031 x2310','Kathlyn Alley Lake Fleta','2018-07-30 19:33:12','2018-07-30 19:33:12',2),
(3,'1','Prof. Alivia Torp','Oberbrunner Group','dicki.jamison@yahoo.com','382-860-4628','Madisen Passage South Libbietown','2018-07-30 19:33:12','2018-07-30 19:33:12',0),
(4,'1','Mckayla Jacobson','Gusikowski and Sons','delfina.murazik@satterfield.org','(342) 501-8913 x84805','Willms Pike New Gerhard','2018-07-30 19:33:12','2018-07-30 19:33:12',0),
(5,'2','Miss Marquise Collins III','Spencer, Wunsch and Borer','germaine48@sawayn.com','(202) 539-8339 x63683','Sigrid Knolls Creminhaven','2018-07-30 19:33:12','2018-07-30 19:33:12',0),
(6,'2','Jonas Bode V','Reichert, Schuster and Goodwin','vivienne.corkery@pfannerstill.com','719-414-6991 x09465','Lueilwitz Crest Kochville','2018-07-30 19:33:12','2018-07-30 19:33:12',0),
(7,'2','Prof. Adah Greenholt','Ward Ltd','csmitham@runolfsdottir.com','302.260.8931','Hope Mountain East Mitchellberg','2018-07-30 19:33:12','2018-07-30 19:33:12',0),
(9,'3','Fred Kirlin','Stehr Ltd','elva80@dibbert.com','1-324-905-2275','Beatrice Shore Jamarcustown','2018-07-30 19:33:12','2018-07-30 19:33:12',0),
(10,'3','Myah Lynch sonam','Greenholt and Sons','toni71@von.biz','307-885-7976 x60100','Moen Common Vandervortville','2018-07-30 19:33:12','2018-08-04 19:53:44',0),
(11,'1','Sonam Tiwari','Testing','sonamtripathi567@gmail.com','999393939','Vasai Road','2018-08-04 11:12:03','2018-08-04 13:53:41',0),
(12,'2','Rahul Tiwari','VArtak College','rahulkrla123@gmail.com','999393939','Nallasopara\r\nVasai','2018-08-04 11:22:04','2018-08-04 13:33:27',0),
(15,'1','Sonam Tripathi','airtel','sonamtripathi567@gmail.com','9730742380','D/104, Sai Sadan Bldg No.2, Tulinj Road,\r\nNallasopara (EAST)','2018-08-04 21:44:26','2018-08-04 21:45:15',1),
(16,'3','Sonam Tiwari','JIO','sonamtripathi567@gmail.com','9730742380','Evershine, Vasai Road(East)','2018-08-05 07:57:05','2018-08-05 07:57:05',1),
(17,'2','testonly','Test ABC','abc@gmail.com','987654321','No address','2018-08-05 15:25:23','2018-08-05 15:25:23',1),
(18,'1','Rahul Tiwari','Vartak Colleg','rahul@gmail.com','987654321','Andheri(East)\r\nBorivali','2018-08-05 17:54:55','2018-08-05 17:55:43',1);

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Family','2018-07-30 19:33:11',NULL),
(2,'Friends','2018-07-30 19:33:11',NULL),
(3,'Office','2018-07-30 19:33:11',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2018_07_30_181317_create_groups_and_contacts_table',1),
(4,'2018_08_04_210309_add_user_to_contacts_tbale',2),
(5,'2016_06_01_000001_create_oauth_auth_codes_table',3),
(6,'2016_06_01_000002_create_oauth_access_tokens_table',3),
(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',3),
(8,'2016_06_01_000004_create_oauth_clients_table',3),
(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',3);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('02bfaf866dfc1c6607b00df40c0e3ddd6c051b337791bc270d4345052d0416c918d86b01634e219f',1,1,'MyApp','[]',0,'2018-08-05 12:13:21','2018-08-05 12:13:21','2019-08-05 12:13:21'),
('a0fbb72077a897e0ca64d753d8807ff557a66d35c3c5b45b232a5b246573cf3bafcd438253b12c35',12,1,'MyApp','[]',0,'2018-08-05 12:10:25','2018-08-05 12:10:25','2019-08-05 12:10:25');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','ITleIbL1YraradtJfCtypbk4voOxovda1lFsOhCB','http://localhost',1,0,0,'2018-08-05 08:27:03','2018-08-05 08:27:03'),
(2,NULL,'Laravel Password Grant Client','FSZiTyQOQc6pNEF0gypdpW0FJxPj78KBhdEz36bJ','http://localhost',0,1,0,'2018-08-05 08:27:03','2018-08-05 08:27:03');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2018-08-05 08:27:03','2018-08-05 08:27:03');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Sonam Tripathi','sonamtripathi567@gmail.com','$2y$10$H/RBTzJyyyYSyEmjBTeCn.asS71rldyg/0gVMEQRvE9QzNFjyb6Fm','9u6Mut8x4Jl6YmZA6e69dJSl0pTojNMzfLCCqp34FYGBxzPzV30tQe1hqPQQ','2018-08-04 18:01:06','2018-08-04 18:01:06'),
(2,'Sonam Tripathi','sonamtripathi57@gmail.com','$2y$10$AUgIzHNf3qusBae4Qe/CgOLPajIBskS1MTnBSHciCwMxdiowF7gQK','LESebFpUXC6EosRXc1989VroDy2R7ZxJyj0RXfmY0EfC1tzVyZHT7vNzMfUq','2018-08-04 20:50:21','2018-08-04 20:50:21'),
(12,'Meenu Tiwari','sonua@gmail.com','$2y$10$vjLHEBuLsSEaJMcZ74s3o.6mkDTGHmNc160KvIbppue45ypqtcVTm',NULL,'2018-08-05 12:10:22','2018-08-05 12:10:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
