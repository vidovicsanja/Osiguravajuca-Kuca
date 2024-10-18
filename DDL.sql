
if OBJECT_ID('OsiguravajucaKuca.Isplacuje_Zaradu', 'U') is not null
drop table OsiguravajucaKuca.Isplacuje_Zaradu;
go

if OBJECT_ID('OsiguravajucaKuca.Sklapa_Ugovor', 'U') is not null
drop table OsiguravajucaKuca.Sklapa_Ugovor;
go

if OBJECT_ID('OsiguravajucaKuca.Poseduje', 'U') is not null
drop table OsiguravajucaKuca.Poseduje;
go

if OBJECT_ID('OsiguravajucaKuca.Prezentuje', 'U') is not null
drop table OsiguravajucaKuca.Prezentuje;
go

if OBJECT_ID('OsiguravajucaKuca.Uplata_Premije', 'U') is not null
drop table OsiguravajucaKuca.Uplata_Premije;
go

if OBJECT_ID('OsiguravajucaKuca.Provizija', 'U') is not null
drop table OsiguravajucaKuca.Provizija;
go

if OBJECT_ID('OsiguravajucaKuca.Program', 'U') is not null
drop table OsiguravajucaKuca.Program;
go

if OBJECT_ID('OsiguravajucaKuca.Osiguravajucakuca', 'U') is not null
drop table OsiguravajucaKuca.Osiguravajucakuca;
go

if OBJECT_ID('OsiguravajucaKuca.Agent', 'U') is not null
drop table OsiguravajucaKuca.Agent;
go

if OBJECT_ID('OsiguravajucaKuca.Direktor', 'U') is not null
drop table OsiguravajucaKuca.Direktor;
go

if OBJECT_ID('OsiguravajucaKuca.AdministrativniRadnik', 'U') is not null
drop table OsiguravajucaKuca.AdministrativniRadnik;
go

if OBJECT_ID('OsiguravajucaKuca.Nivo', 'U') is not null
drop table OsiguravajucaKuca.Nivo;
go

if OBJECT_ID('OsiguravajucaKuca.Zaposleni', 'U') is not null
drop table OsiguravajucaKuca.Zaposleni;
go

if OBJECT_ID('OsiguravajucaKuca.Agencija', 'U') is not null
drop table OsiguravajucaKuca.Agencija;
go

IF OBJECT_ID('OsiguravajucaKuca.Seq', 'SO') is not null
drop sequence OsiguravajucaKuca.Seq;
go

IF OBJECT_ID('OsiguravajucaKuca.Seq1', 'SO') is not null
drop sequence OsiguravajucaKuca.Seq1;
go

IF OBJECT_ID('OsiguravajucaKuca.Seq2', 'SO') is not null
drop sequence OsiguravajucaKuca.Seq2;
go

if OBJECT_ID('OsiguravajucaKuca.proc_direktor', 'P') is not  null
drop proc OsiguravajucaKuca.proc_direktor;
go

if OBJECT_ID('OsiguravajucaKuca.AgentProcedura', 'P') is not  null
drop proc OsiguravajucaKuca.AgentProcedura;
go

if object_id('OsiguravajucaKuca.funkcija', 'TF') is not null
drop function OsiguravajucaKuca.funkcija
go


if object_id('OsiguravajucaKuca.funkcijaProvizija', 'FN') is not null
drop function OsiguravajucaKuca.funkcijaProvizija
go

if object_id('OsiguravajucaKuca.ProvizijaTriger', 'TR') is not null
drop function OsiguravajucaKuca.ProvizijaTriger
go

if object_id('OsiguravajucaKuca.NivoTriger', 'TR') is not null
drop function OsiguravajucaKuca.NivoTriger
go


IF SCHEMA_ID ('OsiguravajucaKuca') is not null
drop schema OsiguravajucaKuca;
go
create schema OsiguravajucaKuca;
go

create table OsiguravajucaKuca.Osiguravajucakuca
(
	ID_OK  numeric(5) not null primary key,
	naziv nvarchar(15) not null,
	mesto nvarchar(25),
	adresa nvarchar(35),
	sediste nvarchar(35),
	email nvarchar(30),
	telefon varchar(15),
	broj_licence numeric(6),
	
)
go

create table OsiguravajucaKuca.Agencija
(
	ID_Agencije numeric(5) not null primary key,
	naziv nvarchar(15) not null,
	mesto nvarchar(25),
	adresa nvarchar(35),
	sediste nvarchar(35),
	email nvarchar(30),
	telefon varchar(15),

)
go

create table OsiguravajucaKuca.Zaposleni
(
	ID_Zap numeric(5) not null primary key,
	datum_rodjenja date default getdate() not null,
	ime nvarchar(10) not null,
	prezime nvarchar(15) not null,
	mesto nvarchar(25),
	adresa nvarchar(35),
	email nvarchar(30),
	telefon varchar(15),
	ID_Agencije numeric(5),

	constraint FK_Agencija foreign key(ID_Agencije) references OsiguravajucaKuca.Agencija(ID_Agencije)
)
go

create table OsiguravajucaKuca.Nivo
(
	ID_N numeric(5) not null primary key,
	gornja_granica nvarchar(3) not null,
	donja_granica nvarchar(3) not null,
	
	constraint CHK_granica check(gornja_granica>donja_granica)
)
go

