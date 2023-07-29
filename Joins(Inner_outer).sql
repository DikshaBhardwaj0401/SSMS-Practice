--SELECT * 
--FROM LearningSQL.dbo.employeeDemographics

--SELECT * 
--FROM LearningSQL.dbo.employeeSalary

--Insert into LearningSQL.dbo.employeeDemographics Values 
--(1007, 'Meredith', 'Grey', 36, 'Female')

--Insert into LearningSQL.dbo.employeeSalary Values
--(1009, 'Doctor', 50000)

--SELECT *
--FROM LearningSQL.dbo.employeeDemographics
--Inner Join LearningSQL.dbo.employeeSalary 
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID

--SELECT *
--FROM LearningSQL.dbo.employeeDemographics
--Full Outer Join LearningSQL.dbo.employeeSalary 
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID

--SELECT *
--FROM LearningSQL.dbo.employeeDemographics
--Left Outer Join LearningSQL.dbo.employeeSalary 
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID

--SELECT *
--FROM LearningSQL.dbo.employeeDemographics
--Right Outer Join LearningSQL.dbo.employeeSalary 
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID

--SELECT employeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM LearningSQL.dbo.employeeDemographics
--Inner Join LearningSQL.dbo.employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID


/* Use Cases - 
1. Monica wants to see who is earning the most, all while excluding herself from the o/p table. 
2. We want to see the avg of the Analyst salaries in the group. 
*/


--SELECT employeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM LearningSQL.dbo.employeeDemographics
--Inner Join LearningSQL.dbo.employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID
--WHERE FirstName <> 'Monica'
--ORDER BY Salary DESC

--SELECT JobTitle, AVG(Salary)
--FROM LearningSQL.dbo.employeeDemographics
--Full Outer Join LearningSQL.dbo.employeeSalary
--	ON employeeDemographics.EmployeeID = employeeSalary.EmployeeID
--WHERE JobTitle LIKE '%Analyst'
--GROUP BY JobTitle
