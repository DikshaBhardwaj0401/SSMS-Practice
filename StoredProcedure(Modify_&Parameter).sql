USE [LearningSQL]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 26-07-2023 13:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Temp_Employee] 
@JobTitle nvarchar(100)
AS 
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int, 
AvgAge int, 
AvgSalary int)

INSERT INTO #Temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM LearningSQL..employeeDemographics
JOIN LearningSQL..employeeSalary
	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID
Where JobTitle = @JobTitle
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2