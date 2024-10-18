
--Osiguravajuca kuca--
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (1, 'Osiguranje', 'Beograd', 'Laze Kostica 2', 'Beograd', 'osiguranje@gmail.com', '0038188000000', 101);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (2, 'Beograd', 'Beograd', 'Nemanjina 4', 'Beograd', 'obg@gmail.com', '00381880012435', 102);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (3, 'Novi Sad', 'Novi Sad', 'Brace Ribnikar 1', 'Novi Sad', 'ons@gmail.com', '0038199003355', 103);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (4, 'Osiguranje NS', 'Novi Sad', 'Zeleznicka 1', 'Novi Sad', 'nns@gmail.com', '0038199000027', 104);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (5, 'Osiguranje BG', 'Beograd', 'Vase Stajica 1', 'Beograd', 'osigbg@gmail.com', '0038188000077', 105);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (6, 'NS', 'Novi Sad', 'Narodnog fronta 5', 'Novi Sad', 'novi@gmail.com', '0038199000021', 106);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (7, 'NS021', 'Novi Sad', 'Bulevar oslobodjenja 2', 'Novi Sad', 'oo@gmail.com', '0038199021021', 107);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (8, 'BG011', 'Beograd', 'Niska 4', 'Beograd', 'obgg@gmail.com', '0038188777232', 108);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence) values (9, 'NBG', 'Beograd', 'Jurija Gagarina 10', 'Beograd', 'onbg@gmail.com', '0038188777233', 109);
insert into OsiguravajucaKuca.Osiguravajucakuca (ID_OK, naziv, mesto, adresa, sediste, email, telefon, broj_licence)  values (10, 'Beogradsko', 'Beograd', 'Dositejeva 1', 'Beograd', 'beog@gmail.com', '0038188777323', 110);

--Agencija--
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (1, 'Agencija Plus', 'Novi Sad', 'Laze Kostica 1', 'Novi Sad', 'plus@gmail.com', '0038199000000');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (2, 'Nova', 'Novi Sad', 'Laze Nancica 1', 'Novi Sad', 'nov@gmail.com', '0038199252000');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (3, 'Agencija A', 'Beograd', 'Jurija Gagarina 1', 'Beograd', 'A@gmail.com', '0038188989898');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (4, 'ABC', 'Beograd', 'Svetog Save 2', 'Beograd', 'abc@gmail.com', '0038188090909');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (5, 'Grand', 'Novi Sad', 'Bulevar oslobodjenja 1', 'Novi Sad', 'g@gmail.com', '0038199121212');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (6, 'NS', 'Novi Sad', 'Bulevar cara Lazara 1', 'Novi Sad', 'n@gmail.com', '0038199999990');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (7, 'BG', 'Beograd', 'Niska 2', 'Beograd', 'b@gmail.com', '0038188000001');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (8, 'NBG', 'Beograd', 'Vojvodjanska 1', 'Beograd', 'nb@gmail.com', '0038188205205');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (9, 'BB', 'Beograd', 'Ljubljanska 1', 'Beograd', 'bb@gmail.com', '0038188888888');
insert into OsiguravajucaKuca.Agencija (ID_Agencije, naziv, mesto, adresa, sediste, email, telefon) values (10, 'Agent', 'Novi Sad', 'Narodnog fronta 5', 'Novi Sad', 'agent@gmail.com', '0038199000009');

