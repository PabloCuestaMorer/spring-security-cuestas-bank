CREATE DATABASE IF NOT EXISTS `cuestas_bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION = 'N' */;
USE `cuestas_bank`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cuestas_bank
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `account_transactions`
--

DROP TABLE IF EXISTS `account_transactions`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_transactions`
(
    `closing_balance`     int          DEFAULT NULL,
    `customer_id`         int          DEFAULT NULL,
    `transaction_amt`     int          DEFAULT NULL,
    `transaction_dt`      date         DEFAULT NULL,
    `account_number`      bigint       DEFAULT NULL,
    `create_dt`           varchar(255) DEFAULT NULL,
    `transaction_id`      varchar(255) NOT NULL,
    `transaction_summary` varchar(255) DEFAULT NULL,
    `transaction_type`    varchar(255) DEFAULT NULL,
    PRIMARY KEY (`transaction_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transactions`
--

LOCK TABLES `account_transactions` WRITE;
/*!40000 ALTER TABLE `account_transactions`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transactions`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts`
(
    `customer_id`    int          DEFAULT NULL,
    `account_number` bigint NOT NULL,
    `account_type`   varchar(255) DEFAULT NULL,
    `branch_address` varchar(255) DEFAULT NULL,
    `create_dt`      varchar(255) DEFAULT NULL,
    PRIMARY KEY (`account_number`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards`
(
    `amount_used`      int          DEFAULT NULL,
    `available_amount` int          DEFAULT NULL,
    `card_id`          int NOT NULL AUTO_INCREMENT,
    `create_dt`        date         DEFAULT NULL,
    `customer_id`      int          DEFAULT NULL,
    `total_limit`      int          DEFAULT NULL,
    `card_number`      varchar(255) DEFAULT NULL,
    `card_type`        varchar(255) DEFAULT NULL,
    PRIMARY KEY (`card_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `cards`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages`
(
    `create_dt`     date         DEFAULT NULL,
    `contact_email` varchar(255) DEFAULT NULL,
    `contact_id`    varchar(255) NOT NULL,
    `contact_name`  varchar(255) DEFAULT NULL,
    `message`       varchar(255) DEFAULT NULL,
    `subject`       varchar(255) DEFAULT NULL,
    PRIMARY KEY (`contact_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_messages`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer`
(
    `customer_id`   int          NOT NULL AUTO_INCREMENT,
    `name`          varchar(100) NOT NULL,
    `email`         varchar(100) NOT NULL,
    `mobile_number` varchar(20)  NOT NULL,
    `pwd`           varchar(500) NOT NULL,
    `role`          varchar(100) NOT NULL,
    `create_dt`     varchar(255) DEFAULT NULL,
    PRIMARY KEY (`customer_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer`
    DISABLE KEYS */;
INSERT INTO `customer`
VALUES (1, 'Happy', 'happy@example.com', '9876548337', '$2y$12$oRRbkNfwuR8ug4MlzH5FOeui.//1mkd.RsOAJMbykTSupVy.x/vb2',
        'admin', '2024-01-06'),
       (2, 'Pablo', 'pablo@gmail.com', '666666666', '$2a$10$ICcBx7SN6d3N1NnbFWQlju/N5kQ3ZEkRe.SuiiVQh97b3BtSxxqC.',
        'user', '2024-01-06');
/*!40000 ALTER TABLE `customer`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans`
(
    `amount_paid`        int          DEFAULT NULL,
    `customer_id`        int          DEFAULT NULL,
    `loan_number`        int NOT NULL AUTO_INCREMENT,
    `outstanding_amount` int          DEFAULT NULL,
    `start_dt`           date         DEFAULT NULL,
    `total_loan`         int          DEFAULT NULL,
    `create_dt`          varchar(255) DEFAULT NULL,
    `loan_type`          varchar(255) DEFAULT NULL,
    PRIMARY KEY (`loan_number`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `loans`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_details`
--

DROP TABLE IF EXISTS `notice_details`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_details`
(
    `create_dt`      date         DEFAULT NULL,
    `notic_beg_dt`   date         DEFAULT NULL,
    `notic_end_dt`   date         DEFAULT NULL,
    `notice_id`      int NOT NULL AUTO_INCREMENT,
    `update_dt`      date         DEFAULT NULL,
    `notice_details` varchar(255) DEFAULT NULL,
    `notice_summary` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`notice_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_details`
--

LOCK TABLES `notice_details` WRITE;
/*!40000 ALTER TABLE `notice_details`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_details`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2024-01-06 18:29:29
