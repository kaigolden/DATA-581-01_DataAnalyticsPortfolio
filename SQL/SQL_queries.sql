
/*
Note: 
    Separate queries are numbered and contain a brief description
    of what the query retrieves from the Employees table.
    Only one query should be executed at a time, and
    the other three queries commented out.

*/

/*
1. Find employees younger than 30
*/
SELECT employeeid
FROM Employees
WHERE age < 30;

/*
2. Find the top 5 highest-paid employees.
*/
SELECT employeeid
FROM Employees
ORDER BY salary DESC
LIMIT 5;

/*
3. Count employees in each department.
*/
SELECT e.EmployeeName, d.Name, COUNT(*) as EmployeeCount
FROM Employees e JOIN demo d
ON e.DeptID = d.ID
GROUP BY d.Name;

/*
4. Show employee name and department name.
*/
SELECT e.EmployeeName, d.Name
FROM Employees e JOIN demo d
ON e.DeptID = d.ID
ORDER BY d.Name;

