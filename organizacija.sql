
drop database if exists organizacija;
create database organizacija default character set utf8;
use organizacija;

create table zaposlenik (
sifra int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar(50) not null,
odjel int not null,
nadredeni int
);

create table odjel (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
voditelj varchar(50) not null

alter table zaposlenik add foreign key (odjel) references odjel(sifra);
alter table zaposlenik add foreign key (nadredeni) references zaposlenik (sifra);
alter table odjel add foreign key (voditelj) references voditelj(sifra);

