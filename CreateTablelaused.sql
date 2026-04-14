create database Lisetebaas;
use Lisetebaas;
--tabeli loomine
CREATE TABLE opilane(
opilaneId int Primary Key identity(1, 1), 
eesnimi varchar(25), 
perekonnanimi varchar(30) not null, 
synniaeg date,
pohitoetus bit,
aadress TEXT,
keskmineHinne decimal(2, 1))

SELECT * FROM opilane;

--andmete lisamine tabelisse
INSERT INTO opilane(perekonnanimi, eesnimi, synniaeg)
VALUES ('Sinine', 'Sall', '2003-10-23'),
('Roheline', 'Hobu', '2002-09-1')

--uuendame tabeliandmeid
UPDATE opilane SET aadress='Tallinn, Eesti'
UPDATE opilane SET pohitoetus=1 --1 on true
UPDATE opilane SET keskmineHinne=3.8;

--kui soovime kõik veerud täita - ei pea neid nimetama
INSERT INTO opilane
VALUES ('Nimi', 'perenimi', '2003-10-23', 0, 'Tartu, Eesti', 3.5) 
