use Autobuses
---SP---
create procedure NuevoPasajero(
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
	exec NuevoPasajero @iIdPasajero=166,@vNomPas='Karla',@vApPatPas='Reyna',@vApMatPas='Fernandez',@iEdadPas=26,@iIdTipoPasajero=141,@iIdVenta=130



---Funciones---
select *from  function  EstadoAutobuses

create function EstadoAutobuses(@estado varchar)
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
go		

--Triggers--
select *from SituacionAsi

create trigger SA
on SituacionAsi
instead of insert 
as
begin 
	select *
	from inserted
	end
---
create trigger SA1
on SituacionAsi
instead of delete 
as
begin 
	select *
	from deleted
	end



