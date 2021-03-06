-- MySQL Script generated by MySQL Workbench
-- Wed Nov 10 11:51:35 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`productos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`productos` (
  `PK_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `url_img` VARCHAR(500) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `cant_inventario` INT NULL,
  PRIMARY KEY (`PK_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`categorias` ;

CREATE TABLE IF NOT EXISTS `mydb`.`categorias` (
  `productos_PK_id` INT NOT NULL,
  `PK_id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`PK_id`),
  CONSTRAINT `fk_categorias_productos`
    FOREIGN KEY (`productos_PK_id`)
    REFERENCES `mydb`.`productos` (`PK_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
