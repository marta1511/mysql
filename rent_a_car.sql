#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\rent_a_car.sql"
drop database if exists rent_a_car;
create database rent_a_car default character set utf8;
use rent_a_car;


create table podaci( 
sifra int not null primary key auto_increment,
vrsta_vozila varchar(50) not null,
marka varchar(50) not null,
broj_sjedala int, 
vrsta_motora varchar(50) not null,
automatik boolean not null, 
boja varchar(20) not null,
cijena decimal (18,2) not null
);

create table vozilo(
sifra int not null primary key auto_increment,
naziv varchar(50)not null,
registracijska_oznaka varchar (100) not null, 
datum_registracije datetime not null,
podaci int
);

create table klijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar (50) not null, 
telefon varchar (13) not null,
broj_vozacke varchar (15) not null
);

create table iznajmljivanje (
sifra int not null primary key auto_increment,
datum_preuzimanja datetime not null, 
datum_povratka datetime not null,
broj_ugovora varchar(50) not null,
klijent int, 
vozilo int
);

alter table vozilo add foreign key (podaci) references podaci(sifra);
alter table iznajmljivanje add foreign key (klijent) references klijent(sifra);
alter table iznajmljivanje add foreign key (vozilo) references vozilo(sifra);