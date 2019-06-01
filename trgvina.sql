drop database if exists trgvina;
create database trgvina;
use trgvina;

create tabele racun (
sifra int not null primary key auto_increment,
datum datetime not null,
kupac varchar (50) not null
);

ccreate table stavka (
racun int,
proizvod int,
kolicina decimal (18,3) not null
);

create table proizvod (
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
cijena decimal (13,2) not null
);

alter table stavka add foreign key (racun) references racun(sifra);

alter table stavka add foreign key (proizvod) references proizvod (sifra);