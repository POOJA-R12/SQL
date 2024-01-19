CREATE DATABASE PRJOECTS

CREATE TABLE EMPLYDETAILS (EMPID INT PRIMARY KEY,FIRSTNAME VARCHAR (20),LASTNAME VARCHAR (20),
SALARY INT,JOINDATE DATETIME,DEPARTMENT VARCHAR (30),GENDER VARCHAR(10))

INSERT INTO EMPLYDETAILS VALUES (1,'VIKAS','AHLAWAT',600000,'2013-12-2 11:16:00', 'IT','MALE')
INSERT INTO EMPLYDETAILS VALUES (2,'nikita','Jain',530000,'2013-02-14 11:16','HR','FEMALE')
INSERT INTO EMPLYDETAILS VALUES (3,'Ashish','Kumar',1000000,'2013-02-14 11:16','IT','MALE')
INSERT INTO EMPLYDETAILS VALUES (4,'Nikhil','Sharma',480000,'2013-02-15 11:16','HR','MALE')
INSERT INTO EMPLYDETAILS VALUES (5,'ashish','kadian',500000,'2013-02-16 11:16','paroll','MALE')

1.--Write a query to get all employee detail from "EmployeeDetail" table
SELECT* FROM EMPLYDETAILS

2.---Write a query to get only "FirstName" column from "EmployeeDetail" table

SELECT FIRSTNAME FROM EMPLYDETAILS

--3) Write a query to get FirstName in upper case as "First Name".
SELECT UPPER(FIRSTNAME) AS 'FIRSTNAME-CAPS' FROM EMPLYDETAILS

--5) Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)
SELECT *,CONCAT (FIRSTNAME,' ',LASTNAME) 'Name' from EMPLYDETAILS

--6)Select employee detail whose name is "Vikas
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME='Vikas'

-- 7)Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.

SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE 'A_%'

--.Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'

SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE '_%H'

--10.Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME BETWEEN  'A_% ' AND 'P_%'

--11) Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME NOT BETWEEN 'A_% ' AND 'P_%'

--Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. 
SELECT * FROM EMPLYDETAILS WHERE GENDER  LIKE'_%LE' AND GENDER=LEFT(GENDER,4)

--13)Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE 'A_%' AND FIRSTNAME=LEFT(GENDER,5)

--14)Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".
SELECT* FROM EMPLYDETAILS WHERE FIRSTNAME LIKE 'Vik%as'

15--Get all unique "Department" from EmployeeDetail table

SELECT DISTINCT DEPARTMENT FROM EMPLYDETAILS

--16Get the highest "Salary" from EmployeeDetail table

SELECT MAX(SALARY) 'HIGHEST_SALARY'FROM EMPLYDETAILS
--1717)Get the lowest "Salary" from EmployeeDetail table

SELECT MIN(SALARY) 'MINSALARY' FROM EMPLYDETAILS

--18) Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013--
SELECT FORMAT(JOINDATE,'DD/MMM/YYYY') AS FORMATDATE FROM EMPLYDETAILS

SELECT FORMAT (JOINDATE,'YYYY-MM-DD') AS FORMATDATE FROM EMPLYDETAILS
--22)Get only Month part of "JoiningDate”

SELECT MONTH(JOINDATE) FROM EMPLYDETAILS
SELECT FORMAT(JOINDATE,'MM') FROM EMPLYDETAILS

--Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
SELECT CONVERT(VARCHAR,JOINDATE) FROM EMPLYDETAILS

--20)Show only time part of the "JoiningDate"
SELECT FORMAT (JOINDATE,'H:mm') AS 'TIME' FROM EMPLYDETAILS


--19)Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
SELECT CONVERT (VARCHAR(MAX),JOINDATE,20) FROM EMPLYDETAILS

--Get only Year part of "JoiningDate"

SELECT YEAR(JOINDATE) FROM EMPLYDETAILS

--23)Get system date
SELECT  SYSDATETIME()

--24)Get UTC date.
SELECT SYSUTCDATETIME()
--25)Get the first name, current date, joiningdate and diff between current date and joining date in MONTHS.
SELECT FIRSTNAME,JOINDATE,GETDATE(),DATEDIFF(MONTH,JOINDATE,GETDATE()) FROM EMPLYDETAILS
SELECT FIRSTNAME,JOINDATE,GETDATE(),DATEDIFF(DAY,JOINDATE,GETDATE()) FROM EMPLYDETAILS

--26) Get all employee details from EmployeeDetail table whose joining year is 2013

SELECT * FROM EMPLYDETAILS WHERE YEAR(JOINDATE)=2013

--27)Get all employee details from EmployeeDetail table whose joining month is Jan(1)
SELECT * FROM EMPLYDETAILS WHERE MONTH(JOINDATE)=1

--29)Get how many employee exist in "EmployeeDetail" table
SELECT COUNT(EMPID) 'TOTALEMPS' FROM EMPLYDETAILS

--31.Select only one/top 1 record from "EmployeeDetail" table
SELECT TOP 1 * FROM EMPLYDETAILS

--32.Select all employee detail with First name "Vikas","Ashish", and "Nikhil".
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME IN ('VIKAS','ASHISH','NIKHIL')

--33.Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME  NOT IN ('VIKAS','ASHISH','NIKHIL')

--34.elect first name from "EmployeeDetail" table after removing white spaces from right side
SELECT RTRIM(FIRSTNAME) FROM EMPLYDETAILS 

--35.Select first name from "EmployeeDetail" table after removing white spaces from left side
SELECT LTRIM(FIRSTNAME) FROM EMPLYDETAILS

