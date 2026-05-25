## Triger - trigger - päästik
### Triger - andmebaasi objekt, mis käivitub automaatselt, kui toimub teatud sündmus (nt INSERT, UPDATE, DELETE).
Trigerite loomine - automatiseerub protsessid SQL Serveris.

Tabelid, mid tuleb luua enne trigerit!
```sql
create database trigerLogitpe24;
use trigerLogitpe24;

create table linnad(
linnId int primary key identity(1,1),
linnaNimi varchar(30) unique,
maakond varchar(50),
rahvaArv int);

select * from linnad;

insert into linnad(linnaNimi, maakond, rahvaArv)
values ('Tallinn', 'Harjumaa', 600000)

--tabel logi - tabel, mis täidab triger, kui kasutaja täidab tabeli linnad
create table logi(
id int primary key identity(1,1),
kasutaja varchar(50),
aeg DATETIME, 
andmed TEXT);
```

```sql
--1. triger lisatud andmete jälgimiseks tabelis linnad.
--jälgib linna sisestamine tabelisse ja teeb vastava kirje logi-tabelis
create trigger linnaLisamine
on linnad -- tabel, mida triger jälgib
for insert
as
insert into logi (kasutaja, aeg, andmed)
select 
SYSTEM_USER, --sisselogitud user
GETDATE(), 
CONCAT('lisatud: ', inserted.linnanimi, ', ', inserted.maakond, ', ', inserted.rahvaArv)
from inserted;

--kontrollimiseks tuleb lisada linna tabelisse linnad
insert into linnad(linnaNimi, maakond, rahvaArv)
values ('Viljandi', 'Viljandimaa', 50000)

select * from linnad;
select * from logi;
```
<img width="486" height="232" alt="{2156B94A-F8E0-432B-B4DD-D3B51CC07446}" src="https://github.com/user-attachments/assets/3b370944-2785-408a-819a-2bb786b2dff6" />
