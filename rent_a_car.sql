#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\mysql\mysql\rent_a_car.sql"
drop database if exists rent_a_car;
create database rent_a_car default character set utf8;
use rent_a_car;


create table model( 
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
marka varchar(50) not null,
broj_sjedala int, 
vrsta_motora varchar(50) not null,
automatik boolean not null, 
godina_proizvodnje year not null,
cijena_po_danu decimal (18,2) not null
);

create table vozilo(
sifra int not null primary key auto_increment,
registracijska_oznaka varchar (100) not null, 
datum_registracije datetime not null,
model int
);

create table klijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar (50) not null, 
telefon varchar (13) not null,
broj_vozacke varchar (15) not null
);

create table zaposlenik (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
telefon varchar (13) not null,
iban varchar(23) not null
);

create table iznajmljivanje (
sifra int not null primary key auto_increment,
datum_preuzimanja datetime not null, 
datum_povratka datetime not null,
broj_ugovora varchar(50) not null,
klijent int, 
vozilo int,
zaposlenik int
);

alter table vozilo add foreign key (model) references model(sifra);
alter table iznajmljivanje add foreign key (klijent) references klijent(sifra);
alter table iznajmljivanje add foreign key (vozilo) references vozilo(sifra);
alter table iznajmljivanje add foreign key (zaposlenik) references zaposlenik(sifra);