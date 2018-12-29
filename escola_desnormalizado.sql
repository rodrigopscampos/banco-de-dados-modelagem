CREATE SCHEMA IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

USE `escola_desnormalizado` ;

-- -----------------------------------------------------
-- Table `escola`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola`.`alunos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  `documento` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `escola`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola`.`cursos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `escola`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola`.`professores` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  `documento` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `escola`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola`.`turmas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `dt_inicio` DATE NULL DEFAULT NULL,
  `dt_fim` DATE NULL DEFAULT NULL,
  `duracao` TIME NULL DEFAULT NULL,
  `cursos_id` INT(11) NOT NULL,
  `professor_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turma_cursos1_idx` (`cursos_id` ASC) VISIBLE,
  INDEX `fk_turma_professor1_idx` (`professor_id` ASC) VISIBLE,
  CONSTRAINT `fk_turma_cursos1`
    FOREIGN KEY (`cursos_id`)
    REFERENCES `escola`.`cursos` (`id`),
  CONSTRAINT `fk_turma_professor1`
    FOREIGN KEY (`professor_id`)
    REFERENCES `escola`.`professores` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `escola`.`aluno_turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola`.`aluno_turma` (
  `aluno_id` INT(11) NOT NULL,
  `turma_id` INT(11) NOT NULL,
  PRIMARY KEY (`aluno_id`, `turma_id`),
  INDEX `fk_aluno_has_turma_turma1_idx` (`turma_id` ASC) VISIBLE,
  INDEX `fk_aluno_has_turma_aluno1_idx` (`aluno_id` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_has_turma_aluno1`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `escola`.`alunos` (`id`),
  CONSTRAINT `fk_aluno_has_turma_turma1`
    FOREIGN KEY (`turma_id`)
    REFERENCES `escola`.`turmas` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

