USE Estanterias;

INSERT INTO TiposArticulos
VALUES
('Alimentos'), 
('libros'),
('s�banas'),
('manteles'),
('servilletas'),
('chaquetas'),
('pantalones'),
('ollas'),
('cuchillos')

INSERT INTO Espacios
VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(1,1,2),
(1,1,3),
(1,1,4),
(1,1,5)

INSERT INTO Articulos
VALUES
('Chaqueta de Alfredo', 12,1,6),
('Cuchillo de cortar pan', 34,2,9),
('S�banas de las literas de las gemelas', 56,3,3)

select * from Espacios;
delete from Espacios;
exec dbo.create_estanteria 4;
select * from Espacios;

CREATE VIEW Almacen_overview AS
