CREATE TABLE Categorias
(
	cat_PK TINYINT IDENTITY(1,1) PRIMARY KEY,
	cat_nom VARCHAR(10) UNIQUE
)