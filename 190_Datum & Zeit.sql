
-- Datum & Zeit

DROP DATABASE IF EXISTS exkurse;
CREATE DATABASE exkurse;
USE exkurse;

-- Datentypen
CREATE TABLE zeiten
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	uhrzeit TIME,
	datum DATE,
	zeitpunkt DATETIME,
	jahr YEAR
);
-- SHOW COLUMNS FROM zeiten;

-- ISO 8601 regelt das Format für internationale Zeitangaben
INSERT INTO zeiten VALUES
(1, "14:07:00", "2022-05-12", "2022-05-12 14:07:00", 2022);
-- SELECT * FROM zeiten;

-- Funktionen
-- SELECT CURTIME();  -- Aktuelle Zeit
-- SELECT CURDATE();  -- Aktuelles Datum
-- SELECT NOW();      -- Aktuellen Zeitpunkt

-- SELECT YEAR("2022-05-12");           -- 2022
-- SELECT YEAR("2022-05-12 09:04:00");  -- 2022
-- SELECT YEAR(NOW());                  -- 2022

INSERT INTO zeiten VALUES
(2, CURTIME(), CURDATE(), NOW(), YEAR(NOW()));
-- SELECT * FROM zeiten;

SELECT
	TIME("2022-05-12 09:04:00"),     -- 09:04:00
	DATE("2022-05-12 09:04:00"),     -- 2022-05-12
	HOUR("2022-05-12 09:04:00"),     -- 9
	MONTH("2022-05-12 09:04:00"),    -- 5
	DAY("2022-05-12 09:04:00"),      -- 12
	WEEKDAY("2022-05-12 09:04:00");  -- 3 (Montag -> 0)

SELECT YEAR(zeitpunkt) AS "Jahr",
       DATE(zeitpunkt) AS "Datum",
       TIME(zeitpunkt) AS "Zeit"
FROM zeiten;

-- DATEDIFF()
SELECT DATEDIFF("2020-03-01", "2020-02-28");  -- 2
SELECT DATEDIFF("2021-03-01", "2021-02-28");  -- 1
SELECT DATEDIFF(CURDATE(), "1970-12-03");     -- 18788

-- ADDDATE()
SELECT ADDDATE("2020-02-28", 1);      -- 2020-02-29
SELECT ADDDATE("2021-02-28", 1);      -- 2021-03-01
SELECT ADDDATE("1970-12-03", 20000);  -- 2025-09-05

-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html


















