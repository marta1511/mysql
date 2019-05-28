drop database if exists imenik;
create database imenik;
use imenik;

create table kontakt (
sifra int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar (50) not null,
broj varchar (20) not null,
vrsta int
);

create table vrsta (
sifra int not null primary key auto_increment,
naziv varchar (50) not null
);

alter table kontakt add foreign key (vrsta) references vrsta (sifra);

