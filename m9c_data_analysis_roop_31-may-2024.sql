-- Create a list with employee number, last name, first name, sex, and salary
SELECT e.emp_no,
 e.last_name,
 e.first_name,
 e.sex,
 s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

-- Create a list with the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' and '12/31/1986'
ORDER BY hire_date;

-- Create a list with the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no,
 d.dept_name,
 dm.emp_no,
 e.first_name,
 e.last_name
FROM department_manager as dm
INNER JOIN employees as e ON
dm.emp_no = e.emp_no
INNER JOIN departments as d ON
dm.dept_no = d.dept_no
ORDER BY dm.dept_no;


-- Create a list with the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT e.emp_no,
 e.first_name,
 e.last_name,
 d.dept_name,
 d.dept_no
FROM employees as e
INNER JOIN department_employees as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
d.dept_no = de.dept_no
ORDER BY d.dept_no;

-- Create a list with first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, 
 last_name,
 sex
FROM employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules';

-- Create a list with each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no,
 e.first_name,
 e.last_name,
 d.dept_name
FROM employees as e
INNER JOIN department_employees as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- Create a list with each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no,
 e.first_name,
 e.last_name,
 d.dept_name
FROM employees as e
INNER JOIN department_employees as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- Create a list the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "last_name_freq"
FROM employees
GROUP BY last_name
ORDER BY "last_name_freq" DESC;
