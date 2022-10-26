CREATE DATABASE TA15_EX4;
USE TA15_EX4;

CREATE TABLE productos(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100),
precio INT
);

CREATE TABLE cajeros(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nom_apels varchar(255)
);

CREATE TABLE maquinas_registradoras(
codigo INT AUTO_INCREMENT PRIMARY KEY,
piso INT
);

CREATE TABLE venta(
cajero INT,
maquina INT,
producto INT,
KEY (cajero, maquina, producto),
FOREIGN KEY (cajero) REFERENCES cajeros(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (maquina) REFERENCES maquinas_registradoras(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (producto) REFERENCES productos(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO productos (nombre, precio) VALUES ('patatas lays', 2), ('avena', 3), ('cereales chocolate', 5), ('pechuga de pollo', 7), ('vino tinto',4), ('galletas maria', 4), ('jamon york', 3),
 ('vino blanco', 10), ('mejillones', 6), ('yogur natural', 5);
 
 INSERT INTO cajeros (nom_apels) VALUES ('Jose Pereira'), ('Hugo Roldán'), ('Victor Perez'), ('Jay Cutler'), ('Ronnie Coleman'), ('Lex Fridmann'), ('Ye'), ('Joe Rogan'), ('Carlos García'), ('Pere Pons');
 
 INSERT INTO maquinas_registradoras (piso) VALUES (4), (2), (3), (1), (2), (4), (3), (2), (4), (1);
 
 INSERT INTO venta VALUES (6,1,3), (8,6,7), (10,3,2), (2,4,1), (7,2,6), (1,9,4), (9,7,10), (3,5,5), (4,10,8), (5,8,9);