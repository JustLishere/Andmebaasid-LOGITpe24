# Andmebaasi võtmed (Keys)

[Select laused](select.md) | [Triggerid](trigerid.md) | [Portfooli](keys.md) | [Kasutajad](kasutaja.md) | [Protseduurid](protseduur.md) | [Vaade](vaade.md)

## 1. Primary Key

### Definitsioon

Primary Key (primaarvõti) on veerg või veergude kombinatsioon, mis identifitseerib iga kirje tabelis unikaalselt.

### Milleks kasutatakse?

* Kirjete üheseks tuvastamiseks.
* Duplikaatide vältimiseks.
* Seoste loomiseks teiste tabelitega.

### Erinevus teistest võtmetest

Tabelis saab olla ainult üks Primary Key.

### SQL näide

```sql
CREATE TABLE Opilased (
    OpilaneID INT PRIMARY KEY,
    Nimi VARCHAR(50)
);
```

<img width="236" height="127" alt="{35B26D59-E52F-47C1-8CD5-DE3A9DF79835}" src="https://github.com/user-attachments/assets/8cb82a74-994b-4dcc-a852-e15513a93e89" />
<img width="237" height="113" alt="{202C2D36-6947-4707-A243-F21C45EBF906}" src="https://github.com/user-attachments/assets/9fbd5833-312b-41b6-bd3f-8c039529a3cf" />

---

## 2. Foreign Key

### Definitsioon

Foreign Key (võõrvõti) on veerg, mis viitab teise tabeli Primary Key väärtusele.

### Milleks kasutatakse?

* Tabelite omavaheliseks sidumiseks.
* Andmete tervikluse tagamiseks.

### Erinevus teistest võtmetest

Foreign Key ei pea olema unikaalne.

### SQL näide

```sql
CREATE TABLE Klassid (
    KlassID INT PRIMARY KEY,
    Nimi VARCHAR(20)
);

CREATE TABLE Opilased (
    OpilaneID INT PRIMARY KEY,
    Nimi VARCHAR(50),
    KlassID INT,
    FOREIGN KEY (KlassID) REFERENCES Klassid(KlassID)
);
```

**Ekraanipilt:** lisa pilt mõlema tabeli struktuurist.


---

## 3. Unique Key

### Definitsioon

Unique Key tagab, et kõik väärtused veerus on erinevad.

### Milleks kasutatakse?

* Duplikaatväärtuste vältimiseks.

### Erinevus teistest võtmetest

Tabelis võib olla mitu Unique Key'd.

### SQL näide

```sql
CREATE TABLE Kasutajad (
    KasutajaID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);
```

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

## 4. Simple Key

### Definitsioon

Simple Key koosneb ainult ühest veerust.

### Milleks kasutatakse?

* Kirje unikaalseks tuvastamiseks ühe tunnuse abil.

### Erinevus teistest võtmetest

Koosneb ainult ühest atribuudist.

### SQL näide

```sql
CREATE TABLE Tooted (
    ToodeID INT PRIMARY KEY,
    Nimi VARCHAR(50)
);
```

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

## 5. Composite Key

### Definitsioon

Composite Key koosneb kahest või enamast veerust.

### Milleks kasutatakse?

* Kui üks veerg üksi ei taga unikaalsust.

### Erinevus teistest võtmetest

Võti moodustub mitme veeru kombinatsioonist.

### SQL näide

```sql
CREATE TABLE OppeaineHinded (
    OpilaneID INT,
    AineID INT,
    Hinne INT,
    PRIMARY KEY (OpilaneID, AineID)
);
```

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

## 6. Compound Key

### Definitsioon

Compound Key on Composite Key eriliik, kus kõik võtme osad on olulised kirje tuvastamiseks.

### Milleks kasutatakse?

* Mitme tunnuse kombineerimiseks üheks võtmeks.

### Erinevus teistest võtmetest

Koosneb mitmest veerust nagu Composite Key.

### SQL näide

```sql
CREATE TABLE Tellimused (
    KlientID INT,
    ToodeID INT,
    Kogus INT,
    PRIMARY KEY (KlientID, ToodeID)
);
```

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

## 7. Super Key

### Definitsioon

Super Key on üks või mitu veergu, mis võimaldavad kirjet unikaalselt tuvastada.

### Milleks kasutatakse?

* Võimalike kandidaatvõtmete leidmiseks.

### Erinevus teistest võtmetest

Võib sisaldada üleliigseid atribuute.

### SQL näide

```sql
CREATE TABLE Tooajad (
    TooajaID INT PRIMARY KEY,
    Isikukood VARCHAR(11) UNIQUE,
    Email VARCHAR(100) UNIQUE
);
```

Näiteks:

* TooajaID
* Isikukood
* (TooajaID, Email)

Kõik on Super Key'd.

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

## 8. Candidate Key

### Definitsioon

Candidate Key on minimaalne Super Key, mis tuvastab kirje unikaalselt.

### Milleks kasutatakse?

* Primary Key valimiseks.

### Erinevus teistest võtmetest

Ei sisalda üleliigseid atribuute.

### SQL näide

```sql
CREATE TABLE Tooajad (
    TooajaID INT,
    Isikukood VARCHAR(11) UNIQUE,
    PRIMARY KEY (TooajaID)
);
```

Siin võivad kandidaatvõtmed olla:

* TooajaID
* Isikukood

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

## 9. Alternate Key

### Definitsioon

Alternate Key on Candidate Key, mida ei valitud Primary Keyks.

### Milleks kasutatakse?

* Täiendava unikaalsuse tagamiseks.

### Erinevus teistest võtmetest

On kandidaatvõti, kuid mitte Primary Key.

### SQL näide

```sql
CREATE TABLE Tooajad (
    TooajaID INT PRIMARY KEY,
    Isikukood VARCHAR(11) UNIQUE
);
```

Siin:

* Primary Key = TooajaID
* Alternate Key = Isikukood

**Ekraanipilt:** lisa pilt tabeli struktuurist.

---

# Kasutatud allikad

1. SQL Documentation – https://www.w3schools.com/sql/
2. MySQL Documentation – https://dev.mysql.com/doc/
3. PostgreSQL Documentation – https://www.postgresql.org/docs/
4. Minu githubi repository
