
USE erdkunde;

-- Logische Operatoren

-- AND
-- Hole alle Städte mit der Länder-ID 3, die weniger als 1.000.000 Einwohner haben.
SELECT * FROM staedte;
SELECT * FROM staedte WHERE laender_id=3;
SELECT * FROM staedte WHERE laender_id=3 AND einwohnerzahl<1000000;

-- OR (und/oder)
-- Hole alle Städte aus Deutschland oder den USA
SELECT * FROM staedte;
SELECT * FROM staedte INNER JOIN laender ON laender_id=laender.id;

SELECT * FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE laender.name="Deutschland";

SELECT * FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE laender.name="Deutschland" OR laender.name="USA";
-- Python if tag == 5 or tag == 6:

-- Sortiert nach Ländername und Städtename
SELECT * FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE laender.name="Deutschland" OR laender.name="USA"
ORDER BY laender.name, staedte.name;

