create table OsiguravajucaKuca.Agent
(
	ID_Zap numeric(5) not null,
	ukupan_br_bodova numeric(6) not null,
	br_prodatih_pol nvarchar(6) not null,
	ID_N numeric(5) not null,

	constraint PK_Agent primary key (ID_Zap),
	constraint FK_Agent_Zaposleni foreign key(ID_Zap) references OsiguravajucaKuca.Zaposleni(ID_Zap),
	constraint FK_Nivo foreign key(ID_N) references OsiguravajucaKuca.Nivo(ID_N)
)
go

create table OsiguravajucaKuca.Direktor
(
	ID_Zap numeric(5) not null primary key,

	constraint FK_Direktor_Zaposleni foreign key(ID_Zap) references OsiguravajucaKuca.Zaposleni(ID_Zap)
)
go

create table OsiguravajucaKuca.AdministrativniRadnik
(
	ID_Zap numeric(5) not null primary key,

	constraint FK_AdministrativniRadnik_Zaposleni foreign key(ID_Zap) references OsiguravajucaKuca.Zaposleni(ID_Zap)
)
go

create table OsiguravajucaKuca.Isplacuje_Zaradu
(	
	ID_OK numeric(5) not null,
	ID_Agencije numeric(5) not null,

	constraint PK_Isplacuje_Zaradu primary key(ID_OK, ID_Agencije),
	constraint FK_Isplacuje_Zaradu_Osiguravajucakuca foreign key (ID_OK) references OsiguravajucaKuca.Osiguravajucakuca (ID_OK),
	constraint FK_Isplacuje_Zaradu_Agencija foreign key (ID_Agencije) references OsiguravajucaKuca.Agencija (ID_Agencije)
)
go

create table OsiguravajucaKuca.Sklapa_Ugovor
(	
	ID_Zap numeric(5) not null,
	ID_OK numeric(5) not null,
	datum date default getdate() not null,
	Vreme_vazenja nvarchar(20) not null,
	Delovodni_broj numeric(10) not null,
	
	constraint PK_Sklapa_Ugovor primary key(ID_Zap, ID_OK),
	constraint FK_Sklapa_Ugovor_Zaposleni foreign key (ID_Zap) references OsiguravajucaKuca.Zaposleni (ID_Zap),
	constraint FK_Sklapa_Ugovor_Osiguravajucakuca foreign key (ID_OK) references OsiguravajucaKuca.Osiguravajucakuca (ID_OK)
)
go

create table OsiguravajucaKuca.Program
(	
	ID_PR numeric(5) not null primary key,
	Vrsta nvarchar(20) not null,
	Opis nvarchar(100) not null
	
)
go

create table OsiguravajucaKuca.Poseduje
(	
	ID_OK numeric(5) not null,
	ID_PR numeric(5) not null,

	constraint PK_Poseduje primary key (ID_OK, ID_PR),
	constraint FK_Poseduje_Osiguravajucakuca foreign key (ID_OK) references OsiguravajucaKuca.Osiguravajucakuca (ID_OK),
	constraint FK_Poseduje_Program foreign key (ID_PR) references OsiguravajucaKuca.Program (ID_PR)
)
go

create table OsiguravajucaKuca.Provizija
(
	ID_PRO numeric(5) not null primary key,
	Iznos numeric(5),
	Valuta nvarchar(5) not null,
	Br_bodova numeric(5),
	Datum_isplate date default getdate(),
	ID_Zap numeric(5) not null,

	constraint FK_Agent foreign key(ID_Zap) references OsiguravajucaKuca.Agent (ID_Zap),
	constraint CHK_Valuta check(Valuta in ('rsd', 'eur', 'usd'))
)
go

create table OsiguravajucaKuca.Uplata_Premije
(
	ID_Trans numeric(5) not null primary key,
	ID_Zap numeric(5) not null,
	ID_PRO numeric(5) not null,

	constraint FK_Administrativni foreign key(ID_Zap) references OsiguravajucaKuca.AdministrativniRadnik (ID_Zap),
	constraint Fk_Provizija foreign key(ID_PRO) references OsiguravajucaKuca.Provizija (ID_PRO)
)
go

create table OsiguravajucaKuca.Prezentuje
(	
	ID_PR numeric(5) not null,
	ID_Zap numeric(5) not null,
	Datum_internog_zaduzenja_ponude date default getdate(),

	constraint PK_Prezentuje primary key (ID_PR, ID_Zap),
	constraint FK_Prezentuje_Program foreign key (ID_PR) references OsiguravajucaKuca.Program (ID_PR),
	constraint FK_Prezentuje_Agent foreign key (ID_Zap) references OsiguravajucaKuca.Agent (ID_Zap)
)
go

IF OBJECT_ID('OsiguravajucaKuca.Seq', 'SO') is not null
drop sequence OsiguravajucaKuca.Seq;
go


create sequence OsiguravajucaKuca.Seq as int
start with 1
increment by 3
no cycle

--alter table OsiguravajucaKuca.Direktor add constraint DFT_Seq default(next value for OsiguravajucaKuca.Seq) for ID_Zap


create sequence OsiguravajucaKuca.Seq1 as int
start with 2
increment by 3
no cycle

--alter table OsiguravajucaKuca.Agent add constraint DFT_Seq1 default(next value for OsiguravajucaKuca.Seq1) for ID_Zap

create sequence OsiguravajucaKuca.Seq2 as int
start with 3
increment by 3
no cycle

--alter table OsiguravajucaKuca.AdministrativniRadnik add constraint DFT_Seq2 default(next value for OsiguravajucaKuca.Seq2) for ID_Zap

