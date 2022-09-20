
-- SHOW DATABASES;

#Einzeiliger Kommentar

-- DDL - Data Definition Language
-- Bereich von SQL, der für die Definition von Struktur zuständig ist.

DROP DATABASE IF EXISTS erdkunde;
CREATE DATABASE erdkunde;
USE erdkunde;


CREATE TABLE staedte
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255),	
	einwohnerzahl INT,
	laender_id INT  -- Fremdschlüssel
);
-- SHOW COLUMNS FROM staedte;

CREATE TABLE laender
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255),
	einwohnerzahl INT
);
SHOW COLUMNS FROM laender;






