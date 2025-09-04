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

truncate table departments;
insert into departments(id, dept_name) values (1, 'AI');
insert into departments(id, dept_name) values (2, 'CS');
insert into departments(id, dept_name) values (3, 'SE');

alter table students drop column dept_id;

alter table students add( dept_id int, foreign key(dept_id) references departments(id));
insert into students(id, std_name, email, age, salary, dept_id) values (3, 'Ali', 'sanakhan@gmail.com', 20, 70695, 2);

alter table students rename column email to std_email;





