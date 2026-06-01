# SQL Protseduurid (Stored Procedures)

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

## Väljundparameetrid (OUTPUT)

```sql
CREATE PROCEDURE kasutajateArv
    @kogus INT OUTPUT
AS
BEGIN
    SELECT @kogus = COUNT(*)
    FROM kasutajad;
END;
```

Käivitamine:

```sql
DECLARE @arv INT;

EXEC kasutajateArv @kogus = @arv OUTPUT;

SELECT @arv AS KasutajateArv;
```

## Dünaamiline SQL

Dünaamiline SQL tähendab, et SQL-käsk luuakse programmi töö käigus stringina.

```sql
DECLARE @sql NVARCHAR(MAX);

SET @sql = 'SELECT * FROM kasutajad';

EXEC sp_executesql @sql;
```

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
