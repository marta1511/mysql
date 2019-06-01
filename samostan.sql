drop database if exists samostan;
create database samostan;
use samostan;

create table svecenik (
sifra int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar(50) not null,
zupa varchar(50) not null,
titula varchar(50) not null,
nadredeni int not null
);

create table posao (
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table svecenik_posao (
svecenik int,
posao int
);

alter table svecenik_posao add foreign key (svecenik) references svecenik(sifra);
alter table svecenik_posao add foreign key (posao) references posao(sifra);
alter table svecenik add foreign key (nadredeni) references svecenik (sifra);