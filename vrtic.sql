/*

c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\vrtic.sql"

*/
drop database if exists vrtic;
create database vrtic default character set utf8;
use vrtic;

create table skupina(
sifra int not null primary key auto_increment, 
naziv varchar(50) not null,
teta int 
);

create table teta (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);
create table dijete (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null, 
datumrodenja datetime not null
);


create table dijete_skupina (
skupina int,
dijete int
);


alter table skupina add foreign key (teta) references teta(sifra);
alter table dijete_skupina add foreign key (skupina) references skupina(sifra);
alter table dijete_skupina add foreign key (dijete) references dijete(sifra);

insert into teta (ime,prezime) values ('katarina','stepić'), ('martina','kukac'), ('valentina','mikić'), ('matea','lukap'), ('ana','anić');
insert into skupina (naziv,teta) values ('pčelice',1), ('bubamare',2), ('tulipani',3), ('tratinčice',5), ('krijesnice',4);
insert into dijete (ime, prezime, datumrodenja) values ('luka','cerovac','2015-06-02'), ('marta,','martić','2016-08-01'), ('kristija','klarić','2017-05-04'), ('maja','marinković','2016-07-09');
insert into dijete_skupina (skupina,dijete) values (1,1), (3,5), (2,2);