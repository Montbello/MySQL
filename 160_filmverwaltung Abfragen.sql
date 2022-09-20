
USE filmverwaltung;

SELECT * FROM filme;

SELECT * FROM filme INNER JOIN darstellungen ON filme.id=filme_id;

SELECT * FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id;

SELECT Vorname, Nachname, Titel, Jahr FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id;

SELECT vorname AS "Vorname",
       nachname AS "Nachname",
       titel AS "Titel",
		 jahr AS "Jahr"
FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id
ORDER BY nachname;

-- Hole Darstellungen von Filmen, die vor 1995 raus kamen.
SELECT Vorname, Nachname, Titel, Jahr FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id
WHERE jahr < 1995
ORDER BY jahr, nachname;

-- Hole alle Schauspieler:innen, die in einem Film mitgemacht haben,
-- der ein "E" im Namen hat.
SELECT DISTINCT vorname AS "Vorname", nachname AS "Nachname"
FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id
WHERE titel LIKE "%E%"
ORDER BY nachname;

-- CONCAT(str1, str2, ...)
SELECT DISTINCT CONCAT(vorname, " ", nachname) AS "Name"
FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id
WHERE titel LIKE "%E%"
ORDER BY nachname;

-- SUBSTRING(str, pos[, len])
SELECT DISTINCT CONCAT(nachname, ", ", SUBSTRING(vorname, 1, 1), ".") AS "Name"
FROM filme
INNER JOIN darstellungen ON filme.id=filme_id
INNER JOIN schauspieler ON schauspieler.id=schauspieler_id
WHERE titel LIKE "%E%"
ORDER BY nachname;















