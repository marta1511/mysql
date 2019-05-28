/*

c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\utakmica.sql"

*/
drop database if exists utakmica;
create database utakmica default character set utf8;
use utakmica;

create table utakmica (
sifra int not null primary key auto_increment,
datum datetime not null,
stadion varchar (50),
domacin int, 
gost int,
rezultat varchar(50) not null
);

create table momcad ( 
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
mjesto varchar (50) not null
);

alter table utakmica add foreign key (gost) references momcad(sifra);
alter table utakmica add foreign key (domacin) references momcad(sifra);


insert into momcad (naziv,mjesto) values ('hajduk','split'), ('dinamo','zagreb'), ('cibalia','vinkovci'), ('osijek','osijek');
insert into utakmica (datum,stadion,domacin,gost,rezultat) values ('2019-05-02','poljud',2,1,'3:2'), ('2019-06-06','gradski vrt',4,3,'1:1');