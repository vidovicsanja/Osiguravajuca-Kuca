
--1.upit
select ime as 'Ime agenta', prezime as 'Prezime agenta', ag.naziv as 'Naziv agencije agenta'
from OsiguravajucaKuca.Program pr 
 left join OsiguravajucaKuca.Prezentuje prez on prez.ID_PR=pr.ID_PR
 left join OsiguravajucaKuca.Agent a on a.ID_Zap=prez.ID_Zap
 left join OsiguravajucaKuca.Zaposleni z on a.ID_Zap=z.ID_Zap
 left join OsiguravajucaKuca.Agencija ag on ag.ID_Agencije=z.ID_Agencije
 where vrsta like 'Zivotno%' or Vrsta like '%zivotno'
 order by ime asc


--2.upit
select agent.ID_Zap as 'ID zaposlenog', z.ime as 'Ime zaposlenog', z.prezime as 'Prezime zaposlenog', 
ukupan_br_bodova as 'Ukupan broj bodova agenta', br_prodatih_pol as 'Broj prodatih polisa agenta',
z.adresa+', '+z.mesto as 'Adresa agenta',
a.naziv as 'Naziv agencije', a.adresa+', '+a.mesto as 'Adresa agencije'
from OsiguravajucaKuca.Agencija a 
left join OsiguravajucaKuca.Zaposleni z on a.ID_Agencije=z.ID_Agencije
left join OsiguravajucaKuca.Agent agent on z.ID_Zap=agent.ID_Zap
where ukupan_br_bodova>(select avg(ukupan_br_bodova) from OsiguravajucaKuca.Agent)
order by br_prodatih_pol desc


--3.upit
select d.ID_Zap as 'ID direktora', ime as 'Ime direktora', prezime as 'Prezime direktora',
a.naziv+', '+a.adresa+', '+a.sediste as 'Agencija', delovodni_broj as 'Delovodni broj', 
datum as 'Datum potpisivanja ugovora', ok.naziv+', '+ok.adresa+', '+ok.mesto as 'Osiguravajuca kuca'
from OsiguravajucaKuca.Agencija a 
left join OsiguravajucaKuca.Zaposleni z on a.ID_Agencije=z.ID_Agencije
left join OsiguravajucaKuca.Direktor d on d.ID_Zap=z.ID_Zap
left join OsiguravajucaKuca.Sklapa_Ugovor s on s.ID_Zap=d.ID_Zap
left join OsiguravajucaKuca.Osiguravajucakuca ok on ok.ID_OK=s.ID_OK
where datepart(month,datum)=1 and datepart(YEAR, datum)=2021
order by delovodni_broj


--4.upit
select ime as 'Ime agenta', prezime as 'Prezime agenta', max(Br_bodova) as 'Broj Bodova'
from OsiguravajucaKuca.Zaposleni z
left join OsiguravajucaKuca.Agent a on z.ID_Zap=a.ID_Zap
left join OsiguravajucaKuca.Provizija p on a.ID_Zap=p.ID_Zap
group by ime, prezime
having max(Br_Bodova)=(select max(BR_Bodova) from OsiguravajucaKuca.Provizija)

--5.upit
select a.ID_Zap as 'ID agenta', ID_N as 'Nivo agenta', min(Iznos) as 'Iznos provizije agenta', valuta
from OsiguravajucaKuca.Agent a 
left join OsiguravajucaKuca.Provizija p on a.ID_Zap=p.ID_Zap
where valuta='eur'
group by a.ID_Zap, ID_N, valuta
having min(Iznos)=(select min(Iznos) from OsiguravajucaKuca.Provizija)










select * from OsiguravajucaKuca.Zaposleni

select * from OsiguravajucaKuca.Agencija

select * from Osiguravajucakuca.Agent

select * from OsiguravajucaKuca.Provizija

select * from OsiguravajucaKuca.Sklapa_Ugovor
 