Create database VideoClubPIA
use VideoClubPIA



--CREACION DE TABLAS

--Indice nombres de tabla Cliente
create index IDX_Nombre
on Cliente (Nombre)
GO

--Tabla Cliente
create table Cliente (
id_Cliente int NOT NULL PRIMARY KEY,
Nombre varchar(50) NOT NULL,
Apellidos varchar(50) NOT NULL,
Fecha_Nac Date NOT NULL,
Direccion int)
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
Inventario int,
Cliente int )
GO

--Tabla Categoria
create table Categoria(
id_Categoria int PRIMARY KEY NOT NULL,
Nombre varchar(50) NOT NULL)
GO

--Tabla Inventario
create table Inventario(
id_Inventario int PRIMARY KEY NOT NULL,
Disponible bit,
Pelicula int)
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

Select * from Categoria
Select * from Cliente
Select * from Direccion
Select * from Inventario
Select * from Pelicula
Select * from Rentas






--INSERTAR DATOS

INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (1, N'Accion')
INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (2, N'Terror')
INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (3, N'Comedia')
INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (4, N'Documental')
INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (5, N'Drama')
INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (6, N'Romance')
INSERT [dbo].[Categoria] ([id_Categoria], [Nombre]) VALUES (7, N'Independientes')

INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (1, N'Jorge', N'Castro', CAST(0x6D1F0B00 AS Date), 1)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (2, N'Raul', N'Fernandez', CAST(0x75250B00 AS Date), 2)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (3, N'Samantha', N'Serrato', CAST(0x07240B00 AS Date), 3)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (4, N'Felipe', N'Alvarado', CAST(0x9A220B00 AS Date), 4)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (5, N'Jesus', N'Saldaña', CAST(0x2D210B00 AS Date), 5)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (6, N'Pedro', N'Perez', CAST(0x50170B00 AS Date), 6)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (7, N'Antonio', N'Escobedo', CAST(0x20160B00 AS Date), 7)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (8, N'Bruce', N'Wayne', CAST(0x1A190B00 AS Date), 8)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (9, N'Gerardo', N'Del Rio', CAST(0x1B080B00 AS Date), 9)
INSERT [dbo].[Cliente] ([id_Cliente], [Nombre], [Apellidos], [Fecha_Nac], [Direccion]) VALUES (10, N'Cirila', N'Del Rio', CAST(0x7E160B00 AS Date), 10)

INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (1, N'Calle canaco 214', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (2, N'Calle tepito 12', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (3, N'Calle dado', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (4, N'Calle carta', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (5, N'Calle taco', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (6, N'Callle independencia', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (7, N'Calle circuito', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (8, N'Calle caintra', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (9, N'Calle elektra', N'Monterrey', N'Mexico')
INSERT [dbo].[Direccion] ([id_Direccion], [Direccion], [Ciudad], [Pais]) VALUES (10, N'Calle plata', N'Monterrey', N'Mexico')


INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (1, 0, 1)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (2, 1, 2)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (3, 1, 3)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (4, 1, 4)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (5, 0, 5)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (6, 1, 6)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (7, 1, 7)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (8, 1, 8)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (9, 1, 9)
INSERT [dbo].[Inventario] ([id_Inventario], [Disponible], [Pelicula]) VALUES (10, 0, 10)

INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (1, N'Thor: Ragnarok
', 220, N'Hela, la diosa de la muerte, ha ocupado el trono de Asgard y ha enviado a Thor al otro lado del universo tras arrebatarle su martillo. En el planeta Sakaar, Thor deberá competir en una competición de gladiadores, donde se enfrentará a su viejo amigo Hulk. Junto a él, y un variopinto equipo en el que también contará con su hermano Loki, iniciará un viaje a contrarreloj de vuelta a casa para detener el Ragnarok, un ciclo de vida y muerte sin fin que podría destruir toda la civilización asgardiana.', 2017, 3)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (2, N'300
', 189, N'Leónidas es el aclamado rey que gobierna, junto a su mujer Gorgo, la ciudad griega de Esparta. El orden que tienen instaurado se ve amenazado por el aviso sobre el inminente ataque de un gran ejército persa. A su cabeza, el temible y enigmático Jerjes. Leónidas responde a la provocación enemiga, pero el Consejo de Esparta no quiere luchar y le envían a consultar al Oráculo sobre el futuro. A pesar de los malos presagios, el monarca decide plantar cara a Jerjes con sólo 300 valientes espartanos. ', 2012, 1)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (3, N'3 dias para matar', 180, N'Ethan Renner es un veterano agente de inteligencia que ha dedicado toda su vida a servir a su país. Sin embargo, a medida que se iba labrando una importante carrera como espía internacional, fue distanciándose paulatinamente de su mujer y de su hija para evitar que corrieran ningún peligro. Ahora ha llegado el momento de jubilarse y de volver a convertirse en el padre que nunca fue, pero antes tiene que dar caza al terrorista más sanguinario del mundo mientras cuida de su hija adolescente.', 2000, 2)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (4, N'Al borde del abismo
', 149, N'El ex oficial de policía, Nick Cassidy, se encuentra encaramado en la cornisa de un céntrico hotel de Nueva York y amenaza con lanzarse al vacío. Este convicto, que acaba de escaparse de una prisión, sostiene su inocencia ante los agentes encargados del caso, a pesar de las irrefutables pruebas que le acusan como culpable de homicidio. Mientras toda la atención policial y mediática se vuelca en Cassidy, un grupo de ladrones está cometiendo un espectacular robo en un banco de Manhattan.', 2009, 5)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (5, N'Al fin, solos', 159, N'Una comedia romantica de una pareja con dificultades de comunicacion.', 2007, 3)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (6, N'Adicto a la velocidad
', 170, N'Un hombre con pasion por los coches se jugara la vida en una carrera.', 2009, 1)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (7, N'Adios Birdie
', 170, N'El adios a Birdie es mas complicado de lo que el pensaba.', 2017, 4)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (8, N'Perros rescatistas', 180, N'Perros rescatan gente en un terremoto.', 2009, 6)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (9, N'El hamster loco', 205, N'Un hamster se vuelve loco al probar una galleta radioactiva, nuestros protagonistas tendran que defender la ciudad de las temibles garras del ahora hamster radioactiva gigante mutante espacial de 5 patas y 6 cabezas.', 2017, 7)
INSERT [dbo].[Pelicula] ([id_Pelicula], [Nombre], [Duracion], [Descripcion], [Año], [Categoria]) VALUES (10, N'El perro loco', 200, N'Secuela del hamster loco pero ahora con un perro.', 2017, 7)

INSERT [dbo].[Rentas] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (1, CAST(0x493C0B00 AS Date), CAST(0x4D3C0B00 AS Date), 1, 1)
INSERT [dbo].[Rentas] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (2, CAST(0x4A3C0B00 AS Date), CAST(0x4B3C0B00 AS Date), 2, 2)
INSERT [dbo].[Rentas] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (3, CAST(0x693C0B00 AS Date), CAST(0x6C3C0B00 AS Date), 3, 3)
INSERT [dbo].[Rentas] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (4, CAST(0x863C0B00 AS Date), CAST(0x893C0B00 AS Date), 4, 4)
INSERT [dbo].[Rentas] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (5, CAST(0xC53C0B00 AS Date), CAST(0xC73C0B00 AS Date), 5, 5)







--FUNCIONES AGREGADAS

--Peliculas largas
Select COUNT(Nombre) from Pelicula
where Duracion > 200
GO
--Promedio de duracion de peliculas
Select AVG(Duracion) from Pelicula
GO




--VISTAS Y JOINS
--Peliculas disponibles
Create view PelisDisponibles AS
SELECT Pelicula.id_Pelicula, Inventario.Pelicula, Inventario.Disponible
FROM Pelicula
INNER JOIN Inventario ON Pelicula.id_Pelicula = Inventario.Pelicula;
GO

Select * from PelisDisponibles
GO

--Categoria de Peliculas
Create view PeliculaCategoria AS
SELECT Categoria.id_Categoria, Categoria.Nombre as Categoria, Pelicula.Nombre
FROM Categoria
INNER JOIN Pelicula ON Categoria.id_Categoria = Pelicula.Categoria;
GO

Select * from PeliculaCategoria
GO

--Inventario total
Create View InventarioTotal AS
Select Count(id_Inventario) as 'Productos en Inventario'
	From Inventario
	group by Disponible
	having Count(id_Inventario) > 5
GO

Select * from InventarioTotal
GO

--Clientes y Direcciones
Create view Direcciones AS
SELECT Cliente.id_Cliente, Cliente.Nombre, Direccion.Direccion, Direccion.Ciudad, Direccion.Pais
FROM Direccion
INNER JOIN Cliente ON Direccion.id_Direccion = Cliente.Direccion;
GO
Select * from Direcciones
GO

--Tabla temporal de PeliculaCategoria
select *
into #TIAP
from PeliculaCategoria
GO

Select * from #TIAP
GO






--CREACION DE TRIGGERS

--Update Cliente
CREATE TRIGGER trg_updcliente ON dbo.Cliente
AFTER UPDATE AS
BEGIN 
	UPDATE dbo.Cliente
	SET Nombre = cl.Nombre
	FROM dbo.Cliente as cl
END
GO

--Trigger para que no se permita actualizar el id de la tabla Cliente
CREATE TRIGGER trg_updid ON dbo.Cliente
AFTER UPDATE AS
BEGIN
	IF ((Select Count(*) FROM inserted )> 1)
	ROLLBACK TRAN
	IF EXISTS (SELECT * From inserted
		Left outer join deleted
		on inserted.id_Cliente = deleted.id_Cliente
		WHERE Deleted.id_Cliente IS NULL)
	ROLLBACK TRAN
END
GO

--Entonces si usamos el siguiente comando veremos que nos marca un error por el trigger trg_updid
UPDATE Cliente SET id_Cliente = 1
Where id_Cliente = 2


--Triger para insertar Clientes
CREATE TRIGGER trg_InsertCliente
on dbo.Cliente
After insert as
	Begin
	Insert into dbo.Cliente
	Select * from inserted
	END
GO


--Trigger para eliminar clientes
CREATE TRIGGER trg_DelCliente
ON dbo.Cliente
After delete as
	Begin
	Select * from deleted
	END
GO


--Trigger para eliminar Peliculas
CREATE TRIGGER trg_DelPelicula ON dbo.Pelicula
After delete as
	Begin
	IF ((Select COUNT(*) FROM deleted) > 1)
	ROLLBACK TRAN
	END
GO


--Trigger para eliminar Categorias
CREATE TRIGGER trg_DelCat
ON dbo.Categoria
AFTER DELETE AS
	BEGIN
		ROLLBACK TRAN
	END
GO



DROP TRIGGER trg_DelCat
GO


--Cuando se borre una categoria nos dira que no esta permitido
CREATE TRIGGER trg_DelCat
ON dbo.Categoria
Instead of delete as
	Begin
		Print 'No se permite borrar categorias'
	END
GO


--Trigger que no permite hacer cambios en la tabla categoria
CREATE TRIGGER trg_InsCategoria
ON dbo.Categoria
INSTEAD OF INSERT, DELETE, UPDATE AS
	BEGIN
		Print 'No se permite hacer cambios en la tabla categoria'
	END
GO


--Aviso cuando se cree una nueva tabla
CREATE TRIGGER trg_TablasNuevas
ON DATABASE FOR CREATE_TABLE
AS
	Begin
		Print 'Seguro que quieres crear una nueva tabla?'
	END
GO


--Aviso cuando se esten borrando tablas
CREATE TRIGGER trg_BorrandoTablas
ON DATABASE FOR DROP_TABLE
AS
	BEGIN
		Print 'Seguro que quieres borrar la tabla?'
	END
GO



ALTER TRIGGER trg_TablasNuevas
ON DATABASE FOR CREATE_TABLE
AS
	BEGIn
		DECLARE @MessageAction VARCHAR (MAX)
		SET @MessageAction = CAST(EVENTDATA() AS varchar (MAX))
		IF(CHARINDEX('Slax',@MessageAction ,0) >0)
		ROLLBACK
	END
GO







--PROCEDURES


--Procedure de Clientes
CREATE PROCEDURE spClientes
AS
    SET NOCOUNT ON;
    SELECT id_Cliente, Nombre, Apellidos, Fecha_Nac, Direccion
    FROM Cliente;
GO

EXEC /*O EXECUTE*/ spClientes;
GO


--Procedure de Rentas
CREATE PROCEDURE spRentas
    @id_Renta int, 
    @Fecha_Renta Date

AS 
    SET NOCOUNT ON;
    SELECT *
    FROM Rentas
    WHERE id_Renta = @id_Renta AND Fecha_Renta = @Fecha_Renta;
GO

EXECUTE spRentas N'1', N'2017-01-01';
GO


