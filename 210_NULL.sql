
-- NULL

DROP DATABASE IF EXISTS exkurse;
CREATE DATABASE exkurse;
USE exkurse;

CREATE TABLE t1
(
	id INT PRIMARY KEY,
	wert INT
);
SHOW COLUMNS FROM t1;

INSERT INTO t1 VALUES
(1, 42),
(2, NULL);
SELECT * FROM t1;

-- Ein Vergleich mit mindestens einem NULL ist immer NULL
-- SELECT NULL = NULL; -- NULL
-- SELECT 1 = NULL;    -- NULL
-- SELECT 1 = 1;       -- 1 (steht für True)
-- SELECT 1 = 2;       -- 0 (steht für False)

-- Man kann nicht direkt auf NULL vergleichen
-- SELECT * FROM t1 WHERE wert = NULL;  -- Leere Ergebnismenge
-- SELECT * FROM t1 WHERE wert != NULL;  -- Leere Ergebnismenge

-- IS [NOT] NULL
-- SELECT * FROM t1 WHERE wert IS NULL;      -- 2 - NULL
-- SELECT * FROM t1 WHERE wert IS NOT NULL;  -- 1 - 42
-- SELECT * FROM t1 WHERE NOT wert IS NULL;  -- 1 - 42

-- Hole alle Städte, bei denen die Länder-ID NULL ist.

SELECT * FROM erdkunde.staedte WHERE laender_id IS NULL;     -- Köln
SELECT * FROM erdkunde.staedte WHERE einwohnerzahl IS NULL;  -- Turin
SELECT * FROM erdkunde.staedte WHERE name IS NULL;           -- Kein Name

SHOW TABLES;  -- t1







