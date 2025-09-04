In Lab performed work
---
<img width="659" height="505" alt="image" src="https://github.com/user-attachments/assets/eeee5b3d-3adb-4523-8de8-015a9d83fdc3" />
---
<img width="698" height="439" alt="image" src="https://github.com/user-attachments/assets/2bfb5a56-d7b4-4651-ad60-1ada74323547" />
---
create table students(
id int, 
std_name varchar(3),
email varchar(20),
age int,
check(age>=18)
);

select * from students;

---for alteration in data (add columns)
alter table students add salary int;
alter table students add (City varchar(20) default 'Karachi', dept_id int);

---altering constraints
alter table students add constraint unique_email unique(email);
alter table students modify(std_name varchar(20) not null, email varchar(20) not null); 

alter table students add ( CONSTRAINT
check_age check(age between 18 AND 30),
CONSTRAINT unique_email unique(email)
);


create table departments(
id int primary key,
dept_name varchar(20) not null
);

select * from departments;
insert into departments(id, dept_name) values (1, 'AI');
insert into departments(id, dept_name) values (5, 'CS');
insert into departments(id, dept_name) values (4, 'SE');




