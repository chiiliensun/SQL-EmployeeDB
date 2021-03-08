-- Use the information you have to create a table schema for each of the six CSV files.
-- Remember to specify data types, primary keys, foreign keys, and other constraints.

-- For the primary keys check to see if the column is unique, otherwise create a composite key.
-- Which takes two primary keys in order to uniquely identify a row.

-- Be sure to create tables in the correct order to handle foreign keys.

-- Import each CSV file into the corresponding SQL table. Note be sure to import the data in
-- the same order that the tables were created and account for the headers when importing to
-- avoid errors.

-- Create titles tables
-- For reference and error handling
-- DROP TABLE titles
CREATE TABLE titles (
  title_id VARCHAR(25) NOT NULL,
  title VARCHAR(50) NOT NULL,
  PRIMARY KEY(title_id)
);

-- SELECT * FROM titles


-- Create departments table
-- For reference and error handling
-- DROP TABLE department
CREATE TABLE departments (
  dept_no VARCHAR(25) NOT NULL,
  dept_name VARCHAR(50) NOT NULL,
  PRIMARY KEY(dept_no)
);

-- SELECT * FROM departments


-- Create employees table
-- For reference and error handling
-- DROP TABLE employees
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(25) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(5) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- SELECT * FROM employees


-- Create dept_emp table
-- For reference and error handling
-- DROP TABLE dept_emp
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(25) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

-- SELECT * FROM dept_emp


-- Create dept_manager table
-- For reference and error handling
-- DROP TABLE dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(25) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (dept_no, emp_no)
);

-- SELECT * FROM dept_manager


-- Create salaries table
-- For reference and error handling
-- DROP TABLE salaries
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

)




-- SELECT * FROM salaries
