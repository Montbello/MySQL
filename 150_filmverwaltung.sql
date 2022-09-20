
-- USE mysql;

DROP DATABASE IF EXISTS filmverwaltung;
CREATE DATABASE filmverwaltung;
USE filmverwaltung;

CREATE TABLE filme
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	titel VARCHAR(255),
	-- jahr YEAR DEFAULT 2000
	jahr YEAR
);
-- SHOW COLUMNS FROM filme;

CREATE TABLE schauspieler
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	vorname VARCHAR(255),
	nachname VARCHAR(255)
);
-- SHOW COLUMNS FROM schauspieler;

CREATE TABLE darstellungen
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	filme_id INT,        -- Fremdschlüssel
	schauspieler_id INT  -- Fremdschlüssel
);
-- SHOW COLUMNS FROM darstellungen;

INSERT INTO filme (titel, jahr) VALUES
("Pulp Fiction", 1994),
("Die Hard", 1990),
("Face/Off", 1997),
("Fifth Element", 1997),
("The Rock", 1996),
("Entrapment", 1999);
SELECT * FROM filme;

INSERT INTO schauspieler (vorname, nachname) VALUES
("John", "Travolta"),
("Bruce", "Willis"),
("Uma", "Thurman"),
("Samuel L.", "Jackson"),
("Alan", "Rickman"),
("Nicolas", "Cage"),
("Milla", "Jovovich"),  -- 7
("Gary", "Oldman"),
("Chris", "Tucker"),
("Sean", "Connery"),
("Ed", "Harris"),
("Catherine", "Zeta-Jones");
SELECT * FROM schauspieler;

INSERT INTO darstellungen (filme_id, schauspieler_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 5),
(3, 1),
(3, 6),
(4, 7),
(4, 2),
(4, 8),
(4, 9),
(5, 6),
(5, 10),
(5, 11),
(6, 10),
(6, 12);
SELECT * FROM darstellungen;













