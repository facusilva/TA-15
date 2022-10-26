CREATE DATABASE TA15_EX1;
USE TA15_EX1;

CREATE TABLE despachos(
numero INT PRIMARY KEY,
capacidad INT
);

CREATE TABLE directores(
DNI varchar(8) PRIMARY KEY,
nom_apels varchar(255),
DNI_jefe varchar(8),
despacho INT,
FOREIGN KEY (DNI_jefe) REFERENCES directores(DNI) ON DELETE CASCADE ON UPDATE SET NULL,
FOREIGN KEY (despacho) REFERENCES despachos(numero) ON DELETE CASCADE ON UPDATE SET NULL
);

INSERT INTO despachos VALUES (01,45),(02,28),(03,33),(04,21),(05,18),(06,29),(07,44),(08,21),(09,54),(10,36);

INSERT INTO directores VALUES ('55444333', 'pepito perez', '55444333', 01),
('64593829', 'juan beltran', '55444333', 10),
('93823946', 'jose gimenez', '64593829', 04),
('73928456', 'federico valverde', '64593829', 02),
('22304956', 'maxi gomez', '93823946', 07),
('21384956', 'palito pereira', '55444333', 03),
('28193475', 'cebolla rodriguez', '21384956', 06),
('53829106', 'diego lugano', '22304956', 05),
('43222096', 'diego laxalt', '93823946', 09),
('75940219', 'diego forlán', '21384956', 08);



