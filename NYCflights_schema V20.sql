DROP SCHEMA IF EXISTS NYCflights;
CREATE SCHEMA NYCflights;

USE NYCflights;
DROP TABLE IF EXISTS flights ;

CREATE TABLE flights (
	year SMALLINT,
	month TINYINT, 
	day TINYINT,
	dep_time SMALLINT UNSIGNED,
	sched_dep_time SMALLINT UNSIGNED,
	dep_delay SMALLINT,
	arr_time SMALLINT UNSIGNED,
	sched_arr_time SMALLINT UNSIGNED,
	arr_delay SMALLINT,
	carrier CHAR(2),
	flight VARCHAR (4), -- SMALLINT UNSIGNED,
	tailnum CHAR(6), PRIMARY KEY -- normé à 6 
	origin CHAR(3),
	dest CHAR(3),
	air_time SMALLINT UNSIGNED,
	distance SMALLINT UNSIGNED,
	hour CHAR(2),
	minute CHAR(2),
	time_hour VARCHAR(20)
);

-- Création de la table airlines :
DROP TABLE IF EXISTS airlines ;
CREATE TABLE airlines 
(
     carrier CHAR(2) PRIMARY KEY,
     name VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ; 
SHOW WARNINGS ;


-- Création de la table planes :
DROP TABLE IF EXISTS planes ;
CREATE TABLE planes 
(
 tailnum CHAR (6) PRIMARY KEY,
 year char(4),
 type VARCHAR (25),
 manufacturer VARCHAR(30),
 model VARCHAR(20),
 engines TINYINT,
 seats SMALLINT,
 speed SMALLINT UNSIGNED,
 engine VARCHAR(15)    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ; 
SHOW WARNINGS ;


-- Création de la table airports :
DROP TABLE IF EXISTS airports ;
CREATE TABLE airports 
(
     faa VARCHAR(3) PRIMARY KEY,
     name VARCHAR(55),
     lat SMALLINT UNSIGNED,
     lon SMALLINT,
     alt SMALLINT,
     tz TINYINT,
     dst VARCHAR(1),
     tzone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ; 
SHOW WARNINGS ;


-- Création de la table weather :
DROP TABLE IF EXISTS weather ;
CREATE TABLE weather 
(
     origin VARCHAR(3),
     year char(4),
     month CHAR(2),
     day CHAR(2),
     hour TINYINT UNSIGNED,
     temp DECIMAL(5,2),
     dewp DECIMAL(4,2),
     humid DECIMAL(5,2),
     wind_dir SMALLINT,
     wind_speed DECIMAL(25,20),
     wind_gust DECIMAL(20,15),
     precip TINYINT,         --
     pressure SMALLINT,
     visib TINYINT,
     time_hour DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ; 
SHOW WARNINGS ;

SET AUTOCOMMIT = 1;
 
-- FIN DE FICHIER SCHEMA


			




