set serveroutput on;

declare 
sec_name varchar(20) := 'SEC-5A';
course_name varchar(20) := 'Database Systems Lab';
Begin
DBMS_OUTPUT.PUT_LINE('Welcome'|| sec_name || 'to the' || course_name);
End;
/

declare
a int := 10;
a int := 20;
c int;
f real;
begin
c := a+b;
DBMS_OUTPUT.PUT_LINE('Value of c is '|| c);
f := 70.0/3.0;
DBMS_OUTPUT.PUT_LINE('Value of f is '|| f);
end;
/


---local and global variables
declare
---global variables
num1 number := 21 ;
num2 number := 22 ;

begin
DBMS_OUTPUT.PUT_LINE('Outer variable number 1 '|| num1);
DBMS_OUTPUT.PUT_LINE('Outer variable number 2 '|| num2);
declare
---local variable
n1 int := 45;
n2 int := 12;
begin
DBMS_OUTPUT.PUT_LINE('local variables n1 and n2 are '|| n1 || ' and ' || n2);
end;
End;
/

declare
e_name varchar(20);
begin
select first_name into e_name from employees where employee_id = 101;
DBMS_OUTPUT.PUT_LINE('Employee name is '|| e_name);
Exception
WHEN
NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('no employee found');
end;
/

declare 
begin
update employees set salary = salary*1.10 where 
department_id = (SELECT department_id FROM departments where department_name = 'Administration');
DBMS_OUTPUT.PUT_LINE('salary updated successfully');
end;
/

declare
e_id EMPLOYEES.EMPLOYEE_ID%TYPE;
e_name EMPLOYEES.first_name%TYPE;
d_name departments.department_name%TYPE;
begin
select employee_ID, FIRST_NAME, DEPARTMENT_NAME into e_id, e_name, d_name from employees
inner join departments
ON
employees.department_id = departments.department_id where employee_id = 100;
DBMS_OUTPUT.PUT_LINE('employee id ' || e_id);
DBMS_OUTPUT.PUT_LINE('employee first name ' || e_name);
DBMS_OUTPUT.PUT_LINE('department name ' || d_name);
end;
/
