# SQL Kasutajad (Users)

[Select laused](select.md) | [Triggerid](trigerid.md) | [Portfooli](keys.md) | [Kasutajad](kasutaja.md) | [Protseduurid](protseduur.md) | [Vaade](vaade.md)

## Eesmärk

SQL kasutaja (User) on konto, mille kaudu inimene või rakendus pääseb andmebaasile ligi. Kasutajatele saab määrata erinevaid õigusi, et kontrollida, mida nad andmebaasis teha võivad.

Kasutajate haldamine on oluline andmebaasi turvalisuse tagamiseks.

## Kasutaja loomine

```sql
CREATE LOGIN testkasutaja
WITH PASSWORD = 'Parool123!';
```

Kasutaja sidumine andmebaasiga:

```sql
CREATE USER testkasutaja
FOR LOGIN testkasutaja;
```

## Õiguste andmine

Kasutajale saab anda õigusi käsuga `GRANT`.

```sql
GRANT SELECT ON kasutajad TO testkasutaja;
```

See lubab kasutajal lugeda tabeli `kasutajad` andmeid.

## Õiguste eemaldamine

```sql
REVOKE SELECT ON kasutajad FROM testkasutaja;
```

See eemaldab lugemisõiguse.

## Rollide kasutamine

Kasutajaid saab lisada rollidesse.

```sql
ALTER ROLE db_datareader
ADD MEMBER testkasutaja;
```

Roll `db_datareader` võimaldab lugeda kõiki andmeid andmebaasis.

## Kasutaja kustutamine

```sql
DROP USER testkasutaja;
```

Vajadusel tuleb enne eemaldada ka sisselogimine:

```sql
DROP LOGIN testkasutaja;
```

## Tähtsad mõisted

**USER**     - Andmebaasi kasutaja.                      
**LOGIN**    - Sisselogimiskonto SQL Serveris.            
**CREATE USER**     - Uue kasutaja loomine.                      
**GRANT**    - Õiguste andmine kasutajale.                
**REVOKE**    - Õiguste eemaldamine kasutajalt.            
**ROLE**    - Kasutajate grupp ühiste õigustega.         
**ALTER ROLE**    - Kasutaja lisamine või eemaldamine rollist. 
**DROP USER**   - Kasutaja kustutamine.                      

## Eelised

* Võimaldab kontrollida ligipääsu andmetele.
* Parandab andmebaasi turvalisust.
* Lihtsustab kasutajate ja õiguste haldamist.
* Võimaldab rakendada erinevaid kasutajarolle.

## Puudused

* Suure kasutajate arvu korral võib haldamine muutuda keeruliseks.
* Valesti määratud õigused võivad põhjustada turvariske.
* Vajab regulaarset kontrolli ja hooldust.
