
USE erdkunde;

-- JOIN

-- Kreuzprodukt
-- Jeder mit jedem
SELECT * FROM staedte, laender;  -- Gefundene Zeilen: 108 (18 * 6 = 108)

-- Equi-Join
-- Der Join ohne das Schlüsselwort JOIN
SELECT * FROM staedte, laender WHERE laender_id=laender.id;

-- [INNER] JOIN
-- In MySQL ist INNER optional
SELECT * FROM staedte INNER JOIN laender ON laender_id=laender.id;

-- Hole alle Städte aus Deutschland
-- Per INNER JOIN
SELECT * FROM staedte INNER JOIN laender ON laender_id=laender.id WHERE laender.name="Deutschland";
-- Per Equi-Join
-- Unübersichtlich bei längeren Abfragen
SELECT * FROM staedte, laender WHERE laender_id=laender.id AND laender.name="Deutschland";







