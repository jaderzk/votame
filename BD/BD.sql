SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tbl_TipoUsuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`tbl_TipoUsuario` (
  `TipoUsuarioID` INT NOT NULL ,
  `DescripcionTipoUsuario` VARCHAR(150) NULL ,
  `Estado` BIT NULL ,
  PRIMARY KEY (`TipoUsuarioID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`tbl_Usuario` (
  `UsuarioID` INT NULL ,
  `TipoUsuarioID` INT NOT NULL ,
  `Nombre` VARCHAR(150) NULL ,
  `Apellidos` VARCHAR(150) NULL ,
  `TipoDocumento` VARCHAR(150) NULL ,
  `Documento` INT NOT NULL ,
  `FechaNacimiento` DATE NOT NULL ,
  `Estado` BIT NULL ,
  `UserName` VARCHAR(150) NOT NULL ,
  `Password` VARCHAR(150) NOT NULL ,
  PRIMARY KEY (`UsuarioID`) ,
  INDEX `fk_tbl_usuario_tbl_tipousuario_idx` (`TipoUsuarioID` ASC) ,
  CONSTRAINT `fk_tbl_usuario_tbl_tipousuario`
    FOREIGN KEY (`TipoUsuarioID` )
    REFERENCES `mydb`.`tbl_TipoUsuario` (`TipoUsuarioID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Campana`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`tbl_Campana` (
  `CampanaID` INT NOT NULL ,
  `FechaInicio` DATE NULL ,
  `FechaFin` DATE NULL ,
  `HoraInicio` TIME NULL ,
  `HoraFin` TIME NULL ,
  `Observaciones` VARCHAR(500) NULL ,
  PRIMARY KEY (`CampanaID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Votacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`tbl_Votacion` (
  `VotacionID` INT NOT NULL ,
  `UsuarioID` INT NOT NULL ,
  `CandidatoID` INT NOT NULL ,
  `CampanaID` INT NOT NULL ,
  `HoraVoto` TIME NOT NULL ,
  `Estado` BIT NOT NULL ,
  PRIMARY KEY (`VotacionID`) ,
  INDEX `fk_tbl_votacion_tbl_usuario_idx` (`UsuarioID` ASC) ,
  INDEX `fk_tbl_votacion_tbl__idx` (`UsuarioID` ASC) ,
  INDEX `fk_tbl_votacion_tbl_campana_idx` (`CandidatoID` ASC) ,
  CONSTRAINT `fk_tbl_votacion_tbl_usuario`
    FOREIGN KEY (`UsuarioID` )
    REFERENCES `mydb`.`tbl_Usuario` (`UsuarioID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_votacion_tbl_candidato`
    FOREIGN KEY (`UsuarioID` )
    REFERENCES `mydb`.`tbl_Usuario` (`UsuarioID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_votacion_tbl_campana`
    FOREIGN KEY (`CandidatoID` )
    REFERENCES `mydb`.`tbl_Campana` (`CampanaID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
