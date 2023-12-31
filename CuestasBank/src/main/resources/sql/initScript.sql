create database cuestas_bank;

use cuestas_bank;

#Tables for JdbcUserDetailManager (Spring)
CREATE TABLE `users` (
                         `id` INT NOT NULL AUTO_INCREMENT,
                         `username` VARCHAR(45) NOT NULL,
                         `password` VARCHAR(45) NOT NULL,
                         `enabled` INT NOT NULL,
                         PRIMARY KEY (`id`));

CREATE TABLE `authorities` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `username` varchar(45) NOT NULL,
                               `authority` varchar(45) NOT NULL,
                               PRIMARY KEY (`id`));

INSERT IGNORE INTO `users` VALUES (NULL, 'Pablo', '12345', '1');
INSERT IGNORE INTO `authorities` VALUES (NULL, 'Pablo', 'write');

#Custom table for UserDetailManager
CREATE TABLE `customer` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `email` varchar(45) NOT NULL,
                            `pwd` varchar(200) NOT NULL,
                            `role` varchar(45) NOT NULL,
                            PRIMARY KEY (`id`)
);

INSERT INTO `customer` (`email`, `pwd`, `role`)
VALUES ('admin@example.com', '12345', 'admin');