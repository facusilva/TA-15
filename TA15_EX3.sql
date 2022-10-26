CREATE DATABASE TA15_EX3;
USE TA15_EX3;

CREATE TABLE cientificos(
DNI varchar(8) PRIMARY KEY,
nom_apels varchar(255)
);

CREATE TABLE proyecto(
id char(4) PRIMARY KEY,
nombre varchar(255),
horas INT
);

CREATE TABLE asignado_a(
cientifico varchar(8),
proyecto char(4),
KEY (cientifico, proyecto),
FOREIGN KEY (cientifico) REFERENCES cientificos(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (proyecto) REFERENCES proyecto(id) ON DELETE CASCADE ON UPDATE CASCADE
);
 INSERT INTO cientificos VALUES ('55472834', 'Javier Gomez'), ('43192567', 'Jose Martinez'), 
 ('54392323', 'Pedro Rosas'), ('58432956', 'Elisabet García'), ('21395482', 'Marcelo Gomez'), 
 ('38653745', 'Adrian Merchán'), ('58293452', 'Carlos Quintana'), ('55738495', 'Joel Martínez'), 
 ('44839204', 'Carlos García'), ('49238493', 'Martín Quiroga');
 
 INSERT INTO proyecto (id, nombre, horas) values ('EM01','Estudio microbios',45), ('EB04','Estudio biomas',68), ('PX03','Proyecto X',120),('TWP1','El proyecto salvaje',450), ('EI09','Estudio idiomas',200), 
 ('NA04','Nutrición atletas', 80), ('CS03','Ciclos solares', 46), ('HA06','Estudio hormonas androgénicas',250), ('PZ99','Proyecto Z', 500), ('EC01','Estudio confidencial',1200);
 
 SELECT * FROM cientificos;
 SELECT * FROM proyecto;
 
 INSERT INTO asignado_a VALUES ('55472834', 'PX03'), ('43192567', 'EC01'), ('54392323', 'EB04'), ('58432956', 'EI09'), 
 ('21395482', 'EM01'), ('38653745', 'TWP1'), ('58293452', 'HA06'), ('55738495', 'NA04'), ('44839204', 'PZ99'), ('49238493', 'CS03');