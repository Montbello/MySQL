
USE erdkunde;

-- Tabelle vollständig leeren
TRUNCATE TABLE staedte;

-- INSERT INTO
-- Datensätze einfügen
INSERT INTO staedte (name, einwohnerzahl, laender_id) VALUES ("Berlin", 3678123, 1);
INSERT INTO staedte (name, einwohnerzahl, laender_id) VALUES ("Hamburg", 1912345, 1);

-- Wenn man nicht alle Spalten/Attribute aufzählt, muss man alle Werte eintragen.
INSERT INTO staedte VALUES (3, "London", 7812345, 4);

-- Mehrere Datensätze (der gleichen Struktur) gleichzeitig einfügen:
INSERT INTO staedte (name, einwohnerzahl, laender_id) VALUES
("Barcelona", 1612345, 6),
("Valencia", 798123, 6),
("Madrid", 3214567, 6);

SELECT * FROM staedte;





