/* TOPIC - SubQueries */

SELECT *
FROM employeeSalary

-- Subquery in SELECT 
SELECT EmployeeID, Salary, (SELECT avg(Salary) FROM employeeSalary) AS AllAvgSalary
FROM employeeSalary

/* DIFF subquery that will result in the same o/p. */
SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
FROM employeeSalary

/* We can not do this without using the sub-query,
Group by does not work!*/
SELECT EmployeeID, Salary, avg(Salary)
FROM employeeSalary
group by EmployeeID, Salary
order by 1, 2


-- Subquery in FROM
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	  FROM employeeSalary) as a

-- Subquery in WHERE 
SELECT EmployeeID, JobTitle, Salary
FROM employeeSalary
WHERE EmployeeID in (
		Select EmployeeID
		From employeeDemographics
		WHERE Age > 30)
