# AndmebaasidLOGITpe24
Andmebaasidega seotud sql kood ja konspekt

- SQL - Structured Query Language - struktureeritud päringukeel
- DDL - Data Definition Language - andmebaasi struktuuri loomiseks - CREATE, ALTER
- DML - Data Manipulation Language - andmete lisamine ja uuendamine tabelis - INSERT, UPDATE, DELETE

  ## Sisukord
  - [Andmebaasihaldusüsteemid](#-Andmebaasihaldusüsteemid)
  - [Põhimõisted](#-Põhimõisted)
  - [Andmetüübid](#-Andmetüübid)
  - [Piirangud](#-Piirangud)
  - [Tabelivahelised seosed](#-Tabelivahelisedseosed)

## Andmebaasihaldusüsteemid:
1. SQL Server Management Stuudio (SQL Serveri haldamiseks)
   <img width="480" height="514" alt="{BD537224-0B80-4DE1-ACA5-3C968BD484D5}" src="https://github.com/user-attachments/assets/0b00658a-0fce-451c-b451-fa8d06a03d63" />
2. XAMPP -phpmyAdmin (mariaDB andmebaas) -vabavara

   ## Põhimõisted

- Andmebaas - struktueeritud andmete kogum
- Tabel - olem (entity)
- Veerg - väli (field)
- Rida - kirje (record)
- Primaarne võti -PK- Primary key - veerg (tavliselt nimega id) unikaalse identifikaatooriga, mis eristab iga kirjet
- Välisvõti (võõrvõti) -FK- Foreign Key - veerg, mis loob seose teise tabeli primaarvõtmega

  ## Andmetüübid
  - INT, float, decimal(6,2) - numbrilised
  - varchar(50), char(6) - tekst/sümbolid
  - boolean, bool, bit - loogiline tüüp
  - date, time, datetime - kuupäeva

## Piirangud
```
1. Primary Key
2. Foreign Key
3. Unique
4. Not null
5. Check
```

## Tabelivahelised seosed
- üks - ühele (nt mees --naine)
- üks - mitmele (nt õpilane käib erinevates õppeainetes)
  <img width="300" height="200" alt="{81ED5922-9511-455A-887D-913B93FBE95C}" src="https://github.com/user-attachments/assets/58b99694-e55c-477a-a89a-61db203d68ec" />
  
- mitu - mitmele (nt õpilane - õpetaja)

## Stored procedure
  Salvestatud protseduurid - sama mis on funktsioonid programeerimises - mingi tegevus(ed) mida saab automaatselt teha (INSERT, SELECT, UPDATE, DELETE)
```sql
-- protseduur, mis täidab tabeli
create procedure lisaKategooria
@nimi varchar(15)
AS
BEGIN
	INSERT INTO categories
	VALUES (@nimi);
	select * from categories;

--protseduur, mis kustutab tabelist id järgi
create procedure kustutaIdJargi
@id int
AS
BEGIN
	SELECT * FROM categories;
	Delete from categories where category_id=@id;
	SELECT * FROM categories;
END

--kutse
EXEC kustutaIdJargi 3;
END

--kutse
EXEC lisaKategooria 'test';
```
  
