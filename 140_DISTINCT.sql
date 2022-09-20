
USE erdkunde;

-- DISTINCT (unterschiedlich, eindeutig)

-- Hole alle verschiedenen Länder-IDs der Städte
SELECT laender_id FROM staedte;
SELECT DISTINCT laender_id FROM staedte;

-- Hole die Anzahl der verschiedenen Länder-IDs der Städte
SELECT COUNT(laender_id) FROM staedte;           -- 18
SELECT COUNT(DISTINCT laender_id) FROM staedte;  -- 6

-- COUNT() ist eine Funktion
-- SELECT ist ein Schlüsselwort