--36.Display first name and Gender as M/F.(if male then M, if Female theF)
SELECT* FROM EMPLYDETAILS
SELECT FIRSTNAME,GENDER ,
CASE GENDER
WHEN 'MALE' THEN 'M'
WHEN 'FEMALE' THEN 'F'
ELSE 'OTHER'
END'REMARK'
FROM EMPLYDETAILS


--37.Select first name from "EmployeeDetail" table prifixed with "Hello
SELECT CONCAT( ' ','HELLO',FIRSTNAME) FROM EMPLYDETAILS

--38.et employee details from "EmployeeDetail" table whose Salary greater than 600000

SELECT * FROM EMPLYDETAILS WHERE SALARY>600000
  
  --39.Get employee details from "EmployeeDetail" table whose Salary less than 700000

SELECT * FROM EMPLYDETAILS WHERE SALARY<700000

--40.Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000
SELECT * FROM EMPLYDETAILS WHERE SALARY BETWEEN 500000 AND 600000

CREATE TABLE PROJECTDETAILS (PROJECTID INT PRIMARY KEY,EMPLYDT_ID INT,PROJECTNAME VARCHAR (20))
INSERT INTO PROJECTDETAILS VALUES (1,1,'TASK Track')
insert into PROJECTDETAILS values (2,1,'CLP')
INSERT INTO PROJECTDETAILS VALUES (3,1,'Survey Managment')
insert into PROJECTDETAILS values (4,2,'HR Managment')
insert into PROJECTDETAILS values (5,3,'Task Track')
insert into PROJECTDETAILS values (6,3,'GRS')
INSERT INTO PROJECTDETAILS VALUES (7,3,'DDS')
INSERT INTO PROJECTDETAILS VALUES (8,4,'HR Managment')
insert into PROJECTDETAILS values (9,6,'GL Managment')

--41.Give records of ProjectDetail table--
select * from PROJECTDETAILS

--42.Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.
select DEPARTMENT,SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT

--43.Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.
select DEPARTMENT,SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [TOTALSALARY] 

--44.Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary
select DEPARTMENT,SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [TOTALSALARY] DESC

--45.Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.
select DEPARTMENT,COUNT(DEPARTMENT),SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [TOTALSALARY] 

---46.et department wise average salary from "EmployeeDetail" table order by salary ascending
SELECT DEPARTMENT,AVG(SALARY) 'AVGSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [AVGSALARY]

--et department wise maximum salary from "EmployeeDetail" table order by salary ascending
SELECT DEPARTMENT ,MAX(SALARY) 'MAXSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [MAXSALARY]

--Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.
SELECT DEPARTMENT ,MIN(SALARY) 'MINSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [MINSALARY]

--50.Join both the table that is Employee and ProjectDetail based on some common paramter
SELECT * FROM EMPLYDETAILS
FULL OUTER JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDT_ID
WHERE EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDT_ID

--51.Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.

SELECT * FROM EMPLYDETAILS
SELECT * FROM PROJECTDETAILS

SELECT EMPLYDETAILS.FIRSTNAME,EMPLYDETAILS.EMPID,PROJECTDETAILS.PROJECTNAME FROM EMPLYDETAILS
LEFT JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.PROJECTID
ORDER BY EMPLYDETAILS.FIRSTNAME

--52.Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.
SELECT EMPLYDETAILS.FIRSTNAME,EMPLYDETAILS.EMPID,PROJECTDETAILS.PROJECTNAME FROM EMPLYDETAILS
LEFT JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDT_ID
ORDER BY EMPLYDETAILS.FIRSTNAME

--53)Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"
SELECT EMPLYDETAILS.FIRSTNAME ,PROJECTDETAILS.PROJECTNAME   FROM EMPLYDETAILS 
LEFT JOIN PROJECTDETAILS 
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDT_ID
WHERE PROJECTDETAILS.PROJECTNAME  IS NULL 
ORDER BY EMPLYDETAILS.FIRSTNAME

--Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail
SELECT PROJECTDETAILS.PROJECTNAME,EMPLYDETAILS.FIRSTNAME FROM PROJECTDETAILS
LEFT JOIN EMPLYDETAILS
ON PROJECTDETAILS.EMPLYDT_ID=EMPLYDETAILS.EMPID
ORDER BY EMPLYDETAILS.FIRSTNAME

--56.Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL--
SELECT * FROM EMPLYDETAILS
FULL JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDT_ID

--Write down the query to fetch EmployeeName & Project who has assign more than one project?
SELECT COUNT(EMPLYDETAILS.FIRSTNAME) 'TOTAL EMPY',PROJECTDETAILS.PROJECTID FROM EMPLYDETAILS
INNER JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.PROJECTID
GROUP BY PROJECTDETAILS.PROJECTID
HAVING COUNT (EMPLYDETAILS.FIRSTNAME)>=PROJECTDETAILS.PROJECTID


--59.rite down the query to fetch ProjectName on which more than one employee are working along with EmployeeName
SELECT  EMPLYDETAILS.FIRSTNAME,PROJECTDETAILS.PROJECTNAME,COUNT(PROJECTDETAILS.EMPLYDT_ID) FROM EMPLYDETAILS
FULL JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.PROJECTID
GROUP BY EMPLYDETAILS.FIRSTNAME,PROJECTDETAILS.PROJECTNAME
HAVING COUNT( PROJECTDETAILS.EMPLYDT_ID)>1

---60.Apply Cross Join in Both the tables?
SELECT EMPLYDETAILS.EMPID,EMPLYDETAILS.FIRSTNAME,EMPLYDETAILS.LASTNAME,EMPLYDETAILS.DEPARTMENT,
PROJECTDETAILS.EMPLYDT_ID,PROJECTDETAILS.PROJECTNAME FROM EMPLYDETAILS
CROSS APPLY PROJECTDETAILS