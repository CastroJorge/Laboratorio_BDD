-- Practica 5 

--2 selects con al menos 1 columna y 3 funciones agregadas
Select COUNT(Nombre) as NombreCOUNT, SUM(Duracion) as DuracionSUM, MAX(Año) as AñoMAX from Pelicula
GO

Select COUNT(id_inventario) as InventarioCOUNT, SUM(Pelicula) as PeliculaSUM, MAX(Pelicula) as PeliculaMAX from Inventario
GO

--2 select con al menos 1 columna y funcion agregada con WHERE
Select COUNT(Nombre) from Pelicula
where Duracion > 200
GO

Select AVG(Duracion) from Pelicula
where Duracion > 150
GO


--2 select con al menos 1 columna y funcion agregada con HAVING
Select AVG(Duracion) as PromDuracion from Pelicula
having AVG(Duracion) > 120
GO

Select MAX(Año) as MaxAño from Pelicula
having AVG(Duracion) > 100
GO

--Select top
SELECT TOP 3 * FROM Categoria
GO



