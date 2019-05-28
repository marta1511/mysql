
/*

c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\opg.sql"

*/
drop database if exists opg;
create database opg default character set utf8;
use opg;

create table proizvod (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena decimal(18,2) not null,
djelatnik int not null
);

create table djelatnik (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(23) not null
);

create table sirovina (
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table proizvod_sirovina (
proizvod int,
sirovina int
);

alter table proizvod add foreign key (djelatnik) references djelatnik (sifra);
alter table proizvod_sirovina add foreign key (proizvod) references proizvod(sifra);
alter table proizvod_sirovina add foreign key (sirovina) references sirovina(sifra);

insert into djelatnik (ime,prezime,iban) values ('marko','tomić','HR7524020069279467982'), ('krešimir','matić', 'HR7524020069279445612'), ('ana','andračić', 'HR7524020069277894521'),
('luka', 'leko','HR7524020069200025896'), ('marija','mato', 'HR7004020060009467982');

insert into proizvod (naziv,cijena, djelatnik) values ('pekmez od šljive', 32.44, 1), ('pekmez od marelice', 35.00, 1), ('rakija šljiva',60.00,2), ('med',35.00,4), ('mrkva',12.50,3), ('luk',5.99,3);

insert into sirovina (naziv) values ('šljiva'), ('marelica'), ('cvijeće'), ('mrkva'), ('luk');

insert into proizvod_sirovina (proizvod,sirovina) values (1,1), (2,2), (3,1), (4,1), (5,4), (6,5);