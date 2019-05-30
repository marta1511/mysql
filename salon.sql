#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\salon.sql"
drop database if exists salon;
create database salon default character set utf8;
use salon;

create table djelatnica(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib varchar (13) not null,
satnica decimal(18,2) not null,
iban varchar(23) not null
);
 create table korisnik(
 sifra int not null primary key auto_increment,
 ime varchar(50) not null,
 prezime varchar(50) not null
 );
  create table usluga(
 sifra int not null primary key auto_increment,
 naziv varchar(50) not null,
 cijena decimal(18,2)
 );
 
 
 create table posjet(
 sifra int not null primary key auto_increment,
 termin datetime not null,
 djelatnica int,
 korisnik int,
 usluga int
 );
 
alter table posjet add foreign key (djelatnica) references djelatnica(sifra);
alter table posjet add foreign key (korisnik) references korisnik(sifra);
alter table posjet add foreign key (usluga) references usluga(sifra);


insert into djelatnica (ime, prezime ,oib, satnica,iban) values ('mara','maric',123456789987,25.13,'HR8424015896816935295'),
('ana','nikolic',48579325895,15.78,'HR8424020061816935295'), ('lara','marić',58963245874,26.78,'HR8424020061816912345');

insert into korisnik (ime,prezime) values ('luka','branković'),('ana','anić'),('ana','nikolić');

insert into usluga (naziv, cijena) values ('šišanje muško',25.99), ('šišanje žensko',69.88),('feniranje',99.10),('pranje kose',50.00);

insert into posjet (termin,djelatnica,korisnik,usluga) values ('2019-05-25',1,1,2), ('2019-03-05',2,1,3);