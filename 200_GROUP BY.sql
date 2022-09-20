
USE erdkunde;

-- GROUP BY
-- Gruppieren

-- Hole alle verschiedenen Länder-IDs aus der Tabelle Städte
-- SELECT DISTINCT laender_id FROM staedte;
-- DISTINCT ist die einfachste Form des Gruppierens

-- Das Gleiche wie oben per GROUP BY
-- SELECT laender_id FROM staedte GROUP BY laender_id;

-- Bei GROUP BY dürfen nur "normale" Spalten im SELECT stehen nach denen auch gruppiert wird.
-- SELECT laender_id, name FROM staedte GROUP BY laender_id;  -- /* SQL Fehler (1055): 'erdkunde.staedte.name' isn't in GROUP BY */

-- Aggregatfunktionen dürfen bei GROUP BY im SELECT stehen
-- Hole wieviele Städte von den einzelnen Länder-IDs vorhanden sind
-- SELECT laender_id, COUNT(laender_id) FROM staedte GROUP BY laender_id;

-- Hole die größte Stadt-Einwohnerzahl von jeder Länder-ID
-- SELECT laender_id, MAX(einwohnerzahl) FROM staedte GROUP BY laender_id ORDER BY laender_id;

-- Hole die größte Stadt-Einwohnerzahl von jedem Land
SELECT laender.name, MAX(staedte.einwohnerzahl) FROM staedte
INNER JOIN laender ON laender_id=laender.id
GROUP BY laender.name ORDER BY laender.name;

-- Aggregat-Funktionen im ORDER BY
-- Hole die größte Stadt-Einwohnerzahl von jedem Land
-- Absteigend sortiert nach Stadt-Einwohnerzahlen
SELECT laender.name, MAX(staedte.einwohnerzahl) FROM staedte
INNER JOIN laender ON laender_id=laender.id
GROUP BY laender.name ORDER BY MAX(staedte.einwohnerzahl) DESC;

-- Mit WHERE Zeilen/Datensätze ausfiltern BEVOR gruppiert wird.
-- Hole von jedem Land die Anzahl der Städte, die ein "A" im Namen haben.
-- Absteigend sortiert nach der Anzahl der Städte und Ländername
SELECT laender.name, COUNT(staedte.id) FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE staedte.name LIKE "%A%"
GROUP BY laender.name ORDER BY COUNT(staedte.id) DESC, laender.name;

-- HAVING
-- Bedingung beim Gruppieren
-- Hole von allen Ländern mit einem "I" im Namen
-- die Anzahl der Städte, die ein "A" im Namen haben.
-- Absteigend sortiert nach der Anzahl der Städte und Ländername
SELECT laender.name, COUNT(staedte.id) FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE staedte.name LIKE "%A%"
GROUP BY laender.name
HAVING laender.name LIKE "%I%"
ORDER BY COUNT(staedte.id) DESC, laender.name;

-- Auch noch mit LIMIT:
SELECT laender.name, COUNT(staedte.id) FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE staedte.name LIKE "%A%"
GROUP BY laender.name
HAVING laender.name LIKE "%I%"
ORDER BY COUNT(staedte.id) DESC, laender.name
LIMIT 3;




















