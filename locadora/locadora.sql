-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema locadora
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema locadora
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `locadora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `locadora` ;

-- -----------------------------------------------------
-- Table `locadora`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora`.`categorias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NULL DEFAULT NULL,
  `preco` DOUBLE(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `locadora`.`carros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora`.`carros` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NULL DEFAULT NULL,
  `placa` VARCHAR(200) NULL DEFAULT NULL,
  `categoria_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `categoria_id` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `carros_ibfk_1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `locadora`.`categorias` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `locadora`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora`.`clientes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NULL DEFAULT NULL,
  `documento` VARCHAR(200) NULL DEFAULT NULL,
  `cnh` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `locadora`.`reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora`.`reservas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` INT(11) NULL DEFAULT NULL,
  `cliente_id` INT(11) NULL DEFAULT NULL,
  `dt_retidada` DATETIME NULL DEFAULT NULL,
  `dt_devolucao` DATETIME NULL DEFAULT NULL,
  `preco` DOUBLE(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `categoria_id` (`categoria_id` ASC) VISIBLE,
  INDEX `cliente_id` (`cliente_id` ASC) VISIBLE,
  CONSTRAINT `reservas_ibfk_1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `locadora`.`categorias` (`id`),
  CONSTRAINT `reservas_ibfk_2`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `locadora`.`clientes` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `locadora`.`contratos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locadora`.`contratos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `reserva_id` INT(11) NULL DEFAULT NULL,
  `carro_id` INT(11) NULL DEFAULT NULL,
  `cliente_id` INT(11) NULL DEFAULT NULL,
  `preco` DOUBLE(10,2) NULL DEFAULT NULL,
  `forma_pgto` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `reserva_id` (`reserva_id` ASC) VISIBLE,
  INDEX `carro_id` (`carro_id` ASC) VISIBLE,
  INDEX `cliente_id` (`cliente_id` ASC) VISIBLE,
  CONSTRAINT `contratos_ibfk_1`
    FOREIGN KEY (`reserva_id`)
    REFERENCES `locadora`.`reservas` (`id`),
  CONSTRAINT `contratos_ibfk_2`
    FOREIGN KEY (`carro_id`)
    REFERENCES `locadora`.`carros` (`id`),
  CONSTRAINT `contratos_ibfk_3`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `locadora`.`clientes` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
