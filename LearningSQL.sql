--INSERT INTO employeeDemographics VALUES 
--(1002, 'Monica', 'Geller', 29, 'Female'),
--(1003, 'Ross', 'Geller', 30, 'Male'),
--(1004, 'Rachel', 'Greene', 29, 'Female'),
--(1005, 'Phoebe', 'Buffay', 31, 'Female'),
--(1006, 'Joey', 'Tribbiani', 33, 'Male')


--INSERT INTO employeeSalary VALUES
--(1001, 'Data Analyst', 45000),
--(1002, 'Chef', 40000),
--(1003, 'Paleontologist', 50000),
--(1004, 'Fashion Analyst', 45000),
--(1005, 'Masseuse', 35000),
--(1006, 'Actor', 40000)


--SELECT *
--FROM employeeDemographics


--SELECT FirstName
--FROM employeeDemographics


--SELECT TOP 2 *
--FROM employeeDemographics


--SELECT DISTINCT(EmployeeID)
--FROM employeeDemographics


--SELECT COUNT(LastName)
--FROM employeeDemographics


--SELECT COUNT(LastName) AS LastNameCount
--FROM employeeDemographics


--SELECT MAX(Salary) AS MaxSalary
--FROM employeeSalary


--SELECT *
--FROM LearningSQL.dbo.employeeSalary

--/* Master DB --> specifying the path */



--SELECT *
--FROM employeeDemographics
--WHERE FirstName = 'Monica'


--SELECT *
--FROM employeeDemographics
--WHERE Age >= 30


--SELECT *
--FROM employeeDemographics
--WHERE Age >= 30 AND Gender = 'Male'


--SELECT *
--FROM employeeDemographics
--WHERE Age >= 31 OR Gender = 'Male'


--SELECT *
--FROM employeeDemographics
--WHERE LastName LIKE 'G%'


--SELECT *
--FROM employeeDemographics
--WHERE LastName LIKE 'G%l%'


--SELECT *
--FROM employeeDemographics
--WHERE LastName IS NOT NULL

--SELECT *
--FROM employeeDemographics
--WHERE FirstName IN ('Monica', 'Phoebe', 'Rachel')



--SELECT DISTINCT(Gender)
--FROM employeeDemographics


--SELECT Gender, COUNT(Gender)
--FROM employeeDemographics
--GROUP BY Gender


--SELECT Gender, Age, COUNT(Gender) AS 'Census'
--FROM employeeDemographics
--GROUP BY Gender, Age


--SELECT Gender, COUNT(Gender) AS CountGender
--FROM employeeDemographics
--WHERE Age > 30
--GROUP BY Gender
--ORDER BY Gender

--SELECT *
--FROM employeeDemographics
--ORDER BY Age, Gender DESC

--SELECT *
--FROM employeeDemographics
--ORDER BY 4 DESC, 5 DESC