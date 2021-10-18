Select distinct ee.emp_no, ee.first_name, ee.last_name, tt.tile, tt.from_date, tt.to_date
Into Retirement_titles
From employees as ee
INNER JOIN titles AS tt
ON (ee.emp_no = tt.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by ee.emp_no;

select * from retirement_titles;

drop table Retirement_titles

select * from titles;