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


```sql
--2. DELETE triger - jälgib kustutamist tabelis linnad 
--teeb vastava kirje logi tabelisse
create trigger linnaKustutamine
on linnad -- tabel, mida triger jälgib
for delete
as
insert into logi (kasutaja, aeg, andmed)
select 
SYSTEM_USER, --sisselogitud user
GETDATE(), 
CONCAT('kustutatud: ', deleted.linnanimi, ', ', deleted.maakond, ', ', deleted.rahvaArv)
from deleted;

--kontroll
delete from linnad where linnId=2;

select * from linnad;
select * from logi;
```
<img width="479" height="228" alt="{53068D44-BB9E-42AB-9FD6-4E69CA02F13B}" src="https://github.com/user-attachments/assets/57adc0bb-6f0b-4494-bd58-1a3fbae1a849" />

```sql
--3. UPDATE triger - jälgib uuendused/muutused tbelis linnad
--teeb vastava kirje tabelis logi
create trigger linnaUuendamine
on linnad -- tabel, mida triger jälgib
for update
as
insert into logi (kasutaja, aeg, andmed)
select 
SYSTEM_USER, --sisselogitud user
GETDATE(), 
CONCAT('vanad andmed: ', 
deleted.linnanimi, ', ', deleted.maakond, ', ', deleted.rahvaArv,
' ||| uued andmed: ', 
inserted.linnanimi, ', ', inserted.maakond, ', ', inserted.rahvaArv)
from deleted inner join inserted
on deleted.linnId=inserted.linnId;

--kontroll
update linnad set linnaNimi='Tallinn22', rahvaArv=700000
where linnId=1;

select * from linnad;
select * from logi;

--trigeri sisse/välja lülitamine
disable trigger linnaLisamine on linnad;
disable trigger linnaKustutamine on linnad;
enable trigger linnaUuendamine on linnad;

--ühine triger mis jälgib kas lisamine või kustutamine tabelisse linnad
create trigger linnaLisamineKustutamine
on linnad 
for insert, delete
as
begin
set nocount on;
	insert into logi (kasutaja, aeg, andmed)
	select 
	SYSTEM_USER, 
	GETDATE(), 
	CONCAT('lisatud: ', inserted.linnanimi, ', ', inserted.maakond, ', ', inserted.rahvaArv)
	from inserted

	union all 

	select 
	SYSTEM_USER, 
	GETDATE(), 
	CONCAT('kustutatud: ', deleted.linnanimi, ', ', deleted.maakond, ', ', deleted.rahvaArv)
	from deleted;
end;

--kontroll
delete from linnad where linnId=3;

insert into linnad(linnaNimi, maakond, rahvaArv)
values ('Viljandi', 'Viljandimaa', 50000)

select * from linnad;
select * from logi;

--teeme kasutaja sekretarLisete - õigustega linna lisamine, kustutamine, uuendamine 
--ja ei näe tabeli logi ning ei saa trigereid muuta

--security --New login

grant select, insert, delete on linnad to sekretarLisete;
deny select on logi to sekretarLisete;
```

## XXAMP / päästikud / trigerid
### INSERT TRIGER

<img width="703" height="758" alt="{A91D9580-51E3-4518-8FB2-7B6B85DB1473}" src="https://github.com/user-attachments/assets/a2999f24-7d7b-48ce-9e95-3d807a30112c" />
<img width="830" height="210" alt="{F9D350A3-FFC1-4999-B729-773DA98766D5}" src="https://github.com/user-attachments/assets/7e8cf648-a52f-45cf-9f19-f94f9aaa40af" />

### DELETE TRIGER
<img width="656" height="376" alt="{9E160F53-BA1C-45D5-B02C-294E364C0724}" src="https://github.com/user-attachments/assets/7f8c2e23-cf32-4d27-b47d-8688a6150cca" />
<img width="753" height="52" alt="{12FC6126-0065-4B8A-8D74-95156CCF8AF1}" src="https://github.com/user-attachments/assets/d6150a79-3ea0-401c-a15f-70e5ea50557a" />


### UPDATE TRIGER
<img width="695" height="464" alt="{99EA6A1D-D4A4-4AF8-83D0-DFBD53E9750D}" src="https://github.com/user-attachments/assets/6f020402-1dd7-4daa-b19a-dc6f16414502" />
<img width="839" height="173" alt="{4CC12394-8C63-4B9A-8E9D-00419833BC0C}" src="https://github.com/user-attachments/assets/7145c9dd-89b4-4c2e-b7b5-dc40d8853e8c" />
