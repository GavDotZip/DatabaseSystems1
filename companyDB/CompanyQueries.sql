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

-- Q5
SELECT CONCAT(fname, ' ', lname) AS 'John B Smith''s) Co-workers'
FROM employee
WHERE fname != 'John' AND  minit != 'B' AND lname != 'Smith' #exclude John B Smith
AND dno =  (SELECT dno
            FROM employee
            WHERE fname = 'John' AND minit = 'B' AND lname = 'Smith')

-- Q6
SELECT dependent_name, bdate
FROM dependent
WHERE (SELECT ssn
        FROM employee
        WHERE fname = 'Franklin' AND minit = 'T' AND lname = 'Wong')
            AND relationship != 'spouse'

-- Q7
SELECT salary, CONCAT(fname, ' ', lname) AS Name
FROM employee
WHERE dno = 5
ORDER BY lname
LIMIT 3

-- Q8
SELECT COUNT(*) AS 'Number of essn''s working on project with name ProductY'
FROM works_on
WHERE pno = (SELECT pnumber
            FROM project
            WHERE pname = 'ProductY')

-- Q9
SELECT COUNT(*)
FROM dependent
WHERE relationship != 'spouse'
AND essn = (SELECT ssn 
            FROM employee
            WHERE fname = 'John')