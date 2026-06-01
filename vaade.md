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
<img width="306" height="151" alt="{DC264855-01A0-4A1A-BC23-D725284D365A}" src="https://github.com/user-attachments/assets/d68bea5a-9d22-484f-aae8-a5679d7d132c" />
<img width="160" height="128" alt="{FB19615A-D8D3-415A-A091-32CF39F7F61B}" src="https://github.com/user-attachments/assets/9bea8df2-7c38-4105-b276-474343430ae5" />

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
