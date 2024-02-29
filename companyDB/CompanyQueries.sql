-- Select Queries

-- Q1
SELECT ssn
FROM `employee`
WHERE fname = 'Joyce' AND minit = 'A'
AND lname = 'English'

-- Q2
SELECT address, bdate
FROM employee
WHERE fname = 'John' AND minit = 'B' AND lname = 'Smith'

-- Q3
SELECT ssn, CAST(salary/12.0 AS DECIMAL(8, 2))
AS monthlySalary
FROM employee
Distinct remove duplicates

-- Q4
SELECT CONCAT(fname, ' ', minit, ' ', lname) AS name
FROM employee
WHERE address LIKE '%Houston%'