--Zaposleni--
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (1,'1992-01-01', 'Petar','Petrovic','Novi Sad', 'Kisacka', 'pp@gmail.com', '0038199111111', 1);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (2,'1990-01-01', 'Petar','Peric','Novi Sad', 'Jevrejska', 'ppp@gmail.com', '0038199222222', 1);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (3,'1991-10-10', 'Ana','Anic','Novi Sad', 'Radnicka', 'aa@gmail.com', '0038199333333', 1);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (4,'1995-10-10', 'Anej','Anic','Beograd', 'Banjicka 1', 'aan@gmail.com', '0038188111111', 2);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (5,'1989-11-11', 'Iva','Ivic','Novi Sad', 'Strazilovska 1', 'ii@gmail.com', '0038199555555', 2);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (6,'1987-12-12', 'Ivan','Ivic','Beograd', 'Banjicka 2', 'iv@gmail.com', '0038188222111', 2);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (7,'1988-08-08', 'Mila','Milic','Beograd', 'Pozeska 1', 'mm@gmail.com', '0038188111222', 3);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (8,'1978-12-12', 'Marko','Markovic','Beograd', 'Beracka 1', 'mmar@gmail.com', '0038188000111', 3);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (9,'1985-07-07', 'Marija','Maric','Novi Sad', 'Balzakova 1', 'mar@gmail.com', '0038199111000', 3);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (10,'1987-08-08', 'Sara','Saric','Novi Sad', 'Sekspirova 2', 'ss@gmail.com', '0038199111100', 4);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (11,'1977-04-04', 'Iva','Anic','Beograd', 'Nemanjina 1', 'ia@gmail.com', '0038188222333', 4);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (12,'1988-01-01', 'Ivana','Ivic','Novi Sad', 'Puskinova 1', 'ivic@gmail.com', '0038199444444', 4);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (13,'1982-02-02', 'Daria','Daric','Beograd', 'Pozeska 3', 'dd@gmail.com', '0038188555555', 5);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (14,'1979-10-09', 'Milan','Milic','Beograd', 'Vasina 1', 'mil@gmail.com', '0038188555000', 5);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (15,'1983-01-03', 'Milica','Milic','Beograd', 'Sarajevska 1', 'milm@gmail.com', '0038188777000', 5);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (16,'1980-10-11', 'Vasa','Vasic','Novi Sad', 'Fruskogorska 1', 'vv@gmail.com', '0038199555000', 6);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (17,'1981-12-11', 'Laza','Lazic','Beograd', 'Loznicka 1', 'll@gmail.com', '0038188555111', 6);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (18,'1984-04-02', 'Lazar','Lazarevic','Beograd', 'Nemanjina 5', 'lll@gmail.com', '0038188555777', 6);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (19,'1988-02-02', 'Milana','Milic','Novi Sad', 'Kisacka 3', 'mmil@gmail.com', '0038199777000', 7);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (20,'1990-12-12', 'Ana','Ivic','Beograd', 'Niska 2', 'aiv@gmail.com', '0038188555999', 7);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (21,'1991-12-12', 'Jana','Janic','Beograd', 'Niska 12', 'jj@gmail.com', '0038188556999', 7);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (22,'1992-12-12', 'Jan','Janic','Nobvi Sad', 'Kisacka 120', 'janj@gmail.com', '0038199565999', 8);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (23,'1980-05-12', 'Milan','Ivic','Beograd', 'Banjicka 120', 'miv@gmail.com', '0038188555050', 8);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (24,'1979-09-09', 'Marko','Marinkovic','Beograd', 'Vasina 10', 'mmar@gmail.com', '0038188000999', 8);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (25,'1985-05-08', 'Ana','Ancic','Beograd', 'Pozeska 100', 'aan@gmail.com', '0038188080801', 9);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (26,'1980-04-11', 'Mirko','Mirkovic','Beograd', 'Sarajevska 10', 'mmir@gmail.com', '0038188080809', 9);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (27,'1981-01-30', 'Ena','Enic','Novi Sad', 'Fruskogorska 100', 'een@gmail.com', '0038199080809', 9);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (28,'1973-05-08', 'Mirka','Mirkovic','Novi Sad', 'Puskinova 20', 'mmmm@gmail.com', '0038199702702', 10);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (29,'1986-05-05', 'Mila','Milovic','Beograd', 'Nemanjina 20', 'milo@gmail.com', '0038188000005', 10);
Insert into OsiguravajucaKuca.Zaposleni (ID_Zap, datum_rodjenja, ime, prezime, mesto, adresa, email, telefon, ID_Agencije) values (30,'1981-12-15', 'Anja','Anjic','Beograd', 'Loznicka 50', 'anjanj@gmail.com', '0038188500500', 10);

--Direktor--
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);
insert into OsiguravajucaKuca.Direktor(ID_Zap) values (next value for OsiguravajucaKuca.Seq);

--Nivo--
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (1, 100, 0);
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (2, 250, 101);
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (3, 400, 251);
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (4, 550, 401);
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (5, 600, 551);
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (6, 750, 601);
insert into OsiguravajucaKuca.Nivo (ID_N, gornja_granica, donja_granica) values (7, 900, 751);

--Agent--
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 95, 19, 1);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 115, 23, 2);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 225, 45, 2);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 215, 43, 2);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 85, 17, 1);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 150, 30, 1);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 55, 11, 1);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 355, 71, 3);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 295, 59, 3);
insert into OsiguravajucaKuca.Agent (ID_Zap, ukupan_br_bodova, br_prodatih_pol, ID_N) values (next value for OsiguravajucaKuca.Seq1, 220, 44, 4);

--Administrativni radnik--
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);
insert into OsiguravajucaKuca.AdministrativniRadnik (ID_Zap) values (next value for OsiguravajucaKuca.Seq2);

--Isplacuje zaradu--
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (1, 1);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (1, 2);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (2, 2);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (2, 3);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (3, 4);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (4, 4);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (5, 6);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (4, 5);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (6, 8);
insert into OsiguravajucaKuca.Isplacuje_Zaradu values (7, 9);

