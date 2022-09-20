
USE erdkunde;

-- Stellvertreter im SELECT
-- AS
-- Layoutthema
-- Nur diese eine Abfrage wird verändert.

SELECT staedte.name AS "Stadt", laender.name AS "Land"
FROM staedte
INNER JOIN laender ON laender_id=laender.id
WHERE laender.name="Deutschland" OR laender.name="USA"
ORDER BY laender.name, staedte.name;


