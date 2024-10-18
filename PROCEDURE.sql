if OBJECT_ID('OsiguravajucaKuca.proc_direktor', 'P') is not  null
drop proc OsiguravajucaKuca.proc_direktor;
go

create proc OsiguravajucaKuca.proc_direktor
@ID_Zap as numeric(5,0)
as begin
	if(@ID_Zap not in(select ID_Zap from OsiguravajucaKuca.Zaposleni))
		print 'U agenciji ne postoji zaposleni sa ID-ijem ' +cast(@ID_Zap  as varchar(5)) +'!'
	else if (@ID_Zap not in(select ID_Zap from OsiguravajucaKuca.Direktor))
		print 'Zaposleni u agenciji sa ID-ijem '+cast(@ID_Zap as varchar(5)) +' nije direktor i ne moze sklapati ugovor sa odredjenom osiguravajucom kucom!';
	else if(@ID_Zap in(select ID_Zap from OsiguravajucaKuca.Direktor))
		begin
		print 'Sklapanje ugovora sa odredjenom osiguravajucom kucom je moguce!'
		declare @delovodniBr as numeric(5,0)=(select Delovodni_broj from OsiguravajucaKuca.Sklapa_Ugovor where ID_Zap=@ID_Zap);
		print 'Delovodni broj ugovora koji je sklopio direktor agencije koji ima ID ' +cast(@ID_Zap as varchar(5)) + ': '+cast(@delovodniBr as varchar(5));
		end;
	end;
go

--KOD ZA PROVERU PROCEDURE--
exec OsiguravajucaKuca.proc_direktor 5

exec OsiguravajucaKuca.proc_direktor 50

exec OsiguravajucaKuca.proc_direktor 7



--procedura 2--
if object_id('OsiguravajucaKuca.AgentProcedura', 'P')is not null
drop procedure OsiguravajucaKuca.AgentProcedura
go

create proc OsiguravajucaKuca.AgentProcedura
	@ID_Zap as numeric(5,0)
	as begin
	declare @idAgenta as numeric(5,0)=(select ID_Zap from OsiguravajucaKuca.Agent where ID_Zap=@ID_Zap)
	declare @ime as varchar(30)=(select ime from OsiguravajucaKuca.Zaposleni where ID_Zap=@ID_Zap)
	declare @prezime as varchar(30)=(select prezime from OsiguravajucaKuca.Zaposleni where ID_Zap=@ID_Zap)
	declare @vrsta as varchar(30)
	declare @ukupnoPrograma as numeric(5,0)
	declare @rbr as numeric(5,0)
	declare @brPolisa as numeric(5,0)=(select br_prodatih_pol from OsiguravajucaKuca.Agent where ID_Zap=@ID_Zap)
	declare @ukupnoBodova as numeric(5,0)=(select ukupan_br_bodova from OsiguravajucaKuca.Agent where ID_Zap=@ID_Zap)

	set @ukupnoPrograma =(select count(id_PR) from OsiguravajucaKuca.Prezentuje where ID_Zap=@ID_Zap)
	if @ukupnoPrograma > 0
		begin
		print 'Agent '+cast(@ime as varchar(30))+' '+cast(@prezime as varchar(30))
		+' sa ID-ijem '+cast(@ID_Zap as varchar(30))+' je prodao '+cast(@brPolisa as varchar(30))+ ' polisa, poseduje '
		+cast(@ukupnoBodova as varchar(30))+' bodova i prezentuje sledece programe:'
		set @rbr=0;

			declare agent_cursor cursor fast_forward for 
			select  vrsta from OsiguravajucaKuca.Agent a left join OsiguravajucaKuca.Prezentuje p
			on (a.ID_Zap=p.ID_Zap) left join OsiguravajucaKuca.Program pr on (p.ID_PR=pr.ID_PR)
			where @ID_Zap=a.ID_Zap

			open agent_cursor;
			set @rbr=1;
			fetch next from agent_cursor into @vrsta
			while @@FETCH_STATUS=0
			begin 
			print CAST(@rbr AS varchar(30)) + ' ' + CAST(@vrsta AS VARCHAR(30))
			fetch next from agent_cursor into @vrsta
			set @rbr=@rbr+1;
			end;
			close agent_cursor;
			deallocate agent_cursor;

		print 'Ukupno programa: ' + cast(@ukupnoPrograma as varchar(30))
		end;
	else
		if @ID_Zap=@idAgenta
			print 'Agent sa ID-ijem '+cast(@ID_Zap as varchar(30))+' ne prezentuje nikakve programe'
		else 
			print 'Zaposleni sa ID-ijem '+cast(@ID_Zap as varchar(30))+' nije agent'
		end;
go

 --kod za proveru procedura
 --agent sa ovim ID-ijem ne prezentuje nikakve programe
 exec OsiguravajucaKuca.AgentProcedura 29
 --ovaj ID ne pripada nijednom agentu
 exec OsiguravajucaKuca.AgentProcedura 50
 --agent sa ovim ID prezentuje programe
 exec OsiguravajucaKuca.AgentProcedura 2