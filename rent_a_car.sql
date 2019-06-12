#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "D:\mysql\mysql\rent_a_car.sql"
drop database if exists rent_a_car;
create database rent_a_car default character set utf8;
use rent_a_car;


create table model( 
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
marka varchar(50) not null,
tip varchar(50) not null,
broj_sjedala int not null, 
vrsta_motora varchar(50) not null,
automatik boolean not null, 
godina_proizvodnje year not null,
cijena_po_danu decimal (18,2) not null
);

create table vozilo(
sifra int not null primary key auto_increment,
registracijska_oznaka varchar (100) not null, 
datum_registracije datetime not null,
model int
);

create table klijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar (50) not null, 
telefon varchar (13) not null,
broj_vozacke varchar (8) not null
);

create table zaposlenik (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
telefon varchar (13) not null,
iban varchar(23) not null
);

create table iznajmljivanje (
sifra int not null primary key auto_increment,
datum_preuzimanja datetime not null, 
datum_povratka datetime not null,
broj_ugovora varchar(50) not null,
ukupan_iznos_najma decimal(18,2) not null,
klijent int, 
vozilo int,
zaposlenik int
);

alter table vozilo add foreign key (model) references model(sifra);
alter table iznajmljivanje add foreign key (klijent) references klijent(sifra);
alter table iznajmljivanje add foreign key (vozilo) references vozilo(sifra);
alter table iznajmljivanje add foreign key (zaposlenik) references zaposlenik(sifra);





insert into model (naziv, marka, tip, broj_sjedala,vrsta_motora,automatik,godina_proizvodnje,cijena_po_danu) values
#1
 ('Opel Karl','Opel','1.0 Easytronic',4,'Benzin',0,'2017',430.00),
#2
 ('Opel Insignia','Opel','2,0 CDTI',5,'Diesel',0,'2015',430.00),
#3
 ('Opel Corsa','Opel','1.3CDTI',4,'Diesel',0,'2010',320.00),
#4
 ('Opel Adam','Opel','1.4 Easytronic',4,'Benzin',1,'2017',450.00),
#5
 ('Opel Vivaro','Opel','2.0 TDI',9,'Diesel',0,'2013',1250.00),
#6
 ('Renault Clio','Renaul','	dCi 75',5,'Diesel',0,'2015',300.00), 
#7
 ('Renault Clio','Renaul','1,5 dCi',5,'Diesel',0,'2014',280.00), 
#8
 ('Golf VII','VW','1.6 TDI BMT',5,'Diesel',0,'2014',350.00),
#9
 ('Golf VII','VW','1.6 TDI BMT',5,'Diesel',0,'2016',450.00),
#10
 ('Golf VI','VW','1.6 TDI BMT',5,'Diesel',0,'2012',300.00),
#11
 ('Polo','VW','1.2 TDI',5,'Diesel',0,'2013',290.00),
#12
 ('Polo','VW','1.2 TDI',5,'Diesel',0,'2012',230.00),
#13
 ('Passat','VW','2.0 TDI',5,'Diesel',0,'2016',700.00),
#14
 ('Audi A4','AUDI','2.0 TDI',5,'Diesel',0,'2013',600.00),
#15
 ('Audi A1','AUDI','1.9 TDI',5,'Diesel',0,'2014',500.00),
#16
 ('Audi A6','AUDI','3.0 TDI',5,'Diesel',1,'2015',800.00),
#17
 ('Audi A1','AUDI','1.9 TDI',5,'Diesel',0,'2014',500.00),
#18
 ('Mercedes C klasa','Mercedes-Benz','1.8 TDI',5,'Disele',1,'2016',1000.00),
#19
 ('Mercedes E klasa','Mercedes-Benz','2.2 TDI',5,'Disele',1,'2016',1200.00),
#20
 ('Mercedes A klasa','Mercedes-Benz','1.8 TDI',5,'Disele',1,'2015',850.00),
#21
 ('Hyundai i10','Hyundai','1.0 TDI',5,'Diesel',0,'2012',250.00),
#22
 ('Hyundai i20','Hyundai','1.2 TDI',5,'Diesel',0,'2012',290.00),
#23
 ('Suzuki Vitara','Suzuki','2.0',5, 'Benzin',0,'2016',570.00),
#24
 ('Suzuki Swift ','Suzuki','1.6',5, 'Benzin',0,'2012',370.00),
#25
('Ford Fiesta ','Ford','1.0 i',5, 'Benzin',0,'2012',270.00),
#26
('Ford Cmax ','Ford','1.6',5, 'Benzin',0,'2012',320.00),
#27
('Ford Transit','Ford','1.6 TDCI',5, 'Diesel',0,'2015',950.00),
#28
('BMW serija 1','BMW','1.8 i',5, 'Benzin',1,'2012',550.00),
#29
('BMW serija 5','BMW','3.0 d',5, 'Diesel',1,'2014',850.00),
#30
('Mini O ne ','Mini','1.8 ',5, 'Diesel',0,'2011',500.00);





