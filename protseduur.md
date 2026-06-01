# SQL Protseduurid (Stored Procedures)

[Põhimõisted](README.md) | [Select laused](select.md) | [Triggerid](trigerid.md) | [Portfooli](keys.md) | [Kasutajad](kasutaja.md) | [Protseduurid](protseduur.md) | [Vaade](vaade.md)

## Eesmärk

SQL protseduur (Stored Procedure) on andmebaasi salvestatud SQL-käskude kogum, mida saab käivitada ühe käsuga. Protseduurid aitavad automatiseerida korduvaid tegevusi, parandada jõudlust ja muuta koodi paremini hallatavaks.

## Protseduuri loomine

Näide SQL Serveris:

```sql
CREATE PROCEDURE kuvaKasutajad
AS
BEGIN
    SELECT * FROM kasutajad;
END;
```

## Protseduuri käivitamine

```sql
EXEC kuvaKasutajad;
```
<img width="394" height="265" alt="{742DC269-63D5-4138-B7D6-626171486156}" src="https://github.com/user-attachments/assets/7b82d92c-32b1-47e9-a141-5aac51b3d0cb" />

## Parameetrite kasutamine

Protseduur võib võtta sisendparameetreid.

```sql
CREATE PROCEDURE leiaKasutaja
    @kasutajaID INT
AS
BEGIN
    SELECT *
    FROM kasutajad
    WHERE id = @kasutajaID;
END;
```

Käivitamine:

```sql
EXEC leiaKasutaja @kasutajaID = 1;
```
<img width="365" height="303" alt="{49405D5F-B4ED-4E7C-80D8-C9FEF2C43524}" src="https://github.com/user-attachments/assets/898aefc6-d4a3-4ef3-83f7-741a721faaf3" />


## Tabeli muutmine (ALTER TABLE)

Olemasoleva tabeli struktuuri saab muuta käsuga `ALTER TABLE`.

```sql
ALTER TABLE kasutajad
ADD email VARCHAR(100);
```

## Tähtsad mõisted

**@parameeter**  - Sisendväärtus, mis antakse protseduurile käivitamisel. 
**OUTPUT**     - Parameeter, mille kaudu protseduur tagastab väärtuse.  
**EXEC**     - Käsk protseduuri käivitamiseks.                        
**Dünaamiline SQL**   - SQL-käsk, mis luuakse stringina programmi töö ajal.    
**ALTER TABLE**     - Käsk olemasoleva tabeli struktuuri muutmiseks.         

## Eelised

* Vähendab korduvat SQL-koodi.
* Parandab jõudlust.
* Lihtsustab andmebaasi haldamist.
* Võimaldab taaskasutada sama loogikat mitmes kohas.

## Puudused

* Võib muuta süsteemi keerukamaks.
* Silumine võib olla raskem.
* Andmebaasisüsteemide süntaks võib erineda.
