# Andmebaasid-LOGITpe24
Andmebaasidega seotud sql kood ja konspekt

- SQL - Structured Query Language - struktureeritud päringukeel
- DDL - Data Definition Language - andmebaasi struktuuri loomiseks - CREATE, ALTER
- DML - Data Manipulation Language - andmete lisamine ja uuendamine tabelis - INSERT, UPDATE, DELETE

## Tunnis kasutame andmebaasihalduse:
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
