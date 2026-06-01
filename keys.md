# Andmebaasi võtmed (Keys)

[Põhimõisted](README.md) | [Select laused](select.md) | [Triggerid](trigerid.md) | [Keys](keys.md) | [Kasutajad](kasutaja.md) | [Protseduurid](protseduur.md) | [Vaade](vaade.md)

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
<img width="297" height="155" alt="{4C221ADA-C0EB-42A6-971D-A8434F7CC26F}" src="https://github.com/user-attachments/assets/fbae2521-1903-4926-b1bf-55fdeeba0405" />

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
<img width="281" height="145" alt="{F832583B-12AA-4728-89C3-4F5E5410768A}" src="https://github.com/user-attachments/assets/9a5ec77b-375a-405f-8057-4df11a689272" />

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
<img width="378" height="209" alt="{A491C72E-E6C1-40AC-B5E1-2D8C1F1DAE83}" src="https://github.com/user-attachments/assets/6084cde7-cf9a-4f1b-9569-62bf01fff3ad" />

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
<img width="345" height="176" alt="{E8968BFE-4E0A-4981-AF87-F7F4B4AC1908}" src="https://github.com/user-attachments/assets/7728760b-ca25-4f94-8de9-e5420f1ae9ab" />

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
<img width="307" height="164" alt="{D9BDEF17-5B5D-4706-AE97-86FEEF22BDD2}" src="https://github.com/user-attachments/assets/0494ee23-f2e3-4271-a3fd-fad5a09cbb46" />

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
<img width="319" height="187" alt="{57C472C1-8B8F-40A2-B213-BD99A8DD12D0}" src="https://github.com/user-attachments/assets/fba40942-8064-4f32-9827-6943fc3441b1" />

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
<img width="288" height="179" alt="{B47DF4AE-C23C-4A11-9EE8-D701596EAFFB}" src="https://github.com/user-attachments/assets/3525b619-3a98-4645-abda-0207427e655d" />

---

# Kasutatud allikad

1. SQL Documentation – https://www.w3schools.com/sql/
2. MySQL Documentation – https://dev.mysql.com/doc/
3. PostgreSQL Documentation – https://www.postgresql.org/docs/
