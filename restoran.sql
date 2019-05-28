#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 <"D:\restoran.sql"

drop database if exists restoran;
create database restoran default character set utf8;
use restoran;

create table kategorija(
sifra int not null primary key auto_increment,
naziv varchar (50) not null
);

create table jelo(
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
cijena decimal (18,2) not null, 
kategorija int not null
);

create table pice (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
vrsta varchar(50) not null
);

create table jelo_pice(
pice int,
jelo int
);

alter table jelo add foreign key (kategorija) references kategorija(sifra);
alter table jelo_pice add foreign key (pice) references pice(sifra);
alter table jelo_pice add foreign key (jelo) references jelo(sifra);

insert into kategorija (naziv) values ('hladno predjelo'), ('toplo predjelo'), ('jela s roštilja'), ('salate'), ('prilozi'), ('riblji meni'), ('tjestenine'), ('pizze'), ('deserti');

insert into jelo (naziv, cijena, kategorija) values ('hladna plata',170.00,1), ('mješano meso',250.00,3), ('cezar salata',49.00,4), ('špageti bolonjez',45.00,7), ('margarita',52.00,8),
('pastrva s blitvom',89.00,6), ('palačinke',18.00,9), ('lepinjice',17.00,6);

insert into pice (naziv,vrsta) values ('fanta','gazirano piće'), ('pelinkovac','alkoholno piće'), ('pivo','alkoholno piće'), ('jana', 'negazirana voda'), ('jamnica','gazirano piće'),
('kava s mlijekom','topli napici'), ('bijelo vino','alkoholno piće');

insert into jelo_pice (pice, jelo) values (1,2), (2,1), (3,5), (4,4), (5,4), (2,7), (3,5), (3,4);