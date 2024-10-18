if object_id('OsiguravajucaKuca.ProvizijaTriger', 'TR')is not null
drop trigger OsiguravajucaKuca.ProvizijaTriger;
go

create trigger OsiguravajucaKuca.ProvizijaTriger on OsiguravajucaKuca.Agent
after update
as begin
	if @@rowcount=0 return
	if update([ukupan_br_bodova])
	begin
	declare @idAgenta as numeric(5,0)=(select ID_Zap from inserted)
	declare @Nivo as numeric(5,0)=(select TOP 1 ID_N from inserted)
	declare @stariBrojBodova as numeric(5,0)=(select ukupan_br_bodova from inserted)
	declare @IznosProvizije as numeric(5,0)

	if @stariBrojBodova>0
	begin
		if @Nivo=1
		begin
			set @IznosProvizije=@stariBrojBodova*5
			update OsiguravajucaKuca.Provizija set Iznos=@IznosProvizije where OsiguravajucaKuca.Provizija.ID_Zap=@idAgenta
		 end;
		 else if @Nivo=2
		begin
			set @IznosProvizije=@stariBrojBodova*10
			update OsiguravajucaKuca.Provizija set Iznos=@IznosProvizije where OsiguravajucaKuca.Provizija.ID_Zap=@idAgenta
		 end;
		 else if @Nivo=3
		 begin
			set @IznosProvizije=@stariBrojBodova*15
			update OsiguravajucaKuca.Provizija set Iznos=@IznosProvizije where OsiguravajucaKuca.Provizija.ID_Zap=@idAgenta
		 end;
	end;
	else 
		print 'Agent nema bodove'
		update OsiguravajucaKuca.Provizija set Iznos=@IznosProvizije where OsiguravajucaKuca.Provizija.ID_Zap=@idAgenta
	end;
end;
go



--kod za proveru trigera--
select * from OsiguravajucaKuca.Agent where ID_Zap=2
select * from OsiguravajucaKuca.Provizija where ID_Zap=2
update OsiguravajucaKuca.Agent set ukupan_br_bodova=105 where ID_Zap=2
select * from OsiguravajucaKuca.Agent where ID_Zap=2
select * from OsiguravajucaKuca.Provizija where ID_Zap=2

select * from OsiguravajucaKuca.Agent where ID_Zap=11
select * from OsiguravajucaKuca.Provizija where ID_Zap=11
update OsiguravajucaKuca.Agent set ukupan_br_bodova=0 where ID_Zap=11
select * from OsiguravajucaKuca.Agent where ID_Zap=11
select * from OsiguravajucaKuca.Provizija where ID_Zap=11



--triger 2--
if object_id('OsiguravajucaKuca.NivoTriger', 'TR')is not null
drop trigger OsiguravajucaKuca.NivoTriger;
go

create trigger OsiguravajucaKuca.NivoTriger on OsiguravajucaKuca.Agent
after update
as begin
	if @@rowcount=0 return
	if update([ID_N])
	begin 
	declare @idAgenta as numeric(5,0)=(select ID_Zap from inserted)
	declare @Nivo as numeric(5,0)=(select ID_N from inserted)
	declare @stariBrojBodova as numeric(5,0)=(select ukupan_br_bodova from inserted)
	declare @IznosProvizije as numeric(5,0)

	if @stariBrojBodova>0
	begin
		if @stariBrojBodova<=100
		begin
			set @Nivo=1
			update OsiguravajucaKuca.Agent set ID_N=@Nivo where OsiguravajucaKuca.Agent.ID_Zap=@idAgenta
		 end;
		 else if @stariBrojBodova>=101 and @stariBrojBodova<=250
		 begin 
			set @Nivo=2
			update OsiguravajucaKuca.Agent set ID_N=@Nivo where OsiguravajucaKuca.Agent.ID_Zap=@idAgenta
		 end;
		 else if @stariBrojBodova>=251 and @stariBrojBodova<=400
		 begin
			set @Nivo=3
			update OsiguravajucaKuca.Agent set ID_N=@Nivo where OsiguravajucaKuca.Agent.ID_Zap=@idAgenta
		 end;
	else
		print 'Agent nema bodove'
   end;
end;
end;
go



--kod za proveru drugog trigera--
select * from OsiguravajucaKuca.Agent where ID_Zap=2
update OsiguravajucaKuca.Agent set ukupan_br_bodova=300 where ID_Zap=2
select * from OsiguravajucaKuca.Agent where ID_Zap=2













