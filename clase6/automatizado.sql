-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema introDB69015
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introDB69015
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introDB69015` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `introDB69015` ;

-- -----------------------------------------------------
-- Table `introDB69015`.`regiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69015`.`regiones` (
  `idRegion` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `regNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE INDEX `regNombre` (`regNombre` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69015`.`destinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69015`.`destinos` (
  `idDestino` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `destNombre` VARCHAR(100) NOT NULL,
  `idRegion` TINYINT UNSIGNED NOT NULL,
  `destPrecio` DECIMAL(10,2) UNSIGNED NOT NULL,
  `destAsientos` TINYINT UNSIGNED NOT NULL,
  `destDisponibles` TINYINT UNSIGNED NOT NULL,
  `destActivo` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idDestino`),
  UNIQUE INDEX `destNombre` (`destNombre` ASC),
  INDEX `idRegion` (`idRegion` ASC),
  CONSTRAINT `destinos_ibfk_1`
    FOREIGN KEY (`idRegion`)
    REFERENCES `introDB69015`.`regiones` (`idRegion`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69015`.`productos_apple`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69015`.`productos_apple` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` DECIMAL(10,2) UNSIGNED NOT NULL,
  `stock` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre` (`nombre` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69015`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69015`.`categorias` (
  `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) unique NOT NULL,
  PRIMARY KEY (`idCategoria`)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB69015`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69015`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) unique NOT NULL,
  PRIMARY KEY (`idMarca`)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB69015`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69015`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) unique NOT NULL,
  `prdPrecio` DECIMAL(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategoria` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idProducto`),
  INDEX `fk_productos_marcas1_idx` (`idMarca` ASC),
  INDEX `fk_productos_categorias1_idx` (`idCategoria` ASC),
  CONSTRAINT `fk_productos_marcas1`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introDB69015`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `introDB69015`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
