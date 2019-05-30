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
brojvozacke varchar (50) not null,
vozilo int
);

create table putnik (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
kontakt varchar (50) not null,
adresa_polazista varchar(50) not null, 
broj_polazista varchar(5) not null,
adresa_odredista varchar(50) not null,
broj_odredista varchar(5) not null
);

create table voznja(
putnik int not null,
vozac int not null,
cijena_voznje decimal (18,2) not null
);

alter table vozac add foreign key (vozilo) references vozilo(sifra);
alter table voznja add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik) references putnik(sifra);