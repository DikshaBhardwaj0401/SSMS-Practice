/* Topic - CTE (Common Table Expression) */

--WITH CTE_Employee as 
--(SELECT FirstName, LastName, Gender, Salary, 
--COUNT(Gender) OVER (PARTITION BY Gender) as TotalGenders, 
--AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--FROM LearningSQL.dbo.employeeDemographics as emp
--JOIN LearningSQL.dbo.employeeSalary as sal
--	ON emp.EmployeeID = sal.EmployeeID
--WHERE Salary > '45000'
--)
--SELECT FirstName, AvgSalary
--FROM CTE_Employee


/* Topic - Temp Tables */

--CREATE TABLE #temp_Employee
--(EmployeeID int,
--JobTitle varchar(100), 
--Salary int)

--SELECT * FROM #temp_Employee

--INSERT INTO #temp_Employee Values
--('1001', 'HR', '45000')

--INSERT INTO #temp_Employee
--SELECT * 
--FROM LearningSQL.dbo.employeeSalary


--DROP TABLE IF EXISTS #Temp_Employee2
--CREATE TABLE #Temp_Employee2 (
--JobTitle varchar(50),
--EmployeePerJob int, 
--AvgAge int, 
--AvgSalary int)

--INSERT INTO #Temp_Employee2 
--SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
--FROM LearningSQL..employeeDemographics
--JOIN LearningSQL..employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID
--GROUP BY JobTitle

--SELECT * FROM #Temp_Employee2




/* Topic - String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower */

--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50), 
--FirstName varchar(50),
--LastName varchar(50)
--)

--INSERT INTO EmployeeErrors VALUES
--( '1001  ', 'Jimbo', 'Halbert'),
--('  1002', 'Pamela', 'Beasely'),
--('1005', 'TOby', 'Flenderson - Fired')

--SELECT *
--FROM EmployeeErrors

---- Using TRIM, LTRIM, RTRIM
--SELECT EmployeeID, TRIM(EmployeeID) AS trmdID
--FROM EmployeeErrors

--SELECT EmployeeID, LTRIM(EmployeeID) AS trmdID
--FROM EmployeeErrors

--SELECT EmployeeID, RTRIM(EmployeeID) AS trmdID
--FROM EmployeeErrors

---- Using Replace 

--SELECT LastName, REPLACE(LastName, ' - Fired', ' ') as LastNameFixed
--FROM EmployeeErrors

---- Using Substring 
--SELECT SUBSTRING(FirstName, 3, 3)
--FROM EmployeeErrors

---- Fuzzy Matching 
--/* 
--Fuzzy Matching works like substring (accessing the string based on position), best 
--for a little similar but mostly different strings like Diksh & Dikshay where both 
--of these strings are located in two separate tables. It's called Fuzzy because it 
--lets us access the similar kindof String Data in a secondary table based on the 
--String Data in the Primary Table, in a very loose, 'Fuzzy' manner. 
--(It takes Diksh from both the strings and render them similar)

--I can not practically implement it here because I do not have another Table with 
--similar string (FirstName) data in this DB...

--But considering that there is a table named (EmployeeDetails1, and EmployeeDetails2) with similar names...

--SELECT SUBSTRING(emp1.FirstName, 1, 5), SUBSTRING(emp2.FirstName, 1, 5)
--FROM EmployeeDetails1 as emp1
--JOIN EmployeeDetails2 as emp2
--	ON SUBSTRING(emp1.FirstName, 1, 5) = SUBSTRING(emp2.FirstName, 1, 5)

--*/

---- Using Upper/ Lower
--SELECT FirstName, LOWER(FirstName)
--FROM EmployeeErrors

--SELECT FirstName, UPPER(FirstName)
--FROM EmployeeErrors


