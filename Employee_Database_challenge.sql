-- Deliverable 2: The Employees Eligible for the Mentorship Program(30 points)
drop table Retirement_titles

Select distinct ee.emp_no, ee.first_name, ee.last_name, tt.title, tt.from_date, tt.to_date
Into Retirement_titles
From employees as ee
INNER JOIN titles AS tt
ON (ee.emp_no = tt.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by ee.emp_no;

drop table unique_titles

select distinct on (emp_no) emp_no, first_name, last_name, title
into Unique_titles
from Retirement_titles
order by emp_no asc, to_date desc;

drop table retiring_titles

select * from unique_titles;
select distinct count(title), title 
into retiring_titles
from unique_titles
group by title order by count(title) desc

select * from retiring_titles;

-- Deliverable 2: The Employees Eligible for the Mentorship Program(30 points)

Select distinct on (ee.emp_no) ee.emp_no , ee.first_name, ee.last_name, ee.birth_date, tt.from_date, de.to_date, tt.title 
into mentorship_eligibilty
From employees as ee
INNER JOIN titles AS tt ON (ee.emp_no = tt.emp_no)
INNER JOIN dept_emp AS de ON (ee.emp_no = de.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
and de.to_date = '9999-01-01'
order by ee.emp_no

select * from mentorship_eligibilty;

-- Deliverable 3: A written report on the employee database analysis (20 points)

