# Andmebaasi võtmed (Keys)

[Põhimõisted](README.md) | [Select laused](select.md) | [Triggerid](trigerid.md) | [Portfooli](keys.md) | [Kasutajad](kasutaja.md) | [Protseduurid](protseduur.md) | [Vaade](vaade.md)

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

<img width="276" height="174" alt="{64515734-309C-401E-AB48-7C15F028B796}" src="https://github.com/user-attachments/assets/87d4a483-e9d1-416b-9040-6fe6feefb145" />
<img width="501" height="133" alt="{EC7E96A9-898B-4C45-9D4C-6D93E787BAB1}" src="https://github.com/user-attachments/assets/26609559-b9d0-416a-862e-3791d1dcb611" />

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

<img width="242" height="117" alt="{3289C2A8-FE6A-4E97-B918-F5A20432113C}" src="https://github.com/user-attachments/assets/31d6b075-8ec5-4d96-b56b-ae52fa6b2178" />

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

<img width="233" height="113" alt="{DC573477-50B3-4D19-81B7-D36ED2FFDD03}" src="https://github.com/user-attachments/assets/ce98a950-4ca3-467c-8e65-5e09f0d9f1bd" />

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

<img width="239" height="129" alt="{CE2D2964-D289-4B05-AC3F-A1B34F1269A6}" src="https://github.com/user-attachments/assets/edf789f1-9011-4450-be7d-800e20273140" />

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

<img width="242" height="126" alt="{7CA01264-7E20-489A-B7A0-430B21A967F3}" src="https://github.com/user-attachments/assets/3aa92f59-85ac-455a-bbed-2f86851316c0" />

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

<img width="237" height="138" alt="{236133DD-5FE3-4450-89C4-5639B58B0BBD}" src="https://github.com/user-attachments/assets/781ced34-5ea8-44a3-b1fc-45ec23117d72" />

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
CREATE TABLE Tootajad (
    TootajaID INT,
    Isikukood VARCHAR(11) UNIQUE,
    PRIMARY KEY (TootajaID)
);
```

Siin võivad kandidaatvõtmed olla:

* TooajaID
* Isikukood

<img width="231" height="103" alt="{39203CC2-CC10-4FCB-BB70-44F44BD98527}" src="https://github.com/user-attachments/assets/3610d65e-130f-4867-890b-0f70896aa19b" />

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

<img width="234" height="102" alt="{2B9E1A9F-9630-44AA-88AE-E7B8EC622836}" src="https://github.com/user-attachments/assets/1b8bfdb7-f873-4320-9706-b3b183509762" />

---

# Kasutatud allikad

1. SQL Documentation – https://www.w3schools.com/sql/
2. MySQL Documentation – https://dev.mysql.com/doc/
3. PostgreSQL Documentation – https://www.postgresql.org/docs/
4. Minu githubi repository
