/* Topic - Stored Procedures */

--CREATE PROCEDURE TEST
--AS
--SELECT *
--FROM employeeDemographics

--EXEC TEST


--CREATE PROCEDURE Temp_Employee 
--AS 
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

--SELECT *
--FROM #Temp_Employee2

--EXEC Temp_Employee @JobTitle = 'Actor'