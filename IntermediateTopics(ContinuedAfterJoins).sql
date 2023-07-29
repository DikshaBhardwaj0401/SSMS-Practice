/* Union and Union All */

--SELECT * 
--FROM employeeDemographics
--UNION
--SELECT *
--FROM warehouseEmployeeDemographics

--SELECT * 
--FROM employeeDemographics
--UNION ALL
--SELECT *
--FROM warehouseEmployeeDemographics

--SELECT *
--FROM employeeDemographics
--Full Outer Join warehouseEmployeeDemographics
--	ON employeeDemographics.EmployeeID = warehouseEmployeeDemographics.EmployeeID


/*Doing the same thing on the employeeSalary Table, trying to see how it will behave with no similar columns.*/

--SELECT EmployeeID, FirstName, Age
--FROM employeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM employeeSalary
--ORDER BY EmployeeID

/* Case Statement
1. Start by what columns we want 
2. Add a ',' then state the required Case Statement
3. END the statement
4. FROM statement followed by the additional statements based on the business & optimization needs.
*/

--SELECT FirstName, LastName, Age,
--CASE 
--	WHEN Age = 36 THEN 'SheGrey'
--	WHEN Age BETWEEN 29 AND 35 THEN 'friends'
--	ELSE 'SomeOtherSoapCharacter'
--END
--FROM employeeDemographics
--WHERE Age IS NOT NULL
--ORDER BY Age

--SELECT FirstName, LastName, JobTitle, Salary,
--CASE
--	WHEN JobTitle = 'Chef' THEN Salary + (Salary * .30)
--	WHEN JobTitle = 'Data Analyst' THEN Salary + (Salary * .10)
--	WHEN JobTitle = 'Masseuse' THEN Salary + (Salary * .30)
--	ELSE Salary + (Salary * .03)
--END
--FROM employeeDemographics
--JOIN employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID

/* Having clause */

--SELECT *
--FROM employeeDemographics
--JOIN employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID

--SELECT JobTitle, AVG(Salary)
--FROM employeeDemographics
--JOIN employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) < 45000
--ORDER BY AVG(Salary)

/* Updating & Deleting Data 
Insert --> create a new row into the table.
Update --> Alter a pre-existing row of the table, using where and more identifying features.
Delete --> by specifying which row we want to delete.
*/

--SELECT *
--FROM employeeDemographics

--UPDATE employeeDemographics
--SET Age = 56, Gender = 'Female'
--WHERE FirstName = 'Ray' AND LastName = 'Fisher'
--/* This way is okay but the better way would be to access the where statement using primary key values, the chances of error are less. */
--/* Like this... */
--UPDATE employeeDemographics
--SET Age = 56, Gender = 'Female'
--WHERE EmployeeID = 1220


/* ALIASING Column Names */

--SELECT FirstName AS Fname
--FROM employeeDemographics

--SELECT FirstName + ' ' + LastName AS FullName
--FROM employeeDemographics

--SELECT AVG(Age) AS AvgAge
--FROM employeeDemographics

--/* ALIASING Table Names */

--SELECT Demo.EmployeeID, Sal.Salary
--FROM employeeDemographics AS Demo
--join employeeSalary AS Sal
--	ON demo.EmployeeID = Sal.EmployeeID

/* Partition By */

--SELECT *
--FROM employeeDemographics

--SELECT *
--FROM employeeSalary

--SELECT FirstName, LastName, Gender, Salary, 
--COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
--FROM employeeDemographics as Demo
--JOIN employeeSalary as Sal
--	ON Demo.EmployeeID = Sal.EmployeeID

--/* To understand the difference... */
--SELECT Gender, COUNT(Gender) 
--FROM employeeDemographics as Demo
--JOIN employeeSalary as Sal
--	ON Demo.EmployeeID = Sal.EmployeeID
--GROUP BY Gender
