CREATE DATABASE `company`;

USE `company`;

CREATE TABLE IF NOT EXISTS `employees` (
  `id` INT unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20),
  `city` VARCHAR(20) DEFAULT "fredericton",
  `dept` VARCHAR(20) DEFAULT "onboarding",
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4;


INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("joe", "fredericton", "sales");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("jill", "boston", "development");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("alex", "toronto", "development");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("anna", "new york", "development");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("ben", "houston", "sales");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("eve", "tampa", "operations");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("elliot", "vancouver", "operations");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("grace", "london", "sales");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("simon", "bangalore", "development");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("tara", "dublin", "sales");
INSERT INTO `company`.`employees` (`name`, `city`, `dept`) VALUES ("tim", "new york", "development");

SELECT * FROM `employees`;