-- 1) List the following details of each employee:
--employee number, last name, first name, gender, and salary.
SELECT
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Employees".gender,
"Salaries".salary
FROM "Employees"
JOIN "Salaries" ON "Salaries".emp_no = "Employees".emp_no;

-- 2) List employees who were hired in 1986
SELECT
*
FROM
"Employees"
WHERE
hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3) List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name,
-- first name, and start and end employment dates.
SELECT
"Dept_Manager".dept_no,
"Departments".dept_name,
"Dept_Manager".emp_no,
"Employees".last_name,
"Employees".first_name,
"Dept_Manager".from_date,
"Dept_Manager".to_date
FROM
"Dept_Manager"
JOIN "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no
JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no;

-- 4) List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT
"Employees".last_name,
"Employees".first_name,
"Dept_Emp".emp_no,
"Departments".dept_name
FROM
"Employees"
JOIN "Dept_Emp" ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN "Departments" ON "Departments".dept_no = "Dept_Emp".dept_no;

-- 5) List all employees whose first name is "Hercules"
-- and last names begin with "B."
SELECT * FROM "Employees"
WHERE "Employees".last_name LIKE 'B%' AND "Employees".first_name = 'Hercules';

-- 6) List all employees in the Sales department,
-- including their employee number, last name, first name, and department name.
SELECT
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM
"Employees"
JOIN "Dept_Emp" ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN  "Departments" ON "Departments".dept_no = "Dept_Emp".dept_no
WHERE "Departments".dept_name = 'Sales';

-- 7)List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.
SELECT
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM
"Employees"
JOIN "Dept_Emp" ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN  "Departments" ON "Departments".dept_no = "Dept_Emp".dept_no
WHERE "Departments".dept_name = 'Sales' OR "Departments".dept_name = 'Development';

-- 8) In descending order, list the frequency count of
-- employee last names, i.e., how many employees share each last name.
SELECT
COUNT(last_name) as "LN_Count", last_name
FROM "Employees"
GROUP BY last_name
ORDER BY "LN_Count" DESC;
