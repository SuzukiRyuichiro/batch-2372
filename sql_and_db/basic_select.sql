-- READ

select * from doctors; -- all columns
select first_name, last_name from doctors; -- select few columns

-- select with a fiter

select * from doctors where age < 40;
select * from doctors where age < 40 and specialty = 'Chemistry';

-- filter using LIKE and %
select * from doctors where last_name LIKE 'f%';

-- ordering
select * from doctors order by age;
select * from doctors order by first_name;



-- counting
select count(*) as doctors_count from doctors;

-- grouping and counting
select specialty, count(*) as doctors_count, avg(age) from doctors group by specialty;
