
-- 5 Reportes (Cada uno es una vista)

Create view PelisDisponibles AS
SELECT Pelicula.id_Pelicula, Inventario.Pelicula, Inventario.Disponible
FROM Pelicula
INNER JOIN Inventario ON Pelicula.id_Pelicula = Inventario.Pelicula;
GO
Select * from PelisDisponibles
GO

Create view PeliculaCategoria AS
SELECT Categoria.id_Categoria, Categoria.Nombre as Categoria, Pelicula.Nombre
FROM Categoria
INNER JOIN Pelicula ON Categoria.id_Categoria = Pelicula.Categoria;
GO
Select * from PeliculaCategoria
GO

Create View InventarioTotal AS
Select Count(id_Inventario) as 'Productos en Inventario'
	From Inventario
	group by Disponible
	having Count(id_Inventario) > 5
GO
Select * from InventarioTotal
GO

Create View AñosPeliculas AS
Select Nombre as 'Peliculas Clasicas', MAX(Año) as 'Año'
	From Pelicula
	group by Pelicula.Nombre
	having MAX(Año) < 2010
GO
Select * from AñosPeliculas
GO

Create view Direcciones AS
SELECT Cliente.id_Cliente, Cliente.Nombre, Direccion.Direccion, Direccion.Ciudad, Direccion.Pais
FROM Direccion
INNER JOIN Cliente ON Direccion.id_Direccion = Cliente.Direccion;
GO
Select * from Direcciones
GO


-- 1 subconsulta 
select * 
	from (
	Select Categoria, Count(Nombre) as Peliculas
	From PeliculaCategoria
	group by Categoria 
	) as Comedias
		where Categoria = 'Comedia'
GO


-- 1 subconsulta (De With)
with Catcom as (
Select Categoria, Count(Nombre) as Peliculas
	From PeliculaCategoria
	group by Categoria
)
select *
from Catcom
where Catcom.[Categoria] = 'Comedia'
GO


--Tabla temporal
select *
into #TIAP
from PeliculaCategoria
GO
Select * from #TIAP
GO