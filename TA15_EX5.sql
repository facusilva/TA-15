CREATE DATABASE TA15_EX5;
USE TA15_EX5;

CREATE TABLE facultad(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE investigadores(
DNI varchar(8) PRIMARY KEY,
nom_apels varchar(255),
facultad INT,
FOREIGN KEY (facultad) REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE equipos(
num_serie char(4) PRIMARY KEY,
nombre varchar(100),
facultad INT,
FOREIGN KEY (facultad) REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE reserva(
DNI varchar(8),
num_serie char(4),
comienzo datetime,
fin datetime,
FOREIGN KEY (DNI) REFERENCES investigadores(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (num_serie) REFERENCES equipos(num_serie) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO facultad (nombre) VALUES ('medicina'), ('biologia'), ('química'), ('matemáticas'), ('física'),
('ingeniería'), ('informática'), ('historia'), ('bellas artes'), ('literatura');

INSERT INTO investigadores VALUES ('55483947','Jorge Tabet',3), ('63728394','Kim Angel',9), ('47382934','Victor Valdivia',8), ('47283495', 'Hugo Van Dammne',10),
 ('75829345','Alex Eubank',2), ('57482193','Jay Cutler',6), ('64382913','Madelman',1), ('53214532','Joan Pradells',4), ('43658213','Kai Greene',7), ('43283543','Jorge García',5);
 
 INSERT INTO equipos VALUES ('EQ01', 'equipo 1', 2), ('EQ02', 'equipo 2', 4), ('EQ03', 'equipo 3', 9), ('EQ04', 'equipo 4', 3), ('EQ05', 'equipo 5', 6), ('EQ06', 'equipo 6', 10), 
 ('EQ07', 'equipo 7', 8), ('EQ08', 'equipo 8', 5), ('EQ09', 'equipo 9', 1), ('EQ10', 'equipo 10', 7);
 
 INSERT INTO reserva VALUES ('63728394', 'EQ07', '2022-10-22 19:10:50', '2024-09-30 18:20:50'), ('47283495', 'EQ02', '2021-03-11 15:22:09', '2023-09-30 18:20:50'), 
 ('47382934', 'EQ03', '2020-12-11 09:19:50', '2024-10-30 11:55:23'), ('53214532', 'EQ01', '2022-04-25 16:45:42', '2025-03-14 19:50:45'), 
 ('43283543', 'EQ08', '2019-09-30 18:20:50', '2022-11-15 17:28:43'), ('55483947', 'EQ04', '2022-05-22 10:22:39', '2025-09-11 18:28:43'), 
 ('75829345', 'EQ09', '2018-11-15 17:28:43', '2023-01-13 08:32:07'), ('43658213', 'EQ10', '2022-01-13 08:32:07', '2023-12-27 09:11:27'), 
 ('64382913', 'EQ06', '2022-03-14 19:50:45', '2025-09-11 18:28:43'), ('57482193', 'EQ05', '2021-02-13 10:45:50', '2026-01-03 19:52:43');