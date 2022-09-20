
USE erdkunde;

-- DELETE FROM tablename ...

-- Lösche die Stadt München
DELETE FROM staedte WHERE name="München";
-- SELECT * FROM staedte WHERE laender_id=1;

-- Lösche alle Städte mit der ID von 9 bis 12
DELETE FROM staedte WHERE id BETWEEN 9 AND 12;
DELETE FROM staedte WHERE id >= 9 AND id <= 12;
SELECT * FROM staedte;

-- Alle Datensätze löschen
DELETE FROM staedte;
SHOW COLUMNS FROM staedte;

-- Eine neue Stadt einfügen
INSERT INTO staedte (name, einwohnerzahl) VALUES ("Friesoythe", 26919);
SELECT * FROM staedte;  -- id ist 19
-- Feldinhalte, die nicht übergeben werden, werden mit NULL belegt
-- DELETE setzt den AUTO_INCREMENT nicht zurück
-- AUTO_INCREMENT ist Teil der Struktur und damit Teil der DDL (Data Definition Language)
-- DELETE ist Teil der DML (Data Manipulation Language) und kann daher nicht etwas aus der DDL verändern.

TRUNCATE TABLE staedte;
-- TRUNCATE TABLE gehört zur DDL und setzt auch den AUTO_INCREMENT zurück.
INSERT INTO staedte (name, einwohnerzahl) VALUES ("Friesoythe", 26919);
SELECT * FROM staedte;  -- id ist 1





