USE Autobuses


select  vNomEm,vApPat, vApMat, tEdadEmp, iIdPuesto from Empleados as e where e.tEdadEmp> 20
select  iIdPasajero,vNombPas from Pasajero as p where p.vNombPas='Andres'
select  mPrecio from Precio as m where m.mPrecio>100
select  iIdDestino,tTiempoEstimado from Ruta as r,Origen as o where  o.vOrigen='Linares'
select  iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado from Ruta as r where r.tTiempoEstimado>'08:50:00'


select *from Chofer
left join Autobus on Chofer.iIdAutobus=Autobus.iIdAutobus

select *from Chofer
right join Autobus on Chofer.iIdAutobus=Autobus.iIdAutobus

select *from Chofer
inner join Autobus on Chofer.iIdAutobus=Autobus.iIdAutobus

select *from PasajeroBol
left join Pasajero on PasajeroBol.iIdPasajero=Pasajero.iIdPasajero

select *from PasajeroBol
right join Pasajero on PasajeroBol.iIdPasajero=Pasajero.iIdPasajero

select *from PasajeroBol
inner join Pasajero on PasajeroBol.iIdPasajero=Pasajero.iIdPasajero


select COUNT(iIdAutobus) as 'Cantidad Autobuses' from Autobus 
select MIN(iEdadPas) as 'Minimo  Edad Pasajeros' from Pasajero
select MAX(tTiempoEstimado)as 'Maximo de tiempo' from Ruta 
select SUM(mPrecio) as 'Precios' from Precio


