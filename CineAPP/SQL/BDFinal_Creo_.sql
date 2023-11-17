USE [master]
GO
/****** Object:  Database [TP_LABORATORIO22]    Script Date: 17/11/2023 14:02:04 ******/
CREATE DATABASE [TP_LABORATORIO22]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP_LABORATORIO22', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TP_LABORATORIO22.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP_LABORATORIO22_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TP_LABORATORIO22_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TP_LABORATORIO22] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP_LABORATORIO22].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP_LABORATORIO22] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TP_LABORATORIO22] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP_LABORATORIO22] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP_LABORATORIO22] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TP_LABORATORIO22] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP_LABORATORIO22] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TP_LABORATORIO22] SET  MULTI_USER 
GO
ALTER DATABASE [TP_LABORATORIO22] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP_LABORATORIO22] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP_LABORATORIO22] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP_LABORATORIO22] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP_LABORATORIO22] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TP_LABORATORIO22] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TP_LABORATORIO22] SET QUERY_STORE = ON
GO
ALTER DATABASE [TP_LABORATORIO22] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TP_LABORATORIO22]
GO
/****** Object:  Table [dbo].[Actores]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actores](
	[id_actor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [PK_ACTORES] PRIMARY KEY CLUSTERED 
(
	[id_actor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Butacas]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Butacas](
	[id_Butaca] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[estado] [varchar](20) NULL,
	[fila] [varchar](20) NULL,
	[columna] [int] NULL,
 CONSTRAINT [pk_id_butaca] PRIMARY KEY CLUSTERED 
(
	[id_Butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASIFICACIONES_PELICULAS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASIFICACIONES_PELICULAS](
	[id_clasificacion] [int] IDENTITY(1,1) NOT NULL,
	[edad] [int] NULL,
 CONSTRAINT [pk_clasificacion] PRIMARY KEY CLUSTERED 
(
	[id_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPROBANTES]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPROBANTES](
	[id_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[id_forma_pago] [int] NULL,
	[Total] [decimal](10, 2) NULL,
	[id_descuento] [int] NULL,
 CONSTRAINT [pk_comprobante] PRIMARY KEY CLUSTERED 
(
	[id_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESCUENTOS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESCUENTOS](
	[id_descuento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[porcentaje] [float] NULL,
 CONSTRAINT [pk_descuento] PRIMARY KEY CLUSTERED 
(
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIRECTORES]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIRECTORES](
	[id_director] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[apellido] [varchar](30) NULL,
	[edad] [int] NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [pk_id_director] PRIMARY KEY CLUSTERED 
(
	[id_director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formas_pago]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formas_pago](
	[id_forma_pago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NULL,
 CONSTRAINT [pk_forma_pago] PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONES]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONES](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[id_sala] [int] NULL,
	[Fecha] [date] NULL,
	[Horario_Inicio] [time](7) NULL,
	[Horario_Fin] [time](7) NULL,
 CONSTRAINT [pk_id_funcion] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENEROS_PELICULAS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENEROS_PELICULAS](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](50) NULL,
 CONSTRAINT [pk_genero] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[id_pais] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
 CONSTRAINT [PK_PAIS] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULAS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[id_genero] [int] NULL,
	[id_clasificacion] [int] NULL,
	[id_productora] [int] NULL,
	[id_director] [int] NULL,
	[titulo] [varchar](60) NULL,
	[duracion] [int] NULL,
	[fecha_estreno] [datetime] NULL,
 CONSTRAINT [pk_pelicula] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productoras]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productoras](
	[id_productora] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [PK_PRODUCTORAS] PRIMARY KEY CLUSTERED 
(
	[id_productora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPARTO_PELICULA]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPARTO_PELICULA](
	[id_pelicula] [int] NOT NULL,
	[id_actor] [int] NOT NULL,
 CONSTRAINT [pk_reparto_pelicula] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC,
	[id_actor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[id_comprobante] [int] NULL,
	[estado] [varchar](20) NULL,
 CONSTRAINT [PK_RESERVAS] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[id_Sala] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NULL,
	[id_Tipo] [int] NULL,
	[Capacidad] [int] NULL,
	[Pre_unit] [money] NULL,
 CONSTRAINT [pk_id_Sala] PRIMARY KEY CLUSTERED 
(
	[id_Sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKETS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKETS](
	[id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[id_comprobante] [int] NULL,
	[id_butaca] [int] NULL,
 CONSTRAINT [pk_ticket] PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Sala]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Sala](
	[id_Tipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NULL,
 CONSTRAINT [pk_idTipo] PRIMARY KEY CLUSTERED 
(
	[id_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actores] ON 

INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (1, N'Leonardo', N'DiCaprio', 1)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (2, N'Tom', N'Hardy', 1)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (3, N'Brad', N'Pitt', 2)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (4, N'Margot', N'Robbie', 2)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (5, N'Ricardo', N'Darín', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (6, N'Érica', N'Rivas', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (7, N'Leonardo', N'Sbaraglia', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (8, N'Oscar', N'Martínez', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (9, N'Guillermo', N'Francella', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (10, N'Pablo', N'Rago', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (11, N'Gastón', N'Pauls', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (12, N'Leticia', N'Brédice', 3)
INSERT [dbo].[Actores] ([id_actor], [nombre], [apellido], [id_pais]) VALUES (13, N'Tomás', N'Fonzi', 3)
SET IDENTITY_INSERT [dbo].[Actores] OFF
GO
SET IDENTITY_INSERT [dbo].[Butacas] ON 

INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (1, 1, N'ocupada', N'A', 1)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (2, 2, N'ocupada', N'B', 3)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (3, 3, N'ocupada', N'C', 5)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (4, 4, N'ocupada', N'D', 2)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (5, 5, N'ocupada', N'E', 8)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (6, 6, N'ocupada', N'A', 9)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (7, 1, N'ocupada', N'B', 7)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (8, 2, N'ocupada', N'C', 4)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (9, 3, N'ocupada', N'D', 10)
INSERT [dbo].[Butacas] ([id_Butaca], [id_funcion], [estado], [fila], [columna]) VALUES (10, 4, N'ocupada', N'E', 6)
SET IDENTITY_INSERT [dbo].[Butacas] OFF
GO
SET IDENTITY_INSERT [dbo].[CLASIFICACIONES_PELICULAS] ON 

INSERT [dbo].[CLASIFICACIONES_PELICULAS] ([id_clasificacion], [edad]) VALUES (1, 12)
INSERT [dbo].[CLASIFICACIONES_PELICULAS] ([id_clasificacion], [edad]) VALUES (2, 18)
INSERT [dbo].[CLASIFICACIONES_PELICULAS] ([id_clasificacion], [edad]) VALUES (3, 8)
INSERT [dbo].[CLASIFICACIONES_PELICULAS] ([id_clasificacion], [edad]) VALUES (4, 21)
INSERT [dbo].[CLASIFICACIONES_PELICULAS] ([id_clasificacion], [edad]) VALUES (5, 0)
SET IDENTITY_INSERT [dbo].[CLASIFICACIONES_PELICULAS] OFF
GO
SET IDENTITY_INSERT [dbo].[COMPROBANTES] ON 

INSERT [dbo].[COMPROBANTES] ([id_comprobante], [id_forma_pago], [Total], [id_descuento]) VALUES (1, 1, CAST(3000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[COMPROBANTES] ([id_comprobante], [id_forma_pago], [Total], [id_descuento]) VALUES (2, 2, CAST(3200.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[COMPROBANTES] ([id_comprobante], [id_forma_pago], [Total], [id_descuento]) VALUES (3, 3, CAST(6400.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[COMPROBANTES] ([id_comprobante], [id_forma_pago], [Total], [id_descuento]) VALUES (4, 4, CAST(6000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[COMPROBANTES] ([id_comprobante], [id_forma_pago], [Total], [id_descuento]) VALUES (5, 1, CAST(6000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[COMPROBANTES] ([id_comprobante], [id_forma_pago], [Total], [id_descuento]) VALUES (7, 3, CAST(6400.00 AS Decimal(10, 2)), NULL)
SET IDENTITY_INSERT [dbo].[COMPROBANTES] OFF
GO
SET IDENTITY_INSERT [dbo].[DESCUENTOS] ON 

INSERT [dbo].[DESCUENTOS] ([id_descuento], [descripcion], [porcentaje]) VALUES (1, N'Menor', 25)
INSERT [dbo].[DESCUENTOS] ([id_descuento], [descripcion], [porcentaje]) VALUES (2, N'Jubilado', 50)
INSERT [dbo].[DESCUENTOS] ([id_descuento], [descripcion], [porcentaje]) VALUES (3, N'Estudiante', 15)
SET IDENTITY_INSERT [dbo].[DESCUENTOS] OFF
GO
SET IDENTITY_INSERT [dbo].[DIRECTORES] ON 

INSERT [dbo].[DIRECTORES] ([id_director], [nombre], [apellido], [edad], [id_pais]) VALUES (1, N'Christopher', N'Nolan', 50, 1)
INSERT [dbo].[DIRECTORES] ([id_director], [nombre], [apellido], [edad], [id_pais]) VALUES (2, N'Quentin', N'Tarantino', 58, 2)
INSERT [dbo].[DIRECTORES] ([id_director], [nombre], [apellido], [edad], [id_pais]) VALUES (3, N'Fabián', N'Bielinsky', 64, 3)
INSERT [dbo].[DIRECTORES] ([id_director], [nombre], [apellido], [edad], [id_pais]) VALUES (4, N'Juan José', N'Campanella', 64, 3)
INSERT [dbo].[DIRECTORES] ([id_director], [nombre], [apellido], [edad], [id_pais]) VALUES (5, N'Damián', N'Szifron', 48, 3)
SET IDENTITY_INSERT [dbo].[DIRECTORES] OFF
GO
SET IDENTITY_INSERT [dbo].[Formas_pago] ON 

INSERT [dbo].[Formas_pago] ([id_forma_pago], [descripcion]) VALUES (1, N'Efectivo')
INSERT [dbo].[Formas_pago] ([id_forma_pago], [descripcion]) VALUES (2, N'Tarjeta de credito')
INSERT [dbo].[Formas_pago] ([id_forma_pago], [descripcion]) VALUES (3, N'Tarjeta de debito')
INSERT [dbo].[Formas_pago] ([id_forma_pago], [descripcion]) VALUES (4, N'Transferencia')
SET IDENTITY_INSERT [dbo].[Formas_pago] OFF
GO
SET IDENTITY_INSERT [dbo].[FUNCIONES] ON 

INSERT [dbo].[FUNCIONES] ([id_funcion], [id_pelicula], [id_sala], [Fecha], [Horario_Inicio], [Horario_Fin]) VALUES (1, 1, 1, CAST(N'2023-11-15' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time))
INSERT [dbo].[FUNCIONES] ([id_funcion], [id_pelicula], [id_sala], [Fecha], [Horario_Inicio], [Horario_Fin]) VALUES (2, 2, 1, CAST(N'2023-11-16' AS Date), CAST(N'19:00:00' AS Time), CAST(N'21:30:00' AS Time))
INSERT [dbo].[FUNCIONES] ([id_funcion], [id_pelicula], [id_sala], [Fecha], [Horario_Inicio], [Horario_Fin]) VALUES (3, 3, 2, CAST(N'2023-11-17' AS Date), CAST(N'20:00:00' AS Time), CAST(N'22:30:00' AS Time))
INSERT [dbo].[FUNCIONES] ([id_funcion], [id_pelicula], [id_sala], [Fecha], [Horario_Inicio], [Horario_Fin]) VALUES (4, 8, 1, CAST(N'2023-11-17' AS Date), CAST(N'20:00:00' AS Time), CAST(N'22:30:00' AS Time))
INSERT [dbo].[FUNCIONES] ([id_funcion], [id_pelicula], [id_sala], [Fecha], [Horario_Inicio], [Horario_Fin]) VALUES (5, 6, 2, CAST(N'2023-11-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'18:30:00' AS Time))
INSERT [dbo].[FUNCIONES] ([id_funcion], [id_pelicula], [id_sala], [Fecha], [Horario_Inicio], [Horario_Fin]) VALUES (6, 7, 1, CAST(N'2023-11-18' AS Date), CAST(N'16:00:00' AS Time), CAST(N'18:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[FUNCIONES] OFF
GO
SET IDENTITY_INSERT [dbo].[GENEROS_PELICULAS] ON 

INSERT [dbo].[GENEROS_PELICULAS] ([id_genero], [genero]) VALUES (1, N'Acción')
INSERT [dbo].[GENEROS_PELICULAS] ([id_genero], [genero]) VALUES (2, N'Drama')
INSERT [dbo].[GENEROS_PELICULAS] ([id_genero], [genero]) VALUES (3, N'Comedia')
INSERT [dbo].[GENEROS_PELICULAS] ([id_genero], [genero]) VALUES (4, N'Ciencia Ficción')
INSERT [dbo].[GENEROS_PELICULAS] ([id_genero], [genero]) VALUES (5, N'Crimen')
SET IDENTITY_INSERT [dbo].[GENEROS_PELICULAS] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([id_pais], [nombre]) VALUES (1, N'Estados Unidos')
INSERT [dbo].[Paises] ([id_pais], [nombre]) VALUES (2, N'Reino Unido')
INSERT [dbo].[Paises] ([id_pais], [nombre]) VALUES (3, N'Argentina')
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET IDENTITY_INSERT [dbo].[PELICULAS] ON 

INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (1, 1, 1, 1, 1, N'Inception', 150, CAST(N'2010-07-16T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (2, 1, 1, 1, 2, N'The Dark Knight', 152, CAST(N'2008-07-18T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (3, 2, 2, 2, 1, N'Pulp Fiction', 154, CAST(N'1994-10-14T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (4, 2, 2, 2, 2, N'Once Upon a Time in Hollywood', 161, CAST(N'2019-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (5, 1, 1, 1, 1, N'Interstellar', 169, CAST(N'2014-11-07T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (6, 3, 2, 5, 3, N'Nueve Reinas', 115, CAST(N'2000-08-31T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (7, 5, 2, 4, 4, N'El secreto de sus ojos', 127, CAST(N'2009-08-13T00:00:00.000' AS DateTime))
INSERT [dbo].[PELICULAS] ([id_pelicula], [id_genero], [id_clasificacion], [id_productora], [id_director], [titulo], [duracion], [fecha_estreno]) VALUES (8, 3, 2, 4, 5, N'Relatos Salvajes', 122, CAST(N'2014-08-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PELICULAS] OFF
GO
SET IDENTITY_INSERT [dbo].[Productoras] ON 

INSERT [dbo].[Productoras] ([id_productora], [nombre], [id_pais]) VALUES (1, N'Warner Bros', 1)
INSERT [dbo].[Productoras] ([id_productora], [nombre], [id_pais]) VALUES (2, N'Universal Pictures', 2)
INSERT [dbo].[Productoras] ([id_productora], [nombre], [id_pais]) VALUES (3, N'Kramer & Sigman Films', 3)
INSERT [dbo].[Productoras] ([id_productora], [nombre], [id_pais]) VALUES (4, N'Telefe', 3)
INSERT [dbo].[Productoras] ([id_productora], [nombre], [id_pais]) VALUES (5, N'Patagonik Film', 3)
SET IDENTITY_INSERT [dbo].[Productoras] OFF
GO
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (1, 1)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (1, 2)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (1, 3)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (1, 4)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (2, 1)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (2, 2)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (2, 3)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (2, 4)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (3, 1)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (3, 2)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (3, 3)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (3, 4)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (4, 1)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (4, 2)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (4, 3)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (4, 4)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (5, 1)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (5, 2)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (5, 3)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (5, 4)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (6, 5)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (6, 11)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (6, 12)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (6, 13)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (7, 5)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (7, 9)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (7, 10)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (8, 5)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (8, 6)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (8, 7)
INSERT [dbo].[REPARTO_PELICULA] ([id_pelicula], [id_actor]) VALUES (8, 8)
GO
SET IDENTITY_INSERT [dbo].[Reservas] ON 

INSERT [dbo].[Reservas] ([id_reserva], [id_comprobante], [estado]) VALUES (1, 1, N'Pagado')
INSERT [dbo].[Reservas] ([id_reserva], [id_comprobante], [estado]) VALUES (2, 5, N'Pagado')
INSERT [dbo].[Reservas] ([id_reserva], [id_comprobante], [estado]) VALUES (3, 7, N'Pagado')
INSERT [dbo].[Reservas] ([id_reserva], [id_comprobante], [estado]) VALUES (4, 4, N'Pagado')
SET IDENTITY_INSERT [dbo].[Reservas] OFF
GO
SET IDENTITY_INSERT [dbo].[Salas] ON 

INSERT [dbo].[Salas] ([id_Sala], [descripcion], [id_Tipo], [Capacidad], [Pre_unit]) VALUES (1, N'Sala 1', 1, 50, 3000.0000)
INSERT [dbo].[Salas] ([id_Sala], [descripcion], [id_Tipo], [Capacidad], [Pre_unit]) VALUES (2, N'Sala 2', 2, 20, 3200.0000)
SET IDENTITY_INSERT [dbo].[Salas] OFF
GO
SET IDENTITY_INSERT [dbo].[TICKETS] ON 

INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (1, 1, 1, 1)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (2, 1, 1, 1)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (3, 2, 2, 2)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (4, 3, 3, 3)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (5, 4, 4, 4)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (6, 4, 4, 5)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (7, 5, 5, 6)
INSERT [dbo].[TICKETS] ([id_ticket], [id_funcion], [id_comprobante], [id_butaca]) VALUES (8, 5, 5, 7)
SET IDENTITY_INSERT [dbo].[TICKETS] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipos_Sala] ON 

INSERT [dbo].[Tipos_Sala] ([id_Tipo], [descripcion]) VALUES (1, N'Regular')
INSERT [dbo].[Tipos_Sala] ([id_Tipo], [descripcion]) VALUES (2, N'VIP')
SET IDENTITY_INSERT [dbo].[Tipos_Sala] OFF
GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_ACTORES_PAISES] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_ACTORES_PAISES]
GO
ALTER TABLE [dbo].[Butacas]  WITH CHECK ADD  CONSTRAINT [fk_funcion_B] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[FUNCIONES] ([id_funcion])
GO
ALTER TABLE [dbo].[Butacas] CHECK CONSTRAINT [fk_funcion_B]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [fk_comprobante_descuento] FOREIGN KEY([id_descuento])
REFERENCES [dbo].[DESCUENTOS] ([id_descuento])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [fk_comprobante_descuento]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [fk_comprobante_pagos] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[Formas_pago] ([id_forma_pago])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [fk_comprobante_pagos]
GO
ALTER TABLE [dbo].[DIRECTORES]  WITH CHECK ADD  CONSTRAINT [fk_id_pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[DIRECTORES] CHECK CONSTRAINT [fk_id_pais]
GO
ALTER TABLE [dbo].[FUNCIONES]  WITH CHECK ADD  CONSTRAINT [fk_id_pelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULAS] ([id_pelicula])
GO
ALTER TABLE [dbo].[FUNCIONES] CHECK CONSTRAINT [fk_id_pelicula]
GO
ALTER TABLE [dbo].[FUNCIONES]  WITH CHECK ADD  CONSTRAINT [fk_id_sala] FOREIGN KEY([id_sala])
REFERENCES [dbo].[Salas] ([id_Sala])
GO
ALTER TABLE [dbo].[FUNCIONES] CHECK CONSTRAINT [fk_id_sala]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [fk_clasificacion_p] FOREIGN KEY([id_clasificacion])
REFERENCES [dbo].[CLASIFICACIONES_PELICULAS] ([id_clasificacion])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [fk_clasificacion_p]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [fk_director_pelicula] FOREIGN KEY([id_director])
REFERENCES [dbo].[DIRECTORES] ([id_director])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [fk_director_pelicula]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [fk_genero_p] FOREIGN KEY([id_genero])
REFERENCES [dbo].[GENEROS_PELICULAS] ([id_genero])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [fk_genero_p]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [fk_productora_p] FOREIGN KEY([id_productora])
REFERENCES [dbo].[Productoras] ([id_productora])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [fk_productora_p]
GO
ALTER TABLE [dbo].[Productoras]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTORA_PAIS] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Productoras] CHECK CONSTRAINT [FK_PRODUCTORA_PAIS]
GO
ALTER TABLE [dbo].[REPARTO_PELICULA]  WITH CHECK ADD  CONSTRAINT [fk_id_actor] FOREIGN KEY([id_actor])
REFERENCES [dbo].[Actores] ([id_actor])
GO
ALTER TABLE [dbo].[REPARTO_PELICULA] CHECK CONSTRAINT [fk_id_actor]
GO
ALTER TABLE [dbo].[REPARTO_PELICULA]  WITH CHECK ADD  CONSTRAINT [fk_reparto_pelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULAS] ([id_pelicula])
GO
ALTER TABLE [dbo].[REPARTO_PELICULA] CHECK CONSTRAINT [fk_reparto_pelicula]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_RESERVAS_COMPROBANTES] FOREIGN KEY([id_comprobante])
REFERENCES [dbo].[COMPROBANTES] ([id_comprobante])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_RESERVAS_COMPROBANTES]
GO
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [fk_idTipo_ts] FOREIGN KEY([id_Tipo])
REFERENCES [dbo].[Tipos_Sala] ([id_Tipo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [fk_idTipo_ts]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [fk_ticket_butaca] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[Butacas] ([id_Butaca])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [fk_ticket_butaca]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [fk_ticket_comprobante] FOREIGN KEY([id_comprobante])
REFERENCES [dbo].[COMPROBANTES] ([id_comprobante])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [fk_ticket_comprobante]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [fk_ticket_funcion] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[FUNCIONES] ([id_funcion])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [fk_ticket_funcion]
GO
/****** Object:  StoredProcedure [dbo].[sp_arg]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_arg]
@anio int
as
select pe.titulo 'Titulo', year(pe.fecha_estreno) 'Año estreno', pr.nombre 'Productora', pa.nombre 'Pais de origen'
from PELICULAS pe
join Productoras pr on pe.id_productora = pr.id_productora
join Paises pa on pa.id_pais = pr.id_pais
where year(fecha_estreno) >= @anio
and pa.nombre = 'Argentina'
and 2 <= (select count(*)
 from TICKETS t
 join FUNCIONES f on t.id_funcion = f.id_funcion
 join PELICULAS p on p.id_pelicula = f.id_pelicula
 where pe.id_pelicula = p.id_pelicula)
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_PELICULAS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCAR_PELICULAS]
@titulo varchar(20) = null,
@añoEstreno int= null,
@id_Genero int =null


as 
begin 

  SELECT    P.id_pelicula  PeliculasID,
            P.titulo  PeliculaTitulo,
            P.duracion  PeliculaDuracion,
              P.fecha_estreno  PeliculaEstreno,

            G.id_genero  GeneroID,
            G.genero  GeneroDescripcion,

            C.id_clasificacion  CalificacionID,
            C.edad  CalificacionEdad,

            PR.id_productora  ProductoraID,
            PR.nombre  ProductoraNombre


    FROM PELICULAS  P
    JOIN GENEROS_PELICULAS G ON P.id_genero = G.id_genero
    JOIN CLASIFICACIONES_PELICULAS  C ON P.id_clasificacion = C.id_clasificacion
    JOIN PRODUCTORAS PR ON P.id_productora = PR.id_productora

    WHERE 
            (P.titulo LIKE '%' + @titulo + '%' OR @titulo IS NULL)
        and (@id_Genero=P.id_genero OR @id_Genero IS NULL)
         and( @añoEstreno=year(P.fecha_estreno)  OR @añoEstreno IS NULL);
        end
GO
/****** Object:  StoredProcedure [dbo].[sp_gen_por_anio]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_gen_por_anio]
@aniomin int,
@aniomax int,
@genero varchar(30)
as
select apellido, nombre, year(fecha_estreno) 'año' , 'Actor' clasificación
from peliculas p 
join REPARTO_PELICULA r on r.id_pelicula = p.id_pelicula
join actores a on r.id_actor = a.id_actor
join GENEROS_PELICULAS g on g.id_genero = p.id_genero
where year(fecha_estreno) between @aniomin and @aniomax
and genero = @genero
union
select apellido, nombre, year(fecha_estreno) 'año' , 'Director' clasificación
from peliculas p 
join DIRECTORES d on d.id_director = p.id_director
join GENEROS_PELICULAS g on g.id_genero = p.id_genero
where year(fecha_estreno) between @aniomin and @aniomax
and genero = @genero
order by 4, 1, 3 desc 
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_FUNCIONES]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GET_FUNCIONES]
@fecha date
as
begin
select f.id_funcion Id_Funcion, Horario_Inicio Inicio, Horario_Fin Fin, 
	f.id_sala Id_Sala, s.descripcion Sala, s.Capacidad Capacidad, Pre_unit Pre_Unit, s.id_Tipo Id_Tipo_Sala, ts.descripcion Tipo_Sala,
	f.id_pelicula Id_Pelicula, titulo Titulo, duracion Duracion, fecha_estreno Fecha_Estreno,
	p.id_genero Id_Genero, genero Genero,
	p.id_clasificacion Id_Clasificacion, c.edad Edad_Clasf,
	p.id_productora Id_Productora, pr.nombre Productora, pr.id_pais Id_Pais_Productora,
	p.id_director Id_Director, di.nombre Nombre_Dir, di.apellido Ape_Dir, di.edad Edad_Dir, di.id_pais Id_Pais_Dir,
	pa.nombre Pais_Productora, pa2.nombre Pais_Director
from FUNCIONES f
	join PELICULAS p on p.id_pelicula = f.id_pelicula
	join Salas s on s.id_Sala = f.id_sala
	join Tipos_Sala ts on ts.id_Tipo = s.id_Tipo
	join GENEROS_PELICULAS g on g.id_genero = p.id_genero
	join CLASIFICACIONES_PELICULAS c on c.id_clasificacion = p.id_clasificacion
	join Productoras pr on pr.id_productora = p.id_productora
	join Paises pa on pa.id_pais = pr.id_pais
	join DIRECTORES di on di.id_director = p.id_director
	join Paises pa2 on pa2.id_pais = di.id_pais
	where Fecha = @fecha
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_GENEROS]    Script Date: 17/11/2023 14:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GET_GENEROS] as begin select *  from GENEROS_PELICULAS end
GO
USE [master]
GO
ALTER DATABASE [TP_LABORATORIO22] SET  READ_WRITE 
GO
