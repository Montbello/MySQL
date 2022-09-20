
USE erdkunde;

-- SELECT * FROM staedte INNER JOIN laender ON laender_id=laender.id;

-- Spalten auswählen (Stern auflösen)
-- Hole alle Städten mit Städtename, Einwohnerzahl und Land
-- SELECT staedte.id, staedte.name, staedte.einwohnerzahl, laender.`name` FROM staedte INNER JOIN laender ON laender_id=laender.id;

-- Sortieren per ORDER BY
-- Der Standard ist aufsteigend zu sortieren: ASC (ascending)
-- SELECT * FROM staedte ORDER BY `name`;
-- SELECT * FROM staedte ORDER BY einwohnerzahl;
-- SELECT * FROM staedte ORDER BY einwohnerzahl ASC;  -- ASC ist optional
-- DESC zum absteigend sortieren - descending
-- SELECT * FROM staedte ORDER BY einwohnerzahl DESC;
-- SELECT * FROM staedte ORDER BY `name` DESC;

-- Mehrere Sortierkriterien durch eine kommaseparierte Liste
-- Jedes einzelne Sortierkriterium kann auf- oder absteigend sein.
-- SELECT * FROM staedte ORDER BY laender_id, einwohnerzahl DESC;
-- SELECT * FROM staedte ORDER BY laender_id DESC, einwohnerzahl DESC;

-- Limitieren per LIMIT
SELECT * FROM staedte LIMIT 10;     -- Die ersten zehn Datensätze
SELECT * FROM staedte LIMIT 10, 5;  -- Nach Datensatz 10 (also ab 11) 5 Datensätze

-- Hole von den vier größten Städten den Namen und die Einwohnerzahl
SELECT `name`, einwohnerzahl FROM staedte ORDER BY einwohnerzahl DESC LIMIT 4;

/*
Mehrzeiliger
Kommentar
*/









