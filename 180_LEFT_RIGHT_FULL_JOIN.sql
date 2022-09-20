
USE erdkunde;

-- LEFT|RIGHT|FULL [OUTER] JOIN (Hoch SQL)
-- LEFT|RIGHT [OUTER] JOIN (MySQL)

SELECT * FROM staedte;  -- 21
SELECT * FROM laender;  -- 8

-- INNER JOIN
SELECT * FROM staedte INNER JOIN laender ON laender_id=laender.id;
-- 20 - Köln fehlt, da die laender_id NULL ist

-- LEFT JOIN
SELECT * FROM staedte LEFT JOIN laender ON laender_id=laender.id;
-- 21 - Alle Städte sind vorhanden
-- LEFT JOIN füllt die Ergebnistabellle mit den restlichen Datensätzen der linken Tabelle auf.

-- RIGHT JOIN
SELECT * FROM staedte RIGHT JOIN laender ON laender_id=laender.id;
-- 22 - Auch die Länder ohne Stadt sind da, aber Köln fehlt wieder.

-- In der Praxis wird quasi nur LEFT JOIN benutzt
-- und bei Bedarf die Reihenfolge der Tabellen umgedreht.
SELECT * FROM laender LEFT JOIN staedte ON laender_id=laender.id;
-- Identische Zeilen wie beim RIGHT JOIN drüber.

SELECT "FULL JOIN" AS "Hier kommt";
-- FULL [OUTER] JOIN
-- Funktioniert in MySQL nicht!!!
-- In HOCH-SQL:
-- SELECT * FROM laender FULL JOIN staedte ON laender_id=laender.id;

-- Wird in MySQL per UNION umgesetzt
-- Mit UNION kann man zwei strukturell gleiche Abfragen verbinden
SELECT * FROM staedte LEFT JOIN laender ON laender_id=laender.id
UNION
SELECT * FROM staedte RIGHT JOIN laender ON laender_id=laender.id;























