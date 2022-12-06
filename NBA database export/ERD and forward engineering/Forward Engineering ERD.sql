-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema nba
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nba
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nba` DEFAULT CHARACTER SET utf8 ;
USE `nba` ;

-- -----------------------------------------------------
-- Table `nba`.`teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`teams` (
  `Teams_id` INT NOT NULL,
  `TeamName` VARCHAR(200) NULL DEFAULT NULL,
  `TeamABBR` VARCHAR(60) NULL DEFAULT NULL,
  `Location` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`Teams_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`coaches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`coaches` (
  `Coaches_id` INT NOT NULL,
  `Teams_id` INT NOT NULL,
  `Name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Coaches_id`),
  INDEX `fk_Coaches_Teams_idx` (`Teams_id` ASC) VISIBLE,
  CONSTRAINT `fk_Coaches_Teams`
    FOREIGN KEY (`Teams_id`)
    REFERENCES `nba`.`teams` (`Teams_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`coach_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`coach_stats` (
  `Coach_stat_id` INT NOT NULL,
  `Coaches_id` INT NOT NULL,
  `Name` VARCHAR(200) NULL DEFAULT NULL,
  `Team` VARCHAR(100) NULL DEFAULT NULL,
  `SeasG` INT NULL DEFAULT NULL,
  `SeasW` INT NULL DEFAULT NULL,
  `SeasL` INT NULL DEFAULT NULL,
  `FranG` INT NULL DEFAULT NULL,
  `FranW` INT NULL DEFAULT NULL,
  `FranL` INT NULL DEFAULT NULL,
  `CareW` INT NULL DEFAULT NULL,
  `CareL` INT NULL DEFAULT NULL,
  `CareWP` FLOAT NULL DEFAULT NULL,
  `POSeasG` INT NULL DEFAULT NULL,
  `POSeasW` INT NULL DEFAULT NULL,
  `POSeasL` INT NULL DEFAULT NULL,
  `POFranG` INT NULL DEFAULT NULL,
  `POFranW` INT NULL DEFAULT NULL,
  `POFranL` INT NULL DEFAULT NULL,
  `POCareG` INT NULL DEFAULT NULL,
  `POCareW` INT NULL DEFAULT NULL,
  `POCareL` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Coach_stat_id`),
  INDEX `fk_Coach_stats_Coaches1_idx` (`Coaches_id` ASC) VISIBLE,
  CONSTRAINT `fk_Coach_stats_Coaches1`
    FOREIGN KEY (`Coaches_id`)
    REFERENCES `nba`.`coaches` (`Coaches_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`players` (
  `Players_id` INT NOT NULL,
  `Name` VARCHAR(150) NOT NULL,
  `Pos` VARCHAR(45) NOT NULL,
  `Age` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Players_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`player_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`player_stats` (
  `Player_stats_id` INT NOT NULL,
  `Players_id` INT NOT NULL,
  `Tm` VARCHAR(45) NULL DEFAULT NULL,
  `Gms` INT NULL DEFAULT NULL,
  `Gstart` INT NULL DEFAULT NULL,
  `MP` INT NULL DEFAULT NULL,
  `FG` INT NULL DEFAULT NULL,
  `FGA` INT NULL DEFAULT NULL,
  `FGP` FLOAT NULL DEFAULT NULL,
  `ThreeP` INT NULL DEFAULT NULL,
  `ThreePA` INT NULL DEFAULT NULL,
  `ThreePP` FLOAT NULL DEFAULT NULL,
  `TwoP` INT NULL DEFAULT NULL,
  `TwoPA` INT NULL DEFAULT NULL,
  `TwoPP` FLOAT NULL DEFAULT NULL,
  `eFGP` FLOAT NULL DEFAULT NULL,
  `FT` INT NULL DEFAULT NULL,
  `FTA` FLOAT NULL DEFAULT NULL,
  `FTP` FLOAT NULL DEFAULT NULL,
  `ORB` INT NULL DEFAULT NULL,
  `DRB` INT NULL DEFAULT NULL,
  `TRB` INT NULL DEFAULT NULL,
  `AST` INT NULL DEFAULT NULL,
  `STL` INT NULL DEFAULT NULL,
  `BLK` INT NULL DEFAULT NULL,
  `TOV` INT NULL DEFAULT NULL,
  `PF` INT NULL DEFAULT NULL,
  `PTS` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Player_stats_id`),
  INDEX `fk_Player_stats_Players1_idx` (`Players_id` ASC) VISIBLE,
  CONSTRAINT `fk_Player_stats_Players1`
    FOREIGN KEY (`Players_id`)
    REFERENCES `nba`.`players` (`Players_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`top_scorers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`top_scorers` (
  `Top_scorer_id` INT NOT NULL,
  `Points` INT NULL DEFAULT NULL,
  `Name` VARCHAR(150) NULL DEFAULT NULL,
  `Year` INT NULL DEFAULT NULL,
  `TeamName` VARCHAR(200) NULL DEFAULT NULL,
  `OppTeamName` VARCHAR(200) NULL DEFAULT NULL,
  `TeamScore` INT NULL DEFAULT NULL,
  `OppTeamScore` INT NULL DEFAULT NULL,
  `MinsPlayed` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Top_scorer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`players_has_top_scorers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`players_has_top_scorers` (
  `Players_id` INT NOT NULL,
  `Top_scorer_id` INT NOT NULL,
  PRIMARY KEY (`Players_id`, `Top_scorer_id`),
  INDEX `fk_Players_has_Top_scorers_Top_scorers1_idx` (`Top_scorer_id` ASC) VISIBLE,
  INDEX `fk_Players_has_Top_scorers_Players1_idx` (`Players_id` ASC) VISIBLE,
  CONSTRAINT `fk_Players_has_Top_scorers_Players1`
    FOREIGN KEY (`Players_id`)
    REFERENCES `nba`.`players` (`Players_id`),
  CONSTRAINT `fk_Players_has_Top_scorers_Top_scorers1`
    FOREIGN KEY (`Top_scorer_id`)
    REFERENCES `nba`.`top_scorers` (`Top_scorer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`team_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`team_stats` (
  `Team_stats_id` INT NOT NULL,
  `Teams_id` INT NOT NULL,
  `Gms` INT NULL DEFAULT NULL,
  `MP` INT NULL DEFAULT NULL,
  `FG` INT NULL DEFAULT NULL,
  `FGA` INT NULL DEFAULT NULL,
  `FGP` FLOAT NULL DEFAULT NULL,
  `ThreeP` INT NULL DEFAULT NULL,
  `ThreePA` INT NULL DEFAULT NULL,
  `ThreePP` FLOAT NULL DEFAULT NULL,
  `TwoP` INT NULL DEFAULT NULL,
  `TwoPA` INT NULL DEFAULT NULL,
  `TwoPP` FLOAT NULL DEFAULT NULL,
  `FT` INT NULL DEFAULT NULL,
  `FTA` INT NULL DEFAULT NULL,
  `FTP` FLOAT NULL DEFAULT NULL,
  `ORB` INT NULL DEFAULT NULL,
  `DRB` INT NULL DEFAULT NULL,
  `TRB` INT NULL DEFAULT NULL,
  `AST` INT NULL DEFAULT NULL,
  `STL` INT NULL DEFAULT NULL,
  `BLK` INT NULL DEFAULT NULL,
  `TOV` INT NULL DEFAULT NULL,
  `PF` INT NULL DEFAULT NULL,
  `PTS` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Team_stats_id`),
  INDEX `fk_Team_stats_Teams1_idx` (`Teams_id` ASC) VISIBLE,
  CONSTRAINT `fk_Team_stats_Teams1`
    FOREIGN KEY (`Teams_id`)
    REFERENCES `nba`.`teams` (`Teams_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `nba`.`teams_has_top_scorers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba`.`teams_has_top_scorers` (
  `Teams_id` INT NOT NULL,
  `Top_scorer_id` INT NOT NULL,
  PRIMARY KEY (`Teams_id`, `Top_scorer_id`),
  INDEX `fk_Teams_has_Top_scorers_Top_scorers1_idx` (`Top_scorer_id` ASC) VISIBLE,
  INDEX `fk_Teams_has_Top_scorers_Teams1_idx` (`Teams_id` ASC) VISIBLE,
  CONSTRAINT `fk_Teams_has_Top_scorers_Teams1`
    FOREIGN KEY (`Teams_id`)
    REFERENCES `nba`.`teams` (`Teams_id`),
  CONSTRAINT `fk_Teams_has_Top_scorers_Top_scorers1`
    FOREIGN KEY (`Top_scorer_id`)
    REFERENCES `nba`.`top_scorers` (`Top_scorer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
