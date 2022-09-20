
USE erdkunde;

-- UPDATE tablename SET ...

-- Ändere die Einwohnerzahl von Berlin auf 3.748.000
UPDATE staedte SET einwohnerzahl=3748000 WHERE name="Berlin";

-- SELECT * FROM staedte;

-- Verdopple die Einwohnerzahl aller Städte mit der Länder-ID 1
UPDATE staedte SET einwohnerzahl=einwohnerzahl*2 WHERE laender_id=1;
SELECT * FROM staedte WHERE laender_id=1;

-- Exkurs:
-- 2147483647 ist der größtmögliche 32-Bit-Integer (wenn man Vorzeichen hat).
SELECT POW(2, 32);  -- 2 ** 32 -> 4294967296
SELECT POW(2, 32) / 2 -1;  -- 2147483647
-- / 2 - weil die andere Hälfte der Zahlen im Negativen ist
-- -1 - weil die 0 dabei ist

-- Ändere den Ländernamen von "USA" in "Vereinigte Staaten von Amerika"
UPDATE laender SET name="Vereinigte Staaten von Amerika" WHERE name="USA";
SELECT * FROM laender;

-- Zur Sicherheit LIMIT 1
-- So wird garantiert nur ein Datensatz geändert
UPDATE laender SET name="Vereinigte Staaten von Amerika" WHERE name="USA" LIMIT 1;

-- Ändere alle Ländernamen in "Erde"
-- Ohne WHERE ist praktisch, aber auch gefährlich.
UPDATE laender SET name="Erde";
SELECT * FROM laender;



















