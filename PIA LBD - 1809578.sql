/*** PROF LA VERDAD BATALLE MUCHO CON EL PRODUCTO INTEGRADOR DE APRENDIZAJE Y TAMBIEN EL SQL ME FALLABA MUCHO (RAZON POR LA QUE TARDE EN SUBIR LAS ACTIVIDADES) 
Y TAMBIEN EL PIA NO ME SALIO COMO ESPERABA ***/

USE master
GO

CREATE DATABASE Autobuses

USE Autobuses

create function [dbo].[EstadoAutobuses](@estado varchar)
returns varchar (50)
as 
begin
declare @est int;
declare @cam varchar(50);
set @est=(select o.vEstadoV from EstadoV as o where o.vEstadoV=@estado);
if(@est=1)
begin 
set @cam='LLeno';
end
else if(@est=2)
begin 
set @cam='Ocupado';
end
else if(@est=3)
begin 
set @cam='En Camino';
end
return @cam
end

create function [dbo].[PuestoAutobuses](@puesto varchar)
returns varchar (50)
as 
begin
declare @pue int;
declare @op varchar(50);
set @pue=(select p.vPuesto from Puesto as p where p.vPuesto=@puesto);
if(@pue=1)
begin 
set @op='Conductor';
end
else if(@pue=2)
begin 
set @op='Cajero Casilla';
end
return @op
end

