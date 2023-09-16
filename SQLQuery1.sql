CREATE TABLE Student
(
rollno int,
name varchar(20),
percentage numeric(6,2),
city varchar(10),
dob date
)

--Modify the data type or size of data type.
alter table Student alter column name varchar(25)

-- Add column to the existing table.
alter table Student add country varchar(20)

-- Remove column from the existing table.
alter table Student drop column country

-- Rename column name.
exec sp_rename 'Student.name','studentname'


