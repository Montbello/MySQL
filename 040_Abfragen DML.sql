
USE erdkunde;

-- DML - Data Manipulation Language
-- Bereich von SQL, der für den Umgang (die Manipulation) der Daten zuständig ist.
-- Die großen Vier:
-- SELECT
-- INSERT INTO
-- UPDATE
-- DELETE

-- SHOW TABLES;

-- SELECT * FROM laender;
SELECT * FROM staedte;

-- WHERE für Bedingungen im SELECT
-- Vergleichsoperator (=) hat in SQL nur ein Zeichen
SELECT * FROM staedte WHERE name="Lyon";

-- Ungleich
SELECT * FROM staedte WHERE laender_id <> 2;  -- Traditionelle Datenbanken-Variante
SELECT * FROM staedte WHERE laender_id != 2;  -- Moderne Variante, an Programmier-Sprachen angelehnt
SELECT * FROM staedte WHERE NOT laender_id = 2;

-- > < >= <=
-- Suche alle Millionen-Städte
SELECT * FROM staedte WHERE einwohnerzahl >= 1000000;

-- Von bis
-- BETWEEN ... AND ...
-- Anfang und Ende sind beide inklusive
-- Suche alle Städte zwischen einer und zwei Millionen Einwohnern
SELECT * FROM staedte WHERE einwohnerzahl BETWEEN 1000000 AND 2000000;
SELECT * FROM staedte WHERE einwohnerzahl >= 1000000 AND einwohnerzahl <= 2000000;








