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

INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`,
                                    `transaction_summary`, `transaction_type`, `transaction_amt`,
                                    `closing_balance`, `create_dt`)
VALUES (UUID(), 1865764534, 1, DATE_SUB(CURDATE(), INTERVAL 7 DAY), 'Coffee Shop', 'Withdrawal', 30, 34500,
        DATE_SUB(CURDATE(), INTERVAL 7 DAY));

INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`,
                                    `transaction_summary`, `transaction_type`, `transaction_amt`,
                                    `closing_balance`, `create_dt`)
VALUES (UUID(), 1865764534, 1, DATE_SUB(CURDATE(), INTERVAL 6 DAY), 'Uber', 'Withdrawal', 100, 34400,
        DATE_SUB(CURDATE(), INTERVAL 6 DAY));

INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`,
                                    `transaction_summary`, `transaction_type`, `transaction_amt`,
                                    `closing_balance`, `create_dt`)
VALUES (UUID(), 1865764534, 1, DATE_SUB(CURDATE(), INTERVAL 5 DAY), 'Self Deposit', 'Deposit', 500, 34900,
        DATE_SUB(CURDATE(), INTERVAL 5 DAY));

INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`,
                                    `transaction_summary`, `transaction_type`, `transaction_amt`,
                                    `closing_balance`, `create_dt`)
VALUES (UUID(), 1865764534, 1, DATE_SUB(CURDATE(), INTERVAL 4 DAY), 'Ebay', 'Withdrawal', 600, 34300,
        DATE_SUB(CURDATE(), INTERVAL 4 DAY));

INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`,
                                    `transaction_summary`, `transaction_type`, `transaction_amt`,
                                    `closing_balance`, `create_dt`)
VALUES (UUID(), 1865764534, 1, DATE_SUB(CURDATE(), INTERVAL 2 DAY), 'OnlineTransfer', 'Deposit', 700, 35000,
        DATE_SUB(CURDATE(), INTERVAL 2 DAY));

INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`,
                                    `transaction_summary`, `transaction_type`, `transaction_amt`,
                                    `closing_balance`, `create_dt`)
VALUES (UUID(), 1865764534, 1, DATE_SUB(CURDATE(), INTERVAL 1 DAY), 'Amazon.com', 'Withdrawal', 100, 34900,
        DATE_SUB(CURDATE(), INTERVAL 1 DAY));

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
INSERT INTO `accounts` (`customer_id`, `account_number`, `account_type`, `branch_address`, `create_dt`)
VALUES (1, 1865764534, 'Savings', '123 Main Street, New York', CURDATE());


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

INSERT INTO `cards` (`card_number`, `customer_id`, `card_type`, `total_limit`, `amount_used`, `available_amount`,
                     `create_dt`)
VALUES ('4565XXXX4656', 1, 'Credit', 10000, 500, 9500, CURDATE());

INSERT INTO `cards` (`card_number`, `customer_id`, `card_type`, `total_limit`, `amount_used`, `available_amount`,
                     `create_dt`)
VALUES ('3455XXXX8673', 1, 'Credit', 7500, 600, 6900, CURDATE());

INSERT INTO `cards` (`card_number`, `customer_id`, `card_type`, `total_limit`, `amount_used`, `available_amount`,
                     `create_dt`)
VALUES ('2359XXXX9346', 1, 'Credit', 20000, 4000, 16000, CURDATE());

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

INSERT INTO `customer` (`name`, `email`, `mobile_number`, `pwd`, `role`, `create_dt`)
VALUES ('Happy', 'happy@example.com', '9876548337', '$2y$12$oRRbkNfwuR8ug4MlzH5FOeui.//1mkd.RsOAJMbykTSupVy.x/vb2',
        'ADMIN', CURDATE());


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

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`,
                     `create_dt`)
VALUES (1, '2020-10-13', 'Home', 200000, 50000, 150000, '2020-10-13');

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`,
                     `create_dt`)
VALUES (1, '2020-06-06', 'Vehicle', 40000, 10000, 30000, '2020-06-06');

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`,
                     `create_dt`)
VALUES (1, '2018-02-14', 'Home', 50000, 10000, 40000, '2018-02-14');

INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`,
                     `create_dt`)
VALUES (1, '2018-02-14', 'Personal', 10000, 3500, 6500, '2018-02-14');

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

INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notic_beg_dt`, `notic_end_dt`, `create_dt`,
                              `update_dt`)
VALUES ('Home Loan Interest rates reduced',
        'Home loan interest rates are reduced as per the goverment guidelines. The updated rates will be effective immediately',
        CURDATE() - INTERVAL 30 DAY, CURDATE() + INTERVAL 30 DAY, CURDATE(), null);

INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notic_beg_dt`, `notic_end_dt`, `create_dt`,
                              `update_dt`)
VALUES ('Net Banking Offers',
        'Customers who will opt for Internet banking while opening a saving account will get a $50 amazon voucher',
        CURDATE() - INTERVAL 30 DAY, CURDATE() + INTERVAL 30 DAY, CURDATE(), null);

INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notic_beg_dt`, `notic_end_dt`, `create_dt`,
                              `update_dt`)
VALUES ('Mobile App Downtime',
        'The mobile application of the EazyBank will be down from 2AM-5AM on 12/05/2020 due to maintenance activities',
        CURDATE() - INTERVAL 30 DAY, CURDATE() + INTERVAL 30 DAY, CURDATE(), null);

INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notic_beg_dt`, `notic_end_dt`, `create_dt`,
                              `update_dt`)
VALUES ('E Auction notice',
        'There will be a e-auction on 12/08/2020 on the Bank website for all the stubborn arrears.Interested parties can participate in the e-auction',
        CURDATE() - INTERVAL 30 DAY, CURDATE() + INTERVAL 30 DAY, CURDATE(), null);

INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notic_beg_dt`, `notic_end_dt`, `create_dt`,
                              `update_dt`)
VALUES ('Launch of Millennia Cards',
        'Millennia Credit Cards are launched for the premium customers of EazyBank. With these cards, you will get 5% cashback for each purchase',
        CURDATE() - INTERVAL 30 DAY, CURDATE() + INTERVAL 30 DAY, CURDATE(), null);

INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notic_beg_dt`, `notic_end_dt`, `create_dt`,
                              `update_dt`)
VALUES ('COVID-19 Insurance',
        'EazyBank launched an insurance policy which will cover COVID-19 expenses. Please reach out to the branch for more details',
        CURDATE() - INTERVAL 30 DAY, CURDATE() + INTERVAL 30 DAY, CURDATE(), null);

-- Dump completed on 2024-01-06 18:29:29

CREATE TABLE `authorities` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `customer_id` int NOT NULL,
                               `name` varchar(50) NOT NULL,
                               PRIMARY KEY (`id`),
                               KEY `customer_id` (`customer_id`),
                               CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
);

INSERT INTO `authorities` (`customer_id`, `name`)
VALUES (1, 'ROLE_USER');

INSERT INTO `authorities` (`customer_id`, `name`)
VALUES (1, 'ROLE_ADMIN');