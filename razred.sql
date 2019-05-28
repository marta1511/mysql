/*

c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\razred.sql"

*/

drop database if exists razred;
create database razred default character set utf8;
use razred;

create table razred (
sifra int not null primary key auto_increment,
naziv varchar (20) not null
);

create table ucenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodenja datetime not null,
ulica varchar(50) not null,
kucni_broj varchar(5) not null,
mjesto varchar(50) not null,
razred int
);

create table profesor (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
predmet varchar(50) not null
);

create table razred_profesor (
profesor int,
razred int
);

alter table ucenik add foreign key (razred) references razred(sifra);

alter table razred_profesor add foreign key (profesor) references profesor(sifra);

alter table razred_profesor add foreign key (razred) references razred (sifra); 

insert into razred (naziv) values ('7a'), ('7b'),('8a'),('8b'),('6a'),('5a'),('6b'),('5b');

insert into ucenik (ime,prezime,datum_rodenja,ulica,kucni_broj,mjesto,razred) values 
('marko','marković','2005-15-11','K.A.Stepinca','26','Osijek',1),
('ana','marković','2004-16-12','Sunčana','278','Osijek',4),
('flip','barić','2007-08-08','K.A.Stepinca','28','Osijek',8),
('luka','nekić','2004-15-11','I.G.Kovačića','26','Osijek',4),
('luna','neki','2004-15-06','I.G.Kovačića','785','Osijek',3),
('ante','anić','2004-23-17','I.G.Kovačića','26','Osijek',4);

insert into profesor (ime,prezime,predmet) values ('luna','kulić','matematika'),
('marina','kovačević','priroda'), ('rebeka','rimac','hrvatski jezik'), ('saša','kopac','informatika');

insert into razred_profesor (profesor,razred) values (2,3), (1,5), (3,4), (4,6);
