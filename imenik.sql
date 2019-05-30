#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\mysql\mysql\imenik.sql"
drop database if exists imenik;
create database imenik default character set utf8;
use imenik;

create table vrsta (
sifra int not null primary key auto_increment,
naziv varchar (50) not null
);


create table kontakt (
sifra int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar (50) not null,
broj varchar (20) not null,
vrsta int
);


alter table kontakt add foreign key (vrsta) references vrsta (sifra);

insert into vrsta (naziv) values ('mobitel'), ('kućni_telefon');
insert into kontakt (ime,prezime,broj,vrsta) values ('leo','maras','0998752452',1), ('ante','anić','031583694',2), ('lana','barić','0915236478',1), ('lovro','lovrić',1,'095876321');


