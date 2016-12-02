-- how to run this file
-- use the following command with your computer's absolute path (my filename was db.sql)
-- mysql -u root -p < C:\Users\Khoa\Documents\HRLA11\Projects\Practice\sean_pract\server\db\db.sql

DROP DATABASE IF EXISTS teachMe;
CREATE DATABASE IF NOT EXISTS teachMe;

USE teachMe;
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Requests'
-- 
-- ---

DROP TABLE IF EXISTS `Requests`;
		
CREATE TABLE `Requests` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'NULL',
  `id_Category` INTEGER NULL DEFAULT NULL,
  `id_Student` INTEGER NULL DEFAULT NULL,
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Category'
-- 
-- ---

DROP TABLE IF EXISTS `Category`;
		
CREATE TABLE `Category` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'NULL',
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Lesson'
-- 
-- ---

DROP TABLE IF EXISTS `Lesson`;
		
CREATE TABLE `Lesson` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'NULL',
  `details` MEDIUMTEXT NULL DEFAULT NULL,
  `id_Category` INTEGER NULL DEFAULT NULL,
  `id_Teachers` INTEGER NULL DEFAULT NULL,
  `rating` INTEGER NULL DEFAULT NULL,
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Teachers'
-- 
-- ---

DROP TABLE IF EXISTS `Teachers`;
		
CREATE TABLE `Teachers` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'NULL',
  `rating` DECIMAL NULL DEFAULT NULL,
  `bio` MEDIUMTEXT NULL DEFAULT NULL,
  `available` MEDIUMTEXT NULL DEFAULT NULL,
  `id_Category` INTEGER NULL DEFAULT NULL,
  `Auth` MEDIUMTEXT NULL DEFAULT NULL,
  `Picture` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Rating'
-- 
-- ---

DROP TABLE IF EXISTS `Rating`;
		
CREATE TABLE `Rating` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `id_Lesson` INTEGER NOT NULL,
  `id_Student` INTEGER NOT NULL,
  `rating` DECIMAL NULL DEFAULT NULL,
  `review` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Booking'
-- 
-- ---

DROP TABLE IF EXISTS `Booking`;
		
CREATE TABLE `Booking` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `id_Lesson` INTEGER NULL DEFAULT NULL,
  `id_Student` INTEGER NULL DEFAULT NULL,
  `accept` bit NULL DEFAULT NULL,
  `details` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Student'
-- 
-- ---

DROP TABLE IF EXISTS `Student`;
		
CREATE TABLE `Student` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'NULL',
  `rating` DECIMAL NULL DEFAULT NULL,
  `bio` MEDIUMTEXT NULL DEFAULT NULL,
  `Picture` MEDIUMTEXT NULL DEFAULT NULL,
  `Auth` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare1` MEDIUMTEXT NULL DEFAULT NULL,
  `Spare2` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Requests` ADD FOREIGN KEY (id_Category) REFERENCES `Category` (`id`);
ALTER TABLE `Requests` ADD FOREIGN KEY (id_Student) REFERENCES `Student` (`id`);
ALTER TABLE `Lesson` ADD FOREIGN KEY (id_Category) REFERENCES `Category` (`id`);
ALTER TABLE `Lesson` ADD FOREIGN KEY (id_Teachers) REFERENCES `Teachers` (`id`);
ALTER TABLE `Teachers` ADD FOREIGN KEY (id_Category) REFERENCES `Category` (`id`);
ALTER TABLE `Rating` ADD FOREIGN KEY (id_Lesson) REFERENCES `Lesson` (`id`);
ALTER TABLE `Rating` ADD FOREIGN KEY (id_Student) REFERENCES `Student` (`id`);
ALTER TABLE `Booking` ADD FOREIGN KEY (id_Lesson) REFERENCES `Lesson` (`id`);
ALTER TABLE `Booking` ADD FOREIGN KEY (id_Student) REFERENCES `Student` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Requests` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Lesson` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Teachers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rating` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Booking` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Student` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Requests` (`id`,`name`,`id_Category`,`id_Student`,`Spare1`,`Spare2`) VALUES
-- ('','','','','','');
-- INSERT INTO `Category` (`id`,`name`,`Spare1`,`Spare2`) VALUES
-- ('','','','');
-- INSERT INTO `Lesson` (`id`,`name`,`details`,`id_Category`,`id_Teachers`,`rating`,`Spare1`,`Spare2`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `Teachers` (`id`,`name`,`rating`,`bio`,`available`,`id_Category`,`Auth`,`Picture`,`Spare1`,`Spare2`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `Rating` (`id`,`id_Lesson`,`id_Student`,`rating`,`review`,`Spare1`,`Spare2`) VALUES
-- ('','','','','','','');
-- INSERT INTO `Booking` (`id`,`id_Lesson`,`id_Student`,`accept`,`details`,`Spare1`,`Spare2`) VALUES
-- ('','','','','','','');
-- INSERT INTO `Student` (`id`,`name`,`rating`,`bio`,`Picture`,`Auth`,`Spare1`,`Spare2`) VALUES
-- ('','','','','','','','');