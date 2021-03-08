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
-- Drop Table titles
CREATE TABLE titles (
  title_id
  title
)


-- SELECT * FROM titles


-- Create employees table
-- For reference and error handling
-- Drop Table employees
CREATE TABLE employees (
    emp_no
    emp_title_id
    birth_date
    first_name
    last_name
    sex
    hire_date
)


-- SELECT * FROM employees


-- Create departments table
-- For reference and error handling
-- Drop Table department
CREATE TABLE departments (
  dept_no
  dept_name
)


-- SELECT * FROM department


-- Create dept_emp table
-- For reference and error handling
-- Drop Table dept_emp
CREATE TABLE dept_emp (
  emp_no
  dept_no
)


-- SELECT * FROM dept_emp


-- Create dept_manager table
-- For reference and error handling
-- Drop Table dept_manager
CREATE TABLE dept_manager (
  dept_no
  emp_no
)


-- SELECT * FROM dept_manager


-- Create salaries table
-- For reference and error handling
-- Drop Table salaries
CREATE TABLE salaries (
  emp_no
  salary
)




-- SELECT * FROM salaries
