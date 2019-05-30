#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\mysql\mysql\taksi.sql"

drop database if exists taksi;
create database taksi default character set utf8;
use taksi;

create table vozilo(
sifra int not null primary key auto_increment,
marka varchar (50) not null,
broj_registracije varchar (50) not null,
broj_mjesta int not null
);

create table  vozac(
sifra int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar (50) not null,
broj_vozacke varchar (50) not null,
vozilo int
);

create table putnik (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
kontakt varchar (50) not null,
adresa_polazista varchar(50) not null, 
adresa_odredista varchar(50) not null
);

create table voznja(
putnik int not null,
vozac int not null,
cijena_voznje decimal (18,2) not null
);

alter table vozac add foreign key (vozilo) references vozilo(sifra);
alter table voznja add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik) references putnik(sifra);

insert into vozilo (marka,broj_registracije,broj_mjesta) values ('škoda','NA-589-KL',4), ('bmw','OS-589-LI'4), ('opel','OS-689-OO',8), ('škoda','OS-512-VM',4), 
('škoda','OS-742-MM',4), ('škoda','OS-002-DG',4),('bmw','OS-402-PO',4),('Mercedes','OS-7O2-AA',4), ('škoda','OS-000-SA',4),('škoda','OS-123-TZ',4)
('mercedes','OS-782-KL',4), ('škoda','OS-566-ZU',4),('škoda','OS-101-KL',4);

insert into vozač(ime,prezime,broj_vozacke,vozilo) values ('zoran','mrvonjić','7894562'1),('luka','onjić','1234562'2),('zvonko','mikić','7894592'3)
('leo','anić','0005062'4)('tomislav','brlić','0125692'6)('toni','kekez','8792346'5)('antun','vrban','7112359'7)('zoran','aleksi','6236897'8);

insert into putnik (ime,kontakt,adresa_polazista, adresa_odredista,) values ('ante','031598769','Sunčana 29' ,'vukovarska 120'), ('pero','031895769','Duga 159' ,'vukovarska 2')
('miro','0956935894','Županijska 8' ,'Istarska 5b'),('pavao','095589364','Ružina 4' ,'VIM 49'),('ana','031000769','hutlerova 51' ,'frankopanska 73'), ('tena','099875632','Sunčana 29' ,'vukovarska 120')

insert into voznja (putnik,vozac,cijena_voznje) values (1,2,37.78), (4,5,40.50), (5,7,98.00), (1,4,48.99), (7,9,52.00), (6,3,25.00), (6,4,50.00),
(6,3,45.00), (2,3,89.45);
