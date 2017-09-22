create database RentaPeliculas

--Tabla Cliente
create table Cliente (
id_Cliente int NOT NULL PRIMARY KEY,
Nombre varchar(50),
Apellidos varchar(50),
Fecha_Nac Date NOT NULL,
Direccion int FOREIGN KEY REFERENCES Direccion(id_Direccion) NOT NULL)
GO


--Indice nombres de tabla Cliente
create index IDX_Nombre
on Cliente (Nombre)
GO

--Tabla Direccion
create table Direccion (
id_Direccion int NOT NULL PRIMARY KEY,
Direccion varchar(50) NOT NULL,
Ciudad varchar(50) NOT NULL,
Pais varchar(50) NOT NULL)
GO

 --Tabla Pelicula
create table Pelicula (
id_Pelicula int PRIMARY KEY NOT NULL,
Nombre varchar(50),
Duracion float,
Descripcion text,
Año int,
Categoria tinyint NOT NULL)
GO

--Tabla Renta
create table Rentas(
id_Renta int PRIMARY KEY NOT NULL,
Fecha_Renta Date,
Fecha_Devolucion Date,
Cliente int FOREIGN KEY REFERENCES Cliente(id_Cliente),
Inventario int FOREIGN KEY REFERENCES Inventario(id_inventario))
GO


--Tabla Categoria
create table Categoria(
id_Categoria int PRIMARY KEY NOT NULL,
Nombre varchar(50))
GO


--Tabla Inventario
create table Inventario(
id_Inventario int PRIMARY KEY NOT NULL,
Disponible bit NOT NULL,
Pelicula int FOREIGN KEY REFERENCES Pelicula(id_pelicula))
GO


--CONCAT
Select CONCAT (Nombre, Apellidos) From Cliente;

--DATEDIFF
SELECT DATEDIFF(day,Fecha_Renta,Fecha_Devolucion) AS 'Tiempo'
FROM Rentas;

--SUM
SELECT SUM (Duracion)
From Pelicula;

--AVG
SELECT AVG(Duracion)
FROM Pelicula;

--SDTEV
SELECT STDEVP(Duracion)
FROM Pelicula;
 