--Sklapa ugovor--
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (1, 1, '2021-12-12', '12 meseci', 222);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (1, 2, '2021-12-11', '6 meseci', 221);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (1, 3, '2021-12-10', '12 meseci', 223);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (2, 4, '2021-10-10', '12 meseci', 255);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (2, 5, '2021-09-11', '6 meseci', 422);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (5, 6, '2021-09-10', '3 meseca', 992);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (7, 7, '2021-01-12', '12 meseci', 112);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (9, 9, '2021-02-12', '12 meseci', 201);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (3, 9, '2021-10-05', '18 meseci', 212);
insert into OsiguravajucaKuca.Sklapa_Ugovor (ID_Zap, ID_OK, datum, Vreme_vazenja, Delovodni_broj) values (9, 10, '2021-12-01', '6 meseci', 354);

--Program--
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (1, 'Zivotno', 'Osiguranje koje pruza sigurnost i zastitu od rizika');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (2, 'Putno', 'Tokom boravka u inostranstvu omogucavastrucnu podrsku usled nastupanja bolesti');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (3, 'Domacinstva', 'Podrazumeva osiguranje stambenih objekata od rizika');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (4, 'Pomoc na putu', 'Obezbedjuje brzu i efikasnu asistenciju ukoliko dodje do nepredvidjenih okolnosti');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (5, 'Od nezgode', 'Ukljucuje sve iznenadne i od volje korisnika nezavisne dogadjaje koje mogu dovesti do bolesti');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (6, 'Imovine', 'Podrazumeva osiguranje od rizika koji mogu da ugroze pokretnu i nepokretnu imovinu');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (7, 'Odgovornosti', 'Osigurava se gradjanska odgovornost osiguranika za slucaj povreda tela');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (8, 'Kasko', 'Osiguravac se obezbedjuje da nadoknadi materijalne stete osiguranom vozilku');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (9, 'Zdravstevno', 'Pruza efikasnu i komfornu medicinsku zastitu i mogucnost lecenja u zdravstvenim ustanovama');
insert into OsiguravajucaKuca.Program (ID_PR, Vrsta, Opis) values (10, 'Auto', 'Zakonski obavezno osiguranje koje se zakljucuje prilikom registracije vozila');


--Poseduje--
insert into OsiguravajucaKuca.Poseduje values(1, 1);
insert into OsiguravajucaKuca.Poseduje values(2, 2);
insert into OsiguravajucaKuca.Poseduje values(3, 3);
insert into OsiguravajucaKuca.Poseduje values(4, 4);
insert into OsiguravajucaKuca.Poseduje values(5, 5);
insert into OsiguravajucaKuca.Poseduje values(6, 6);
insert into OsiguravajucaKuca.Poseduje values(7, 7);
insert into OsiguravajucaKuca.Poseduje values(8, 8);
insert into OsiguravajucaKuca.Poseduje values(9, 9);
insert into OsiguravajucaKuca.Poseduje values(10, 10);


--Provizija--
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (1, 475, 'eur', 95, '2022-08-07', 2);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (2, 1150, 'eur', 115, '2022-08-08', 5);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (3, 2250, 'eur', 225, '2022-09-08', 8);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (4, 2150, 'eur', 115, '2022-09-08', 11);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (5, 425, 'eur', 85, '2022-08-08', 14);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (6, 1605, 'usd', 150, '2022-09-08', 17);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (7, 33000, 'rsd', 55, '2022-08-07', 20);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (8, 5325, 'eur', 355, '2022-09-09', 23);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (9, 4425, 'eur', 295, '2022-09-09', 26);
insert into OsiguravajucaKuca.Provizija (ID_PRO, Iznos, Valuta, Br_bodova, Datum_isplate, ID_Zap) values (10, 2354, 'usd', 220, '2022-08-09', 29);

--Uplata premije--
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (1, 3, 1);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (2, 6, 2);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (3, 9, 3);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (4, 12, 4);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (5, 15, 5);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (6, 18, 6);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (7, 21, 7);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (8, 24, 8);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (9, 27, 9);
insert into OsiguravajucaKuca.Uplata_Premije (ID_Trans, ID_Zap, ID_PRO) values (10, 30, 10);

--Prezentuje--
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (1, 2, '2021-10-10');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (2, 2,'2021-11-10');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (1, 5,'2021-10-11');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (3, 5, '2021-12-11');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (4, 8,'2021-11-12');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (6, 11, '2021-11-11');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (5, 14, '2021-09-09');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (9, 17, '2021-09-10');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (8, 20, '2021-10-09');
insert into OsiguravajucaKuca.Prezentuje(ID_PR, ID_Zap,Datum_internog_zaduzenja_ponude) values (1, 23, '2021-10-10');



