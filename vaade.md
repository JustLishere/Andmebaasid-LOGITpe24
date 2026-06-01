# SQL Vaated (Views)

## Eesmärk

Vaade (View) on virtuaalne tabel, mis põhineb ühe või mitme tabeli andmetel. Vaade ei salvesta tavaliselt andmeid ise, vaid kuvab andmeid SQL-päringu tulemuse põhjal.

Vaated aitavad lihtsustada keerulisi päringuid, parandada turvalisust ja muuta andmete kasutamise mugavamaks.

## Vaate loomine

```sql
CREATE VIEW aktiivsedKasutajad AS
SELECT id, nimi, email
FROM kasutajad
WHERE aktiivne = 1;
```

## Vaate kasutamine

Vaadet saab kasutada nagu tavalist tabelit.

```sql
SELECT * FROM aktiivsedKasutajad;
```

## Vaate muutmine

Olemasolevat vaadet saab muuta käsuga `ALTER VIEW`.

```sql
ALTER VIEW aktiivsedKasutajad AS
SELECT id, nimi, email, telefon
FROM kasutajad
WHERE aktiivne = 1;
```

## Vaate kustutamine

```sql
DROP VIEW aktiivsedKasutajad;
```

## Mitme tabeli põhine vaade

```sql
CREATE VIEW tellimusteInfo AS
SELECT k.nimi, t.toode, t.kogus
FROM kasutajad k
JOIN tellimused t
ON k.id = t.kasutaja_id;
```

## Tähtsad mõisted

**VIEW**       - Virtuaalne tabel, mis põhineb SQL-päringul. 
**CREATE VIEW**      - Uue vaate loomine.                          
**ALTER VIEW**      - Olemasoleva vaate muutmine.                 
**DROP VIEW**       - Vaate kustutamine.                          
**SELECT**        - Andmete pärimine vaatest või tabelist.      
**JOIN**       - Mitme tabeli ühendamine vaates.             

## Eelised

* Lihtsustab keerulisi SQL-päringuid.
* Parandab andmete turvalisust.
* Võimaldab peita tundlikke veerge.
* Muudab andmete kasutamise mugavamaks.

## Puudused

* Keerulised vaated võivad mõjutada jõudlust.
* Vaated ei salvesta tavaliselt andmeid eraldi.
* Mõningaid vaateid ei saa otse muuta või uuendada.