CREATE TABLE [dbo].[Ruta](
[iIdRuta] [int] NOT NULL,
[iIdOrigen] [int] NOT NULL,
[iIdDestino] [int] NOT NULL,
[tTiempoEstimado] [time](4) NOT NULL,
CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED (
[iIdRuta] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]

create view [dbo].[Rutas]
as 
select *from Ruta;

CREATE TABLE [dbo].[Viaje](
[iIdViaje] [int] NOT NULL,
[iIdRuta] [int] NOT NULL,
[iIdChofer] [int] NOT NULL,
[dFechaS] [date] NOT NULL,
[iIdEstadoV] [int] NOT NULL,
CONSTRAINT [PK_Viaje] PRIMARY KEY CLUSTERED (
	[iIdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Viajes]
as 
select *from Viaje

CREATE TABLE [dbo].[Boleto](
[iIdBoleto] [int] NOT NULL,
[iIdViaje] [int] NOT NULL,
[iIdAsiento] [int] NOT NULL,
[iIdPrecio] [int] NOT NULL,
[iIdCodigo] [int] NOT NULL,
CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED (
[iIdBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Boletos]
as 
select *from Boleto;
CREATE TABLE [dbo].[Pago](
[iIdPago] [int] NOT NULL,
[vTipoPago] [varchar](50) NOT NULL,
CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
[iIdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Pagos]
as 
select *from Pago;
CREATE TABLE [dbo].[Venta](
[iIdVenta] [int] NOT NULL,
[iIdEmpleado] [int] NOT NULL,
[iIdPago] [int] NOT NULL,
[iIdPrecio] [int] NOT NULL,
[mTotal] [money] NOT NULL,
[dFecha] [date] NOT NULL,
[tHora] [time](7) NOT NULL,
CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
[iIdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Ventas]
as 
select *from Venta;
CREATE TABLE [dbo].[TipoPasajero](
[iIdTipoPasajero] [int] NOT NULL,
[vTipoPas] [varchar](50) NOT NULL,
CONSTRAINT [PK_TipoPasajero] PRIMARY KEY CLUSTERED 
(
[iIdTipoPasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[TipoPasajeros]
as 
select *from TipoPasajero;

CREATE TABLE [dbo].[Pasajero](
[iIdPasajero] [int] NOT NULL,
[vNomPas] [varchar](50) NOT NULL,
[vApPatPas] [varchar](50) NOT NULL,
[vApMatPas] [varchar](50) NOT NULL,
[iEdadPas] [int] NOT NULL,
[iIdTipoPasajero] [int] NOT NULL,
[iIdVenta] [int] NOT NULL,
CONSTRAINT [PK_Pasajero] PRIMARY KEY CLUSTERED 
(
[iIdPasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Pasajeros]
as 
select *from Pasajero;
CREATE TABLE [dbo].[PasajeroBol](
[iIdPasajeroBol] [int] NOT NULL,
[iIdPasajero] [int] NOT NULL,
[iIdBoleto] [int] NOT NULL,
CONSTRAINT [PK_PasajeroBol] PRIMARY KEY CLUSTERED 
(
[iIdPasajeroBol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[PasajerosBoletos]
as 
select *from PasajeroBol;
CREATE TABLE [dbo].[SituacionAsi](
[iIdSituacionAsi] [int] NOT NULL,
[vSituacionA] [varchar](50) NOT NULL,
CONSTRAINT [PK_SituacionAsi] PRIMARY KEY CLUSTERED 
(
[iIdSituacionAsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[SituacionAsientos]
as 
select *from SituacionAsi;

CREATE TABLE [dbo].[Asiento](
[iIdAsiento] [int] NOT NULL,
[iIdSituacionAsi] [int] NOT NULL,
CONSTRAINT [PK_Asiento] PRIMARY KEY CLUSTERED 
(
[iIdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Asientos]
as 
select *from Asiento;
CREATE TABLE [dbo].[Autobus](
[iIdAutobus] [int] NOT NULL,
[vMarca] [varchar](50) NOT NULL,
[iModelo] [int] NOT NULL,
[tCantidadPasajeros] [tinyint] NOT NULL,
 CONSTRAINT [PK_Autobus] PRIMARY KEY CLUSTERED 
(
[iIdAutobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Autobuses]
as 
select *from Autobus;

CREATE TABLE [dbo].[Puesto](
[iIdPuesto] [int] NOT NULL,
[vPuesto] [varchar](50) NOT NULL,
CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
[iIdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Puestos]
as 
select *from Puesto;

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

create view [dbo].[Empleados1]
as 
select *from Empleados;

CREATE TABLE [dbo].[Chofer](
[iIdChofer] [int] NOT NULL,
[idIdAutobus] [int] NOT NULL,
[iIdEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_Chofer] PRIMARY KEY CLUSTERED 
(
[iIdChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Choferes]
as 
select *from Chofer;

CREATE TABLE [dbo].[Codigo](
[iIdCodigo] [int] NOT NULL,
[uCodigo] [uniqueidentifier] NOT NULL,
CONSTRAINT [PK_Codigo] PRIMARY KEY CLUSTERED 
(
[iIdCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Codigos]
as 
select *from Codigo;

CREATE TABLE [dbo].[EstadoV](
[iIdEstadoV] [int] NOT NULL,
[vEstadoV] [varchar](50) NOT NULL,
CONSTRAINT [PK_EstadoV] PRIMARY KEY CLUSTERED 
(
[iIdEstadoV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[EstadoViajes]
as 
select *from EstadoV;

CREATE TABLE [dbo].[Origen](
[iIdOrigen] [int] NOT NULL,
[vOrigen] [varchar](50) NOT NULL,
CONSTRAINT [PK_Origen] PRIMARY KEY CLUSTERED 
(
[iIdOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
create view [dbo].[Origenes]
as 
select *from Origen;

CREATE TABLE [dbo].[Destino](
[iIdDestino] [int] NOT NULL,
[vDestino] [varchar](50) NOT NULL,
CONSTRAINT [PK_Destino] PRIMARY KEY CLUSTERED 
(
[iIdDestino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create view [dbo].[Destinos]
as 
select *from Destino;

CREATE TABLE [dbo].[Precio](
[iIdPrecio] [int] NOT NULL,
[mPrecio] [money] NOT NULL,
CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
[iIdPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create Procedure [dbo].[EmpladoAutobus]
@iIdEmpleado int,
@vNomEm varchar(50)
as 
select *from Empleados
where iIdEmpleado=@iIdEmpleado

create procedure [dbo].[EmpleadoAutobus](
@iIdEmpleado int
)
as 
select *from Empleados
where iIdEmpleado=@iIdEmpleado

create procedure [dbo].[NuevoAsiento](
@iIdAsiento int,
@iIdSituacion int
)
as 
begin
insert into Asiento(iIdAsiento,iIdSituacionAsi)
values  (@iIdAsiento,@iIdSituacion)
end 

create procedure [dbo].[NuevoEmpleado](
@iIdEmpleado int,
@vNomEm varchar(50),
@vApPat varchar(50),
@vApMat varchar(50),
@tEdadEmp tinyint,
@iIdPuesto int
)
as 
begin
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto)
values  (@iIdEmpleado,@vNomEm,@vApPat,@vApMat,@tEdadEmp,@iIdPuesto)
end 

create procedure [dbo].[NuevoPasajero](
@iIdPasajero int,
@vNomPas varchar(50),
@vApPatPas varchar(50),
@vApMatPas varchar(50),
@iEdadPas int,
@iIdTipoPasajero int,
@iIdVenta int
)
as 
begin
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta)
values  (@iIdPasajero,@vNomPas,@vApPatPas,@vApMatPas,@iEdadPas,@iIdTipoPasajero,@iIdVenta)
end 