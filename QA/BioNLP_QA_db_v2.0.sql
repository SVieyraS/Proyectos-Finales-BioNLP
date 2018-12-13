###############################################
#                                             #
######  CREATING DB AND TABLES IN MYSQL  ######
#                                             #
###############################################

# Creation of the database where we will work in
CREATE database QA;
USE QA;

# Table with data about Salmonella
CREATE table ES (
  `es_ent` VARCHAR(50) NOT NULL,
  `es_eff` VARCHAR(255) NOT NULL,
  `es_vrb` LONGTEXT NOT NULL,
  `es_inf` LONGTEXT NOT NULL,
  INDEX (`es_ent`))
ENGINE = InnoDB;

# Table with data
CREATE table WHO (
  `who_ent` VARCHAR(50) NOT NULL,
  `who_eff` VARCHAR(255) NOT NULL,
  `who_vrb` LONGTEXT NOT NULL,
  `who_inf` LONGTEXT NOT NULL,
  INDEX (`who_ent`))
ENGINE = InnoDB;
