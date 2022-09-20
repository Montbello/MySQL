
USE erdkunde;

-- ALTER TABLE ...
-- Gehört zur DDL (Data Definition Language)

-- Vier Möglichkeiten auf Spaltenebene (ADD, DROP, CHANGE, MODIFY)

-- ADD [COLUMN]
-- COLUMN ist in MySQL optional
-- Füge in der Tabelle staedte die Spalte flaeche hinzu
-- ALTER TABLE staedte ADD COLUMN flaeche INT;
-- SHOW COLUMNS FROM staedte;
-- SELECT * FROM staedte;

-- DROP [COLUMN]
-- Lösche die Spalte flaeche
-- ALTER TABLE staedte DROP COLUMN flaeche;
-- SHOW COLUMNS FROM staedte;
-- SELECT * FROM staedte;

-- CHANGE [COLUMN]
-- Bestehende Spalte umbenennen
-- Ändere den Namen der Spalte name zu staedtename
-- Der Datentyp MUSS erneut mit angegeben werden, auch wenn es der Gleiche ist.
ALTER TABLE staedte CHANGE COLUMN name staedtename VARCHAR(255);
SHOW COLUMNS FROM staedte;
SELECT * FROM staedte;
ALTER TABLE staedte CHANGE COLUMN staedtename name VARCHAR(255);  -- Wieder rückgängig gemacht

-- MODIFY [COLUMN]
-- Den Datentyp einer Spalte ändern
ALTER TABLE staedte MODIFY COLUMN einwohnerzahl FLOAT;
SHOW COLUMNS FROM staedte;
SELECT * FROM staedte;
ALTER TABLE staedte MODIFY COLUMN einwohnerzahl INT;

-- EINE Möglichkeit auf Tabellenebene (RENAME TO)
-- RENAME TO
-- Ändere den Tabellennamen von staedte zu cities
ALTER TABLE staedte RENAME TO cities;
SHOW TABLES;
ALTER TABLE cities RENAME TO staedte;













