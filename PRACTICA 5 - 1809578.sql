USE [master]
GO
/****** Object:  Database [Autobuses]    Script Date: 27/04/2019 03:02:35 a. m. ******/
CREATE DATABASE [Autobuses]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Autobuses', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Autobuses.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Autobuses_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Autobuses_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Autobuses] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Autobuses].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Autobuses] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Autobuses] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Autobuses] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Autobuses] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Autobuses] SET ARITHABORT OFF 
GO
ALTER DATABASE [Autobuses] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Autobuses] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Autobuses] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Autobuses] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Autobuses] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Autobuses] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Autobuses] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Autobuses] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Autobuses] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Autobuses] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Autobuses] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Autobuses] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Autobuses] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Autobuses] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Autobuses] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Autobuses] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Autobuses] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Autobuses] SET RECOVERY FULL 
GO
ALTER DATABASE [Autobuses] SET  MULTI_USER 
GO
ALTER DATABASE [Autobuses] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Autobuses] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Autobuses] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Autobuses] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Autobuses] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Autobuses', N'ON'
GO
ALTER DATABASE [Autobuses] SET QUERY_STORE = OFF
GO
USE [Autobuses]
GO
/****** Object:  Table [dbo].[Asiento]    Script Date: 27/04/2019 03:02:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[iIdAsiento] [int] NULL,
	[iIdSituacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 27/04/2019 03:02:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[iIdAutobus] [int] NULL,
	[vMarca] [varchar](50) NULL,
	[iModelo] [int] NULL,
	[tCantidadPasajeros] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 27/04/2019 03:02:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[iIdBoleto] [int] NULL,
	[iIdViaje] [int] NULL,
	[iIdAsiento] [int] NULL,
	[iIdPrecio] [int] NULL,
	[iIdCodigo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 27/04/2019 03:02:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[iIdChofer] [int] NULL,
	[iIdAutobus] [int] NULL,
	[iIdEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 27/04/2019 03:02:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[iIdCiudad] [int] NULL,
	[vNombCiudad] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codigo]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codigo](
	[iIdCodigo] [int] NULL,
	[uCodigo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino](
	[iIdDestino] [int] NULL,
	[vDestino] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[iIdEmpleado] [int] NULL,
	[vNombEmpleado] [varchar](50) NULL,
	[vApPat] [varchar](50) NULL,
	[vApMat] [varchar](50) NULL,
	[tEdadEmp] [int] NULL,
	[Puesto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[iIdEmpleado] [int] NOT NULL,
	[vNomEm] [varchar](50) NOT NULL,
	[vApPat] [varchar](50) NOT NULL,
	[vApMat] [varchar](50) NOT NULL,
	[tEdadEmp] [tinyint] NOT NULL,
	[iIdPuesto] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[iIdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoV]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoV](
	[iIdEstado] [int] NULL,
	[vEstadoV] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origen]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origen](
	[iIdOrigen] [int] NULL,
	[vOrigen] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[iIdPago] [int] NULL,
	[vTipoPago] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[iIdPasajero] [int] NULL,
	[vNombPas] [varchar](50) NULL,
	[vApPatPas] [varchar](50) NULL,
	[vApMatPas] [varchar](50) NULL,
	[iEdadPas] [int] NULL,
	[iIdTipoPasajero] [int] NULL,
	[iIdVenta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasajeroBol]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasajeroBol](
	[iIdPasajeroBol] [int] NULL,
	[iIdPasajero] [int] NULL,
	[iIdBoleto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[iIdPrecio] [int] NULL,
	[mPrecio] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[iIdPuesto] [int] NULL,
	[vPuesto] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[iIdRuta] [int] NULL,
	[iIdOrigen] [int] NULL,
	[iIdDestino] [int] NULL,
	[tTiempoEstimado] [time](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SituacionAsi]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SituacionAsi](
	[iIdSituacionAsi] [int] NULL,
	[vSituacionA] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPasajero]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPasajero](
	[iIdTipoPasajero] [int] NULL,
	[vTipoPas] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[iIdVenta] [int] NULL,
	[iIdEmpleado] [int] NULL,
	[iIdPago] [int] NULL,
	[iIdPrecio] [int] NULL,
	[mTotal] [money] NULL,
	[dFecha] [date] NULL,
	[tHora] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 27/04/2019 03:02:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viaje](
	[iIdViaje] [int] NULL,
	[iIdRuta] [int] NULL,
	[iIdChofer] [int] NULL,
	[dFechaS] [date] NULL,
	[iIdEstadoV] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_Chofer_Empleados] FOREIGN KEY([iIdEmpleado])
REFERENCES [dbo].[Empleados] ([iIdEmpleado])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_Chofer_Empleados]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleados] FOREIGN KEY([iIdEmpleado])
REFERENCES [dbo].[Empleados] ([iIdEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleados]
GO
USE [master]
GO
ALTER DATABASE [Autobuses] SET  READ_WRITE 
GO
