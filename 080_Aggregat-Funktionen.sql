
USE erdkunde;

-- Aggregatfunktionen
-- Sind sehr performant, weil sie sich nur auf eine Spalte beziehen.
-- Aggregat-Funktionen dürfen nicht mit "normalen" Spalten im SELECT stehen.

-- MIN() gibt den kleinsten Wert zurück
SELECT MIN(einwohnerzahl) FROM staedte;  -- 479803

-- Unperformante Alternative:
-- SELECT einwohnerzahl FROM staedte ORDER BY einwohnerzahl LIMIT 1;
-- Ist die einzige Möglichkeit, wenn man mehr als eine Spalte benötigt.
-- SELECT einwohnerzahl, name FROM staedte ORDER BY einwohnerzahl LIMIT 1;

-- MAX() gibt den größten Wert zurück
SELECT MAX(einwohnerzahl) FROM staedte;  -- 8175133

-- COUNT()
SELECT COUNT(id) FROM staedte;             -- 18
-- SELECT COUNT(name) FROM staedte;           -- 18
-- SELECT COUNT(einwohnerzahl) FROM staedte;  -- 18
-- SELECT COUNT(laender_id) FROM staedte;     -- 18
SELECT COUNT(*) FROM staedte;              -- 18 (findet alle Datensätze, auch unvollständige)

-- SUM()
SELECT SUM(einwohnerzahl) FROM staedte;  -- 42999535

-- AVG() - Average/Durchschnitt
SELECT AVG(einwohnerzahl) FROM staedte;  -- 2388863.0556
-- AVG() live berechnen:
SELECT SUM(einwohnerzahl) / COUNT(einwohnerzahl) FROM staedte;  -- 2388863.0556

-- Ausblick: Rechnen im SELECT
SELECT 4 + 9;  -- 13

-- Mehrere Aggregatfunktionen in einem SELECT
SELECT MIN(einwohnerzahl), MAX(einwohnerzahl), COUNT(einwohnerzahl), SUM(einwohnerzahl), AVG(einwohnerzahl) FROM staedte;

-- Gib die größte Stadt mit Einwohnerzahl und Name der Stadt aus
SELECT einwohnerzahl, name FROM staedte ORDER BY einwohnerzahl DESC LIMIT 1; -- 8175133/New York




