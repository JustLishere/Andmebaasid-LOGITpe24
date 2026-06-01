# SQL Kasutajad (Users)

[Põhimõisted](README.md) | [Select laused](select.md) | [Triggerid](trigerid.md) | [Keys](keys.md) | [Kasutajad](kasutaja.md) | [Protseduurid](protseduur.md) | [Vaade](vaade.md)

## Eesmärk

SQL kasutaja (User) on konto, mille kaudu inimene või rakendus pääseb andmebaasile ligi. Kasutajatele saab määrata erinevaid õigusi, et kontrollida, mida nad andmebaasis teha võivad.

Kasutajate haldamine on oluline andmebaasi turvalisuse tagamiseks.

## Kasutaja loomine

```sql
CREATE LOGIN testkasutaja
WITH PASSWORD = 'HobuneOrmo123';
```
<img width="385" height="136" alt="{6409E111-72BE-40D4-A139-E3952D2A94C2}" src="https://github.com/user-attachments/assets/5f9afbb9-f19e-4cea-bb70-f9fbf21ad004" />

Kasutaja sidumine andmebaasiga:

```sql
CREATE USER testkasutaja
FOR LOGIN testkasutaja;
```
<img width="485" height="515" alt="{D20580A1-063E-4823-8FBF-8D2619A4A5ED}" src="https://github.com/user-attachments/assets/0af39f56-8a32-403b-8b64-ea8540e06838" />

## Õiguste andmine

Kasutajale saab anda õigusi käsuga `GRANT`.

```sql
GRANT SELECT ON kasutajad TO testkasutaja;
```

See lubab kasutajal lugeda tabeli `kasutajad` andmeid.
<img width="359" height="494" alt="{2F813A5F-491A-45A6-99EE-680EFB06DC95}" src="https://github.com/user-attachments/assets/27c08905-cc3c-4b1a-8006-1b4ca268cf69" />

## Õiguste eemaldamine

```sql
REVOKE SELECT ON kasutajad FROM testkasutaja;
```

See eemaldab lugemisõiguse.
<img width="486" height="503" alt="{C7F9FF76-49EF-459A-8D5C-AD82EE66164B}" src="https://github.com/user-attachments/assets/441c1a93-b36c-4821-a44c-6407c32ecaa0" />

## Rollide kasutamine

Kasutajaid saab lisada rollidesse.

```sql
ALTER ROLE db_datareader
ADD MEMBER testkasutaja;
```

Roll `db_datareader` võimaldab lugeda kõiki andmeid andmebaasis.
<img width="406" height="687" alt="{2DF249F6-D48C-436F-9A2F-640EAE687A83}" src="https://github.com/user-attachments/assets/b15c9a8e-b295-4bdf-a1b3-3f6c2263fc88" />

## Kasutaja kustutamine

```sql
DROP USER testkasutaja;
```
<img width="614" height="158" alt="{D6998F26-34E6-41A1-8388-082D8F8FD88B}" src="https://github.com/user-attachments/assets/7e375af4-bbce-49d7-b12f-86fe5d21a2aa" />

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
