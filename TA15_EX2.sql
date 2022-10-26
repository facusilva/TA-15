CREATE DATABASE TA15_EX2;
USE TA15_EX2;

CREATE TABLE piezas(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE proveedores(
id char(4) PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE suministra(
codigo_pieza INT,
id_proveedor char(4),
precio INT,
KEY (codigo_pieza, id_proveedor),
FOREIGN KEY (codigo_pieza) REFERENCES piezas(codigo) ON DELETE CASCADE ON UPDATE SET NULL,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id) ON DELETE CASCADE ON UPDATE SET NULL
);

INSERT INTO piezas (nombre) VALUES ('tornillo'), ('tuerca'),('gato hidraulico'),('anilla'), 
('arandela'), ('plancha de aluminio'), ('engranaje'), ('motor'), ('vara de metal'), ('clavo');

INSERT INTO proveedores VALUES ('ENF1', 'proovedor ENF1'), ('END6', 'proovedor END6'), ('1ASE', 'proovedor 1ASE'),
('UI34', 'proovedor UI34'), ('JASL', 'proovedor JASL'), ('AWS3', 'proovedor AWS3'), ('PWL3', 'proovedor PWL3'),
('35AS', 'proovedor 35AS'), ('Q346', 'proovedor Q346'), ('GSDF', 'proovedor GSDF');

INSERT INTO suministra VALUES (4, 'ENF1', 3), (8, 'END6', 2), (1, '1ASE', 6), (2, 'UI34', 9), 
(3, 'JASL', 5), (6, 'AWS3', 1), (5, 'PWL3', 2), (7, '35AS', 3), (9, 'Q346', 4), (10, 'GSDF', 8);
