-- Initialise la structure Unity Catalog du projet (rejouable).
CREATE CATALOG IF NOT EXISTS airbnb;

CREATE SCHEMA IF NOT EXISTS airbnb.bronze;
CREATE SCHEMA IF NOT EXISTS airbnb.silver;
CREATE SCHEMA IF NOT EXISTS airbnb.gold;

CREATE VOLUME IF NOT EXISTS airbnb.bronze.raw
COMMENT 'Fichiers bruts Inside Airbnb (CSV)';