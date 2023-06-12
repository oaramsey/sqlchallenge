-- Data Analysis
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.employee_number, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s
ON e.employee_number = s.employee_number
ORDER by e.employee_number

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date BETWEEN '01-01-1986' AND '12-31-1986'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT e.employee_number, e.last_name, e.first_name, dm.department_no, d.department_name
FROM departmentmanager as dm
JOIN employees as e 
ON dm.employee_number = e.employee_number
JOIN departments as d
ON dm.department_no = d.department_no
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.employee_number, e.last_name, e.first_name, d.department_name
FROM departmentemp as de
JOIN employees as e 
ON de.employee_number = e.employee_number
JOIN departments as d
ON de.department_no = d.department_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.last_name, e.first_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' and e.last_name like 'B%'
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.employee_number, e.first_name, e.last_name
FROM employees as e
JOIN departmentemp as de
ON de.employee_number = e.employee_number
JOIN departments as d
ON de.department_no = d.department_no
WHERE d.department_name = 'Sales'
ORDER by employee_number
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.employee_number, e.first_name, e.last_name, d.department_name
FROM employees as e
JOIN departmentemp as de
ON de.employee_number = e.employee_number
JOIN departments as d
ON de.department_no = d.department_no
WHERE d.department_name = 'Sales' or d.department_name = 'Development'
--WHERE d.department_name IN ('Sales', 'Development')
ORDER by employee_number

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name, COUNT(*)
FROM employees as e
GROUP BY e.last_name 
ORDER BY COUNT(*) DESC