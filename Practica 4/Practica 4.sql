USE [master]
GO
/****** Object:  Database [RentaPeliculas]    Script Date: 27/10/2017 05:06:13 p. m. ******/
CREATE DATABASE [RentaPeliculas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentaPeliculas', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RentaPeliculas.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RentaPeliculas_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RentaPeliculas_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RentaPeliculas] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentaPeliculas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentaPeliculas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RentaPeliculas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RentaPeliculas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RentaPeliculas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RentaPeliculas] SET ARITHABORT OFF 
GO
ALTER DATABASE [RentaPeliculas] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RentaPeliculas] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [RentaPeliculas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentaPeliculas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentaPeliculas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentaPeliculas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RentaPeliculas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RentaPeliculas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentaPeliculas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RentaPeliculas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentaPeliculas] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RentaPeliculas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentaPeliculas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentaPeliculas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentaPeliculas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentaPeliculas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentaPeliculas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentaPeliculas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentaPeliculas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RentaPeliculas] SET  MULTI_USER 
GO
ALTER DATABASE [RentaPeliculas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentaPeliculas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentaPeliculas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentaPeliculas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [RentaPeliculas]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 27/10/2017 05:06:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[id_Categoria] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/10/2017 05:06:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_Cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Fecha_Nac] [date] NOT NULL,
	[Direccion] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 27/10/2017 05:06:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_Direccion] [int] NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 27/10/2017 05:06:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_Inventario] [int] NOT NULL,
	[Disponible] [bit] NOT NULL,
	[Pelicula] [int] NOT NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[id_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 27/10/2017 05:06:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[id_Pelicula] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Duracion] [float] NULL,
	[Descripcion] [text] NULL,
	[Año] [int] NULL,
	[Categoria] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Renta]    Script Date: 27/10/2017 05:06:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Renta](
	[id_Renta] [int] NOT NULL,
	[Fecha_Renta] [date] NOT NULL,
	[Fecha_Devolucion] [date] NOT NULL,
	[Cliente] [int] NOT NULL,
	[Inventario] [int] NOT NULL,
 CONSTRAINT [PK_Renta] PRIMARY KEY CLUSTERED 
(
	[id_Renta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
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
INSERT [dbo].[Renta] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (1, CAST(0x493C0B00 AS Date), CAST(0x4D3C0B00 AS Date), 1, 1)
INSERT [dbo].[Renta] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (2, CAST(0x4A3C0B00 AS Date), CAST(0x4B3C0B00 AS Date), 2, 2)
INSERT [dbo].[Renta] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (3, CAST(0x693C0B00 AS Date), CAST(0x6C3C0B00 AS Date), 3, 3)
INSERT [dbo].[Renta] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (4, CAST(0x863C0B00 AS Date), CAST(0x893C0B00 AS Date), 4, 4)
INSERT [dbo].[Renta] ([id_Renta], [Fecha_Renta], [Fecha_Devolucion], [Cliente], [Inventario]) VALUES (5, CAST(0xC53C0B00 AS Date), CAST(0xC73C0B00 AS Date), 5, 5)
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Direccion] FOREIGN KEY([Direccion])
REFERENCES [dbo].[Direccion] ([id_Direccion])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Direccion]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Pelicula] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Pelicula] ([id_Pelicula])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Pelicula]
GO
ALTER TABLE [dbo].[Renta]  WITH CHECK ADD  CONSTRAINT [FK_Renta_Cliente] FOREIGN KEY([Cliente])
REFERENCES [dbo].[Cliente] ([id_Cliente])
GO
ALTER TABLE [dbo].[Renta] CHECK CONSTRAINT [FK_Renta_Cliente]
GO
ALTER TABLE [dbo].[Renta]  WITH CHECK ADD  CONSTRAINT [FK_Renta_Inventario] FOREIGN KEY([Inventario])
REFERENCES [dbo].[Inventario] ([id_Inventario])
GO
ALTER TABLE [dbo].[Renta] CHECK CONSTRAINT [FK_Renta_Inventario]
GO
USE [master]
GO
ALTER DATABASE [RentaPeliculas] SET  READ_WRITE 
GO
