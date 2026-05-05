<img width="1017" height="432" alt="{4805EFEF-947A-412A-B780-AEF3C6A78661}" src="https://github.com/user-attachments/assets/46dae243-80df-4b6d-904d-fde9a31cb3f0" />

```sql
create database selectPeelo;
use selectPeelo;
create table auto(
autonumber char(6) primary key, 
mark varchar(30),
mudel varchar(50),
v_aasta int,
varv varchar(50),
hind money);

select * from auto;
--mockaroo.com --kasutame andmete genereerimiskes

insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('045mL5', 'Subaru', 'Forester', 2001, 'Aquamarine', '€3152,99');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('038iK2', 'Honda', 'Accord', 1988, 'Puce', '€435,87');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('299VI8', 'Volkswagen', 'Eurovan', 1993, 'Khaki', '€7002,16');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('208qIK', 'GMC', 'Envoy', 1998, 'Goldenrod', '€982,33');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('8990ud', 'Jeep', 'Liberty', 2003, 'Puce', '€8559,17');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('649aEt', 'Toyota', '4Runner', 1996, 'Blue', '€1613,58');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('103oxk', 'Acura', 'ZDX', 2011, 'Violet', '€9775,69');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('519H9F', 'Infiniti', 'G', 1993, 'Teal', '€2649,37');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('482PYm', 'Lincoln', 'Town Car', 2002, 'Turquoise', '€721,33');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('3374nC', 'Pontiac', 'LeMans', 1964, 'Maroon', '€7497,88');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('805g54', 'Chevrolet', 'Corvette', 1955, 'Crimson', '€921,13');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('162lEL', 'Cadillac', 'Catera', 1997, 'Puce', '€1290,28');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('9090ek', 'Dodge', 'Dakota Club', 2003, 'Puce', '€7741,76');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('034dLV', 'Lexus', 'SC', 1997, 'Green', '€1233,47');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('245C0r', 'Ford', 'Explorer Sport Trac', 2000, 'Maroon', '€8912,31');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('764sl9', 'Toyota', '4Runner', 2006, 'Crimson', '€1087,05');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('526HLN', 'Chevrolet', 'Tracker', 2003, 'Pink', '€7568,34');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('847UxG', 'Subaru', 'Impreza', 1998, 'Turquoise', '€6739,02');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('6520mU', 'Mazda', 'Protege', 1999, 'Fuscia', '€5011,17');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('604MfW', 'Suzuki', 'X-90', 1997, 'Goldenrod', '€737,26');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('843ATy', 'Ford', 'Flex', 2011, 'Khaki', '€6456,39');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('6068Ri', 'Chevrolet', 'Corvette', 1997, 'Indigo', '€9248,91');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('487Qvb', 'Mitsubishi', '3000GT', 1998, 'Red', '€1749,63');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('1284ls', 'Porsche', 'Boxster', 2005, 'Fuscia', '€6361,85');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('382Tzf', 'Mazda', 'RX-7', 1985, 'Purple', '€608,39');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('116kn8', 'Mitsubishi', 'Challenger', 2002, 'Turquoise', '€6769,00');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('702rlg', 'Buick', 'Rainier', 2006, 'Yellow', '€6136,87');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('6251Ui', 'BMW', '3 Series', 2003, 'Khaki', '€1844,49');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('901Qgr', 'Hyundai', 'Tiburon', 2006, 'Orange', '€9433,14');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('674LbA', 'GMC', 'Sierra 2500', 2005, 'Turquoise', '€4768,70');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('277U60', 'Subaru', 'B9 Tribeca', 2007, 'Crimson', '€5762,28');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('143smd', 'Mercedes-Benz', 'W201', 1987, 'Maroon', '€1815,14');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('918EXt', 'Suzuki', 'Forenza', 2004, 'Yellow', '€9994,09');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('762Eqc', 'Oldsmobile', 'Ciera', 1996, 'Mauv', '€8168,82');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('221fXq', 'Honda', 'Accord', 1991, 'Aquamarine', '€7627,71');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('612MaK', 'Ford', 'Escort', 2004, 'Purple', '€9907,88');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('545w8O', 'BMW', 'X5', 2002, 'Green', '€8000,65');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('654w73', 'Ford', 'Expedition', 2008, 'Puce', '€5307,64');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('606P35', 'Dodge', 'Viper', 2002, 'Violet', '€5718,08');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('199kLb', 'Audi', '4000s', 1985, 'Purple', '€2397,31');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('876TVp', 'Ford', 'F-Series', 1991, 'Teal', '€3560,99');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('453eL3', 'Chevrolet', 'Equinox', 2007, 'Indigo', '€4511,17');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('442tTR', 'Ford', 'F250', 2000, 'Green', '€8284,38');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('170OX4', 'Buick', 'Riviera', 1998, 'Goldenrod', '€770,03');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('265LXG', 'Suzuki', 'Daewoo Magnus', 2005, 'Turquoise', '€1665,11');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('019N6M', 'Chevrolet', '3500', 1997, 'Teal', '€9409,29');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('933s6x', 'Suzuki', 'SJ', 1990, 'Orange', '€9735,93');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('6677Kc', 'Dodge', 'Ram 2500', 2009, 'Puce', '€2138,80');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind)
values ('735oFx', 'Subaru', 'Impreza', 2000, 'Purple', '€9556,74');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) 
values ('393DuS', 'Buick', 'Lucerne', 2007, 'Pink', '€5787,90');
```

```sql
--näita kõik
select * from auto;

--näita ainult mark,mudel, ja hind
select mark, mudel, hind from auto

--tingimused
--sorteerimine - ORDER by -kasvavalt, DESC - kahanevalt
select mark, mudel, hind
from auto 
ORDER by hind DESC;

-- mark algab c tähega
select mark from auto 
where mark like 'C%';

--mark sisaldab c täht
select mark from auto 
where mark like '%C%';

--hind on vahemikus 100000 kuni 500000 euro
select mark, autonumber, hind
from auto
where hind > 100000 And hind < 500000;

--teine variant
select mark, autonumber, hind
from auto
where hind between 100000 And 500000;

--kombineeritud tingimused(AND, OR, NOT)
select mark, autonumber, hind
from auto
where mark like 'Audi' or hind <=100000

--vaate loomine - VIEW
create view audiAutod
AS
select mark, autonumber, hind
from auto
where mark like 'Audi';

--view kasutamine
select * from audiAutod;

--agregaatfunktsioonid - SUM, MAX, MIN, AVG, COUNT- kogus
--Leia mitu autot on tabelis
select count(*) AS autodeArv from auto;

--leia keskmine autohind
select avg(hind) AS 'auto Keskmine Hind' from auto;

--leia keskmine autohind iga margi kohta 
select mark, avg(hind) AS 'auto Keskmine Hind'
from auto 
group by mark;
```

<img width="563" height="457" alt="{88A4D5AF-BD12-450A-BCA4-77BA5F01FC77}" src="https://github.com/user-attachments/assets/f90508bb-0ed0-4f8e-819c-e7eb85ef0adc" />