insert into vozilo (registracijska_oznaka,datum_registracije,model) values
('OS-352-NA','2018-11-06',1), 
('OS-302-MP','2018-08-26',2),
('OS-872-LO','2018-07-03',3), 
('OS-032-NN','2019-05-06',4),
('OS-355-LM','2019-03-06',5),
('OS-970-MJ','2019-02-21',6),
('OS-167-LG','2019-02-06',7),
('OS-176-DH','2019-03-06',8),
('OS-101-VV','2019-04-26',9),
('OS-444-PA','2019-03-06',10),
('OS-205-CJ','2018-08-16',11),
('OS-578-VC','2019-02-16',12),
('OS-002-LK','2019-04-07',13),
('OS-935-CC','2019-03-06',14),
('OS-500-SK','2018-12-08',15),
('OS-266-KI','2019-05-26',16),
('OS-707-ZK','2019-03-06',17),
('OS-547-AM','2018-09-26',18),
('OS-807-TK','2019-02-05',19),
('OS-005-TG','2018-08-06',20),
('OS-012-VK','2019-02-01',21),
('OS-031-IP','2018-07-16',22),
('OS-175-IH','2018-11-06',23),
('OS-551-PL','2019-04-12',24),
('OS-229-KR','2019-05-29',25),
('OS-415-LH','2018-08-08',26),
('OS-092-MA','2019-02-13',29),
('OS-830-ZU','2018-12-23',28),
('OS-882-IH','2018-03-11',29),
('OS-611-PL','2019-03-06',30);


insert into klijent (ime,prezime,email,telefon,broj_vozacke) values
('Marko','Anić','marko038@gmail.com','099875632','00003258'), 
('Luka','Marić','lukamaric@gmail.com','0958753298','02203256'),
('Ana','Marinović','ancica@gmail.com','0913654123','12386658'),
('Elizabet','Deljak','elizadeljak02@hotmail.com','0993546987','89562314'),
('Stjepan','Kilak','stipe7895@gmail.com','0914568932','78965412'),
('Marin','Šutalo','Marin_sutalo@gmai.com','031458963','52896541'),
('Jasmina','Natić','jasminkanatic8@gmail.com','099753698','35759632'),
('Luka','Branković','brankovicluka15@gmail.com','0954368759','74126536'),
('Ivan','Kovačević','ivankova@gmail.com','091222365','00281158'),
('Ivan', 'Korov','ivankorov6@gmail.com','0919123003','00886915'),
('Stela', 'Morov','stelaamorov@gmail.com','0959123123','15113698'),
('Luka','Lukić','luka_lukic@gmail.com','0958786208','32659871'),
('Jure','Marković','jure@gmaimarkovic@l.com','0912025836','25030490'),
('Manuela','Bosanac','bosanacela@gmail.com','0980006987','10647200'),
('Iris','Lukačević','irislukacevic@gmail.com','0958751284','64003201'),
('Laura','Nikuš','lauraaaa2@gmail.com','091536789','33512400'),
('Laura','Stepić','laurastep@gmail.com','091500389','56231479'),
('Saša','Kupiš','salekupis@gmail.com','0957823510','10156300'),
('Kristijan','Radoš','kristijan_rados05@gmail.com','031644789','11559902');


insert into zaposlenik (ime,prezime,telefon,iban) values 
('Zdenko', 'Stipanović','0997259398', 'HR0823400091933234238'),
('Dino','Herceg','0913506866','HR7624840086767784526'),
('Nikola','Kovačević','0919977231','HR8323600004583298637'),
('Marko','Matović','0915479392','HR0623400092965341628');

insert into iznajmljivanje (datum_preuzimanja,datum_povratka,broj_ugovora,ukupan_iznos_najma,klijent,vozilo,zaposlenik) values 
('2019-02-23','2019-02-25','1/19','860.00',1,2,1), 
('2019-02-23','2019-02-27','2/19','5000.00',2,5,2),
('2019-02-23','2019-02-24','3/19','500.00',3,30,1),
('2019-02-23','2019-02-26','4/19','1050.00',4,8,1),
('2019-02-24','2019-02-27','5/19','2400.00',5,16,3),
('2019-02-24','2019-02-29','6/19','3500.00',6,13,3),
('2019-02-24','2019-02-27','7/19','1500.00',7,17,4),
('2019-02-24','2019-02-29','8/19','690.00',8,12,3),
('2019-02-24','2019-02-26','9/19','1700.00',9,20,3),
('2019-02-25','2019-03-01','10/19','2150.00',10,2,2),
('2019-02-25','2019-02-29','11/19','1800.00',11,9,2),
('2019-02-25','2019-02-27','12/19','1900.00',12,27,1),
('2019-02-26','2019-02-29','6/19','3000.00',13,18,2);







