-- 1. List the following details of each employee:employee number, last name,
-- first name, sex, and salary.
SELECT e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no)
ORDER BY salary DESC;

--2. List first name, last name, and hire date for employees who were hired in
-- 1986.
SELECT e.first_name,
    e.last_name,
    e.hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1986-01-01'
AND '1986-12-31'
ORDER BY hire_date ASC;

-- 3. List the manager of each department with the following information:
-- department number,department name,the manager's employee number,
-- last name, first name.
SELECT e.first_name,
    e.last_name,
    dm.emp_no,
    dm.dept_no,
    d.dept_name
FROM dept_manager AS dm
JOIN employees AS e
ON (dm.emp_no=e.emp_no)
JOIN departments AS d
ON (dm.dept_no=d.dept_no)
ORDER BY last_name ASC;


-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT e.first_name,
    e.last_name,
    d.dept_name,
    e.emp_no
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN departments AS d
ON (de.dept_no = d.dept_no)
ORDER BY emp_no ASC;

-- 5. List first name, last name, and sex for employees whose first name is
-- "Hercules" and last names begin with "B."
SELECT e.first_name,
    e.last_name,
    e.sex
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name DESC;

-- 6. List all employees in the Sales department, including their employee
-- number, last name, first name, and department name.


-- 7. List all employees in the Sales and Development departments, including
-- their employee number, last name, first name, and department name.


-- 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
