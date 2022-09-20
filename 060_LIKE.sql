
USE erdkunde;

-- MySQL ist NICHT case-sensitive
-- MySQL achtet nicht auf Groß- und Kleinschreibung

-- LIKE
-- Aktiviert die Wildcards

SELECT * FROM staedte WHERE `name`="Lyon";
SELECT * FROM staedte WHERE `name` LIKE "Lyon";

-- Wildcard % (Prozent) steht für 0 bis unendlich beliebige Zeichen
-- Suche alle Städte, die mit "B" anfangen
SELECT * FROM staedte WHERE `name` LIKE "B%";

-- Suche alle Städte, die auf "A" enden
SELECT * FROM staedte WHERE `name` LIKE "%A";

-- Suche alle Städte, die mit "B" anfangen und auf "A" enden
SELECT * FROM staedte WHERE `name` LIKE "B%A";

-- Suche alle Städte, die ein "N" im Namen haben
SELECT * FROM staedte WHERE `name` LIKE "%N%";

-- Wildcard _ (Unterstrich) steht für genau ein beliebiges Zeichen
-- Suche alle Städte mit sieben Buchstaben
SELECT * FROM staedte WHERE `name` LIKE "_______";  -- Es müssen genau sieben Unterstriche sein
-- Kombination von Wildcards
-- Suche die Städte, die mit einen "L" beginnen, dann irgendwann ein "N" haben
-- und nach dem "N" noch genau drei Zeichen haben.
SELECT * FROM staedte WHERE `name` LIKE "L%n___";  -- London
-- Suche die Städte, die mit einen "L" beginnen, dann irgendwann ein "N" haben
-- und nach dem "N" noch genau fünf Zeichen haben.
SELECT * FROM staedte WHERE `name` LIKE "L%n_____";  -- Los Angeles

-- Suche alle Städte, die nicht auf "A" enden
SELECT * FROM staedte WHERE NOT `name` LIKE "%A";
SELECT * FROM staedte WHERE `name` NOT LIKE "%A";




