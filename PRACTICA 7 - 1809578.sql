use Autobuses

--Subconsultas--

select * from  
	(select tEdadEmp, count (tEdadEmp) as 'Cantided de personas'
		from Empleados
		group by tEdadEmp) as e
	where e.[Cantided de personas]>0


select * from  
	(select mPrecio, count (mPrecio) as 'Cantidad de precios'
		from Precio
		group by mPrecio) as p
	where p.[Cantidad de precios] >0



--Subconsulta with--
with Edades
as 
(select iEdadPas,count(iEdadPas)as p
	from Pasajero
	group by iEdadPas)
select *
from Edades
where Edades.p>0



--Vistas Tablas--

create view SituacionAsientos
as 
select *from SituacionAsi;

create view Asientos
as 
select *from Asiento;

create view Autobuses
as 
select *from Autobus;

create view Puestos
as 
select *from Puesto;

create view Empleados1
as 
select *from Empleados;

