---näitab nimed ükskord
select distinct Name, DepartmentId from Employees

---näitab kõikide palka kokku liidedult
select sum(cast(Salary as int)) from Employees
---näitab kõige väiksemat rahasummat
select min(cast(Salary as int)) from Employees


alter table Employees
add City nvarchar(25)


alter table Employees
add DepartmentId
int null


--- igast reast võtab esimeses veerus täidetud lahtri ja kuvab ainult seda
select Id, coalesce(FirstName, MiddleName, LastName) as Name
from Employees

select * from Employees
select * from Department

--seosed - join
--füüsiline seos - on lisatud Foreign key (constraint - piirang näiteks kontrollida diagrammil)
--loogiline seos - kui õigesti kirjutatada select joiniga


--JOIN tabeli employees on seotud tabeliga department
SELECT * FROM Employees JOIN Department
ON Employees.DepartmentId=Department.Id;

--kirjutame lihtsamaks, kasutame e. ja d. tabeli nimed
SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e JOIN Department d
ON e.DepartmentId=d.Id;

--inner join sama nagu lihtne join
--näitab kõik department, kus on olemas väärtus
SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e  INNER JOIN Department d
ON e.DepartmentId=d.Id;

--left join
-- näitab kõike DepartmentName (Null väärtused)
SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e  LEFT JOIN Department d
ON e.DepartmentId=d.Id;

--right join
--näitab Detartname, kus Name on null 
--RIGHT JOIN =RIGHT OUTER JOIN
SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e  RIGHT JOIN Department d
ON e.DepartmentId=d.Id

--outer join = full outer join 
--näitab kõik väärtused kahest tabelist
SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e  FULL OUTER JOIN Department d
ON e.DepartmentId=d.Id
--cross join - Näitab nii, et 1.tabeli väärtused * 2.tabeli väärtused
SELECT Name, Salary, DepartmentName
FROM Employees CROSS JOIN Department;

-- Näidata ainult need isikud, kellel departmentName on null

SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e  LEFT JOIN Department d
ON e.DepartmentId=d.Id
WHERE d.DepartmentName is Null;


Alter table employees ADD managerID int;

Select * from employees;

Update employees set managerID=2
Where Gender='Male';

--tabel Manager
CREATE TABLE manager(
id int primary key,
managerName varchar(25))

INSERT INTO manager(id, managerName)
VALUES (1, 'Roman'), (2, 'Nikita');
select * from manager;
Select * from employees;

--teha kõik join'id
--ja kirjutada mida nad näitavad
select managerName, Name, Salary 
from Employees join manager
ON employees.managerID=manager.Id

--lihtsam variant
select managerName, Name, Salary 
from Employees e join manager m
ON e.managerID=m.Id

-- inner join
select managerName, Name, Salary 
from Employees e inner join manager m
ON e.managerID=m.Id

--left join, ühest tabelist võetakse kõike isegi kui teises tabelis on nullid
select managerName, Name, Salary 
from Employees e left join manager m
ON e.managerID=m.Id

--right join, võtab employees nullid ja näitab manager
select managerName, Name, Salary 
from Employees e right join manager m
ON e.managerID=m.Id

--full outer join, kasutatakse mõlemad nullid
select Name, managerName, Salary 
from Employees e full outer join manager m
ON e.managerID=m.Id

--cross join, korrutab need kirjed mõlemast tabelist
select Name, managerName, Salary 
from Employees e cross join manager m
