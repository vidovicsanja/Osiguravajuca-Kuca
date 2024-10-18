--funkcija 1--
if object_id('OsiguravajucaKuca.funkcija', 'TF') is not null
drop function OsiguravajucaKuca.funkcija
go

create function OsiguravajucaKuca.funkcija
(
	@naziv varchar(15)
)
returns @returnable table
(
	ID_agencije numeric(5,0),
	adresa varchar(35),
	mesto varchar(25),
	telefon varchar(30),
	naziv_osiguravajuce_kuce varchar(30),
	broj_licence numeric(5,0),
	vrsta_programa varchar(25)
)
as begin
	insert @returnable 
			select a.ID_Agencije, a.adresa, a.mesto, a.telefon, o.naziv, broj_licence, vrsta
			from OsiguravajucaKuca.Agencija a 
			left join OsiguravajucaKuca.Isplacuje_Zaradu z on a.ID_Agencije=z.ID_Agencije
			left join OsiguravajucaKuca.Osiguravajucakuca o on z.ID_OK=o.ID_OK
			left join OsiguravajucaKuca.Poseduje p on o.ID_OK=p.ID_OK
			left join OsiguravajucaKuca.Program prog on prog.ID_PR=p.ID_PR where a.naziv=@naziv

	return
end;
go

--kod za proveru funkcije
select * from OsiguravajucaKuca.Agencija

select ID_Agencije, adresa, mesto, telefon, naziv_osiguravajuce_kuce, broj_licence, vrsta_programa
from OsiguravajucaKuca.funkcija('NBG'); --vraca podatke za osiguravajuca kucu od koje ima isplatu

select ID_Agencije,adresa, mesto, telefon, naziv_osiguravajuce_kuce, broj_licence, vrsta_programa
from OsiguravajucaKuca.funkcija('BG'); --nema zaradu ni od jedne osiguravajuce kuce

select ID_Agencije, adresa, mesto, telefon, naziv_osiguravajuce_kuce, broj_licence, vrsta_programa
from OsiguravajucaKuca.funkcija('Neka agencija'); --ne postoji ovaj naziv



--funkcija 2--
if object_id('OsiguravajucaKuca.funkcijaProvizija', 'FN')is not null
drop function OsiguravajucaKuca.funkcijaProvizija
go

create function OsiguravajucaKuca.funkcijaProvizija(

	@ID_Agencije as numeric(5,0)
)
returns numeric(5,0)
	as
	begin
	declare @provizija as numeric(5,0);
	set @provizija=(select avg(Iznos) as 'Prosecna provizija' 
	from OsiguravajucaKuca.Agencija ag
	left join OsiguravajucaKuca.Zaposleni z on ag.ID_Agencije=z.ID_Agencije
	left join OsiguravajucaKuca.Agent a on z.ID_Zap=a.ID_Zap
	left join OsiguravajucaKuca.Provizija p on a.ID_Zap=p.ID_Zap
	where @ID_Agencije=ag.ID_Agencije and valuta='eur'
	);
	return (@provizija);
	end;
go

--kod za proveru funkcije
select OsiguravajucaKuca.funkcijaProvizija(9)
select OsiguravajucaKuca.funkcijaProvizija(15)